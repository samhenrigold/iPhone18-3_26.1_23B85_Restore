uint64_t HistoryCoalescingManager.markRecentCallsAsRead()()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_1BC8F7344();
  v1[3] = v2;
  OUTLINED_FUNCTION_26(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_47_3();
  v4 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC8A9DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_71();
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v12 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v12, qword_1EBD067C8);
  v13 = sub_1BC8F7714();
  sub_1BC8F8204();
  v14 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_9();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_5();
    *v16 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v16 + 4) = sub_1BC7A9A4C(0xD000000000000017, v17, v18);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v24 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v24);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v26 = v10[4];
  v25 = v10[5];
  v27 = v10[3];
  __swift_project_boxed_opaque_existential_1((v10[2] + 112), *(v10[2] + 136));
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *v25 = v28;
  (*(v26 + 104))(v25, *MEMORY[0x1E6993500], v27);
  v29 = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_133(v29);
  *v30 = v31;
  OUTLINED_FUNCTION_8_4(v30);
  OUTLINED_FUNCTION_48_4();

  return MEMORY[0x1EEDF2740](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

uint64_t sub_1BC8A9F68()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v3 + 56) = v0;

  v7 = OUTLINED_FUNCTION_81_0();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_112();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_112();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t HistoryCoalescingManager.markRecentVideoCallsAsRead()()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_1BC8F7344();
  v1[3] = v2;
  OUTLINED_FUNCTION_26(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_47_3();
  v4 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC8AA188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  v46 = v10;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v11 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v11, qword_1EBD067C8);
  v12 = sub_1BC8F7714();
  sub_1BC8F8204();
  v13 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_9();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v16 = swift_slowAlloc();
    v45 = v16;
    *v15 = 136315138;
    OUTLINED_FUNCTION_31_0();
    *(v15 + 4) = sub_1BC7A9A4C(0xD00000000000001CLL, v17, &v45);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v23 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v23);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v25 = v10[4];
  v24 = v10[5];
  v26 = v10[3];
  __swift_project_boxed_opaque_existential_1((v10[2] + 112), *(v10[2] + 136));
  OUTLINED_FUNCTION_21_4();
  v27 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63E0, &qword_1BC906A58);
  OUTLINED_FUNCTION_172_0();
  v28 = sub_1BC8F73E4();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BC8FC230;
  (*(v30 + 104))(v32 + v31, *MEMORY[0x1E6993558], v28);
  *(v27 + 16) = v32;
  *v24 = v27;
  (*(v25 + 104))(v24, *MEMORY[0x1E69934F0], v26);
  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_133(v33);
  *v34 = v35;
  OUTLINED_FUNCTION_8_4(v34);
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEDF2740](v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_1BC8AA408()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v3 + 56) = v0;

  v7 = OUTLINED_FUNCTION_81_0();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_112();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_112();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HistoryCoalescingManager.refreshContacts()()
{
  OUTLINED_FUNCTION_22();
  v127 = v2;
  v128 = v3;
  v4 = v1;
  v5 = v0;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v111 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63E8, &qword_1BC906A60);
  OUTLINED_FUNCTION_0();
  v116 = v10;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v115 = v12;
  if (qword_1EBCF4760 != -1)
  {
LABEL_62:
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v13 = sub_1BC8F7734();
  v120 = __swift_project_value_buffer(v13, qword_1EBD067C8);
  v14 = sub_1BC8F7714();
  v15 = sub_1BC8F8204();
  v16 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_45();
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1BC7A3000, v14, v15, "Refreshing contacts for all existing people", v18, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v19 = *(v5 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets);
  if (!v19[2].isa)
  {
LABEL_40:
    v64 = sub_1BC8F7714();
    v65 = sub_1BC8F8204();
    v66 = OUTLINED_FUNCTION_36_0();
    if (!os_log_type_enabled(v66, v67))
    {
LABEL_45:

      goto LABEL_49;
    }

    OUTLINED_FUNCTION_45();
    v68 = swift_slowAlloc();
    *v68 = 0;
    v69 = "No buckets found to refresh contacts for";
LABEL_44:
    _os_log_impl(&dword_1BC7A3000, v64, v65, v69, v68, 2u);
    v72 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v72);
    goto LABEL_45;
  }

  v113 = v8;
  v114 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets;
  v118 = v4;
  v119 = v5;
  v112 = v9;
  v124 = MEMORY[0x1E69E7CC0];
  v9 = &v19[8];
  OUTLINED_FUNCTION_40_10();
  OUTLINED_FUNCTION_171_0();
  v5 = v20 >> 6;
  swift_bridgeObjectRetain_n();
  v21 = 0;
  v121 = v19 + 8;
  v122 = v19;
  if (!v8)
  {
    while (1)
    {
      v4 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v4 >= v5)
      {
        break;
      }

      v8 = *(v9 + 8 * v4);
      ++v21;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    v34 = sub_1BC899F98(v124);
    if (*(v34 + 16))
    {
      v35 = sub_1BC8F7714();
      v36 = sub_1BC8F8204();
      v37 = OUTLINED_FUNCTION_36_0();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v118;
      if (v39)
      {
        OUTLINED_FUNCTION_9();
        v41 = swift_slowAlloc();
        *v41 = 134217984;
        *(v41 + 4) = *(v34 + 16);
        _os_log_impl(&dword_1BC7A3000, v35, v36, "Refreshing contacts for %ld handles", v41, 0xCu);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      v5 = v119;
      v42 = *(v119 + v114);
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63F0, &qword_1BC906A68);
      sub_1BC8F7AF4();
      swift_endAccess();
      sub_1BC8A5C20(v34, v43, v44, v45, v46, v47, v48, v49, v111, v112);
      v4 = v40;

      if (v40)
      {
LABEL_48:

        goto LABEL_49;
      }

      v118 = 0;
      v50 = v42 + 8;
      OUTLINED_FUNCTION_45_0();
      v9 = v52 & v51;
      v8 = ((v53 + 63) >> 6);

      v54 = MEMORY[0x1E69E7CC0];
      p_isa = v42;
      while (v9)
      {
LABEL_29:
        v56 = *(v42[7] + ((v4 << 10) | (16 * __clz(__rbit64(v9)))) + 8);
        v57 = *(v56 + 16);
        v58 = *(v54 + 16);
        if (__OFADD__(v58, v57))
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          return;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v58 + v57 > *(v54 + 24) >> 1)
        {
          sub_1BC7F726C();
          v54 = v59;
        }

        v5 = v119;
        v9 &= v9 - 1;
        if (*(v56 + 16))
        {
          v60 = (*(v54 + 24) >> 1) - *(v54 + 16);
          type metadata accessor for HistoryItem(0);
          if (v60 < v57)
          {
            goto LABEL_64;
          }

          swift_arrayInitWithCopy();

          v5 = v119;
          v42 = p_isa;
          if (v57)
          {
            v61 = *(v54 + 16);
            v62 = __OFADD__(v61, v57);
            v63 = v61 + v57;
            if (v62)
            {
              goto LABEL_65;
            }

            *(v54 + 16) = v63;
          }
        }

        else
        {

          v42 = p_isa;
          if (v57)
          {
            __break(1u);
            goto LABEL_40;
          }
        }
      }

      while (1)
      {
        v55 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_61;
        }

        if (v55 >= v8)
        {

          sub_1BC8B2D98();
          v73 = sub_1BC8F7AD4();
          v74 = v118;
          sub_1BC8A30E8(v54, v73);
          v4 = v74;
          if (v74)
          {

            goto LABEL_48;
          }

          OUTLINED_FUNCTION_100();

          v32 = sub_1BC899BD8(v75);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6400, &qword_1BC906A70);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_1BC8FC230;
          *(v26 + 32) = v32;
          *(v26 + 40) = 3;
          *(v5 + v114) = v5;

          v25 = *(v5 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion) + 1;
          *(v5 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion) = v25;
          v76 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog;
          OUTLINED_FUNCTION_37_5();
          swift_beginAccess();

          OUTLINED_FUNCTION_9_14();
          sub_1BC7AA12C(v77);
          v78 = *(*(v5 + v76) + 16);
          sub_1BC7AA600(v78, v54);
          v79 = *(v5 + v76);
          *(v79 + 16) = v78 + 1;
          v80 = v79 + 16 * v78;
          *(v80 + 32) = v25;
          *(v80 + 40) = v26;
          *(v5 + v76) = v79;
          swift_endAccess();
          if (v78 > 0x63)
          {
            OUTLINED_FUNCTION_37_5();
            swift_beginAccess();
            sub_1BC8ABD58(v78 - 99);
            swift_endAccess();
          }

          v24 = sub_1BC8F7714();
          v81 = sub_1BC8F8204();

          if (os_log_type_enabled(v24, v81))
          {
            OUTLINED_FUNCTION_9();
            v82 = swift_slowAlloc();
            OUTLINED_FUNCTION_8_2();
            p_isa = swift_slowAlloc();
            v124 = v25;
            v126[0] = p_isa;
            *v82 = 136315138;
            v125 = v26;

            v122 = v24;
            v83 = VersionedChange.description.getter();
            v84 = v32;
            v85 = v81;
            v87 = v86;

            v88 = sub_1BC7A9A4C(v83, v87, v126);

            *(v82 + 4) = v88;
            v89 = v85;
            v32 = v84;
            v90 = v122;
            _os_log_impl(&dword_1BC7A3000, v122, v89, "Emitting event: %s", v82, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(p_isa);
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();

            goto LABEL_56;
          }

          goto LABEL_55;
        }

        v9 = v50[v55];
        ++v4;
        if (v9)
        {
          v4 = v55;
          goto LABEL_29;
        }
      }
    }

    v64 = sub_1BC8F7714();
    v65 = sub_1BC8F8204();
    v70 = OUTLINED_FUNCTION_36_0();
    if (!os_log_type_enabled(v70, v71))
    {
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_45();
    v68 = swift_slowAlloc();
    *v68 = 0;
    v69 = "No handles found to refresh contacts for";
    goto LABEL_44;
  }

LABEL_6:
  v4 = v21;
LABEL_10:
  OUTLINED_FUNCTION_178_0();
  v23 = (v19[7].isa + ((v4 << 10) | (16 * v22)));
  v25 = *v23;
  v24 = v23[1];
  v126[0] = MEMORY[0x1E69E7CC0];
  v26 = v25 + 56;
  OUTLINED_FUNCTION_40_10();
  v29 = v28 & v27;
  v31 = (v30 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  p_isa = &v24->isa;

  v32 = 0;
  if (!v29)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_16:
    v29 &= v29 - 1;

    v24 = v126;
    sub_1BC7F3744();
  }

  while (v29);
LABEL_12:
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v31)
    {

      swift_bridgeObjectRelease_n();
      sub_1BC7F3614(v126[0]);
      v21 = v4;
      v19 = v122;
      goto LABEL_6;
    }

    v29 = *(v26 + 8 * v33);
    v32 = (v32 + 1);
    if (v29)
    {
      v32 = v33;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_55:

LABEL_56:
  v91 = v113;
  v92 = v117;
  sub_1BC7D9558(v5 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, v113, &qword_1EBCF63B8, &qword_1BC906990);
  v93 = v91;
  v94 = *(v92 + 48);
  v124 = v25;
  v125 = v26;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
  v96 = v115;
  sub_1BC8F8064();
  (*(v116 + 8))(v96, v112);
  OUTLINED_FUNCTION_10();
  (*(v97 + 8))(v93 + v94, v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
  OUTLINED_FUNCTION_42();
  (*(v98 + 8))(v93);

  v99 = sub_1BC8F7714();
  LOBYTE(v95) = sub_1BC8F8204();

  if (os_log_type_enabled(v99, v95))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_23_11();
    v100 = swift_slowAlloc();
    v126[0] = v100;
    *v4 = 136315138;
    v124 = v32;
    LOBYTE(v125) = 3;
    HistoryChangeEvent.description.getter();
    OUTLINED_FUNCTION_37_3();

    v101 = OUTLINED_FUNCTION_12_5();
    sub_1BC7A9A4C(v101, v102, v103);
    OUTLINED_FUNCTION_100();

    *(v4 + 4) = &v124;
    OUTLINED_FUNCTION_205();
    _os_log_impl(v104, v105, v106, v107, v108, v109);
    __swift_destroy_boxed_opaque_existential_1(v100);
    v110 = OUTLINED_FUNCTION_17_11();
    MEMORY[0x1BFB2AA50](v110);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
  }

LABEL_49:
  OUTLINED_FUNCTION_23();
}

uint64_t HistoryCoalescingManager.deleteMessages(uniqueIDs:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_11_4(a1, v1);
}

uint64_t sub_1BC8AB05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_142();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_71();
  a16 = v18;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v22 = v18[3];
  v23 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v23, qword_1EBD067C8);

  v24 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_202_0();
  if (OUTLINED_FUNCTION_137())
  {
    v25 = v18[3];
    OUTLINED_FUNCTION_11_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_115_1();
    OUTLINED_FUNCTION_30_5();
    *v22 = 136315394;
    OUTLINED_FUNCTION_9_3();
    v28 = sub_1BC7A9A4C(0xD00000000000001ALL, v26, v27);
    OUTLINED_FUNCTION_74_4(v28);
    v29 = sub_1BC8F7264();
    v30 = MEMORY[0x1BFB29280](v25, v29);
    sub_1BC7A9A4C(v30, v31, &a10);
    OUTLINED_FUNCTION_206_0();
    *(v22 + 14) = v19;
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_203_0(v32, v33, v34, v35);
    OUTLINED_FUNCTION_82_4();
    v36 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v36);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v37 = v18[3];
  __swift_project_boxed_opaque_existential_1((v18[4] + 152), *(v18[4] + 176));
  OUTLINED_FUNCTION_21_4();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  v18[2] = v38 | 0x1000000000000000;

  v39 = swift_task_alloc();
  v18[5] = v39;
  *v39 = v18;
  v39[1] = sub_1BC8AB234;
  OUTLINED_FUNCTION_48_4();

  return MessageStoreController.deleteMessages(query:)(v40);
}

uint64_t sub_1BC8AB234()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  v3[6] = v0;

  sub_1BC7B0EFC(v3[2]);
  if (v0)
  {
    v7 = v3[4];

    return MEMORY[0x1EEE6DFA0](sub_1BC809228, v7, 0);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v8();
  }
}

uint64_t HistoryCoalescingManager.markMessagesAsRead(with:)()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_25(v3);
  v1[9] = OUTLINED_FUNCTION_47_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v4);
  v1[10] = OUTLINED_FUNCTION_47_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v5);
  v1[11] = OUTLINED_FUNCTION_200_0();
  v1[12] = swift_task_alloc();
  v6 = sub_1BC8F7264();
  v1[13] = v6;
  OUTLINED_FUNCTION_26(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_200_0();
  v1[16] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BC8AB498()
{
  v57 = v0;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EBD067C8);

  v3 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_202_0();
  if (OUTLINED_FUNCTION_137())
  {
    v4 = v0[13];
    v5 = v0[7];
    OUTLINED_FUNCTION_11_2();
    swift_slowAlloc();
    v54 = OUTLINED_FUNCTION_115_1();
    *v1 = 136315394;
    OUTLINED_FUNCTION_31_0();
    v7 = sub_1BC7A9A4C(0xD000000000000019, v6, &v54);
    OUTLINED_FUNCTION_74_4(v7);
    v8 = MEMORY[0x1BFB29280](v5, v4);
    sub_1BC7A9A4C(v8, v9, &v54);
    OUTLINED_FUNCTION_206_0();
    *(v1 + 14) = v5;
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_203_0(v10, v11, v12, v13);
    OUTLINED_FUNCTION_82_4();
    v14 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v14);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v15 = v0[7];
  sub_1BC87CA98(v0[8] + 152, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = v0[14];
    v19 = v0[7];
    v53 = MEMORY[0x1E69E7CC0];
    sub_1BC8F8684();
    v18 += 16;
    OUTLINED_FUNCTION_25_1();
    v21 = v19 + v20;
    v49 = *(v18 + 56);
    v50 = v22;
    v48 = (v18 - 8);
    do
    {
      v23 = v0[15];
      v24 = v0[16];
      v25 = v0[12];
      v26 = v0[13];
      v27 = v16;
      v28 = v0[11];
      v51 = v0[10];
      v52 = v0[9];
      v50(v24, v21, v26);
      v50(v23, v24, v26);
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v26);
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v26);
      sub_1BC8F7014();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
      sub_1BC8F71E4();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
      v43 = type metadata accessor for MessageUpdate(0);
      v54 = 0;
      v55 = 0u;
      v44 = objc_allocWithZone(v43);
      v56 = 1;
      MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:)(v23, v25, v28, 0, 0, 0, 1, 1, 0, 1, v47, 0, 1, 0, 0, 0, 1, 0, 2, v51, 0, 0, v52, 0, 1, &v54, 0);
      (*v48)(v24, v26);
      sub_1BC8F8654();
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
      v21 += v49;
      v16 = v27 - 1;
    }

    while (v27 != 1);
    v17 = v53;
  }

  v0[17] = v17;
  v45 = swift_task_alloc();
  v0[18] = v45;
  *v45 = v0;
  v45[1] = sub_1BC8AB868;

  return MessageStoreController.updateMessages(_:)();
}

uint64_t sub_1BC8AB868()
{
  OUTLINED_FUNCTION_32();
  v2 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 152) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1BC8ABA2C;
  }

  else
  {
    v6 = sub_1BC8AB9A4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1BC8AB9A4()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_207_0();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_71_3();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1BC8ABA2C()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_207_0();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_71_3();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t HistoryCoalescingManager.saveToPhotoLibrary(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_11_4(a1, v1);
}

uint64_t sub_1BC8ABACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_142();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_71();
  a16 = v18;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v22 = v18[2];
  v23 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v23, qword_1EBD067C8);

  v24 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_202_0();
  if (OUTLINED_FUNCTION_137())
  {
    v25 = v18[2];
    OUTLINED_FUNCTION_11_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_115_1();
    OUTLINED_FUNCTION_30_5();
    *v22 = 136315394;
    OUTLINED_FUNCTION_9_3();
    v28 = sub_1BC7A9A4C(0xD000000000000016, v26, v27);
    OUTLINED_FUNCTION_74_4(v28);
    v29 = sub_1BC8F7264();
    v30 = MEMORY[0x1BFB29280](v25, v29);
    sub_1BC7A9A4C(v30, v31, &a10);
    OUTLINED_FUNCTION_206_0();
    *(v22 + 14) = v19;
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_203_0(v32, v33, v34, v35);
    OUTLINED_FUNCTION_82_4();
    v36 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v36);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  __swift_project_boxed_opaque_existential_1((v18[3] + 152), *(v18[3] + 176));
  v37 = swift_task_alloc();
  v18[4] = v37;
  *v37 = v18;
  v37[1] = sub_1BC8ABC78;
  OUTLINED_FUNCTION_48_4();

  return MessageStoreController.saveMessagesToPhotoLibrary(messageUUIDs:)(v38);
}

uint64_t sub_1BC8ABC78()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

unint64_t sub_1BC8ABD58(unint64_t result)
{
  if (!result)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1BC830538();
  if (v1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_1BC8B223C(0, result);
}

uint64_t sub_1BC8ABDC0()
{
  result = sub_1BC8F7BE4();
  qword_1EBD067F0 = result;
  return result;
}

uint64_t sub_1BC8ABDF8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BC7B0968;

  return v6(a1);
}

uint64_t sub_1BC8ABF08(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1BC8F7E94();
  }

  return result;
}

void sub_1BC8ABF4C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BC8DC0D0();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = (v2 + 32);
  v5[1] = v4;
  sub_1BC8ABFB8(v5);
  *a1 = v2;
}

void sub_1BC8ABFB8(uint64_t **a1)
{
  v63 = sub_1BC8F7324();
  v3 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for HistoryItem(0);
  v66 = *(v75 - 8);
  v5 = MEMORY[0x1EEE9AC00](v75);
  v61 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v5);
  v65 = &v50 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v67 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - v11;
  v64 = sub_1BC8F71E4();
  v13 = *(v64 - 8);
  v14 = MEMORY[0x1EEE9AC00](v64);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v50 - v17;
  v18 = a1[1];
  v19 = sub_1BC8F8A44();
  if (v19 < v18)
  {
    if (v18 >= -1)
    {
      v20 = v19;
      if (v18 <= 1)
      {
        v21 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v21 = sub_1BC8F7EB4();
        *(v21 + 16) = v18 / 2;
      }

      v74[0] = (v21 + 32);
      v74[1] = (v18 / 2);
      sub_1BC8AC6E0(v74, v73, a1, v20);
      *(v21 + 16) = 0;

      return;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v18 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  if (v18 >= 2)
  {
    v60 = v12;
    v50 = v1;
    v22 = *a1;
    v59 = (v3 + 32);
    v58 = (v3 + 8);
    v57 = (v13 + 16);
    v55 = (v13 + 8);
    v23 = -1;
    v24 = 1;
    v68 = v22;
    v25 = v67;
    v56 = v16;
    v51 = v18;
    while (2)
    {
      v53 = v24;
      v26 = *(v68 + 16 * v24);
      v54 = v23;
      v52 = v22;
      do
      {
        if (!*(*(&v26 + 1) + 16))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v72 = v26;
        v27 = *v22;
        v28 = *(v22 + 8);
        v29 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v30 = v60;
        sub_1BC8B3E70(*(&v26 + 1) + v29, v60, type metadata accessor for HistoryItem);
        sub_1BC8B3E70(v30, v25, type metadata accessor for HistoryItem);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          sub_1BC7C0224();
          v31 = *v25;
          v32 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
          swift_beginAccess();
          v33 = v64;
          (*v57)(v71, &v31[v32], v64);
        }

        else
        {
          v34 = v62;
          v35 = v25;
          v36 = v63;
          (*v59)(v62, v35, v63);

          sub_1BC8F7304();
          (*v58)(v34, v36);
          sub_1BC7C0224();
          v33 = v64;
        }

        v37 = v65;
        if (!*(v28 + 16))
        {
          goto LABEL_27;
        }

        v69 = v28;
        sub_1BC8B3E70(v28 + v29, v65, type metadata accessor for HistoryItem);
        v38 = v61;
        sub_1BC8B3E70(v37, v61, type metadata accessor for HistoryItem);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v70 = v27;
        if (EnumCaseMultiPayload == 1)
        {
          sub_1BC7C0224();
          v40 = *v38;
          v41 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
          swift_beginAccess();
          v42 = v56;
          (*v57)(v56, &v40[v41], v33);
        }

        else
        {
          v43 = v62;
          v44 = v63;
          (*v59)(v62, v38, v63);
          v42 = v56;
          sub_1BC8F7304();
          (*v58)(v43, v44);
          sub_1BC7C0224();
        }

        v45 = v71;
        v46 = sub_1BC8F7184();
        v47 = *v55;
        (*v55)(v42, v33);
        v47(v45, v33);

        v25 = v67;
        if ((v46 & 1) == 0)
        {
          break;
        }

        if (!v68)
        {
          goto LABEL_30;
        }

        v48 = *v22;
        v26 = *(v22 + 16);
        *v22 = v26;
        *(v22 + 16) = v48;
        v22 -= 16;
      }

      while (!__CFADD__(v23++, 1));
      v24 = v53 + 1;
      v22 = v52 + 16;
      v23 = v54 - 1;
      if (v53 + 1 != v51)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1BC8AC6E0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v185 = a1;
  v209 = sub_1BC8F7324();
  v6 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v208 = &v179 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for HistoryItem(0);
  v210 = *(v220 - 8);
  v8 = MEMORY[0x1EEE9AC00](v220);
  v202 = &v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v179 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v212 = &v179 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v179 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v191 = &v179 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v179 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v190 = (&v179 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v179 - v25;
  v213 = sub_1BC8F71E4();
  v27 = MEMORY[0x1EEE9AC00](v213);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v216 = &v179 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v195 = &v179 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v182 = &v179 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v181 = &v179 - v38;
  v194 = a3;
  v39 = a3[1];
  if (v39 >= 1)
  {
    v186 = v37;
    v188 = v26;
    v187 = v22;
    v40 = 0;
    v211 = (v35 + 8);
    v207 = (v6 + 32);
    v206 = (v6 + 8);
    v205 = (v35 + 16);
    v41 = MEMORY[0x1E69E7CC0];
    v183 = a4;
    v200 = v12;
    v42 = v212;
    v201 = v17;
    v199 = v36;
LABEL_3:
    v43 = v40++;
    v184 = v41;
    v193 = v43;
    if (v40 < v39)
    {
      v44 = *v194;
      v45 = (*v194 + 16 * v43);
      v180 = 16 * v43;
      v217 = *(v44 + 16 * v40);
      v219 = v217;
      v215 = v217;
      v198 = v39;

      v204 = *(&v217 + 1);

      v47 = *v45;
      v46 = v45 + 3;
      v217 = v47;
      v214 = v47;

      v48 = v181;
      GroupedHistoryItem.date.getter();
      v218 = v217;
      v49 = v182;
      GroupedHistoryItem.date.getter();
      LODWORD(v192) = sub_1BC8F7184();
      v50 = *v211;
      v51 = v213;
      (*v211)(v49, v213);
      v52 = v48;
      v43 = v193;
      v189 = v50;
      v50(v52, v51);

      v53 = v198;
      v54 = v43 + 2;
      while (1)
      {
        v55 = v54;
        if (v40 + 1 >= v53)
        {
          break;
        }

        v56 = v46[2];
        if (!*(v56 + 16))
        {
          goto LABEL_123;
        }

        v57 = v46[1];
        v58 = *(v46 - 1);
        *&v217 = *v46;
        v204 = (*(v210 + 80) + 32) & ~*(v210 + 80);
        v59 = v188;
        sub_1BC8B3E70(v56 + v204, v188, type metadata accessor for HistoryItem);
        v60 = v190;
        sub_1BC8B3E70(v59, v190, type metadata accessor for HistoryItem);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v197 = v40;
        v215 = v58;
        v214 = v57;
        if (EnumCaseMultiPayload == 1)
        {

          v62 = v217;

          sub_1BC7C0224();
          v63 = *v60;
          v64 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
          swift_beginAccess();
          (*v205)(v195, &v63[v64], v213);
        }

        else
        {
          v65 = v208;
          v66 = v60;
          v67 = v209;
          (*v207)(v208, v66, v209);

          v62 = v217;

          sub_1BC8F7304();
          (*v206)(v65, v67);
          sub_1BC7C0224();
        }

        v42 = v191;
        if (!*(v62 + 16))
        {
          goto LABEL_124;
        }

        v68 = v187;
        sub_1BC8B3E70(v62 + v204, v187, type metadata accessor for HistoryItem);
        sub_1BC8B3E70(v68, v42, type metadata accessor for HistoryItem);
        v69 = swift_getEnumCaseMultiPayload();
        v203 = v55;
        if (v69 == 1)
        {
          sub_1BC7C0224();
          v70 = *v42;
          v71 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
          swift_beginAccess();
          v72 = &v70[v71];
          v73 = v186;
          v74 = v213;
          (*v205)(v186, v72, v213);

          v42 = v212;
        }

        else
        {
          v75 = v208;
          v76 = v42;
          v77 = v209;
          (*v207)(v208, v76, v209);
          v73 = v186;
          sub_1BC8F7304();
          (*v206)(v75, v77);
          sub_1BC7C0224();
          v42 = v212;
          v74 = v213;
        }

        v78 = v195;
        v79 = sub_1BC8F7184() & 1;
        v80 = v189;
        v189(v73, v74);
        v80(v78, v74);

        v46 += 2;
        v40 = v197 + 1;
        v55 = v203;
        v54 = v203 + 1;
        v43 = v193;
        v53 = v198;
        if ((v192 & 1) != v79)
        {
          goto LABEL_17;
        }
      }

      v40 = v53;
      if ((v192 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_17:
      if (v40 < v43)
      {
        goto LABEL_148;
      }

      if (v43 < v40)
      {
        if (v53 >= v55)
        {
          v81 = v55;
        }

        else
        {
          v81 = v53;
        }

        v82 = 16 * v81 - 16;
        v83 = v40;
        v84 = v43;
        a4 = v183;
        v41 = v184;
        v85 = v180;
        do
        {
          if (v84 != --v83)
          {
            v86 = *v194;
            if (!*v194)
            {
              goto LABEL_153;
            }

            v87 = *(v86 + v85);
            *(v86 + v85) = *(v86 + v82);
            *(v86 + v82) = v87;
          }

          ++v84;
          v82 -= 16;
          v85 += 16;
        }

        while (v84 < v83);
      }

      else
      {
LABEL_29:
        a4 = v183;
        v41 = v184;
      }
    }

    v88 = v194[1];
    if (v40 >= v88)
    {
      goto LABEL_56;
    }

    if (__OFSUB__(v40, v43))
    {
      goto LABEL_145;
    }

    if (v40 - v43 >= a4)
    {
      goto LABEL_56;
    }

    v89 = v43 + a4;
    if (__OFADD__(v43, a4))
    {
      goto LABEL_146;
    }

    if (v89 >= v88)
    {
      v89 = v194[1];
    }

    if (v89 < v43)
    {
      goto LABEL_147;
    }

    if (v40 == v89)
    {
      goto LABEL_56;
    }

    v203 = *v194;
    v90 = v43 - v40;
    v91 = v203 + 16 * v40 - 16;
    v198 = v89;
LABEL_39:
    v204 = v90;
    v197 = v40;
    v92 = *(v203 + 16 * v40);
    v93 = v90;
    v192 = v91;
    while (*(*(&v92 + 1) + 16))
    {
      v217 = v92;
      v94 = *v91;
      v95 = *(v91 + 8);
      v96 = (*(v210 + 80) + 32) & ~*(v210 + 80);
      v97 = v201;
      sub_1BC8B3E70(*(&v92 + 1) + v96, v201, type metadata accessor for HistoryItem);
      sub_1BC8B3E70(v97, v42, type metadata accessor for HistoryItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        sub_1BC7C0224();
        v98 = *v42;
        v99 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        swift_beginAccess();
        v100 = v213;
        (*v205)(v216, &v98[v99], v213);
      }

      else
      {
        v101 = v208;
        v102 = v42;
        v103 = v209;
        (*v207)(v208, v102, v209);

        sub_1BC8F7304();
        (*v206)(v101, v103);
        sub_1BC7C0224();
        v100 = v213;
      }

      v42 = v202;
      if (!*(v95 + 16))
      {
        goto LABEL_122;
      }

      v214 = v95;
      v104 = v95 + v96;
      v105 = v200;
      sub_1BC8B3E70(v104, v200, type metadata accessor for HistoryItem);
      sub_1BC8B3E70(v105, v42, type metadata accessor for HistoryItem);
      v106 = swift_getEnumCaseMultiPayload();
      v215 = v94;
      if (v106 == 1)
      {
        sub_1BC7C0224();
        v107 = *v42;
        v108 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        swift_beginAccess();
        v109 = v199;
        (*v205)(v199, &v107[v108], v100);

        v110 = v216;
      }

      else
      {
        v111 = v208;
        v112 = v42;
        v113 = v209;
        (*v207)(v208, v112, v209);
        v114 = v199;
        sub_1BC8F7304();
        (*v206)(v111, v113);
        v109 = v114;
        v110 = v216;
        sub_1BC7C0224();
      }

      v115 = sub_1BC8F7184();
      v116 = *v211;
      (*v211)(v109, v100);
      v116(v110, v100);

      if ((v115 & 1) == 0)
      {
        v42 = v212;
        v117 = v198;
        v118 = v204;
LABEL_54:
        v40 = v197 + 1;
        v91 = v192 + 16;
        v90 = v118 - 1;
        if (v197 + 1 != v117)
        {
          goto LABEL_39;
        }

        v40 = v117;
        v41 = v184;
        v43 = v193;
LABEL_56:
        if (v40 < v43)
        {
          goto LABEL_144;
        }

        v121 = v41;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v41 = v121;
        }

        else
        {
          sub_1BC7F6FCC();
          v41 = v167;
        }

        v122 = *(v41 + 2);
        v123 = v122 + 1;
        if (v122 >= *(v41 + 3) >> 1)
        {
          sub_1BC7F6FCC();
          v41 = v168;
        }

        *(v41 + 2) = v123;
        v124 = v41 + 32;
        v125 = &v41[16 * v122 + 32];
        *v125 = v43;
        *(v125 + 1) = v40;
        *&v217 = *v185;
        if (!v217)
        {
          goto LABEL_154;
        }

        if (v122)
        {
          v197 = v40;
          while (1)
          {
            v126 = v123 - 1;
            v127 = &v124[2 * v123 - 2];
            v128 = &v41[16 * v123];
            if (v123 >= 4)
            {
              break;
            }

            if (v123 == 3)
            {
              v129 = *(v41 + 4);
              v130 = *(v41 + 5);
              v139 = __OFSUB__(v130, v129);
              v131 = v130 - v129;
              v132 = v139;
LABEL_77:
              if (v132)
              {
                goto LABEL_131;
              }

              v144 = *v128;
              v143 = *(v128 + 1);
              v145 = __OFSUB__(v143, v144);
              v146 = v143 - v144;
              v147 = v145;
              if (v145)
              {
                goto LABEL_134;
              }

              v148 = v127[1];
              v149 = v148 - *v127;
              if (__OFSUB__(v148, *v127))
              {
                goto LABEL_137;
              }

              if (__OFADD__(v146, v149))
              {
                goto LABEL_139;
              }

              if (v146 + v149 >= v131)
              {
                if (v131 < v149)
                {
                  v126 = v123 - 2;
                }

                goto LABEL_99;
              }

              goto LABEL_92;
            }

            if (v123 < 2)
            {
              goto LABEL_133;
            }

            v151 = *v128;
            v150 = *(v128 + 1);
            v139 = __OFSUB__(v150, v151);
            v146 = v150 - v151;
            v147 = v139;
LABEL_92:
            if (v147)
            {
              goto LABEL_136;
            }

            v153 = *v127;
            v152 = v127[1];
            v139 = __OFSUB__(v152, v153);
            v154 = v152 - v153;
            if (v139)
            {
              goto LABEL_138;
            }

            if (v154 < v146)
            {
              goto LABEL_106;
            }

LABEL_99:
            if (v126 - 1 >= v123)
            {
              goto LABEL_125;
            }

            if (!*v194)
            {
              goto LABEL_151;
            }

            v158 = v41;
            v159 = &v124[2 * v126 - 2];
            v160 = *v159;
            v161 = v124;
            v162 = v126;
            v163 = &v124[2 * v126];
            v164 = *(v163 + 1);
            v165 = v196;
            sub_1BC8AD9A0((*v194 + 16 * *v159), (*v194 + 16 * *v163), (*v194 + 16 * v164), v217);
            v196 = v165;
            if (v165)
            {
              goto LABEL_120;
            }

            if (v164 < v160)
            {
              goto LABEL_126;
            }

            v166 = *(v158 + 2);
            if (v162 > v166)
            {
              goto LABEL_127;
            }

            *v159 = v160;
            v159[1] = v164;
            if (v162 >= v166)
            {
              goto LABEL_128;
            }

            v123 = v166 - 1;
            sub_1BC8D950C(v163 + 16, v166 - 1 - v162, v163);
            v41 = v158;
            *(v158 + 2) = v166 - 1;
            v40 = v197;
            v124 = v161;
            if (v166 <= 2)
            {
              goto LABEL_106;
            }
          }

          v133 = &v124[2 * v123];
          v134 = *(v133 - 8);
          v135 = *(v133 - 7);
          v139 = __OFSUB__(v135, v134);
          v136 = v135 - v134;
          if (v139)
          {
            goto LABEL_129;
          }

          v138 = *(v133 - 6);
          v137 = *(v133 - 5);
          v139 = __OFSUB__(v137, v138);
          v131 = v137 - v138;
          v132 = v139;
          if (v139)
          {
            goto LABEL_130;
          }

          v140 = *(v128 + 1);
          v141 = v140 - *v128;
          if (__OFSUB__(v140, *v128))
          {
            goto LABEL_132;
          }

          v139 = __OFADD__(v131, v141);
          v142 = v131 + v141;
          if (v139)
          {
            goto LABEL_135;
          }

          if (v142 >= v136)
          {
            v156 = *v127;
            v155 = v127[1];
            v139 = __OFSUB__(v155, v156);
            v157 = v155 - v156;
            if (v139)
            {
              goto LABEL_143;
            }

            if (v131 < v157)
            {
              v126 = v123 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_77;
        }

LABEL_106:
        v39 = v194[1];
        a4 = v183;
        if (v40 >= v39)
        {
          goto LABEL_110;
        }

        goto LABEL_3;
      }

      v42 = v212;
      v117 = v198;
      v118 = v204;
      if (!v203)
      {
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      v119 = *v91;
      v92 = *(v91 + 16);
      *v91 = v92;
      *(v91 + 16) = v119;
      v91 -= 16;
      if (__CFADD__(v93++, 1))
      {
        goto LABEL_54;
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
    goto LABEL_149;
  }

  v41 = MEMORY[0x1E69E7CC0];
LABEL_110:
  v42 = *v185;
  if (!*v185)
  {
LABEL_155:
    __break(1u);
    return;
  }

  v169 = v41;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_149:
    v169 = sub_1BC8D94F4();
  }

  v170 = v169 + 16;
  v171 = *(v169 + 2);
  while (v171 >= 2)
  {
    if (!*v194)
    {
      goto LABEL_152;
    }

    v172 = v169;
    v173 = &v169[16 * v171];
    v174 = *v173;
    v175 = &v170[2 * v171];
    v176 = *(v175 + 1);
    v177 = v196;
    sub_1BC8AD9A0((*v194 + 16 * *v173), (*v194 + 16 * *v175), (*v194 + 16 * v176), v42);
    v196 = v177;
    if (v177)
    {
      break;
    }

    if (v176 < v174)
    {
      goto LABEL_140;
    }

    if (v171 - 2 >= *v170)
    {
      goto LABEL_141;
    }

    *v173 = v174;
    *(v173 + 1) = v176;
    v178 = *v170 - v171;
    if (*v170 < v171)
    {
      goto LABEL_142;
    }

    v171 = *v170 - 1;
    sub_1BC8D950C(v175 + 16, v178, v175);
    *v170 = v171;
    v169 = v172;
  }

LABEL_120:
}

void sub_1BC8AD9A0(char *a1, char *a2, char *a3, char *a4)
{
  v115 = sub_1BC8F7324();
  v8 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for HistoryItem(0);
  v116 = *(v124 - 8);
  v10 = MEMORY[0x1EEE9AC00](v124);
  v105 = (&v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v99 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v104 = (&v99 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v106 = &v99 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v99 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v103 = &v99 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v99 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v107 = &v99 - v27;
  v123 = sub_1BC8F71E4();
  v28 = MEMORY[0x1EEE9AC00](v123);
  v102 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v110 = &v99 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v32);
  v117 = &v99 - v34;
  v35 = (a2 - a1) / 16;
  v112 = (v8 + 8);
  v113 = (v8 + 32);
  v111 = (v36 + 16);
  v109 = (v36 + 8);
  v37 = (a3 - a2) / 16;
  if (v35 >= v37)
  {
    sub_1BC7DD5E4(a2, (a3 - a2) / 16, a4);
    v38 = &a4[16 * v37];
    v121 = a4;
    v68 = v106;
    v39 = a4;
    v120 = a1;
    v100 = v14;
LABEL_22:
    v69 = a3 - 16;
    v122 = a2;
    v103 = a2 - 16;
    while (v38 > v39 && a2 > a1)
    {
      v71 = *(v38 - 1);
      v117 = *(v38 - 2);
      if (!*(v71 + 16))
      {
        goto LABEL_50;
      }

      v119 = v69;
      v73 = *(a2 - 2);
      v72 = *(a2 - 1);
      v107 = (*(v116 + 80) + 32) & ~*(v116 + 80);
      sub_1BC8B3E70(v71 + v107, v68, type metadata accessor for HistoryItem);
      v74 = v104;
      sub_1BC8B3E70(v68, v104, type metadata accessor for HistoryItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v108 = v73;
      if (EnumCaseMultiPayload == 1)
      {

        sub_1BC7C0224();
        v76 = *v74;
        v77 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        swift_beginAccess();
        (*v111)(v110, &v76[v77], v123);
      }

      else
      {
        v78 = v114;
        v79 = v74;
        v80 = v115;
        (*v113)(v114, v79, v115);

        sub_1BC8F7304();
        (*v112)(v78, v80);
        sub_1BC7C0224();
      }

      v81 = v105;
      if (!*(v72 + 16))
      {
        goto LABEL_51;
      }

      v82 = v72 + v107;
      v83 = v100;
      sub_1BC8B3E70(v82, v100, type metadata accessor for HistoryItem);
      sub_1BC8B3E70(v83, v81, type metadata accessor for HistoryItem);
      v84 = swift_getEnumCaseMultiPayload();
      v118 = v38;
      if (v84 == 1)
      {
        sub_1BC7C0224();
        v85 = *v81;
        v86 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        swift_beginAccess();
        v87 = v102;
        v88 = v123;
        (*v111)(v102, &v85[v86], v123);
      }

      else
      {
        v89 = v114;
        v90 = v81;
        v91 = v115;
        (*v113)(v114, v90, v115);
        v87 = v102;
        sub_1BC8F7304();
        (*v112)(v89, v91);
        sub_1BC7C0224();
        v88 = v123;
      }

      v92 = v110;
      v93 = sub_1BC8F7184();
      v94 = *v109;
      (*v109)(v87, v88);
      v94(v92, v88);

      if (v93)
      {
        a3 = v119;
        a1 = v120;
        v39 = v121;
        v96 = v103;
        v38 = v118;
        a2 = v103;
        v68 = v106;
        if (v119 + 16 != v122)
        {
          *v119 = *v103;
          a2 = v96;
        }

        goto LABEL_22;
      }

      v95 = v119;
      v39 = v121;
      v68 = v106;
      if (v118 != v119 + 16)
      {
        *v119 = *(v38 - 1);
      }

      v69 = v95 - 16;
      v38 -= 16;
      a1 = v120;
      a2 = v122;
    }

LABEL_43:
    v97 = (v38 - v39) / 16;
    if (a2 != v39 || a2 >= &v39[16 * v97])
    {
      memmove(a2, v39, 16 * v97);
    }
  }

  else
  {
    v105 = v33;
    sub_1BC7DD5E4(a1, (a2 - a1) / 16, a4);
    v38 = &a4[16 * v35];
    v118 = v38;
    v101 = v21;
    v106 = v26;
    v39 = a4;
    v119 = a3;
    while (1)
    {
      if (v39 >= v38 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_43;
      }

      v41 = *(a2 + 1);
      if (!*(v41 + 16))
      {
        break;
      }

      v120 = a1;
      v121 = v39;
      v42 = *a2;
      v43 = *v39;
      v44 = *(v39 + 1);
      v45 = (*(v116 + 80) + 32) & ~*(v116 + 80);
      v46 = v107;
      sub_1BC8B3E70(v41 + v45, v107, type metadata accessor for HistoryItem);
      sub_1BC8B3E70(v46, v26, type metadata accessor for HistoryItem);
      v47 = swift_getEnumCaseMultiPayload();
      v110 = v43;
      v108 = v42;
      if (v47 == 1)
      {

        sub_1BC7C0224();
        v48 = *v26;
        v49 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        swift_beginAccess();
        (*v111)(v117, &v48[v49], v123);
      }

      else
      {
        v50 = v114;
        v51 = v26;
        v52 = v115;
        (*v113)(v114, v51, v115);

        sub_1BC8F7304();
        (*v112)(v50, v52);
        sub_1BC7C0224();
      }

      v53 = v101;
      if (!*(v44 + 16))
      {
        goto LABEL_52;
      }

      v122 = a2;
      v54 = v103;
      sub_1BC8B3E70(v44 + v45, v103, type metadata accessor for HistoryItem);
      sub_1BC8B3E70(v54, v53, type metadata accessor for HistoryItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1BC7C0224();
        v55 = *v53;
        v56 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        swift_beginAccess();
        v57 = v105;
        v58 = v123;
        (*v111)(v105, &v55[v56], v123);

        a3 = v119;
      }

      else
      {
        v59 = v114;
        v60 = v53;
        v61 = v115;
        (*v113)(v114, v60, v115);
        v57 = v105;
        sub_1BC8F7304();
        (*v112)(v59, v61);
        sub_1BC7C0224();
        a3 = v119;
        v58 = v123;
      }

      v62 = v117;
      v63 = sub_1BC8F7184();
      v64 = *v109;
      (*v109)(v57, v58);
      v64(v62, v58);

      if (v63)
      {
        v39 = v121;
        v65 = v122;
        a2 = v122 + 16;
        v66 = v120;
        v67 = v120 == v122;
      }

      else
      {
        v66 = v120;
        v65 = v121;
        v39 = v121 + 16;
        v67 = v120 == v121;
        a2 = v122;
      }

      v38 = v118;
      v26 = v106;
      if (!v67)
      {
        *v66 = *v65;
      }

      a1 = v66 + 16;
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }
}

void sub_1BC8AE558()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v24 = v4;
  v5 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_139();
  v23 = v0;
  v9 = *v0;
  OUTLINED_FUNCTION_3_23();
  sub_1BC8B3DC4(v10, v11, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_176_0();
  v12 = sub_1BC8F7B54();
  v25 = v9;
  v26 = v9 + 56;
  v13 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v14 = v12 & v13;
    if (((1 << (v12 & v13)) & *(v26 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v7 + 16))(v1, v3, v5);
      v27 = *v23;
      v21 = OUTLINED_FUNCTION_125();
      sub_1BC8AFDD0(v21, v22, isUniquelyReferenced_nonNull_native);
      *v23 = v27;
      (*(v7 + 32))(v24, v3, v5);
      goto LABEL_7;
    }

    v15 = *(v7 + 72) * v14;
    v16 = *(v7 + 16);
    v16(v1, *(v25 + 48) + v15, v5);
    OUTLINED_FUNCTION_3_23();
    sub_1BC8B3DC4(&unk_1EDC205F0, v17, MEMORY[0x1E69695C8]);
    v18 = sub_1BC8F7BC4();
    v19 = *(v7 + 8);
    v19(v1, v5);
    if (v18)
    {
      break;
    }

    v12 = v14 + 1;
  }

  v19(v3, v5);
  v16(v24, *(v25 + 48) + v15, v5);
LABEL_7:
  OUTLINED_FUNCTION_24();
}

BOOL sub_1BC8AE7D0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1BC8F8C04();
  sub_1BC8F7CD4();
  v8 = sub_1BC8F8C64();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_1BC8F8AA4() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_1BC8B005C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

BOOL sub_1BC8AE91C(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_1BC8F73D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_1BC8B3DC4(&qword_1EBCF5678, MEMORY[0x1E6993530], MEMORY[0x1E6993540]);
  v27 = a2;
  v9 = sub_1BC8F7B54();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_1BC8B01C4(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_1BC8B3DC4(&qword_1EBCF6510, MEMORY[0x1E6993530], MEMORY[0x1E6993548]);
    v15 = sub_1BC8F7BC4();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

uint64_t sub_1BC8AEBE4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v28[9] = a2;
  v28[10] = a3;
  v28[11] = a4;
  v28[12] = a5;
  sub_1BC8F8C04();
  Person.hash(into:)(v28);
  v9 = sub_1BC8F8C64();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    do
    {
      v13 = (*(v8 + 48) + 32 * v11);
      v14 = v13[2];
      v15 = *v13 == a2 && v13[1] == a3;
      if (v15 || (sub_1BC8F8AA4() & 1) != 0)
      {

        if (sub_1BC7DAD3C(v14, a4))
        {
          sub_1BC7F56A4();
          v17 = v16;

          if (v17)
          {

            v19 = (*(v8 + 48) + 32 * v11);
            v20 = v19[1];
            v21 = v19[2];
            v22 = v19[3];
            *a1 = *v19;
            a1[1] = v20;
            a1[2] = v21;
            a1[3] = v22;

            return 0;
          }
        }

        else
        {
        }
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = *v24;

  sub_1BC8B0450(a2, a3, a4, a5, v11, isUniquelyReferenced_nonNull_native);
  *v24 = v28[0];
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  return 1;
}

uint64_t sub_1BC8AEE10(void *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1BC8F8C04();
  sub_1BC7DEC58();
  v5 = sub_1BC8F8C64();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_1BC8B065C(v16, v7, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
    *a1 = a2;
    return 1;
  }

  v18 = ~v6;
  v8 = *(a2 + 16);
  v9 = *(v4 + 48);
  while (1)
  {
    v10 = *(v9 + 8 * v7);
    if (*(v10 + 16) == v8)
    {
      break;
    }

LABEL_14:
    v7 = (v7 + 1) & v18;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (v8 && v10 != a2)
  {
    v11 = (v10 + 40);
    v12 = (a2 + 40);
    v13 = v8;
    do
    {
      v14 = *(v11 - 1) == *(v12 - 1) && *v11 == *v12;
      if (!v14 && (sub_1BC8F8AA4() & 1) == 0)
      {
        goto LABEL_14;
      }

      v11 += 2;
      v12 += 2;
    }

    while (--v13);
  }

  *a1 = *(*(v4 + 48) + 8 * v7);

  return 0;
}

uint64_t sub_1BC8AEFA8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1BC8F7264();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF64F0, &unk_1BC907680);
  result = sub_1BC8F8564();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
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
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1BC8D83A8(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_1BC8B3DC4(&unk_1EDC20600, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = sub_1BC8F7B54();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BC8AF300(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6598, &qword_1BC909C50);
  result = sub_1BC8F8564();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1BC8D83A8(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1BC8F8C04();
    sub_1BC8F7CD4();
    result = sub_1BC8F8C64();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BC8AF55C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1BC8F73D4();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6518, &qword_1BC907698);
  result = sub_1BC8F8564();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
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
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1BC8D83A8(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_1BC8B3DC4(&qword_1EBCF5678, MEMORY[0x1E6993530], MEMORY[0x1E6993540]);
    result = sub_1BC8F7B54();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BC8AF8B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6548, &unk_1BC909C40);
  result = sub_1BC8F8564();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v30 = v3;
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1BC8D83A8(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v31 = *v16;
    v33 = *v16;
    v34 = v17;
    v35 = v18;
    v36 = v19;
    sub_1BC8F8C04();
    Person.hash(into:)(v32);
    result = sub_1BC8F8C64();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 32 * v23);
    *v28 = v31;
    v28[1] = v17;
    v28[2] = v18;
    v28[3] = v19;
    ++*(v5 + 16);
    v3 = v30;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BC8AFB30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6570, &qword_1BC907718);
  result = sub_1BC8F8564();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_30:

    *v2 = v5;
    return result;
  }

  v28 = v3;
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v29 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1BC8D83A8(0, (v27 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v27;
    }

    *(v3 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v29 = (v10 - 1) & v10;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_1BC8F8C04();
    MEMORY[0x1BFB2A020](*(v16 + 16));
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v16 + 40;
      do
      {

        sub_1BC8F7CD4();

        v18 += 16;
        --v17;
      }

      while (v17);
    }

    result = sub_1BC8F8C64();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v5 + 48) + 8 * v22) = v16;
    ++*(v5 + 16);
    v3 = v28;
    v10 = v29;
    if (!v29)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BC8AFDD0(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_1BC8F7264();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BC8AEFA8(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_1BC8B0814(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_1BC8B3DC4(&unk_1EDC20600, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v13 = sub_1BC8F7B54();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_1BC8B3DC4(&unk_1EDC205F0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v15 = sub_1BC8F7BC4();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1BC8D9638();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_1BC8F8B34();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void sub_1BC8B005C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1BC8AF300(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1BC8B0B2C(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1BC8F8C04();
      sub_1BC8F7CD4();
      v16 = sub_1BC8F8C64();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_1BC8F8AA4() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1BC8D9660();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_1BC8F8B34();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_1BC8B01C4(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_1BC8F73D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BC8AF55C(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_1BC8B0D60(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_1BC8B3DC4(&qword_1EBCF5678, MEMORY[0x1E6993530], MEMORY[0x1E6993540]);
      v13 = sub_1BC8F7B54();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_1BC8B3DC4(&qword_1EBCF6510, MEMORY[0x1E6993530], MEMORY[0x1E6993548]);
        v15 = sub_1BC8F7BC4();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1BC8D9754();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_1BC8F8B34();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void sub_1BC8B0450(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 <= v10 || (a6 & 1) == 0)
  {
    if (a6)
    {
      sub_1BC8AF8B4(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        sub_1BC8D9990();
        goto LABEL_20;
      }

      sub_1BC8B1078(v10 + 1);
    }

    v12 = *v6;
    v30 = a1;
    v31 = a2;
    v32 = a3;
    v33 = a4;
    sub_1BC8F8C04();
    Person.hash(into:)(v29);
    v13 = sub_1BC8F8C64();
    v14 = -1 << *(v12 + 32);
    a5 = v13 & ~v14;
    if ((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v15 = ~v14;
      do
      {
        v16 = (*(v12 + 48) + 32 * a5);
        v17 = v16[2];
        v18 = *v16 == a1 && v16[1] == a2;
        if (v18 || (sub_1BC8F8AA4() & 1) != 0)
        {

          if (sub_1BC7DAD3C(v17, a3))
          {
            sub_1BC7F56A4();
            v20 = v19;

            if (v20)
            {
              goto LABEL_23;
            }
          }

          else
          {
          }
        }

        a5 = (a5 + 1) & v15;
      }

      while (((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
    }
  }

LABEL_20:
  v21 = *v26;
  *(*v26 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v22 = (*(v21 + 48) + 32 * a5);
  *v22 = a1;
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_23:
    sub_1BC8F8B34();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }
}

void sub_1BC8B065C(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BC8AFB30(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1BC8D9AA0();
        goto LABEL_22;
      }

      sub_1BC8B12D4(v6 + 1);
    }

    v8 = *v3;
    sub_1BC8F8C04();
    sub_1BC7DEC58();
    v9 = sub_1BC8F8C64();
    v10 = v8 + 56;
    v11 = -1 << *(v8 + 32);
    a2 = v9 & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      v13 = *(result + 16);
      v14 = *(v8 + 48);
      do
      {
        v15 = *(v14 + 8 * a2);
        if (*(v15 + 16) == v13)
        {
          if (!v13 || v15 == result)
          {
            goto LABEL_25;
          }

          v16 = (v15 + 40);
          v17 = (result + 40);
          v18 = v13;
          while (1)
          {
            v19 = *(v16 - 1) == *(v17 - 1) && *v16 == *v17;
            if (!v19 && (sub_1BC8F8AA4() & 1) == 0)
            {
              break;
            }

            v16 += 2;
            v17 += 2;
            if (!--v18)
            {
              goto LABEL_25;
            }
          }
        }

        a2 = (a2 + 1) & v12;
      }

      while (((*(v10 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_22:
  v20 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = result;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_25:
    sub_1BC8F8B34();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v23;
  }
}

uint64_t sub_1BC8B0814(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1BC8F7264();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF64F0, &unk_1BC907680);
  v7 = sub_1BC8F8564();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1BC8B3DC4(&unk_1EDC20600, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        result = sub_1BC8F7B54();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1BC8B0B2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6598, &qword_1BC909C50);
  result = sub_1BC8F8564();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1BC8F8C04();

        sub_1BC8F7CD4();
        result = sub_1BC8F8C64();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BC8B0D60(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1BC8F73D4();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6518, &qword_1BC907698);
  v7 = sub_1BC8F8564();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1BC8B3DC4(&qword_1EBCF5678, MEMORY[0x1E6993530], MEMORY[0x1E6993540]);
        result = sub_1BC8F7B54();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1BC8B1078(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6548, &unk_1BC909C40);
  result = sub_1BC8F8564();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
        v17 = v16[1];
        v18 = v16[2];
        v19 = v16[3];
        v30 = *v16;
        v32 = *v16;
        v33 = v17;
        v34 = v18;
        v35 = v19;
        sub_1BC8F8C04();

        Person.hash(into:)(v31);
        result = sub_1BC8F8C64();
        v20 = -1 << *(v5 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v5 + 48) + 32 * v23);
        *v28 = v30;
        v28[1] = v17;
        v28[2] = v18;
        v28[3] = v19;
        ++*(v5 + 16);
        v3 = v29;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BC8B12D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6570, &qword_1BC907718);
  result = sub_1BC8F8564();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v29 = result;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        sub_1BC8F8C04();
        MEMORY[0x1BFB2A020](*(v16 + 16));
        v17 = *(v16 + 16);
        if (v17)
        {

          v18 = v16 + 40;
          do
          {

            sub_1BC8F7CD4();

            v18 += 16;
            --v17;
          }

          while (v17);
        }

        else
        {
        }

        result = sub_1BC8F8C64();
        v5 = v29;
        v19 = -1 << *(v29 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v29 + 48) + 8 * v22) = v16;
        ++*(v29 + 16);
        v3 = v28;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v27;
          goto LABEL_30;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v5;
  }

  return result;
}

unint64_t *sub_1BC8B1550(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1BC8D9EA4(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1BC8B15E0(void *a1)
{
  v2 = [a1 fullyQualifiedDigits];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BC8F7C24();

  return v3;
}

unint64_t sub_1BC8B1650()
{
  result = qword_1EBCF6358;
  if (!qword_1EBCF6358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF62D8, &qword_1BC906930);
    sub_1BC8B16D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6358);
  }

  return result;
}

unint64_t sub_1BC8B16D4()
{
  result = qword_1EBCF6360;
  if (!qword_1EBCF6360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6360);
  }

  return result;
}

unint64_t sub_1BC8B1728()
{
  result = qword_1EBCF6368;
  if (!qword_1EBCF6368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF62F8, &qword_1BC906938);
    sub_1BC8B17AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6368);
  }

  return result;
}

unint64_t sub_1BC8B17AC()
{
  result = qword_1EBCF6370;
  if (!qword_1EBCF6370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6370);
  }

  return result;
}

unint64_t sub_1BC8B1800()
{
  result = qword_1EBCF6380;
  if (!qword_1EBCF6380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6380);
  }

  return result;
}

unint64_t sub_1BC8B1854()
{
  result = qword_1EBCF6390;
  if (!qword_1EBCF6390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF6388, &qword_1BC906980);
    sub_1BC8B18D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6390);
  }

  return result;
}

unint64_t sub_1BC8B18D8()
{
  result = qword_1EBCF6398;
  if (!qword_1EBCF6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6398);
  }

  return result;
}

unint64_t sub_1BC8B192C()
{
  result = qword_1EBCF63A8;
  if (!qword_1EBCF63A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF6388, &qword_1BC906980);
    sub_1BC8B19B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF63A8);
  }

  return result;
}

unint64_t sub_1BC8B19B0()
{
  result = qword_1EBCF63B0;
  if (!qword_1EBCF63B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF63B0);
  }

  return result;
}

uint64_t sub_1BC8B1A04(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for HistoryItem(0);
  v30 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - v13;
  v31 = a4;
  v17 = *(a4 + 64);
  v16 = a4 + 64;
  v15 = v17;
  v18 = -1 << *(v16 - 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v15;
  if (!a2)
  {
    v22 = 0;
    a3 = 0;
LABEL_21:
    *a1 = v31;
    a1[1] = v16;
    a1[2] = ~v18;
    a1[3] = v22;
    a1[4] = v20;
    return a3;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = -1 << *(v16 - 32);
    v29 = a1;
    v21 = 0;
    v22 = 0;
    v23 = (63 - v18) >> 6;
    while (1)
    {
      if (v21 >= a3)
      {
        goto LABEL_24;
      }

      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_25;
      }

      if (!v20)
      {
        while (1)
        {
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v25 >= v23)
          {
            v20 = 0;
            a3 = v21;
            goto LABEL_19;
          }

          v20 = *(v16 + 8 * v25);
          ++v22;
          if (v20)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v25 = v22;
LABEL_15:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v27 = *(v30 + 72);
      sub_1BC8B3E70(*(v31 + 56) + v27 * (v26 | (v25 << 6)), v11, type metadata accessor for HistoryItem);
      sub_1BC7FBC68(v11, v14);
      result = sub_1BC7FBC68(v14, a2);
      if (v24 == a3)
      {
        break;
      }

      a2 += v27;
      v21 = v24;
      v22 = v25;
    }

    v22 = v25;
LABEL_19:
    v18 = v28;
    a1 = v29;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1BC8B1C2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + 64;
  OUTLINED_FUNCTION_64_4();
  if (v13 != v14)
  {
    v15 = ~v11;
  }

  else
  {
    v15 = v10;
  }

  v16 = v15 & v9;
  if (!v7)
  {
    v19 = 0;
LABEL_21:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v12;
    a1[3] = v19;
    a1[4] = v16;
    return;
  }

  v17 = v8;
  if (!v8)
  {
    v19 = 0;
    goto LABEL_21;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v18 = v7;
    OUTLINED_FUNCTION_125_1();
    v27 = v21;
    v23 = (v22 - v21) >> 6;
    while (1)
    {
      if (v20 >= v17)
      {
        goto LABEL_24;
      }

      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_25;
      }

      if (!v16)
      {
        while (1)
        {
          v25 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v25 >= v23)
          {
            v16 = 0;
            goto LABEL_19;
          }

          v16 = *(v6 + 8 * v25);
          ++v19;
          if (v16)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v25 = v19;
LABEL_15:
      v26 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      *v18 = *(*(a4 + 56) + ((v25 << 10) | (16 * v26)));
      if (v24 == v17)
      {
        break;
      }

      ++v18;

      v20 = v24;
      v19 = v25;
    }

    v19 = v25;
LABEL_19:
    v12 = v27;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

void sub_1BC8B1DA4()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v4 = v0 + 64;
  v5 = -1 << *(v0 + 32);
  OUTLINED_FUNCTION_64_4();
  if (v11 != v12)
  {
    v13 = ~v10;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13 & v8;
  if (!v6)
  {
    v17 = 0;
LABEL_20:
    *v3 = v1;
    v3[1] = v4;
    v3[2] = ~v5;
    v3[3] = v17;
    v3[4] = v14;
    OUTLINED_FUNCTION_24();
    return;
  }

  v15 = v7;
  if (!v7)
  {
    v17 = 0;
    goto LABEL_20;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v16 = v6;
    OUTLINED_FUNCTION_125_1();
    v20 = (v19 - v5) >> 6;
    while (v18 < v15)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_24;
      }

      if (!v14)
      {
        while (1)
        {
          v22 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v22 >= v20)
          {
            v14 = 0;
            goto LABEL_20;
          }

          v14 = *(v4 + 8 * v22);
          ++v17;
          if (v14)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v22 = v17;
LABEL_15:
      v23 = (*(v1 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v14)))));
      v24 = v23[1];
      v14 &= v14 - 1;
      *v16 = *v23;
      v16[1] = v24;
      if (v21 == v15)
      {

        v17 = v22;
        goto LABEL_20;
      }

      v16 += 2;

      v18 = v21;
      v17 = v22;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void sub_1BC8B1EFC()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_114();
  v8(v7);
  OUTLINED_FUNCTION_0();
  v48 = v9;
  v49 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_0();
  v47 = v11 - v12;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v39 - v14;
  v45 = -1 << *(v2 + 32);
  OUTLINED_FUNCTION_64_4();
  if (v19 != v20)
  {
    v21 = ~v17;
  }

  else
  {
    v21 = v16;
  }

  v22 = v21 & v15;
  if (!v6)
  {
    v24 = 0;
LABEL_22:
    v38 = ~v45;
    *v0 = v2;
    v0[1] = v18;
    v0[2] = v38;
    v0[3] = v24;
    v0[4] = v22;
    OUTLINED_FUNCTION_24();
    return;
  }

  if (!v4)
  {
    v24 = 0;
    goto LABEL_22;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v40 = v0;
    v41 = v18;
    OUTLINED_FUNCTION_125_1();
    v27 = (v26 - v45) >> 6;
    v42 = v49 + 32;
    v43 = v49 + 16;
    v44 = v23;
    while (v25 < v23)
    {
      if (__OFADD__(v25, 1))
      {
        goto LABEL_26;
      }

      if (!v22)
      {
        v18 = v41;
        while (1)
        {
          v28 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v28 >= v27)
          {
            v22 = 0;
            v0 = v40;
            goto LABEL_22;
          }

          v22 = *(v41 + 8 * v28);
          ++v24;
          if (v22)
          {
            v50 = v25 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v50 = v25 + 1;
      v28 = v24;
LABEL_17:
      v29 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v30 = v2;
      v31 = *(v2 + 48);
      v33 = v48;
      v32 = v49;
      v34 = *(v49 + 72);
      v35 = v47;
      (*(v49 + 16))(v47, v31 + v34 * (v29 | (v28 << 6)), v48);
      v36 = *(v32 + 32);
      v37 = v46;
      v36(v46, v35, v33);
      v36(v6, v37, v33);
      v23 = v44;
      v25 = v50;
      if (v50 == v44)
      {
        v24 = v28;
        v0 = v40;
        v18 = v41;
        v2 = v30;
        goto LABEL_22;
      }

      v6 += v34;
      v24 = v28;
      v2 = v30;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BC8B2160(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1BC7FA9CC(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = v9 + 8 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1BC7DD67C(v9 + 8 * a2, v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1BC8B223C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = (result - a2);
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1BC7FAAAC();
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1BC7DD5E4((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1BC8B2318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a4;
  v35 = a2;
  v34 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF65B0, &qword_1BC907820);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v34 - v16);
  v40[3] = sub_1BC7D9730(0, &qword_1EDC1DD20, 0x1E6993580);
  v40[4] = MEMORY[0x1E6993560];
  v40[0] = a5;
  v18 = type metadata accessor for MessageStoreController();
  v39[3] = v18;
  v39[4] = &off_1F3B3C868;
  v39[0] = a6;
  v38[3] = sub_1BC7D9730(0, &qword_1EDC1DE50, 0x1E695CE18);
  v38[4] = &off_1F3B3DF68;
  v38[0] = a7;
  type metadata accessor for HistoryCoalescingManager(0);
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v39, v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;
  v37[3] = v18;
  v37[4] = &off_1F3B3C868;
  v37[0] = v24;
  swift_defaultActor_initialize();
  *(v19 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callHistoryObserver) = 0;
  v25 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_handleToPerson;
  v26 = MEMORY[0x1E69E7CC0];
  *(v19 + v25) = sub_1BC8F7AD4();
  v27 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets;
  sub_1BC8B2D98();
  *(v19 + v27) = sub_1BC8F7AD4();
  *(v19 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_messageFetchTask) = 0;
  *(v19 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callFetchTask) = 0;
  *(v19 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingMessageRefetch) = 0;
  *(v19 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingCallRefetch) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  *v17 = 10;
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8788], v14);
  sub_1BC8F8054();
  (*(v15 + 8))(v17, v14);
  *(v19 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion) = 0;
  *(v19 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog) = v26;
  *(v19 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_maxEventLogCount) = 100;
  *(v19 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_initialFetch) = 0;
  *(v19 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_didEmitFinishedInitialFetch) = 0;
  *(v19 + 232) = v34;
  sub_1BC8B3E70(v35, v19 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_messageRequest, type metadata accessor for MessageStoreFetchRequest);
  v28 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callRequest;
  v29 = sub_1BC8F7334();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v19 + v28, a3, v29);
  *(v19 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pageSize) = v36;
  sub_1BC87CA98(v40, v19 + 112);
  sub_1BC87CA98(v37, v19 + 152);
  sub_1BC87CA98(v38, v19 + 192);
  *(v19 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callHistoryObserver) = 0;
  swift_unknownObjectRelease();
  v31 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v19;

  sub_1BC8333D4();

  (*(v30 + 8))(a3, v29);
  sub_1BC7C0224();
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return v19;
}

uint64_t sub_1BC8B2874()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC89D13C();
}

uint64_t type metadata accessor for HistoryCoalescingManager(uint64_t a1)
{
  result = qword_1EBCF6428;
  if (!qword_1EBCF6428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC8B2950()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_140();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_79_3(v2);

  return sub_1BC89D634(v4, v5, v0);
}

uint64_t sub_1BC8B29E0()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_51_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_112();

  return sub_1BC8A65A8(v3, v4, v5, v6, v7);
}

uint64_t sub_1BC8B2A74()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_51_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_112();

  return sub_1BC8A705C(v3, v4, v5, v6, v7);
}

uint64_t sub_1BC8B2B08()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_51_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_112();

  return sub_1BC8A7D5C(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC8B2BE4()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_51_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_112();

  return sub_1BC8A8414(v3, v4, v5, v6, v7);
}

uint64_t sub_1BC8B2C78()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC8A8A5C();
}

uint64_t sub_1BC8B2D08()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC8A8D50();
}

unint64_t sub_1BC8B2D98()
{
  result = qword_1EBCF63F8;
  if (!qword_1EBCF63F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF63F8);
  }

  return result;
}

unint64_t sub_1BC8B2DF0()
{
  result = qword_1EBCF6410;
  if (!qword_1EBCF6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6410);
  }

  return result;
}

unint64_t sub_1BC8B2E48()
{
  result = qword_1EBCF6418;
  if (!qword_1EBCF6418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6418);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20FaceTimeMessageStore18HistoryChangeEventO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1BC8B2ECC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC8B2F0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BC8B2F50(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1BC8B2F78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC8B2FB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BC8B300C(uint64_t a1)
{
  v10 = &unk_1BC906E70;
  v11 = &unk_1BC906E88;
  v12 = &unk_1BC906E88;
  v13 = &unk_1BC906E88;
  v1 = MEMORY[0x1E69E5CE8];
  v14 = MEMORY[0x1E69E5CE8] + 64;
  Request = type metadata accessor for MessageStoreFetchRequest(319);
  if (v3 <= 0x3F)
  {
    v15 = *(Request - 8) + 64;
    v4 = sub_1BC8F7334();
    if (v5 <= 0x3F)
    {
      v6 = MEMORY[0x1E69E5D08];
      v16 = *(v4 - 8) + 64;
      v17 = MEMORY[0x1E69E5D08] + 64;
      v18 = &unk_1BC906EA0;
      v19 = v1 + 64;
      v20 = v1 + 64;
      v21 = &unk_1BC906EA0;
      v22 = &unk_1BC906EA0;
      v23 = &unk_1BC906EB8;
      v24 = &unk_1BC906EB8;
      sub_1BC8B33C4(319, &unk_1EBCF6438, MEMORY[0x1E69E87C8]);
      if (v7 <= 0x3F)
      {
        sub_1BC8B33C4(319, &qword_1EBCF6448, MEMORY[0x1E69E87A0]);
        if (v8 <= 0x3F)
        {
          swift_getTupleTypeLayout2();
          v25 = &v9;
          v26 = v6 + 64;
          v27 = v1 + 64;
          v28 = v6 + 64;
          v29 = &unk_1BC906ED8;
          v30 = &unk_1BC906EB8;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of HistoryCoalescingManager.performFullRefetch()()
{
  OUTLINED_FUNCTION_32();
  v5 = (*(*v0 + 544) + **(*v0 + 544));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_7(v1);
  *v2 = v3;
  v2[1] = sub_1BC7B0248;

  return v5();
}

void sub_1BC8B33C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5E20, &unk_1BC902A40);
    v7 = a3(a1, &type metadata for VersionedChange, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for VersionedChange.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HistoryChangeEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BC8B3628(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BC8B36E8()
{
  result = qword_1EBCF6450;
  if (!qword_1EBCF6450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6450);
  }

  return result;
}

unint64_t sub_1BC8B3740()
{
  result = qword_1EBCF6458;
  if (!qword_1EBCF6458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6458);
  }

  return result;
}

unint64_t sub_1BC8B3798()
{
  result = qword_1EBCF6460;
  if (!qword_1EBCF6460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6460);
  }

  return result;
}

unint64_t sub_1BC8B37F0()
{
  result = qword_1EBCF6468;
  if (!qword_1EBCF6468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6468);
  }

  return result;
}

unint64_t sub_1BC8B3848()
{
  result = qword_1EBCF6470;
  if (!qword_1EBCF6470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6470);
  }

  return result;
}

unint64_t sub_1BC8B38A0()
{
  result = qword_1EBCF6478;
  if (!qword_1EBCF6478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6478);
  }

  return result;
}

unint64_t sub_1BC8B38F8()
{
  result = qword_1EBCF6480;
  if (!qword_1EBCF6480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6480);
  }

  return result;
}

unint64_t sub_1BC8B3950()
{
  result = qword_1EBCF6488;
  if (!qword_1EBCF6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6488);
  }

  return result;
}

unint64_t sub_1BC8B39A8()
{
  result = qword_1EBCF6490;
  if (!qword_1EBCF6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6490);
  }

  return result;
}

unint64_t sub_1BC8B3A00()
{
  result = qword_1EBCF6498;
  if (!qword_1EBCF6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6498);
  }

  return result;
}

unint64_t sub_1BC8B3A58()
{
  result = qword_1EBCF64A0;
  if (!qword_1EBCF64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64A0);
  }

  return result;
}

unint64_t sub_1BC8B3AB0()
{
  result = qword_1EBCF64A8;
  if (!qword_1EBCF64A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64A8);
  }

  return result;
}

unint64_t sub_1BC8B3B08()
{
  result = qword_1EBCF64B0;
  if (!qword_1EBCF64B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64B0);
  }

  return result;
}

unint64_t sub_1BC8B3B60()
{
  result = qword_1EBCF64B8;
  if (!qword_1EBCF64B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64B8);
  }

  return result;
}

unint64_t sub_1BC8B3BB8()
{
  result = qword_1EBCF64C0;
  if (!qword_1EBCF64C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64C0);
  }

  return result;
}

unint64_t sub_1BC8B3C10()
{
  result = qword_1EBCF64C8;
  if (!qword_1EBCF64C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64C8);
  }

  return result;
}

unint64_t sub_1BC8B3C68()
{
  result = qword_1EBCF64D0;
  if (!qword_1EBCF64D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64D0);
  }

  return result;
}

unint64_t sub_1BC8B3CC0()
{
  result = qword_1EBCF64D8;
  if (!qword_1EBCF64D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64D8);
  }

  return result;
}

unint64_t sub_1BC8B3D18()
{
  result = qword_1EBCF64E0;
  if (!qword_1EBCF64E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64E0);
  }

  return result;
}

unint64_t sub_1BC8B3D70()
{
  result = qword_1EBCF64E8;
  if (!qword_1EBCF64E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64E8);
  }

  return result;
}

uint64_t sub_1BC8B3DC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BC8B3E0C()
{
  result = qword_1EBCF6530;
  if (!qword_1EBCF6530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBCF6520, &unk_1BC9076A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6530);
  }

  return result;
}

uint64_t sub_1BC8B3E70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1BC8B3ED0()
{
  result = qword_1EBCF6540;
  if (!qword_1EBCF6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6540);
  }

  return result;
}

uint64_t sub_1BC8B3F24()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_140();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_79_3(v1);
  OUTLINED_FUNCTION_112();

  return sub_1BC8A4944(v3, v4, v5, v6, v7);
}

uint64_t sub_1BC8B3FC8()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC89DBD4();
}

uint64_t sub_1BC8B4058()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC89D94C();
}

uint64_t sub_1BC8B40E8()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v5[1] = sub_1BC7B0248;

  return sub_1BC8ABDF8(v2, v3);
}

uint64_t objectdestroy_156Tm()
{

  OUTLINED_FUNCTION_41_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BC8B41F4()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_51_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);
  OUTLINED_FUNCTION_71_3();

  return sub_1BC89FB1C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1BC8B42A4()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_51_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);
  OUTLINED_FUNCTION_71_3();

  return sub_1BC89F0C4(v3, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BC8B43A0()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC89E648();
}

uint64_t sub_1BC8B4430()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_140();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_79_3(v2);

  return sub_1BC89DF34(v4, v5, v0);
}

uint64_t sub_1BC8B44C0()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC89E150();
}

uint64_t sub_1BC8B4550()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC89E1E4();
}

uint64_t sub_1BC8B45F0()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC89D94C();
}

uint64_t sub_1BC8B4680()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC89DBD4();
}

uint64_t objectdestroyTm_1(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1BC8B475C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_2_24(v2);

  return sub_1BC89CDF4(v4, v5, v6, v0);
}

uint64_t OUTLINED_FUNCTION_82_4()
{

  return swift_arrayDestroy();
}

__n128 OUTLINED_FUNCTION_87_4()
{
  *(*(v0 + 48) + 8 * v1) = *(v2 - 200);
  result = *(v2 - 192);
  *(*(v0 + 56) + 16 * v1) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_102_0()
{
  v6 = *(v2 + v3);
  *(v6 + 16) = v0 + 1;
  v7 = v6 + 16 * v0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v1;
  *(v2 + v3) = v6;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_107_1(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

uint64_t OUTLINED_FUNCTION_113_1()
{

  return sub_1BC7F1790(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_115_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_119_1(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_121_1(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = *(v2 + 16);
  return result;
}

id OUTLINED_FUNCTION_131_1()
{
  v2 = *(v0 + 24);
  *(v0 + 32) = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_151(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_153_0()
{

  return swift_slowAlloc();
}

double OUTLINED_FUNCTION_157()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_184_0@<X0>(void *a1@<X8>)
{
  result = *(v2 - 160);
  *a1 = v1;
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_189()
{

  return sub_1BC8F7FC4();
}

double OUTLINED_FUNCTION_192_0(float a1)
{
  *v2 = a1;
  *(v2 + 4) = *(v1 + 16);

  return result;
}

uint64_t OUTLINED_FUNCTION_194_0(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v1 + v3) = a1;
}

uint64_t OUTLINED_FUNCTION_195_0()
{
  *(*(v1 - 200) + *(v1 - 152)) = v0;

  return swift_endAccess();
}

double OUTLINED_FUNCTION_199_0()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_200_0()
{

  return swift_task_alloc();
}

double OUTLINED_FUNCTION_202_0()
{

  return result;
}

void OUTLINED_FUNCTION_203_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_205_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1BC7D9558(a3 + v3, v4, a1, a2);
}

uint64_t OUTLINED_FUNCTION_207_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

CGColorSpaceRef sub_1BC8B4D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v64 - v11;
  sub_1BC8B54D4();
  v13 = *(v6 + 16);
  v13(v12, a1, v4);
  v14 = sub_1BC8B5518(v12);
  if (!v14)
  {
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_3_2(&qword_1EDC1E1F8);
    }

    v32 = sub_1BC8F7734();
    __swift_project_value_buffer(v32, qword_1EDC2B2B0);
    v33 = sub_1BC8F7714();
    v34 = sub_1BC8F81E4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BC7A3000, v33, v34, "Failed to generate base image", v35, 2u);
      OUTLINED_FUNCTION_6();
    }

    v36 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v36, 1, v4);
  }

  v15 = v14;
  v16 = [v14 imageByClampingToExtent];
  v17 = [v16 imageByApplyingGaussianBlurWithSigma_];

  [v15 extent];
  v70 = [v17 imageByCroppingToRect_];

  v18 = objc_allocWithZone(MEMORY[0x1E695F620]);
  v69 = sub_1BC8B55B4(0, v19);
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_3_2(&qword_1EDC1E1F8);
  }

  v20 = sub_1BC8F7734();
  v21 = __swift_project_value_buffer(v20, qword_1EDC2B2B0);
  v68 = v13;
  v13(v10, a1, v4);
  v64 = v21;
  v22 = sub_1BC8F7714();
  v23 = sub_1BC8F8204();
  v24 = os_log_type_enabled(v22, v23);
  v66 = v4;
  v67 = a2;
  v65 = v15;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v73[0] = v26;
    *v25 = 136446210;
    sub_1BC8B5670(&qword_1EDC20610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v27 = sub_1BC8F8A54();
    v28 = v4;
    v30 = v29;
    (*(v6 + 8))(v10, v28);
    v31 = sub_1BC7A9A4C(v27, v30, v73);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1BC7A3000, v22, v23, "Generating blurred image for thumbnail at url %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v6 + 8))(v10, v4);
  }

  v37 = sub_1BC8F6F44();
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v39 = v68;
  if (result)
  {
    v40 = result;
    v41 = *MEMORY[0x1E695F8F8];
    type metadata accessor for CIImageRepresentationOption(0);
    sub_1BC8B5670(&qword_1EBCF4AD0, type metadata accessor for CIImageRepresentationOption, &unk_1BC8FB4E0);
    sub_1BC8F7AD4();
    v42 = sub_1BC8F7A94();

    v73[0] = 0;
    v44 = v69;
    v43 = v70;
    LODWORD(v41) = [v69 writePNGRepresentationOfImage:v70 toURL:v37 format:v41 colorSpace:v40 options:v42 error:v73];

    if (v41)
    {
      v45 = v73[0];

      v4 = v66;
      a2 = v67;
      v39(v67, a1, v66);
      v36 = 0;
    }

    else
    {
      v46 = v73[0];
      v47 = sub_1BC8F6EA4();

      swift_willThrow();
      v48 = v47;
      v49 = sub_1BC8F7714();
      v50 = sub_1BC8F81E4();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v73[0] = v68;
        *v51 = 136446210;
        swift_getErrorValue();
        LODWORD(v64) = v50;
        v52 = v71;
        v53 = v72;
        v54 = sub_1BC8F83F4();
        OUTLINED_FUNCTION_0();
        v56 = v55;
        MEMORY[0x1EEE9AC00](v57);
        v59 = &v64 - v58;
        (*(*(v53 - 8) + 16))(&v64 - v58, v52, v53);
        v36 = 1;
        __swift_storeEnumTagSinglePayload(v59, 0, 1, v53);
        v60 = sub_1BC8073F0(v59, v53);
        v62 = v61;
        (*(v56 + 8))(v59, v54);
        v63 = sub_1BC7A9A4C(v60, v62, v73);

        *(v51 + 4) = v63;
        _os_log_impl(&dword_1BC7A3000, v49, v64, "Error generating thumbnail %{public}s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      else
      {

        v36 = 1;
      }

      v4 = v66;
      a2 = v67;
    }

    return __swift_storeEnumTagSinglePayload(a2, v36, 1, v4);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BC8B54D4()
{
  result = qword_1EBCF65B8;
  if (!qword_1EBCF65B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCF65B8);
  }

  return result;
}

id sub_1BC8B5518(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BC8F6F44();
  v4 = [v2 initWithContentsOfURL_];

  v5 = sub_1BC8F7014();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_1BC8B55B4(uint64_t a1, double a2)
{
  if (a1)
  {
    type metadata accessor for CIContextOption(0);
    sub_1BC8B5670(&qword_1EBCF4AC0, type metadata accessor for CIContextOption, &unk_1BC8FB49C);
    v3 = sub_1BC8F7A94();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithOptions_];

  return v4;
}

uint64_t sub_1BC8B5670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MailboxType.description.getter(__int16 a1)
{
  switch(a1)
  {
    case 0:
      return 0x786F626E69;
    case 2:
      return 0x6873617274;
    case 1:
      return 1802401130;
  }

  result = sub_1BC8F8B04();
  __break(1u);
  return result;
}

unint64_t sub_1BC8B5770()
{
  result = qword_1EBCF65C0;
  if (!qword_1EBCF65C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF65C0);
  }

  return result;
}

unint64_t sub_1BC8B57C8()
{
  result = qword_1EBCF65C8;
  if (!qword_1EBCF65C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5378, &unk_1BC8FEB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF65C8);
  }

  return result;
}

uint64_t sub_1BC8B5834()
{
  result = sub_1BC8B586C(1);
  qword_1EDC2B1F8 = result;
  byte_1EDC2B200 = 1;
  return result;
}

uint64_t sub_1BC8B586C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6530];
  v14[3] = MEMORY[0x1E69E6530];
  v14[4] = sub_1BC8B5AA4();
  v14[0] = a1;
  v3 = __swift_project_boxed_opaque_existential_1(v14, v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  (*(v4 + 16))(&v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BC8F8464();
  if (sub_1BC8F8464() & 1) != 0 || (v13 = 0x7FFFFFFFFFFFFFFFLL, v6 = sub_1BC8F8464(), (v6))
  {
    result = (*(v4 + 8))(&v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x1E69E6530]);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    sub_1BC8B5AF8();
    v8 = MEMORY[0x1E69E6530];
    sub_1BC8F8434();
    v9 = sub_1BC8F7B84();
    v10 = *(v4 + 8);
    v10(&v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    result = (v10)(&v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    if (v9)
    {
      goto LABEL_10;
    }
  }

  v11 = 1000 * a1;
  if ((a1 * 1000) >> 64 == (1000 * a1) >> 63)
  {
    v12 = 1000000 * a1;
    if ((v11 * 1000) >> 64 == v12 >> 63)
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1BC8B5AA4()
{
  result = qword_1EDC1DF30;
  if (!qword_1EDC1DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DF30);
  }

  return result;
}

unint64_t sub_1BC8B5AF8()
{
  result = qword_1EDC1FF88;
  if (!qword_1EDC1FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FF88);
  }

  return result;
}

void sub_1BC8B5B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = a1;
  v4[4] = a2;
  sub_1BC8BD7F4(sub_1BC8BE8C4, v4, a3, MEMORY[0x1E69E7CA8] + 8, a4);
}

void static LRUCache.load(from:fallbackCapacity:)()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v70 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v65 = v8;
  v9 = *(v1 + 128);
  v10 = *(v1 + 96);
  v68[0] = *(v1 + 80);
  v68[1] = v10;
  v68[2] = *(v1 + 112);
  v69 = v9;
  v62 = type metadata accessor for LRUCache.Snapshot(0, v68);
  OUTLINED_FUNCTION_0();
  v57 = v11;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v61 = v13;
  v14 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31();
  v58 = v18;
  OUTLINED_FUNCTION_17_0();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v55 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v55 - v23;
  v64 = *v3;
  v63 = *(v3 + 8);
  if (qword_1EDC1E1E8 != -1)
  {
    OUTLINED_FUNCTION_11_14(&qword_1EDC1E1E8);
  }

  v25 = sub_1BC8F7734();
  __swift_project_value_buffer(v25, qword_1EDC2B298);
  v66 = *(v16 + 16);
  v67 = (v16 + 16);
  v66(v24, v5, v14);
  v26 = sub_1BC8F7714();
  v27 = sub_1BC8F8204();
  v28 = os_log_type_enabled(v26, v27);
  v60 = v16;
  v56 = v22;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v55[2] = v1;
    v55[1] = v5;
    v31 = v30;
    *&v68[0] = v30;
    *v29 = 136446210;
    OUTLINED_FUNCTION_2_25(&qword_1EDC20610);
    v32 = sub_1BC8F8A54();
    v34 = v33;
    v35 = OUTLINED_FUNCTION_45_1();
    v59 = v36;
    v36(v35);
    v37 = sub_1BC7A9A4C(v32, v34, v68);

    *(v29 + 4) = v37;
    _os_log_impl(&dword_1BC7A3000, v26, v27, "Loading cache from %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v38 = OUTLINED_FUNCTION_45_1();
    v59 = v39;
    v39(v38);
  }

  v40 = sub_1BC8F7054();
  v42 = v41;
  sub_1BC8F6C54();
  swift_allocObject();
  sub_1BC8F6C44();
  OUTLINED_FUNCTION_5_21();
  swift_getWitnessTable();
  v43 = v61;
  sub_1BC8F6C34();

  sub_1BC8B7D90();
  v44 = v56;
  OUTLINED_FUNCTION_25_13();
  v45();

  v46 = sub_1BC8F7714();
  v47 = sub_1BC8F8204();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&v68[0] = v67;
    *v48 = 134349314;
    *(v48 + 4) = LRUCache.count.getter();

    *(v48 + 12) = 2082;
    OUTLINED_FUNCTION_2_25(&qword_1EDC20610);
    v49 = sub_1BC8F8A54();
    v51 = v50;
    OUTLINED_FUNCTION_38_12();
    v52(v44, v14);
    v53 = sub_1BC7A9A4C(v49, v51, v68);

    *(v48 + 14) = v53;
    _os_log_impl(&dword_1BC7A3000, v46, v47, "Loaded cache with %{public}ld cached values from %{public}s", v48, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v67);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
    sub_1BC7D4C94(v40, v42);

    (*(v57 + 8))(v61, v62);
  }

  else
  {
    sub_1BC7D4C94(v40, v42);

    OUTLINED_FUNCTION_38_12();
    v54(v44, v14);
    (*(v57 + 8))(v43, v62);
  }

  OUTLINED_FUNCTION_24();
}

void LRUCache.removeValue(forKey:)()
{
  v0 = sub_1BC8F83F4();
  OUTLINED_FUNCTION_35_10(v0, v1, v2, v0, v3, v4, v5, v6, v7);
  sub_1BC8B9F5C();
}

uint64_t LRUCache.subscript.setter()
{
  OUTLINED_FUNCTION_140();
  LRUCache.set(_:forKey:)();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0);
  sub_1BC8F83F4();
  OUTLINED_FUNCTION_10();
  v5 = *(v4 + 8);

  return v5(v1, v3);
}

void LRUCache.set(_:forKey:)()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_31_10();
  v7 = *(v6 + 88);
  v68 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v56[-v9];
  OUTLINED_FUNCTION_31_10();
  v11 = *(v10 + 80);
  sub_1BC8F83F4();
  OUTLINED_FUNCTION_0();
  v63 = v13;
  v64 = v12;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v62 = v15;
  OUTLINED_FUNCTION_0_5();
  v75 = v16;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v74 = v18;
  v19 = sub_1BC8F83F4();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_31();
  v66 = v23;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v24);
  v71 = &v56[-v25];
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v56[-v27];
  if (qword_1EDC1E1E8 != -1)
  {
    OUTLINED_FUNCTION_11_14(&qword_1EDC1E1E8);
  }

  v29 = sub_1BC8F7734();
  __swift_project_value_buffer(v29, qword_1EDC2B298);
  v30 = *(v21 + 16);
  v72 = v5;
  v69 = v21 + 16;
  v70 = v30;
  v30(v28, v5, v19);
  v73 = v19;
  v31 = *(v75 + 16);
  v31(v74, v3, v11);
  v32 = sub_1BC8F7714();
  v33 = sub_1BC8F81C4();
  v34 = os_log_type_enabled(v32, v33);
  v65 = v21;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v60 = v3;
    v36 = v35;
    v59 = swift_slowAlloc();
    v76[0] = v59;
    *v36 = 136446466;
    v37 = sub_1BC8073F0(v28, v7);
    v61 = v1;
    v38 = v37;
    v58 = v32;
    v39 = v7;
    v41 = v40;
    v57 = v33;
    v42 = *(v21 + 8);
    v42(v28, v73);
    v43 = sub_1BC7A9A4C(v38, v41, v76);
    v7 = v39;

    *(v36 + 4) = v43;
    *(v36 + 12) = 2082;
    v44 = v62;
    v45 = v74;
    v31(v62, v74, v11);
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v11);
    v46 = sub_1BC8073F0(v44, v11);
    v48 = v47;
    (*(v63 + 8))(v44, v64);
    (*(v75 + 8))(v45, v11);
    v49 = sub_1BC7A9A4C(v46, v48, v76);

    *(v36 + 14) = v49;
    v50 = v58;
    _os_log_impl(&dword_1BC7A3000, v58, v57, "Setting %{public}s to the cache with key %{public}s", v36, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    v51 = v73;
  }

  else
  {

    (*(v75 + 8))(v74, v11);
    v42 = *(v21 + 8);
    v51 = v73;
    v42(v28, v73);
  }

  v52 = v71;
  v70(v71, v72, v51);
  if (__swift_getEnumTagSinglePayload(v52, 1, v7) == 1)
  {
    v42(v52, v51);
    v53 = v66;
    LRUCache.removeValue(forKey:)();
    v42(v53, v51);
  }

  else
  {
    v55 = v67;
    v54 = v68;
    (*(v68 + 32))(v67, v52, v7);
    LRUCache.addOrUpdate(_:forKey:)();
    (*(v54 + 8))(v55, v7);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC8B6C08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BC8B6CCC(char a1)
{
  if (a1)
  {
    return 1702521203;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_1BC8B6D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8B6C08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8B6D28(uint64_t a1)
{
  v2 = sub_1BC8BD924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8B6D64(uint64_t a1)
{
  v2 = sub_1BC8BD924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC8B6DA0(uint64_t a1)
{
  v2 = sub_1BC8BD9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8B6DDC(uint64_t a1)
{
  v2 = sub_1BC8BD9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC8B6E18(uint64_t a1)
{
  v2 = sub_1BC8BD978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8B6E54(uint64_t a1)
{
  v2 = sub_1BC8BD978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LRUCapacity.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_22();
  v53 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF65D0, &qword_1BC9079F0);
  OUTLINED_FUNCTION_0();
  v50 = v29;
  v51 = v28;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v49 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF65D8, &qword_1BC9079F8);
  OUTLINED_FUNCTION_0();
  v47 = v33;
  v48 = v32;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v46 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF65E0, &qword_1BC907A00);
  OUTLINED_FUNCTION_0();
  v39 = v38;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_27_10();
  v52 = *v23;
  v41 = *(v23 + 8);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1BC8BD924();
  sub_1BC8F8CA4();
  v42 = (v39 + 8);
  if (v41)
  {
    OUTLINED_FUNCTION_28_12();
    sub_1BC8BD978();
    v43 = v49;
    sub_1BC8F8934();
    v44 = v51;
    sub_1BC8F89D4();
    (*(v50 + 8))(v43, v44);
  }

  else
  {
    sub_1BC8BD9CC();
    sub_1BC8F8934();
    v45 = v48;
    sub_1BC8F89D4();
    (*(v47 + 8))(v36, v45);
  }

  (*v42)(v25, v37);
  OUTLINED_FUNCTION_23();
}

uint64_t LRUCapacity.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x1BFB2A020](*(v0 + 8));
  return MEMORY[0x1BFB2A020](v1);
}

uint64_t LRUCapacity.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v2);
  MEMORY[0x1BFB2A020](v1);
  return sub_1BC8F8C64();
}

void LRUCapacity.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_22();
  a23 = v26;
  a24 = v27;
  v79 = v24;
  v29 = v28;
  v76 = v30;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF65F0, &qword_1BC907A08);
  OUTLINED_FUNCTION_0();
  v75 = v31;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF65F8, &qword_1BC907A10);
  OUTLINED_FUNCTION_0();
  v74 = v34;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_27_10();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6600, &qword_1BC907A18);
  OUTLINED_FUNCTION_0();
  v77 = v37;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v71 - v39;
  v41 = OUTLINED_FUNCTION_8_23();
  __swift_project_boxed_opaque_existential_1(v41, v42);
  sub_1BC8BD924();
  v43 = v79;
  sub_1BC8F8C84();
  if (v43)
  {
    goto LABEL_8;
  }

  v72 = v33;
  v73 = v25;
  v79 = v29;
  v44 = v78;
  v45 = sub_1BC8F8914();
  sub_1BC7B85D4(v45, 0);
  v50 = v49;
  if (v47 == v48 >> 1)
  {
LABEL_7:
    v78 = v50;
    sub_1BC8F8624();
    swift_allocError();
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6350, &qword_1BC8FB5C0);
    *v60 = &type metadata for LRUCapacity;
    sub_1BC8F8824();
    sub_1BC8F8614();
    OUTLINED_FUNCTION_10();
    (*(v61 + 104))(v60);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v77 + 8))(v40, v36);
    v29 = v79;
LABEL_8:
    v62 = v29;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v62);
    OUTLINED_FUNCTION_23();
    return;
  }

  v71[1] = 0;
  if (v47 < (v48 >> 1))
  {
    v51 = *(v46 + v47);
    v52 = sub_1BC7B85D0(v47 + 1);
    v54 = v53;
    v56 = v55;
    swift_unknownObjectRelease();
    v50 = v52;
    if (v54 == v56 >> 1)
    {
      v57 = v51;
      if (v51)
      {
        a10 = v51;
        OUTLINED_FUNCTION_28_12();
        sub_1BC8BD978();
        OUTLINED_FUNCTION_47_9(&type metadata for LRUCapacity.SizeCodingKeys, &a14);
        v58 = v76;
        v63 = sub_1BC8F88D4();
        v64 = v77;
        v66 = v63;
        swift_unknownObjectRelease();
        v67 = OUTLINED_FUNCTION_33_13();
        v68(v67, v44);
      }

      else
      {
        a13 = 0;
        sub_1BC8BD9CC();
        OUTLINED_FUNCTION_47_9(&type metadata for LRUCapacity.CountCodingKeys, &a13);
        v58 = v76;
        a10 = v57;
        v65 = v72;
        v66 = sub_1BC8F88D4();
        swift_unknownObjectRelease();
        v69 = OUTLINED_FUNCTION_33_13();
        v70(v69, v65);
        v64 = v77;
      }

      (*(v64 + 8))(v40, v36);
      *v58 = v66;
      *(v58 + 8) = a10;
      v62 = v79;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1BC8B771C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v3);
  MEMORY[0x1BFB2A020](v2);
  return sub_1BC8F8C64();
}

void LRUCache.capacity.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t LRUCache.__allocating_init(capacity:cacheFileURL:)()
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_23_12();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_45_1();
  LRUCache.init(capacity:cacheFileURL:)(v1, v2);
  return v0;
}

uint64_t LRUCache.init(capacity:cacheFileURL:)(uint64_t *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *a1;
  v7 = *(a1 + 8);
  *(v2 + 16) = xmmword_1BC903290;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B08, &qword_1BC903E10);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v9;
  v10 = v4[13];
  v11 = v4[16];
  v14 = v4[10];
  v15 = *(v8 + 11);
  v16 = v10;
  v17 = *(v8 + 7);
  v18 = v11;
  type metadata accessor for LRUCache.Node(255, &v14);
  swift_getTupleTypeMetadata2();
  sub_1BC8F7EA4();
  *(v2 + 56) = sub_1BC8F7AD4();
  *(v2 + 64) = 0;
  *(v2 + 72) = v6;
  *(v2 + 80) = v7;
  sub_1BC805ABC(a2, v2 + qword_1EDC2B1F0);
  OUTLINED_FUNCTION_10();
  *(v2 + qword_1EDC2B1E8) = *(v12 + 72);
  return v2;
}

void LRUCache.init(from:)()
{
  OUTLINED_FUNCTION_22();
  v2 = v0;
  v17 = v3;
  OUTLINED_FUNCTION_41_12();
  type metadata accessor for LRUCache.Snapshot(0, v18);
  OUTLINED_FUNCTION_0();
  v14 = v5;
  v15 = v4;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v16 = v7;
  *(v0 + 16) = xmmword_1BC903290;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B08, &qword_1BC903E10);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = v8;
  OUTLINED_FUNCTION_41_12();
  type metadata accessor for LRUCache.Node(255, v18);
  swift_getTupleTypeMetadata2();
  sub_1BC8F7EA4();
  *(v0 + 56) = sub_1BC8F7AD4();
  *(v0 + 64) = 0;
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_1BC8F8C74();
  if (v1)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    OUTLINED_FUNCTION_5_21();
    swift_getWitnessTable();
    sub_1BC8F8AB4();
    sub_1BC8B7D90();
    v10 = v9;
    (*(v14 + 8))(v16, v15);
    swift_beginAccess();
    v11 = *(v10 + 56);
    swift_beginAccess();
    *(v2 + 56) = v11;

    *(v2 + 40) = *(v10 + 40);

    *(v2 + 48) = *(v10 + 48);

    v12 = *(v10 + 80);
    *(v2 + 72) = *(v10 + 72);
    *(v2 + 80) = v12;
    sub_1BC7EB644(v10 + qword_1EDC2B1F0, v2 + qword_1EDC2B1F0);
    v13 = *(v10 + qword_1EDC2B1E8);

    *(v2 + qword_1EDC2B1E8) = v13;
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  OUTLINED_FUNCTION_23();
}

void sub_1BC8B7D90()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v3 = *(v0 + 88);
  OUTLINED_FUNCTION_0_5();
  v81 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v97 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 80);
  OUTLINED_FUNCTION_0_5();
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v77 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v82 = &v73 - v14;
  v74 = v15;
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v73 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v86 = sub_1BC8F83F4();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_31();
  v89 = v20;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v73 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v23);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v73 - v25;
  v27 = *(v0 + 96);
  v28 = *(v0 + 112);
  v29 = *(v0 + 120);
  v30 = *(v0 + 128);
  *&v104 = v7;
  *(&v104 + 1) = v3;
  v93 = v27;
  v105 = v27;
  v92 = v28;
  v106 = v28;
  v107 = v29;
  v91 = v29;
  v90 = v30;
  v108 = v30;
  v31 = type metadata accessor for LRUCache.Snapshot(0, &v104);
  v32 = *(v31 + 80);
  v33 = v2 + *(v31 + 84);
  v34 = *v33;
  LOBYTE(v33) = v33[8];
  *&v104 = v34;
  BYTE8(v104) = v33;
  sub_1BC7EB644(v2 + v32, v26);
  v88 = LRUCache.__allocating_init(capacity:cacheFileURL:)();
  v76 = v2;
  v35 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v36 = sub_1BC8F8764();
    v78 = 0;
    v37 = 0;
    v38 = 0;
    v39 = v36 | 0x8000000000000000;
  }

  else
  {
    v40 = -1 << *(v35 + 32);
    v37 = ~v40;
    v41 = *(v35 + 64);
    v78 = v35 + 64;
    v42 = -v40;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v38 = v43 & v41;
    v39 = v35;
  }

  v95 = (v9 + 32);
  v94 = (v81 + 32);
  v75 = v37;
  v44 = (v37 + 64) >> 6;
  v80 = v9;
  v99 = (v9 + 16);
  v79 = v81 + 16;
  v84 = (v18 + 32);

  v45 = 0;
  *&v100 = v3;
  while (1)
  {
    v83 = v45;
    if ((v39 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_1BC8F8774())
    {
      sub_1BC8F8A74();
      swift_unknownObjectRelease();
      v51 = v97;
      v3 = v100;
      sub_1BC8F8A74();
      swift_unknownObjectRelease();
      v47 = v45;
      v98 = v38;
      goto LABEL_17;
    }

    v55 = 1;
    v48 = v45;
    v98 = v38;
    v3 = v100;
    v53 = TupleTypeMetadata2;
    v49 = v89;
LABEL_18:
    __swift_storeEnumTagSinglePayload(v49, v55, 1, v53);
    v56 = v85;
    (*v84)(v85, v49, v86);
    if (__swift_getEnumTagSinglePayload(v56, 1, v53) == 1)
    {
      sub_1BC7CAD38(v39);
      v60 = v76[1];

      v61 = sub_1BC8F7E64();
      v103 = v61;
      OUTLINED_FUNCTION_45_1();
      v62 = sub_1BC8F7EE4();
      v63 = v80;
      v64 = v77;
      if (v61 != v62)
      {
        v65 = (v80 + 8);
        *&v66 = v7;
        *(&v66 + 1) = v3;
        v100 = v66;
        do
        {
          OUTLINED_FUNCTION_45_1();
          v67 = sub_1BC8F7EC4();
          sub_1BC8F7E84();
          if (v67)
          {
            (*(v63 + 16))(v64, v60 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v61, v7);
          }

          else
          {
            v72 = sub_1BC8F85E4();
            if (v74 != 8)
            {
              goto LABEL_35;
            }

            *&v104 = v72;
            (*v99)(v64, &v104, v7);
            swift_unknownObjectRelease();
          }

          sub_1BC8F7F14();
          swift_beginAccess();
          v104 = v100;
          v105 = v93;
          v68 = v92;
          OUTLINED_FUNCTION_42_13();
          v106 = v68;
          v107 = v69;
          OUTLINED_FUNCTION_34_10();
          sub_1BC8F7B34();
          (*v65)(v64, v7);
          v70 = v101;
          if (v101)
          {
            swift_endAccess();
            sub_1BC82AF70(v70);
          }

          else
          {
            swift_endAccess();
          }

          OUTLINED_FUNCTION_45_1();
          v71 = sub_1BC8F7EE4();
          v61 = v103;
        }

        while (v103 != v71);
      }

      OUTLINED_FUNCTION_24();
      return;
    }

    v57 = *(v53 + 48);
    (*v99)(v96, v56, v7);
    *&v104 = v7;
    *(&v104 + 1) = v3;
    v105 = v93;
    v58 = v92;
    OUTLINED_FUNCTION_42_13();
    v106 = v58;
    v107 = v59;
    OUTLINED_FUNCTION_34_10();
    (*v95)(v82, v56, v7);
    (*v94)(v97, v56 + v57, v100);
    v102 = sub_1BC8B9F1C();
    swift_beginAccess();
    v3 = v100;
    sub_1BC8F7B24();
    sub_1BC8F7B44();
    swift_endAccess();
    v45 = v48;
    v38 = v98;
  }

  v46 = v38;
  v47 = v45;
  if (v38)
  {
LABEL_14:
    v98 = (v46 - 1) & v46;
    OUTLINED_FUNCTION_46_9();
    v50(v96);
    OUTLINED_FUNCTION_46_9();
    v51 = v97;
    v52(v97);
LABEL_17:
    v53 = TupleTypeMetadata2;
    v54 = *(TupleTypeMetadata2 + 48);
    v49 = v89;
    (*v95)();
    (*v94)((v49 + v54), v51, v3);
    v55 = 0;
    v48 = v47;
    goto LABEL_18;
  }

  v48 = v45;
  v49 = v89;
  while (1)
  {
    v47 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v47 >= v44)
    {
      v98 = 0;
      v55 = 1;
      v53 = TupleTypeMetadata2;
      goto LABEL_18;
    }

    v46 = *(v78 + 8 * v47);
    ++v48;
    if (v46)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t LRUCache.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 96);
  v11 = *(*v2 + 80);
  v12 = v6;
  v13 = *(v4 + 112);
  v14 = v5;
  type metadata accessor for LRUCache.Snapshot(0, &v11);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8F8C94();
  sub_1BC8B8804();
  __swift_mutable_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_23();
  sub_1BC8F8AC4();
  v8 = OUTLINED_FUNCTION_8_23();
  v9(v8);
  return __swift_destroy_boxed_opaque_existential_1(&v11);
}

void sub_1BC8B8804()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 96);
  v6[0] = *(*v0 + 80);
  v6[1] = v4;
  v6[2] = *(v1 + 112);
  v7 = v3;
  v5 = type metadata accessor for LRUCache.Snapshot(0, v6);
  sub_1BC8B5B4C(sub_1BC8BE6C8, v0, v2, v5);
}

void *LRUCache.deinit()
{
  if (*(v0 + 64))
  {

    sub_1BC8F8024();
  }

  sub_1BC862F74(v0 + qword_1EDC2B1F0, &qword_1EBCF5A20, &qword_1BC901BF0);
  return v0;
}

uint64_t sub_1BC8B897C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = LRUCache.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t LRUCache.count.getter()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_32_9();
  sub_1BC82F470(v3, v2);
  os_unfair_lock_unlock(v1 + 4);
  return v5;
}

void sub_1BC8B8A30(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 16);

  v6 = v4[6];
  v9[0] = v4[5];
  v8 = v4[7];
  v9[1] = v6;
  v9[2] = v8;
  v10 = v5;
  type metadata accessor for LRUCache.Node(0, v9);
  v7 = sub_1BC8F7AE4();

  *a2 = v7;
}

uint64_t LRUCache.allValues.getter()
{
  v0 = sub_1BC8F7F24();
  OUTLINED_FUNCTION_12_16(v0, v1, v2, v0);
  return v4;
}

void sub_1BC8B8B8C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BC8B8C78(a1);
  sub_1BC8F7F24();
  swift_getWitnessTable();
  v3 = sub_1BC8F7DB4();

  *a2 = v3;
}

uint64_t sub_1BC8B8C78(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v10 = sub_1BC8F7A84();
  v6 = v1[6];

  if (v6)
  {
    do
    {
      (*(v3 + 16))(v5, v6 + *(*v6 + 136), v2);
      sub_1BC8F7F24();

      sub_1BC8F7EF4();
      Strong = swift_weakLoadStrong();

      v6 = Strong;
    }

    while (Strong);
  }

  return v10;
}

uint64_t sub_1BC8B8DD8@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *a2;
  swift_beginAccess();
  v6 = v4[13];
  v7 = v4[16];
  v15 = v4[10];
  v14 = *(v5 + 11);
  v16 = v14;
  v17 = v6;
  v18 = *(v5 + 7);
  v19 = v7;
  type metadata accessor for LRUCache.Node(0, &v15);
  sub_1BC8F7B34();
  v8 = v20;
  if (v20)
  {
    swift_endAccess();
    v9 = *(*v8 + 144);
    swift_beginAccess();
    (*(*(v14 - 8) + 16))(a3, v8 + v9, v14);

    v10 = a3;
    v11 = 0;
    v12 = v14;
  }

  else
  {
    swift_endAccess();
    v12 = v14;
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t LRUCache.allKeys.getter()
{
  v0 = sub_1BC8F7F24();
  OUTLINED_FUNCTION_12_16(v0, v1, v2, v0);
  return v4;
}

uint64_t LRUCache.allKeysAndValues.getter()
{
  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_31_10();
  v0 = sub_1BC8F7B24();
  OUTLINED_FUNCTION_12_16(v0, v1, v2, v0);
  return v4;
}

uint64_t sub_1BC8B9098@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = a2;
  v2 = *a1;
  swift_beginAccess();
  v3 = v2[10];
  v4 = v2[11];
  v5 = v2[12];
  v6 = v2[13];
  v7 = v2[14];
  v8 = v2[15];
  v11 = v2[16];
  swift_getKeyPath();

  v12[0] = v3;
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v12[6] = v11;
  type metadata accessor for LRUCache.Node(0, v12);
  v9 = sub_1BC8F7B04();

  *v13 = v9;
  return result;
}

uint64_t sub_1BC8B92A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v4 = *a1;
  v5 = *a1;
  v6 = *(*a1 + 80);
  v7 = sub_1BC8F83F4();
  v47 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v41[-v9];
  v46 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41[-v11];
  swift_beginAccess();
  v13 = *(v4 + 104);
  v14 = *(v4 + 128);
  v51 = v6;
  v50 = *(v5 + 88);
  v52 = v50;
  v53 = v13;
  v48 = *(v5 + 112);
  v54 = v48;
  v55 = v14;
  type metadata accessor for LRUCache.Node(0, &v51);
  sub_1BC8F7B34();
  v15 = v56;
  if (v56)
  {
    swift_endAccess();
    sub_1BC82AC30(v15);
    v16 = *(*v15 + 144);
    swift_beginAccess();
    v17 = v15 + v16;
    v18 = v49;
    (*(*(v50 - 8) + 16))(v49, v17);

    v19 = v50;
    v20 = 0;
    v21 = v18;
  }

  else
  {
    *&v48 = a2;
    v22 = v12;
    v44 = v10;
    v45 = v7;
    v23 = v46;
    swift_endAccess();
    if (qword_1EDC1E1E8 != -1)
    {
      swift_once();
    }

    v24 = sub_1BC8F7734();
    __swift_project_value_buffer(v24, qword_1EDC2B298);
    v25 = *(v23 + 16);
    v25(v22, v48, v6);
    v26 = sub_1BC8F7714();
    v27 = sub_1BC8F8204();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v47;
    if (v28)
    {
      v30 = swift_slowAlloc();
      v43 = v30;
      *&v48 = swift_slowAlloc();
      v51 = v48;
      *v30 = 136446210;
      v31 = v22;
      v32 = v44;
      v25(v44, v31, v6);
      v42 = v27;
      v20 = 1;
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v6);
      v33 = sub_1BC8073F0(v32, v6);
      v35 = v34;
      (*(v29 + 8))(v32, v45);
      (*(v23 + 8))(v31, v6);
      v36 = sub_1BC7A9A4C(v33, v35, &v51);

      v37 = v43;
      *(v43 + 1) = v36;
      v38 = v37;
      _os_log_impl(&dword_1BC7A3000, v26, v42, "Cache miss for %{public}s", v37, 0xCu);
      v39 = v48;
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1BFB2AA50](v39, -1, -1);
      MEMORY[0x1BFB2AA50](v38, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v22, v6);
      v20 = 1;
    }

    v21 = v49;
    v19 = v50;
  }

  return __swift_storeEnumTagSinglePayload(v21, v20, 1, v19);
}

void LRUCache.addOrUpdate(_:forKey:)()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_32_9();
  sub_1BC7A9F74(v2);
  os_unfair_lock_unlock(v1 + 4);
  sub_1BC8B9F5C();
  sub_1BC8B9FB8();
}

uint64_t sub_1BC8B97DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 56);
  v7 = sub_1BC8F83F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  MEMORY[0x1EEE9AC00](v9);
  (*(v13 + 16))(&v15 - v12, a3, v6);
  (*(v8 + 16))(v11, a1, v7);
  return LRUCache.subscript.setter();
}

void (*LRUCache.subscript.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = *v1;
  v5 = sub_1BC8F83F4();
  v3[1] = v5;
  v6 = *(v5 - 8);
  v3[2] = v6;
  v7 = *(v6 + 64);
  v3[3] = __swift_coroFrameAllocStub(v7);
  v3[4] = __swift_coroFrameAllocStub(v7);
  v3[5] = *(v4 + 80);
  OUTLINED_FUNCTION_0_5();
  v9 = v8;
  v3[6] = v8;
  v11 = *(v10 + 64);
  v3[7] = __swift_coroFrameAllocStub(v11);
  v3[8] = __swift_coroFrameAllocStub(v11);
  (*(v9 + 16))();
  LRUCache.value(forKey:)();
  return sub_1BC8B9AE0;
}

void sub_1BC8B9AE0()
{
  OUTLINED_FUNCTION_29_0();
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 64);
  if (v4)
  {
    v5 = v1[5];
    v6 = v1[6];
    v8 = v1[3];
    v7 = v1[4];
    v9 = v1[1];
    v10 = v1[2];
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v2, v3, v5);
    LRUCache.subscript.setter();
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v1[3];
    v7 = v1[4];
    LRUCache.subscript.setter();
  }

  free(v3);
  free(v2);
  free(v7);
  free(v8);
  OUTLINED_FUNCTION_24();

  free(v11);
}

uint64_t sub_1BC8B9BD4(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v4 = *a1;
  v5 = *a1;
  v6 = *(*a1 + 88);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v21 = &v19 - v9;
  v10 = *(v4 + 80);
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v22 = &v19 - v11;
  swift_beginAccess();
  v12 = *(v4 + 128);
  v25[0] = v10;
  v25[1] = v6;
  v13 = *(v5 + 96);
  v23 = *(v5 + 112);
  v26 = v13;
  v27 = v23;
  v28 = v12;
  type metadata accessor for LRUCache.Node(0, v25);
  sub_1BC8F7B34();
  v14 = v30;
  if (v30)
  {
    swift_endAccess();
    v15 = *(*v14 + 144);
    swift_beginAccess();
    (*(v7 + 24))(v14 + v15, v24, v6);
    swift_endAccess();
    sub_1BC82AC30(v14);
  }

  else
  {
    swift_endAccess();
    *&v23 = *(v20 + 16);
    (v23)(v22, a2, v10);
    (*(v7 + 16))(v21, v24, v6);
    v16 = v22;
    v17 = sub_1BC8B9F1C();
    (v23)(v16, a2, v10);
    v29 = v17;
    swift_beginAccess();
    sub_1BC8F7B24();

    sub_1BC8F7B44();
    swift_endAccess();
    sub_1BC82AF70(v17);
  }
}

uint64_t sub_1BC8B9F1C()
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_23_12();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_45_1();
  sub_1BC8BAB74();
  return v0;
}

void sub_1BC8B9F5C()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_32_9();
  sub_1BC830540(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1BC8B9FB8()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_32_9();
  sub_1BC82F354(v3, v2);
  os_unfair_lock_unlock(v1 + 4);
  if (v4 == 1)
  {
    sub_1BC8B9F5C();
  }
}

uint64_t sub_1BC8BA030@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a1;
  swift_beginAccess();
  v6 = v4[13];
  v7 = v4[16];
  v13 = v4[10];
  v12 = *(v5 + 11);
  v14 = v12;
  v15 = v6;
  v16 = *(v5 + 7);
  v17 = v7;
  type metadata accessor for LRUCache.Node(255, &v13);
  sub_1BC8F7B24();
  sub_1BC8F7AC4();
  swift_endAccess();
  v8 = v18;
  if (v18)
  {
    sub_1BC82B328(v18);
    v9 = *(*v8 + 144);
    swift_beginAccess();
    (*(*(v12 - 8) + 16))(a3, v8 + v9);

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v10, 1, v12);
}

Swift::Void __swiftcall LRUCache.clear()()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_32_9();
  sub_1BC830540(v2);
  os_unfair_lock_unlock(v1 + 4);
  sub_1BC8B9F5C();
}

uint64_t sub_1BC8BA264(void *a1)
{
  v2 = *a1;
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = v3[6];
  v8[0] = v3[5];
  v7 = v3[7];
  v8[1] = v5;
  v8[2] = v7;
  v9 = v4;
  type metadata accessor for LRUCache.Node(0, v8);
  sub_1BC8F7B24();
  sub_1BC8F7B14();
  swift_endAccess();
  a1[5] = 0;

  a1[6] = 0;
}

Swift::Void __swiftcall LRUCache.saveCache()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15[-v3];
  v5 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC7EB644(v0 + qword_1EDC2B1F0, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1BC862F74(v4, &qword_1EBCF5A20, &qword_1BC901BF0);
  }

  else
  {
    (*(v7 + 32))(v10, v4, v5);
    type metadata accessor for OSTransaction();
    if (qword_1EDC1DF70 != -1)
    {
      swift_once();
    }

    v11 = sub_1BC8F76B4();
    v12 = __swift_project_value_buffer(v11, qword_1EDC2B1D0);
    MEMORY[0x1EEE9AC00](v12);
    v14[3] = v14;
    static OSTransaction.transaction(withID:with:beginInterval:endInterval:block:)("com.apple.facetimemessagestored.fileCacheSave", 45, 2, v13, "Saving asset cache to disk", 26, 2, "Finished saving asset cache to disk", 35, 2, sub_1BC8BDB48);
    (*(v7 + 8))(v10, v5);
  }
}

uint64_t sub_1BC8BA5A4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *a1;
  v7 = *(*a1 + 128);
  v8 = *(*a1 + 96);
  v50[0] = *(*a1 + 80);
  v50[1] = v8;
  v50[2] = *(v6 + 112);
  v51 = v7;
  v9 = type metadata accessor for LRUCache.Snapshot(0, v50);
  v52 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v43[-v10];
  v11 = sub_1BC8F7014();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDC1E1E8 != -1)
  {
    swift_once();
  }

  v15 = sub_1BC8F7734();
  v16 = __swift_project_value_buffer(v15, qword_1EDC2B298);
  v17 = *(v12 + 16);
  v47 = a2;
  v17(v14, a2, v11);

  v48 = v16;
  v18 = sub_1BC8F7714();
  v19 = sub_1BC8F8204();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v50[0] = v45;
    *v20 = 134349314;
    v44 = v19;
    *(v20 + 4) = LRUCache.count.getter();

    *(v20 + 12) = 2082;
    sub_1BC7C4768(&qword_1EDC20610, MEMORY[0x1E6968FE0]);
    v21 = sub_1BC8F8A54();
    v46 = v9;
    v22 = v5;
    v24 = v23;
    (*(v12 + 8))(v14, v11);
    v25 = sub_1BC7A9A4C(v21, v24, v50);
    v5 = v22;
    v3 = v2;
    v9 = v46;

    *(v20 + 14) = v25;
    _os_log_impl(&dword_1BC7A3000, v18, v44, "Saving %{public}ld cached values to %{public}s", v20, 0x16u);
    v26 = v45;
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1BFB2AA50](v26, -1, -1);
    MEMORY[0x1BFB2AA50](v20, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  sub_1BC8F6CB4();
  swift_allocObject();
  sub_1BC8F6CA4();
  v27 = v49;
  sub_1BC8B8804();
  swift_getWitnessTable();
  v28 = sub_1BC8F6C94();
  v30 = v3;
  if (v3)
  {
    (*(v52 + 8))(v27, v9);

    v33 = v3;
    v34 = sub_1BC8F7714();
    v35 = sub_1BC8F81E4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v5;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138543362;
      v39 = v30;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&dword_1BC7A3000, v34, v35, "Failed to save cache: %{public}@", v37, 0xCu);
      sub_1BC862F74(v38, &unk_1EBCF5DB0, &unk_1BC900410);
      MEMORY[0x1BFB2AA50](v38, -1, -1);
      v41 = v37;
      v5 = v36;
      MEMORY[0x1BFB2AA50](v41, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v31 = v28;
    v32 = v29;
    (*(v52 + 8))(v27, v9);

    sub_1BC8F70F4();
    sub_1BC7D4C94(v31, v32);
  }

  if (v5[8])
  {

    sub_1BC8F8024();
  }

  v5[8] = 0;
}

uint64_t sub_1BC8BAB74()
{
  OUTLINED_FUNCTION_140();
  *(v1 + *(*v1 + 152)) = 0;
  OUTLINED_FUNCTION_80();
  swift_weakInit();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_11();
  (*(v3 + 32))(v1 + v4, v2);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_11();
  (*(v5 + 32))(v1 + v6, v0);
  OUTLINED_FUNCTION_80();
  swift_weakAssign();
  OUTLINED_FUNCTION_80();
  *(v1 + *(v7 + 152)) = 0;

  return v1;
}

void sub_1BC8BACB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_22();
  v45 = v24;
  v25 = v23;
  v27 = v26;
  v28 = *v25;
  v30 = *(*v25 + 120);
  v31 = *(*v25 + 128);
  v47 = *(*v25 + 80);
  v29 = v47;
  v41 = *(v28 + 88);
  v43 = *(v28 + 104);
  v48 = v41;
  v49 = v43;
  v50 = v30;
  v51 = v31;
  v42 = v31;
  type metadata accessor for LRUCache.Node.CodingKeys(255, &v47);
  OUTLINED_FUNCTION_7_16();
  swift_getWitnessTable();
  v32 = sub_1BC8F8A24();
  OUTLINED_FUNCTION_0();
  v44 = v33;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v41 - v35;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1BC8F8CA4();
  *&v49 = v29;
  *(&v49 + 1) = v43;
  __swift_allocate_boxed_opaque_existential_1(&v47);
  OUTLINED_FUNCTION_10();
  (*(v37 + 16))();
  v46 = 0;
  sub_1BC8BE494();
  v38 = v45;
  sub_1BC8F89F4();
  if (v38)
  {
    sub_1BC8BE4E8(&v47);
    (*(v44 + 8))(v36, v32);
  }

  else
  {
    v39 = v44;
    sub_1BC8BE4E8(&v47);
    swift_beginAccess();
    *&v49 = v41;
    *(&v49 + 1) = v42;
    __swift_allocate_boxed_opaque_existential_1(&v47);
    OUTLINED_FUNCTION_10();
    (*(v40 + 16))();
    OUTLINED_FUNCTION_28_12();
    sub_1BC8F89F4();
    sub_1BC8BE4E8(&v47);
    (*(v39 + 8))(v36, v32);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC8BAFB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1954047342 && a2 == 0xE400000000000000;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1986359920 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BC8F8AA4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1BC8BB110(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = 0x65756C6176;
      break;
    case 2:
      result = 1954047342;
      break;
    case 3:
      result = 1986359920;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC8BB20C(uint64_t a1)
{
  sub_1BC8F8C04();
  sub_1BC7CF55C(v3, *v1);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8BB27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8BAFB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8BB2F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC7FCFE0();
  *a1 = result;
  return result;
}

uint64_t sub_1BC8BB330(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BC8BB384(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1BC8BB3D8()
{
  OUTLINED_FUNCTION_45_11();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_11();
  (*(v3 + 8))(v0 + v4);
  OUTLINED_FUNCTION_80();
  swift_weakDestroy();
  OUTLINED_FUNCTION_80();
  v6 = *(v5 + 152);
  v7 = *(v0 + v6);
  *(v0 + v6) = 0;

  if (v7)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      OUTLINED_FUNCTION_17_12();
      v9 = *(v7 + *(v8 + 152));
      swift_retain_n();

      v7 = v9;
    }

    while (v9);
  }

  return v0;
}

uint64_t sub_1BC8BB540(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1BC8BB5C8(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_23_12();
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

void sub_1BC8BB618()
{
  OUTLINED_FUNCTION_22();
  v47 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_40_11();
  OUTLINED_FUNCTION_0_5();
  v36 = v4;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v41 = v6;
  OUTLINED_FUNCTION_40_11();
  OUTLINED_FUNCTION_0_5();
  v40 = v7;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v43 = v9;
  OUTLINED_FUNCTION_40_11();
  v11 = *(v10 + 112);
  v46 = v12;
  v50[0] = v12;
  v50[1] = v13;
  v42 = v13;
  v39 = *(v14 + 96);
  v51 = v39;
  v52 = v11;
  v48 = v14;
  v37 = *(v14 + 120);
  v53 = v37;
  type metadata accessor for LRUCache.Node.CodingKeys(255, v50);
  OUTLINED_FUNCTION_7_16();
  swift_getWitnessTable();
  v45 = sub_1BC8F8924();
  OUTLINED_FUNCTION_0();
  v38 = v15;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  OUTLINED_FUNCTION_40_11();
  v20 = *(v19 + 152);
  *(v0 + v20) = 0;
  OUTLINED_FUNCTION_17_12();
  v22 = *(v21 + 160);
  swift_weakInit();
  v23 = v3;
  v24 = v3[3];
  v49 = v23;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v44 = v18;
  v25 = v47;
  sub_1BC8F8C84();
  if (v25)
  {
    OUTLINED_FUNCTION_17_12();

    OUTLINED_FUNCTION_17_12();
    swift_weakDestroy();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v47 = v20;
    v35 = v22;
    v27 = v40;
    v26 = v41;
    v29 = v42;
    v28 = v43;
    LOBYTE(v50[0]) = 0;
    sub_1BC8F88F4();
    OUTLINED_FUNCTION_17_12();
    v31 = *(v27 + 32);
    *&v39 = *(v30 + 136);
    v31(v0 + v39, v28, v46);
    LOBYTE(v50[0]) = 1;
    sub_1BC8F88F4();
    OUTLINED_FUNCTION_17_12();
    (*(v36 + 32))(v0 + *(v32 + 144), v26, v29);
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_18();
    *(v0 + v47) = v50[0];

    OUTLINED_FUNCTION_19_18();
    v33 = OUTLINED_FUNCTION_8_24();
    v34(v33);
    OUTLINED_FUNCTION_42_13();
    swift_weakAssign();
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC8BBAF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70614D65756C6176 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_4(0x70614D65756C6176, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_37_11();
    v8 = a1 == v6 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_0_4(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_36_12();
      v11 = a1 == v9 && a2 == v10;
      if (v11 || (OUTLINED_FUNCTION_0_4(v9, v10) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7974696361706163 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v13 = OUTLINED_FUNCTION_0_4(0x7974696361706163, 0xE800000000000000);

        if (v13)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1BC8BBBF4(char a1)
{
  result = 0x70614D65756C6176;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_37_11();
      break;
    case 2:
      result = OUTLINED_FUNCTION_36_12();
      break;
    case 3:
      result = 0x7974696361706163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC8BBC74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BC8BB59C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BC8BBD14(uint64_t a1)
{
  sub_1BC8F8C04();
  sub_1BC7CF55C(v3, *v1);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8BBD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8BBAF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8BBD98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BC8BBDEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1BC8BBE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, __int128 a10, uint64_t a11)
{
  v13 = *a4;
  v14 = *(a4 + 8);
  *a9 = a1;
  a9[1] = a2;
  v18[0] = a5;
  v18[1] = a6;
  v18[2] = a7;
  v18[3] = a8;
  v19 = a10;
  v20 = a11;
  v15 = type metadata accessor for LRUCache.Snapshot(0, v18);
  result = sub_1BC805ABC(a3, a9 + *(v15 + 80));
  v17 = a9 + *(v15 + 84);
  *v17 = v13;
  v17[8] = v14;
  return result;
}

void sub_1BC8BBED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_22();
  v77 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v68 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v42 = OUTLINED_FUNCTION_25(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_31();
  v66 = v43;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v64 - v45;
  v70 = v37;
  v71 = v33;
  v82 = v37;
  v83 = v35;
  v72 = v35;
  v73 = v27;
  v84 = v33;
  v85 = v31;
  v69 = v31;
  v74 = v29;
  v86 = v29;
  v87 = v27;
  v67 = v25;
  v88 = v25;
  type metadata accessor for LRUCache.Snapshot.CodingKeys(255, &v82);
  OUTLINED_FUNCTION_6_19();
  swift_getWitnessTable();
  v75 = sub_1BC8F8924();
  OUTLINED_FUNCTION_0();
  v48 = v47;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_27_10();
  v78 = v39;
  v50 = OUTLINED_FUNCTION_8_23();
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v76 = v37;
  v52 = v77;
  sub_1BC8F8C84();
  if (!v52)
  {
    v53 = v48;
    v77 = v46;
    v54 = v70;
    sub_1BC8F7B24();
    v55 = v71;
    v80 = v71;
    v81 = v73;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_43_10();
    OUTLINED_FUNCTION_9_15();
    sub_1BC8F88F4();
    v56 = v54;
    v57 = v82;
    sub_1BC8F7F24();
    OUTLINED_FUNCTION_28_12();
    v79 = v55;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_43_10();
    OUTLINED_FUNCTION_9_15();
    sub_1BC8F88F4();
    v65 = v57;
    v58 = v82;
    sub_1BC8BE440();
    sub_1BC8F88F4();
    v64 = v82;
    v59 = v83;
    sub_1BC8F7014();
    LOBYTE(v82) = 2;
    sub_1BC7C4768(&unk_1EDC20FF0, MEMORY[0x1E6968FD0]);
    v60 = v77;
    OUTLINED_FUNCTION_9_15();
    sub_1BC8F8864();
    (*(v53 + 8))(v76, v75);
    v61 = v66;
    sub_1BC805ABC(v60, v66);
    OUTLINED_FUNCTION_42_13();
    v82 = v62;
    LOBYTE(v83) = v59;
    *(&v63 + 1) = v73;
    *&v63 = v74;
    sub_1BC8BBE40(v65, v58, v61, &v82, v56, v72, v55, v69, v68, v63, v67);
  }

  __swift_destroy_boxed_opaque_existential_1(v78);
  OUTLINED_FUNCTION_23();
}

void sub_1BC8BC2DC()
{
  OUTLINED_FUNCTION_22();
  v27 = v1;
  v28 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  v22 = *(v2 + 40);
  v25 = *(v2 + 64);
  v32 = v6;
  v24 = *(v2 + 24);
  v33 = v24;
  v34 = v22;
  v23 = *(v2 + 48);
  v35 = v23;
  v36 = v25;
  type metadata accessor for LRUCache.Snapshot.CodingKeys(255, &v32);
  OUTLINED_FUNCTION_6_19();
  swift_getWitnessTable();
  v7 = sub_1BC8F8A24();
  OUTLINED_FUNCTION_0();
  v26 = v8;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v12 = v22;
  sub_1BC8F8CA4();
  v13 = *v28;
  v34 = sub_1BC8F7B24();
  v30 = v12;
  v31 = v25;
  *&v35 = swift_getWitnessTable();
  v32 = v13;
  sub_1BC8BE494();

  OUTLINED_FUNCTION_26_10();
  v14 = v27;
  sub_1BC8F89F4();
  if (v14)
  {
    sub_1BC8BE4E8(&v32);
    v15 = OUTLINED_FUNCTION_33_13();
    v16(v15, v7);
  }

  else
  {
    v17 = v26;
    sub_1BC8BE4E8(&v32);
    v18 = v28[1];
    v34 = sub_1BC8F7F24();
    v29 = v12;
    *&v35 = swift_getWitnessTable();
    v32 = v18;
    OUTLINED_FUNCTION_28_12();

    OUTLINED_FUNCTION_26_10();
    sub_1BC8F89F4();
    sub_1BC8BE4E8(&v32);
    v19 = v28 + *(v3 + 84);
    v20 = *v19;
    LOBYTE(v19) = v19[8];
    v32 = v20;
    LOBYTE(v33) = v19;
    sub_1BC8BE518();
    OUTLINED_FUNCTION_26_10();
    sub_1BC8F89F4();
    LOBYTE(v32) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
    sub_1BC8BE56C();
    sub_1BC8F89F4();
    (*(v17 + 8))(v11, v7);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC8BC65C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v20 - v5;
  swift_beginAccess();
  v26 = v3[10];
  v6 = v26;
  v27 = v3[11];
  v7 = v27;
  v8 = v3[12];
  v28 = v8;
  v23 = v8;
  v21 = v3[13];
  v29 = v21;
  v30 = v3[14];
  v9 = v30;
  v31 = v3[15];
  v10 = v31;
  v32 = v3[16];
  v11 = v32;
  swift_getKeyPath();

  v33 = v6;
  v34 = v7;
  v35 = v8;
  v12 = v21;
  v36 = v21;
  v37 = v9;
  v38 = v10;
  v39 = v11;
  type metadata accessor for LRUCache.Node(0, &v33);
  v13 = v25;
  v22 = sub_1BC8F7B04();
  v25 = v13;

  v15 = sub_1BC8BC91C(v14);
  v16 = v24;
  sub_1BC7EB644(a1 + qword_1EDC2B1F0, v24);
  v17 = *(a1 + 80);
  v33 = *(a1 + 72);
  LOBYTE(v34) = v17;
  *(&v19 + 1) = v10;
  *&v19 = v9;
  return sub_1BC8BBE40(v22, v15, v16, &v33, v6, v7, v23, v12, v40, v19, v11);
}

uint64_t sub_1BC8BC8C0(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

uint64_t sub_1BC8BC91C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - v4;
  v11 = sub_1BC8F7A84();
  v6 = v1[5];
  v7 = (v3 + 16);

  if (v6)
  {
    do
    {
      (*v7)(v5, v6 + *(*v6 + 136), v2);
      sub_1BC8F7F24();
      sub_1BC8F7EF4();
      v8 = *(v6 + *(*v6 + 152));

      v6 = v8;
    }

    while (v8);
  }

  return v11;
}

void sub_1BC8BCA6C(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v61 = a2;
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(v5 - 8);
  v60 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v58 - v7;
  v9 = sub_1BC8F7EA4();
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v63 = v2;
  *&v62 = v10;
  if ((v11 & 1) == 0)
  {
    swift_beginAccess();
    v59 = *(a1 + 56);
    v39 = v4[11];
    v40 = v4[12];
    v41 = v4[13];
    v69 = v4[14];
    v43 = v4[15];
    v42 = v4[16];

    *&v73 = v5;
    *(&v73 + 1) = v39;
    v67 = v40;
    v68 = v39;
    *&v74 = v40;
    *(&v74 + 1) = v41;
    v66 = v41;
    v75 = v69;
    v76 = v43;
    v65 = v43;
    v64 = v42;
    v77 = v42;
    type metadata accessor for LRUCache.Node(0, &v73);
    v44 = sub_1BC8F7AE4();

    if (!__OFSUB__(v44, v62))
    {
      if (v44 - v62 >= 1)
      {

        *&v70 = sub_1BC8BC91C(v45);
        sub_1BC8F7F24();
        swift_getWitnessTable();
        v46 = sub_1BC8F8164();
        v62 = v73;
        v70 = v73;
        v71 = v74;
        MEMORY[0x1EEE9AC00](v46);
        v28 = &v58 - 10;
        v48 = v67;
        v47 = v68;
        *(&v58 - 8) = v5;
        *(&v58 - 7) = v47;
        v49 = v66;
        *(&v58 - 6) = v48;
        *(&v58 - 5) = v49;
        v50 = v65;
        *(&v58 - 4) = v69;
        *(&v58 - 3) = v50;
        *(&v58 - 2) = v64;
        v33 = sub_1BC8F84A4();
        WitnessTable = swift_getWitnessTable();
        v36 = MEMORY[0x1E69E73E0];
        v37 = MEMORY[0x1E69E7410];
        v38 = sub_1BC8BEB2C;
        goto LABEL_16;
      }

LABEL_17:
      v52 = v63;
      goto LABEL_18;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  swift_beginAccess();
  v59 = *(a1 + 56);
  v12 = v4[11];
  v13 = v4[12];
  v14 = v4[13];
  v69 = v4[14];
  v16 = v4[15];
  v15 = v4[16];

  *&v73 = v5;
  *(&v73 + 1) = v12;
  v67 = v13;
  v68 = v12;
  *&v74 = v13;
  *(&v74 + 1) = v14;
  v66 = v14;
  v75 = v69;
  v76 = v16;
  v65 = v16;
  v64 = v15;
  v77 = v15;
  type metadata accessor for LRUCache.Node(0, &v73);
  v17 = sub_1BC8F7AE4();

  v18 = *(a1 + qword_1EDC2B1E8);
  v19 = v17 * v18;
  if ((v17 * v18) >> 64 != (v17 * v18) >> 63)
  {
    __break(1u);
    goto LABEL_29;
  }

  v20 = v62;
  if (v62 >= v19)
  {
    goto LABEL_17;
  }

  v22 = v19 - v20;
  if (__OFSUB__(v19, v20))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v23 = __OFADD__(v22, v18);
  v24 = v22 + v18;
  if (v23)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v23 = __OFSUB__(v24, 1);
  v25 = v24 - 1;
  if (v23)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v25 == 0x8000000000000000 && v18 == -1)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  *&v70 = sub_1BC8BC91C(v21);
  sub_1BC8F7F24();
  swift_getWitnessTable();
  v27 = sub_1BC8F8164();
  v62 = v73;
  v70 = v73;
  v71 = v74;
  MEMORY[0x1EEE9AC00](v27);
  v28 = &v58 - 10;
  v30 = v67;
  v29 = v68;
  *(&v58 - 8) = v5;
  *(&v58 - 7) = v29;
  v31 = v66;
  *(&v58 - 6) = v30;
  *(&v58 - 5) = v31;
  v32 = v65;
  *(&v58 - 4) = v69;
  *(&v58 - 3) = v32;
  *(&v58 - 2) = v64;
  v33 = sub_1BC8F84A4();
  WitnessTable = swift_getWitnessTable();
  v36 = MEMORY[0x1E69E73E0];
  v37 = MEMORY[0x1E69E7410];
  v38 = sub_1BC8BE640;
LABEL_16:
  v51 = v63;
  v9 = sub_1BC7E8FA4(v38, v28, v33, v5, v36, WitnessTable, v37, v35);
  v52 = v51;
  swift_unknownObjectRelease();
LABEL_18:
  v63 = v52;

  v53 = sub_1BC8F7E64();
  v78 = v53;
  if (v53 != sub_1BC8F7EE4())
  {
    do
    {
      v55 = sub_1BC8F7EC4();
      sub_1BC8F7E84();
      if (v55)
      {
        (*(v6 + 16))(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v53, v5);
      }

      else
      {
        v57 = sub_1BC8F85E4();
        if (v60 != 8)
        {
          goto LABEL_35;
        }

        *&v73 = v57;
        (*(v6 + 16))(v8, &v73, v5);
        swift_unknownObjectRelease();
      }

      sub_1BC8F7F14();
      swift_beginAccess();
      *&v73 = v5;
      *(&v73 + 1) = v68;
      *&v74 = v67;
      *(&v74 + 1) = v66;
      v75 = v69;
      v76 = v65;
      v77 = v64;
      type metadata accessor for LRUCache.Node(255, &v73);
      sub_1BC8F7B24();
      sub_1BC8F7AC4();
      (*(v6 + 8))(v8, v5);
      swift_endAccess();
      if (v72)
      {
        sub_1BC82B328(v72);
      }

      v56 = sub_1BC8F7EE4();
      v53 = v78;
    }

    while (v78 != v56);
  }

  v54 = sub_1BC8F7EE4();

  *v61 = v54 > 0;
}

uint64_t sub_1BC8BD19C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  sub_1BC7EB644(a1 + qword_1EDC2B1F0, v14 - v6);
  v8 = sub_1BC8F7014();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  result = sub_1BC862F74(v7, &qword_1EBCF5A20, &qword_1BC901BF0);
  if (EnumTagSinglePayload != 1 && !*(a1 + 64))
  {
    v11 = sub_1BC8F7FC4();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a1;

    sub_1BC8333D4();
    *(a1 + 64) = v13;
  }

  return result;
}

uint64_t sub_1BC8BD34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1BC8F86F4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8BD40C, 0, 0);
}

uint64_t sub_1BC8BD40C()
{
  sub_1BC8F8B74();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1BC8BD4D8;

  return sub_1BC82D814();
}

uint64_t sub_1BC8BD4D8()
{
  v2 = *v1;

  v3 = v2[5];
  v4 = v2[4];
  v5 = v2[3];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1BC8BEB50;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1BC8BD670;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BC8BD670()
{
  LRUCache.saveCache()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BC8BD744(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8F8C94();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1BC8BD6DC(v3);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

void sub_1BC8BD880(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

unint64_t sub_1BC8BD924()
{
  result = qword_1EDC1F248;
  if (!qword_1EDC1F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F248);
  }

  return result;
}

unint64_t sub_1BC8BD978()
{
  result = qword_1EDC1F230;
  if (!qword_1EDC1F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F230);
  }

  return result;
}

unint64_t sub_1BC8BD9CC()
{
  result = qword_1EBCF65E8;
  if (!qword_1EBCF65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF65E8);
  }

  return result;
}

uint64_t sub_1BC8BDA70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BC8B8C78(a1);
  *a2 = result;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_1BC8BDB68()
{
  result = qword_1EBCF6608;
  if (!qword_1EBCF6608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6608);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LRUCapacity(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}