Swift::Void __swiftcall DismissalSyncCache.retireIfNecessary()()
{
  v1 = sub_1DA9407F4();
  v11 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DA940854();
  v4 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 56);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1DA8CC4BC;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_14_1;
  v8 = _Block_copy(aBlock);

  sub_1DA940824();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v6, v3, v8);
  _Block_release(v8);
  (*(v11 + 8))(v3, v1);
  (*(v4 + 8))(v6, v10);
}

void sub_1DA8C9090(uint64_t a1)
{
  v1 = sub_1DA93FAF4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v53 = &v45 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v45 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    v46 = v9;
    v10 = *(v9 + 64);
    v11 = v10 + 64;
    v12 = 1 << *(v10 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v10 + 64);
    v15 = (v12 + 63) >> 6;
    v49 = (v2 + 8);
    v50 = (v2 + 16);
    v48 = v10;

    v16 = 0;
    v51 = v1;
    v47 = v11;
    while (v14)
    {
LABEL_11:
      v18 = *(*(v48 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v14)))));
      v20 = *(v18 + 5);
      v19 = *(v18 + 6);
      __swift_project_boxed_opaque_existential_1(v18 + 2, v20);
      v21 = *(v19 + 8);

      v21(v20, v19);
      v22 = OBJC_IVAR____TtC21UserNotificationsCoreP33_899DEA740530C892F681B05D190FCFD825DismissalSyncCacheSection_nextAutoRetireDate;
      swift_beginAccess();
      v23 = v51;
      v24 = v53;
      (*v50)(v53, &v18[v22], v51);
      LOBYTE(v22) = sub_1DA93FA64();
      v25 = *v49;
      (*v49)(v24, v23);
      if (v22)
      {
        sub_1DA8CB420();
      }

      v14 &= v14 - 1;

      v25(v54, v23);
      v11 = v47;
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v17 >= v15)
      {
        break;
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_11;
      }
    }

    v26 = v46;
    swift_beginAccess();
    v27 = *(v26 + 72);
    v30 = *(v27 + 64);
    v29 = v27 + 64;
    v28 = v30;
    v31 = 1 << *(*(v26 + 72) + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & v28;
    v34 = (v31 + 63) >> 6;
    v54 = *(v26 + 72);

    v35 = 0;
    v48 = v29;
    while (v33)
    {
LABEL_22:
      v37 = *(*(v54 + 7) + ((v35 << 9) | (8 * __clz(__rbit64(v33)))));
      v38 = *(v37 + 5);
      v39 = *(v37 + 6);
      __swift_project_boxed_opaque_existential_1(v37 + 2, v38);
      v40 = *(v39 + 8);

      v40(v38, v39);
      v41 = OBJC_IVAR____TtC21UserNotificationsCoreP33_899DEA740530C892F681B05D190FCFD825DismissalSyncCacheSection_nextAutoRetireDate;
      swift_beginAccess();
      v42 = v51;
      v43 = v53;
      (*v50)(v53, &v37[v41], v51);
      LOBYTE(v41) = sub_1DA93FA64();
      v44 = *v49;
      (*v49)(v43, v42);
      if (v41)
      {
        sub_1DA8CB420();
      }

      v33 &= v33 - 1;

      v44(v52, v42);
      v29 = v48;
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v34)
      {

        return;
      }

      v33 = *(v29 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        goto LABEL_22;
      }
    }

LABEL_27:
    __break(1u);
  }
}

uint64_t DismissalSyncCache.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t DismissalSyncCache.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8C95EC(void *a1)
{
  v2 = v1;
  v148 = type metadata accessor for SyncDismissalHashEntry(0);
  v151 = *(v148 - 8);
  v4 = MEMORY[0x1EEE9AC00](v148);
  v156 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v155 = &v134 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v144 = &v134 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v141 = &v134 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v143 = (&v134 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v153 = &v134 - v14;
  v139 = type metadata accessor for DismissalSyncItem(0);
  v163 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v161 = (&v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = type metadata accessor for SyncDismissalIDEntry(0);
  v152 = *(v149 - 8);
  v16 = MEMORY[0x1EEE9AC00](v149);
  v160 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v157 = &v134 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v146 = &v134 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v142 = &v134 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v145 = (&v134 - v24);
  v25 = sub_1DA93FAF4();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v138 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v134 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v134 - v32;
  v162 = a1[1];
  v154 = a1[3];
  v34 = a1[5];
  v35 = a1[6];
  v36 = a1[7];
  if (!v34)
  {
    v34 = 15871;
  }

  v164 = v34;
  v37 = *(v2 + 5);
  v38 = *(v2 + 6);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v37);
  (*(v38 + 8))(v37, v38);
  v158 = v33;
  sub_1DA93FA34();
  v140 = v26;
  v41 = *(v26 + 8);
  v40 = v26 + 8;
  v39 = v41;
  v137 = v31;
  v159 = v25;
  (v41)(v31, v25);
  if (qword_1ECBD47D0 != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v135 = v39;
    v136 = v40;
    v42 = sub_1DA9405A4();
    __swift_project_value_buffer(v42, qword_1ECBE3DE8);

    v39 = sub_1DA940584();
    v43 = sub_1DA940EF4();

    v44 = v36;
    v40 = v35;
    if (os_log_type_enabled(v39, v43))
    {
      v36 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v167 = v35;
      *v36 = 136446466;
      v45 = MEMORY[0x1E1271CD0](v40, MEMORY[0x1E69E6158]);
      v47 = sub_1DA7AE6E8(v45, v46, &v167);

      *(v36 + 4) = v47;
      *(v36 + 12) = 2082;
      v48 = MEMORY[0x1E1271CD0](v44, v139);
      v50 = sub_1DA7AE6E8(v48, v49, &v167);

      *(v36 + 14) = v50;
      _os_log_impl(&dword_1DA7A9000, v39, v43, "Adding message ids %{public}s and items %{public}s to dismissal cache", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v35, -1, -1);
      MEMORY[0x1E12739F0](v36, -1, -1);
    }

    v51 = *(v40 + 16);
    v154 = v44;
    v162 = v51;
    if (!v51)
    {
      break;
    }

    swift_beginAccess();
    v52 = 0;
    v147 = (v140 + 16);
    v53 = (v40 + 40);
    v150 = v40;
    while (v52 < *(v40 + 16))
    {
      v35 = *(v53 - 1);
      v36 = *v53;
      v55 = HIBYTE(*v53) & 0xF;
      if ((*v53 & 0x2000000000000000) == 0)
      {
        v55 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (!v55)
      {
        goto LABEL_11;
      }

      v56 = *(v2 + 7);
      v40 = *(v56 + 16);

      if (v40)
      {

        v57 = sub_1DA85A4B4(v35, v36);
        if (v58)
        {
          v40 = *(v152 + 72);
          v59 = v142;
          sub_1DA8CC7A8(*(v56 + 56) + v40 * v57, v142, type metadata accessor for SyncDismissalIDEntry);

          v60 = v145;
          sub_1DA8CC810(v59, v145, type metadata accessor for SyncDismissalIDEntry);
          *v60 |= v164;
          swift_beginAccess();
          sub_1DA8CC7A8(v60, v146, type metadata accessor for SyncDismissalIDEntry);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v166 = *(v2 + 7);
          v39 = v166;
          *(v2 + 7) = 0x8000000000000000;
          v63 = sub_1DA85A4B4(v35, v36);
          isa = v39[2].isa;
          v65 = (v62 & 1) == 0;
          v66 = isa + v65;
          if (__OFADD__(isa, v65))
          {
            goto LABEL_84;
          }

          v67 = v62;
          if (v39[3].isa >= v66)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v44 = v154;
              if ((v62 & 1) == 0)
              {
                goto LABEL_38;
              }
            }

            else
            {
              sub_1DA862230();
              v44 = v154;
              if ((v67 & 1) == 0)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
            sub_1DA85ED08(v66, isUniquelyReferenced_nonNull_native);
            v68 = sub_1DA85A4B4(v35, v36);
            if ((v67 & 1) != (v69 & 1))
            {
              goto LABEL_89;
            }

            v63 = v68;
            v44 = v154;
            if ((v67 & 1) == 0)
            {
LABEL_38:
              v39 = v166;
              v166[(v63 >> 6) + 8].isa = (v166[(v63 >> 6) + 8].isa | (1 << v63));
              v84 = (v39[6].isa + 16 * v63);
              *v84 = v35;
              v84[1] = v36;
              sub_1DA8CC810(v146, v39[7].isa + v63 * v40, type metadata accessor for SyncDismissalIDEntry);
              v85 = v39[2].isa;
              v76 = __OFADD__(v85, 1);
              v86 = (v85 + 1);
              if (v76)
              {
                goto LABEL_86;
              }

              v39[2].isa = v86;
              goto LABEL_40;
            }
          }

          v39 = v166;
          sub_1DA8CC8D8(v146, v166[7].isa + v63 * v40, type metadata accessor for SyncDismissalIDEntry);
LABEL_40:
          *(v2 + 7) = v39;

          swift_endAccess();
          v54 = v145;
          v40 = v150;
          goto LABEL_10;
        }
      }

      v70 = v157;
      (*v147)(&v157[*(v149 + 24)], v158, v159);
      *v70 = v164;
      v70[1] = v35;
      v70[2] = v36;
      swift_beginAccess();
      sub_1DA8CC7A8(v70, v160, type metadata accessor for SyncDismissalIDEntry);
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v166 = *(v2 + 7);
      v39 = v166;
      *(v2 + 7) = 0x8000000000000000;
      v72 = sub_1DA85A4B4(v35, v36);
      v74 = v39[2].isa;
      v75 = (v73 & 1) == 0;
      v76 = __OFADD__(v74, v75);
      v77 = v74 + v75;
      if (v76)
      {
        goto LABEL_80;
      }

      v78 = v73;
      if (v39[3].isa < v77)
      {
        sub_1DA85ED08(v77, v71);
        v72 = sub_1DA85A4B4(v35, v36);
        v40 = v150;
        if ((v78 & 1) != (v79 & 1))
        {
LABEL_89:
          result = sub_1DA9416E4();
          __break(1u);
          return result;
        }

LABEL_29:
        v39 = v166;
        if ((v78 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      v40 = v150;
      if (v71)
      {
        goto LABEL_29;
      }

      v83 = v72;
      sub_1DA862230();
      v72 = v83;
      v40 = v150;
      v39 = v166;
      if ((v78 & 1) == 0)
      {
LABEL_30:
        v39[(v72 >> 6) + 8].isa = (v39[(v72 >> 6) + 8].isa | (1 << v72));
        v80 = (v39[6].isa + 16 * v72);
        *v80 = v35;
        v80[1] = v36;
        sub_1DA8CC810(v160, v39[7].isa + *(v152 + 72) * v72, type metadata accessor for SyncDismissalIDEntry);
        v81 = v39[2].isa;
        v76 = __OFADD__(v81, 1);
        v82 = (v81 + 1);
        if (v76)
        {
          goto LABEL_82;
        }

        v39[2].isa = v82;

        goto LABEL_9;
      }

LABEL_8:
      sub_1DA8CC8D8(v160, v39[7].isa + *(v152 + 72) * v72, type metadata accessor for SyncDismissalIDEntry);
LABEL_9:
      *(v2 + 7) = v39;

      swift_endAccess();
      v54 = v157;
LABEL_10:
      sub_1DA8CC878(v54, type metadata accessor for SyncDismissalIDEntry);
LABEL_11:
      ++v52;
      v53 += 2;
      if (v162 == v52)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
  }

LABEL_41:
  v87 = v153;
  if (*(v44 + 16))
  {
    v88 = *(v44 + 16);
    v162 = *(v139 + 20);
    v160 = v44 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
    swift_beginAccess();
    v40 = 0;
    v157 = (v140 + 16);
    while (1)
    {
      if (v40 >= *(v44 + 16))
      {
        goto LABEL_79;
      }

      v39 = v161;
      sub_1DA8CC7A8(v160 + *(v163 + 72) * v40, v161, type metadata accessor for DismissalSyncItem);
      v36 = v39->isa;
      v35 = v39[1].isa;
      sub_1DA84A0CC(v39 + v162, v87, &unk_1ECBD6530, &unk_1DA958820);
      v89 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v89 = v36 & 0xFFFFFFFFFFFFLL;
      }

      if (v89)
      {
        break;
      }

      sub_1DA7BA120(v87, &unk_1ECBD6530, &unk_1DA958820);

LABEL_44:
      if (v88 == ++v40)
      {
        goto LABEL_75;
      }
    }

    v90 = *(v2 + 8);
    if (*(v90 + 16))
    {

      v91 = sub_1DA85A4B4(v36, v35);
      if (v92)
      {
        v93 = *(v151 + 72);
        v94 = v141;
        sub_1DA8CC7A8(*(v90 + 56) + v93 * v91, v141, type metadata accessor for SyncDismissalHashEntry);

        v95 = v143;
        sub_1DA8CC810(v94, v143, type metadata accessor for SyncDismissalHashEntry);
        *v95 |= v164;
        swift_beginAccess();
        sub_1DA8CC7A8(v95, v144, type metadata accessor for SyncDismissalHashEntry);
        v96 = swift_isUniquelyReferenced_nonNull_native();
        v165 = *(v2 + 8);
        v39 = v165;
        *(v2 + 8) = 0x8000000000000000;
        v97 = sub_1DA85A4B4(v36, v35);
        v99 = v39[2].isa;
        v100 = (v98 & 1) == 0;
        v76 = __OFADD__(v99, v100);
        v101 = v99 + v100;
        if (v76)
        {
          goto LABEL_85;
        }

        v102 = v98;
        if (v39[3].isa >= v101)
        {
          if ((v96 & 1) == 0)
          {
            v120 = v97;
            sub_1DA861FA0();
            v97 = v120;
            v44 = v154;
            if (v102)
            {
              goto LABEL_65;
            }

            goto LABEL_71;
          }
        }

        else
        {
          sub_1DA85E98C(v101, v96);
          v97 = sub_1DA85A4B4(v36, v35);
          if ((v102 & 1) != (v103 & 1))
          {
            goto LABEL_89;
          }
        }

        v44 = v154;
        if (v102)
        {
LABEL_65:
          v36 = v97;

          v39 = v165;
          sub_1DA8CC8D8(v144, v165[7].isa + v36 * v93, type metadata accessor for SyncDismissalHashEntry);
LABEL_73:
          *(v2 + 8) = v39;

          swift_endAccess();
          v119 = v143;
          goto LABEL_74;
        }

LABEL_71:
        v39 = v165;
        v165[(v97 >> 6) + 8].isa = (v165[(v97 >> 6) + 8].isa | (1 << v97));
        v121 = (v39[6].isa + 16 * v97);
        *v121 = v36;
        v121[1] = v35;
        sub_1DA8CC810(v144, v39[7].isa + v97 * v93, type metadata accessor for SyncDismissalHashEntry);
        v122 = v39[2].isa;
        v76 = __OFADD__(v122, 1);
        v123 = (v122 + 1);
        if (v76)
        {
          goto LABEL_87;
        }

        v39[2].isa = v123;
        goto LABEL_73;
      }
    }

    v104 = v148;
    v105 = v155;
    sub_1DA825D4C(v87, &v155[*(v148 + 24)]);
    (*v157)(v105 + *(v104 + 28), v158, v159);
    *v105 = v164;
    v105[1] = v36;
    v105[2] = v35;
    swift_beginAccess();
    sub_1DA8CC7A8(v105, v156, type metadata accessor for SyncDismissalHashEntry);

    v106 = swift_isUniquelyReferenced_nonNull_native();
    v165 = *(v2 + 8);
    v39 = v165;
    *(v2 + 8) = 0x8000000000000000;
    v107 = sub_1DA85A4B4(v36, v35);
    v109 = v39[2].isa;
    v110 = (v108 & 1) == 0;
    v76 = __OFADD__(v109, v110);
    v111 = v109 + v110;
    if (v76)
    {
      goto LABEL_81;
    }

    v112 = v108;
    if (v39[3].isa >= v111)
    {
      if ((v106 & 1) == 0)
      {
        v115 = v107;
        sub_1DA861FA0();
        v107 = v115;
        v44 = v154;
        if (v112)
        {
          goto LABEL_62;
        }

        goto LABEL_67;
      }
    }

    else
    {
      sub_1DA85E98C(v111, v106);
      v107 = sub_1DA85A4B4(v36, v35);
      if ((v112 & 1) != (v113 & 1))
      {
        goto LABEL_89;
      }
    }

    v44 = v154;
    if (v112)
    {
LABEL_62:
      v114 = v107;

      v39 = v165;
      sub_1DA8CC8D8(v156, v165[7].isa + *(v151 + 72) * v114, type metadata accessor for SyncDismissalHashEntry);
LABEL_69:
      *(v2 + 8) = v39;

      swift_endAccess();
      v119 = v155;
LABEL_74:
      sub_1DA8CC878(v119, type metadata accessor for SyncDismissalHashEntry);
      v87 = v153;
      sub_1DA7BA120(v153, &unk_1ECBD6530, &unk_1DA958820);
      goto LABEL_44;
    }

LABEL_67:
    v39 = v165;
    v165[(v107 >> 6) + 8].isa = (v165[(v107 >> 6) + 8].isa | (1 << v107));
    v116 = (v39[6].isa + 16 * v107);
    *v116 = v36;
    v116[1] = v35;
    sub_1DA8CC810(v156, v39[7].isa + *(v151 + 72) * v107, type metadata accessor for SyncDismissalHashEntry);
    v117 = v39[2].isa;
    v76 = __OFADD__(v117, 1);
    v118 = (v117 + 1);
    if (v76)
    {
      goto LABEL_83;
    }

    v39[2].isa = v118;
    goto LABEL_69;
  }

LABEL_75:
  v124 = *(v2 + 5);
  v125 = *(v2 + 6);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v124);
  v126 = v138;
  (*(v125 + 8))(v124, v125);
  v127 = OBJC_IVAR____TtC21UserNotificationsCoreP33_899DEA740530C892F681B05D190FCFD825DismissalSyncCacheSection_nextAutoRetireDate;
  swift_beginAccess();
  v128 = v137;
  v129 = v159;
  (*(v140 + 16))(v137, &v2[v127], v159);
  LOBYTE(v127) = sub_1DA93FA64();
  v130 = v128;
  v131 = v135;
  (v135)(v130, v129);
  if (v127)
  {
    sub_1DA8CB420();
  }

  v132 = v159;
  (v131)(v126, v159);
  return (v131)(v158, v132);
}

uint64_t sub_1DA8CA7D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v61 = a2;
  v5 = type metadata accessor for SyncDismissalHashEntry(0);
  v57 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = (&v54 - v9);
  v10 = type metadata accessor for SyncDismissalIDEntry(0);
  v55 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = (&v54 - v14);
  v15 = sub_1DA93FAF4();
  v59 = *(v15 - 8);
  v60 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v3[5];
  v19 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v18);
  v20 = v17;
  (*(v19 + 8))(v18, v19);
  v21 = *(a1 + 56);
  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = *(a1 + 48);
  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
LABEL_12:
    v35 = DismissalSyncBulletin.dismissalHash.getter();
    v37 = v36;
    swift_beginAccess();
    v38 = v3[8];
    v25 = v20;
    if (*(v38 + 16))
    {

      v39 = sub_1DA85A4B4(v35, v37);
      if (v40)
      {
        sub_1DA8CC7A8(*(v38 + 56) + *(v57 + 72) * v39, v8, type metadata accessor for SyncDismissalHashEntry);

        v28 = v58;
        sub_1DA8CC810(v8, v58, type metadata accessor for SyncDismissalHashEntry);
        if ((sub_1DA93FA64() & 1) != 0 && DismissalSyncBulletin.withinDismissableWindow(_:)(v28 + *(v5 + 24)))
        {
          if (qword_1ECBD47D0 != -1)
          {
            swift_once();
          }

          v41 = sub_1DA9405A4();
          __swift_project_value_buffer(v41, qword_1ECBE3DE8);

          v42 = sub_1DA940584();
          v43 = sub_1DA940EF4();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = v25;
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v62 = v46;
            *v45 = 136446210;
            v47 = sub_1DA7AE6E8(v35, v37, &v62);

            *(v45 + 4) = v47;
            _os_log_impl(&dword_1DA7A9000, v42, v43, "Found hash entry for %{public}s in dismissal cache", v45, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v46);
            MEMORY[0x1E12739F0](v46, -1, -1);
            MEMORY[0x1E12739F0](v45, -1, -1);

            (*(v59 + 8))(v44, v60);
          }

          else
          {

            (*(v59 + 8))(v25, v60);
          }

          v50 = *v28;
          v53 = type metadata accessor for SyncDismissalHashEntry;
          goto LABEL_32;
        }

        v48 = type metadata accessor for SyncDismissalHashEntry;
        goto LABEL_25;
      }
    }

    goto LABEL_21;
  }

  swift_beginAccess();
  v24 = v3[7];
  v25 = v20;
  if (*(v24 + 16))
  {

    v26 = sub_1DA85A4B4(v22, v21);
    if (v27)
    {
      sub_1DA8CC7A8(*(v24 + 56) + *(v55 + 72) * v26, v13, type metadata accessor for SyncDismissalIDEntry);

      v28 = v56;
      sub_1DA8CC810(v13, v56, type metadata accessor for SyncDismissalIDEntry);
      if (sub_1DA93FA64())
      {
        if (qword_1ECBD47D0 != -1)
        {
          swift_once();
        }

        v29 = sub_1DA9405A4();
        __swift_project_value_buffer(v29, qword_1ECBE3DE8);

        v30 = sub_1DA940584();
        v31 = sub_1DA940EF4();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = v25;
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v62 = v34;
          *v33 = 136446210;
          *(v33 + 4) = sub_1DA7AE6E8(v22, v21, &v62);
          _os_log_impl(&dword_1DA7A9000, v30, v31, "Found id entry for %{public}s in dismissal cache", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v34);
          MEMORY[0x1E12739F0](v34, -1, -1);
          MEMORY[0x1E12739F0](v33, -1, -1);

          (*(v59 + 8))(v32, v60);
        }

        else
        {

          (*(v59 + 8))(v25, v60);
        }

        v50 = *v28;
        v53 = type metadata accessor for SyncDismissalIDEntry;
LABEL_32:
        result = sub_1DA8CC878(v28, v53);
        v51 = 0;
        goto LABEL_27;
      }

      v48 = type metadata accessor for SyncDismissalIDEntry;
LABEL_25:
      sub_1DA8CC878(v28, v48);
      goto LABEL_26;
    }

LABEL_21:
  }

LABEL_26:
  result = (*(v59 + 8))(v25, v60);
  v50 = 0;
  v51 = 1;
LABEL_27:
  v52 = v61;
  *v61 = v50;
  *(v52 + 8) = v51;
  return result;
}

uint64_t sub_1DA8CAEF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DA93FAF4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6738, &qword_1DA95FFE8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6740, &qword_1DA95FFF0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v46 - v15;
  v17 = *(a1 + 56);
  if (v17)
  {
    v18 = *(a1 + 48);
    if (qword_1ECBD47D0 != -1)
    {
      swift_once();
    }

    v19 = sub_1DA9405A4();
    __swift_project_value_buffer(v19, qword_1ECBE3DE8);

    v20 = sub_1DA940584();
    v21 = sub_1DA940EF4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v48 = v4;
      v23 = v22;
      v24 = swift_slowAlloc();
      v47 = v10;
      v25 = v18;
      v26 = v24;
      v49[0] = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_1DA7AE6E8(v25, v17, v49);
      _os_log_impl(&dword_1DA7A9000, v20, v21, "Removing id entry for %{public}s from dismissal cache", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v27 = v26;
      v18 = v25;
      v10 = v47;
      MEMORY[0x1E12739F0](v27, -1, -1);
      v28 = v23;
      v4 = v48;
      MEMORY[0x1E12739F0](v28, -1, -1);
    }

    swift_beginAccess();
    sub_1DA8F4C08(v18, v17, v16);
    sub_1DA7BA120(v16, &qword_1ECBD6740, &qword_1DA95FFF0);
    swift_endAccess();
  }

  else
  {
    v29 = DismissalSyncBulletin.dismissalHash.getter();
    v31 = v30;
    if (qword_1ECBD47D0 != -1)
    {
      swift_once();
    }

    v32 = sub_1DA9405A4();
    __swift_project_value_buffer(v32, qword_1ECBE3DE8);

    v33 = sub_1DA940584();
    v34 = sub_1DA940EF4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v48 = v4;
      v36 = v35;
      v37 = swift_slowAlloc();
      v47 = v29;
      v38 = v37;
      v49[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_1DA7AE6E8(v47, v31, v49);
      _os_log_impl(&dword_1DA7A9000, v33, v34, "Removing hash entry for %{public}s from dismissal cache", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      v39 = v38;
      v29 = v47;
      MEMORY[0x1E12739F0](v39, -1, -1);
      v40 = v36;
      v4 = v48;
      MEMORY[0x1E12739F0](v40, -1, -1);
    }

    swift_beginAccess();
    sub_1DA8F4BB4(v29, v31, v13);
    sub_1DA7BA120(v13, &qword_1ECBD6738, &qword_1DA95FFE8);
    swift_endAccess();
  }

  v41 = *(v2 + 5);
  v42 = *(v2 + 6);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v41);
  (*(v42 + 8))(v41, v42);
  v43 = OBJC_IVAR____TtC21UserNotificationsCoreP33_899DEA740530C892F681B05D190FCFD825DismissalSyncCacheSection_nextAutoRetireDate;
  swift_beginAccess();
  (*(v5 + 16))(v8, &v2[v43], v4);
  LOBYTE(v43) = sub_1DA93FA64();
  v44 = *(v5 + 8);
  v44(v8, v4);
  if (v43)
  {
    sub_1DA8CB420();
  }

  return (v44)(v10, v4);
}

uint64_t sub_1DA8CB420()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6738, &qword_1DA95FFE8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v124 = &v120 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6740, &qword_1DA95FFF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v123 = &v120 - v5;
  v134 = type metadata accessor for SyncDismissalHashEntry(0);
  v131 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v125 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6748, &qword_1DA95FFF8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v129 = (&v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v128 = (&v120 - v10);
  v135 = type metadata accessor for SyncDismissalIDEntry(0);
  v132 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v126 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6750, &qword_1DA960000);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v130 = &v120 - v16;
  v139 = sub_1DA93FAF4();
  v17 = *(v139 - 8);
  v18 = MEMORY[0x1EEE9AC00](v139);
  v138 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v140 = &v120 - v20;
  if (qword_1ECBD47D0 != -1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v21 = sub_1DA9405A4();
    __swift_project_value_buffer(v21, qword_1ECBE3DE8);
    v22 = sub_1DA940584();
    v23 = sub_1DA940EF4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DA7A9000, v22, v23, "Retiring all expired entries in dismissal cache", v24, 2u);
      MEMORY[0x1E12739F0](v24, -1, -1);
    }

    v25 = *(v1 + 5);
    v26 = *(v1 + 6);
    __swift_project_boxed_opaque_existential_1(v1 + 2, v25);
    (*(v26 + 8))(v25, v26);
    swift_beginAccess();
    v133 = v1;
    v27 = *(v1 + 7);
    v28 = *(v27 + 64);
    v122 = v27 + 64;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & v28;
    v32 = (v29 + 63) >> 6;
    v136 = (v17 + 16);
    v120 = v17;
    v137 = (v17 + 8);
    v127 = v27;

    v33 = 0;
    v121 = MEMORY[0x1E69E7CC0];
    v34 = &unk_1ECBD6758;
LABEL_7:
    v35 = v33;
    if (v31)
    {
      break;
    }

LABEL_9:
    if (v32 <= v35 + 1)
    {
      v36 = v35 + 1;
    }

    else
    {
      v36 = v32;
    }

    v33 = v36 - 1;
    while (1)
    {
      v17 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v17 >= v32)
      {
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, &qword_1DA960008);
        (*(*(v52 - 8) + 56))(v15, 1, 1, v52);
        v31 = 0;
        goto LABEL_17;
      }

      v31 = *(v122 + 8 * v17);
      ++v35;
      if (v31)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
  }

  while (1)
  {
    v17 = v35;
LABEL_16:
    v37 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v38 = v37 | (v17 << 6);
    v39 = (*(v127 + 48) + 16 * v38);
    v41 = *v39;
    v40 = v39[1];
    v42 = v126;
    sub_1DA8CC7A8(*(v127 + 56) + *(v132 + 72) * v38, v126, type metadata accessor for SyncDismissalIDEntry);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, &qword_1DA960008);
    v44 = *(v43 + 48);
    *v15 = v41;
    *(v15 + 1) = v40;
    sub_1DA8CC810(v42, &v15[v44], type metadata accessor for SyncDismissalIDEntry);
    (*(*(v43 - 8) + 56))(v15, 0, 1, v43);

    v33 = v17;
LABEL_17:
    v1 = v130;
    sub_1DA84A0CC(v15, v130, &qword_1ECBD6750, &qword_1DA960000);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, &qword_1DA960008);
    if ((*(*(v45 - 8) + 48))(v1, 1, v45) == 1)
    {
      break;
    }

    v46 = v34;
    v47 = v15;
    v48 = *v1;
    v49 = *(v1 + 1);
    v50 = &v1[*(v45 + 48)];
    v51 = v138;
    v1 = v139;
    (*v136)(v138, v50 + *(v135 + 24), v139);
    sub_1DA8CC878(v50, type metadata accessor for SyncDismissalIDEntry);
    LOBYTE(v50) = sub_1DA93FA64();
    (*v137)(v51, v1);
    if (v50)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v121 = sub_1DA7B6928(0, *(v121 + 2) + 1, 1, v121);
      }

      v15 = v47;
      v54 = *(v121 + 2);
      v53 = *(v121 + 3);
      v1 = (v54 + 1);
      v34 = v46;
      if (v54 >= v53 >> 1)
      {
        v121 = sub_1DA7B6928((v53 > 1), v54 + 1, 1, v121);
      }

      v55 = v121;
      *(v121 + 2) = v1;
      v56 = &v55[16 * v54];
      *(v56 + 4) = v48;
      *(v56 + 5) = v49;
      goto LABEL_7;
    }

    v35 = v33;
    v15 = v47;
    v34 = v46;
    if (!v31)
    {
      goto LABEL_9;
    }
  }

  v57 = v133;
  swift_beginAccess();
  v15 = *(v57 + 8);
  v58 = 1 << v15[32];
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v60 = v59 & *(v15 + 8);
  v61 = (v58 + 63) >> 6;

  v62 = 0;
  v130 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v63 = v62;
  if (!v60)
  {
LABEL_32:
    if (v61 <= v63 + 1)
    {
      v64 = v63 + 1;
    }

    else
    {
      v64 = v61;
    }

    v62 = v64 - 1;
    while (1)
    {
      v17 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        goto LABEL_68;
      }

      if (v17 >= v61)
      {
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6760, &unk_1DA960010);
        v82 = v129;
        (*(*(v81 - 8) + 56))(v129, 1, 1, v81);
        v74 = v82;
        v60 = 0;
        goto LABEL_40;
      }

      v60 = *&v15[8 * v17 + 64];
      ++v63;
      if (v60)
      {
        goto LABEL_39;
      }
    }
  }

  while (1)
  {
    v17 = v63;
LABEL_39:
    v65 = __clz(__rbit64(v60));
    v60 &= v60 - 1;
    v66 = v65 | (v17 << 6);
    v67 = (*(v15 + 6) + 16 * v66);
    v68 = *v67;
    v69 = v67[1];
    v70 = v125;
    sub_1DA8CC7A8(*(v15 + 7) + *(v131 + 72) * v66, v125, type metadata accessor for SyncDismissalHashEntry);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6760, &unk_1DA960010);
    v72 = *(v71 + 48);
    v73 = v129;
    *v129 = v68;
    v73[1] = v69;
    sub_1DA8CC810(v70, v73 + v72, type metadata accessor for SyncDismissalHashEntry);
    (*(*(v71 - 8) + 56))(v73, 0, 1, v71);

    v62 = v17;
    v74 = v73;
LABEL_40:
    v75 = v128;
    sub_1DA84A0CC(v74, v128, &qword_1ECBD6748, &qword_1DA95FFF8);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6760, &unk_1DA960010);
    if ((*(*(v76 - 8) + 48))(v75, 1, v76) == 1)
    {
      break;
    }

    v77 = *v75;
    v78 = v75[1];
    v79 = v75 + *(v76 + 48);
    v80 = v138;
    v1 = v139;
    (*v136)(v138, v79 + *(v134 + 28), v139);
    sub_1DA8CC878(v79, type metadata accessor for SyncDismissalHashEntry);
    LOBYTE(v79) = sub_1DA93FA64();
    (*v137)(v80, v1);
    if (v79)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v130 = sub_1DA7B6928(0, *(v130 + 2) + 1, 1, v130);
      }

      v84 = *(v130 + 2);
      v83 = *(v130 + 3);
      v1 = (v84 + 1);
      if (v84 >= v83 >> 1)
      {
        v130 = sub_1DA7B6928((v83 > 1), v84 + 1, 1, v130);
      }

      v85 = v130;
      *(v130 + 2) = v1;
      v86 = &v85[16 * v84];
      *(v86 + 4) = v77;
      *(v86 + 5) = v78;
      goto LABEL_30;
    }

    v63 = v62;
    if (!v60)
    {
      goto LABEL_32;
    }
  }

  v87 = *(v121 + 2);
  if (v87)
  {
    v88 = v133;
    v89 = (v132 + 56);
    v90 = (v121 + 40);
    do
    {
      v94 = *(v90 - 1);
      v93 = *v90;
      swift_beginAccess();

      v95 = sub_1DA85A4B4(v94, v93);
      if (v96)
      {
        v97 = v95;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = *(v88 + 7);
        v141 = v99;
        *(v88 + 7) = 0x8000000000000000;
        v92 = v123;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DA862230();
          v99 = v141;
        }

        sub_1DA8CC810(*(v99 + 56) + *(v132 + 72) * v97, v92, type metadata accessor for SyncDismissalIDEntry);
        sub_1DA8F5E90(v97, v99);
        *(v88 + 7) = v99;

        v91 = 0;
      }

      else
      {
        v91 = 1;
        v92 = v123;
      }

      (*v89)(v92, v91, 1, v135);
      sub_1DA7BA120(v92, &qword_1ECBD6740, &qword_1DA95FFF0);
      swift_endAccess();

      v90 += 2;
      --v87;
    }

    while (v87);
  }

  v100 = *(v130 + 2);
  if (v100)
  {
    v101 = (v131 + 56);
    v102 = (v130 + 40);
    v103 = v133;
    do
    {
      v107 = *(v102 - 1);
      v106 = *v102;
      swift_beginAccess();

      v108 = sub_1DA85A4B4(v107, v106);
      if (v109)
      {
        v110 = v108;
        v111 = swift_isUniquelyReferenced_nonNull_native();
        v112 = *(v103 + 8);
        v141 = v112;
        *(v103 + 8) = 0x8000000000000000;
        v105 = v124;
        if (!v111)
        {
          sub_1DA861FA0();
          v112 = v141;
        }

        sub_1DA8CC810(*(v112 + 56) + *(v131 + 72) * v110, v105, type metadata accessor for SyncDismissalHashEntry);
        sub_1DA8F5E78(v110, v112);
        *(v103 + 8) = v112;

        v104 = 0;
      }

      else
      {
        v104 = 1;
        v105 = v124;
      }

      (*v101)(v105, v104, 1, v134);
      sub_1DA7BA120(v105, &qword_1ECBD6738, &qword_1DA95FFE8);
      swift_endAccess();

      v102 += 2;
      --v100;
    }

    while (v100);
  }

  v113 = v138;
  v114 = v140;
  sub_1DA93FA34();
  v115 = v120;
  v116 = v139;
  (*(v120 + 8))(v114, v139);
  v117 = OBJC_IVAR____TtC21UserNotificationsCoreP33_899DEA740530C892F681B05D190FCFD825DismissalSyncCacheSection_nextAutoRetireDate;
  v118 = v133;
  swift_beginAccess();
  (*(v115 + 40))(&v118[v117], v113, v116);
  return swift_endAccess();
}

uint64_t sub_1DA8CC31C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = OBJC_IVAR____TtC21UserNotificationsCoreP33_899DEA740530C892F681B05D190FCFD825DismissalSyncCacheSection_nextAutoRetireDate;
  v2 = sub_1DA93FAF4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1DA8CC458()
{
  v1 = *(type metadata accessor for DismissalSyncBulletin(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_1DA8C8C3C(v2, v3);
}

uint64_t sub_1DA8CC54C(uint64_t a1)
{
  result = sub_1DA93FAF4();
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

void sub_1DA8CC640(uint64_t a1)
{
  sub_1DA8235A8(319);
  if (v1 <= 0x3F)
  {
    sub_1DA93FAF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DA8CC724(uint64_t a1)
{
  result = sub_1DA93FAF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DA8CC7A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA8CC810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA8CC878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA8CC8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA8CC950()
{
  MEMORY[0x1E12739F0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8CCAB4(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1DA8CCB14(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___UNCNotificationCoreServiceClientImpl_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1DA8CCBAC;
}

void sub_1DA8CCBAC(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id NotificationCoreServiceClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotificationCoreServiceClient.init()()
{
  v11 = sub_1DA940FC4();
  v1 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v10 = OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue;
  v6 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v9[1] = "cationsCore10UnfairLock";
  v9[2] = v6;
  sub_1DA940824();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v11);
  *&v0[v10] = sub_1DA941004();
  *&v0[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue_connection] = 0;
  swift_unknownObjectWeakInit();
  v7 = type metadata accessor for NotificationCoreServiceClient();
  v12.receiver = v0;
  v12.super_class = v7;
  return objc_msgSendSuper2(&v12, sel_init);
}

void NotificationCoreServiceClient.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DA8D27D4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1DA82B5F8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7B8000;
  aBlock[3] = &block_descriptor_19;
  v4 = _Block_copy(aBlock);
  v5 = v1;
  v6 = v0;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {

    v7.receiver = v6;
    v7.super_class = type metadata accessor for NotificationCoreServiceClient();
    objc_msgSendSuper2(&v7, sel_dealloc);
  }
}

void sub_1DA8CD178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1DA8D16E0(0xD00000000000003FLL, 0x80000001DA955470);
  if (v4)
  {
    v5 = v4;
    sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
    v6 = sub_1DA940BD4();
    v7 = sub_1DA940A04();
    [v5 notificationRepositoryDidPerformUpdates:v6 forBundleIdentifier:v7];
    swift_unknownObjectRelease();
  }
}

void sub_1DA8CD2B4(uint64_t *a1@<X8>)
{
  v2 = sub_1DA8D16E0(0xD000000000000026, 0x80000001DA955440);
  if (v2)
  {
    v3 = [v2 allBundleIdentifiersForNotifications];
    v4 = sub_1DA940BE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v4;
}

void sub_1DA8CD3B4(uint64_t *a3@<X8>)
{
  v4 = sub_1DA8D16E0(0xD000000000000029, 0x80000001DA955410);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1DA940A04();
    v7 = [v5 notificationRecordsForBundleIdentifier_];

    sub_1DA7AF3EC(0, &qword_1ECBD4C00, off_1E85D5D68);
    v8 = sub_1DA940BE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v8;
}

void *sub_1DA8CD5C4@<X0>(void *a5@<X8>)
{
  result = sub_1DA8D16E0(0xD000000000000033, 0x80000001DA9553D0);
  if (result)
  {
    v7 = result;
    v8 = sub_1DA940A04();
    v9 = sub_1DA940A04();
    v10 = [v7 notificationRecordForIdentifier:v8 bundleIdentifier:v9];

    result = swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  *a5 = v10;
  return result;
}

double sub_1DA8CD6F0(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[0] = a4;
  v14 = sub_1DA9407F4();
  v29 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DA940854();
  v27 = *(v17 - 8);
  v28 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = *&v7[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  *(v20 + 24) = a6;
  *(v20 + 32) = a7;
  *(v20 + 40) = a1;
  *(v20 + 48) = a2;
  *(v20 + 56) = a3;
  *(v20 + 64) = v26[0];
  *(v20 + 72) = a5;
  aBlock[4] = sub_1DA8CDBE4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_15_0;
  v21 = _Block_copy(aBlock);
  v22 = v7;
  sub_1DA7B3DC0(a6, a7);
  v23 = a2;

  v24 = a1;
  sub_1DA940824();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v19, v16, v21);
  _Block_release(v21);
  (*(v29 + 8))(v16, v14);
  (*(v27 + 8))(v19, v28);

  return result;
}

void sub_1DA8CD9F8(uint64_t a1, void (*a2)(void, id), uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_1DA8D16E0(0xD000000000000050, 0x80000001DA955350);
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v16 = sub_1DA940A04();
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    aBlock[4] = sub_1DA8D26C0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA8CDC88;
    aBlock[3] = &block_descriptor_167;
    v18 = _Block_copy(aBlock);
    sub_1DA7B3DC0(a2, a3);

    [v14 saveNotificationRecord:a4 targetRevisionNumber:a5 shouldRepost:v15 forBundleIdentifier:v16 completionHandler:v18];
    _Block_release(v18);
    swift_unknownObjectRelease();
  }

  else if (a2)
  {
    v19 = _UNCNilRemoteTargetError("save(_:targetRevisionNumber:shouldRepost:forBundleIdentifier:completionHandler:)");
    a2(0, v19);
  }
}

void *sub_1DA8CDBFC(void *result, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  if (a3)
  {
    if (result)
    {
      v7 = result;

      v8 = [v7 unsignedIntegerValue];
    }

    else
    {

      v8 = 0;
    }

    a3(v8, a2);

    return sub_1DA7B5220(a3, a4);
  }

  return result;
}

void sub_1DA8CDC88(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1DA8CDE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1DA93F8B4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

double sub_1DA8CDE94(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a2;
  v30 = sub_1DA9407F4();
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1DA940854();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1DA93FAF4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v29 = *&v5[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  (*(v14 + 16))(&v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], a3, v13);
  v16 = (*(v14 + 80) + 33) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  *(v17 + 24) = a1;
  *(v17 + 32) = v26;
  (*(v14 + 32))(v17 + v16, &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v13);
  v18 = (v17 + ((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v28;
  *v18 = v27;
  v18[1] = v19;
  aBlock[4] = sub_1DA8CE368;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_21;
  v20 = _Block_copy(aBlock);
  v21 = v5;
  v22 = a1;

  sub_1DA940824();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  v23 = v30;
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v12, v9, v20);
  _Block_release(v20);
  (*(v33 + 8))(v9, v23);
  (*(v31 + 8))(v12, v32);

  return result;
}

void sub_1DA8CE254(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1DA8D16E0(0xD00000000000003DLL, 0x80000001DA955310);
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v11 = sub_1DA93FA44();
    v12 = sub_1DA940A04();
    [v9 saveNotificationRequest:a2 shouldRepost:v10 apsMessageTimestamp:v11 forBundleIdentifier:v12];
    swift_unknownObjectRelease();
  }
}

void sub_1DA8CE368()
{
  v1 = *(sub_1DA93FAF4() - 8);
  v2 = (*(v1 + 80) + 33) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  sub_1DA8CE254(v3, v4, v5, v0 + v2, v7, v8);
}

double sub_1DA8CE55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v10 = sub_1DA9407F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1DA940854();
  v14 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&v6[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  v17 = swift_allocObject();
  v17[2] = v6;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = v22;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = v23;
  v18 = _Block_copy(aBlock);
  v19 = v6;

  sub_1DA940824();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v25);

  return result;
}

void sub_1DA8CE82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1DA8D16E0(0xD000000000000046, 0x80000001DA9552C0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1DA940BD4();
    v7 = sub_1DA940A04();
    [v5 removeNotificationRecordsForIdentifiers:v6 bundleIdentifier:v7];
    swift_unknownObjectRelease();
  }
}

void sub_1DA8CE9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1DA8D16E0(0xD000000000000038, 0x80000001DA955280);
  if (v4)
  {
    v5 = v4;
    sub_1DA7AF3EC(0, &qword_1ECBD4C00, off_1E85D5D68);
    v6 = sub_1DA940BD4();
    v7 = sub_1DA940A04();
    [v5 removeSimilarNotificationRecords:v6 forBundleIdentifier:v7];
    swift_unknownObjectRelease();
  }
}

void sub_1DA8CEB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1DA8D16E0(0xD000000000000041, 0x80000001DA955230);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DA940A04();
    [v4 removeNotificationRecordsWithNonPushTriggerForBundleIdentifier_];
    swift_unknownObjectRelease();
  }
}

double sub_1DA8CEC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a5;
  v9 = sub_1DA9407F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DA940854();
  v13 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v5[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = v20[0];
  v17 = _Block_copy(aBlock);
  v18 = v5;

  sub_1DA940824();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);

  return result;
}

void sub_1DA8CEED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1DA8D16E0(0xD000000000000036, 0x80000001DA9551F0);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DA940A04();
    [v4 removeInvalidNotificationRecordsForBundleIdentifier_];
    swift_unknownObjectRelease();
  }
}

void sub_1DA8CEFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1DA8D16E0(0xD000000000000032, 0x80000001DA9551B0);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DA940A04();
    [v4 removeAllNotificationRecordsForBundleIdentifier_];
    swift_unknownObjectRelease();
  }
}

void sub_1DA8CF0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1DA8D16E0(0xD000000000000021, 0x80000001DA955180);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DA940A04();
    [v4 removeStoreForBundleIdentifier_];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1DA8CF19C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7740, &unk_1DA964EA0);
  sub_1DA940FE4();
  return v3;
}

void *sub_1DA8CF220@<X0>(void *a3@<X8>)
{
  result = sub_1DA8D16E0(0xD000000000000021, 0x80000001DA955150);
  if (result)
  {
    v5 = result;
    v6 = sub_1DA940A04();
    v7 = [v5 badgeNumberForBundleIdentifier_];

    result = swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  return result;
}

double sub_1DA8CF3A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1DA9407F4();
  v24 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DA940854();
  v14 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *&v5[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  aBlock[4] = sub_1DA8CF808;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_63;
  v18 = _Block_copy(aBlock);
  v19 = v5;
  sub_1DA7B3DC0(a4, a5);
  v20 = a1;

  sub_1DA940824();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v16, v13, v18);
  _Block_release(v18);
  (*(v24 + 8))(v13, v11);
  (*(v14 + 8))(v16, v23);

  return result;
}

void sub_1DA8CF698(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1DA8D16E0(0xD000000000000038, 0x80000001DA955110);
  if (v9)
  {
    v10 = v9;
    v11 = sub_1DA940A04();
    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_161;
      a2 = _Block_copy(aBlock);
    }

    [v10 setBadgeNumber:a4 forBundleIdentifier:v11 completionHandler:a2];
    _Block_release(a2);
    swift_unknownObjectRelease();
  }

  else if (a2)
  {
    v12 = _UNCNilRemoteTargetError("setBadgeNumber(_:forBundleIdentifier:completionHandler:)");
    (a2)();
  }
}

double sub_1DA8CF90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1DA9407F4();
  v23 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DA940854();
  v14 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *&v5[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  aBlock[4] = sub_1DA8CFD90;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_69_0;
  v18 = _Block_copy(aBlock);
  v19 = v5;
  sub_1DA7B3DC0(a4, a5);

  sub_1DA940824();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v16, v13, v18);
  _Block_release(v18);
  (*(v23 + 8))(v13, v11);
  (*(v14 + 8))(v16, v22);

  return result;
}

void sub_1DA8CFBFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1DA8D16E0(0xD000000000000037, 0x80000001DA9550D0);
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v12 = sub_1DA940A04();
    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_158;
      a2 = _Block_copy(aBlock);
    }

    [v10 setBadgeCount:v11 forBundleIdentifier:v12 completionHandler:a2];
    _Block_release(a2);
    swift_unknownObjectRelease();
  }

  else if (a2)
  {
    v13 = _UNCNilRemoteTargetError("setBadgeCount(_:forBundleIdentifier:completionHandler:)");
    (a2)();
  }
}

double sub_1DA8CFE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  v12 = sub_1DA9407F4();
  v26 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1DA940854();
  v15 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&v6[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  v18 = swift_allocObject();
  v18[2] = v6;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = v23;
  aBlock[4] = sub_1DA8D0334;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_75;
  v19 = _Block_copy(aBlock);
  v20 = v6;
  sub_1DA7B3DC0(a5, a6);

  sub_1DA940824();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v17, v14, v19);
  _Block_release(v19);
  (*(v26 + 8))(v14, v12);
  (*(v15 + 8))(v17, v25);

  return result;
}

void sub_1DA8D019C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1DA8D16E0(0xD000000000000038, 0x80000001DA955090);
  if (v10)
  {
    v11 = v10;
    if (a5)
    {
      a5 = sub_1DA940A04();
    }

    v12 = sub_1DA940A04();
    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_155;
      a2 = _Block_copy(aBlock);
    }

    [v11 setBadgeString:a5 forBundleIdentifier:v12 completionHandler:a2];
    _Block_release(a2);
    swift_unknownObjectRelease();
  }

  else if (a2)
  {
    v13 = _UNCNilRemoteTargetError("setBadgeString(_:forBundleIdentifier:completionHandler:)");
    (a2)();
  }
}

void sub_1DA8D0474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1DA8D16E0(0xD000000000000029, 0x80000001DA955060);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DA940A04();
    [v4 categoryRepositoryDidChangeCategoriesForBundleIdentifier_];
    swift_unknownObjectRelease();
  }
}

uint64_t objectdestroy_35Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA8D0588(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1DA940A14();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1DA8D060C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA940FE4();
  return v2;
}

void sub_1DA8D0680(uint64_t *a1@<X8>)
{
  v2 = sub_1DA8D16E0(0xD000000000000023, 0x80000001DA955030);
  if (v2)
  {
    v3 = [v2 allBundleIdentifiersForCategories];
    v4 = sub_1DA940BE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v4;
}

id sub_1DA8D0758(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA940FE4();

  v4 = sub_1DA940BD4();

  return v4;
}

uint64_t sub_1DA8D082C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_1DA940FE4();
  return v8;
}

void *sub_1DA8D08A0@<X0>(void *a5@<X8>)
{
  result = sub_1DA8D16E0(0xD000000000000029, 0x80000001DA955000);
  if (result)
  {
    v7 = result;
    v8 = sub_1DA940A04();
    v9 = sub_1DA940A04();
    v10 = [v7 categoryForIdentifier:v8 bundleIdentifier:v9];

    result = swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  *a5 = v10;
  return result;
}

id sub_1DA8D09CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  sub_1DA940A14();
  sub_1DA940A14();
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_1DA940FE4();

  return v12;
}

uint64_t sub_1DA8D0ACC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1DA940FE4();
  return v6;
}

void sub_1DA8D0B3C(uint64_t *a3@<X8>)
{
  v4 = sub_1DA8D16E0(0xD000000000000020, 0x80000001DA954FD0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1DA940A04();
    v7 = [v5 categoriesForBundleIdentifier_];

    sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
    v8 = sub_1DA940BE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v8;
}

void sub_1DA8D0D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1DA8D16E0(0xD000000000000025, 0x80000001DA954FA0);
  if (v4)
  {
    v5 = v4;
    sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
    v6 = sub_1DA940BD4();
    v7 = sub_1DA940A04();
    [v5 setCategories:v6 forBundleIdentifier:v7];
    swift_unknownObjectRelease();
  }
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA8D0EB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  sub_1DA7AF3EC(0, a5, a6);
  v9 = sub_1DA940BE4();
  v10 = sub_1DA940A14();
  v12 = v11;
  v13 = a1;
  a7(v9, v10, v12);
}

void *sub_1DA8D0F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_1DA940A04();
    v12 = sub_1DA940A04();
    v13 = sub_1DA940A04();
    if (a8)
    {
      v14 = sub_1DA940A04();
    }

    else
    {
      v14 = 0;
    }

    [v10 performAction:v11 forNotification:v12 inApp:v13 withUserText:v14];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DA8D16E0(uint64_t a1, unint64_t a2)
{
  v5 = sub_1DA9408C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = sub_1DA9408F4();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_19;
  }

  v11 = OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue_connection;
  v12 = *(v2 + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue_connection);
  if (v12)
  {
    if ([v12 remoteTarget])
    {
      sub_1DA941154();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27 = v25;
    v28 = v26;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  sub_1DA89667C(&v27, &v25);
  v13 = *(&v26 + 1);
  sub_1DA896614(&v25);
  if (!v13)
  {
    sub_1DA8D2514();
    sub_1DA8D1A5C();
    v14 = *(v2 + v11);
    if (v14 && [v14 remoteTarget])
    {
      sub_1DA941154();
      swift_unknownObjectRelease();
      sub_1DA896614(&v27);
      v15 = v25;
      v16 = v26;
    }

    else
    {
      sub_1DA896614(&v27);
      v15 = 0uLL;
      v16 = 0uLL;
    }

    v27 = v15;
    v28 = v16;
  }

  sub_1DA89667C(&v27, &v25);
  if (*(&v26 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6880, &qword_1DA9600E0);
    if (swift_dynamicCast())
    {
      v17 = v24[1];
      sub_1DA896614(&v27);
      return v17;
    }
  }

  else
  {
    sub_1DA896614(&v25);
  }

  if (qword_1EE115AA0 != -1)
  {
    goto LABEL_23;
  }

LABEL_19:
  v19 = sub_1DA9405A4();
  __swift_project_value_buffer(v19, qword_1EE11B068);

  v20 = sub_1DA940584();
  v21 = sub_1DA940F14();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v25 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1DA7AE6E8(a1, a2, &v25);
    _os_log_impl(&dword_1DA7A9000, v20, v21, "No remote target for %s in core service client", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1E12739F0](v23, -1, -1);
    MEMORY[0x1E12739F0](v22, -1, -1);
  }

  sub_1DA896614(&v27);
  return 0;
}

void sub_1DA8D1A5C()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1DA9408F4();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue_connection;
  if (*&v0[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue_connection])
  {
    return;
  }

  v8 = objc_opt_self();
  v9 = [v8 machServiceName];
  if (!v9)
  {
    sub_1DA940A14();
    v9 = sub_1DA940A04();
  }

  v1 = [v8 serviceInterface];
  v10 = [v1 identifier];
  if (!v10)
  {
    sub_1DA940A14();
    v10 = sub_1DA940A04();
  }

  v11 = [objc_opt_self() endpointForMachName:v9 service:v10 instance:0];

  if (v11)
  {
    v12 = [objc_opt_self() connectionWithEndpoint_];
    v13 = *&v0[v7];
    *&v0[v7] = v12;
    v14 = v12;

    if (v14)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v1;
      *(v15 + 24) = v0;
      v16 = swift_allocObject();
      v17 = sub_1DA8D2648;
      *(v16 + 16) = sub_1DA8D2648;
      *(v16 + 24) = v15;
      aBlock[4] = sub_1DA8D2650;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA88419C;
      aBlock[3] = &block_descriptor_101;
      v18 = _Block_copy(aBlock);
      v19 = v1;
      v20 = v0;

      [v14 configureConnection_];

      _Block_release(v18);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      v17 = 0;
      v15 = 0;
    }

    v26 = *&v0[v7];
    [v26 activate];

    sub_1DA7B5220(v17, v15);
    return;
  }

LABEL_11:
  if (qword_1EE115AA0 != -1)
  {
LABEL_19:
    swift_once();
  }

  v22 = sub_1DA9405A4();
  __swift_project_value_buffer(v22, qword_1EE11B068);
  v23 = sub_1DA940584();
  v24 = sub_1DA940EF4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1DA7A9000, v23, v24, "No endpoint in core service client", v25, 2u);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }
}

void sub_1DA8D1EB0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_1DA8D2658;
  v16 = v7;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1DA7B00D0;
  v14 = &block_descriptor_107;
  v8 = _Block_copy(&v11);

  [a1 setInterruptionHandler_];
  _Block_release(v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_1DA8D2660;
  v16 = v9;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1DA7B00D0;
  v14 = &block_descriptor_111;
  v10 = _Block_copy(&v11);

  [a1 setInvalidationHandler_];
  _Block_release(v10);
}

void sub_1DA8D20A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EE115AA0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DA9405A4();
    __swift_project_value_buffer(v4, qword_1EE11B068);
    v5 = sub_1DA940584();
    v6 = sub_1DA940EF4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DA7A9000, v5, v6, "Core service client connection is interrupted", v7, 2u);
      MEMORY[0x1E12739F0](v7, -1, -1);
    }

    v8 = *&v3[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1DA8D27D4;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1DA8D2794;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7B8000;
    aBlock[3] = &block_descriptor_131_0;
    v11 = _Block_copy(aBlock);
    v12 = v3;

    dispatch_sync(v8, v11);

    _Block_release(v11);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }
  }
}

void sub_1DA8D22DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EE115AA0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DA9405A4();
    __swift_project_value_buffer(v4, qword_1EE11B068);
    v5 = sub_1DA940584();
    v6 = sub_1DA940EF4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DA7A9000, v5, v6, "Core service client connection is invalidated", v7, 2u);
      MEMORY[0x1E12739F0](v7, -1, -1);
    }

    v8 = *&v3[OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue];
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1DA8D2668;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1DA8D2794;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7B8000;
    aBlock[3] = &block_descriptor_121;
    v11 = _Block_copy(aBlock);
    v12 = v3;

    dispatch_sync(v8, v11);

    _Block_release(v11);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }
  }
}

void sub_1DA8D2514()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1DA9408F4();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v7 = OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue_connection;
    [*(v0 + OBJC_IVAR___UNCNotificationCoreServiceClientImpl_queue_connection) invalidate];
    v8 = *(v0 + v7);
    *(v0 + v7) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DA8D2820(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UserNotificationsCloudRecord(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v76 = (&v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v74 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v74 - v11);
  v13 = a1[1];
  v81 = *a1;
  v82 = v13;
  v14 = a1[3];
  v83 = a1[2];
  v84 = v14;
  if (qword_1EE110D80 != -1)
  {
    swift_once();
  }

  v15 = sub_1DA9405A4();
  __swift_project_value_buffer(v15, qword_1EE11AD48);
  sub_1DA848A24(&v81, v80);

  v16 = sub_1DA940584();
  v17 = sub_1DA940F34();
  sub_1DA84A040(&v81);

  v18 = os_log_type_enabled(v16, v17);
  v77 = v12;
  v78 = v2;
  v75 = v9;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v79[0] = v20;
    *v19 = 136315906;
    *(v19 + 4) = sub_1DA7AE6E8(v83, *(&v83 + 1), v79);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1DA7AE6E8(v81, *(&v81 + 1), v79);
    *(v19 + 22) = 2080;
    *(v19 + 24) = sub_1DA7AE6E8(v82, *(&v82 + 1), v79);
    *(v19 + 32) = 2080;
    sub_1DA7BABAC((v2 + 2), v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
    v21 = sub_1DA940A74();
    v23 = sub_1DA7AE6E8(v21, v22, v79);

    *(v19 + 34) = v23;
    _os_log_impl(&dword_1DA7A9000, v16, v17, "NotificationActionHandlerCloudSender perform(action:): actionIdentifier: %s bundleIdentifier: %s notificationIdentifier: %s pushTarget: %s", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v20, -1, -1);
    v24 = v19;
    v12 = v77;
    MEMORY[0x1E12739F0](v24, -1, -1);
  }

  v25 = v81;
  v26 = (v12 + *(v4 + 20));
  v27 = v82;
  *v26 = v81;
  v26[1] = v27;
  v28 = v84;
  v26[2] = v83;
  v26[3] = v28;
  type metadata accessor for CloudAction(0);
  swift_storeEnumTagMultiPayload();
  *v12 = v25;
  v79[3] = v4;
  v79[4] = sub_1DA8D3354();
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v79);
  sub_1DA8D33AC(v12, boxed_opaque_existential_2);
  sub_1DA848A24(&v81, v80);

  sub_1DA841298(v79, 0, 1);
  v31 = v30;
  v33 = v32;
  result = __swift_destroy_boxed_opaque_existential_1(v79);
  v35 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v35 != 2)
    {
      goto LABEL_19;
    }

    v37 = *(v31 + 16);
    v36 = *(v31 + 24);
    v38 = __OFSUB__(v36, v37);
    v39 = v36 - v37;
    if (!v38)
    {
      if (v39)
      {
        goto LABEL_12;
      }

LABEL_19:
      v74 = v31;
      if (qword_1EE110E68 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v15, qword_1EE11ADC0);
      v60 = v75;
      sub_1DA8D33AC(v12, v75);
      v61 = v78;

      v62 = sub_1DA940584();
      v63 = sub_1DA940F14();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v79[0] = v65;
        *v64 = 136315394;
        v66 = v76;
        sub_1DA8D33AC(v60, v76);
        *&v80[0] = 0;
        *(&v80[0] + 1) = 0xE000000000000000;
        MEMORY[0x1E1271BD0](*v66, v66[1]);
        MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
        sub_1DA8D346C(v66 + *(v4 + 20));
        v67 = v33;
        v68 = v80[0];
        sub_1DA8D3410(v60);
        sub_1DA8D3410(v66);
        v69 = sub_1DA7AE6E8(v68, *(&v68 + 1), v79);

        *(v64 + 4) = v69;
        *(v64 + 12) = 2080;
        sub_1DA7BABAC((v61 + 2), v80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
        v70 = sub_1DA940A74();
        v72 = sub_1DA7AE6E8(v70, v71, v79);

        *(v64 + 14) = v72;
        _os_log_impl(&dword_1DA7A9000, v62, v63, "NotificationActionHandlerCloudSender sendAction(response): %s target:%s data.count == 0", v64, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v65, -1, -1);
        MEMORY[0x1E12739F0](v64, -1, -1);

        sub_1DA828324(v74, v67);
        v73 = v77;
        return sub_1DA8D3410(v73);
      }

      sub_1DA828324(v74, v33);
      sub_1DA8D3410(v60);
LABEL_24:
      v73 = v12;
      return sub_1DA8D3410(v73);
    }

    __break(1u);
  }

  else
  {
    if (!v35)
    {
      if (!BYTE6(v33))
      {
        goto LABEL_19;
      }

LABEL_12:
      v40 = v31;
      if (qword_1EE110E68 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v15, qword_1EE11ADC0);
      sub_1DA848A24(&v81, v80);
      v41 = v78;

      sub_1DA841874(v31, v33);
      v42 = sub_1DA940584();
      v43 = sub_1DA940F34();
      sub_1DA84A040(&v81);

      sub_1DA828324(v40, v33);
      v44 = v33;
      if (os_log_type_enabled(v42, v43))
      {
        v45 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v79[0] = v76;
        *v45 = 136316162;
        *(v45 + 4) = sub_1DA7AE6E8(v83, *(&v83 + 1), v79);
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_1DA7AE6E8(v25, *(&v25 + 1), v79);
        *(v45 + 22) = 2080;
        *(v45 + 24) = sub_1DA7AE6E8(v82, *(&v82 + 1), v79);
        *(v45 + 32) = 2080;
        sub_1DA7BABAC((v41 + 2), v80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
        v46 = sub_1DA940A74();
        v48 = sub_1DA7AE6E8(v46, v47, v79);
        LODWORD(v75) = v43;
        v49 = v48;

        *(v45 + 34) = v49;
        *(v45 + 42) = 2080;
        sub_1DA841874(v40, v33);
        v50 = sub_1DA93F984();
        v52 = v51;
        sub_1DA828324(v40, v44);
        v53 = sub_1DA7AE6E8(v50, v52, v79);

        *(v45 + 44) = v53;
        _os_log_impl(&dword_1DA7A9000, v42, v75, "NotificationActionHandlerCloudSender sendAction(response): actionIdentifier: %s bundleIdentifier: %s notificationIdentifier: %s target:%s notificationData: %s", v45, 0x34u);
        v54 = v76;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v54, -1, -1);
        v55 = v45;
        v12 = v77;
        MEMORY[0x1E12739F0](v55, -1, -1);
      }

      v56 = v41[5];
      v57 = v41[6];
      __swift_project_boxed_opaque_existential_1(v41 + 2, v56);
      v80[0] = v81;
      v80[1] = v82;
      v80[2] = v83;
      v80[3] = v84;
      sub_1DA848A24(&v81, v79);
      v58 = sub_1DA940A74();
      (*(v57 + 16))(v40, v44, v58, v59, v25, *(&v25 + 1), v56, v57);

      sub_1DA828324(v40, v44);
      goto LABEL_24;
    }

    if (!__OFSUB__(HIDWORD(v31), v31))
    {
      if (HIDWORD(v31) != v31)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DA8D3354()
{
  result = qword_1EE114560;
  if (!qword_1EE114560)
  {
    type metadata accessor for UserNotificationsCloudRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114560);
  }

  return result;
}

uint64_t sub_1DA8D33AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotificationsCloudRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8D3410(uint64_t a1)
{
  v2 = type metadata accessor for UserNotificationsCloudRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA8D346C(uint64_t a1)
{
  v2 = type metadata accessor for CloudAction(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA8D6770(a1, v4, type metadata accessor for CloudAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1DA8D67D8(v4, type metadata accessor for CloudAction);
      v6 = 0x80000001DA9540B0;
      v7 = 0xD000000000000012;
    }

    else
    {
      sub_1DA8D67D8(v4, type metadata accessor for CloudAction);
      v6 = 0xEF6E6F6974616369;
      v7 = 0x6669746F4E646461;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1DA8D67D8(v4, type metadata accessor for CloudAction);
    v7 = 0xD000000000000010;
    v6 = 0x80000001DA954090;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1DA8D67D8(v4, type metadata accessor for CloudAction);
    v6 = 0xED00006E6F697463;
    v7 = 0x416D726F66726570;
  }

  else
  {
    v6 = 0x80000001DA954070;
    sub_1DA8D67D8(v4, type metadata accessor for CloudAction);
    v7 = 0xD000000000000011;
  }

  MEMORY[0x1E1271BD0](v7, v6);
}

uint64_t AlertCoordinationMessage.init(notificationID:didAlert:date:result:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, __int16 *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v9 = type metadata accessor for AlertCoordinationMessage(0);
  v10 = *(v9 + 24);
  v11 = sub_1DA93FAF4();
  result = (*(*(v11 - 8) + 32))(a6 + v10, a4, v11);
  *(a6 + *(v9 + 28)) = v8;
  return result;
}

uint64_t sub_1DA8D371C()
{
  v1 = type metadata accessor for CloudAction(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA8D6770(v0, v3, type metadata accessor for CloudAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1DA8D67D8(v3, type metadata accessor for CloudAction);
      return 0xD000000000000012;
    }

    else
    {
      sub_1DA8D67D8(v3, type metadata accessor for CloudAction);
      return 0x6669746F4E646461;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1DA8D67D8(v3, type metadata accessor for CloudAction);
    return 0xD000000000000010;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1DA8D67D8(v3, type metadata accessor for CloudAction);
    return 0x416D726F66726570;
  }

  else
  {
    sub_1DA8D67D8(v3, type metadata accessor for CloudAction);
    return 0xD000000000000011;
  }
}

uint64_t AlertCoordinationMessage.notificationID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AlertCoordinationMessage.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlertCoordinationMessage(0) + 24);
  v4 = sub_1DA93FAF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AlertCoordinationMessage.result.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AlertCoordinationMessage(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AlertCoordinationMessage.description.getter()
{
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD000000000000010, 0x80000001DA955500);
  MEMORY[0x1E1271BD0](*v0, *(v0 + 8));
  MEMORY[0x1E1271BD0](0x656C41646964203BLL, 0xEC000000203A7472);
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E1271BD0](v1, v2);

  MEMORY[0x1E1271BD0](0x203A65746164203BLL, 0xE800000000000000);
  type metadata accessor for AlertCoordinationMessage(0);
  sub_1DA93FAF4();
  sub_1DA8D3F94(&qword_1EE114C88, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v3 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v3);

  MEMORY[0x1E1271BD0](0x746C75736572203BLL, 0xEA0000000000203ALL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD68F0, &qword_1DA960170);
  v4 = sub_1DA940A74();
  MEMORY[0x1E1271BD0](v4);

  return 0;
}

uint64_t sub_1DA8D3BC0()
{
  v1 = 0x6163696669746F6ELL;
  v2 = 1702125924;
  if (*v0 != 2)
  {
    v2 = 0x746C75736572;
  }

  if (*v0)
  {
    v1 = 0x7472656C41646964;
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

uint64_t sub_1DA8D3C3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DA8D76FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DA8D3C64(uint64_t a1)
{
  v2 = sub_1DA8D3F40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8D3CA0(uint64_t a1)
{
  v2 = sub_1DA8D3F40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlertCoordinationMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD68F8, &qword_1DA960178);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8D3F40();
  sub_1DA941834();
  v15 = 0;
  sub_1DA9415D4();
  if (!v2)
  {
    v14 = 1;
    sub_1DA9415E4();
    v10 = type metadata accessor for AlertCoordinationMessage(0);
    v13 = 2;
    sub_1DA93FAF4();
    sub_1DA8D3F94(&qword_1ECBD6908, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DA941604();
    v12 = *(v3 + *(v10 + 28));
    v11[9] = 3;
    sub_1DA8D3FDC();
    sub_1DA9415C4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1DA8D3F40()
{
  result = qword_1ECBD6900;
  if (!qword_1ECBD6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6900);
  }

  return result;
}

uint64_t sub_1DA8D3F94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DA8D3FDC()
{
  result = qword_1ECBD6910;
  if (!qword_1ECBD6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6910);
  }

  return result;
}

uint64_t AlertCoordinationMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_1DA93FAF4();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6918, &qword_1DA960180);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for AlertCoordinationMessage(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8D3F40();
  v20 = v8;
  v12 = v21;
  sub_1DA941804();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v18;
  v26 = 0;
  *v11 = sub_1DA941554();
  *(v11 + 1) = v14;
  v21 = v14;
  v25 = 1;
  v11[16] = sub_1DA941564() & 1;
  v24 = 2;
  sub_1DA8D3F94(&qword_1ECBD6920, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1DA941584();
  (*(v17 + 32))(&v11[*(v9 + 24)], v5, v3);
  v23 = 3;
  sub_1DA8D443C();
  sub_1DA941544();
  (*(v13 + 8))(v20, v19);
  *&v11[*(v9 + 28)] = v22;
  sub_1DA8D6770(v11, v16, type metadata accessor for AlertCoordinationMessage);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DA8D67D8(v11, type metadata accessor for AlertCoordinationMessage);
}

unint64_t sub_1DA8D443C()
{
  result = qword_1ECBD6928;
  if (!qword_1ECBD6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6928);
  }

  return result;
}

uint64_t sub_1DA8D44D0()
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8D4594(uint64_t a1)
{
  sub_1DA940AB4();
}

uint64_t sub_1DA8D4644(uint64_t a1)
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

unint64_t sub_1DA8D4704@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA8D7C04(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DA8D4734(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0xD000000000000010;
  v5 = 0x80000001DA9506B0;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000012;
    v5 = 0x80000001DA9506D0;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001DA950690;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1DA8D47B4()
{
  v1 = 1701869940;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

unint64_t sub_1DA8D4830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA8D7C04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA8D4858(uint64_t a1)
{
  v2 = sub_1DA8D7864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8D4894(uint64_t a1)
{
  v2 = sub_1DA8D7864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DA8D48D0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA8D7CA4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DA8D49AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for AlertCoordinationMessage(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v54[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6988, &unk_1DA960660);
  v64 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54[-v7];
  v9 = type metadata accessor for CloudAction(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1DA8D7864();
  v13 = v65;
  sub_1DA941804();
  if (!v13)
  {
    v65 = v9;
    v62 = v11;
    v14 = v64;
    LOBYTE(v71) = 0;
    sub_1DA8D78B8();
    sub_1DA941584();
    if (v67 <= 1u)
    {
      if (!v67)
      {
        LOBYTE(v71) = 1;
        v16 = sub_1DA83E640();
        sub_1DA941584();
        v61 = v16;
        v17 = v67;
        sub_1DA7AF3EC(0, &qword_1EE110C30, 0x1E696ACD0);
        sub_1DA7AF3EC(0, &unk_1EE110B90, off_1E85D5D70);
        v18 = sub_1DA940F44();
        v60 = v17 >> 64;
        v58 = v17;
        if (v18)
        {
          v59 = v18;
          LOBYTE(v71) = 2;
          sub_1DA941584();
          v35 = v67;
          sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
          v36 = sub_1DA940F44();
          v56 = 0;
          v57 = v36;
          sub_1DA828324(v35, *(&v35 + 1));
          v53 = v60;
          LOBYTE(v71) = 3;
          v37 = v56;
          sub_1DA941584();
          if (v37)
          {
            if (qword_1EE110D80 != -1)
            {
              swift_once();
            }

            v38 = sub_1DA9405A4();
            __swift_project_value_buffer(v38, qword_1EE11AD48);
            v39 = v59;
            v40 = sub_1DA940584();
            v41 = sub_1DA940F34();

            v61 = v40;
            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              *&v67 = v56;
              *v42 = 136315138;
              v43 = v39;
              v44 = [v43 description];
              v55 = sub_1DA940A14();
              v46 = v45;

              v47 = sub_1DA7AE6E8(v55, v46, &v67);

              *(v42 + 4) = v47;
              v48 = v61;
              _os_log_impl(&dword_1DA7A9000, v61, v41, "CloudAction: no communicationImage for: %s", v42, 0xCu);
              v49 = v56;
              __swift_destroy_boxed_opaque_existential_1(v56);
              MEMORY[0x1E12739F0](v49, -1, -1);
              MEMORY[0x1E12739F0](v42, -1, -1);
              sub_1DA828324(v58, v60);
            }

            else
            {
              sub_1DA828324(v58, v60);
            }

            (*(v14 + 8))(v8, v6);
            v50 = xmmword_1DA960160;
          }

          else
          {
            (*(v14 + 8))(v8, v6);
            sub_1DA828324(v58, v53);
            v50 = v67;
          }

          v25 = v62;
          v51 = v63;
          v52 = v57;
          *v62 = v59;
          v25[1] = v52;
          *(v25 + 1) = v50;
          swift_storeEnumTagMultiPayload();
          v27 = v51;
          goto LABEL_14;
        }

        sub_1DA8D7974();
        swift_allocError();
        *v32 = 0;
        swift_willThrow();
        v31 = v58;
        v33 = v60;
LABEL_27:
        sub_1DA828324(v31, v33);
        (*(v14 + 8))(v8, v6);
        return __swift_destroy_boxed_opaque_existential_1(v66);
      }

      LOBYTE(v71) = 1;
      sub_1DA83E640();
      sub_1DA941584();
      v19 = *(&v67 + 1);
      v22 = v67;
      sub_1DA7AF3EC(0, &qword_1EE110C30, 0x1E696ACD0);
      sub_1DA7AF3EC(0, &qword_1EE110B88, off_1E85D5D78);
      v23 = sub_1DA940F44();
      if (v23)
      {
        v28 = v23;
        (*(v14 + 8))(v8, v6);
        sub_1DA828324(v22, v19);
        v29 = v62;
        *v62 = v28;
        v25 = v29;
        goto LABEL_13;
      }

      sub_1DA8D7974();
      swift_allocError();
      *v34 = 0;
      swift_willThrow();
      v31 = v22;
    }

    else
    {
      if (v67 != 2)
      {
        if (v67 == 3)
        {
          LOBYTE(v71) = 1;
          sub_1DA865250();
          sub_1DA941584();
          (*(v14 + 8))(v8, v6);
          v24 = v68;
          v25 = v62;
          *v62 = v67;
          *(v25 + 1) = v24;
          v26 = v70;
          *(v25 + 2) = v69;
          *(v25 + 3) = v26;
        }

        else
        {
          LOBYTE(v67) = 1;
          sub_1DA8D3F94(&qword_1ECBD6998, type metadata accessor for AlertCoordinationMessage, &protocol conformance descriptor for AlertCoordinationMessage);
          sub_1DA941584();
          (*(v14 + 8))(v8, v6);
          v25 = v62;
          sub_1DA8D790C(v5, v62, type metadata accessor for AlertCoordinationMessage);
        }

        goto LABEL_13;
      }

      LOBYTE(v71) = 1;
      sub_1DA83E640();
      sub_1DA941584();
      v19 = *(&v67 + 1);
      v20 = v67;
      sub_1DA7AF3EC(0, &qword_1EE110C30, 0x1E696ACD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A08, &qword_1DA95C368);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1DA958370;
      *(v21 + 32) = sub_1DA7AF3EC(0, &qword_1EE110B80, 0x1E695DEC8);
      *(v21 + 40) = sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
      sub_1DA940F54();

      if (*(&v68 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7900, qword_1DA960078);
        if (swift_dynamicCast())
        {
          (*(v14 + 8))(v8, v6);
          sub_1DA828324(v20, v19);
          v25 = v62;
          *v62 = v71;
LABEL_13:
          swift_storeEnumTagMultiPayload();
          v27 = v63;
LABEL_14:
          sub_1DA8D790C(v25, v27, type metadata accessor for CloudAction);
          return __swift_destroy_boxed_opaque_existential_1(v66);
        }
      }

      else
      {
        sub_1DA896614(&v67);
      }

      sub_1DA8D7974();
      swift_allocError();
      *v30 = 1;
      swift_willThrow();
      v31 = v20;
    }

    v33 = v19;
    goto LABEL_27;
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

void sub_1DA8D55E0(void *a1)
{
  v2 = v1;
  v85 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for AlertCoordinationMessage(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CloudAction(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD69A8, &unk_1DA960670);
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v71 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8D7864();
  v75 = v12;
  sub_1DA941834();
  sub_1DA8D6770(v2, v9, type metadata accessor for CloudAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = *v9;
      v20 = *(v9 + 1);
      v21 = *(v9 + 2);
      v22 = *(v9 + 3);
      LOBYTE(v81) = 0;
      LOBYTE(v77) = 0;
      sub_1DA8D79C8();
      v23 = v74;
      v24 = v75;
      v25 = v72;
      sub_1DA941604();
      if (v25)
      {
        (*(v73 + 8))(v24, v23);
      }

      else
      {
        v42 = [v19 notificationRecord];
        [v42 setUserInfo_];

        v43 = objc_opt_self();
        *&v81 = 0;
        v44 = [v43 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v81];
        v45 = v81;
        if (!v44)
        {
          v58 = v45;
          sub_1DA93F8C4();

          swift_willThrow();
          sub_1DA852CB0(v21, v22);

          (*(v73 + 8))(v75, v74);
          return;
        }

        v72 = v21;
        v46 = sub_1DA93F9A4();
        v48 = v47;

        *&v81 = v46;
        *(&v81 + 1) = v48;
        LOBYTE(v77) = 1;
        sub_1DA83E88C();
        v49 = v74;
        sub_1DA941604();
        v60.n128_f64[0] = sub_1DA828324(v81, *(&v81 + 1));
        v21 = v72;
        if (v20)
        {
          *&v81 = 0;
          v61 = v20;
          v62 = v43;
          v63 = v61;
          v64 = [v62 archivedDataWithRootObject:v61 requiringSecureCoding:1 error:&v81];
          v65 = v81;
          if (!v64)
          {
            v70 = v65;
            sub_1DA93F8C4();

            swift_willThrow();
            sub_1DA852CB0(v21, v22);

            (*(v73 + 8))(v75, v49);
            return;
          }

          v66 = sub_1DA93F9A4();
          v68 = v67;

          *&v81 = v66;
          *(&v81 + 1) = v68;
          v49 = v74;
          v69 = v75;
          LOBYTE(v77) = 2;
          sub_1DA941604();
          sub_1DA828324(v81, *(&v81 + 1));

          v21 = v72;
        }

        else
        {
          v69 = v75;
        }

        if (v22 >> 60 == 15)
        {
          (*(v73 + 8))(v69, v49, v60);

          return;
        }

        *&v81 = v21;
        *(&v81 + 1) = v22;
        LOBYTE(v77) = 3;
        sub_1DA941604();
        (*(v73 + 8))(v69, v49);
      }

      sub_1DA852CB0(v21, v22);
      return;
    }

    v31 = *v9;
    LOBYTE(v81) = 1;
    LOBYTE(v77) = 0;
    sub_1DA8D79C8();
    v33 = v74;
    v32 = v75;
    v34 = v72;
    sub_1DA941604();
    if (v34)
    {
      (*(v73 + 8))(v32, v33);
    }

    else
    {
      v50 = [v31 notificationRecord];
      [v50 setUserInfo_];

      v51 = objc_opt_self();
      *&v81 = 0;
      v52 = [v51 archivedDataWithRootObject:v31 requiringSecureCoding:1 error:&v81];
      v53 = v81;
      if (v52)
      {
        v54 = sub_1DA93F9A4();
        v56 = v55;

        *&v81 = v54;
        *(&v81 + 1) = v56;
        LOBYTE(v77) = 1;
        sub_1DA83E88C();
        sub_1DA941604();

        sub_1DA828324(v81, *(&v81 + 1));
      }

      else
      {
        v59 = v53;
        sub_1DA93F8C4();

        swift_willThrow();
      }

      (*(v73 + 8))(v32, v33);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    LOBYTE(v81) = 2;
    LOBYTE(v77) = 0;
    sub_1DA8D79C8();
    v27 = v74;
    v26 = v75;
    v28 = v72;
    sub_1DA941604();
    if (v28)
    {
      (*(v73 + 8))(v26, v27);
    }

    else
    {
      v35 = objc_opt_self();
      sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
      v36 = sub_1DA940BD4();

      *&v81 = 0;
      v37 = [v35 archivedDataWithRootObject:v36 requiringSecureCoding:1 error:&v81];

      v38 = v81;
      if (v37)
      {
        v39 = sub_1DA93F9A4();
        v41 = v40;

        *&v81 = v39;
        *(&v81 + 1) = v41;
        LOBYTE(v77) = 1;
        sub_1DA83E88C();
        sub_1DA941604();
        sub_1DA828324(v81, *(&v81 + 1));
      }

      else
      {
        v57 = v38;
        sub_1DA93F8C4();

        swift_willThrow();
      }

      (*(v73 + 8))(v26, v27);
    }
  }

  else
  {
    v14 = v75;
    if (EnumCaseMultiPayload == 3)
    {
      v15 = *(v9 + 1);
      v81 = *v9;
      v82 = v15;
      v16 = *(v9 + 3);
      v83 = *(v9 + 2);
      v84 = v16;
      LOBYTE(v77) = 3;
      v76 = 0;
      sub_1DA8D79C8();
      v17 = v74;
      v18 = v72;
      sub_1DA941604();
      if (!v18)
      {
        v77 = v81;
        v78 = v82;
        v79 = v83;
        v80 = v84;
        v76 = 1;
        sub_1DA864940();
        sub_1DA941604();
      }

      (*(v73 + 8))(v14, v17);
      sub_1DA84A040(&v81);
    }

    else
    {
      sub_1DA8D790C(v9, v6, type metadata accessor for AlertCoordinationMessage);
      LOBYTE(v81) = 4;
      LOBYTE(v77) = 0;
      sub_1DA8D79C8();
      v29 = v74;
      v30 = v72;
      sub_1DA941604();
      if (!v30)
      {
        LOBYTE(v81) = 1;
        sub_1DA8D3F94(&qword_1ECBD69B0, type metadata accessor for AlertCoordinationMessage, &protocol conformance descriptor for AlertCoordinationMessage);
        sub_1DA941604();
      }

      sub_1DA8D67D8(v6, type metadata accessor for AlertCoordinationMessage);
      (*(v73 + 8))(v14, v29);
    }
  }
}

uint64_t sub_1DA8D5FF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F69746361;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x80000001DA950340;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6F69746361;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0x80000001DA950340;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DA941684();
  }

  return v8 & 1;
}

uint64_t sub_1DA8D60A0()
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8D6124(uint64_t a1)
{
  sub_1DA940AB4();
}

uint64_t sub_1DA8D6194(uint64_t a1)
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8D6214@<X0>(char *a2@<X8>)
{
  v3 = sub_1DA9414F4();

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

void sub_1DA8D6274(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DA950340;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x6E6F69746361;
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1DA8D62B4()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1DA8D62F0@<X0>(char *a3@<X8>)
{
  v4 = sub_1DA9414F4();

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

uint64_t sub_1DA8D6354(uint64_t a1)
{
  v2 = sub_1DA8D671C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8D6390(uint64_t a1)
{
  v2 = sub_1DA8D671C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserNotificationsCloudRecord.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for CloudAction(0);
  MEMORY[0x1EEE9AC00](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6930, &qword_1DA960188);
  v17 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v14 - v6;
  v8 = type metadata accessor for UserNotificationsCloudRecord(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8D671C();
  sub_1DA941804();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v11 = v17;
  v21 = 0;
  *v10 = sub_1DA941554();
  v10[1] = v12;
  v14 = v12;
  v20 = 1;
  sub_1DA8D3F94(&qword_1ECBD6938, type metadata accessor for CloudAction, &unk_1DA960598);
  sub_1DA941584();
  (*(v11 + 8))(v7, v19);
  sub_1DA8D790C(v5, v10 + *(v15 + 20), type metadata accessor for CloudAction);
  sub_1DA8D6770(v10, v16, type metadata accessor for UserNotificationsCloudRecord);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DA8D67D8(v10, type metadata accessor for UserNotificationsCloudRecord);
}

unint64_t sub_1DA8D671C()
{
  result = qword_1EE114578[0];
  if (!qword_1EE114578[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE114578);
  }

  return result;
}

uint64_t sub_1DA8D6770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA8D67D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UserNotificationsCloudRecord.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6940, &qword_1DA960190);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8D671C();
  sub_1DA941834();
  v8[15] = 0;
  sub_1DA9415D4();
  if (!v1)
  {
    type metadata accessor for UserNotificationsCloudRecord(0);
    v8[14] = 1;
    type metadata accessor for CloudAction(0);
    sub_1DA8D3F94(&qword_1EE113C70, type metadata accessor for CloudAction, &unk_1DA960570);
    sub_1DA941604();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DA8D6A20()
{
  v1 = v0;
  v2 = type metadata accessor for AlertCoordinationMessage(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CloudAction(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA8D6770(v1, v7, type metadata accessor for CloudAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v24 = *v7;
      *&v36 = 0;
      *(&v36 + 1) = 0xE000000000000000;
      sub_1DA941364();

      *&v36 = 0xD000000000000013;
      *(&v36 + 1) = 0x80000001DA955560;
      v25 = [v24 notificationRecord];
      v26 = [v25 identifier];

      if (v26)
      {
        v27 = sub_1DA940A14();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      *&v34[0] = v27;
      *(&v34[0] + 1) = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
      v33 = sub_1DA940A74();
      MEMORY[0x1E1271BD0](v33);

      MEMORY[0x1E1271BD0](41, 0xE100000000000000);
    }

    else
    {
      v12 = *v7;
      v13 = *(v7 + 1);
      sub_1DA852CB0(*(v7 + 2), *(v7 + 3));
      *&v36 = 0;
      *(&v36 + 1) = 0xE000000000000000;
      sub_1DA941364();

      *&v36 = 0xD000000000000010;
      *(&v36 + 1) = 0x80000001DA955580;
      v14 = [v12 notificationRecord];
      v15 = [v14 identifier];

      if (v15)
      {
        v16 = sub_1DA940A14();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      *&v34[0] = v16;
      *(&v34[0] + 1) = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
      v30 = sub_1DA940A74();
      MEMORY[0x1E1271BD0](v30);

      MEMORY[0x1E1271BD0](0x6E6974746573202CLL, 0xEC000000203F7367);
      if (v13)
      {
        v31 = 7562617;
      }

      else
      {
        v31 = 28526;
      }

      if (v13)
      {
        v32 = 0xE300000000000000;
      }

      else
      {
        v32 = 0xE200000000000000;
      }

      MEMORY[0x1E1271BD0](v31, v32);

      MEMORY[0x1E1271BD0](694100012, 0xE400000000000000);
    }

    return v36;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v19 = *v7;
    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;
    sub_1DA941364();

    *&v36 = 0xD000000000000011;
    *(&v36 + 1) = 0x80000001DA955540;
    if (v19 >> 62)
    {
      v20 = sub_1DA941264();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v34[0] = v20;
    v21 = sub_1DA941614();
    MEMORY[0x1E1271BD0](v21);

    MEMORY[0x1E1271BD0](0x726F676574616320, 0xEC00000029736569);
    return v36;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v9 = *(v7 + 1);
    v36 = *v7;
    v37 = v9;
    v10 = *(v7 + 3);
    v38 = *(v7 + 2);
    v39 = v10;
    *&v34[0] = 0;
    *(&v34[0] + 1) = 0xE000000000000000;
    sub_1DA941364();
    v35 = v34[0];
    MEMORY[0x1E1271BD0](0x416D726F66726570, 0xEE00286E6F697463);
    v34[0] = v36;
    v34[1] = v37;
    v34[2] = v38;
    v34[3] = v39;
    sub_1DA941494();
    sub_1DA84A040(&v36);
    MEMORY[0x1E1271BD0](41, 0xE100000000000000);
    return v35;
  }

  else
  {
    sub_1DA8D790C(v7, v4, type metadata accessor for AlertCoordinationMessage);
    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;
    sub_1DA941364();

    *&v36 = 0xD000000000000012;
    *(&v36 + 1) = 0x80000001DA955520;
    v22 = AlertCoordinationMessage.description.getter();
    MEMORY[0x1E1271BD0](v22);

    MEMORY[0x1E1271BD0](41, 0xE100000000000000);
    v23 = v36;
    sub_1DA8D67D8(v4, type metadata accessor for AlertCoordinationMessage);
    return v23;
  }
}

uint64_t UserNotificationsCloudRecord.description.getter()
{
  MEMORY[0x1E1271BD0](*v0, v0[1]);
  MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
  v1 = type metadata accessor for UserNotificationsCloudRecord(0);
  sub_1DA8D346C(v0 + *(v1 + 20));
  return 0;
}

uint64_t UserNotificationsCloudRecord.debugDescription.getter()
{
  v3 = *v0;

  MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
  type metadata accessor for UserNotificationsCloudRecord(0);
  v1 = sub_1DA8D6A20();
  MEMORY[0x1E1271BD0](v1);

  return v3;
}

uint64_t sub_1DA8D7054(uint64_t a1)
{
  MEMORY[0x1E1271BD0](*v1, v1[1]);
  MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
  sub_1DA8D346C(v1 + *(a1 + 20));
  return 0;
}

uint64_t sub_1DA8D70C0()
{
  v3 = *v0;

  MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
  v1 = sub_1DA8D6A20();
  MEMORY[0x1E1271BD0](v1);

  return v3;
}

void sub_1DA8D7170(uint64_t a1)
{
  sub_1DA93FAF4();
  if (v1 <= 0x3F)
  {
    sub_1DA8D720C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DA8D720C()
{
  if (!qword_1ECBD6948)
  {
    v0 = sub_1DA941134();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBD6948);
    }
  }
}

uint64_t sub_1DA8D7284(uint64_t a1)
{
  result = type metadata accessor for CloudAction(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DA8D7310(uint64_t a1)
{
  sub_1DA8D73C4(319);
  if (v1 <= 0x3F)
  {
    sub_1DA7AF3EC(319, &qword_1EE110B88, off_1E85D5D78);
    if (v2 <= 0x3F)
    {
      sub_1DA8D7474(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AlertCoordinationMessage(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1DA8D73C4(uint64_t a1)
{
  if (!qword_1ECBD6950)
  {
    sub_1DA7AF3EC(255, &unk_1EE110B90, off_1E85D5D70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD5900, &qword_1DA95C200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6958, &qword_1DA960370);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECBD6950);
    }
  }
}

void sub_1DA8D7474(uint64_t a1)
{
  if (!qword_1ECBD6960)
  {
    sub_1DA7AF3EC(255, &qword_1EE114D80, off_1E85D5C60);
    v1 = sub_1DA940C24();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBD6960);
    }
  }
}

unint64_t sub_1DA8D74F0()
{
  result = qword_1ECBD6968;
  if (!qword_1ECBD6968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6968);
  }

  return result;
}

unint64_t sub_1DA8D7548()
{
  result = qword_1ECBD6970;
  if (!qword_1ECBD6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6970);
  }

  return result;
}

unint64_t sub_1DA8D75A0()
{
  result = qword_1EE114568;
  if (!qword_1EE114568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114568);
  }

  return result;
}

unint64_t sub_1DA8D75F8()
{
  result = qword_1EE114570;
  if (!qword_1EE114570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114570);
  }

  return result;
}

unint64_t sub_1DA8D7650()
{
  result = qword_1ECBD6978;
  if (!qword_1ECBD6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6978);
  }

  return result;
}

unint64_t sub_1DA8D76A8()
{
  result = qword_1ECBD6980;
  if (!qword_1ECBD6980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6980);
  }

  return result;
}

uint64_t sub_1DA8D76FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696669746F6ELL && a2 == 0xEE0044496E6F6974;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7472656C41646964 && a2 == 0xE800000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DA941684();

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

unint64_t sub_1DA8D7864()
{
  result = qword_1EE113C88;
  if (!qword_1EE113C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE113C88);
  }

  return result;
}

unint64_t sub_1DA8D78B8()
{
  result = qword_1ECBD6990;
  if (!qword_1ECBD6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6990);
  }

  return result;
}

uint64_t sub_1DA8D790C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DA8D7974()
{
  result = qword_1ECBD69A0;
  if (!qword_1ECBD69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD69A0);
  }

  return result;
}

unint64_t sub_1DA8D79C8()
{
  result = qword_1EE113C98[0];
  if (!qword_1EE113C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE113C98);
  }

  return result;
}

unint64_t sub_1DA8D7A50()
{
  result = qword_1ECBD69B8;
  if (!qword_1ECBD69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD69B8);
  }

  return result;
}

unint64_t sub_1DA8D7AA8()
{
  result = qword_1ECBD69C0;
  if (!qword_1ECBD69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD69C0);
  }

  return result;
}

unint64_t sub_1DA8D7B00()
{
  result = qword_1ECBD69C8;
  if (!qword_1ECBD69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD69C8);
  }

  return result;
}

unint64_t sub_1DA8D7B58()
{
  result = qword_1EE113C78;
  if (!qword_1EE113C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE113C78);
  }

  return result;
}

unint64_t sub_1DA8D7BB0()
{
  result = qword_1EE113C80;
  if (!qword_1EE113C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE113C80);
  }

  return result;
}

unint64_t sub_1DA8D7C04(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA9414F4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DA8D7C50()
{
  result = qword_1EE113C90;
  if (!qword_1EE113C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE113C90);
  }

  return result;
}

unint64_t sub_1DA8D7CA4(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t static SpotlightReader.readAllExistingSummaries()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA8D7D60;

  return sub_1DA8D7E78();
}

uint64_t sub_1DA8D7D60(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1DA8D7E94(uint64_t a1)
{
  if (UNCCatchMe() && (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0() & 1) != 0)
  {
    v1[2] = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
    v2 = swift_allocObject();
    v1[3] = v2;
    *(v2 + 16) = xmmword_1DA960970;
    if (qword_1EE115568 != -1)
    {
      swift_once();
    }

    v3 = unk_1EE11B030;
    *(v2 + 32) = qword_1EE11B028;
    *(v2 + 40) = v3;
    v4 = qword_1EE115580;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = unk_1EE11B060;
    *(v2 + 48) = qword_1EE11B058;
    *(v2 + 56) = v5;
    v6 = qword_1EE115578;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = unk_1EE11B050;
    *(v2 + 64) = qword_1EE11B048;
    *(v2 + 72) = v7;
    v8 = qword_1EE115570;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = unk_1EE11B040;
    *(v2 + 80) = qword_1EE11B038;
    *(v2 + 88) = v9;
    v10 = qword_1EE115558;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = unk_1EE11B010;
    *(v2 + 96) = qword_1EE11B008;
    *(v2 + 104) = v11;
    v12 = qword_1EE112AA8;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = unk_1EE11AED0;
    *(v2 + 112) = qword_1EE11AEC8;
    *(v2 + 120) = v13;

    v14 = swift_task_alloc();
    v1[4] = v14;
    *v14 = v1;
    v14[1] = sub_1DA8D818C;

    return sub_1DA835894(1, v2);
  }

  else
  {
    sub_1DA8D87E8();
    swift_allocError();
    swift_willThrow();
    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_1DA8D818C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_1DA8D8794;
  }

  else
  {
    v4 = sub_1DA8D82C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DA8D82C0()
{
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    goto LABEL_41;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = *(v0 + 40); v2; i = *(v0 + 40))
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v42 = v1 & 0xFFFFFFFFFFFFFF8;
    v40 = MEMORY[0x1E69E7CC0];
    v41 = i + 32;
    v1 = &selRef_imageDataForContentURL_;
    v6 = &selRef_imageDataForContentURL_;
    v43 = v5;
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x1E1272460](v4, *(v0 + 40));
      }

      else
      {
        if (v4 >= *(v42 + 16))
        {
          goto LABEL_40;
        }

        v7 = *(v41 + 8 * v4);
      }

      v8 = v7;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v10 = [v7 *(v1 + 3792)];
      v11 = [v10 v6[53]];

      if (!v11)
      {
        goto LABEL_5;
      }

      v12 = [v8 *(v1 + 3792)];
      v13 = [v12 providerDataTypeIdentifiers];

      if (v13)
      {
        v46 = v8;
        v47 = v11;
        v14 = sub_1DA940BE4();

        v15 = 0;
        v1 = *(v14 + 16);
        v16 = v14 + 40;
        v17 = MEMORY[0x1E69E7CC0];
LABEL_14:
        v18 = v16;
        v19 = v16 + 16 * v15;
        while (v1 != v15)
        {
          if (v15 >= *(v14 + 16))
          {
            __break(1u);
            goto LABEL_39;
          }

          v0 = v19 + 16;
          ++v15;

          v20 = sub_1DA93FE94();
          v22 = v21;

          v19 = v0;
          if (v22)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1DA7B6928(0, *(v17 + 2) + 1, 1, v17);
            }

            v0 = *(v17 + 2);
            v23 = *(v17 + 3);
            if (v0 >= v23 >> 1)
            {
              v17 = sub_1DA7B6928((v23 > 1), v0 + 1, 1, v17);
            }

            *(v17 + 2) = v0 + 1;
            v24 = &v17[16 * v0];
            *(v24 + 4) = v20;
            *(v24 + 5) = v22;
            v16 = v18;
            goto LABEL_14;
          }
        }

        if (*(v17 + 2))
        {
          v25 = [v46 uniqueIdentifier];
          if (!v25)
          {
            sub_1DA940A14();
            v25 = sub_1DA940A04();
          }

          v26 = [v46 attributeSet];
          v27 = [v26 threadIdentifier];

          if (v27)
          {
            sub_1DA940A14();
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }

          v30 = [v46 attributeSet];
          v31 = [v30 summarizationContentTopLine];

          v32 = v31;
          v33 = sub_1DA940BD4();

          if (v29)
          {
            v34 = sub_1DA940A04();
          }

          else
          {
            v34 = 0;
          }

          v35 = [objc_allocWithZone(UNCSummary) initWithBundleIdentifier:v47 requestIdentifiers:v33 spotlightIdentifier:v25 groupSummary:1 content:v32 threadIdentifier:v34];

          v36 = v35;
          v0 = v45;
          MEMORY[0x1E1271CA0]();
          if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DA940C04();
          }

          sub_1DA940C14();

          v40 = v45[2];
        }

        else
        {

          v0 = v45;
        }

        v5 = v43;
        v2 = v44;
        v1 = 0x1E85D9000;
        v6 = &selRef_imageDataForContentURL_;
        if (v4 == v44)
        {
LABEL_37:
          v37 = v40;
          goto LABEL_43;
        }
      }

      else
      {

LABEL_5:
        if (v4 == v2)
        {
          goto LABEL_37;
        }
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v2 = sub_1DA941264();
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_43:

  v38 = *(v0 + 8);

  return v38(v37);
}

unint64_t sub_1DA8D87E8()
{
  result = qword_1EE1133D8;
  if (!qword_1EE1133D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1133D8);
  }

  return result;
}

unint64_t sub_1DA8D8850()
{
  result = qword_1ECBD69D0;
  if (!qword_1ECBD69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD69D0);
  }

  return result;
}

uint64_t sub_1DA8D88C8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB0, qword_1DA95D940);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1DA8D8974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA8D8998, 0, 0);
}

uint64_t sub_1DA8D8998()
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v1 = *(v0 + 168);
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v24 = *(v0 + 160);

    MEMORY[0x1E1271BD0](58, 0xE100000000000000);
    MEMORY[0x1E1271BD0](v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1DA960970;
    if (qword_1EE115568 != -1)
    {
      swift_once();
    }

    v5 = unk_1EE11B030;
    *(v4 + 32) = qword_1EE11B028;
    *(v4 + 40) = v5;
    v6 = qword_1EE115558;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = unk_1EE11B010;
    *(v4 + 48) = qword_1EE11B008;
    *(v4 + 56) = v7;
    v8 = qword_1EE115570;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = unk_1EE11B040;
    *(v4 + 64) = qword_1EE11B038;
    *(v4 + 72) = v9;
    v10 = qword_1EE115580;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = unk_1EE11B060;
    *(v4 + 80) = qword_1EE11B058;
    *(v4 + 88) = v11;
    v12 = qword_1EE115578;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = unk_1EE11B050;
    *(v4 + 96) = qword_1EE11B048;
    *(v4 + 104) = v13;
    v14 = qword_1EE115548;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 160);
    v16 = unk_1EE11B000;
    *(v4 + 112) = qword_1EE11AFF8;
    *(v4 + 120) = v16;
    *(v0 + 80) = 0;
    *(v0 + 88) = v24;
    *(v0 + 96) = v1;
    *(v0 + 104) = 0;
    *(v0 + 112) = v15;
    *(v0 + 120) = v1;
    *(v0 + 128) = v4;
    *(v0 + 136) = MEMORY[0x1E69E7CC0];
    v17 = *(v0 + 80);
    v18 = *(v0 + 96);
    v19 = *(v0 + 128);
    *(v0 + 48) = *(v0 + 112);
    *(v0 + 64) = v19;
    *(v0 + 16) = v17;
    *(v0 + 32) = v18;

    v20 = swift_task_alloc();
    *(v0 + 176) = v20;
    *v20 = v0;
    v20[1] = sub_1DA8D8D08;

    return sub_1DA835BD8(v0 + 16);
  }

  else
  {
    sub_1DA8D9780();
    swift_allocError();
    *v22 = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0;
    *(v22 + 40) = 4;
    swift_willThrow();
    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1DA8D8D08(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_1DA8DB008;
  }

  else
  {
    sub_1DA88395C(v3 + 80);
    v4 = sub_1DA8D8E24;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1DA8D8E24()
{
  v1 = v0[23];
  if (v1 >> 62)
  {
    v2 = sub_1DA941264();
    if (v2 != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 != 1)
    {
LABEL_3:
      if (v2)
      {
        v9 = v0[20];
        v8 = v0[21];
        v11 = v0[18];
        v10 = v0[19];

        sub_1DA8D9780();
        swift_allocError();
        *v12 = v11;
        *(v12 + 8) = v10;
        *(v12 + 16) = v9;
        *(v12 + 24) = v8;
        *(v12 + 32) = v2;
        *(v12 + 40) = 3;
        swift_willThrow();
      }

      else
      {
        v4 = v0[20];
        v3 = v0[21];
        v6 = v0[18];
        v5 = v0[19];

        sub_1DA8D9780();
        swift_allocError();
        *v7 = v6;
        *(v7 + 8) = v5;
        *(v7 + 16) = v4;
        *(v7 + 24) = v3;
        *(v7 + 32) = 0;
        *(v7 + 40) = 2;
        swift_willThrow();
      }

      v13 = v0[1];

      v13();
      return;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1E1272460](0, v0[23]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v0[23] + 32);
  }

  v15 = v0[1];

  v15(v14);
}

uint64_t sub_1DA8D9020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v11 = swift_task_alloc();
  v6[20] = v11;
  *v11 = v6;
  v11[1] = sub_1DA8D90D8;

  return sub_1DA8D8974(a1, a2, a3, a4);
}

uint64_t sub_1DA8D90D8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA8D920C, 0, 0);
  }
}

uint64_t sub_1DA8D920C()
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v1 = *(v0 + 168);
    [v1 setIsUpdate_];
    v2 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v3 = sub_1DA940A04();

    v4 = [v2 initWithString_];

    v5 = [v1 attributeSet];
    [v5 setSummarizationContentTopLine_];

    v6 = [v1 attributeSet];
    [v6 setSummarizationStatus_];

    v7 = *MEMORY[0x1E696A388];
    v8 = objc_allocWithZone(MEMORY[0x1E6964E78]);
    v9 = v7;
    v10 = sub_1DA940A04();
    v11 = sub_1DA940A04();
    v12 = [v8 initWithName:v10 protectionClass:v9 bundleIdentifier:v11];
    *(v0 + 176) = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DA9593A0;
    *(v13 + 32) = v1;
    sub_1DA7B9060();
    v14 = v1;
    v15 = sub_1DA940BD4();
    *(v0 + 184) = v15;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1DA8D9580;
    v16 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD69E0, &qword_1DA960AD0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1DA8D88C8;
    *(v0 + 104) = &block_descriptor_20;
    *(v0 + 112) = v16;
    [v12 indexSearchableItems:v15 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    sub_1DA8D9780();
    swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0;
    *(v17 + 40) = 4;
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1DA8D9580()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1DA8D9700;
  }

  else
  {
    v2 = sub_1DA8D9690;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA8D9690()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DA8D9700(uint64_t a1)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 176);
  swift_willThrow();

  v4 = *(v1 + 8);

  return v4();
}

unint64_t sub_1DA8D9780()
{
  result = qword_1ECBD69D8;
  if (!qword_1ECBD69D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD69D8);
  }

  return result;
}

uint64_t sub_1DA8D97D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA8D97F8, 0, 0);
}

uint64_t sub_1DA8D97F8()
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1DA960970;
    if (qword_1EE115568 != -1)
    {
      swift_once();
    }

    v4 = unk_1EE11B030;
    *(v3 + 32) = qword_1EE11B028;
    *(v3 + 40) = v4;
    v5 = qword_1EE115558;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = unk_1EE11B010;
    *(v3 + 48) = qword_1EE11B008;
    *(v3 + 56) = v6;
    v7 = qword_1EE115570;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = unk_1EE11B040;
    *(v3 + 64) = qword_1EE11B038;
    *(v3 + 72) = v8;
    v9 = qword_1EE115580;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = unk_1EE11B060;
    *(v3 + 80) = qword_1EE11B058;
    *(v3 + 88) = v10;
    v11 = qword_1EE115578;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = unk_1EE11B050;
    *(v3 + 96) = qword_1EE11B048;
    *(v3 + 104) = v12;
    v13 = qword_1EE115548;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 160);
    v15 = *(v0 + 144);
    v16 = unk_1EE11B000;
    *(v3 + 112) = qword_1EE11AFF8;
    *(v3 + 120) = v16;
    *(v0 + 80) = 1;
    *(v0 + 88) = v15;
    *(v0 + 96) = v2;
    *(v0 + 104) = 0;
    *(v0 + 112) = v14;
    *(v0 + 120) = v1;
    *(v0 + 128) = v3;
    *(v0 + 136) = MEMORY[0x1E69E7CC0];
    v17 = *(v0 + 80);
    v18 = *(v0 + 96);
    v19 = *(v0 + 128);
    *(v0 + 48) = *(v0 + 112);
    *(v0 + 64) = v19;
    *(v0 + 16) = v17;
    *(v0 + 32) = v18;

    v20 = swift_task_alloc();
    *(v0 + 176) = v20;
    *v20 = v0;
    v20[1] = sub_1DA8D9B48;

    return sub_1DA835BD8(v0 + 16);
  }

  else
  {
    sub_1DA8D9780();
    swift_allocError();
    *v22 = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0;
    *(v22 + 40) = 4;
    swift_willThrow();
    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1DA8D9B48(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_1DA8D9E5C;
  }

  else
  {
    sub_1DA88395C(v3 + 80);
    v4 = sub_1DA8D9C64;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1DA8D9C64()
{
  v1 = v0[23];
  if (v1 >> 62)
  {
    v2 = sub_1DA941264();
    if (v2 != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 != 1)
    {
LABEL_3:
      if (v2)
      {
        v9 = v0[20];
        v8 = v0[21];
        v11 = v0[18];
        v10 = v0[19];

        sub_1DA8D9780();
        swift_allocError();
        *v12 = v11;
        *(v12 + 8) = v10;
        *(v12 + 16) = v9;
        *(v12 + 24) = v8;
        *(v12 + 32) = v2;
        *(v12 + 40) = 1;
        swift_willThrow();
      }

      else
      {
        v4 = v0[20];
        v3 = v0[21];
        v6 = v0[18];
        v5 = v0[19];

        sub_1DA8D9780();
        swift_allocError();
        *v7 = v6;
        *(v7 + 8) = v5;
        *(v7 + 16) = v4;
        *(v7 + 24) = v3;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        swift_willThrow();
      }

      v13 = v0[1];

      v13();
      return;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1E1272460](0, v0[23]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v0[23] + 32);
  }

  v15 = v0[1];

  v15(v14);
}

uint64_t sub_1DA8D9E5C()
{
  sub_1DA88395C(v0 + 80);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA8D9EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v9 = sub_1DA93FAF4();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[25] = v10;
  *v10 = v4;
  v10[1] = sub_1DA8D9FD8;

  return sub_1DA8D97D4(a1, a2, a3, a4);
}

uint64_t sub_1DA8D9FD8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 208) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA8DA128, 0, 0);
  }
}

uint64_t sub_1DA8DA128()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD000000000000020, 0x80000001DA955600);
  MEMORY[0x1E1271BD0](v7, v6);
  MEMORY[0x1E1271BD0](0xD000000000000016, 0x80000001DA955630);
  MEMORY[0x1E1271BD0](v5, v4);
  MEMORY[0x1E1271BD0](544497952, 0xE400000000000000);
  sub_1DA93FAC4();
  sub_1DA831984();
  v8 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v8);

  (*(v2 + 8))(v1, v3);
  MEMORY[0x1E1271BD0](46, 0xE100000000000000);
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;

  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v9 = *(v0 + 208);
    [v9 setIsUpdate_];
    v10 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v11 = sub_1DA940A04();

    v12 = [v10 initWithString_];

    v13 = [v9 attributeSet];
    [v13 setSummarizationContentTopLine_];

    v14 = [v9 attributeSet];
    [v14 setSummarizationStatus_];

    v15 = *MEMORY[0x1E696A388];
    v16 = objc_allocWithZone(MEMORY[0x1E6964E78]);
    v17 = v15;
    v18 = sub_1DA940A04();
    v19 = sub_1DA940A04();
    v20 = [v16 initWithName:v18 protectionClass:v17 bundleIdentifier:v19];
    *(v0 + 232) = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1DA9593A0;
    *(v21 + 32) = v9;
    sub_1DA7B9060();
    v22 = v9;
    v23 = sub_1DA940BD4();
    *(v0 + 240) = v23;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1DA8DA5B0;
    v24 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD69E0, &qword_1DA960AD0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1DA8D88C8;
    *(v0 + 104) = &block_descriptor_9_1;
    *(v0 + 112) = v24;
    [v20 indexSearchableItems:v23 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {

    sub_1DA8D9780();
    swift_allocError();
    *v25 = 0u;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0;
    *(v25 + 40) = 4;
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1DA8DA5B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {

    v2 = sub_1DA8DA758;
  }

  else
  {
    v2 = sub_1DA8DA6C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA8DA6C8()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[26];

  v4 = v0[1];
  v5 = v0[27];
  v6 = v0[28];

  return v4(v5, v6);
}

uint64_t sub_1DA8DA758(uint64_t a1)
{
  v2 = *(v1 + 240);
  v3 = *(v1 + 232);
  swift_willThrow();

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1DA8DA7F0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 184) = a1;
  v10 = swift_task_alloc();
  *(v5 + 144) = v10;
  *v10 = v5;
  v10[1] = sub_1DA8DA8A8;

  return sub_1DA8D8974(a2, a3, a4, a5);
}

uint64_t sub_1DA8DA8A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA8DA9DC, 0, 0);
  }
}

uint64_t sub_1DA8DA9DC()
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v1 = *(v0 + 152);
    v2 = *(v0 + 184);
    [v1 setIsUpdate_];
    v3 = [v1 attributeSet];
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v3 setIsUrgent_];

    v5 = *MEMORY[0x1E696A388];
    v6 = objc_allocWithZone(MEMORY[0x1E6964E78]);
    v7 = v5;
    v8 = sub_1DA940A04();
    v9 = sub_1DA940A04();
    v10 = [v6 initWithName:v8 protectionClass:v7 bundleIdentifier:v9];
    *(v0 + 160) = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DA9593A0;
    *(v11 + 32) = v1;
    sub_1DA7B9060();
    v12 = v1;
    v13 = sub_1DA940BD4();
    *(v0 + 168) = v13;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1DA8DACFC;
    v14 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD69E0, &qword_1DA960AD0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1DA8D88C8;
    *(v0 + 104) = &block_descriptor_16_0;
    *(v0 + 112) = v14;
    [v10 indexSearchableItems:v13 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    sub_1DA8D9780();
    swift_allocError();
    *v15 = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0;
    *(v15 + 40) = 4;
    swift_willThrow();

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1DA8DACFC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1DA8DAE7C;
  }

  else
  {
    v2 = sub_1DA8DAE0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA8DAE0C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DA8DAE7C(uint64_t a1)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 160);
  swift_willThrow();

  v4 = *(v1 + 8);

  return v4();
}

uint64_t get_enum_tag_for_layout_string_21UserNotificationsCore15SpotlightWriterC0E5Error33_F1751C88FCC2022EBA4273B7444D478ALLO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DA8DAF2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DA8DAF74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DA8DAFC4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1DA8DB00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DA822F48(a3, v25 - v10, &qword_1ECBD4FA0, &unk_1DA958730);
  v12 = sub_1DA940D34();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DA7BA120(v11, &qword_1ECBD4FA0, &unk_1DA958730);
  }

  else
  {
    sub_1DA940D24();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DA940C34();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DA940A94() + 32;
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

      sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);

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

  sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);
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

uint64_t sub_1DA8DB30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DA822F48(a3, v25 - v10, &qword_1ECBD4FA0, &unk_1DA958730);
  v12 = sub_1DA940D34();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DA7BA120(v11, &qword_1ECBD4FA0, &unk_1DA958730);
  }

  else
  {
    sub_1DA940D24();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DA940C34();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DA940A94() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57B0, &qword_1DA95BE30);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);

      return v22;
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

  sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57B0, &qword_1DA95BE30);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1DA8DB620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DA822F48(a3, v25 - v10, &qword_1ECBD4FA0, &unk_1DA958730);
  v12 = sub_1DA940D34();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DA7BA120(v11, &qword_1ECBD4FA0, &unk_1DA958730);
  }

  else
  {
    sub_1DA940D24();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DA940C34();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DA940A94() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AF0, qword_1DA95DAE0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);

      return v22;
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

  sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AF0, qword_1DA95DAE0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1DA8DB934(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DA941224();
    sub_1DA7AF3EC(0, &qword_1EE110BD8, 0x1E69CDE28);
    sub_1DA8E5878();
    sub_1DA940EC4();
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v21 = MEMORY[0x1E69E7CC0];
  while (v2 < 0)
  {
    if (!sub_1DA941294() || (sub_1DA7AF3EC(0, &qword_1EE110BD8, 0x1E69CDE28), swift_dynamicCast(), (v12 = v27) == 0))
    {
LABEL_24:
      sub_1DA830720(v2);
      return;
    }

LABEL_17:
    v13 = [v12 idsDeviceID];
    if (v13)
    {
      v14 = v13;
      v20 = sub_1DA940A14();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1DA7B6928(0, *(v21 + 2) + 1, 1, v21);
      }

      v18 = *(v21 + 2);
      v17 = *(v21 + 3);
      if (v18 >= v17 >> 1)
      {
        v21 = sub_1DA7B6928((v17 > 1), v18 + 1, 1, v21);
      }

      *(v21 + 2) = v18 + 1;
      v19 = &v21[16 * v18];
      *(v19 + 4) = v20;
      *(v19 + 5) = v16;
    }

    else
    {
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_13:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t RemoteNotificationsProperties.Role.rawValue.getter()
{
  if (*v0)
  {
    return 0x7265766965636572;
  }

  else
  {
    return 0x7265646E6573;
  }
}

uint64_t RemoteNotificationsProperties.__allocating_init(_:idsService:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  RemoteNotificationsProperties.init(_:idsService:)(a1, a2, a3);
  return v6;
}

UserNotificationsCore::RemoteNotificationsProperties::Role_optional __swiftcall RemoteNotificationsProperties.Role.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DA9414F4();

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

  *v2 = v5;
  return result;
}

uint64_t sub_1DA8DBCC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265766965636572;
  }

  else
  {
    v3 = 0x7265646E6573;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7265766965636572;
  }

  else
  {
    v5 = 0x7265646E6573;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DA941684();
  }

  return v8 & 1;
}

uint64_t sub_1DA8DBD64()
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8DBDE4(uint64_t a1)
{
  sub_1DA940AB4();
}

uint64_t sub_1DA8DBE50(uint64_t a1)
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8DBECC@<X0>(char *a2@<X8>)
{
  v3 = sub_1DA9414F4();

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

void sub_1DA8DBF2C(uint64_t *a1@<X8>)
{
  v2 = 0x7265646E6573;
  if (*v1)
  {
    v2 = 0x7265766965636572;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DA8DBF68()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DF270]) init];
  v2 = *(v0 + 112);
  os_unfair_lock_lock(v2 + 4);
  sub_1DA84AA88(v3);
  os_unfair_lock_unlock(v2 + 4);
  [v1 copy];
  sub_1DA941154();

  swift_unknownObjectRelease();
  sub_1DA7AF3EC(0, &qword_1ECBD66F0, 0x1E69DF288);
  swift_dynamicCast();
  return v5;
}

id sub_1DA8DC050(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  if (*(a1 + 48) == 1)
  {
    if (sub_1DA8E4CB8(1))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return [a2 setRemoteNotificationsSetting_];
}

void sub_1DA8DC130(uint64_t a1, char a2, void *a3)
{
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  if (*(a1 + 48) == 1)
  {
    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v6 = sub_1DA9405A4();
    __swift_project_value_buffer(v6, qword_1EE110EA0);
    v7 = sub_1DA940584();
    v8 = sub_1DA940EF4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = a2 & 1;
      _os_log_impl(&dword_1DA7A9000, v7, v8, "Setting isEnabled = %{BOOL}d", v9, 8u);
      MEMORY[0x1E12739F0](v9, -1, -1);
    }

    if ([a3 remoteNotificationsSetting])
    {
      if ((sub_1DA8E4CB8(1) & 1) != (a2 & 1))
      {
        sub_1DA8DC354(a2 & 1);
        sub_1DA8E17E4();
      }
    }
  }
}

void sub_1DA8DC310(void *a1)
{
  sub_1DA8E55A4(a1);
}

void sub_1DA8DC354(char a1)
{
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1EE110EA0);
  v3 = sub_1DA940584();
  v4 = sub_1DA940EF4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446466;
    v7 = sub_1DA940A74();
    v9 = sub_1DA7AE6E8(v7, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AE0, &unk_1DA960FB0);
    v10 = sub_1DA940A74();
    v12 = sub_1DA7AE6E8(v10, v11, &v16);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "Setting %{public}s = %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v6, -1, -1);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  v13 = [objc_opt_self() standardUserDefaults];
  if (a1 == 2)
  {
    v14 = 0;
  }

  else
  {
    v17 = a1 & 1;
    v14 = sub_1DA9416C4();
  }

  v15 = sub_1DA940A04();
  [v13 setObject:v14 forKey:v15];

  swift_unknownObjectRelease();
}

uint64_t sub_1DA8DC598()
{
  sub_1DA941764();
  sub_1DA940AB4();
  return sub_1DA941794();
}

uint64_t sub_1DA8DC60C(uint64_t a1)
{
  sub_1DA941764();
  sub_1DA940AB4();
  return sub_1DA941794();
}

uint64_t sub_1DA8DC660@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1DA9414F4();

  *a2 = v3 != 0;
  return result;
}

uint64_t RemoteNotificationsProperties.idsServiceName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_1DA8DC710(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = v2;
}

id sub_1DA8DC768()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void sub_1DA8DC7AC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  *a2 = *(v3 + 48);
}

uint64_t sub_1DA8DC87C()
{
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  return *(v0 + 48);
}

void sub_1DA8DC91C(uint64_t a1)
{
  if (*(v1 + 48) == (a1 & 1))
  {
    *(v1 + 48) = a1 & 1;

    sub_1DA8E17E4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
    sub_1DA93FB64();
  }
}

void sub_1DA8DCA58(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  *a2 = *(v3 + 49);
}

uint64_t sub_1DA8DCB28()
{
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  return *(v0 + 49);
}

void sub_1DA8DCBC8(char a1)
{
  if (*(v1 + 49) == (a1 & 1))
  {
    *(v1 + 49) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
    sub_1DA93FB64();
  }
}

double sub_1DA8DCCD8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  *a2 = *(v3 + 56);

  return result;
}

double sub_1DA8DCDB0()
{
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  return result;
}

void sub_1DA8DCE54(unint64_t a1)
{

  v4 = sub_1DA82A494(v3, a1);

  if (v4)
  {
    *(v1 + 56) = a1;

    sub_1DA8E17E4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
    sub_1DA93FB64();
  }
}

id sub_1DA8DCFAC()
{
  v1 = sub_1DA940FC4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *(v0 + 80);
  if (v7)
  {
    v8 = *(v0 + 80);
  }

  else
  {
    v16 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
    v14[2] = "tifications.device-debounce";
    sub_1DA940824();
    v17 = MEMORY[0x1E69E7CC0];
    v14[1] = sub_1DA8E56DC(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
    v15 = v0;
    sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840, MEMORY[0x1E69E6328]);
    sub_1DA9411D4();
    (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v1);
    v9 = sub_1DA941004();
    v10 = [objc_allocWithZone(MEMORY[0x1E69CDE30]) initWithQueue_];

    v11 = *(v15 + 80);
    *(v15 + 80) = v10;
    v8 = v10;

    v7 = 0;
  }

  v12 = v7;
  return v8;
}

void RemoteNotificationsProperties.init(_:idsService:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = *a1;
  *(v4 + 48) = 0;
  *(v4 + 56) = MEMORY[0x1E69E7CC0];
  type metadata accessor for RemoteNotificationsProperties.Availability(0);
  swift_allocObject();
  *(v4 + 64) = sub_1DA857E4C();
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD53F0, &qword_1DA95AFB0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v4 + 112) = v12;
  sub_1DA93FBA4();
  *(v4 + 16) = v11;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  v13 = objc_allocWithZone(MEMORY[0x1E69A48A8]);

  v14 = sub_1DA940A04();
  v15 = [v13 initWithService_];

  if (v15)
  {

    *(v4 + 40) = v15;
    v21 = v11;
    type metadata accessor for ReplicatorManager();
    swift_allocObject();
    *(v4 + 72) = sub_1DA82C154(&v21);
    if (qword_1EE112A90 != -1)
    {
      swift_once();
    }

    sub_1DA8B3788(v16);

    v17 = sub_1DA940D34();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v18;
    sub_1DA8DB620(0, 0, v10, &unk_1DA960CB8, v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for RemoteNotificationsProperties(uint64_t a1)
{
  result = qword_1EE114848;
  if (!qword_1EE114848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA8DD574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DA8DD594, 0, 0);
}

uint64_t sub_1DA8DD594()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1DA93FB54();
    if (*(v0 + 56) == 1)
    {
      sub_1DA8DD884();
    }

    else
    {
      sub_1DA8DDA10();
    }
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t RemoteNotificationsProperties.deinit()
{
  v1 = v0;
  *(v0 + 104) = 0;

  if (*(v0 + 49))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
    sub_1DA93FB64();
  }

  else
  {
    *(v0 + 49) = 0;
  }

  v3 = OBJC_IVAR____TtC21UserNotificationsCore29RemoteNotificationsProperties___observationRegistrar;
  v4 = sub_1DA93FBB4();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  return v1;
}

uint64_t RemoteNotificationsProperties.__deallocating_deinit()
{
  RemoteNotificationsProperties.deinit();

  return swift_deallocClassInstance();
}

void sub_1DA8DD884()
{
  v1 = *(v0 + 64);
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE1149B8, type metadata accessor for RemoteNotificationsProperties.Availability, &protocol conformance descriptor for RemoteNotificationsProperties.Availability);

  sub_1DA93FB74();

  v2 = *(v1 + 16);

  if (v2 == 1)
  {
    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v3 = sub_1DA9405A4();
    __swift_project_value_buffer(v3, qword_1EE110EA0);
    v4 = sub_1DA940584();
    v5 = sub_1DA940F34();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DA7A9000, v4, v5, "Resuming...", v6, 2u);
      MEMORY[0x1E12739F0](v6, -1, -1);
    }

    sub_1DA82C228();
    sub_1DA8DE108();
  }
}

void sub_1DA8DDA10()
{
  v1 = v0;
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1EE110EA0);
  v3 = sub_1DA940584();
  v4 = sub_1DA940F34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "Pausing...", v5, 2u);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  v6 = *(v1 + 112);
  MEMORY[0x1EEE9AC00](v7);
  os_unfair_lock_lock(v6 + 4);
  sub_1DA84AA88(v8);
  os_unfair_lock_unlock(v6 + 4);
}

void sub_1DA8DDB44(void *a1)
{
  a1[13] = 0;

  v2 = a1[12];
  a1[12] = 0;

  sub_1DA8DCE54(MEMORY[0x1E69E7CC0]);
  v3 = a1[9];
  v3[5] = 0;

  v3[4] = 0;

  v3[10] = 0;

  v4 = v3[7];
  v3[7] = 0;
}

void sub_1DA8DDBC4()
{
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v0 = sub_1DA9405A4();
  __swift_project_value_buffer(v0, qword_1EE110EA0);
  v1 = sub_1DA940584();
  v2 = sub_1DA940F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DA7A9000, v1, v2, "Got first unlock. Re-checking paired devices.", v3, 2u);
    MEMORY[0x1E12739F0](v3, -1, -1);
  }

  sub_1DA8DD884();
}

void sub_1DA8DDCB0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 64);
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE1149B8, type metadata accessor for RemoteNotificationsProperties.Availability, &protocol conformance descriptor for RemoteNotificationsProperties.Availability);

  sub_1DA93FB74();

  v4 = *(v3 + 16);

  *a2 = v4;
}

double sub_1DA8DDD74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1DA940D34();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_1DA8DB00C(0, 0, v2, &unk_1DA960FF8, v5);

  return result;
}

uint64_t sub_1DA8DDE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = swift_task_alloc();
  *(v4 + 48) = v5;
  *v5 = v4;
  v5[1] = sub_1DA8DDF2C;

  return MEMORY[0x1EEE6DA78]();
}

uint64_t sub_1DA8DDF2C()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA8DE028, 0, 0);
}

uint64_t sub_1DA8DE028()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DA93FB54();
    if (*(v0 + 56) == 1)
    {
      sub_1DA8DD884();
    }

    else
    {
      sub_1DA8DDA10();
    }
  }

  v1 = *(v0 + 8);

  return v1();
}

double sub_1DA8DE108()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v24 - v4;
  v6 = *(*(v0 + 72) + 32);
  if (v6)
  {
    v7 = qword_1EE110E98;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA9405A4();
    __swift_project_value_buffer(v8, qword_1EE110EA0);
    v9 = sub_1DA940584();
    v10 = sub_1DA940F34();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DA7A9000, v9, v10, "Establishing paired device monitors.", v11, 2u);
      MEMORY[0x1E12739F0](v11, -1, -1);
    }

    swift_beginAccess();
    v12 = *(v1 + 40);
    v13 = sub_1DA8DCFAC();
    v25 = type metadata accessor for RemoteNotificationsProperties(0);
    v26 = &off_1F5637B28;
    v24[0] = v1;
    v14 = objc_allocWithZone(type metadata accessor for RemoteNotificationsProperties.DeviceObserver());
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    MEMORY[0x1EEE9AC00](v15);
    v17 = (v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;

    v20 = sub_1DA8E5150(v12, v13, v19, v14);

    __swift_destroy_boxed_opaque_existential_1(v24);
    v21 = *(v1 + 96);
    *(v1 + 96) = v20;

    if (*(v1 + 104))
    {

      sub_1DA940DE4();
    }

    sub_1DA940D04();
    v22 = sub_1DA940D34();
    (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v6;
    v23[5] = v1;

    *(v1 + 104) = sub_1DA8DB00C(0, 0, v5, &unk_1DA960F48, v23);
  }

  return result;
}

uint64_t sub_1DA8DE474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_1DA93FB24();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA8DE534, 0, 0);
}

uint64_t sub_1DA8DE534()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB8, &qword_1DA960F50);
  v0[11] = v1;
  v0[12] = *(v1 - 8);
  v0[13] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AC0, &unk_1DA960F58);
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  sub_1DA93FCB4();
  sub_1DA940D84();
  (*(v3 + 8))(v4, v2);

  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1DA8DE700;
  v6 = v0[11];

  return MEMORY[0x1EEE6D9C8](v0 + 4, 0, 0, v6);
}

uint64_t sub_1DA8DE700()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA8DE7FC, 0, 0);
}

uint64_t sub_1DA8DE7FC()
{
  v1 = v0[4];
  v0[15] = v1;
  if (v1)
  {
    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v2 = sub_1DA9405A4();
    v0[16] = __swift_project_value_buffer(v2, qword_1EE110EA0);

    v3 = sub_1DA940584();
    v4 = sub_1DA940EF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = *(v1 + 16);

      _os_log_impl(&dword_1DA7A9000, v3, v4, "Replicator says it has %ld device(s).", v5, 0xCu);
      MEMORY[0x1E12739F0](v5, -1, -1);
    }

    else
    {
    }

    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_1DA8DE9E4;

    return sub_1DA8DF88C();
  }

  else
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1DA8DE9E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_1DA8DEF70;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_1DA8DEB0C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DA8DEB0C()
{
  v1 = v0;
  v2 = v0[18];
  v46 = v0[19];
  v3 = *(v0[15] + 16);
  v40 = sub_1DA93FD54();
  v4 = *(v40 - 8);
  v5 = swift_task_alloc();
  if (v3)
  {
    v7 = *(v4 + 16);
    v6 = v4 + 16;
    v43 = v7;
    v44 = v0 + 2;
    v8 = (*(v6 + 64) + 32) & ~*(v6 + 64);
    v38 = (v6 - 8);
    v41 = (v6 + 16);
    v45 = MEMORY[0x1E69E7CC0];
    v39 = v8;
    v9 = v40;
    v47 = v1;
    v42 = *(v6 + 56);
    do
    {
      v11 = v1[15];
      v12 = v1[9];
      v13 = v1[10];
      v14 = v47[8];
      v43(v5, v11 + v8, v9);

      sub_1DA93FD44();
      v15 = sub_1DA93FB04();
      v16 = v5;
      v18 = v17;
      v19 = v14;
      v1 = v47;
      (*(v12 + 8))(v13, v19);
      v47[2] = v15;
      v47[3] = v18;
      v20 = swift_task_alloc();
      *(v20 + 16) = v44;
      LOBYTE(v13) = sub_1DA7B36C0(sub_1DA8E5FD4, v20, v46);

      if (v13)
      {
        v21 = swift_task_alloc();
        v22 = *v41;
        (*v41)(v21, v16, v9);
        v23 = v45;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47[5] = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DA82AB30(0, *(v45 + 16) + 1, 1);
          v23 = v47[5];
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1DA82AB30((v25 > 1), v26 + 1, 1);
          v23 = v47[5];
        }

        *(v23 + 16) = v26 + 1;
        v45 = v23;
        v9 = v40;
        v27 = v23 + v39;
        v10 = v42;
        v22(v27 + v26 * v42, v21, v40);

        v1 = v47;
      }

      else
      {
        (*v38)(v16, v9);
        v10 = v42;
      }

      v5 = swift_task_alloc();
      v8 += v10;
      --v3;
    }

    while (v3);
    v28 = v45;
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v29 = v1[7];

  v30 = *(v29 + 112);
  v31 = swift_task_alloc();
  *(v31 + 16) = v29;
  *(v31 + 24) = v28;
  v32 = swift_task_alloc();
  *(v32 + 16) = sub_1DA8E5F98;
  *(v32 + 24) = v31;
  os_unfair_lock_lock(v30 + 4);
  sub_1DA84AA88(v33);
  v34 = v30 + 4;
  if (v2)
  {
    os_unfair_lock_unlock(v34);
  }

  else
  {
    os_unfair_lock_unlock(v34);

    v36 = swift_task_alloc();
    v1[14] = v36;
    *v36 = v1;
    v36[1] = sub_1DA8DE700;
    v37 = v1[11];

    return MEMORY[0x1EEE6D9C8](v1 + 4, 0, 0, v37);
  }
}

uint64_t sub_1DA8DEF70()
{
  v1 = v0;
  v2 = v0[18];
  v3 = v2;
  v4 = sub_1DA940584();
  v5 = sub_1DA940F14();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1DA7A9000, v4, v5, "Failed to get paired devices from Sharing. %{public}@", v8, 0xCu);
    sub_1DA7BA120(v9, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v9, -1, -1);
    MEMORY[0x1E12739F0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0[15] + 16);
  v51 = sub_1DA93FD54();
  v13 = *(v51 - 8);
  v14 = swift_task_alloc();
  if (v12)
  {
    v15 = v1;
    v17 = *(v13 + 16);
    v16 = v13 + 16;
    v48 = v17;
    v49 = v1 + 2;
    v18 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v46 = (v16 + 16);
    v45 = v18;
    v50 = MEMORY[0x1E69E7CC0];
    v19 = v51;
    v53 = v1;
    v47 = *(v16 + 56);
    do
    {
      v52 = v12;
      v21 = v15[9];
      v22 = v15[10];
      v23 = v53[8];
      v48(v14, v15[15] + v18, v19);
      v24 = MEMORY[0x1E69E7CC0];

      sub_1DA93FD44();
      v25 = sub_1DA93FB04();
      v26 = v14;
      v28 = v27;
      (*(v21 + 8))(v22, v23);
      v53[2] = v25;
      v53[3] = v28;
      v29 = swift_task_alloc();
      *(v29 + 16) = v49;
      LOBYTE(v22) = sub_1DA7B36C0(sub_1DA8E5FD4, v29, v24);

      if (v22)
      {
        v30 = swift_task_alloc();
        v31 = *v46;
        (*v46)(v30, v26, v51);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v50;
        v53[5] = v50;
        if (isUniquelyReferenced_nonNull_native)
        {
          v19 = v51;
        }

        else
        {
          sub_1DA82AB30(0, *(v50 + 16) + 1, 1);
          v19 = v51;
          v33 = v53[5];
        }

        v35 = *(v33 + 16);
        v34 = *(v33 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1DA82AB30((v34 > 1), v35 + 1, 1);
          v19 = v51;
          v33 = v53[5];
        }

        *(v33 + 16) = v35 + 1;
        v50 = v33;
        v20 = v47;
        v31(v33 + v45 + v35 * v47, v30, v19);

        v15 = v53;
      }

      else
      {
        v15 = v53;
        v19 = v51;
        (*(v16 - 8))(v26, v51);
        v20 = v47;
      }

      v14 = swift_task_alloc();
      v18 += v20;
      v12 = v52 - 1;
    }

    while (v52 != 1);
    v1 = v15;
    v36 = v50;
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  v37 = v1[7];

  v38 = *(v37 + 112);
  v39 = swift_task_alloc();
  *(v39 + 16) = v37;
  *(v39 + 24) = v36;
  v40 = swift_task_alloc();
  *(v40 + 16) = sub_1DA8E5F98;
  *(v40 + 24) = v39;
  os_unfair_lock_lock(v38 + 4);
  sub_1DA84AA88(v41);
  os_unfair_lock_unlock(v38 + 4);

  v42 = swift_task_alloc();
  v1[14] = v42;
  *v42 = v1;
  v42[1] = sub_1DA8DE700;
  v43 = v1[11];

  return MEMORY[0x1EEE6D9C8](v1 + 4, 0, 0, v43);
}

void sub_1DA8DF4F4(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_assert_owner((*(v2 + 112) + 16));
  v4 = sub_1DA8E033C(a1);
  swift_getKeyPath();
  v25 = v2;
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  v5 = *(v2 + 56);

  v6 = sub_1DA82A494(v4, v5);

  if (v6)
  {

    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v7 = sub_1DA9405A4();
    __swift_project_value_buffer(v7, qword_1EE110EA0);
    v8 = sub_1DA940584();
    v9 = sub_1DA940EF4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DA7A9000, v8, v9, "No change in remote notifications devices.", v10, 2u);
      MEMORY[0x1E12739F0](v10, -1, -1);
    }
  }

  else
  {
    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v11 = sub_1DA9405A4();
    __swift_project_value_buffer(v11, qword_1EE110EA0);

    v12 = sub_1DA940584();
    v13 = sub_1DA940EF4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v14 = 136380931;
      v15 = type metadata accessor for RemoteDevice(0);
      v16 = MEMORY[0x1E1271CD0](v4, v15);
      v18 = sub_1DA7AE6E8(v16, v17, &v25);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2081;
      swift_getKeyPath();
      sub_1DA93FB74();

      v20 = MEMORY[0x1E1271CD0](v19, v15);
      v22 = v21;

      v23 = sub_1DA7AE6E8(v20, v22, &v25);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_1DA7A9000, v12, v13, "Updated RemoteDevices: %{private}s; Was: %{private}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v24, -1, -1);
      MEMORY[0x1E12739F0](v14, -1, -1);
    }

    sub_1DA8DCE54(v4);
  }
}

uint64_t sub_1DA8DF88C()
{
  *(v1 + 160) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1DA8DF91C, 0, 0);
}

uint64_t sub_1DA8DF91C()
{
  v1 = sub_1DA8DCFAC();
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DA8DFA7C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6A90, &qword_1DA960F38);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DA8E020C;
  v0[13] = &block_descriptor_101_0;
  v0[14] = v2;
  [v1 listCandidateDevicesForType:5 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DA8DFA7C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1DA8E0170;
  }

  else
  {
    v2 = sub_1DA8DFBB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA8DFBB8(uint64_t a1)
{
  v52 = v1;
  v51[1] = *MEMORY[0x1E69E9840];
  v3 = v1 + 144;
  v2 = *(v1 + 144);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E69E7CD0];
    v51[0] = MEMORY[0x1E69E7CD0];
    v5 = sub_1DA941224();
    v6 = sub_1DA941294();
    if (v6)
    {
      v7 = (v1 + 80);
      v8 = v6;
      sub_1DA7AF3EC(0, &qword_1EE110BD8, 0x1E69CDE28);
      v9 = v8;
      v1 = MEMORY[0x1E69E7C98];
      do
      {
        *(v3 + 8) = v9;
        swift_dynamicCast();
        v10 = [*v7 enabledAsKey];
        v11 = *v7;
        if (v10)
        {
          v12 = *(v4 + 16);
          if (*(v4 + 24) <= v12)
          {
            sub_1DA8AA8A4(v12 + 1);
            v4 = v51[0];
          }

          v13 = sub_1DA941104();
          v14 = v4 + 56;
          v15 = -1 << *(v4 + 32);
          v16 = v13 & ~v15;
          v17 = v16 >> 6;
          if (((-1 << v16) & ~*(v4 + 56 + 8 * (v16 >> 6))) != 0)
          {
            v18 = __clz(__rbit64((-1 << v16) & ~*(v4 + 56 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v19 = 0;
            v20 = (63 - v15) >> 6;
            do
            {
              if (++v17 == v20 && (v19 & 1) != 0)
              {
                __break(1u);
                goto LABEL_43;
              }

              v21 = v17 == v20;
              if (v17 == v20)
              {
                v17 = 0;
              }

              v19 |= v21;
              v22 = *(v14 + 8 * v17);
            }

            while (v22 == -1);
            v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          }

          *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
          *(*(v4 + 48) + 8 * v18) = v11;
          ++*(v4 + 16);
        }

        else
        {
        }

        v9 = sub_1DA941294();
      }

      while (v9);
    }

LABEL_37:
    v1 = v50;

    sub_1DA8DB934(v4, v36);
    v5 = v37;

    if (qword_1EE110E98 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_44;
  }

  v23 = *(v2 + 32);
  v24 = ((1 << v23) + 63) >> 6;
  if ((v23 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v48 = swift_slowAlloc();
      v4 = sub_1DA8E48B4(v48, v24, v2, sub_1DA8E0308);

      MEMORY[0x1E12739F0](v48, -1, -1);
      goto LABEL_37;
    }
  }

  v49 = &v49;
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v49 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v5, v25);
  v26 = 0;
  v27 = 0;
  v28 = 1 << *(v2 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v2 + 56);
  v31 = (v28 + 63) >> 6;
  while (v30)
  {
    v32 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
LABEL_32:
    v1 = v32 | (v27 << 6);
    if ([*(*(v2 + 48) + 8 * v1) enabledAsKey])
    {
      *&v5[(v1 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v1;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_36:
        v4 = sub_1DA8E46C0(v5, v24, v26, v2);
        goto LABEL_37;
      }
    }
  }

  v33 = v27;
  while (1)
  {
    v27 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v27 >= v31)
    {
      goto LABEL_36;
    }

    v34 = *(v2 + 56 + 8 * v27);
    ++v33;
    if (v34)
    {
      v32 = __clz(__rbit64(v34));
      v30 = (v34 - 1) & v34;
      goto LABEL_32;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  swift_once();
LABEL_38:
  v38 = sub_1DA9405A4();
  __swift_project_value_buffer(v38, qword_1EE110EA0);

  v39 = sub_1DA940584();
  v40 = sub_1DA940EF4();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v51[0] = v42;
    *v41 = 136380675;
    v43 = MEMORY[0x1E1271CD0](v5, MEMORY[0x1E69E6158]);
    v45 = sub_1DA7AE6E8(v43, v44, v51);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_1DA7A9000, v39, v40, "Enabled devices: %{private}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1E12739F0](v42, -1, -1);
    MEMORY[0x1E12739F0](v41, -1, -1);
  }

  v46 = *(v1 + 8);

  return v46(v5);
}

uint64_t sub_1DA8E0170(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DA8E020C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB0, qword_1DA95D940);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1DA7AF3EC(0, &qword_1EE110BD8, 0x1E69CDE28);
    sub_1DA8E5878();
    **(*(v4 + 64) + 40) = sub_1DA940E94();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

id sub_1DA8E033C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DA93FD54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v75 = v6;
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v2;
  if (v2)
  {
    v8 = 0;
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v64 = (*(v9 + 64) + 32) & ~*(v9 + 64);
    v70 = a1 + v64;
    v71 = v10;
    v73 = *(v9 + 56);
    v65 = (v9 + 16);
    v67 = (v9 - 8);
    v74 = MEMORY[0x1E69E7CC0];
    v69 = v9;
    while (1)
    {
      v76 = v8;
      v77 = v5;
      v71(v7, v70 + v73 * v8, v3);
      v13 = sub_1DA93FD24();
      v14 = *(v13 - 8);
      v15 = *(v14 + 64);
      MEMORY[0x1EEE9AC00](v13);
      v16 = v3;
      v17 = sub_1DA93FD34();
      MEMORY[0x1EEE9AC00](v17);
      v18 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 104))(v18, *MEMORY[0x1E69C7498], v13);
      v19 = MEMORY[0x1E1270DF0](v18, v18);
      v20 = *(v14 + 8);
      v20(v18, v13);
      v20(v18, v13);
      if (v19)
      {
        break;
      }

LABEL_4:
      v11 = (*v67)(v7, v16);
      v3 = v16;
LABEL_5:
      MEMORY[0x1EEE9AC00](v11);
      v7 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v8 == v72)
      {
        goto LABEL_41;
      }
    }

    v21 = *(v66 + 16);
    v22 = sub_1DA93FCF4();
    v68 = &v64;
    v23 = *(v22 - 8);
    v24 = *(v23 + 64);
    MEMORY[0x1EEE9AC00](v22);
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
    v26 = sub_1DA93FD04();
    MEMORY[0x1EEE9AC00](v26);
    (*(v23 + 16))(&v64 - v25, &v64 - v25, v22);
    v27 = (*(v23 + 88))(&v64 - v25, v22);
    if (!MEMORY[0x1E69C7488] || v27 != *MEMORY[0x1E69C7488])
    {
      if (MEMORY[0x1E69C7458] && v27 == *MEMORY[0x1E69C7458])
      {
        v3 = 1;
        goto LABEL_26;
      }

      if (MEMORY[0x1E69C7470] && v27 == *MEMORY[0x1E69C7470])
      {
        v3 = 2;
        goto LABEL_26;
      }

      if (MEMORY[0x1E69C7468] && v27 == *MEMORY[0x1E69C7468])
      {
        v3 = 4;
        goto LABEL_26;
      }

      if (MEMORY[0x1E69C7480] && v27 == *MEMORY[0x1E69C7480])
      {
        v3 = 6;
        goto LABEL_26;
      }

      if (MEMORY[0x1E69C7450] && v27 == *MEMORY[0x1E69C7450])
      {
        v3 = 5;
        goto LABEL_26;
      }

      (*(v23 + 8))(&v64 - v25, v22);
    }

    v3 = 0;
LABEL_26:
    (*(v23 + 8))(&v64 - v25, v22);
    if (v21)
    {
      v28 = &unk_1F5631B78;
    }

    else
    {
      v28 = &unk_1F5631B50;
    }

    v29 = *v28;
    v30 = &unk_1F5631B60;
    if (v21)
    {
      v30 = &unk_1F5631B88;
    }

    v31 = v29 & ~(v29 >> 63);
    do
    {
      if (!v29)
      {

        goto LABEL_4;
      }

      if (!v31)
      {
        __break(1u);
        goto LABEL_65;
      }

      v32 = *v30++;
      --v31;
      --v29;
    }

    while (v32 != v3);

    MEMORY[0x1EEE9AC00](v33);
    v35 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = *v65;
    v3 = v16;
    (*v65)(v35, v7, v16);
    v37 = v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DA82AB30(0, v37[2] + 1, 1);
      v37 = v81;
    }

    v40 = v37[2];
    v39 = v37[3];
    if (v40 >= v39 >> 1)
    {
      sub_1DA82AB30((v39 > 1), v40 + 1, 1);
      v37 = v81;
    }

    v37[2] = (v40 + 1);
    v74 = v37;
    v11 = v36(v37 + v64 + v40 * v73, v35, v16);
    goto LABEL_5;
  }

  v74 = MEMORY[0x1E69E7CC0];
LABEL_41:
  if (v74[2])
  {
    if (qword_1EE110E98 != -1)
    {
      goto LABEL_67;
    }

    while (1)
    {
      v41 = sub_1DA9405A4();
      __swift_project_value_buffer(v41, qword_1EE110EA0);
      v42 = v74;

      v43 = sub_1DA940584();
      v44 = sub_1DA940F34();

      v45 = os_log_type_enabled(v43, v44);
      v46 = v66;
      if (v45)
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v81 = v48;
        *v47 = 136380675;
        v49 = MEMORY[0x1E1271CD0](v42, v3);
        v51 = sub_1DA7AE6E8(v49, v50, &v81);

        *(v47 + 4) = v51;
        _os_log_impl(&dword_1DA7A9000, v43, v44, "Replicator paired devices: %{private}s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x1E12739F0](v48, -1, -1);
        MEMORY[0x1E12739F0](v47, -1, -1);
      }

      swift_beginAccess();
      result = [*(v46 + 40) devices];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v53 = result;
      sub_1DA7AF3EC(0, &qword_1EE110B60, 0x1E69A4848);
      v54 = sub_1DA940BE4();

      v80 = MEMORY[0x1E69E7CC0];
      if (v54 >> 62)
      {
        v55 = sub_1DA941264();
        if (!v55)
        {
LABEL_69:
          v57 = MEMORY[0x1E69E7CC0];
LABEL_70:

          return v57;
        }
      }

      else
      {
        v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v55)
        {
          goto LABEL_69;
        }
      }

      v56 = 0;
      v57 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v54 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x1E1272460](v56, v54);
        }

        else
        {
          if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_66;
          }

          v58 = *(v54 + 8 * v56 + 32);
        }

        v59 = v58;
        v3 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          break;
        }

        v79 = v58;
        sub_1DA8E0D04(&v79, v46, v74, &v78);

        if (v78)
        {
          MEMORY[0x1E1271CA0]();
          if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DA940C04();
            v46 = v66;
          }

          sub_1DA940C14();
          v57 = v80;
        }

        ++v56;
        if (v3 == v55)
        {
          goto LABEL_70;
        }
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      swift_once();
    }
  }

  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v60 = sub_1DA9405A4();
  __swift_project_value_buffer(v60, qword_1EE110EA0);
  v61 = sub_1DA940584();
  v62 = sub_1DA940F34();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_1DA7A9000, v61, v62, "Replicator is not paired with any desired devices.", v63, 2u);
    MEMORY[0x1E12739F0](v63, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1DA8E0D04(id *a1@<X0>, uint64_t *a2@<X1>, void (**a3)(char *, uint64_t)@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v113 = a3;
  v110 = a4;
  v119 = sub_1DA93FB24();
  v8 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [*a1 uniqueID];
  if (!v11)
  {
    __break(1u);
    return;
  }

  v12 = v11;
  v120 = a2;
  v111 = v8;
  v13 = sub_1DA940A14();
  v15 = v14;

  v107 = sub_1DA8E562C(5, v13, v15);
  v108 = v16;
  v18 = v17;
  v20 = v19;

  if (qword_1EE110E98 != -1)
  {
LABEL_39:
    swift_once();
  }

  v21 = sub_1DA9405A4();
  v22 = __swift_project_value_buffer(v21, qword_1EE110EA0);

  v23 = v10;
  v24 = sub_1DA940584();
  v25 = sub_1DA940F04();

  v26 = os_log_type_enabled(v24, v25);
  v109 = v5;
  v105 = v18;
  v106 = v22;
  if (v26)
  {
    v27 = v20;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v121 = v30;
    *v28 = 136380931;

    v31 = MEMORY[0x1E1271B80](v107, v108, v18, v27);
    v32 = v23;
    v34 = v33;

    v35 = sub_1DA7AE6E8(v31, v34, &v121);
    v23 = v32;

    *(v28 + 4) = v35;
    *(v28 + 12) = 2113;
    *(v28 + 14) = v32;
    *v29 = v32;
    v36 = v32;
    _os_log_impl(&dword_1DA7A9000, v24, v25, "[%{private}s] Evaluating IDS device %{private}@", v28, 0x16u);
    sub_1DA7BA120(v29, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v5 = v110;
    MEMORY[0x1E12739F0](v30, -1, -1);
    v37 = v28;
    v20 = v27;
    MEMORY[0x1E12739F0](v37, -1, -1);
  }

  else
  {

    v5 = v110;
  }

  v18 = *(v120 + 16);
  v10 = &unk_1F5631AF0;
  v38 = [v23 deviceType];
  v39 = &unk_1F5631B28;
  if (!v18)
  {
    v39 = &unk_1F5631B00;
  }

  v40 = *v39;
  v41 = &unk_1F5631B10;
  if (v18)
  {
    v41 = &unk_1F5631B38;
  }

  v42 = v40 & ~(v40 >> 63);
  do
  {
    if (!v40)
    {

      v68 = sub_1DA940584();
      v69 = sub_1DA940F04();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v121 = v71;
        *v70 = 136380675;
        v72 = MEMORY[0x1E1271B80](v107, v108, v105, v20);
        v74 = v73;

        v75 = sub_1DA7AE6E8(v72, v74, &v121);

        *(v70 + 4) = v75;
        _os_log_impl(&dword_1DA7A9000, v68, v69, "[%{private}s] Device not of desired type.", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v71);
        MEMORY[0x1E12739F0](v71, -1, -1);
        MEMORY[0x1E12739F0](v70, -1, -1);
      }

      else
      {
      }

      *v5 = 0;
      return;
    }

    if (!v42)
    {
      __break(1u);
      goto LABEL_39;
    }

    v43 = *v41++;
    --v42;
    --v40;
  }

  while (v43 != v38);
  v117 = v23;
  v103 = v20;

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6A88, &qword_1DA960F30);
  v102 = &v98;
  v101 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v104 = &v98 - v45;
  v46 = v113;
  v47 = v113[2];
  if (!v47)
  {
LABEL_27:
    v49 = sub_1DA93FD54();
    v76 = v104;
    (*(*(v49 - 8) + 56))(v104, 1, 1, v49);
    goto LABEL_32;
  }

  v48 = sub_1DA93FD54();
  v49 = v48;
  v50 = *(v48 - 8);
  v51 = *(v50 + 80);
  v52 = *(v50 + 16);
  v115 = v50 + 16;
  v116 = v52;
  v112 = *(v50 + 72);
  v114 = *(v50 + 64);
  v100 = (v48 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
  v53 = v46 + ((v51 + 32) & ~v51);
  v113 = (v111 + 1);
  v99 = v50;
  v111 = (v50 + 8);
  while (1)
  {
    MEMORY[0x1EEE9AC00](v48);
    v55 = &v98 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    v116(v55, v53, v49);
    v56 = v118;
    sub_1DA93FD44();
    v57 = sub_1DA93FB04();
    v59 = v58;
    (*v113)(v56, v119);
    v60 = [v117 uniqueID];
    if (!v60)
    {

      goto LABEL_17;
    }

    v61 = v60;
    v120 = &v98;
    v62 = v49;
    v63 = sub_1DA940A14();
    v65 = v64;

    if (v57 == v63 && v59 == v65)
    {
      break;
    }

    v67 = sub_1DA941684();

    v49 = v62;
    if (v67)
    {
      goto LABEL_31;
    }

LABEL_17:
    v48 = (*v111)(v55, v49);
    v53 += v112;
    v47 = (v47 - 1);
    if (!v47)
    {
      goto LABEL_27;
    }
  }

  v49 = v62;
LABEL_31:
  v77 = v99;
  v76 = v104;
  (*(v99 + 32))(v104, v55, v49);
  (*(v77 + 56))(v76, 0, 1, v49);
LABEL_32:
  v78 = sub_1DA93FD54();
  v120 = &v98;
  v79 = *(v49 - 8);
  v80 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v81 = MEMORY[0x1EEE9AC00](v78);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v98 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA822F48(v76, v83, &qword_1ECBD6A88, &qword_1DA960F30);
  v84 = (*(v79 + 48))(v83, 1, v49);
  v85 = v110;
  if (v84 == 1)
  {
    v86 = v110;
    sub_1DA7BA120(v83, &qword_1ECBD6A88, &qword_1DA960F30);
    v87 = v103;

    v88 = sub_1DA940584();
    v89 = sub_1DA940F04();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v121 = v91;
      *v90 = 136380675;
      v92 = MEMORY[0x1E1271B80](v107, v108, v105, v87);
      v94 = v93;

      v95 = sub_1DA7AE6E8(v92, v94, &v121);

      *(v90 + 4) = v95;
      _os_log_impl(&dword_1DA7A9000, v88, v89, "[%{private}s] Device does not match any replicator paired devices.", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x1E12739F0](v91, -1, -1);
      MEMORY[0x1E12739F0](v90, -1, -1);
    }

    else
    {
    }

    sub_1DA7BA120(v104, &qword_1ECBD6A88, &qword_1DA960F30);
    *v86 = 0;
  }

  else
  {

    v96 = (*(v79 + 32))(&v98 - v80, v83, v49);
    MEMORY[0x1EEE9AC00](v96);
    (*(v79 + 16))(&v98 - v80, &v98 - v80, v49);
    type metadata accessor for RemoteDevice(0);
    swift_allocObject();
    v97 = sub_1DA8A5D78(v117, &v98 - v80);
    (*(v79 + 8))(&v98 - v80, v49);
    sub_1DA7BA120(v76, &qword_1ECBD6A88, &qword_1DA960F30);
    *v85 = v97;
  }
}

void sub_1DA8E17E4()
{
  v1 = v0;
  os_unfair_lock_assert_owner((*(v0 + 112) + 16));
  swift_getKeyPath();
  v44 = v0;
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  v2 = *(v0 + 48);
  swift_getKeyPath();
  v44 = v0;
  sub_1DA93FB74();

  v43 = *(v0 + 49);
  swift_getKeyPath();
  sub_1DA93FB74();

  v3 = *(v0 + 56);
  if (v3 >> 62)
  {
    if (sub_1DA941264())
    {
      goto LABEL_10;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

  swift_getKeyPath();
  v44 = v0;
  sub_1DA93FB74();

  if (*(v0 + 48) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v44 = v0;
    sub_1DA93FB64();

    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v5 = sub_1DA9405A4();
    __swift_project_value_buffer(v5, qword_1EE110EA0);
    v6 = sub_1DA940584();
    v7 = sub_1DA940F34();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DA7A9000, v6, v7, "No paired devices for remote notifications. Disabling.", v8, 2u);
      MEMORY[0x1E12739F0](v8, -1, -1);
    }

    goto LABEL_19;
  }

LABEL_10:
  swift_getKeyPath();
  v44 = v0;
  sub_1DA93FB74();

  v9 = *(v0 + 56);
  if (v9 >> 62)
  {
    if (!sub_1DA941264())
    {
      goto LABEL_19;
    }
  }

  else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  swift_getKeyPath();
  v44 = v0;
  sub_1DA93FB74();

  if ((*(v0 + 48) & 1) == 0)
  {
    v10 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v10);
    v44 = v0;
    sub_1DA93FB64();

    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v11 = sub_1DA9405A4();
    __swift_project_value_buffer(v11, qword_1EE110EA0);

    v12 = sub_1DA940584();
    v13 = sub_1DA940F34();

    if (os_log_type_enabled(v12, v13))
    {
      v41 = v2;
      v14 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v14 = 136380675;
      swift_getKeyPath();
      sub_1DA93FB74();

      v15 = type metadata accessor for RemoteDevice(0);

      v17 = MEMORY[0x1E1271CD0](v16, v15);
      v19 = v18;

      v20 = sub_1DA7AE6E8(v17, v19, &v44);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_1DA7A9000, v12, v13, "Remote notifications available; %{private}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1E12739F0](v40, -1, -1);
      v21 = v14;
      v2 = v41;
      MEMORY[0x1E12739F0](v21, -1, -1);
    }
  }

LABEL_19:
  swift_getKeyPath();
  v44 = v1;
  sub_1DA93FB74();

  v22 = *(v1 + 49);
  swift_getKeyPath();
  v44 = v1;
  sub_1DA93FB74();

  if (*(v1 + 48) == 1)
  {
    if (((v22 ^ sub_1DA8E4CB8(1)) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (!v22)
  {
    goto LABEL_39;
  }

  swift_getKeyPath();
  v44 = v1;
  sub_1DA93FB74();

  if ((*(v1 + 48) & 1) == 0)
  {
    v23 = 0;
    if ((*(v1 + 49) & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_27:
    v24 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v24);
    v44 = v1;
    sub_1DA93FB64();

    goto LABEL_28;
  }

  v23 = sub_1DA8E4CB8(1);
  if ((v23 & 1) != *(v1 + 49))
  {
    goto LABEL_27;
  }

LABEL_25:
  *(v1 + 49) = v23 & 1;
LABEL_28:
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v25 = sub_1DA9405A4();
  __swift_project_value_buffer(v25, qword_1EE110EA0);

  v26 = sub_1DA940584();
  v27 = sub_1DA940F34();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v42 = v2;
    v29 = swift_slowAlloc();
    v44 = v29;
    *v28 = 136315138;
    swift_getKeyPath();
    sub_1DA93FB74();

    if (*(v1 + 49))
    {
      v30 = 0;
    }

    else
    {
      v30 = 28265;
    }

    if (*(v1 + 49))
    {
      v31 = 0xE000000000000000;
    }

    else
    {
      v31 = 0xE200000000000000;
    }

    v32 = sub_1DA7AE6E8(v30, v31, &v44);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1DA7A9000, v26, v27, "Remote notifications are now %sactive.", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v33 = v29;
    v2 = v42;
    MEMORY[0x1E12739F0](v33, -1, -1);
    MEMORY[0x1E12739F0](v28, -1, -1);
  }

LABEL_39:
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v34 = sub_1DA9405A4();
  __swift_project_value_buffer(v34, qword_1EE110EA0);
  swift_retain_n();
  v35 = sub_1DA940584();
  v36 = sub_1DA940EF4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 67110400;
    *(v37 + 4) = sub_1DA8E4CB8(1) & 1;
    *(v37 + 8) = 1024;
    *(v37 + 10) = v2;
    *(v37 + 14) = 1024;
    swift_getKeyPath();
    v44 = v1;
    sub_1DA93FB74();

    *(v37 + 16) = *(v1 + 48);

    *(v37 + 20) = 1024;
    *(v37 + 22) = v43;
    *(v37 + 26) = 1024;
    swift_getKeyPath();
    v44 = v1;
    sub_1DA93FB74();

    *(v37 + 28) = *(v1 + 49);

    *(v37 + 32) = 2048;
    swift_getKeyPath();
    v44 = v1;
    sub_1DA93FB74();

    v38 = *(v1 + 56);
    if (v38 >> 62)
    {
      v39 = sub_1DA941264();
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v37 + 34) = v39;

    _os_log_impl(&dword_1DA7A9000, v35, v36, "Update: isEnabled: %{BOOL}d; isCapable: %{BOOL}d -> %{BOOL}d; isActive: %{BOOL}d -> %{BOOL}d; remoteDevices: %ld", v37, 0x2Au);
    MEMORY[0x1E12739F0](v37, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DA8E2238()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6A78, &qword_1DA960F28);
  swift_allocObject();
  result = sub_1DA9407D4();
  qword_1EE11AF98 = result;
  return result;
}

double sub_1DA8E2284(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_1DA9407F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1DA940854();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA9407E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = sub_1DA940884();
  v36 = *(v41 - 8);
  v11 = MEMORY[0x1EEE9AC00](v41);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = sub_1DA7B7D60();
  if (qword_1EE114BA0 != -1)
  {
    swift_once();
  }

  sub_1DA940FA4();

  if (LOBYTE(aBlock[0]) == 2 || (aBlock[0] & 1) == 0)
  {
    v22 = *(a1 + 88);
    v33 = v3;
    v34 = v4;
    LOBYTE(aBlock[0]) = 1;
    v23 = v22;
    sub_1DA940FB4();

    v32 = *(a1 + 88);
    sub_1DA940864();
    *v10 = 1;
    (*(v8 + 104))(v10, *MEMORY[0x1E69E7F48], v7);
    sub_1DA940874();
    (*(v8 + 8))(v10, v7);
    v36 = *(v36 + 8);
    (v36)(v13, v41);
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = a1;
    v25[4] = v35;
    aBlock[4] = sub_1DA8E56D0;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_87_0;
    v26 = _Block_copy(aBlock);

    v27 = v37;
    sub_1DA940824();
    v42 = MEMORY[0x1E69E7CC0];
    sub_1DA8E56DC(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
    v28 = v39;
    v29 = v33;
    sub_1DA9411D4();
    v30 = v32;
    MEMORY[0x1E1272070](v15, v27, v28, v26);
    _Block_release(v26);

    (*(v34 + 8))(v28, v29);
    (*(v38 + 8))(v27, v40);
    (v36)(v15, v41);
  }

  else
  {
    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v17 = sub_1DA9405A4();
    __swift_project_value_buffer(v17, qword_1EE110EA0);
    v18 = sub_1DA940584();
    v19 = sub_1DA940EF4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DA7A9000, v18, v19, "Debounced device update is already queued.", v20, 2u);
      MEMORY[0x1E12739F0](v20, -1, -1);
    }
  }

  return result;
}

double sub_1DA8E28A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_1DA7B7D60();
    if (qword_1EE114BA0 != -1)
    {
      swift_once();
    }

    sub_1DA940FB4();

    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v5 = sub_1DA9405A4();
    __swift_project_value_buffer(v5, qword_1EE110EA0);
    v6 = sub_1DA940584();
    v7 = sub_1DA940F34();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DA7A9000, v6, v7, "Updating paired devices after debounce.", v8, 2u);
      MEMORY[0x1E12739F0](v8, -1, -1);
    }

    sub_1DA8E2A1C(a2);
  }

  return result;
}

void sub_1DA8E2A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1DA9408C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = sub_1DA7B7D60();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v9 = sub_1DA9408F4();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (*(*(a1 + 72) + 32))
    {

      v10 = sub_1DA93FCA4();
      sub_1DA940D14();
      v11 = sub_1DA940D34();
      (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = a1;
      v12[5] = v10;

      sub_1DA8DB00C(0, 0, v4, &unk_1DA960F18, v12);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DA8E2C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_1DA93FB24();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[9] = v7;
  *v7 = v5;
  v7[1] = sub_1DA8E2D2C;

  return sub_1DA8DF88C();
}

uint64_t sub_1DA8E2D2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1DA8E327C;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_1DA8E2E54;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DA8E2E54()
{
  v1 = v0[10];
  v2 = v0[11];
  if (sub_1DA940E04())
  {
LABEL_21:

    v32 = v0[1];

    return v32();
  }

  v3 = *(v0[5] + 16);
  v36 = sub_1DA93FD54();
  v4 = *(v36 - 8);

  v5 = swift_task_alloc();
  if (v3)
  {
    v40 = (v0[7] + 8);
    v7 = *(v4 + 16);
    v6 = v4 + 16;
    v39 = v7;
    v8 = (*(v6 + 64) + 32) & ~*(v6 + 64);
    v9 = *(v6 + 56);
    v33 = (v6 - 8);
    v37 = (v6 + 16);
    v41 = MEMORY[0x1E69E7CC0];
    v34 = v8;
    v35 = v2;
    v10 = v36;
    v38 = v9;
    do
    {
      v42 = v3;
      v13 = v0[8];
      v14 = v0[6];
      v39(v5, v0[5] + v8, v10);

      sub_1DA93FD44();
      v15 = sub_1DA93FB04();
      v17 = v16;
      (*v40)(v13, v14);
      v0[2] = v15;
      v0[3] = v17;
      v18 = swift_task_alloc();
      *(v18 + 16) = v0 + 2;
      LOBYTE(v13) = sub_1DA7B36C0(sub_1DA7B378C, v18, v2);

      if (v13)
      {
        v19 = swift_task_alloc();
        v20 = *v37;
        (*v37)(v19, v5, v10);
        v21 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DA82AB30(0, *(v41 + 16) + 1, 1);
          v21 = v41;
        }

        v11 = v42;
        v23 = *(v21 + 16);
        v22 = *(v21 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1DA82AB30((v22 > 1), v23 + 1, 1);
          v21 = v41;
        }

        *(v21 + 16) = v23 + 1;
        v41 = v21;
        v24 = v21 + v34;
        v12 = v38;
        v25 = v24 + v23 * v38;
        v10 = v36;
        v20(v25, v19, v36);

        v2 = v35;
      }

      else
      {
        (*v33)(v5, v10);
        v11 = v42;
        v12 = v38;
      }

      v5 = swift_task_alloc();
      v8 += v12;
      v3 = v11 - 1;
    }

    while (v3);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1DA940E04())
  {

    goto LABEL_21;
  }

  v26 = v0[4];
  v27 = *(v26 + 112);
  v28 = swift_task_alloc();
  *(v28 + 16) = v26;
  *(v28 + 24) = v41;
  v29 = swift_task_alloc();
  *(v29 + 16) = sub_1DA8E57E4;
  *(v29 + 24) = v28;
  os_unfair_lock_lock(v27 + 4);
  sub_1DA84A760(v30);
  os_unfair_lock_unlock(v27 + 4);
  if (!v1)
  {

    goto LABEL_21;
  }
}

uint64_t sub_1DA8E327C()
{
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1EE110EA0);
  v3 = v1;
  v4 = sub_1DA940584();
  v5 = sub_1DA940F14();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  v46 = v0;
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1DA7A9000, v4, v5, "Failed to get paired devices from Sharing. %{public}@", v8, 0xCu);
    sub_1DA7BA120(v9, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v9, -1, -1);
    MEMORY[0x1E12739F0](v8, -1, -1);

    if (sub_1DA940E04())
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (sub_1DA940E04())
    {
      goto LABEL_22;
    }
  }

  v12 = *(v0[5] + 16);
  v13 = sub_1DA93FD54();
  v14 = *(v13 - 8);

  v15 = swift_task_alloc();
  if (v12)
  {
    v50 = (v0[7] + 8);
    v51 = v0 + 2;
    v17 = *(v14 + 16);
    v16 = v14 + 16;
    v49 = v17;
    v18 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v43 = (v16 - 8);
    v47 = (v16 + 16);
    v44 = v18;
    v45 = v13;
    v52 = MEMORY[0x1E69E7CC0];
    v48 = *(v16 + 56);
    do
    {
      v53 = v12;
      v21 = v0[8];
      v22 = v0[6];
      v49(v15, v0[5] + v18, v13);
      v23 = v13;
      v24 = MEMORY[0x1E69E7CC0];

      sub_1DA93FD44();
      v25 = sub_1DA93FB04();
      v27 = v26;
      (*v50)(v21, v22);
      v0[2] = v25;
      v0[3] = v27;
      v28 = swift_task_alloc();
      *(v28 + 16) = v51;
      LOBYTE(v21) = sub_1DA7B36C0(sub_1DA7B378C, v28, v24);

      if (v21)
      {
        v29 = swift_task_alloc();
        v30 = *v47;
        (*v47)(v29, v15, v23);
        v31 = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DA82AB30(0, *(v52 + 16) + 1, 1);
          v31 = v52;
        }

        v20 = v53;
        v33 = *(v31 + 16);
        v32 = *(v31 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1DA82AB30((v32 > 1), v33 + 1, 1);
          v31 = v52;
        }

        *(v31 + 16) = v33 + 1;
        v52 = v31;
        v34 = v31 + v44;
        v19 = v48;
        v35 = v34 + v33 * v48;
        v13 = v45;
        v30(v35, v29, v45);

        v0 = v46;
      }

      else
      {
        (*v43)(v15, v23);
        v19 = v48;
        v13 = v23;
        v20 = v53;
      }

      v15 = swift_task_alloc();
      v18 += v19;
      v12 = v20 - 1;
    }

    while (v12);
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1DA940E04())
  {
  }

  else
  {
    v36 = v0[4];
    v37 = *(v36 + 112);
    v38 = swift_task_alloc();
    *(v38 + 16) = v36;
    *(v38 + 24) = v52;
    v39 = swift_task_alloc();
    *(v39 + 16) = sub_1DA8E57E4;
    *(v39 + 24) = v38;
    os_unfair_lock_lock(v37 + 4);
    sub_1DA84A760(v40);
    os_unfair_lock_unlock(v37 + 4);
  }

LABEL_22:

  v41 = v0[1];

  return v41();
}