uint64_t sub_230448A94(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_23045A0B8(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_230448BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v135 = a3;
  v126 = a4;
  v6 = sub_2304A53C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2304A4FD4();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v130 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v140 = &v121 - v13;
  v14 = sub_2304A49E4();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v134 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v139 = &v121 - v18;
  MEMORY[0x28223BE20](v17);
  v144 = &v121 - v19;
  v20 = sub_2304A4FF4();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v152 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v25 = MEMORY[0x28223BE20](v24);
  v131 = &v121 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v137 = &v121 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v129 = &v121 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v146 = &v121 - v32;
  result = MEMORY[0x28223BE20](v31);
  v36 = &v121 - v35;
  if (!*(a1 + 16))
  {
    v138 = MEMORY[0x277D84F98];
    v41 = MEMORY[0x277D84F90];
LABEL_46:
    v105 = v126;
    *v126 = v138;
    v105[1] = v41;
    return result;
  }

  v156 = *(a1 + 16);
  v125 = v34;
  v122 = v7;
  v123 = v6;
  v124 = v9;
  v153 = sub_2304A4984();
  v133 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection;
  v132 = (a2 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator);
  v147 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v37 = a1 + v147;
  v149 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  v150 = a2;
  swift_beginAccess();
  v38 = v37;
  v40 = *(v21 + 16);
  v39 = v21 + 16;
  v157 = v40;
  v151 = (v39 + 16);
  v127 = (v39 + 24);
  v41 = MEMORY[0x277D84F90];
  v148 = (v39 - 8);
  v138 = MEMORY[0x277D84F98];
  v42 = *(v39 + 56);
  *&v43 = 136446210;
  v136 = v43;
  v143 = v39;
  v145 = v42;
  v128 = v36;
  while (1)
  {
    v154 = v38;
    v155 = v41;
    v157(v36);
    sub_2304A4FB4();
    sub_2304A4F84();
    v44 = sub_2304A4974();

    v45 = *(v150 + v149);
    v158 = v44;
    if ((v45 & 0xC000000000000001) != 0)
    {

      v46 = sub_2304A6224();

      v41 = v44;
      if (!v46)
      {
        goto LABEL_20;
      }

      v159 = v46;
      type metadata accessor for ClientDataSource(0);
      swift_dynamicCast();
      v47 = v160;
    }

    else
    {
      v41 = v44;
      if (!*(v45 + 16))
      {
        goto LABEL_21;
      }

      v48 = sub_230469CB8(v44);
      if ((v49 & 1) == 0)
      {
LABEL_20:

LABEL_21:
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v75 = sub_2304A5B74();
        __swift_project_value_buffer(v75, qword_28149B008);

        v76 = sub_2304A5B54();
        v77 = sub_2304A5E74();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = v41;
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v160 = v80;
          *v79 = v136;
          v159 = v78;
          sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8], MEMORY[0x277D464D0]);
          v81 = sub_2304A62D4();
          v83 = sub_23046A5C8(v81, v82, &v160);

          *(v79 + 4) = v83;
          _os_log_impl(&dword_230430000, v76, v77, "Cannot find a zone that does not exist: %{public}s", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v80);
          v84 = v80;
          v42 = v145;
          MEMORY[0x23191A000](v84, -1, -1);
          MEMORY[0x23191A000](v79, -1, -1);
        }

        v41 = v155;
        (v157)(v152, v36, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_23045A0B8(0, *(v41 + 2) + 1, 1, v41, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
        }

        v86 = *(v41 + 2);
        v85 = *(v41 + 3);
        if (v86 >= v85 >> 1)
        {
          v41 = sub_23045A0B8((v85 > 1), v86 + 1, 1, v41, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
        }

        (*v148)(v36, v20);
        *(v41 + 2) = v86 + 1;
        result = (*v151)(&v41[v147 + v86 * v42], v152, v20);
        goto LABEL_4;
      }

      v47 = *(*(v45 + 56) + 8 * v48);
    }

    if (!v47)
    {
      goto LABEL_21;
    }

    sub_2304A5234();
    v50 = [*(v135 + v133) remoteToken];
    v51 = sub_2304A5D14();

    v52 = [v50 hasEntitlement_];

    if ((v52 & 1) == 0)
    {
      break;
    }

    v53 = v140;
    sub_2304A4FE4();
    v54 = sub_2304A4084();
    v55 = *(v54 - 8);
    v56 = 1;
    if ((*(v55 + 48))(v53, 1, v54) != 1)
    {
      (*(v55 + 32))(v139, v140, v54);
      v56 = 0;
    }

    v57 = v139;
    (*(v55 + 56))(v139, v56, 1, v54);
    v58 = MEMORY[0x277D464E0];
    v59 = v57;
    v60 = v144;
    sub_2304643E0(v59, v144, MEMORY[0x277D464E0]);
    sub_2304A4FA4();
    sub_230464448(v60, v134, v58);
    sub_2304A4A04();
    swift_allocObject();

    v61 = sub_2304A49B4();
    __swift_project_boxed_opaque_existential_5Tm(v132, v132[3]);
    v141 = v61;
    sub_2304A4204();
    v142 = v47;
    if (v62)
    {
      (v157)(v146, v36, v20);
      v41 = sub_2304A4FB4();
      sub_2304A4F84();
      v36 = v20;
      sub_2304A4FE4();
      v63 = v129;
      sub_2304A4F94();
      v64 = *v151;
      (*v151)(v137, v63, v20);
      v65 = v138;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160 = v65;
      v67 = sub_230469D9C(v146);
      v69 = *(v65 + 16);
      v70 = (v68 & 1) == 0;
      v71 = __OFADD__(v69, v70);
      v72 = v69 + v70;
      if (v71)
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v73 = v68;
      if (*(v65 + 24) >= v72)
      {
        v36 = v128;
        v41 = v155;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v104 = v67;
          sub_230471724();
          v67 = v104;
        }
      }

      else
      {
        sub_23046EE34(v72, isUniquelyReferenced_nonNull_native);
        v67 = sub_230469D9C(v146);
        v36 = v128;
        v41 = v155;
        if ((v73 & 1) != (v74 & 1))
        {
          result = sub_2304A6314();
          __break(1u);
          return result;
        }
      }

      v99 = v160;
      v138 = v160;
      if (v73)
      {
        v42 = v145;
        (*v127)(v160[7] + v67 * v145, v137, v20);
      }

      else
      {
        v160[(v67 >> 6) + 8] |= 1 << v67;
        v100 = v67 * v145;
        (v157)(v99[6] + v67 * v145, v146, v20);
        v64((v99[7] + v100), v137, v20);
        v101 = v99[2];
        v71 = __OFADD__(v101, 1);
        v102 = v101 + 1;
        if (v71)
        {
          goto LABEL_56;
        }

        v99[2] = v102;
        v42 = v145;
      }

      v103 = *v148;
      (*v148)(v146, v20);
      sub_2304644B0(v144, MEMORY[0x277D464E0]);
      result = v103(v36, v20);
    }

    else
    {
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v87 = sub_2304A5B74();
      __swift_project_value_buffer(v87, qword_28149B008);
      v88 = v158;

      v89 = sub_2304A5B54();
      v90 = sub_2304A5E74();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v160 = v92;
        *v91 = v136;
        v159 = v88;
        sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8], MEMORY[0x277D464D0]);
        v93 = sub_2304A62D4();
        v95 = sub_23046A5C8(v93, v94, &v160);

        *(v91 + 4) = v95;
        _os_log_impl(&dword_230430000, v89, v90, "Cannot find a record that does not exist: %{public}s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v92);
        v96 = v92;
        v42 = v145;
        MEMORY[0x23191A000](v96, -1, -1);
        MEMORY[0x23191A000](v91, -1, -1);
      }

      (v157)(v131, v36, v20);
      v41 = v155;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_23045A0B8(0, *(v41 + 2) + 1, 1, v41, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
      }

      v98 = *(v41 + 2);
      v97 = *(v41 + 3);
      if (v98 >= v97 >> 1)
      {
        v41 = sub_23045A0B8((v97 > 1), v98 + 1, 1, v41, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
      }

      sub_2304644B0(v144, MEMORY[0x277D464E0]);
      (*v148)(v36, v20);
      *(v41 + 2) = v98 + 1;
      result = (*v151)(&v41[v147 + v98 * v42], v131, v20);
    }

LABEL_4:
    v38 = v154 + v42;
    if (!--v156)
    {
      goto LABEL_46;
    }
  }

  if (qword_281499E38 == -1)
  {
    goto LABEL_48;
  }

LABEL_57:
  swift_once();
LABEL_48:
  v106 = sub_2304A5B74();
  __swift_project_value_buffer(v106, qword_28149B008);

  v107 = sub_2304A5B54();
  v108 = sub_2304A5E74();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = v41;
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v160 = v111;
    *v110 = v136;
    v159 = v109;
    sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8], MEMORY[0x277D464D0]);
    v112 = sub_2304A62D4();
    v114 = sub_23046A5C8(v112, v113, &v160);

    *(v110 + 4) = v114;
    _os_log_impl(&dword_230430000, v107, v108, "Cannot access a record in a zone without entitlement: %{public}s", v110, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v111);
    MEMORY[0x23191A000](v111, -1, -1);
    MEMORY[0x23191A000](v110, -1, -1);
  }

  v115 = v124;
  v116 = v123;
  v117 = v122;
  v118 = v155;
  (v157)(v125, v36, v20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v118 = sub_23045A0B8(0, *(v118 + 2) + 1, 1, v118, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
  }

  v120 = *(v118 + 2);
  v119 = *(v118 + 3);
  if (v120 >= v119 >> 1)
  {
    v118 = sub_23045A0B8((v119 > 1), v120 + 1, 1, v118, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
  }

  *(v118 + 2) = v120 + 1;
  (*v151)(&v118[v147 + v120 * v145], v125, v20);

  (*(v117 + 104))(v115, *MEMORY[0x277D468C0], v116);
  sub_2304A53E4();
  sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
  swift_allocError();
  sub_2304A53D4();
  swift_willThrow();

  return (*v148)(v36, v20);
}

uint64_t sub_230449EC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
  v5 = MEMORY[0x28223BE20](v60);
  v59 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v58 = v49 - v8;
  MEMORY[0x28223BE20](v7);
  v57 = v49 - v9;
  v68 = sub_2304A4F74();
  v10 = *(v68 - 8);
  result = MEMORY[0x28223BE20](v68);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_devices);
  if (!v14)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
LABEL_23:
    *a2 = v16;
    return result;
  }

  v49[0] = a2;
  v49[1] = v2;
  v69 = MEMORY[0x277D84F90];

  sub_23045FAE4(0, v15, 0);
  v16 = v69;
  v67 = v14 + 64;
  result = sub_2304A5FB4();
  v17 = result;
  v18 = 0;
  v54 = v10 + 32;
  v55 = v10 + 16;
  v50 = v14 + 72;
  v51 = v15;
  v56 = v13;
  v52 = v10;
  v53 = v14;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v14 + 32))
  {
    if ((*(v67 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_25;
    }

    v63 = 1 << v17;
    v64 = v17 >> 6;
    v21 = *(v14 + 36);
    v61 = v18;
    v62 = v21;
    v22 = v60;
    v23 = *(v60 + 48);
    v24 = *(v14 + 48);
    v25 = sub_2304A4084();
    v26 = *(v25 - 8);
    v27 = v26;
    v28 = v24 + *(v26 + 72) * v17;
    v29 = *(v26 + 16);
    v66 = v16;
    v30 = v57;
    v29(v57, v28, v25);
    v31 = *(v14 + 56);
    v65 = *(v10 + 72);
    v32 = v68;
    (*(v10 + 16))(&v30[v23], v31 + v65 * v17, v68);
    v33 = v58;
    (*(v27 + 32))(v58, v30, v25);
    v34 = *(v10 + 32);
    v35 = &v30[v23];
    v16 = v66;
    v34(v33 + *(v22 + 48), v35, v32);
    v36 = v59;
    sub_230464ABC(v33, v59, &unk_27DB54640, &qword_2304A73F8);
    v37 = *(v22 + 48);
    v38 = v56;
    v34(v56, (v36 + v37), v32);
    (*(v27 + 8))(v36, v25);
    v69 = v16;
    v40 = *(v16 + 16);
    v39 = *(v16 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_23045FAE4((v39 > 1), v40 + 1, 1);
      v16 = v69;
    }

    *(v16 + 16) = v40 + 1;
    v41 = v52;
    result = (v34)(v16 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + v40 * v65, v38, v68);
    v14 = v53;
    v19 = 1 << *(v53 + 32);
    if (v17 >= v19)
    {
      goto LABEL_26;
    }

    v42 = *(v67 + 8 * v64);
    if ((v42 & v63) == 0)
    {
      goto LABEL_27;
    }

    if (v62 != *(v53 + 36))
    {
      goto LABEL_28;
    }

    v10 = v41;
    v43 = v42 & (-2 << (v17 & 0x3F));
    if (v43)
    {
      v19 = __clz(__rbit64(v43)) | v17 & 0x7FFFFFFFFFFFFFC0;
      v20 = v61;
    }

    else
    {
      v44 = v64 << 6;
      v45 = v64 + 1;
      v46 = (v50 + 8 * v64);
      while (v45 < (v19 + 63) >> 6)
      {
        v48 = *v46++;
        v47 = v48;
        v44 += 64;
        ++v45;
        if (v48)
        {
          result = sub_230433B44(v17, v62, 0);
          v19 = __clz(__rbit64(v47)) + v44;
          goto LABEL_20;
        }
      }

      result = sub_230433B44(v17, v62, 0);
LABEL_20:
      v20 = v61;
    }

    v18 = v20 + 1;
    v17 = v19;
    if (v18 == v51)
    {

      a2 = v49[0];
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_23044A3E0(uint64_t a1, BOOL *a2)
{
  v5 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_devices;
  v6 = *(a1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_devices);

  v7 = sub_23044A5E8();
  if (v2)
  {

    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v8 = sub_2304A5B74();
    __swift_project_value_buffer(v8, qword_28149B008);
    v9 = v2;
    v10 = sub_2304A5B54();
    v11 = sub_2304A5E74();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = v2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_230430000, v10, v11, "Could not determine new device list: %{public}@", v12, 0xCu);
      sub_230464970(v13, &qword_27DB53F30, &qword_2304A7390);
      MEMORY[0x23191A000](v13, -1, -1);
      MEMORY[0x23191A000](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v16 = v7;
    if (!v6 || (, , v17 = sub_23045969C(v6, v16), , swift_bridgeObjectRelease_n(), (v17 & 1) == 0))
    {
      *a2 = *(a1 + v5) != 0;
      *(a1 + v5) = v16;
    }
  }
}

uint64_t sub_23044A5E8()
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54100, &qword_2304A74D0);
  MEMORY[0x28223BE20](v42);
  v3 = &v36 - v2;
  v4 = sub_2304A4834();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540A0, &qword_2304A7490);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v36 - v11;
  v12 = (v0 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator);
  __swift_project_boxed_opaque_existential_5Tm((v0 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v0 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
  v13 = sub_2304A4554();
  v43 = 0;
  if (v13)
  {
    __swift_project_boxed_opaque_existential_5Tm(v12, v12[3]);
    v43 = sub_2304A4574();
  }

  __swift_project_boxed_opaque_existential_5Tm((v0 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v0 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
  v14 = sub_2304A5404();
  if (v1)
  {

    v15 = sub_2304A51C4();
    v16 = v40;
    (*(*(v15 - 8) + 56))(v40, 1, 1, v15);
  }

  else
  {
    v17 = v14;
    if (*(v14 + 16) && (v18 = sub_230469C40(0xD000000000000011, 0x80000002304A8260), (v19 & 1) != 0))
    {
      v20 = v18;
      v41 = *(v17 + 56);
      v15 = sub_2304A51C4();
      v37 = *(v15 - 8);
      v21 = v41 + *(v37 + 72) * v20;
      v16 = v40;
      (*(v37 + 16))(v40, v21, v15);

      (*(v37 + 56))(v16, 0, 1, v15);
    }

    else
    {

      v15 = sub_2304A51C4();
      v16 = v40;
      (*(*(v15 - 8) + 56))(v40, 1, 1, v15);
    }
  }

  sub_230464B24(v16, v10, &qword_27DB540A0, &qword_2304A7490);
  sub_2304A51C4();
  v22 = *(v15 - 8);
  if ((*(v22 + 48))(v10, 1, v15) == 1)
  {
    sub_230464970(v10, &qword_27DB540A0, &qword_2304A7490);
    LODWORD(v41) = 0;
  }

  else
  {
    LODWORD(v41) = sub_2304A5184();
    (*(v22 + 8))(v10, v15);
  }

  __swift_project_boxed_opaque_existential_5Tm(v12, v12[3]);
  sub_2304A4824();
  v23 = sub_2304A4904();
  (*(v38 + 8))(v6, v39);
  v44 = MEMORY[0x277D84F98];
  v24 = 1 << *(v23 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v23 + 64);
  v27 = (v24 + 63) >> 6;

  for (i = 0; v26; i = v29)
  {
    v29 = i;
LABEL_19:
    v30 = __clz(__rbit64(v26)) | (v29 << 6);
    v31 = *(v23 + 48);
    v32 = sub_2304A4084();
    (*(*(v32 - 8) + 16))(v3, v31 + *(*(v32 - 8) + 72) * v30, v32);
    v33 = *(v23 + 56);
    v34 = sub_2304A46C4();
    (*(*(v34 - 8) + 16))(&v3[*(v42 + 48)], v33 + *(*(v34 - 8) + 72) * v30, v34);
    sub_23044AC58(&v44, v3, v41 & 1, v43);
    v26 &= v26 - 1;
    sub_230464970(v3, &unk_27DB54100, &qword_2304A74D0);
  }

  while (1)
  {
    v29 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      sub_230464970(v40, &qword_27DB540A0, &qword_2304A7490);

      return v44;
    }

    v26 = *(v23 + 64 + 8 * v29);
    ++i;
    if (v26)
    {
      goto LABEL_19;
    }
  }

  __break(1u);

  sub_230464970(v3, &unk_27DB54100, &qword_2304A74D0);

  __break(1u);
  return result;
}

uint64_t sub_23044AC58(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v298 = a4;
  v352 = a2;
  v303 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54650, &qword_2304A74D8);
  MEMORY[0x28223BE20](v5 - 8);
  v302 = &v291 - v6;
  v7 = sub_2304A4024();
  MEMORY[0x28223BE20](v7 - 8);
  v324 = &v291 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_2304A4F74();
  v300 = *(v301 - 8);
  MEMORY[0x28223BE20](v301);
  v299 = &v291 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54110, &unk_2304A74E0);
  MEMORY[0x28223BE20](v10 - 8);
  v314 = &v291 - v11;
  v316 = sub_2304A4544();
  v315 = *(v316 - 8);
  MEMORY[0x28223BE20](v316);
  v297 = &v291 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54680, &unk_2304A7BA0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v323 = &v291 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v331 = &v291 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v318 = &v291 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v293 = &v291 - v20;
  v354 = sub_2304A4084();
  v21 = *(v354 - 8);
  v22 = MEMORY[0x28223BE20](v354);
  v320 = &v291 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v321 = &v291 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v322 = &v291 - v27;
  MEMORY[0x28223BE20](v26);
  v292 = &v291 - v28;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54120, &qword_2304A74F0);
  v29 = MEMORY[0x28223BE20](v363);
  v362 = &v291 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v386 = &v291 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v385 = &v291 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v384 = &v291 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v383 = &v291 - v38;
  MEMORY[0x28223BE20](v37);
  v361 = &v291 - v39;
  v360 = sub_2304A4B64();
  v364 = *(v360 - 8);
  MEMORY[0x28223BE20](v360);
  v359 = &v291 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = sub_2304A4EE4();
  v335 = *(v336 - 8);
  v41 = MEMORY[0x28223BE20](v336);
  v319 = &v291 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v309 = &v291 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v310 = &v291 - v46;
  MEMORY[0x28223BE20](v45);
  v334 = &v291 - v47;
  v328 = sub_2304A4BE4();
  v327 = *(v328 - 8);
  v48 = MEMORY[0x28223BE20](v328);
  v365 = &v291 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v339 = &v291 - v50;
  v51 = sub_2304A4114();
  v381 = *(v51 - 8);
  v382 = v51;
  MEMORY[0x28223BE20](v51);
  v388 = &v291 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = sub_2304A4E94();
  v53 = *(v338 - 8);
  v54 = MEMORY[0x28223BE20](v338);
  v317 = &v291 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v337 = &v291 - v56;
  v326 = sub_2304A46A4();
  v325 = *(v326 - 8);
  v57 = MEMORY[0x28223BE20](v326);
  v306 = &v291 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v61 = &v291 - v60;
  MEMORY[0x28223BE20](v59);
  v378 = &v291 - v62;
  v369 = sub_2304A4434();
  v368 = *(v369 - 8);
  v63 = MEMORY[0x28223BE20](v369);
  v366 = &v291 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v367 = &v291 - v65;
  v346 = sub_2304A44F4();
  v350 = *(v346 - 8);
  v66 = MEMORY[0x28223BE20](v346);
  v296 = &v291 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v66);
  v294 = &v291 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v308 = &v291 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v387 = &v291 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v329 = &v291 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v379 = &v291 - v77;
  MEMORY[0x28223BE20](v76);
  v341 = &v291 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54100, &qword_2304A74D0);
  v80 = MEMORY[0x28223BE20](v79);
  v295 = &v291 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v313 = &v291 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v312 = &v291 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v311 = &v291 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v307 = &v291 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v305 = &v291 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v332 = &v291 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v333 = &v291 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v380 = &v291 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v100 = &v291 - v99;
  v351 = v98;
  v345 = &v291 - v99;
  v343 = v21;
  v330 = v53;
  if ((a3 & 1) == 0)
  {
    sub_230464B24(v352, &v291 - v99, &unk_27DB54100, &qword_2304A74D0);
    v101 = *(v79 + 48);
    v102 = v341;
    sub_2304A4674();
    v103 = sub_2304A46C4();
    v104 = *(v103 - 8);
    v105 = *(v104 + 8);
    v375 = v104 + 8;
    v376 = v105;
    v105(&v100[v101], v103);
    v106 = v367;
    sub_2304A4494();
    v107 = v102;
    v108 = v61;
    v109 = v354;
    (*(v350 + 8))(v107, v346);
    v110 = sub_2304A4414();
    (*(v368 + 8))(v106, v369);
    v111 = v109;
    v112 = v108;
    v377 = *(v21 + 8);
    v377(v100, v111);
    if (v110 == 7)
    {
      sub_230464B24(v352, v100, &unk_27DB54100, &qword_2304A74D0);
      v113 = *(v351 + 48);
      v114 = v378;
      sub_2304A46B4();
      v115 = &v345[v113];
      v100 = v345;
      v79 = v351;
      v376(v115, v103);
      v116 = v325;
      v117 = v326;
      (*(v325 + 104))(v112, *MEMORY[0x277D46408], v326);
      sub_230464B8C(&qword_27DB54690, MEMORY[0x277D46430], MEMORY[0x277D46438]);
      v118 = sub_2304A5D04();
      v119 = *(v116 + 8);
      v119(v112, v117);
      v119(v114, v117);
      v53 = v330;
      v21 = v343;
      result = (v377)(v100, v354);
      if (v118)
      {
        return result;
      }
    }
  }

  v121 = v380;
  sub_230464B24(v352, v380, &unk_27DB54100, &qword_2304A74D0);
  v122 = *(v79 + 48);
  v123 = v379;
  sub_2304A4674();
  v124 = sub_2304A46C4();
  v125 = *(v124 - 8);
  v126 = *(v125 + 8);
  v353 = v124;
  v348 = v126;
  v347 = v125 + 8;
  (v126)(v121 + v122);
  v127 = v388;
  sub_2304A4454();
  v128 = v350 + 8;
  v129 = v123;
  v130 = v346;
  v349 = *(v350 + 8);
  v349(v129, v346);
  v132 = v381;
  v131 = v382;
  v133 = (*(v381 + 88))(v127, v382);
  if (v133 == *MEMORY[0x277D46330])
  {
    v134 = v352;
    v135 = MEMORY[0x277D46730];
  }

  else if (v133 == *MEMORY[0x277D46310])
  {
    v134 = v352;
    v135 = MEMORY[0x277D46710];
  }

  else if (v133 == *MEMORY[0x277D46320])
  {
    v134 = v352;
    v135 = MEMORY[0x277D46720];
  }

  else if (v133 == *MEMORY[0x277D46318])
  {
    v134 = v352;
    v135 = MEMORY[0x277D46718];
  }

  else
  {
    if (v133 != *MEMORY[0x277D46328])
    {
      v290 = *(v53 + 104);
      v134 = v352;
      if (v133 == *MEMORY[0x277D46308])
      {
        v290(v337, *MEMORY[0x277D46708], v338);
      }

      else
      {
        v290(v337, *MEMORY[0x277D46730], v338);
        (*(v132 + 8))(v388, v131);
      }

      goto LABEL_15;
    }

    v134 = v352;
    v135 = MEMORY[0x277D46728];
  }

  (*(v53 + 104))(v337, *v135, v338);
LABEL_15:
  v344 = *(v21 + 8);
  v340 = v21 + 8;
  v344(v121, v354);
  v136 = v134;
  sub_230464B24(v134, v100, &unk_27DB54100, &qword_2304A74D0);
  v137 = *(v351 + 48);
  v138 = v341;
  sub_2304A4674();
  v348(&v100[v137], v353);
  v139 = v367;
  sub_2304A4494();
  v349(v138, v130);
  v388 = sub_2304A4414();
  v141 = v368 + 8;
  v140 = *(v368 + 8);
  v140(v139, v369);
  v142 = v136;
  v143 = v333;
  sub_230464B24(v142, v333, &unk_27DB54100, &qword_2304A74D0);
  v350 = v128;
  v144 = v130;
  v145 = *(v351 + 48);
  v146 = v329;
  sub_2304A4674();
  v348((v143 + v145), v353);
  v147 = v366;
  sub_2304A4494();
  v349(v146, v144);
  sub_2304A4424();
  v368 = v141;
  v358 = v140;
  v140(v147, v369);
  sub_2304A4BB4();
  v148 = v143;
  v149 = v352;
  v150 = v351;
  v151 = v354;
  v152 = v344;
  v344(v148, v354);
  v153 = v345;
  v152(v345, v151);
  v154 = v152;
  sub_230464B24(v149, v153, &unk_27DB54100, &qword_2304A74D0);
  v155 = *(v150 + 48);
  sub_2304A4674();
  v156 = (v153 + v155);
  v157 = v348;
  v348(v156, v353);
  v158 = sub_2304A44D4();
  v349(v138, v346);
  v159 = v342;
  v304 = sub_23043DA28(v158);
  v342 = v159;

  v154(v345, v354);
  v160 = v332;
  sub_230464B24(v149, v332, &unk_27DB54100, &qword_2304A74D0);
  v161 = *(v150 + 48);
  v162 = v387;
  sub_2304A4674();
  v157(v160 + v161, v353);
  v163 = sub_2304A4474();
  v349(v162, v346);
  v164 = *(v163 + 16);
  if (v164)
  {
    v389 = MEMORY[0x277D84F90];
    sub_23045FB28(0, v164, 0);
    v387 = v389;
    v165 = sub_2304A5FB4();
    v356 = v364 + 32;
    v357 = v163;
    v355 = v163 + 64;
    while (1)
    {
      v382 = v165;
      v370 = v164;
      v166 = *(v163 + 36);
      v167 = v363;
      v168 = *(v363 + 48);
      v169 = v361;
      v371 = v166;
      sub_230460364(v361, v361 + v168, v165, v166, 0, v163);
      v170 = sub_2304A41D4();
      v171 = *(v170 - 8);
      v172 = v383;
      (*(v171 + 32))(v383, v169, v170);
      v173 = *(v167 + 48);
      v174 = sub_2304A41F4();
      v372 = *(v174 - 8);
      v175 = *(v372 + 32);
      v388 = v174;
      v175(v172 + v173, v169 + v168, v174);
      v176 = v384;
      sub_230464B24(v172, v384, &unk_27DB54120, &qword_2304A74F0);
      v381 = *(v167 + 48);
      v177 = sub_2304A41C4();
      v379 = v178;
      v380 = v177;
      v180 = v171 + 8;
      v179 = *(v171 + 8);
      v374 = v170;
      v179(v176, v170);
      v375 = v180;
      v373 = v179;
      v181 = v385;
      sub_230464B24(v172, v385, &unk_27DB54120, &qword_2304A74F0);
      v378 = *(v167 + 48);
      v182 = sub_2304A41A4();
      v376 = v183;
      v377 = v182;
      v179(v181, v170);
      v184 = v172;
      v185 = v386;
      sub_230464B24(v172, v386, &unk_27DB54120, &qword_2304A74F0);
      v186 = *(v167 + 48);
      v187 = v367;
      sub_2304A4194();
      v188 = *(v372 + 8);
      v188(&v185[v186], v174);
      v372 = sub_2304A4414();
      v189 = v369;
      v190 = v358;
      v358(v187, v369);
      v191 = v362;
      sub_230464B24(v184, v362, &unk_27DB54120, &qword_2304A74F0);
      v192 = *(v167 + 48);
      v193 = v366;
      sub_2304A4194();
      v188((v191 + v192), v388);
      sub_2304A4424();
      v190(v193, v189);
      sub_2304A4BB4();
      v194 = v191;
      v196 = v373;
      v195 = v374;
      v373(v194, v374);
      v196(v386, v195);
      v197 = v359;
      sub_2304A4B24();
      sub_230464970(v383, &unk_27DB54120, &qword_2304A74F0);
      v198 = v388;
      v188(&v378[v385], v388);
      v188((v384 + v381), v198);
      v199 = v387;
      v389 = v387;
      v201 = *(v387 + 2);
      v200 = *(v387 + 3);
      if (v201 >= v200 >> 1)
      {
        sub_23045FB28((v200 > 1), v201 + 1, 1);
        v199 = v389;
      }

      *(v199 + 2) = v201 + 1;
      (*(v364 + 32))(&v199[((*(v364 + 80) + 32) & ~*(v364 + 80)) + *(v364 + 72) * v201], v197, v360);
      v163 = v357;
      if (v382 < 0 || v382 >= -(-1 << *(v357 + 32)))
      {
        break;
      }

      if (((*(v355 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v382) & 1) == 0)
      {
        goto LABEL_53;
      }

      if (v371 != *(v357 + 36))
      {
        goto LABEL_54;
      }

      v387 = v199;
      v165 = sub_2304A5FD4();
      v164 = v370 - 1;
      if (v370 == 1)
      {

        v202 = v352;
        v203 = v351;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v387 = MEMORY[0x277D84F90];
  v203 = v351;
  v202 = v352;
LABEL_26:
  v344(v332, v354);
  v204 = v305;
  sub_230464B24(v202, v305, &unk_27DB54100, &qword_2304A74D0);
  v205 = *(v203 + 48);
  v206 = v306;
  sub_2304A46B4();
  v348((v204 + v205), v353);
  v207 = v325;
  v208 = v326;
  v209 = (*(v325 + 88))(v206, v326);
  v210 = v343;
  v211 = v336;
  v212 = v309;
  if (v209 == *MEMORY[0x277D46428])
  {
    (*(v207 + 96))(v206, v208);
    v213 = v293;
    sub_2304A4034();

    if ((*(v210 + 48))(v213, 1, v354) == 1)
    {
      sub_230464970(v213, &qword_27DB53F20, &qword_2304A7388);
      v214 = MEMORY[0x277D46748];
    }

    else
    {
      v218 = v213;
      v219 = *(v210 + 32);
      v220 = v292;
      v221 = v354;
      v219(v292, v218, v354);
      v219(v212, v220, v221);
      v214 = MEMORY[0x277D46768];
    }

    v216 = v310;
    v215 = v335;
    v217 = v344;
    (*(v335 + 104))(v212, *v214, v211);
    (*(v215 + 32))(v216, v212, v211);
    v217(v204, v354);
  }

  else if (v209 == *MEMORY[0x277D46408])
  {
    v215 = v335;
    v216 = v310;
    (*(v335 + 104))(v310, *MEMORY[0x277D46748], v336);
    v217 = v344;
    v344(v204, v354);
  }

  else
  {
    v216 = v310;
    v215 = v335;
    v217 = v344;
    if (v209 == *MEMORY[0x277D46418])
    {
      v222 = MEMORY[0x277D46758];
    }

    else
    {
      if (v209 != *MEMORY[0x277D46410] && v209 != *MEMORY[0x277D46420])
      {
LABEL_55:
        result = sub_2304A62E4();
        __break(1u);
        return result;
      }

      v222 = MEMORY[0x277D46750];
    }

    (*(v335 + 104))(v310, *v222, v336);
    v217(v204, v354);
  }

  (*(v215 + 32))(v334, v216, v211);
  v223 = v307;
  sub_230464B24(v352, v307, &unk_27DB54100, &qword_2304A74D0);
  v224 = *(v351 + 48);
  v225 = v217;
  v226 = v308;
  sub_2304A4674();
  v348((v223 + v224), v353);
  v227 = v314;
  sub_2304A4444();
  v228 = v227;
  v349(v226, v346);
  v229 = v315;
  v230 = v316;
  if ((*(v315 + 48))(v228, 1, v316) == 1)
  {
    sub_230464970(v228, &unk_27DB54110, &unk_2304A74E0);
    v225(v223, v354);
    v231 = 1;
    v232 = v225;
    v233 = v331;
  }

  else
  {
    v234 = v228;
    v235 = v297;
    (*(v229 + 32))(v297, v234, v230);
    v225(v223, v354);
    sub_2304A4534();
    sub_2304A4524();
    sub_2304A4514();
    v233 = v331;
    sub_2304A4F54();
    (*(v229 + 8))(v235, v230);
    v231 = 0;
    v232 = v225;
  }

  v236 = sub_2304A4F64();
  (*(*(v236 - 8) + 56))(v233, v231, 1, v236);
  v237 = v345;
  sub_230464B24(v352, v345, &unk_27DB54100, &qword_2304A74D0);
  v238 = *(v351 + 48);
  v239 = v341;
  sub_2304A4674();
  v348((v237 + v238), v353);
  sub_2304A44B4();
  v349(v239, v346);
  v240 = v318;
  sub_2304A4034();

  v241 = v354;
  v232(v237, v354);
  v242 = v343;
  if ((*(v343 + 48))(v240, 1, v241) == 1)
  {

    sub_230464970(v233, &unk_27DB54680, &unk_2304A7BA0);
    (*(v335 + 8))(v334, v336);
    (*(v327 + 8))(v339, v328);
    (*(v330 + 8))(v337, v338);
    return sub_230464970(v240, &qword_27DB53F20, &qword_2304A7388);
  }

  else
  {
    v243 = v322;
    (*(v242 + 32))(v322, v240, v354);
    v244 = v352;
    if (v298)
    {
      LODWORD(v388) = sub_230495A50(v243, v298) ^ 1;
    }

    else
    {
      LODWORD(v388) = 0;
    }

    v245 = v351;
    v246 = *(v242 + 16);
    v343 = v242 + 16;
    v386 = v246;
    (v246)(v321, v243, v354);
    v247 = v345;
    sub_230464B24(v244, v345, &unk_27DB54100, &qword_2304A74D0);
    v248 = *(v245 + 48);
    sub_2304A4684();
    v249 = v353;
    v250 = v348;
    v348((v247 + v248), v353);
    v251 = v333;
    sub_230464B24(v244, v333, &unk_27DB54100, &qword_2304A74D0);
    v252 = *(v245 + 48);
    v253 = v341;
    sub_2304A4674();
    v250(v251 + v252, v249);
    v254 = sub_2304A44C4();
    v384 = v255;
    v385 = v254;
    v349(v253, v346);
    (*(v327 + 16))(v365, v339, v328);
    (*(v330 + 16))(v317, v337, v338);
    sub_230464B24(v331, v323, &unk_27DB54680, &unk_2304A7BA0);
    (*(v335 + 16))(v319, v334, v336);
    v256 = v311;
    sub_230464B24(v244, v311, &unk_27DB54100, &qword_2304A74D0);
    v257 = *(v245 + 48);
    sub_2304A4664();
    v258 = v256 + v257;
    v259 = v353;
    v250(v258, v353);
    v260 = v244;
    v261 = v312;
    sub_230464B24(v260, v312, &unk_27DB54100, &qword_2304A74D0);
    v262 = *(v245 + 48);
    v263 = v261;
    v264 = v329;
    sub_2304A4674();
    v265 = v259;
    v250(v263 + v262, v259);
    v266 = sub_2304A4484();
    v382 = v267;
    v383 = v266;
    v268 = v346;
    v269 = v349;
    v349(v264, v346);
    v270 = v352;
    v271 = v313;
    sub_230464B24(v352, v313, &unk_27DB54100, &qword_2304A74D0);
    v272 = *(v245 + 48);
    v273 = v294;
    sub_2304A4674();
    v274 = v265;
    v275 = v348;
    v348((v271 + v272), v274);
    v276 = sub_2304A4464();
    v380 = v277;
    v381 = v276;
    v269(v273, v268);
    v278 = v269;
    v279 = v295;
    sub_230464B24(v270, v295, &unk_27DB54100, &qword_2304A74D0);
    v280 = *(v351 + 48);
    v281 = v296;
    sub_2304A4674();
    v275(v279 + v280, v353);
    sub_2304A44E4();
    v278(v281, v268);
    v282 = v299;
    v283 = v321;
    sub_2304A4F14();
    v284 = v354;
    v285 = v344;
    v344(v279, v354);
    v285(v313, v284);
    v285(v312, v284);
    v285(v311, v284);
    v285(v333, v284);
    v285(v345, v284);
    v286 = v322;
    (v386)(v283, v322, v284);
    v287 = v300;
    v288 = v302;
    v289 = v301;
    (*(v300 + 16))(v302, v282, v301);
    (*(v287 + 56))(v288, 0, 1, v289);
    sub_230477C7C(v288, v283);
    (*(v287 + 8))(v282, v289);
    v285(v286, v284);
    sub_230464970(v331, &unk_27DB54680, &unk_2304A7BA0);
    (*(v335 + 8))(v334, v336);
    (*(v327 + 8))(v339, v328);
    return (*(v330 + 8))(v337, v338);
  }
}

void sub_23044D59C(uint64_t a1, uint64_t a2)
{
  v97 = a2;
  v106 = a1;
  v4 = sub_2304A5124();
  ObjectType = *(v4 - 8);
  v105 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v103 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v101 = &v80 - v8;
  MEMORY[0x28223BE20](v7);
  v100 = &v80 - v9;
  v92 = sub_2304A43F4();
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_2304A44F4();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v89 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_2304A4644();
  v88 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v87 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  MEMORY[0x28223BE20](v13 - 8);
  v98 = &v80 - v14;
  v86 = sub_2304A4B14();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v99 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2304A46C4();
  v96 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = (&v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_2304A51C4();
  v102 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_5Tm((v2 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v2 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
  v22 = sub_2304A5404();
  if (!v3)
  {
    v23 = v22;
    v82 = v18;
    v80 = v16;
    v81 = v2;
    v83 = v21;
    v24 = v105;
    v84 = 0;
    v25 = v106;
    v26 = sub_2304A5114();
    if (*(v23 + 16))
    {
      v28 = sub_230469C40(v26, v27);
      v30 = v29;

      if (v30)
      {
        v31 = v102;
        v32 = v83;
        (*(v102 + 16))(v83, *(v23 + 56) + *(v102 + 72) * v28, v19);

        if (sub_2304A5184())
        {
          if (sub_2304A5164())
          {
            v33 = v82;
            v34 = v81;
            v35 = v84;
            sub_23044E1A8(v25, v82);
            if (v35)
            {
              (*(v102 + 8))(v32, v19);
            }

            else
            {
              sub_23044E730(v25, v33, v99);
              v72 = *(v34 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_syncService + 8);
              v105 = *(v34 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_syncService);
              v106 = v19;
              v103 = v72;
              ObjectType = swift_getObjectType();
              v73 = sub_2304A3FC4();
              (*(*(v73 - 8) + 56))(v98, 1, 1, v73);
              v74 = v87;
              v75 = v88;
              (*(v88 + 104))(v87, *MEMORY[0x277D463F8], v95);
              v76 = v89;
              sub_2304A4674();
              v77 = v94;
              v78 = v90;
              v79 = v92;
              (*(v94 + 104))(v90, *MEMORY[0x277D463A0], v92);
              sub_2304A4334();
              (*(v77 + 8))(v78, v79);
              (*(v91 + 8))(v76, v93);
              (*(v75 + 8))(v74, v95);
              sub_230464970(v98, &qword_27DB53FE0, &qword_2304A7430);
              (*(v85 + 8))(v99, v86);
              (*(v96 + 8))(v82, v80);
              (*(v102 + 8))(v32, v106);
            }

            return;
          }

          v49 = v24;
          v64 = v25;
          if (qword_281499E38 != -1)
          {
            swift_once();
          }

          v65 = sub_2304A5B74();
          __swift_project_value_buffer(v65, qword_28149B008);
          v51 = ObjectType;
          v52 = v100;
          (*(ObjectType + 16))(v100, v64, v49);
          v53 = sub_2304A5B54();
          v54 = sub_2304A5E74();
          if (os_log_type_enabled(v53, v54))
          {
            v66 = v52;
            v56 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v106 = v19;
            v58 = v67;
            v107 = v67;
            *v56 = 136446210;
            v68 = sub_2304A5114();
            v70 = v69;
            (*(v51 + 8))(v66, v49);
            v71 = sub_23046A5C8(v68, v70, &v107);

            *(v56 + 4) = v71;
            v63 = "Could not send a message for an unregistered client: %{public}s";
            goto LABEL_22;
          }
        }

        else
        {
          v48 = v25;
          v49 = v24;
          if (qword_281499E38 != -1)
          {
            swift_once();
          }

          v50 = sub_2304A5B74();
          __swift_project_value_buffer(v50, qword_28149B008);
          v51 = ObjectType;
          v52 = v101;
          (*(ObjectType + 16))(v101, v48, v49);
          v53 = sub_2304A5B54();
          v54 = sub_2304A5E74();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = v52;
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v106 = v19;
            v58 = v57;
            v107 = v57;
            *v56 = 136446210;
            v59 = sub_2304A5114();
            v61 = v60;
            (*(v51 + 8))(v55, v49);
            v62 = sub_23046A5C8(v59, v61, &v107);

            *(v56 + 4) = v62;
            v63 = "Could not send a message for a disabled client: %{public}s";
LABEL_22:
            _os_log_impl(&dword_230430000, v53, v54, v63, v56, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v58);
            MEMORY[0x23191A000](v58, -1, -1);
            MEMORY[0x23191A000](v56, -1, -1);

            (*(v102 + 8))(v83, v106);
            return;
          }
        }

        (*(v51 + 8))(v52, v49);
        (*(v31 + 8))(v83, v19);
        return;
      }
    }

    else
    {
    }

    v36 = v24;
    v37 = v103;
    v38 = ObjectType;
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v39 = sub_2304A5B74();
    __swift_project_value_buffer(v39, qword_28149B008);
    (*(v38 + 16))(v37, v25, v24);
    v40 = sub_2304A5B54();
    v41 = sub_2304A5E74();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v107 = v43;
      *v42 = 136446210;
      v44 = sub_2304A5114();
      v46 = v45;
      (*(v38 + 8))(v37, v36);
      v47 = sub_23046A5C8(v44, v46, &v107);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_230430000, v40, v41, "Could not send a message for an unknown client: %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x23191A000](v43, -1, -1);
      MEMORY[0x23191A000](v42, -1, -1);
    }

    else
    {

      (*(v38 + 8))(v37, v24);
    }
  }
}

uint64_t sub_23044E1A8@<X0>(void *a1@<X0>, NSObject *a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v5 = sub_2304A53C4();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2304A5124();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v40 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2304A4084();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB53F00, &unk_2304A7B70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35[-v14];
  __swift_project_boxed_opaque_existential_5Tm((v3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
  v39 = a1;
  sub_2304A50C4();
  sub_2304A48C4();
  v16 = *(v10 + 8);
  v16(v12, v9);
  v17 = sub_2304A46C4();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) != 1)
  {
    return (*(v18 + 32))(v38, v15, v17);
  }

  sub_230464970(v15, &unk_27DB53F00, &unk_2304A7B70);
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v19 = sub_2304A5B74();
  __swift_project_value_buffer(v19, qword_28149B008);
  v21 = v40;
  v20 = v41;
  v22 = v42;
  (*(v41 + 16))(v40, v39, v42);
  v23 = sub_2304A5B54();
  v24 = sub_2304A5E74();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v37 = v16;
    v26 = v25;
    v39 = swift_slowAlloc();
    v46 = v39;
    *v26 = 136446210;
    v38 = v23;
    sub_2304A50C4();
    sub_230464B8C(&qword_27DB54610, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v27 = sub_2304A62D4();
    v36 = v24;
    v28 = v22;
    v30 = v29;
    v37(v12, v9);
    (*(v20 + 8))(v21, v28);
    v31 = sub_23046A5C8(v27, v30, &v46);

    *(v26 + 4) = v31;
    v32 = v38;
    _os_log_impl(&dword_230430000, v38, v36, "Cannot send message to a relationship that does not exist: %{public}s", v26, 0xCu);
    v33 = v39;
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x23191A000](v33, -1, -1);
    MEMORY[0x23191A000](v26, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v21, v22);
  }

  (*(v43 + 104))(v45, *MEMORY[0x277D468D0], v44);
  sub_2304A53E4();
  sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
  swift_allocError();
  sub_2304A53D4();
  return swift_willThrow();
}

uint64_t sub_23044E730@<X0>(void (*a1)(char *, uint64_t)@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v195 = a2;
  v196 = a1;
  v167 = a3;
  v4 = sub_2304A5124();
  v185 = *(v4 - 8);
  v186 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v184 = v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v180 = (v161 - v7);
  v8 = sub_2304A53C4();
  v197 = *(v8 - 8);
  v198 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  MEMORY[0x28223BE20](v11 - 8);
  v166 = v161 - v12;
  v13 = sub_2304A4084();
  MEMORY[0x28223BE20](v13 - 8);
  v165 = v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_2304A4434();
  v177 = *(v176 - 8);
  v15 = MEMORY[0x28223BE20](v176);
  v169 = v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v175 = v161 - v17;
  v174 = sub_2304A4BE4();
  v172 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v173 = v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_2304A52C4();
  v179 = *(v178 - 8);
  v19 = MEMORY[0x28223BE20](v178);
  v171 = v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v181 = v161 - v21;
  v22 = sub_2304A5294();
  v183 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v182 = v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2304A44F4();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v168 = v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v161 - v28;
  v30 = sub_2304A41F4();
  v191 = *(v30 - 8);
  v192 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v170 = v161 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v193 = v161 - v33;
  v199 = sub_2304A41D4();
  v194 = *(v199 - 8);
  v34 = MEMORY[0x28223BE20](v199);
  v36 = v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = v161 - v37;
  v188 = v3;
  swift_getObjectType();
  v39 = sub_2304A4304();
  if (v40)
  {
    v190 = v40;
    v164 = v39;
    v187 = v10;
    sub_2304A5094();
    v201 = v38;
    sub_2304A5114();
    v41 = v201;
    sub_2304A41B4();
    sub_2304A4674();
    v42 = sub_2304A4474();
    v45 = *(v25 + 8);
    v44 = v25 + 8;
    v43 = v45;
    v45(v29, v24);
    if (*(v42 + 16))
    {
      v46 = sub_230469F44(v41);
      if (v47)
      {
        v161[0] = v43;
        v161[1] = v44;
        v162 = v24;
        v163 = v22;
        v49 = v191;
        v48 = v192;
        v50 = v191 + 2;
        v51 = v191[2];
        v52 = v193;
        v51(v193, *(v42 + 56) + v191[9] * v46, v192);

        __swift_project_boxed_opaque_existential_5Tm(&v188[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore], *&v188[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 24]);
        v53 = v189;
        v54 = sub_2304A5484();
        if (v53)
        {

          (v49[1])(v52, v48);
          return (*(v194 + 8))(v201, v199);
        }

        v72 = v54;
        v73 = sub_2304A5114();
        if (*(v72 + 16))
        {
          v75 = sub_230469C40(v73, v74);
          v77 = v76;

          if (v77)
          {
            (*(v183 + 16))(v182, *(v72 + 56) + *(v183 + 72) * v75, v163);

            v78 = sub_2304A5254();
            v79 = sub_2304A5094();
            if (*(v78 + 16))
            {
              v81 = sub_230469C40(v79, v80);
              v83 = v82;

              if (v83)
              {
                v188 = v51;
                v189 = v50;
                v84 = *(v78 + 56) + v179[9] * v81;
                v85 = v178;
                v180 = v179[2];
                v180(v181, v84, v178);

                v86 = v173;
                sub_2304A52B4();
                v87 = v175;
                sub_2304A4194();
                sub_2304A4414();
                v89 = v177 + 8;
                v88 = *(v177 + 8);
                v90 = v87;
                v91 = v176;
                v88(v90, v176);
                v184 = sub_2304A4B94();
                v93 = v92;
                v172 = *(v172 + 8);
                (v172)(v86, v174);
                if (v93)
                {
                  v195 = v88;
                  v177 = v89;

                  if (qword_281499E38 != -1)
                  {
                    swift_once();
                  }

                  v94 = sub_2304A5B74();
                  __swift_project_value_buffer(v94, qword_28149B008);
                  v95 = v171;
                  v180(v171, v181, v85);
                  v96 = v170;
                  v97 = v193;
                  (v188)(v170, v193, v192);
                  v98 = v85;
                  v99 = sub_2304A5B54();
                  v100 = sub_2304A5E74();
                  if (os_log_type_enabled(v99, v100))
                  {
                    v101 = swift_slowAlloc();
                    v190 = swift_slowAlloc();
                    v200[0] = v190;
                    *v101 = 136446466;
                    v102 = v173;
                    LODWORD(v189) = v100;
                    sub_2304A52B4();
                    sub_230464B8C(&qword_27DB54000, MEMORY[0x277D46530], MEMORY[0x277D46540]);
                    v103 = v174;
                    v104 = v95;
                    v105 = sub_2304A62D4();
                    v107 = v106;
                    (v172)(v102, v103);
                    v98 = v178;
                    v196 = v179[1];
                    v196(v104, v178);
                    v108 = sub_23046A5C8(v105, v107, v200);

                    *(v101 + 4) = v108;
                    *(v101 + 12) = 2080;
                    v109 = v175;
                    sub_2304A4194();
                    sub_230464B8C(&qword_27DB54008, MEMORY[0x277D463B0], MEMORY[0x277D463B8]);
                    v110 = v176;
                    v111 = sub_2304A62D4();
                    v113 = v112;
                    v195(v109, v110);
                    v114 = v191[1];
                    v114(v96, v192);
                    v115 = sub_23046A5C8(v111, v113, v200);

                    *(v101 + 14) = v115;
                    _os_log_impl(&dword_230430000, v99, v189, "Cannot send message because remote device is not compatible (local: %{public}s; remote: %s, privacy: .public)", v101, 0x16u);
                    v116 = v190;
                    swift_arrayDestroy();
                    MEMORY[0x23191A000](v116, -1, -1);
                    v117 = v101;
                    v97 = v193;
                    MEMORY[0x23191A000](v117, -1, -1);
                  }

                  else
                  {

                    v114 = v191[1];
                    v114(v96, v192);
                    v196 = v179[1];
                    v196(v95, v98);
                  }

                  v157 = v194;
                  (*(v197 + 104))(v187, *MEMORY[0x277D468D0], v198);
                  sub_2304A53E4();
                  sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
                  swift_allocError();
                  sub_2304A53D4();
                  swift_willThrow();
                  v196(v181, v98);
                  (*(v183 + 8))(v182, v163);
                  v114(v97, v192);
                  return (*(v157 + 8))(v201, v199);
                }

                v151 = v168;
                sub_2304A4674();
                v152 = v169;
                sub_2304A4494();
                (v161[0])(v151, v162);
                v153 = sub_2304A4414();
                v88(v152, v91);
                if (v153 <= 7)
                {
                  v158 = sub_2304A5104();
                  v197 = v159;
                  v198 = v158;
                  sub_2304A5094();
                  v120 = v194;
                }

                else
                {
                  sub_2304A4144();
                  v154 = v186;
                  v200[3] = v186;
                  v200[4] = sub_230464B8C(&unk_27DB54010, MEMORY[0x277D46800], MEMORY[0x277D46808]);
                  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v200);
                  (*(v185 + 16))(boxed_opaque_existential_1, v196, v154);
                  v156 = sub_2304A4134();
                  v120 = v194;
                  v197 = v160;
                  v198 = v156;
                  __swift_destroy_boxed_opaque_existential_0Tm(v200);
                }

                sub_2304A50E4();
                sub_2304A50A4();
                sub_2304A4B04();
                (v179[1])(v181, v178);
                (*(v183 + 8))(v182, v163);
                (v191[1])(v193, v192);
                return (*(v120 + 8))(v201, v199);
              }
            }

            else
            {
            }

            v120 = v194;
            v136 = v163;

            v137 = v180;
            if (qword_281499E38 != -1)
            {
              swift_once();
            }

            v138 = sub_2304A5B74();
            __swift_project_value_buffer(v138, qword_28149B008);
            v139 = v185;
            v140 = v186;
            (*(v185 + 16))(v137, v196, v186);
            v141 = sub_2304A5B54();
            v142 = sub_2304A5E74();
            if (os_log_type_enabled(v141, v142))
            {
              v143 = swift_slowAlloc();
              v144 = swift_slowAlloc();
              v200[0] = v144;
              *v143 = 136446210;
              v145 = sub_2304A5094();
              v146 = v137;
              v148 = v147;
              (*(v139 + 8))(v146, v140);
              v149 = sub_23046A5C8(v145, v148, v200);

              *(v143 + 4) = v149;
              _os_log_impl(&dword_230430000, v141, v142, "Cannot send message if local device does not have a matching message type: %{public}s", v143, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v144);
              MEMORY[0x23191A000](v144, -1, -1);
              v150 = v143;
              v136 = v163;
              MEMORY[0x23191A000](v150, -1, -1);
            }

            else
            {

              (*(v139 + 8))(v137, v140);
            }

            v135 = v191;
            v134 = v192;
            (*(v197 + 104))(v187, *MEMORY[0x277D468D0], v198);
            sub_2304A53E4();
            sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
            swift_allocError();
            sub_2304A53D4();
            swift_willThrow();
            (*(v183 + 8))(v182, v136);
LABEL_40:
            (v135[1])(v193, v134);
            return (*(v120 + 8))(v201, v199);
          }
        }

        else
        {
        }

        v119 = v186;
        v118 = v187;
        v120 = v194;
        v121 = v184;
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v122 = sub_2304A5B74();
        __swift_project_value_buffer(v122, qword_28149B008);
        v123 = v185;
        (*(v185 + 16))(v121, v196, v119);
        v124 = sub_2304A5B54();
        v125 = sub_2304A5E74();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v200[0] = v127;
          *v126 = 136446210;
          v128 = sub_2304A5114();
          v129 = v121;
          v131 = v130;
          (*(v123 + 8))(v129, v119);
          v132 = sub_23046A5C8(v128, v131, v200);

          *(v126 + 4) = v132;
          _os_log_impl(&dword_230430000, v124, v125, "Cannot send message from unknown client: %{public}s", v126, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v127);
          MEMORY[0x23191A000](v127, -1, -1);
          v133 = v126;
          v118 = v187;
          MEMORY[0x23191A000](v133, -1, -1);
        }

        else
        {

          (*(v123 + 8))(v121, v119);
        }

        v135 = v191;
        v134 = v192;
        (*(v197 + 104))(v118, *MEMORY[0x277D468D0], v198);
        sub_2304A53E4();
        sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
        swift_allocError();
        sub_2304A53D4();
        swift_willThrow();
        goto LABEL_40;
      }
    }

    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v56 = sub_2304A5B74();
    __swift_project_value_buffer(v56, qword_28149B008);
    v57 = v194;
    v58 = v199;
    (*(v194 + 16))(v36, v41, v199);
    v59 = sub_2304A5B54();
    v60 = sub_2304A5E74();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v200[0] = v62;
      *v61 = 136446210;
      sub_230464B8C(&qword_27DB53FF8, MEMORY[0x277D46350], MEMORY[0x277D46368]);
      v63 = sub_2304A62D4();
      v65 = v64;
      v66 = *(v57 + 8);
      v66(v36, v199);
      v67 = sub_23046A5C8(v63, v65, v200);
      v58 = v199;

      *(v61 + 4) = v67;
      _os_log_impl(&dword_230430000, v59, v60, "Cannot send message if remote device does not have a matching message type: %{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x23191A000](v62, -1, -1);
      MEMORY[0x23191A000](v61, -1, -1);
    }

    else
    {

      v66 = *(v57 + 8);
      v66(v36, v58);
    }

    (*(v197 + 104))(v187, *MEMORY[0x277D468D0], v198);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    swift_willThrow();
    return (v66)(v201, v58);
  }

  else
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v68 = sub_2304A5B74();
    __swift_project_value_buffer(v68, qword_28149B008);
    v69 = sub_2304A5B54();
    v70 = sub_2304A5E74();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_230430000, v69, v70, "Cannot send message if local device does not have an ID", v71, 2u);
      MEMORY[0x23191A000](v71, -1, -1);
    }

    (*(v197 + 104))(v10, *MEMORY[0x277D468D0], v198);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

void sub_230450084(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v111 = a5;
  v110 = a4;
  v122 = a3;
  v103 = a2;
  v134 = a1;
  v133 = sub_2304A5124();
  v131 = *(v133 - 8);
  v8 = MEMORY[0x28223BE20](v133);
  v130 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v128 = &v99 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v126 = &v99 - v13;
  v132 = v14;
  MEMORY[0x28223BE20](v12);
  v118 = &v99 - v15;
  v16 = sub_2304A43F4();
  v120 = *(v16 - 8);
  v121 = v16;
  MEMORY[0x28223BE20](v16);
  v119 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_2304A44F4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v116 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_2304A4644();
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v114 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  MEMORY[0x28223BE20](v20 - 8);
  v113 = &v99 - v21;
  v107 = sub_2304A4624();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v112 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2304A4B14();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v123 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2304A46C4();
  v124 = *(v24 - 8);
  v125 = v24;
  v25 = *(v124 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v26);
  v28 = (&v99 - v27);
  v29 = sub_2304A51C4();
  v129 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = v6;
  __swift_project_boxed_opaque_existential_5Tm((v6 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v6 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
  v32 = sub_2304A5404();
  if (!v7)
  {
    v33 = v32;
    v99 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v100 = v28;
    v34 = v132;
    v101 = v31;
    v35 = v133;
    v102 = 0;
    v36 = v134;
    v37 = sub_2304A5114();
    if (*(v33 + 16))
    {
      v39 = sub_230469C40(v37, v38);
      v41 = v40;

      if (v41)
      {
        v42 = v129;
        (*(v129 + 16))(v101, *(v33 + 56) + *(v129 + 72) * v39, v29);

        if (sub_2304A5184())
        {
          if (sub_2304A5164())
          {
            v43 = v100;
            v44 = ObjectType;
            v45 = v102;
            sub_23044E1A8(v36, v100);
            if (v45)
            {
              (*(v42 + 8))(v101, v29);
            }

            else
            {
              sub_23044E730(v36, v43, v123);
              sub_2304A4614();
              v83 = *(v44 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_syncService + 8);
              v130 = *(v44 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_syncService);
              v128 = v83;
              ObjectType = swift_getObjectType();
              v84 = sub_2304A3FC4();
              (*(*(v84 - 8) + 56))(v113, 1, 1, v84);
              (*(v115 + 104))(v114, *MEMORY[0x277D463F8], v117);
              sub_2304A4674();
              (*(v120 + 104))(v119, *MEMORY[0x277D463A0], v121);
              v85 = v124;
              (*(v124 + 16))(v99, v43, v125);
              v86 = v131;
              (*(v131 + 16))(v118, v36, v35);
              v87 = (*(v85 + 80) + 16) & ~*(v85 + 80);
              v88 = *(v86 + 80);
              v134 = v29;
              v89 = (v25 + v88 + v87) & ~v88;
              v90 = swift_allocObject();
              (*(v85 + 32))(v90 + v87, v99, v125);
              (*(v86 + 32))(v90 + v89, v118, v35);
              v91 = (v90 + ((v34 + v89 + 7) & 0xFFFFFFFFFFFFFFF8));
              v92 = v111;
              *v91 = v110;
              v91[1] = v92;

              v93 = v123;
              v94 = v113;
              v95 = v114;
              v96 = v116;
              v97 = v119;
              v98 = v112;
              sub_2304A4314();

              (*(v120 + 8))(v97, v121);
              (*(v108 + 8))(v96, v109);
              (*(v115 + 8))(v95, v117);
              sub_230464970(v94, &qword_27DB53FE0, &qword_2304A7430);
              (*(v106 + 8))(v98, v107);
              (*(v104 + 8))(v93, v105);
              (*(v124 + 8))(v100, v125);
              (*(v129 + 8))(v101, v134);
            }

            return;
          }

          if (qword_281499E38 != -1)
          {
            swift_once();
          }

          v73 = sub_2304A5B74();
          __swift_project_value_buffer(v73, qword_28149B008);
          v74 = v131;
          v75 = v126;
          v76 = v35;
          (*(v131 + 16))(v126, v36, v35);
          v62 = sub_2304A5B54();
          v77 = sub_2304A5E74();
          if (os_log_type_enabled(v62, v77))
          {
            v78 = swift_slowAlloc();
            v134 = v29;
            v64 = v78;
            v66 = swift_slowAlloc();
            v135 = v66;
            *v64 = 136446210;
            v79 = sub_2304A5114();
            v81 = v80;
            (*(v74 + 8))(v75, v76);
            v82 = sub_23046A5C8(v79, v81, &v135);

            *(v64 + 4) = v82;
            v71 = "Could not send a message for an unregistered client: %{public}s";
            v72 = v77;
            goto LABEL_22;
          }

          (*(v74 + 8))(v75, v35);
        }

        else
        {
          if (qword_281499E38 != -1)
          {
            swift_once();
          }

          v58 = sub_2304A5B74();
          __swift_project_value_buffer(v58, qword_28149B008);
          v59 = v131;
          v60 = v128;
          v61 = v35;
          (*(v131 + 16))(v128, v36, v35);
          v62 = sub_2304A5B54();
          v63 = sub_2304A5E74();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v134 = v29;
            v135 = v65;
            v66 = v65;
            *v64 = 136446210;
            v67 = sub_2304A5114();
            v69 = v68;
            (*(v59 + 8))(v60, v61);
            v70 = sub_23046A5C8(v67, v69, &v135);

            *(v64 + 4) = v70;
            v71 = "Could not send a message for a disabled client: %{public}s";
            v72 = v63;
LABEL_22:
            _os_log_impl(&dword_230430000, v62, v72, v71, v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v66);
            MEMORY[0x23191A000](v66, -1, -1);
            MEMORY[0x23191A000](v64, -1, -1);

            (*(v129 + 8))(v101, v134);
            return;
          }

          (*(v59 + 8))(v60, v35);
        }

        (*(v129 + 8))(v101, v29);
        return;
      }
    }

    else
    {
    }

    v47 = v130;
    v46 = v131;
    v48 = v35;
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v49 = sub_2304A5B74();
    __swift_project_value_buffer(v49, qword_28149B008);
    (*(v46 + 16))(v47, v36, v35);
    v50 = sub_2304A5B54();
    v51 = sub_2304A5E74();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v135 = v53;
      *v52 = 136446210;
      v54 = sub_2304A5114();
      v56 = v55;
      (*(v46 + 8))(v47, v48);
      v57 = sub_23046A5C8(v54, v56, &v135);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_230430000, v50, v51, "Could not send a message for an unknown client: %{public}s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x23191A000](v53, -1, -1);
      MEMORY[0x23191A000](v52, -1, -1);
    }

    else
    {

      (*(v46 + 8))(v47, v35);
    }
  }
}

uint64_t sub_230450EF4(void **a1, uint64_t a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v88 = a5;
  v89 = a4;
  v77 = a3;
  v80 = a2;
  v85 = a1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE8, &qword_2304A7438);
  MEMORY[0x28223BE20](v87);
  v6 = (&v67 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v67 - v8;
  v9 = sub_2304A4084();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v75 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = &v67 - v12;
  v13 = sub_2304A4B14();
  v81 = *(v13 - 8);
  v82 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v70 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v68 = &v67 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v71 = &v67 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v69 = &v67 - v21;
  MEMORY[0x28223BE20](v20);
  v67 = &v67 - v22;
  v83 = sub_2304A5124();
  v78 = *(v83 - 8);
  v23 = MEMORY[0x28223BE20](v83);
  v73 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v72 = &v67 - v25;
  v79 = sub_2304A4434();
  v26 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2304A44F4();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_2304A4854();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v90 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FF0, &unk_2304A7440);
  MEMORY[0x28223BE20](v34);
  v36 = (&v67 - v35);
  sub_230464B24(v85, &v67 - v35, &qword_27DB53FF0, &unk_2304A7440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = *v36;
    *v6 = *v36;
    swift_storeEnumTagMultiPayload();
    v38 = v37;
    v89(v6);

    return sub_230464970(v6, &qword_27DB53FE8, &qword_2304A7438);
  }

  else
  {
    v85 = v6;
    (*(v84 + 32))(v90, v36, v86);
    sub_2304A4674();
    sub_2304A4494();
    (*(v30 + 8))(v32, v29);
    v40 = sub_2304A4414();
    (*(v26 + 8))(v28, v79);
    if (v40 > 7)
    {
      v53 = v84;
      sub_2304A4144();
      v54 = v68;
      sub_2304A4844();
      v55 = sub_2304A4AA4();
      v57 = v56;
      v58 = *(v81 + 1);
      v59 = v54;
      v60 = v82;
      v58(v59, v82);
      v61 = v70;
      sub_2304A4844();
      sub_2304A4AE4();
      v58(v61, v60);
      sub_230464B8C(&qword_27DB53F10, MEMORY[0x277D46800], MEMORY[0x277D46810]);
      v62 = v73;
      v63 = v83;
      sub_2304A4124();
      v64 = v85;
      v65 = v89;
      sub_2304617C4(v55, v57);
      v66 = v78;
      (*(v78 + 16))(v64, v62, v63);
      swift_storeEnumTagMultiPayload();
      v65(v64);
      sub_230464970(v64, &qword_27DB53FE8, &qword_2304A7438);
      (*(v66 + 8))(v62, v63);
      return (*(v53 + 8))(v90, v86);
    }

    else
    {
      v41 = v67;
      v42 = v90;
      sub_2304A4844();
      sub_2304A4AF4();
      v43 = v82;
      v44 = *(v81 + 1);
      v44(v41, v82);
      v81 = "";
      sub_2304A4684();
      v45 = sub_2304A5094();
      v79 = v46;
      v80 = v45;
      v47 = v69;
      sub_2304A4844();
      v77 = sub_2304A4AA4();
      v44(v47, v43);
      v48 = v71;
      sub_2304A4844();
      sub_2304A4AC4();
      v44(v48, v43);
      v49 = v72;
      sub_2304A50F4();
      v50 = v78;
      v51 = v85;
      v52 = v83;
      (*(v78 + 16))(v85, v49, v83);
      swift_storeEnumTagMultiPayload();
      v89(v51);
      sub_230464970(v51, &qword_27DB53FE8, &qword_2304A7438);
      (*(v50 + 8))(v49, v52);
      return (*(v84 + 8))(v42, v86);
    }
  }
}

uint64_t sub_230451870@<X0>(int64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v89 = a3;
  v80 = a4;
  v82 = sub_2304A53C4();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v83 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_230473E0C(v7);

  swift_beginAccess();
  v85 = a2;

  v10 = sub_2304623A8(v9, v8);
  v86 = v8;

  v11 = sub_23043D750(v10);
  v79 = v4;

  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = 0;
    v87 = *(v11 + 16);
    v88 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection;
    v15 = v11 + 40;
    v77 = v12 - 1;
    v78 = v11 + 40;
    do
    {
      v84 = v13;
      v16 = (v15 + 16 * v14);
      v17 = v14;
      while (1)
      {
        if (v17 >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_56;
        }

        v19 = *(v16 - 1);
        v18 = *v16;
        v14 = v17 + 1;
        v20 = *(v89 + v88);

        v21 = [v20 remoteToken];
        v22 = sub_2304A5D14();
        v13 = [v21 hasEntitlement_];

        if ((v13 & 1) == 0)
        {
          break;
        }

        v16 += 2;
        ++v17;
        if (v87 == v14)
        {
          v13 = v84;
          goto LABEL_13;
        }
      }

      v13 = v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90[0] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23045FA3C(0, *(v13 + 16) + 1, 1);
        v13 = v90[0];
      }

      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_23045FA3C((v24 > 1), v25 + 1, 1);
        v13 = v90[0];
      }

      *(v13 + 16) = v25 + 1;
      v26 = v13 + 16 * v25;
      *(v26 + 32) = v19;
      *(v26 + 40) = v18;
      v15 = v78;
    }

    while (v77 != v17);
  }

LABEL_13:

  if (!*(v13 + 16))
  {

    v37 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_incomingMessages;
    v89 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_incomingMessages;
    v38 = v85;
    swift_beginAccess();
    v39 = *(v38 + v37);
    v41 = v39 + 64;
    v40 = *(v39 + 64);
    v91 = MEMORY[0x277D84F90];
    v42 = 1 << *(v39 + 32);
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v44 = v43 & v40;
    v13 = (v42 + 63) >> 6;
    v45 = v86 + 56;
    v87 = v39;
    swift_bridgeObjectRetain_n();
    v46 = 0;
    while (v44)
    {
      v48 = v44;
LABEL_29:
      v44 = (v48 - 1) & v48;
      if (*(v86 + 16))
      {
        v88 = (v48 - 1) & v48;
        v50 = v86;
        v51 = (*(v87 + 48) + 16 * (__clz(__rbit64(v48)) | (v46 << 6)));
        v53 = *v51;
        v52 = v51[1];
        sub_2304A6394();

        sub_2304A5D54();
        v54 = sub_2304A63B4();
        v55 = -1 << *(v50 + 32);
        v56 = v54 & ~v55;
        if ((*(v45 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
        {
          v57 = ~v55;
          while (1)
          {
            v58 = (*(v86 + 48) + 16 * v56);
            v59 = *v58 == v53 && v58[1] == v52;
            if (v59 || (sub_2304A62F4() & 1) != 0)
            {
              break;
            }

            v56 = (v56 + 1) & v57;
            if (((*(v45 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          sub_230448A94(v47, &qword_27DB53F18, &qword_2304A7380, MEMORY[0x277D46800], MEMORY[0x277D46800]);
        }

LABEL_22:

        v44 = v88;
      }
    }

    while (1)
    {
      v49 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v49 >= v13)
      {

        v60 = 0;
        v61 = v91;
        v62 = 1 << *(v86 + 32);
        v63 = -1;
        if (v62 < 64)
        {
          v63 = ~(-1 << v62);
        }

        v64 = v63 & *(v86 + 56);
        v65 = (v62 + 63) >> 6;
        while (v64)
        {
LABEL_49:
          v67 = (*(v86 + 48) + ((v60 << 10) | (16 * __clz(__rbit64(v64)))));
          v68 = *v67;
          v13 = v67[1];
          swift_beginAccess();

          v69 = sub_230469C40(v68, v13);
          v71 = v70;

          if (v71)
          {
            v13 = v85;
            v72 = v89;
            v73 = swift_isUniquelyReferenced_nonNull_native();
            v74 = *(v13 + v72);
            v91 = v74;
            *(v13 + v72) = 0x8000000000000000;
            if (!v73)
            {
              sub_230471078();
              v74 = v91;
            }

            sub_230479570(v69, v74);
            *(v13 + v72) = v74;
          }

          v64 &= v64 - 1;
          swift_endAccess();
        }

        while (1)
        {
          v66 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_57;
          }

          if (v66 >= v65)
          {

            *v80 = v61;
            return result;
          }

          v64 = *(v45 + 8 * v66);
          ++v60;
          if (v64)
          {
            v60 = v66;
            goto LABEL_49;
          }
        }
      }

      v48 = *(v41 + 8 * v49);
      ++v46;
      if (v48)
      {
        v46 = v49;
        goto LABEL_29;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (qword_281499E38 != -1)
  {
LABEL_58:
    swift_once();
  }

  v27 = sub_2304A5B74();
  __swift_project_value_buffer(v27, qword_28149B008);

  v28 = sub_2304A5B54();
  v29 = sub_2304A5E74();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = v13;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v90[0] = v32;
    *v31 = 136380675;
    v33 = MEMORY[0x231919340](v30, MEMORY[0x277D837D0]);
    v35 = v34;

    v36 = sub_23046A5C8(v33, v35, v90);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_230430000, v28, v29, "Cannot retrieve incoming messages due to missing entitlements: %{private}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x23191A000](v32, -1, -1);
    MEMORY[0x23191A000](v31, -1, -1);
  }

  else
  {
  }

  (*(v81 + 104))(v83, *MEMORY[0x277D468C0], v82);
  sub_2304A53E4();
  sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
  swift_allocError();
  sub_2304A53D4();
  return swift_willThrow();
}

uint64_t sub_2304520B8@<X0>(unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F38, &qword_2304A7398);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2304A7280;
  *(inited + 32) = 0x73746E65696C63;
  *(inited + 40) = 0xE700000000000000;
  swift_beginAccess();

  sub_23043DF8C(v4);
  v6 = v5;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F40, &qword_2304A73A0);
  *(inited + 48) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x72756F5361746164;
  *(inited + 88) = 0xEB00000000736563;
  swift_beginAccess();

  v9 = sub_23043CC94(v8);

  v10 = sub_2304A4984();
  v11 = MEMORY[0x231919340](v9, v10);
  v13 = v12;

  v14 = MEMORY[0x277D837D0];
  *(inited + 96) = v11;
  *(inited + 104) = v13;
  *(inited + 120) = v14;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x80000002304A8280;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F48, &qword_2304A73A8);
  v15 = sub_2304A5CD4();
  v17 = v16;

  *(inited + 168) = v14;
  *(inited + 144) = v15;
  *(inited + 152) = v17;
  v18 = sub_230462828(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F50, &unk_2304A73B0);
  result = swift_arrayDestroy();
  *a2 = v18;
  return result;
}

uint64_t sub_23045234C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v98 = a5;
  v103 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FD0, &qword_2304A7428);
  MEMORY[0x28223BE20](v7 - 8);
  v97 = &v96 - v8;
  v9 = sub_2304A5294();
  v100 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v99 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v96 - v12;
  v14 = sub_2304A3F34();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2304A3FC4();
  v104 = *(v18 - 8);
  v105 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v102 = (&v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v96 - v22;
  MEMORY[0x28223BE20](v21);
  v106[0] = a2;
  v106[1] = a3;
  v25 = &v96 - v24;
  (*(v15 + 104))(v17, *MEMORY[0x277CC91D8], v14);
  sub_2304645C4();
  sub_2304A3FB4();
  (*(v15 + 8))(v17, v14);
  v26 = [objc_opt_self() defaultManager];
  sub_2304A3F94();
  v27 = sub_2304A5D14();

  v28 = [v26 contentsAtPath_];

  if (v28)
  {
    v29 = sub_2304A3FD4();
    v31 = v30;

    sub_230464B8C(&qword_281499F48, MEMORY[0x277D46850], MEMORY[0x277D46868]);
    v101 = v29;
    v32 = v107;
    sub_2304A3ED4();
    if (v32)
    {
      v33 = v104;
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v34 = sub_2304A5B74();
      __swift_project_value_buffer(v34, qword_28149B008);
      v35 = v102;
      v36 = v105;
      (*(v33 + 16))(v102, v25, v105);
      v37 = v32;
      v38 = sub_2304A5B54();
      v39 = sub_2304A5E94();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v100 = v38;
        v41 = v40;
        v42 = swift_slowAlloc();
        v103 = v25;
        v96 = v31;
        v43 = v42;
        v107 = swift_slowAlloc();
        v106[0] = v107;
        *v41 = 136380931;
        sub_230464B8C(&qword_28149AC60, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v44 = sub_2304A62D4();
        v45 = v36;
        v47 = v46;
        v48 = *(v33 + 8);
        v49 = v35;
        v50 = v45;
        v48(v49, v45);
        v51 = sub_23046A5C8(v44, v47, v106);

        *(v41 + 4) = v51;
        *(v41 + 12) = 2114;
        v52 = v32;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 14) = v53;
        *v43 = v53;
        v54 = v100;
        _os_log_impl(&dword_230430000, v100, v39, "Could not decode predefined descriptor at path %{private}s: %{public}@", v41, 0x16u);
        sub_230464970(v43, &qword_27DB53F30, &qword_2304A7390);
        MEMORY[0x23191A000](v43, -1, -1);
        v55 = v107;
        __swift_destroy_boxed_opaque_existential_0Tm(v107);
        MEMORY[0x23191A000](v55, -1, -1);
        MEMORY[0x23191A000](v41, -1, -1);
        sub_2304617C4(v101, v96);

        return v48(v103, v50);
      }

      else
      {
        sub_2304617C4(v101, v31);

        v93 = *(v33 + 8);
        v93(v35, v36);
        return v93(v25, v36);
      }
    }

    else
    {
      v96 = v31;
      v72 = sub_2304A5284();
      v73 = v13;
      v74 = v72;
      v76 = v75;
      v77 = v100;
      isa = v100[2].isa;
      v79 = v97;
      v102 = v73;
      (isa)(v97, v73, v9);
      (v77[7].isa)(v79, 0, 1, v9);
      sub_2304778B8(v79, v74, v76);
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v80 = sub_2304A5B74();
      __swift_project_value_buffer(v80, qword_28149B008);
      v81 = v99;
      (isa)(v99, v102, v9);
      v82 = sub_2304A5B54();
      v83 = sub_2304A5E94();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v103 = v25;
        v107 = 0;
        v86 = v85;
        v106[0] = v85;
        *v84 = 136380675;
        v87 = sub_2304A5284();
        v88 = v81;
        v90 = v89;
        v91 = v77[1].isa;
        v91(v88, v9);
        v92 = sub_23046A5C8(v87, v90, v106);

        *(v84 + 4) = v92;
        _os_log_impl(&dword_230430000, v82, v83, "Loaded predefined descriptor with id %{private}s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v86);
        MEMORY[0x23191A000](v86, -1, -1);
        MEMORY[0x23191A000](v84, -1, -1);
        sub_2304617C4(v101, v96);

        v91(v102, v9);
        return (*(v104 + 8))(v103, v105);
      }

      else
      {
        sub_2304617C4(v101, v96);

        v95 = v77[1].isa;
        v95(v81, v9);
        v95(v102, v9);
        return (*(v104 + 8))(v25, v105);
      }
    }
  }

  else
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v57 = sub_2304A5B74();
    __swift_project_value_buffer(v57, qword_28149B008);
    v58 = v104;
    v59 = v25;
    v60 = v25;
    v61 = v105;
    (*(v104 + 16))(v23, v59, v105);
    v62 = sub_2304A5B54();
    v63 = sub_2304A5E94();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v103 = v60;
      v65 = v64;
      v102 = swift_slowAlloc();
      v106[0] = v102;
      *v65 = 136380675;
      sub_230464B8C(&qword_28149AC60, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v66 = sub_2304A62D4();
      v68 = v67;
      v69 = *(v58 + 8);
      v69(v23, v61);
      v70 = sub_23046A5C8(v66, v68, v106);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_230430000, v62, v63, "Could not load predefined descriptor at path %{private}s", v65, 0xCu);
      v71 = v102;
      __swift_destroy_boxed_opaque_existential_0Tm(v102);
      MEMORY[0x23191A000](v71, -1, -1);
      MEMORY[0x23191A000](v65, -1, -1);

      return (v69)(v103, v61);
    }

    else
    {

      v94 = *(v58 + 8);
      v94(v23, v61);
      return (v94)(v60, v61);
    }
  }
}

uint64_t sub_230452EA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2304A6104();

  LODWORD(v9) = *(a1 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_pid);
  v4 = sub_2304A62D4();
  MEMORY[0x2319192E0](v4);

  MEMORY[0x2319192E0](0x656C646E7562203BLL, 0xEC000000203A4449);
  v5 = [*(a1 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection) remoteToken];
  v6 = [v5 bundleID];

  if (v6)
  {
    sub_2304A5D24();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54160, &qword_2304A7518);
  v7 = sub_2304A5D34();
  MEMORY[0x2319192E0](v7);

  result = MEMORY[0x2319192E0](59, 0xE100000000000000);
  *a2 = 0x203A646970;
  a2[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_230453030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v24 = a4;
  v28 = a3;
  v29 = a2;
  v5 = sub_2304A5294();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock_descriptors;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = v10 + 56;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 56);
  v15 = (v12 + 63) >> 6;
  v25 = v6 + 16;
  v26 = v6;
  v16 = (v6 + 8);
  v27 = v10;
  result = swift_bridgeObjectRetain_n();
  v18 = 0;
  while (v14)
  {
LABEL_10:
    (*(v26 + 16))(v8, *(v27 + 48) + *(v26 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v5);
    if (sub_2304A5284() == v29 && v21 == v28)
    {

      (*v16)(v8, v5);
LABEL_13:

      v22 = 1;
LABEL_15:
      *v24 = v22;
      return result;
    }

    v14 &= v14 - 1;
    v19 = sub_2304A62F4();

    result = (*v16)(v8, v5);
    if (v19)
    {
      goto LABEL_13;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v15)
    {

      v22 = 0;
      goto LABEL_15;
    }

    v14 = *(v11 + 8 * v20);
    ++v18;
    if (v14)
    {
      v18 = v20;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230453294(uint64_t a1, uint64_t a2)
{
  v3 = sub_2304A56E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v2 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection) remoteTarget])
  {
    sub_2304A5F94();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54150, &qword_2304A7510);
    if (swift_dynamicCast())
    {
      v7 = v15[1];

      sub_2304A56D4();
      sub_230464B8C(&unk_281499ED8, MEMORY[0x277D469F0], MEMORY[0x277D469E8]);
      v8 = sub_2304A5454();
      [v7 handleRecordChangesWithParameters_];
      swift_unknownObjectRelease();

      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    sub_230464970(v18, &qword_27DB54148, &unk_2304A7500);
  }

  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v10 = sub_2304A5B74();
  __swift_project_value_buffer(v10, qword_28149B008);
  v11 = sub_2304A5B54();
  v12 = sub_2304A5E84();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_230430000, v11, v12, "Client: Failed to cast connection to server interface protocol", v13, 2u);
    MEMORY[0x23191A000](v13, -1, -1);
  }

  sub_230464618();
  swift_allocError();
  *v14 = 1;
  return swift_willThrow();
}

id sub_2304535D4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23045369C()
{
  v2 = sub_2304A53C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_2304A57C4();
    v9 = *(v7 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v10 = MEMORY[0x28223BE20](v8);
    *&v14[-32] = v7;
    *&v14[-24] = v10;
    *&v14[-16] = v11;
    *&v14[-8] = v0;
    MEMORY[0x28223BE20](v10);
    *&v14[-16] = sub_230464DF4;
    *&v14[-8] = v12;

    os_unfair_lock_lock(v9 + 4);
    sub_230464E24(&v15);
    os_unfair_lock_unlock(v9 + 4);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {

      sub_2304A55D4();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D468D8], v2);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

uint64_t sub_230453B94()
{
  v2 = v0;
  v3 = sub_2304A53C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_2304A57C4();
    sub_230441708(v9, v10);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {

      v12 = sub_2304A57C4();
      v13 = *(v8 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
      v14 = MEMORY[0x28223BE20](v12);
      *&v17[-32] = v8;
      *&v17[-24] = v14;
      *&v17[-16] = v15;
      *&v17[-8] = v2;
      MEMORY[0x28223BE20](v14);
      *&v17[-16] = sub_230464DF4;
      *&v17[-8] = v16;

      os_unfair_lock_lock(v13 + 4);
      sub_230464E24(&v18);
      os_unfair_lock_unlock(v13 + 4);

      sub_2304A55D4();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D468D8], v3);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

uint64_t sub_2304540D0()
{
  v2 = v0;
  v3 = sub_2304A53C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_2304A57C4();
    sub_230442244(v9, v10);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {

      v12 = sub_2304A57C4();
      v13 = *(v8 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
      v14 = MEMORY[0x28223BE20](v12);
      *&v17[-32] = v8;
      *&v17[-24] = v14;
      *&v17[-16] = v15;
      *&v17[-8] = v2;
      MEMORY[0x28223BE20](v14);
      *&v17[-16] = sub_2304648CC;
      *&v17[-8] = v16;

      os_unfair_lock_lock(v13 + 4);
      sub_230464E24(&v18);
      os_unfair_lock_unlock(v13 + 4);

      sub_2304A55D4();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D468D8], v3);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

void sub_23045460C(uint64_t a1)
{
  v3 = v1;
  v18 = a1;
  v4 = sub_2304A53C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2304A5294();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(v3 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock);
    v14 = MEMORY[0x28223BE20](Strong);
    v15 = v18;
    *(&v17 - 2) = v3;
    *(&v17 - 1) = v15;
    MEMORY[0x28223BE20](v14);
    *(&v17 - 2) = sub_230464708;
    *(&v17 - 1) = v16;
    os_unfair_lock_lock(v13 + 4);
    sub_230464ECC();
    os_unfair_lock_unlock(v13 + 4);
    if (v2)
    {
      __break(1u);
    }

    else
    {
      sub_2304A5834();
      sub_2304396D0(v11, v3);
      swift_unknownObjectRelease();
      (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D468D8], v4);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    swift_willThrow();
  }
}

uint64_t sub_2304548E0(uint64_t a1)
{
  v1 = sub_2304A5294();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_2304A5834();
  swift_beginAccess();
  sub_23046B1AC(v7, v5);
  (*(v2 + 8))(v7, v1);
  return swift_endAccess();
}

void sub_230454BA4(uint64_t a1)
{
  v3 = v1;
  v5 = sub_2304A53C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(v3 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock);
    v11 = MEMORY[0x28223BE20](Strong);
    v15[-2] = v3;
    v15[-1] = a1;
    MEMORY[0x28223BE20](v11);
    v15[-2] = sub_23046468C;
    v15[-1] = v12;
    os_unfair_lock_lock(v10 + 4);
    sub_230464ECC();
    os_unfair_lock_unlock(v10 + 4);
    if (v2)
    {
      __break(1u);
    }

    else
    {
      v13 = sub_2304A57C4();
      sub_230440644(v13, v14);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D468D8], v5);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    swift_willThrow();
  }
}

uint64_t sub_230454DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2304A5294();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FD0, &qword_2304A7428);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v23[-v15];
  v17 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock_descriptors;
  swift_beginAccess();
  v18 = *(a1 + v17);
  v24 = a2;

  v19 = v18;
  v20 = v25;
  v21 = sub_230487410(sub_2304646E8, v23, v19);
  v25 = v20;
  sub_230445334(v21, v16);

  sub_230464B24(v16, v14, &qword_27DB53FD0, &qword_2304A7428);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_230464970(v16, &qword_27DB53FD0, &qword_2304A7428);
  }

  else
  {
    (*(v5 + 32))(v7, v14, v4);
    swift_beginAccess();
    sub_23045AC48(v7, v11);
    sub_230464970(v11, &qword_27DB53FD0, &qword_2304A7428);
    swift_endAccess();
    (*(v5 + 8))(v7, v4);
    v14 = v16;
  }

  return sub_230464970(v14, &qword_27DB53FD0, &qword_2304A7428);
}

uint64_t sub_230455098(uint64_t a1)
{
  v1 = sub_2304A5284();
  v3 = v2;
  if (v1 == sub_2304A57C4() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2304A62F4();
  }

  return v5 & 1;
}

uint64_t sub_2304552C0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v42 = a1;
  v4 = sub_2304A53C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FD0, &qword_2304A7428);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_2304A5294();
  v44 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v41 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v43 = &v36 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v37 = v5;
    v38 = v4;
    v39 = v7;
    v40 = v11;
    v17 = sub_2304A57C4();
    v18 = *(v16 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v19 = MEMORY[0x28223BE20](v17);
    *(&v36 - 4) = v16;
    *(&v36 - 3) = v19;
    *(&v36 - 2) = v20;
    MEMORY[0x28223BE20](v19);
    *(&v36 - 2) = sub_23046466C;
    *(&v36 - 1) = v21;

    os_unfair_lock_lock(v18 + 4);
    sub_230464ECC();
    v22 = v18 + 4;
    if (v2)
    {
      os_unfair_lock_unlock(v22);
      swift_unknownObjectRelease();
    }

    else
    {
      os_unfair_lock_unlock(v22);

      v24 = v44;
      v25 = v40;
      if ((*(v44 + 48))(v10, 1, v40) == 1)
      {
        sub_230464970(v10, &qword_27DB53FD0, &qword_2304A7428);
        (*(v37 + 104))(v39, *MEMORY[0x277D468D0], v38);
        sub_2304A53E4();
        sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
        swift_allocError();
        sub_2304A53D4();
        swift_willThrow();
        return swift_unknownObjectRelease();
      }

      else
      {
        v26 = v43;
        (*(v24 + 32))(v43, v10, v25);
        sub_2304A5234();
        v27 = *(v3 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection);
        v28 = [v27 remoteToken];
        v29 = sub_2304A5D14();

        v30 = [v28 hasEntitlement_];

        if (v30 & 1) != 0 || (v31 = [v27 remoteToken], v32 = sub_2304A5D14(), v33 = objc_msgSend(v31, sel_hasEntitlement_, v32), v31, v32, (v33))
        {
          v34 = v44;
          v35 = v40;
          (*(v44 + 16))(v41, v26, v40);
          sub_2304A5634();
          swift_unknownObjectRelease();
          return (*(v34 + 8))(v26, v35);
        }

        else
        {
          (*(v37 + 104))(v39, *MEMORY[0x277D468C0], v38);
          sub_2304A53E4();
          sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
          swift_allocError();
          sub_2304A53D4();
          swift_willThrow();
          swift_unknownObjectRelease();
          return (*(v44 + 8))(v26, v40);
        }
      }
    }
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D468D8], v4);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

uint64_t sub_230455B8C()
{
  v0 = sub_2304A53C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_5Tm((Strong + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(Strong + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
    sub_2304A4224();
    sub_2304A4034();

    sub_230464B24(v9, v7, &qword_27DB53F20, &qword_2304A7388);
    sub_2304A55F4();
    swift_unknownObjectRelease();
    return sub_230464970(v9, &qword_27DB53F20, &qword_2304A7388);
  }

  else
  {
    (*(v1 + 104))(v3, *MEMORY[0x277D468D8], v0);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

uint64_t sub_230455F74(uint64_t a1)
{
  v29[1] = a1;
  v2 = sub_2304A53C4();
  v29[0] = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2304A5134();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2304A4BF4();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2304A5714();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v29 - v15;
  v30 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v29[0] = sub_2304A59D4();
    sub_2304A59C4();
    v19 = v9;
    sub_2304A56F4();
    v20 = *(v11 + 8);
    v20(v16, v10);
    sub_2304A59C4();
    v21 = v35;
    sub_2304A5704();
    v22 = (v20)(v14, v10);
    v23 = v29[0];
    v24 = MEMORY[0x2319199F0](v22);
    v25 = *(v18 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v26 = MEMORY[0x28223BE20](v24);
    v29[-6] = v23;
    v29[-5] = v18;
    v29[-4] = v30;
    v29[-3] = v19;
    v29[-2] = v21;
    MEMORY[0x28223BE20](v26);
    v29[-2] = sub_2304645A0;
    v29[-1] = v27;

    os_unfair_lock_lock(v25 + 4);
    sub_230464ECC();
    os_unfair_lock_unlock(v25 + 4);

    objc_autoreleasePoolPop(v24);
    swift_unknownObjectRelease();
    (*(v33 + 8))(v35, v34);
    return (*(v31 + 8))(v19, v32);
  }

  else
  {
    (*(v29[0] + 104))(v4, *MEMORY[0x277D468D8], v2);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

uint64_t sub_230456474()
{
  v1 = sub_2304A53C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2304A5134();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_2304A5814();
    v12 = sub_2304A5704();
    v17[1] = v17;
    v13 = *(v10 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v14 = MEMORY[0x28223BE20](v12);
    v17[-4] = v11;
    v17[-3] = v10;
    v17[-2] = v0;
    v17[-1] = v8;
    MEMORY[0x28223BE20](v14);
    v17[-2] = sub_230464580;
    v17[-1] = v15;

    os_unfair_lock_lock(v13 + 4);
    sub_230464ECC();
    os_unfair_lock_unlock(v13 + 4);
    swift_unknownObjectRelease();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v2 + 104))(v4, *MEMORY[0x277D468D8], v1);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

uint64_t sub_2304568D0(uint64_t a1)
{
  v2 = sub_2304A53C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2304A5684();
  v19 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_2304A5744();
    sub_2304A5734();
    sub_2304A5724();
    a1 = v13;
    v14 = v20;
    sub_230445F6C();
    if (v14)
    {
      swift_unknownObjectRelease();
    }

    else
    {

      sub_2304A5574();
      v15 = v19;
      (*(v19 + 16))(v9, v11, v6);
      v16 = objc_allocWithZone(sub_2304A59B4());
      a1 = sub_2304A59A4();
      swift_unknownObjectRelease();
      (*(v15 + 8))(v11, v6);
    }
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D468D8], v2);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_230456D5C()
{
  v2 = sub_2304A53C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_2304A5764();
    v9 = MEMORY[0x2319199F0]();
    v10 = *(v7 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v11 = MEMORY[0x28223BE20](v9);
    *(&v14 - 4) = v8;
    *(&v14 - 3) = v7;
    *(&v14 - 2) = v0;
    MEMORY[0x28223BE20](v11);
    *(&v14 - 2) = sub_2304643A4;
    *(&v14 - 1) = v12;

    os_unfair_lock_lock(v10 + 4);
    sub_230464E3C(&v15);
    os_unfair_lock_unlock(v10 + 4);

    objc_autoreleasePoolPop(v9);
    if (!v1)
    {
      sub_2304A5574();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D468D8], v2);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

uint64_t sub_230457268@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_2304A53C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D468D8], v4);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }

  v9 = Strong;
  v10 = sub_2304A5764();
  v11 = MEMORY[0x2319199F0]();
  v12 = *(v9 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
  v13 = MEMORY[0x28223BE20](v11);
  v26[-4] = v10;
  v26[-3] = v9;
  v26[-2] = v1;
  MEMORY[0x28223BE20](v13);
  v26[-2] = sub_23046436C;
  v26[-1] = v14;

  os_unfair_lock_lock(v12 + 4);
  sub_23046438C(&v27);
  v15 = v12 + 4;
  if (v2)
  {
    os_unfair_lock_unlock(v15);

    objc_autoreleasePoolPop(v11);
    return swift_unknownObjectRelease();
  }

  os_unfair_lock_unlock(v15);

  v17 = v27;

  objc_autoreleasePoolPop(v11);
  v18 = *(v17 + 16);
  if (!v18)
  {
    goto LABEL_10;
  }

  v26[2] = *(&v17 + 1);
  v28 = a1;
  v19 = sub_23045A344(v18, 0, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
  v20 = *(sub_2304A4FF4() - 8);
  v26[0] = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v26[1] = v19;
  v21 = sub_230488AE4(&v27, &v19[v26[0]], v18, v17);
  v22 = v27;

  result = sub_230433B3C(v22);
  if (v21 != v18)
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = *(v17 + 16);
  if (!v23)
  {
LABEL_10:

LABEL_11:
    sub_2304A5654();
    return swift_unknownObjectRelease();
  }

  v24 = sub_23045A344(*(v17 + 16), 0, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
  v25 = sub_230488840(&v27, &v24[v26[0]], v23, v17);
  result = sub_230433B3C(v27);
  if (v25 == v23)
  {
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_2304578F0()
{
  v0 = sub_2304A53C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_5Tm((Strong + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(Strong + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
    sub_2304A4264();
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v1 + 104))(v3, *MEMORY[0x277D468D8], v0);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

void sub_230457B04()
{
  v1 = sub_2304A53C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v7 = MEMORY[0x28223BE20](Strong);
    *(&v9 - 2) = v7;
    MEMORY[0x28223BE20](v7);
    *(&v9 - 2) = sub_230464334;
    *(&v9 - 1) = v8;

    os_unfair_lock_lock(v6 + 4);
    sub_230464350(&v10);
    os_unfair_lock_unlock(v6 + 4);
    if (v0)
    {
      __break(1u);
    }

    else
    {

      sub_2304A5574();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v2 + 104))(v4, *MEMORY[0x277D468D8], v1);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    swift_willThrow();
  }
}

void sub_230457EB4()
{
  v2 = v0;
  v3 = sub_2304A53C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2304A5124();
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FD0, &qword_2304A7428);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = v6;
    v28 = Strong;
    v26 = v3;
    v14 = *(v2 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock);
    v15 = MEMORY[0x28223BE20](Strong);
    *(&v25 - 2) = v2;
    *(&v25 - 1) = v16;
    v25 = v16;
    MEMORY[0x28223BE20](v15);
    *(&v25 - 2) = sub_2304642E4;
    *(&v25 - 1) = v17;
    os_unfair_lock_lock(v14 + 4);
    sub_230464ECC();
    if (v1)
    {
      os_unfair_lock_unlock(v14 + 4);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v14 + 4);
      v18 = sub_2304A5294();
      if ((*(*(v18 - 8) + 48))(v12, 1, v18) == 1)
      {
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v19 = sub_2304A5B74();
        __swift_project_value_buffer(v19, qword_28149B008);
        v20 = sub_2304A5B54();
        v21 = sub_2304A5E74();
        v22 = os_log_type_enabled(v20, v21);
        v23 = v27;
        if (v22)
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_230430000, v20, v21, "Cannot send a message for an unknown client descriptor", v24, 2u);
          MEMORY[0x23191A000](v24, -1, -1);
        }

        (*(v4 + 104))(v23, *MEMORY[0x277D468C0], v26);
        sub_2304A53E4();
        sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
        swift_allocError();
        sub_2304A53D4();
        swift_willThrow();
        swift_unknownObjectRelease();
      }

      else
      {
        sub_2304A5784();
        sub_23044D59C(v9, v2);
        swift_unknownObjectRelease();
        (*(v29 + 8))(v9, v7);
      }

      sub_230464970(v12, &qword_27DB53FD0, &qword_2304A7428);
    }
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D468D8], v3);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    swift_willThrow();
  }
}

uint64_t sub_23045852C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *)@<X2>, char *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock_descriptors;
  swift_beginAccess();
  v7 = *(a1 + v6);

  sub_230436B74(a2, v7, a3);
}

uint64_t sub_2304585C8()
{
  v0 = sub_2304A5124();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2304A5284();
  v6 = v5;
  sub_2304A5784();
  v7 = sub_2304A5114();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (v4 == v7 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2304A62F4();
  }

  return v11 & 1;
}

uint64_t sub_23045870C(char *a1, void (*a2)(char *, void *), uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v66 = a2;
  v67 = a3;
  v65 = a1;
  v4 = sub_2304A4084();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2304A57B4();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v62 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FC8, &qword_2304A7420);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v54 - v9;
  v68 = sub_2304A55C4();
  v11 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v60 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_2304A5124();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE8, &qword_2304A7438);
  MEMORY[0x28223BE20](v20);
  v22 = (&v54 - v21);
  sub_230464B24(v65, &v54 - v21, &qword_27DB53FE8, &qword_2304A7438);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v19;
    v24 = v14;
    v60 = v11;
    v65 = v10;
    v25 = *v22;
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v26 = sub_2304A5B74();
    __swift_project_value_buffer(v26, qword_28149B008);
    v28 = v62;
    v27 = v63;
    v29 = v64;
    (*(v63 + 16))(v62, v61, v64);
    v30 = v25;
    v31 = sub_2304A5B54();
    v32 = sub_2304A5E74();

    LODWORD(v61) = v32;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v24;
      v34 = v23;
      v35 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v69 = v36;
      *v35 = 136446466;
      v55 = v31;
      sub_2304A5784();
      v37 = v34;
      v38 = v57;
      sub_2304A50E4();
      (*(v33 + 8))(v37, v13);
      sub_230464B8C(&qword_27DB54610, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v39 = v59;
      v40 = sub_2304A62D4();
      v42 = v41;
      (*(v58 + 8))(v38, v39);
      (*(v27 + 8))(v28, v29);
      v43 = sub_23046A5C8(v40, v42, &v69);

      *(v35 + 4) = v43;
      *(v35 + 12) = 2114;
      v44 = v25;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v45;
      v46 = v55;
      v47 = v56;
      *v56 = v45;
      _os_log_impl(&dword_230430000, v46, v61, "Failed to receive response for message %{public}s: %{public}@", v35, 0x16u);
      sub_230464970(v47, &qword_27DB53F30, &qword_2304A7390);
      MEMORY[0x23191A000](v47, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x23191A000](v36, -1, -1);
      MEMORY[0x23191A000](v35, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v28, v29);
    }

    v51 = v66;
    v52 = v65;
    v60[7](v65, 1, 1, v68);
    v53 = sub_2304A3F14();
    v51(v52, v53);

    return sub_230464970(v52, &qword_27DB53FC8, &qword_2304A7420);
  }

  else
  {
    (*(v14 + 32))(v19, v22, v13);
    (*(v14 + 16))(v17, v19, v13);
    v48 = v60;
    sub_2304A55B4();
    v49 = v68;
    (v11[2])(v10, v48, v68);
    v11[7](v10, 0, 1, v49);
    v66(v10, 0);
    sub_230464970(v10, &qword_27DB53FC8, &qword_2304A7420);
    (v11[1])(v48, v49);
    return (*(v14 + 8))(v19, v13);
  }
}

void sub_230458F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FC8, &qword_2304A7420);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_230464B24(a1, &v12 - v7, &qword_27DB53FC8, &qword_2304A7420);
  v9 = sub_2304A55C4();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_230464B8C(&qword_27DB53FD8, MEMORY[0x277D46988], MEMORY[0x277D46980]);
    v11 = sub_2304A5454();
    (*(v10 + 8))(v8, v9);
  }

  (*(a3 + 16))(a3, v11, a2);
}

uint64_t sub_230459100()
{
  v2 = sub_2304A53C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_2304A5764();
    v9 = *(v7 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v10 = MEMORY[0x28223BE20](v8);
    *(&v13 - 4) = v10;
    *(&v13 - 3) = v7;
    *(&v13 - 2) = v0;
    MEMORY[0x28223BE20](v10);
    *(&v13 - 2) = sub_230462968;
    *(&v13 - 1) = v11;

    os_unfair_lock_lock(v9 + 4);
    sub_230464E3C(&v14);
    os_unfair_lock_unlock(v9 + 4);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {

      sub_2304A5574();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D468D8], v2);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

uint64_t sub_230459604(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_230459624(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_281499DA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_281499DA8);
    }
  }
}

uint64_t sub_23045969C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2304A4F74();
  v79 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v77 = &v59 - v8;
  v78 = sub_2304A4084();
  v69 = *(v78 - 8);
  v9 = MEMORY[0x28223BE20](v78);
  v70 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540F0, &unk_2304A7B90);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  result = MEMORY[0x28223BE20](v13);
  v72 = &v59 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v71 = v15;
  v66 = v7;
  v67 = a2;
  v17 = 0;
  v63 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v60 = (v21 + 63) >> 6;
  v61 = v19;
  v62 = v69 + 16;
  v76 = (v69 + 32);
  v74 = v79 + 16;
  v75 = (v79 + 32);
  v64 = (v69 + 8);
  v65 = (v79 + 8);
  while (v23)
  {
    v73 = (v23 - 1) & v23;
    v24 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_16:
    v31 = v63;
    v33 = v68;
    v32 = v69;
    v34 = v78;
    (*(v69 + 16))(v68, *(v63 + 48) + *(v69 + 72) * v24, v78);
    v35 = *(v31 + 56);
    v36 = v79;
    v37 = v77;
    (*(v79 + 16))(v77, v35 + *(v79 + 72) * v24, v4);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
    v39 = *(v38 + 48);
    v40 = *(v32 + 32);
    v28 = v71;
    v40(v71, v33, v34);
    (*(v36 + 32))(v28 + v39, v37, v4);
    (*(*(v38 - 8) + 56))(v28, 0, 1, v38);
    v27 = v72;
    v23 = v73;
LABEL_17:
    sub_230464ABC(v28, v27, &qword_27DB540F0, &unk_2304A7B90);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
    v42 = (*(*(v41 - 8) + 48))(v27, 1, v41);
    v43 = v42 == 1;
    if (v42 == 1)
    {
      return v43;
    }

    v44 = *(v41 + 48);
    v45 = v4;
    v46 = v70;
    v47 = v78;
    (*v76)(v70, v27, v78);
    v48 = v66;
    (*v75)(v66, v27 + v44, v45);
    v49 = v67;
    v50 = sub_230469E70(v46);
    v52 = v51;
    (*v64)(v46, v47);
    if ((v52 & 1) == 0)
    {
      (*v65)(v48, v45);
      return 0;
    }

    v53 = v79;
    v54 = *(v49 + 56) + *(v79 + 72) * v50;
    v55 = v77;
    (*(v79 + 16))(v77, v54, v45);
    sub_230464B8C(&qword_27DB540F8, MEMORY[0x277D46770], MEMORY[0x277D46778]);
    v56 = sub_2304A5D04();
    v57 = *(v53 + 8);
    v57(v55, v45);
    result = (v57)(v48, v45);
    v4 = v45;
    if ((v56 & 1) == 0)
    {
      return v43;
    }
  }

  if (v60 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v60;
  }

  v26 = v25 - 1;
  v28 = v71;
  v27 = v72;
  while (1)
  {
    v29 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v29 >= v60)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
      (*(*(v58 - 8) + 56))(v28, 1, 1, v58);
      v23 = 0;
      v17 = v26;
      goto LABEL_17;
    }

    v30 = *(v61 + 8 * v29);
    ++v17;
    if (v30)
    {
      v73 = (v30 - 1) & v30;
      v24 = __clz(__rbit64(v30)) | (v29 << 6);
      v17 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void *sub_230459D08(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54218, &qword_2304A7578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54220, &unk_2304A7580);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230459E50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54168, &qword_2304A7520);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54170, &qword_2304A7528) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54170, &qword_2304A7528) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_23045A0B8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_23045A294(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB540A8, &qword_2304A7498);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_23045A344(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23045A47C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544B0, &unk_2304A74C0);
    v2 = sub_2304A60C4();
    v15 = v2;
    sub_2304A6004();
    if (sub_2304A6074())
    {
      sub_2304A4984();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_23046B9E0(v9 + 1);
        }

        v2 = v15;
        sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
        result = sub_2304A5CF4();
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

      while (sub_2304A6074());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_23045A6EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(unint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_2304A60C4();
    v21 = v8;
    sub_2304A6004();
    if (sub_2304A6074())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          a6(v15 + 1);
        }

        v8 = v21;
        result = sub_2304A5F64();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_2304A6074());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

unint64_t sub_23045A8DC(uint64_t a1, uint64_t a2)
{
  sub_2304A4984();
  sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
  sub_2304A5CF4();
  result = sub_2304A5FE4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_23045A9C4(uint64_t a1, uint64_t a2)
{
  sub_2304A5F64();
  result = sub_2304A5FE4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_23045AA48(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_2304A6084();

    if (v5)
    {
      v6 = sub_23045B25C(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_2304A4984();
  sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
  v8 = sub_2304A5CF4();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_230464B8C(&unk_281499FC0, MEMORY[0x277D464B8], MEMORY[0x277D464C8]);
  while ((sub_2304A5D04() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23046CFC8();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_23045B5C8(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_23045AC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2304A5294();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_230464B8C(&qword_281499F60, MEMORY[0x277D46850], MEMORY[0x277D46858]);
  v31 = a1;
  v10 = sub_2304A5CF4();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_230464B8C(&unk_281499F50, MEMORY[0x277D46850], MEMORY[0x277D46860]);
      v19 = sub_2304A5D04();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23046D118();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_23045B7B4(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_23045AF30(void *a1, void (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t, id))
{
  v6 = *v4;
  if ((*v4 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v8 = *v4;
    }

    else
    {
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = a1;
    v10 = sub_2304A6084();

    if (v10)
    {
      v11 = a4(v8, v9);

      return v11;
    }

    return 0;
  }

  v14 = v4;
  a2(0);
  v15 = sub_2304A5F64();
  v16 = -1 << *(v6 + 32);
  v17 = v15 & ~v16;
  if (((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
    return 0;
  }

  v18 = ~v16;
  while (1)
  {
    v19 = *(*(v6 + 48) + 8 * v17);
    v20 = sub_2304A5F74();

    if (v20)
    {
      break;
    }

    v17 = (v17 + 1) & v18;
    if (((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v14;
  v24 = *v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v22 = v24;
  }

  v23 = *(*(v22 + 48) + 8 * v17);
  sub_23045BABC(v17);
  result = v23;
  *v14 = v24;
  return result;
}

uint64_t sub_23045B0CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_2304A6044();
  v5 = swift_unknownObjectRetain();
  v6 = sub_23045A6EC(v5, v4, &qword_27DB54500, &qword_2304A7568, type metadata accessor for Client, sub_23046B76C);
  v15 = v6;

  v7 = sub_2304A5F64();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for Client();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_2304A5F74();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_23045BABC(v9);
  result = sub_2304A5F74();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23045B25C(uint64_t a1, uint64_t a2)
{

  v3 = sub_2304A6044();
  v4 = swift_unknownObjectRetain();
  v5 = sub_23045A47C(v4, v3);
  v12 = v5;
  sub_2304A4984();
  sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);

  v6 = sub_2304A5CF4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_230464B8C(&unk_281499FC0, MEMORY[0x277D464B8], MEMORY[0x277D464C8]);
    while ((sub_2304A5D04() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_23045B5C8(v8);
  result = sub_2304A5D04();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23045B438(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_2304A6044();
  v5 = swift_unknownObjectRetain();
  v6 = sub_23045A6EC(v5, v4, &qword_27DB541A0, &unk_2304A7558, _s14ReplicatorCore6ClientCMa_0, sub_23046BFD0);
  v15 = v6;

  v7 = sub_2304A5F64();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    _s14ReplicatorCore6ClientCMa_0();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_2304A5F74();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_23045BABC(v9);
  result = sub_2304A5F74();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23045B5C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2304A5FC4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      sub_2304A4984();
      sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
      do
      {
        v10 = sub_2304A5CF4() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_23045B7B4(int64_t a1)
{
  v3 = sub_2304A5294();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_2304A5FC4();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_230464B8C(&qword_281499F60, MEMORY[0x277D46850], MEMORY[0x277D46858]);
        v24 = sub_2304A5CF4();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_23045BABC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2304A5FC4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_2304A5F64();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_23045BCA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_230469C40(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_23046E1E8(v16, a4 & 1);
      v11 = sub_230469C40(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2304A6314();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_230471078();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_23045BE1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_230469CB8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23046E774(v14, a3 & 1);
      v9 = sub_230469CB8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_2304A4984();
        result = sub_2304A6314();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_23047134C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v21 = v19[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v22;
}

void sub_23045BF7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2304A4FF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_230469D9C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2304714B0();
      goto LABEL_7;
    }

    sub_23046EA58(v17, a3 & 1);
    v23 = sub_230469D9C(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_23045CAC8(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_2304A6314();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_23045C148(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2304A4084();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_230469E70(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2304719EC();
      goto LABEL_7;
    }

    sub_23046F280(v17, a3 & 1);
    v28 = sub_230469E70(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_23045CB80(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2304A6314();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_2304A4F74();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

unint64_t sub_23045C34C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23046A0EC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23046FB10(v14, a3 & 1);
      result = sub_23046A0EC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_2304A6314();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_230471FCC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_23045C498(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_230469C40(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_23046FD80(v16, a4 & 1);
      v11 = sub_230469C40(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2304A6314();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_230472128();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_23045C658(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_230469C40(a2, a3);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v32 = sub_230469C40(a2, a3);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2304A6314();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = v24[7];
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  sub_23045CC74(v18, a2, a3, a1, v24, a8);
}

uint64_t sub_23045C810(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_23046A0EC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_230472548();
      goto LABEL_7;
    }

    sub_2304703D4(v13, a3 & 1);
    v24 = sub_23046A0EC(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2304A6314();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_2304A5054();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_23045CD28(v10, a2, a1, v16);
}

_OWORD *sub_23045C978(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_230469C40(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2304727B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_230470720(v16, a4 & 1);
    v11 = sub_230469C40(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2304A6314();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return sub_230462958(a1, v22);
  }

  else
  {
    sub_23045CDD4(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_23045CAC8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2304A4FF4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_23045CB80(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2304A4084();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_2304A4F74();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_23045CC74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_23045CD28(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_2304A5054();
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

_OWORD *sub_23045CDD4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_230462958(a4, (a5[7] + 32 * a1));
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

void *sub_23045CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1;
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = *(a3 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v13 = v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, a3, v9, a2);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = sub_23045E074(v16, v11, a3, v9, a2, a5);
  result = MEMORY[0x23191A000](v16, -1, -1);
  if (!v5)
  {
    return v17;
  }

  return result;
}

void *sub_23045CFD0(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    result = sub_2304A6044();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(*v1 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2304A6004();
    sub_2304A4984();
    sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
    result = sub_2304A5E24();
    a1 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      return sub_230433B3C(a1);
    }

    while (1)
    {
      sub_23045AA48(v15);

      v6 = v13;
      v7 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_2304A6074())
      {
        sub_2304A4984();
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      return sub_230433B3C(a1);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      return sub_230433B3C(a1);
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23045D208(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v77 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v5 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_2304A6004();
      sub_2304A4984();
      sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
      sub_2304A5E24();
      v5 = v72;
      v7 = v73;
      v8 = v74;
      v9 = v75;
      v10 = v76;
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      v7 = a1 + 56;
      v8 = ~v11;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v10 = v13 & *(a1 + 56);

      v9 = 0;
    }

    v67 = v5;
    v68 = v7;
    v69 = v8;
    v70 = v9;
    v56 = v8;
    v14 = (v8 + 64) >> 6;
    v63 = (v4 + 56);
    v71 = v10;
    v59 = v14;
    v60 = v7;
    while (2)
    {
      if (v5 < 0)
      {
        v21 = sub_2304A6074();
        if (!v21)
        {
          goto LABEL_64;
        }

        v64 = v21;
        sub_2304A4984();
        swift_dynamicCast();
        v20 = v65;
        v18 = v9;
        v2 = v10;
        if (!v65)
        {
          goto LABEL_64;
        }

        goto LABEL_25;
      }

      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;

        v18 = v16;
        goto LABEL_21;
      }

      if (v14 <= (v9 + 1))
      {
        v17 = v9 + 1;
      }

      else
      {
        v17 = v14;
      }

      v18 = v17 - 1;
      v19 = v9;
      while (1)
      {
        v16 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        if (v16 >= v14)
        {
          break;
        }

        v15 = *(v7 + 8 * v16);
        ++v19;
        if (v15)
        {
          goto LABEL_20;
        }
      }

      v20 = 0;
      v2 = 0;
LABEL_21:
      v67 = v5;
      v68 = v7;
      v69 = v56;
      v70 = v18;
      v71 = v2;
      if (!v20)
      {
LABEL_64:
        v46 = v5;
        goto LABEL_62;
      }

LABEL_25:
      v61 = v20;
      v66 = v20;
      sub_2304A4984();
      v58 = sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
      v22 = sub_2304A5CF4();
      v23 = -1 << *(v4 + 32);
      v9 = v22 & ~v23;
      v7 = v9 >> 6;
      v3 = 1 << v9;
      if (((1 << v9) & v63[v9 >> 6]) == 0)
      {
LABEL_10:

        v9 = v18;
        v10 = v2;
        v14 = v59;
        v7 = v60;
        continue;
      }

      break;
    }

    v24 = ~v23;
    v25 = sub_230464B8C(&unk_281499FC0, MEMORY[0x277D464B8], MEMORY[0x277D464C8]);
    v65 = *(*(v4 + 48) + 8 * v9);
    for (i = v25; (sub_2304A5D04() & 1) == 0; v65 = *(*(v4 + 48) + 8 * v9))
    {
      v9 = (v9 + 1) & v24;
      v7 = v9 >> 6;
      v3 = 1 << v9;
      if (((1 << v9) & v63[v9 >> 6]) == 0)
      {
        goto LABEL_10;
      }
    }

    v27 = *(v4 + 32);
    v53 = ((1 << v27) + 63) >> 6;
    v6 = 8 * v53;
    if ((v27 & 0x3Fu) <= 0xD)
    {
LABEL_32:
      v54 = &v52;
      MEMORY[0x28223BE20](v26);
      v29 = &v52 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v29, v63, v28);
      v30 = *&v29[8 * v7] & ~v3;
      v31 = *(v4 + 16);
      v55 = v29;
      *&v29[8 * v7] = v30;
      v9 = v31 - 1;
      v32 = v59;
      v33 = v60;
      v57 = v5;
      while (1)
      {
        if (v5 < 0)
        {
          v35 = sub_2304A6074();
          if (!v35)
          {
            goto LABEL_60;
          }

          v64 = v35;
          swift_dynamicCast();
          v7 = v65;
          if (!v65)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (!v2)
          {
            if (v32 <= (v18 + 1))
            {
              v36 = v18 + 1;
            }

            else
            {
              v36 = v32;
            }

            v37 = v36 - 1;
            while (1)
            {
              v34 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                break;
              }

              if (v34 >= v32)
              {
                v7 = 0;
                v2 = 0;
                goto LABEL_49;
              }

              v2 = *(v33 + 8 * v34);
              ++v18;
              if (v2)
              {
                goto LABEL_48;
              }
            }

            __break(1u);
            goto LABEL_66;
          }

          v34 = v18;
LABEL_48:
          v38 = __clz(__rbit64(v2));
          v2 &= v2 - 1;
          v7 = *(*(v5 + 48) + ((v34 << 9) | (8 * v38)));

          v37 = v34;
LABEL_49:
          v67 = v5;
          v68 = v33;
          v69 = v56;
          v70 = v37;
          v18 = v37;
          v71 = v2;
          if (!v7)
          {
LABEL_60:
            v4 = sub_230487D48(v55, v53, v9, v4);
            goto LABEL_61;
          }
        }

        v61 = v9;
        v66 = v7;
        v39 = sub_2304A5CF4();
        v40 = v4;
        v41 = -1 << *(v4 + 32);
        v42 = v39 & ~v41;
        v3 = v42 >> 6;
        v43 = 1 << v42;
        if (((1 << v42) & v63[v42 >> 6]) == 0)
        {
          break;
        }

        v44 = ~v41;
        while (1)
        {
          v65 = *(*(v40 + 48) + 8 * v42);
          if (sub_2304A5D04())
          {
            break;
          }

          v42 = (v42 + 1) & v44;
          v3 = v42 >> 6;
          v43 = 1 << v42;
          if (((1 << v42) & v63[v42 >> 6]) == 0)
          {
            goto LABEL_33;
          }
        }

        v45 = v55[v3];
        v55[v3] = v45 & ~v43;
        v4 = v40;
        if ((v45 & v43) != 0)
        {
          v33 = v60;
          v9 = v61 - 1;
          v5 = v57;
          v32 = v59;
          if (__OFSUB__(v61, 1))
          {
            goto LABEL_67;
          }

          if (v61 == 1)
          {

            v4 = MEMORY[0x277D84FA0];
            goto LABEL_61;
          }
        }

        else
        {
LABEL_34:
          v5 = v57;
          v32 = v59;
          v33 = v60;
          v9 = v61;
        }
      }

LABEL_33:

      v4 = v40;
      goto LABEL_34;
    }

LABEL_68:
    v48 = v6;

    v49 = v48;
    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_32;
    }

    v50 = swift_slowAlloc();
    memcpy(v50, v63, v49);
    v51 = sub_23045ED18(v50, v53, v4, v9, &v67);

    MEMORY[0x23191A000](v50, -1, -1);
    v4 = v51;
LABEL_61:
    v46 = v67;
LABEL_62:
    sub_230433B3C(v46);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v4;
}

unint64_t *sub_23045D958(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_2304A6044();
      a2 = sub_23045A47C(v4, v5);
      goto LABEL_8;
    }

    sub_2304A4984();
    v7 = MEMORY[0x277D84FA0];
    v16 = MEMORY[0x277D84FA0];
    sub_2304A6004();
    if (sub_2304A6074())
    {
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]), v9 = sub_2304A5CF4(), v10 = -1 << *(a1 + 32), v11 = v9 & ~v10, ((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
        {
          v12 = ~v10;
          sub_230464B8C(&unk_281499FC0, MEMORY[0x277D464B8], MEMORY[0x277D464C8]);
          while (1)
          {

            v13 = sub_2304A5D04();

            if (v13)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v14 = *(v7 + 16);
          if (*(v7 + 24) <= v14)
          {
            sub_23046B9E0(v14 + 1);
          }

          v7 = v16;
          sub_23045A8DC(v15, v16);
        }

        else
        {
LABEL_13:
        }
      }

      while (sub_2304A6074());
    }

    return v7;
  }

  else
  {
    if (v3)
    {
LABEL_8:

      return sub_23045E114(a1, a2);
    }

    return sub_23045E2B4(a1, a2);
  }
}

uint64_t sub_23045DC04(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277D84FA0];
    v21 = MEMORY[0x277D84FA0];
    sub_2304A6004();
    if (sub_2304A6074())
    {
      sub_2304A4984();
      while (1)
      {
        swift_dynamicCast();
        v6 = a1(&v20);
        if (v3)
        {
          break;
        }

        v7 = v20;
        if (v6)
        {
          v8 = *(v4 + 16);
          if (*(v4 + 24) <= v8)
          {
            sub_23046B9E0(v8 + 1);
          }

          v4 = v21;
          sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
          result = sub_2304A5CF4();
          v10 = v4 + 56;
          v11 = -1 << *(v4 + 32);
          v12 = result & ~v11;
          v13 = v12 >> 6;
          if (((-1 << v12) & ~*(v4 + 56 + 8 * (v12 >> 6))) != 0)
          {
            v14 = __clz(__rbit64((-1 << v12) & ~*(v4 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v15 = 0;
            v16 = (63 - v11) >> 6;
            do
            {
              if (++v13 == v16 && (v15 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v17 = v13 == v16;
              if (v13 == v16)
              {
                v13 = 0;
              }

              v15 |= v17;
              v18 = *(v10 + 8 * v13);
            }

            while (v18 == -1);
            v14 = __clz(__rbit64(~v18)) + (v13 << 6);
          }

          *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
          *(*(v4 + 48) + 8 * v14) = v7;
          ++*(v4 + 16);
        }

        else
        {
        }

        if (!sub_2304A6074())
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    v19 = sub_230487158(a1, a2, a3);
    if (!v3)
    {
      return v19;
    }
  }

  return v4;
}

unint64_t *sub_23045DEA4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_23045E844(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_23045DF34(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_2304618F4(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

unint64_t *sub_23045DFD8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_230461F90(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_23045E074(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

void *sub_23045E114(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_23045E478(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_230464898(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x23191A000](v14, -1, -1);
  }

  return v10;
}

unint64_t *sub_23045E2B4(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_23045E844((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_23045DEA4(v11, v6, a2, a1);

    MEMORY[0x23191A000](v11, -1, -1);
  }

  return v9;
}

void *sub_23045E478(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2304A6004();
    sub_2304A4984();
    sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
    result = sub_2304A5E24();
    v4 = v35;
    v6 = v36;
    v7 = v37;
    v8 = v38;
    v9 = v39;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v28 = 0;
  v13 = (v7 + 64) >> 6;
  v33 = a4 + 56;
  v30 = v4;
  v31 = v13;
  v32 = v6;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  if (!sub_2304A6074() || (sub_2304A4984(), swift_dynamicCast(), v18 = v40, v16 = v8, v17 = v9, !v40))
  {
LABEL_28:
    sub_230433B3C(v4);

    return sub_230487D48(a1, a2, v28, a4);
  }

  while (1)
  {
    v40 = v18;
    sub_2304A4984();
    sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
    v19 = sub_2304A5CF4();
    v20 = -1 << *(a4 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v33 + 8 * (v21 >> 6))) == 0)
    {
      goto LABEL_9;
    }

    sub_230464B8C(&unk_281499FC0, MEMORY[0x277D464B8], MEMORY[0x277D464C8]);
    if ((sub_2304A5D04() & 1) == 0)
    {
      v24 = ~v20;
      while (1)
      {
        v21 = (v21 + 1) & v24;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v33 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        if (sub_2304A5D04())
        {
          goto LABEL_24;
        }
      }

LABEL_9:

      v4 = v30;
LABEL_10:
      v13 = v31;
      v6 = v32;
      v9 = v17;
      v8 = v16;
      if (v4 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

LABEL_24:

    v4 = v30;
    v25 = a1[v22];
    a1[v22] = v25 | v23;
    if ((v25 & v23) != 0)
    {
      goto LABEL_10;
    }

    v26 = __OFADD__(v28++, 1);
    v13 = v31;
    v6 = v32;
    v9 = v17;
    if (v26)
    {
      goto LABEL_30;
    }

    v8 = v16;
    if (v30 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
      goto LABEL_28;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_28;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t *sub_23045E844(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v36 = result;
  if (*(a4 + 16) < *(a3 + 16))
  {
    v5 = 0;
    v6 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v39 = 0;
    v40 = a3 + 56;
    v35 = v10;
    while (1)
    {
      if (!v9)
      {
        v11 = v5;
        while (1)
        {
          v5 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_44;
          }

          if (v5 >= v10)
          {
            goto LABEL_42;
          }

          v12 = *(v6 + 8 * v5);
          ++v11;
          if (v12)
          {
            v37 = (v12 - 1) & v12;
            goto LABEL_15;
          }
        }
      }

      v37 = (v9 - 1) & v9;
LABEL_15:
      sub_2304A4984();
      sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);

      v13 = sub_2304A5CF4();
      v14 = -1 << *(v4 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      v17 = 1 << v15;
      if (((1 << v15) & *(v40 + 8 * (v15 >> 6))) == 0)
      {
        goto LABEL_6;
      }

      sub_230464B8C(&unk_281499FC0, MEMORY[0x277D464B8], MEMORY[0x277D464C8]);
      if ((sub_2304A5D04() & 1) == 0)
      {
        break;
      }

LABEL_20:

      v36[v16] |= v17;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_45;
      }

      ++v39;
LABEL_7:
      v4 = a3;
      v10 = v35;
      v9 = v37;
    }

    v18 = ~v14;
    while (1)
    {
      v15 = (v15 + 1) & v18;
      v16 = v15 >> 6;
      v17 = 1 << v15;
      if (((1 << v15) & *(v40 + 8 * (v15 >> 6))) == 0)
      {
        break;
      }

      if (sub_2304A5D04())
      {
        goto LABEL_20;
      }
    }

LABEL_6:

    goto LABEL_7;
  }

  v39 = 0;
  v19 = 0;
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v25 = a4 + 56;
  while (v23)
  {
    v26 = __clz(__rbit64(v23));
    v41 = (v23 - 1) & v23;
LABEL_34:
    v38 = v26 | (v19 << 6);
    sub_2304A4984();
    sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);

    v29 = sub_2304A5CF4();
    v30 = -1 << *(a4 + 32);
    v31 = v29 & ~v30;
    if ((*(v25 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
    {
      v32 = ~v30;
      sub_230464B8C(&unk_281499FC0, MEMORY[0x277D464B8], MEMORY[0x277D464C8]);
      while ((sub_2304A5D04() & 1) == 0)
      {
        v31 = (v31 + 1) & v32;
        if (((*(v25 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      *(v36 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      v23 = v41;
      v33 = __OFADD__(v39++, 1);
      v4 = a3;
      if (v33)
      {
        __break(1u);
LABEL_42:

        return sub_230487D48(v36, a2, v39, v4);
      }
    }

    else
    {
LABEL_26:

      v23 = v41;
      v4 = a3;
    }
  }

  v27 = v19;
  while (1)
  {
    v19 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v19 >= v24)
    {
      goto LABEL_42;
    }

    v28 = *(v20 + 8 * v19);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v41 = (v28 - 1) & v28;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

unint64_t *sub_23045ED18(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v25 = result;
  v26 = v7 - 1;
  v28 = a3 + 56;
  while (1)
  {
    if ((*v5 & 0x8000000000000000) != 0)
    {
      if (!sub_2304A6074())
      {
        goto LABEL_29;
      }

      sub_2304A4984();
      swift_dynamicCast();
      if (!v29)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    v8 = v5[3];
    v9 = v5[4];
    if (!v9)
    {
      break;
    }

    v10 = v5[3];
LABEL_16:
    v14 = (v9 - 1) & v9;
    v15 = *(*(*v5 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));

    v13 = v10;
LABEL_17:
    v5[3] = v13;
    v5[4] = v14;
    if (!v15)
    {
LABEL_29:

      return sub_230487D48(v25, a2, v26, a3);
    }

LABEL_18:
    sub_2304A4984();
    sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
    v16 = sub_2304A5CF4();
    v17 = -1 << *(a3 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if (((1 << v18) & *(v28 + 8 * (v18 >> 6))) == 0)
    {
      goto LABEL_2;
    }

    sub_230464B8C(&unk_281499FC0, MEMORY[0x277D464B8], MEMORY[0x277D464C8]);
    v29 = *(*(a3 + 48) + 8 * v18);
    if (sub_2304A5D04())
    {
LABEL_23:

      v22 = v25[v19];
      v25[v19] = v22 & ~v20;
      if ((v22 & v20) != 0)
      {
        v5 = a5;
        v23 = v26 - 1;
        if (__OFSUB__(v26, 1))
        {
          goto LABEL_31;
        }

        --v26;
        if (!v23)
        {
          return MEMORY[0x277D84FA0];
        }
      }

      else
      {
        v5 = a5;
      }
    }

    else
    {
      v21 = ~v17;
      while (1)
      {
        v18 = (v18 + 1) & v21;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v28 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v29 = *(*(a3 + 48) + 8 * v18);
        if (sub_2304A5D04())
        {
          goto LABEL_23;
        }
      }

LABEL_2:

      v5 = a5;
    }
  }

  v11 = (v5[2] + 64) >> 6;
  if (v11 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = (v5[2] + 64) >> 6;
  }

  v13 = v12 - 1;
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v11)
    {
      v15 = 0;
      v14 = 0;
      goto LABEL_17;
    }

    v9 = *(v5[1] + 8 * v10);
    ++v8;
    if (v9)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_23045F028(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = sub_2304A5224();
  result = MEMORY[0x28223BE20](v39);
  v37 = a3;
  v38 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v34 = v6 + 16;
  v35 = v6;
  v32 = 0;
  v33 = (v6 + 8);
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v17 = v16 | (v8 << 6);
    v19 = v38;
    v18 = v39;
LABEL_11:
    v22 = v37[7];
    v23 = (v37[6] + 16 * v17);
    v24 = v23[1];
    v40[0] = *v23;
    v40[1] = v24;
    (*(v35 + 16))(v19, v22 + *(v35 + 72) * v17, v18);

    v25 = v41;
    v26 = v36(v40, v19);
    v27 = v19;
    v41 = v25;
    if (v25)
    {
      (*v33)(v19, v18);
    }

    v28 = v26;
    (*v33)(v27, v18);

    if (v28)
    {
      *(v31 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
        return sub_23045F430(v31, v30, v32, v37);
      }
    }
  }

  v20 = v8;
  v19 = v38;
  v18 = v39;
  while (1)
  {
    v8 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      return sub_23045F430(v31, v30, v32, v37);
    }

    v21 = v10[v8];
    ++v20;
    if (v21)
    {
      v14 = (v21 - 1) & v21;
      v17 = __clz(__rbit64(v21)) | (v8 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_23045F29C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  v21 = 0;
  v20 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v24 = (v9 - 1) & v9;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v26 = *(*(a3 + 48) + 8 * v14);
    v16 = v14;
    v25 = *(v15 + 8 * v14);

    v17 = a4(&v26, &v25);

    if (v4)
    {
      return result;
    }

    v9 = v24;
    if (v17)
    {
      *(v20 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_23045F7B0(v20, a2, v21, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_23045F7B0(v20, a2, v21, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v24 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23045F430(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = sub_2304A5224();
  v54 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v50 = &v44 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540C0, &qword_2304A74A8);
  result = sub_2304A62A4();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    sub_2304A6394();

    v52 = v27;
    sub_2304A5D54();
    result = sub_2304A63B4();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_26:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23045F7B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FB8, &unk_2304A7A50);
  result = sub_2304A62A4();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v28 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v29 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = *(*(v4 + 48) + 8 * v15);
    v17 = *(*(v4 + 56) + 8 * v15);
    sub_2304A4984();
    sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);

    result = sub_2304A5CF4();
    v18 = -1 << *(v8 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v8 + 48) + 8 * v21) = v16;
    *(*(v8 + 56) + 8 * v21) = v17;
    ++*(v8 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v28;
    v9 = v29;
    if (!v5)
    {
      return v8;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v29 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_23045FA3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23045FBB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23045FA5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23045FCBC(a1, a2, a3, *v3, &qword_27DB540B8, &qword_2304A74A0, MEMORY[0x277D46840]);
  *v3 = result;
  return result;
}

void *sub_23045FAA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23045FCBC(a1, a2, a3, *v3, &qword_27DB54088, &qword_2304A7480, MEMORY[0x277D46370]);
  *v3 = result;
  return result;
}

void *sub_23045FAE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23045FCBC(a1, a2, a3, *v3, &qword_27DB53FB0, &unk_2304A7410, MEMORY[0x277D46770]);
  *v3 = result;
  return result;
}

void *sub_23045FB28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23045FCBC(a1, a2, a3, *v3, &qword_27DB53FA0, &qword_2304A7400, MEMORY[0x277D46508]);
  *v3 = result;
  return result;
}

void *sub_23045FB6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23045FCBC(a1, a2, a3, *v3, &qword_27DB53FA8, &qword_2304A7408, MEMORY[0x277D46670]);
  *v3 = result;
  return result;
}

char *sub_23045FBB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F70, &qword_2304A73D0);
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

void *sub_23045FCBC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_23045FE98(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_2304A6044();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_23045A294(v2, 0);

    v1 = sub_230488614(&v5, v3 + 4, v2, v1);
    sub_230433B3C(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_23045FF48(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2319195D0](a1, a2, v7);
      type metadata accessor for Client();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for Client();
    if (sub_2304A6024() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2304A6034();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_2304A5F64();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_2304A5F74();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_230460148@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_2304A5294();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_23046020C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    result = sub_2304A61D4();
    if (result == *(a4 + 36))
    {
      sub_2304A61E4();
      sub_2304A4984();
      swift_dynamicCast();
      sub_230469CB8(v8);
      v6 = v5;

      if (v6)
      {
        sub_2304A61B4();
        v7 = sub_2304A6204();
        swift_unknownObjectRelease();
        return v7;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  return sub_2304A5FD4();
}

uint64_t sub_230460364(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(a6 + 48);
  v11 = sub_2304A41D4();
  (*(*(v11 - 8) + 16))(v9, v10 + *(*(v11 - 8) + 72) * a3, v11);
  v12 = *(a6 + 56);
  v13 = sub_2304A41F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v16 = v12 + *(v14 + 72) * a3;

  return v15(a2, v16, v13);
}

uint64_t *sub_230460490(uint64_t *result, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void))
{
  v8 = result;
  if ((a5 & 0xC000000000000001) == 0)
  {
    if (a4)
    {
      result = sub_2304A61D4();
      if (result != *(a5 + 36))
      {
        __break(1u);
        goto LABEL_15;
      }

      sub_2304A61E4();
      sub_2304A4984();
      swift_dynamicCast();
      a2 = sub_230469CB8(v14);
      v12 = v11;

      if (v12)
      {
LABEL_12:
        v13 = *(a5 + 56);
        v10 = *(*(a5 + 48) + 8 * a2);
        *v8 = *(v13 + 8 * a2);

        return v10;
      }

      __break(1u);
    }

    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2304A6214();
    sub_2304A4984();
    swift_dynamicCast();
    v10 = v14;
    a6(0);
    swift_dynamicCast();
    *v8 = v14;
    return v10;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_230460650(void *a1, int a2, uint64_t a3, char *a4)
{
  v7 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54210, &qword_2304A7570);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&a4[v7] = v8;
  *&a4[OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_delegate + 8] = 0;
  v9 = swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock_descriptors] = MEMORY[0x277D84FA0];
  *&a4[OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection] = a1;
  *&a4[OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_pid] = a2;
  *(v9 + 8) = &off_28451BB90;
  swift_unknownObjectWeakAssign();
  v12.receiver = a4;
  v12.super_class = type metadata accessor for Client();
  v10 = a1;
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_230460740()
{
  v1 = v0;
  v88 = *MEMORY[0x277D85DE8];
  v83 = sub_2304A3F34();
  v2 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v4 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2304A3FC4();
  v78 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v79 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v82 = &v75 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v75 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v75 - v13;
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  v86 = 0;
  v17 = [v16 URLForDirectory:5 inDomain:8 appropriateForURL:0 create:0 error:&v86];

  v18 = v86;
  if (v17)
  {
    v77 = v15;
    sub_2304A3F74();
    v19 = v18;

    v86 = 0x746163696C706572;
    v87 = 0xEB0000000064726FLL;
    v20 = *MEMORY[0x277CC91D8];
    v81 = v5;
    v84 = v12;
    v76 = *(v2 + 104);
    v21 = v4;
    v22 = v4;
    v23 = v83;
    v76(v22, v20, v83);
    v75 = sub_2304645C4();
    v24 = v82;
    v80 = v14;
    sub_2304A3FB4();
    v25 = *(v2 + 8);
    v25(v21, v23);
    v86 = 0xD000000000000011;
    v87 = 0x80000002304A8320;
    v76(v21, v20, v23);
    v26 = v84;
    v27 = v81;
    sub_2304A3FB4();
    v25(v21, v23);
    v28 = v27;
    v29 = v78;
    v82 = *(v78 + 8);
    v83 = v78 + 8;
    (v82)(v24, v28);
    if (qword_281499E38 != -1)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v30 = sub_2304A5B74();
      v31 = __swift_project_value_buffer(v30, qword_28149B008);
      v32 = v79;
      (*(v29 + 2))(v79, v26, v28);
      v78 = v31;
      v33 = sub_2304A5B54();
      v34 = sub_2304A5E94();
      v35 = v26;
      if (os_log_type_enabled(v33, v34))
      {
        v36 = v28;
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v86 = v38;
        *v37 = 136380675;
        sub_230464B8C(&qword_28149AC60, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v39 = sub_2304A62D4();
        v40 = v32;
        v42 = v41;
        (v82)(v40, v36);
        v43 = sub_23046A5C8(v39, v42, &v86);

        *(v37 + 4) = v43;
        _os_log_impl(&dword_230430000, v33, v34, "Loading predefined client descriptors from %{private}s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        MEMORY[0x23191A000](v38, -1, -1);
        v44 = v37;
        v28 = v36;
        MEMORY[0x23191A000](v44, -1, -1);
      }

      else
      {

        (v82)(v32, v28);
      }

      v46 = v80;
      v47 = [v77 defaultManager];
      sub_2304A3F94();
      v48 = sub_2304A5D14();

      v86 = 0;
      v49 = [v47 contentsOfDirectoryAtPath:v48 error:&v86];

      v29 = v86;
      if (!v49)
      {
        v63 = v86;
        sub_2304A3F24();

        swift_willThrow();
        v64 = v82;
        (v82)(v35, v28);
        v64(v46, v28);
        return;
      }

      v50 = sub_2304A5DC4();
      v51 = v29;

      v26 = *(v50 + 16);
      if (v26)
      {
        v52 = 0;
        v53 = (v50 + 40);
        v77 = (v26 - 1);
        v54 = MEMORY[0x277D84F90];
        v79 = (v50 + 40);
        do
        {
          v55 = &v53[16 * v52];
          v29 = v52;
          while (1)
          {
            if (v29 >= *(v50 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            v28 = *(v55 - 1);
            v56 = *v55;
            v52 = v29 + 1;

            if (sub_2304A5DA4())
            {
              break;
            }

            v55 += 16;
            ++v29;
            if (v26 == v52)
            {
              goto LABEL_23;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86 = v54;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_23045FA3C(0, v54[2] + 1, 1);
            v54 = v86;
          }

          v59 = v54[2];
          v58 = v54[3];
          v60 = v59 + 1;
          if (v59 >= v58 >> 1)
          {
            v62 = v59 + 1;
            v76 = v59;
            sub_23045FA3C((v58 > 1), v59 + 1, 1);
            v60 = v62;
            v59 = v76;
            v54 = v86;
          }

          v54[2] = v60;
          v61 = &v54[2 * v59];
          v61[4] = v28;
          v61[5] = v56;
          v53 = v79;
        }

        while (v77 != v29);
      }

      else
      {
        v54 = MEMORY[0x277D84F90];
      }

LABEL_23:

      sub_2304A3EF4();
      swift_allocObject();
      v65 = sub_2304A3EE4();
      v85 = MEMORY[0x277D84F98];
      v26 = v54[2];
      if (!v26)
      {
        break;
      }

      v66 = 0;
      v28 = v54 + 5;
      while (v66 < v54[2])
      {
        v68 = *(v28 - 1);
        v67 = *v28;

        v29 = MEMORY[0x2319199F0](v69);
        sub_23045234C(v84, v68, v67, v65, &v85);
        if (v1)
        {
          objc_autoreleasePoolPop(v29);
          __break(1u);
          return;
        }

        v1 = 0;

        ++v66;
        objc_autoreleasePoolPop(v29);
        v28 += 2;
        if (v26 == v66)
        {
          goto LABEL_28;
        }
      }

LABEL_32:
      __break(1u);
LABEL_33:
      swift_once();
    }

LABEL_28:

    v70 = sub_2304A5B54();
    v71 = sub_2304A5E94();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 134283521;
      swift_beginAccess();
      *(v72 + 4) = *(v85 + 16);
      _os_log_impl(&dword_230430000, v70, v71, "Loaded %{private}ld predefined descriptors", v72, 0xCu);
      MEMORY[0x23191A000](v72, -1, -1);
    }

    v73 = v81;
    v74 = v82;
    (v82)(v84, v81);
    v74(v80, v73);
    swift_beginAccess();
  }

  else
  {
    v45 = v86;
    sub_2304A3F24();

    swift_willThrow();
  }
}

unint64_t sub_230461054(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54190, &qword_2304A7548);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54198, &qword_2304A7550);
    v7 = sub_2304A62A4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_230464B24(v9, v5, &qword_27DB54190, &qword_2304A7548);
      v11 = *v5;
      v12 = v5[1];
      result = sub_230469C40(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_2304A5294();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_230461240(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16) && !*(a2 + 16))
  {
    return 1;
  }

  v3 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
  v4 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v4);

  os_unfair_lock_lock(v3 + 4);
  sub_2304618BC(&v7);
  os_unfair_lock_unlock(v3 + 4);
  v5 = v7;

  return v5;
}

void sub_230461334(uint64_t a1)
{
  v2 = sub_2304A4B14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2304A4AB4();
  v8 = v6;
  if (v7 == 0xD000000000000011 && 0x80000002304A7280 == v6 || (sub_2304A62F4() & 1) != 0)
  {

    sub_230437458(a1);
    return;
  }

  if (v7 == 0x7463617265746E69 && v8 == 0xEB000000006E6F69 || (sub_2304A62F4() & 1) != 0 || v7 == 0x7265766F63736964 && v8 == 0xE900000000000079 || (sub_2304A62F4() & 1) != 0 || v7 == 7037793 && v8 == 0xE300000000000000 || (sub_2304A62F4() & 1) != 0 || v7 == 0x73656E656C617473 && v8 == 0xEA00000000007373)
  {

LABEL_19:

    sub_230437DF0(a1);
    return;
  }

  v9 = sub_2304A62F4();

  if (v9)
  {
    goto LABEL_19;
  }

  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v10 = sub_2304A5B74();
  __swift_project_value_buffer(v10, qword_28149B008);
  (*(v3 + 16))(v5, a1, v2);
  v11 = sub_2304A5B54();
  v12 = sub_2304A5E74();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446210;
    v15 = sub_2304A4AB4();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v18 = sub_23046A5C8(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_230430000, v11, v12, "Unexpected message type: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x23191A000](v14, -1, -1);
    MEMORY[0x23191A000](v13, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2304617C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_230461854(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t *sub_2304618F4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = 0;
  v20 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);

    if (sub_2304A4954() == a4 && v15 == a5)
    {

LABEL_18:
      *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_23045F7B0(v20, a2, v21, a3);
      }
    }

    else
    {
      v17 = sub_2304A62F4();

      if (v17)
      {
        goto LABEL_18;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_23045F7B0(v20, a2, v21, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_230461A94(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  v12 = swift_bridgeObjectRetain_n();
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v13 = sub_23045DF34(v15, v10, a1, a2, a3);
      MEMORY[0x23191A000](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      return v13;
    }
  }

  MEMORY[0x28223BE20](v12);
  bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);

  v13 = sub_2304618F4((v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0)), v10, a1, a2, a3);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v13;
}

uint64_t sub_230461C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x277D84F98];
    v28 = MEMORY[0x277D84F98];
    v6 = sub_2304A61A4();

    v7 = sub_2304A6234();
    if (v7)
    {
      v8 = v7;
      sub_2304A4984();
      v9 = v8;
      while (1)
      {
        v26 = v9;
        swift_dynamicCast();
        type metadata accessor for ClientDataSource(0);
        swift_dynamicCast();
        if (!v27)
        {
          goto LABEL_26;
        }

        if (sub_2304A4954() == a2 && v16 == a3)
        {
          break;
        }

        v18 = sub_2304A62F4();

        if (v18)
        {
          goto LABEL_16;
        }

LABEL_7:
        v9 = sub_2304A6234();
        if (!v9)
        {
          goto LABEL_26;
        }
      }

LABEL_16:
      v19 = v5[2];
      if (v5[3] <= v19)
      {
        sub_23046E490(v19 + 1, 1);
      }

      v5 = v28;
      sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
      result = sub_2304A5CF4();
      v11 = v28 + 64;
      v12 = -1 << *(v28 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v28 + 64 + 8 * (v13 >> 6))) != 0)
      {
        v15 = __clz(__rbit64((-1 << v13) & ~*(v28 + 64 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        do
        {
          if (++v14 == v21 && (v20 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
        }

        while (v23 == -1);
        v15 = __clz(__rbit64(~v23)) + (v14 << 6);
      }

      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v28 + 48) + 8 * v15) = v27;
      *(*(v28 + 56) + 8 * v15) = v26;
      ++*(v28 + 16);
      goto LABEL_7;
    }

LABEL_26:
    sub_230433B3C(v6 | 0x8000000000000000);
  }

  else
  {

    v5 = sub_230461A94(a1, a2, a3, v25);
  }

  return v5;
}