void sub_224C0F5C4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v43 - v4;
  v6 = sub_224DA9878();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v43 - v16;
  v18 = sub_224DAB8C8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v1 + 24);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v46 = v23;
  LOBYTE(v23) = sub_224DAB8F8();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_224DAA948();

  sub_224C0FB84(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_224A3311C(v5, &qword_27D6F32B0, &qword_224DB3EA0);
    if (qword_2813516C8 == -1)
    {
LABEL_4:
      v24 = sub_224DAB258();
      __swift_project_value_buffer(v24, qword_281365120);
      v25 = sub_224DAB228();
      v26 = sub_224DAF2A8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_224A2F000, v25, v26, "Not starting pending replication timer", v27, 2u);
        MEMORY[0x22AA5EED0](v27, -1, -1);
      }

      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  (*(v7 + 32))(v17, v5, v6);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v28 = sub_224DAB258();
  __swift_project_value_buffer(v28, qword_281365120);
  v29 = *(v7 + 16);
  v45 = v17;
  v29(v14, v17, v6);
  v30 = sub_224DAB228();
  v31 = sub_224DAF2A8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v43 = v32;
    v44 = swift_slowAlloc();
    v48 = v44;
    *v32 = 136446210;
    sub_224C15EDC(&qword_27D6F32B8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v33 = sub_224DAFD28();
    v35 = v34;
    v36 = *(v7 + 8);
    v36(v14, v6);
    v37 = sub_224A33F74(v33, v35, &v48);

    v38 = v43;
    *(v43 + 1) = v37;
    v39 = v38;
    _os_log_impl(&dword_224A2F000, v30, v31, "Pending replication timer will fire at %{public}s", v38, 0xCu);
    v40 = v44;
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x22AA5EED0](v40, -1, -1);
    MEMORY[0x22AA5EED0](v39, -1, -1);
  }

  else
  {

    v36 = *(v7 + 8);
    v36(v14, v6);
  }

  v41 = v47;
  sub_224DA9808();
  v42 = v45;
  sub_224DA9758();
  v36(v41, v6);

  sub_224DAA938();

  v36(v42, v6);
}

void sub_224C0FB84(char *a1@<X8>)
{
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5288, &unk_224DBB480);
  v4 = MEMORY[0x28223BE20](v81, v3);
  v80 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v79 = &v70 - v7;
  v8 = sub_224DA9878();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v78 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v77 = &v70 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v70 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v70 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v73 = &v70 - v25;
  v26 = sub_224DAB8C8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = (&v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v1 + 24);
  *v30 = v31;
  (*(v27 + 104))(v30, *MEMORY[0x277D85200], v26);
  v32 = v31;
  LOBYTE(v31) = sub_224DAB8F8();
  (*(v27 + 8))(v30, v26);
  if (v31)
  {
    v70 = v19;
    v85 = v8;
    v72 = a1;
    swift_beginAccess();
    v33 = *(v1 + 264);

    sub_224DA9748();
    v34 = *(v33 + 64);
    v74 = v33 + 64;
    v35 = 1 << *(v33 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & v34;
    v38 = (v35 + 63) >> 6;
    v75 = (v9 + 16);
    v71 = v9;
    v82 = (v9 + 32);
    v83 = (v9 + 8);
    v84 = v33;

    v39 = 0;
    v76 = v23;
    if (v37)
    {
      while (1)
      {
        v40 = v39;
LABEL_10:
        v41 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
        v42 = v41 | (v40 << 6);
        v43 = v84;
        v44 = *(v84 + 48);
        v45 = sub_224DAAF48();
        v46 = *(v45 - 8);
        v86 = v45;
        v87 = v46;
        v47 = v79;
        (*(v46 + 16))(v79, v44 + *(v46 + 72) * v42, v45);
        v48 = *(v43 + 56);
        v49 = (type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord(0) - 8);
        v50 = v48 + *(*v49 + 72) * v42;
        v51 = v81;
        sub_224C15D88(v50, v47 + *(v81 + 48), type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
        v52 = v80;
        sub_224A3796C(v47, v80, &qword_27D6F5288, &unk_224DBB480);
        v53 = v52 + *(v51 + 48);
        v54 = v53 + v49[8];
        v55 = v78;
        v56 = v85;
        (*v75)(v78, v54, v85);
        sub_224C15E54(v53, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
        sub_224C15EDC(&qword_281351A40, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v23 = v76;
        v57 = sub_224DAEDB8();
        sub_224A3311C(v47, &qword_27D6F5288, &unk_224DBB480);
        if (v57)
        {
          v58 = v23;
        }

        else
        {
          v58 = v55;
        }

        if (v57)
        {
          v59 = v55;
        }

        else
        {
          v59 = v23;
        }

        (*v83)(v58, v56);
        v60 = *v82;
        v61 = v77;
        (*v82)(v77, v59, v56);
        (*(v87 + 8))(v52, v86);
        v60(v23, v61, v56);
        if (!v37)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v40 >= v38)
      {
        break;
      }

      v37 = *(v74 + 8 * v40);
      ++v39;
      if (v37)
      {
        v39 = v40;
        goto LABEL_10;
      }
    }

    v62 = *v82;
    v63 = v73;
    v64 = v85;
    (*v82)(v73, v23, v85);

    v65 = v70;
    sub_224DA9748();
    v66 = sub_224DA97E8();
    v67 = *v83;
    (*v83)(v65, v64);
    if (v66)
    {
      v67(v63, v64);
      v68 = 1;
      v69 = v72;
    }

    else
    {
      v69 = v72;
      v62(v72, v63, v64);
      v68 = 0;
    }

    (*(v71 + 56))(v69, v68, 1, v64);
  }

  else
  {
LABEL_23:
    __break(1u);
  }
}

uint64_t sub_224C10208(uint64_t a1)
{
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 24);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_224DAB8F8();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v10 = sub_224C10328();
    sub_224C1091C(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_224C10328()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C08, &qword_224DB48D0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v51 = &v46 - v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5288, &unk_224DBB480);
  v5 = MEMORY[0x28223BE20](v59, v4);
  v58 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v57 = &v46 - v8;
  v48 = sub_224DA9878();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DA9808();
  swift_beginAccess();
  v12 = *(v0 + 264);
  v46 = v11;
  v61 = v11;

  v13 = sub_224BA0958(sub_224C15EBC, v60, v12);

  v14 = v13 + 64;
  v15 = 1 << v13[32];
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 8);
  v18 = (v15 + 63) >> 6;

  v20 = 0;
  v49 = v13 + 64;
  v52 = v0;
  v50 = v13;
  while (v17)
  {
LABEL_11:
    v27 = __clz(__rbit64(v17)) | (v20 << 6);
    v28 = *(v13 + 6);
    v29 = sub_224DAAF48();
    v56 = *(v29 - 8);
    v54 = *(v56 + 72);
    v30 = v57;
    v31 = v29;
    (*(v56 + 16))(v57, v28 + v54 * v27);
    v32 = *(v13 + 7);
    v33 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord(0);
    v34 = *(v33 - 8);
    v53 = *(v34 + 72);
    sub_224C15D88(v32 + v53 * v27, v30 + *(v59 + 48), type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
    v35 = v58;
    sub_224A3796C(v30, v58, &qword_27D6F5288, &unk_224DBB480);
    v36 = v52;
    swift_beginAccess();
    v37 = sub_224B0B3CC(v35);
    v55 = v33;
    if (v38)
    {
      v39 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v36 + 264);
      v63 = v41;
      *(v36 + 264) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_224B28668();
        v41 = v63;
      }

      v23 = v56;
      (*(v56 + 8))(*(v41 + 48) + v39 * v54, v31);
      v22 = v51;
      sub_224C15DF0(*(v41 + 56) + v39 * v53, v51);
      sub_224B1D340(v39, v41);
      *(v36 + 264) = v41;

      v21 = 0;
    }

    else
    {
      v21 = 1;
      v22 = v51;
      v23 = v56;
    }

    v14 = v49;
    v17 &= v17 - 1;
    (*(v34 + 56))(v22, v21, 1, v55);
    v24 = *(v59 + 48);
    sub_224A3311C(v22, &qword_27D6F3C08, &qword_224DB48D0);
    v25 = v58;
    (*(v23 + 8))(v58, v31);
    swift_endAccess();
    sub_224A3311C(v57, &qword_27D6F5288, &unk_224DBB480);
    result = sub_224C15E54(v25 + v24, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
    v13 = v50;
  }

  while (1)
  {
    v26 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v26 >= v18)
    {

      v42 = *(v13 + 2);
      if (!v42)
      {
        goto LABEL_18;
      }

      v43 = sub_224B0CD20(*(v13 + 2), 0);
      v44 = *(type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord(0) - 8);
      v45 = sub_224B2F9EC(&v62, v43 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), v42, v13);
      sub_224A3B7E4(v62);
      if (v45 != v42)
      {
        __break(1u);
LABEL_18:

        v43 = MEMORY[0x277D84F90];
      }

      (*(v47 + 8))(v46, v48);
      return v43;
    }

    v17 = *&v14[8 * v26];
    ++v20;
    if (v17)
    {
      v20 = v26;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224C1091C(uint64_t a1)
{
  v2 = v1;
  v87 = sub_224DA9908();
  v4 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v5);
  v86 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB0B8();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v105 = &v81 - v14;
  v15 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord(0);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v82 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v81 - v21;
  result = MEMORY[0x28223BE20](v20, v23);
  v28 = &v81 - v26;
  v29 = *(a1 + 16);
  if (v29)
  {
    v104 = 0;
    result = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v93 = (v8 + 104);
    v91 = *(v25 + 72);
    v92 = (v8 + 16);
    v103 = (v8 + 8);
    v84 = (v4 + 8);
    v90 = *MEMORY[0x277D46820];
    v89 = *MEMORY[0x277D46828];
    *&v27 = 136446466;
    v83 = v27;
    v88 = xmmword_224DB3100;
    v85 = v7;
    v94 = v12;
    v95 = v2;
    v97 = &v81 - v26;
    v98 = v22;
    v96 = v15;
    do
    {
      v101 = result;
      v102 = v29;
      sub_224C15D88(result, v28, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
      v30 = *(v15 + 20);

      LOBYTE(v30) = sub_224DA4EBC(&v28[v30], 0);

      if (v30)
      {
        v31 = v89;
      }

      else
      {
        v31 = v90;
      }

      (*v93)(v105, v31, v7);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v32 = sub_224DAB258();
      v33 = __swift_project_value_buffer(v32, qword_281365120);
      sub_224C15D88(v28, v22, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
      (*v92)(v12, v105, v7);
      v99 = v33;
      v34 = sub_224DAB228();
      v35 = sub_224DAF2A8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v106[0] = v37;
        *v36 = v83;
        v38 = v86;
        sub_224DAD988();
        sub_224C15EDC(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v39 = v2;
        v40 = v87;
        v41 = sub_224DAFD28();
        v42 = v12;
        v44 = v43;
        v45 = v38;
        v7 = v85;
        v46 = v40;
        v2 = v39;
        (*v84)(v45, v46);
        sub_224C15E54(v98, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
        v47 = sub_224A33F74(v41, v44, v106);

        *(v36 + 4) = v47;
        *(v36 + 12) = 2082;
        sub_224C15EDC(&qword_27D6F5280, MEMORY[0x277D46830], MEMORY[0x277D46838]);
        v48 = sub_224DAFD28();
        v50 = v49;
        v51 = v42;
        v22 = v98;
        v100 = *v103;
        v100(v51, v7);
        v52 = sub_224A33F74(v48, v50, v106);

        *(v36 + 14) = v52;
        _os_log_impl(&dword_224A2F000, v34, v35, "Adding pended activity archive for remote subscription: %{public}s with schedule: %{public}s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v37, -1, -1);
        MEMORY[0x22AA5EED0](v36, -1, -1);
      }

      else
      {

        v100 = *v103;
        v100(v12, v7);
        sub_224C15E54(v22, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
      }

      __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3550, &qword_224DB3B00);
      v53 = *(sub_224DAB018() - 8);
      v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = v88;
      v28 = v97;
      (*(v53 + 16))(v55 + v54);
      v56 = v96;
      v57 = v104;
      sub_224DAABD8();
      v58 = v57;
      v15 = v56;
      if (v58)
      {

        v59 = v82;
        sub_224C15D88(v28, v82, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
        v60 = v58;
        v61 = sub_224DAB228();
        v62 = sub_224DAF2A8();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v104 = v58;
          v64 = v63;
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v106[0] = v66;
          *v64 = v83;
          v67 = v86;
          sub_224DAD988();
          sub_224C15EDC(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v68 = v87;
          v69 = sub_224DAFD28();
          v71 = v70;
          v72 = v67;
          v7 = v85;
          (*v84)(v72, v68);
          v99 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord;
          sub_224C15E54(v59, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
          v73 = v69;
          v22 = v98;
          v74 = sub_224A33F74(v73, v71, v106);

          *(v64 + 4) = v74;
          *(v64 + 12) = 2114;
          v75 = v104;
          v76 = v104;
          v77 = _swift_stdlib_bridgeErrorToNSError();
          *(v64 + 14) = v77;
          *v65 = v77;
          v15 = v96;
          _os_log_impl(&dword_224A2F000, v61, v62, "Cannot replicate pended activity archive for remote subscription: %{public}s: %{public}@", v64, 0x16u);
          sub_224A3311C(v65, &unk_27D6F69F0, &unk_224DB3900);
          v78 = v65;
          v28 = v97;
          MEMORY[0x22AA5EED0](v78, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v66);
          MEMORY[0x22AA5EED0](v66, -1, -1);
          MEMORY[0x22AA5EED0](v64, -1, -1);

          v100(v105, v7);
          v79 = v28;
          v80 = v99;
        }

        else
        {

          sub_224C15E54(v59, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
          v100(v105, v7);
          v79 = v28;
          v80 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord;
        }

        sub_224C15E54(v79, v80);
        v104 = 0;
      }

      else
      {
        v104 = 0;

        v100(v105, v7);
        sub_224C15E54(v28, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
      }

      v12 = v94;
      v2 = v95;
      result = v101 + v91;
      v29 = v102 - 1;
    }

    while (v102 != 1);
  }

  return result;
}

BOOL sub_224C11344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[0] = a2;
  v23[1] = a3;
  v4 = sub_224DA9878();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5288, &unk_224DBB480);
  v10 = v9 - 8;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v23 - v16;
  v18 = sub_224DAAF48();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, a1, v18);
  sub_224C15D88(v23[0], &v17[*(v10 + 56)], type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
  sub_224A3796C(v17, v14, &qword_27D6F5288, &unk_224DBB480);
  v20 = &v14[*(v10 + 56)];
  v21 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord(0);
  (*(v5 + 16))(v8, v20 + *(v21 + 24), v4);
  sub_224C15E54(v20, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
  sub_224C15EDC(&qword_281351A40, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  LOBYTE(v20) = sub_224DAEDB8();
  (*(v5 + 8))(v8, v4);
  sub_224A3311C(v17, &qword_27D6F5288, &unk_224DBB480);
  (*(v19 + 8))(v14, v18);
  return (v20 & 1) == 0;
}

uint64_t sub_224C11604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_224DAAF48();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_224DAAB18();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v7 = sub_224DAAA98();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[17] = v9;
  v4[18] = *(v9 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C11858, 0, 0);
}

uint64_t sub_224C11858()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  __swift_project_boxed_opaque_existential_1((v0[3] + 32), *(v0[3] + 56));
  sub_224DAAB98();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  v0[20] = 0;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_224C11994;
  v5 = v0[17];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_224C11994()
{

  return MEMORY[0x2822009F8](sub_224C11A90, 0, 0);
}

uint64_t sub_224C11A90()
{
  v45 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[12];
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v5 = *(v3 + 72);
      v6 = v0[20];
      v43 = v5;
      do
      {
        sub_224C15D88(v4, v0[13], MEMORY[0x277D46518]);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_224C15E54(v0[13], MEMORY[0x277D46518]);
        }

        else
        {
          v7 = v0[10];
          (*(v0[8] + 32))(v7, v0[13], v0[7]);
          sub_224C12078(v7);
          if (v6)
          {
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v8 = v0[9];
            v9 = v0[10];
            v10 = v0[7];
            v11 = v0[8];
            v12 = sub_224DAB258();
            __swift_project_value_buffer(v12, qword_281365120);
            (*(v11 + 16))(v8, v9, v10);
            v13 = v6;
            v14 = sub_224DAB228();
            v15 = sub_224DAF288();

            v16 = os_log_type_enabled(v14, v15);
            v18 = v0[9];
            v17 = v0[10];
            v19 = v0[7];
            v20 = v0[8];
            if (v16)
            {
              v38 = v0[7];
              v21 = v0[6];
              v37 = v0[5];
              v35 = v0[4];
              v42 = v0[10];
              v22 = swift_slowAlloc();
              v40 = swift_slowAlloc();
              v41 = swift_slowAlloc();
              v44 = v41;
              *v22 = 136446466;
              v39 = v14;
              sub_224DAAAF8();
              sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
              v23 = sub_224DAFD28();
              v36 = v15;
              v25 = v24;
              (*(v37 + 8))(v21, v35);
              v26 = *(v20 + 8);
              v26(v18, v38);
              v27 = sub_224A33F74(v23, v25, &v44);

              *(v22 + 4) = v27;
              *(v22 + 12) = 2114;
              v28 = v6;
              v29 = _swift_stdlib_bridgeErrorToNSError();
              *(v22 + 14) = v29;
              *v40 = v29;
              _os_log_impl(&dword_224A2F000, v39, v36, "Failed to handle archive update for %{public}s: %{public}@", v22, 0x16u);
              sub_224A3311C(v40, &unk_27D6F69F0, &unk_224DB3900);
              MEMORY[0x22AA5EED0](v40, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v41);
              MEMORY[0x22AA5EED0](v41, -1, -1);
              MEMORY[0x22AA5EED0](v22, -1, -1);

              v26(v42, v38);
            }

            else
            {

              v30 = *(v20 + 8);
              v30(v18, v19);
              v30(v17, v19);
            }

            v6 = 0;
            v5 = v43;
          }

          else
          {
            (*(v0[8] + 8))(v0[10], v0[7]);
          }
        }

        v4 += v5;
        --v2;
      }

      while (v2);
    }

    else
    {
      v6 = v0[20];
    }

    v0[20] = v6;
    v33 = swift_task_alloc();
    v0[21] = v33;
    *v33 = v0;
    v33[1] = sub_224C11994;
    v34 = v0[17];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v34);
  }

  else
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_224C11FB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACED1C;

  return sub_224C11604(a1, v4, v5, v6);
}

void sub_224C12078(NSObject *a1)
{
  v424 = sub_224DACB98();
  v423 = *(v424 - 8);
  MEMORY[0x28223BE20](v424, v2);
  v425 = &v416 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v434 = sub_224DAAFC8();
  v433 = *(v434 - 8);
  MEMORY[0x28223BE20](v434, v4);
  v432 = &v416 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B30, &unk_224DB9BF0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v442 = &v416 - v8;
  v443 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B38, &unk_224DB9C00);
  v441 = *(v443 - 8);
  v10 = MEMORY[0x28223BE20](v443, v9);
  v438 = &v416 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v440 = &v416 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v430 = &v416 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v450 = &v416 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v454 = &v416 - v22;
  v458 = sub_224DA9688();
  v457 = *(v458 - 8);
  v24 = MEMORY[0x28223BE20](v458, v23);
  v431 = &v416 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v453 = &v416 - v27;
  v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v465 = *(v466 - 8);
  v29 = MEMORY[0x28223BE20](v466, v28);
  v427 = &v416 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v429 = &v416 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v456 = &v416 - v36;
  MEMORY[0x28223BE20](v35, v37);
  v462 = &v416 - v38;
  v464 = sub_224DAC918();
  v463 = *(v464 - 8);
  v40 = MEMORY[0x28223BE20](v464, v39);
  v468 = &v416 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v42);
  v469 = &v416 - v43;
  v470 = sub_224DABCC8();
  v471 = *(v470 - 8);
  v45 = MEMORY[0x28223BE20](v470, v44);
  v422 = &v416 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v467 = &v416 - v49;
  MEMORY[0x28223BE20](v48, v50);
  v480 = &v416 - v51;
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v477 = *(v478 - 8);
  v53 = MEMORY[0x28223BE20](v478, v52);
  v461 = &v416 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v55);
  v486 = &v416 - v56;
  v476 = sub_224DAE7A8();
  v475 = *(v476 - 8);
  v58 = MEMORY[0x28223BE20](v476, v57);
  v460 = &v416 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58, v60);
  v485 = &v416 - v61;
  v474 = sub_224DAEB68();
  v473 = *(v474 - 8);
  v63 = MEMORY[0x28223BE20](v474, v62);
  v459 = &v416 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63, v65);
  v484 = &v416 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  MEMORY[0x28223BE20](v67 - 8, v68);
  v482 = &v416 - v69;
  v70 = sub_224DAD9C8();
  v487 = *(v70 - 8);
  v488 = v70;
  MEMORY[0x28223BE20](v70, v71);
  v479 = &v416 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_224DA9908();
  v504 = *(v73 - 8);
  v75 = MEMORY[0x28223BE20](v73, v74);
  v426 = &v416 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x28223BE20](v75, v77);
  v445 = &v416 - v79;
  v81 = MEMORY[0x28223BE20](v78, v80);
  v446 = &v416 - v82;
  MEMORY[0x28223BE20](v81, v83);
  v489 = &v416 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v87 = MEMORY[0x28223BE20](v85 - 8, v86);
  v455 = &v416 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = MEMORY[0x28223BE20](v87, v89);
  v490 = &v416 - v91;
  v93 = MEMORY[0x28223BE20](v90, v92);
  v493 = &v416 - v94;
  MEMORY[0x28223BE20](v93, v95);
  v494 = (&v416 - v96);
  v97 = sub_224DAAB18();
  v501 = *(v97 - 8);
  v502 = v97;
  v99 = MEMORY[0x28223BE20](v97, v98);
  v491 = &v416 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = MEMORY[0x28223BE20](v99, v101);
  v481 = &v416 - v103;
  v105 = MEMORY[0x28223BE20](v102, v104);
  v472 = &v416 - v106;
  v108 = MEMORY[0x28223BE20](v105, v107);
  v451 = &v416 - v109;
  v111 = MEMORY[0x28223BE20](v108, v110);
  v449 = &v416 - v112;
  v114 = MEMORY[0x28223BE20](v111, v113);
  v437 = &v416 - v115;
  v117 = MEMORY[0x28223BE20](v114, v116);
  v436 = &v416 - v118;
  v120 = MEMORY[0x28223BE20](v117, v119);
  v435 = &v416 - v121;
  v123 = MEMORY[0x28223BE20](v120, v122);
  v428 = &v416 - v124;
  v126 = MEMORY[0x28223BE20](v123, v125);
  v444 = &v416 - v127;
  v129 = MEMORY[0x28223BE20](v126, v128);
  v439 = &v416 - v130;
  MEMORY[0x28223BE20](v129, v131);
  v133 = &v416 - v132;
  v134 = sub_224DAAF28();
  v136 = MEMORY[0x28223BE20](v134 - 8, v135);
  v492 = (&v416 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = MEMORY[0x28223BE20](v136, v138);
  v141 = &v416 - v140;
  MEMORY[0x28223BE20](v139, v142);
  v144 = &v416 - v143;
  v145 = sub_224DAAF48();
  v146 = *(v145 - 8);
  v148 = MEMORY[0x28223BE20](v145, v147);
  v150 = &v416 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v148, v151);
  v153 = &v416 - v152;
  v503 = a1;
  sub_224DAAAF8();
  sub_224DAAF38();
  v448 = v146;
  v154 = *(v146 + 8);
  v496 = v153;
  v497 = v145;
  v498 = v154;
  v499 = v146 + 8;
  v154(v153, v145);
  v156 = v504 + 7;
  isa = v504[7].isa;
  v495 = v73;
  isa(v141, 1, 1, v73);
  LOBYTE(a1) = MEMORY[0x22AA59280](v144, v141);
  v157 = MEMORY[0x277D46780];
  sub_224C15E54(v141, MEMORY[0x277D46780]);
  sub_224C15E54(v144, v157);
  if ((a1 & 1) == 0)
  {
    v452 = isa;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v158 = sub_224DAB258();
    v159 = __swift_project_value_buffer(v158, qword_281365120);
    v161 = v501;
    v160 = v502;
    v162 = *(v501 + 16);
    v419 = v501 + 16;
    v418 = v162;
    v162(v133, v503, v502);
    v420 = v159;
    v163 = sub_224DAB228();
    v164 = sub_224DAF2A8();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      v416 = v165;
      v447 = swift_slowAlloc();
      v505 = v447;
      *v165 = 136446210;
      v166 = v496;
      sub_224DAAAF8();
      sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
      v167 = v497;
      v168 = sub_224DAFD28();
      v417 = v156;
      v170 = v169;
      v171 = v498;
      v498(v166, v167);
      v421 = *(v501 + 8);
      v421(v133, v502);
      v172 = sub_224A33F74(v168, v170, &v505);
      v156 = v417;
      v173 = v495;

      v174 = v416;
      *(v416 + 1) = v172;
      v175 = v174;
      _os_log_impl(&dword_224A2F000, v163, v164, "Updating activity archive for record ID %{public}s", v174, 0xCu);
      v176 = v447;
      __swift_destroy_boxed_opaque_existential_1(v447);
      MEMORY[0x22AA5EED0](v176, -1, -1);
      MEMORY[0x22AA5EED0](v175, -1, -1);

      v177 = v452;
    }

    else
    {

      v421 = *(v161 + 8);
      v421(v133, v160);
      v167 = v497;
      v171 = v498;
      v177 = v452;
      v173 = v495;
    }

    sub_224DAAAF8();
    v178 = v492;
    sub_224DAAF38();
    v171(v150, v167);
    v179 = v504;
    v180 = 1;
    v447 = v504[6].isa;
    v181 = v504 + 6;
    v182 = (v447)(v178, 1, v173);
    v183 = v493;
    if (v182 != 1)
    {
      (v179[4].isa)(v493, v178, v173);
      v180 = 0;
    }

    v177(v183, v180, 1, v173);
    v184 = v494;
    sub_224A44E4C(v183, v494, &unk_27D6F5630, &unk_224DB34C0);
    v185 = v447;
    v186 = (v447)(v184, 1, v173);
    sub_224A3311C(v184, &unk_27D6F5630, &unk_224DB34C0);
    if (v186 == 1)
    {
      v187 = v491;
      v188 = v502;
      v418(v491, v503, v502);
      v189 = sub_224DAB228();
      v190 = sub_224DAF288();
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        v504 = swift_slowAlloc();
        v505 = v504;
        *v191 = 136446210;
        v192 = v496;
        sub_224DAAAF8();
        sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v193 = v497;
        v194 = sub_224DAFD28();
        v196 = v195;
        v498(v192, v193);
        v421(v187, v188);
        v197 = sub_224A33F74(v194, v196, &v505);

        *(v191 + 4) = v197;
        v198 = "Cannot receive archive as no relationship exists for record ID %{public}s";
LABEL_15:
        _os_log_impl(&dword_224A2F000, v189, v190, v198, v191, 0xCu);
        v208 = v504;
        __swift_destroy_boxed_opaque_existential_1(v504);
        MEMORY[0x22AA5EED0](v208, -1, -1);
        MEMORY[0x22AA5EED0](v191, -1, -1);

        return;
      }

LABEL_16:

      v421(v187, v188);
      return;
    }

    v199 = v496;
    v200 = v503;
    sub_224DAAAF8();
    sub_224DAAEF8();
    v498(v199, v167);
    v201 = v490;
    sub_224DA9888();

    if ((v185)(v201, 1, v173) == 1)
    {
      sub_224A3311C(v201, &unk_27D6F5630, &unk_224DB34C0);
      v187 = v481;
      v188 = v502;
      v418(v481, v200, v502);
      v189 = sub_224DAB228();
      v190 = sub_224DAF288();
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        v504 = swift_slowAlloc();
        v505 = v504;
        *v191 = 136446210;
        v202 = v496;
        sub_224DAAAF8();
        sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v203 = v497;
        v204 = sub_224DAFD28();
        v206 = v205;
        v498(v202, v203);
        v421(v187, v188);
        v207 = sub_224A33F74(v204, v206, &v505);

        *(v191 + 4) = v207;
        v198 = "Cannot receive archive as subscription ID is malformed for record ID %{public}s";
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    v209 = v173;
    v210 = v504 + 4;
    v211 = v489;
    v494 = v504[4].isa;
    (v494)(v489, v201, v209);
    v212 = v483;
    v213 = v483[20];
    v214 = v483[21];
    __swift_project_boxed_opaque_existential_1(v483 + 17, v213);
    v215 = v482;
    sub_224D2F410(v211, v213, v214, v482);
    v216 = v487;
    v217 = v488;
    if ((*(v487 + 48))(v215, 1, v488) == 1)
    {
      sub_224A3311C(v215, &qword_27D6F3BD8, &qword_224DB9C20);
      v218 = v472;
      v219 = v502;
      v418(v472, v503, v502);
      v220 = sub_224DAB228();
      v221 = sub_224DAF288();
      if (!os_log_type_enabled(v220, v221))
      {

        v421(v218, v219);
        (v504[1].isa)(v211, v495);
        return;
      }

      v222 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v505 = v223;
      *v222 = 136446210;
      v224 = v496;
      sub_224DAAAF8();
      sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
      v225 = v497;
      v226 = sub_224DAFD28();
      v228 = v227;
      v498(v224, v225);
      v421(v218, v502);
      v229 = sub_224A33F74(v226, v228, &v505);

      *(v222 + 4) = v229;
      _os_log_impl(&dword_224A2F000, v220, v221, "Cannot receive archive as no subscription exists for record ID %{public}s", v222, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v223);
      MEMORY[0x22AA5EED0](v223, -1, -1);
      MEMORY[0x22AA5EED0](v222, -1, -1);

      goto LABEL_25;
    }

    v417 = v156;
    v230 = v479;
    (*(v216 + 32))(v479, v215, v217);
    __swift_project_boxed_opaque_existential_1(v212 + 11, v212[14]);
    v231 = sub_224DAD938();
    v232 = v216;
    v234 = v233;
    sub_224DAD9B8();
    sub_224DAD9A8();
    sub_224DAD958();
    v235 = v500;
    sub_224BD7040(v231, v234, v480);
    if (v235)
    {

      (*(v477 + 8))(v486, v478);
      (*(v475 + 8))(v485, v476);
      (*(v473 + 8))(v484, v474);
      (*(v232 + 8))(v230, v488);
      (v504[1].isa)(v489, v495);
      return;
    }

    v492 = v210;
    v493 = v181;

    (*(v473 + 16))(v459, v484, v474);
    (*(v475 + 16))(v460, v485, v476);
    (*(v477 + 16))(v461, v486, v478);
    v236 = v469;
    sub_224DAC908();
    (*(v471 + 16))(v467, v480, v470);
    v237 = v463;
    v238 = v236;
    v239 = v464;
    (*(v463 + 16))(v468, v238, v464);
    v240 = MEMORY[0x277CF9880];
    v500 = sub_224C15EDC(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
    sub_224C15EDC(&unk_281350EB0, v240, MEMORY[0x277CF9888]);
    v241 = MEMORY[0x277CF9A98];
    sub_224C15EDC(&qword_281350D60, MEMORY[0x277CF9A98], MEMORY[0x277CF9AB0]);
    v242 = v241;
    v243 = v239;
    sub_224C15EDC(&qword_281350D70, v242, MEMORY[0x277CF9AA0]);
    v244 = v462;
    sub_224DAC848();
    sub_224BD746C(v244, 0);
    v246 = v245;
    v247 = v244;
    v248 = v465 + 8;
    v491 = *(v465 + 8);
    (v491)(v247, v466);
    (*(v237 + 8))(v469, v243);
    v250 = v471 + 8;
    v249 = *(v471 + 8);
    v249(v480, v470);
    (*(v477 + 8))(v486, v478);
    (*(v475 + 8))(v485, v476);
    (*(v473 + 8))(v484, v474);
    if (!v246)
    {
      v253 = v451;
      v254 = v502;
      v418(v451, v503, v502);
      v255 = sub_224DAB228();
      v256 = sub_224DAF288();
      if (os_log_type_enabled(v255, v256))
      {
        v257 = swift_slowAlloc();
        v500 = v257;
        v503 = swift_slowAlloc();
        v505 = v503;
        *v257 = 136446210;
        v258 = v496;
        sub_224DAAAF8();
        sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v259 = v497;
        v260 = sub_224DAFD28();
        v262 = v261;
        v498(v258, v259);
        v421(v253, v254);
        v263 = sub_224A33F74(v260, v262, &v505);

        v264 = v500;
        *(v500 + 4) = v263;
        v265 = v264;
        _os_log_impl(&dword_224A2F000, v255, v256, "Cannot receive archive as no entry exists for record ID %{public}s", v264, 0xCu);
        v266 = v503;
        __swift_destroy_boxed_opaque_existential_1(v503);
        MEMORY[0x22AA5EED0](v266, -1, -1);
        MEMORY[0x22AA5EED0](v265, -1, -1);
      }

      else
      {

        v421(v253, v254);
      }

      goto LABEL_24;
    }

    v486 = v249;
    v471 = v250;
    __swift_project_boxed_opaque_existential_1(v212 + 28, v212[31]);
    v251 = v456;
    v490 = v246;
    sub_224DABF98();
    v252 = v455;
    sub_224DAD9D8();
    v465 = v248;
    v267 = 0;
    (v491)(v251, v466);
    v268 = v495;
    if ((v447)(v252, 1, v495) == 1)
    {
      v269 = v458;
      v270 = v454;
      sub_224A3311C(v252, &unk_27D6F5630, &unk_224DB34C0);
      v271 = v457;
    }

    else
    {
      v295 = v252;
      v296 = v446;
      (v494)(v446, v295, v268);
      v297 = v445;
      v298 = v503;
      sub_224DAAB08();
      v299 = sub_224DA98D8();
      v300 = v504[1].isa;
      v300(v297, v268);
      v500 = 0;
      v301 = v268;
      if (v299)
      {
        v302 = v439;
        v303 = v502;
        v304 = v418;
        v418(v439, v298, v502);
        v304(v444, v298, v303);
        v305 = sub_224DAB228();
        v306 = sub_224DAF2A8();
        if (os_log_type_enabled(v305, v306))
        {
          v307 = swift_slowAlloc();
          v504 = swift_slowAlloc();
          v505 = v504;
          *v307 = 136446466;
          v503 = v305;
          v308 = v445;
          LODWORD(v500) = v306;
          sub_224DAAB08();
          sub_224C15EDC(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v309 = sub_224DAFD28();
          v310 = v301;
          v312 = v311;
          v300(v308, v310);
          v501 += 8;
          v421(v302, v303);
          v313 = sub_224A33F74(v309, v312, &v505);

          v494 = v307;
          *(v307 + 4) = v313;
          *(v307 + 12) = 2082;
          v314 = v444;
          v315 = v496;
          sub_224DAAAF8();
          sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
          v316 = v497;
          v317 = sub_224DAFD28();
          v319 = v318;
          v498(v315, v316);
          v421(v314, v303);
          v320 = sub_224A33F74(v317, v319, &v505);

          v321 = v494;
          *(v494 + 14) = v320;
          v322 = v503;
          _os_log_impl(&dword_224A2F000, v503, v500, "Archive with version %{public}s already exists for record ID %{public}s", v321, 0x16u);
          v323 = v504;
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v323, -1, -1);
          MEMORY[0x22AA5EED0](v321, -1, -1);

          v324 = v495;
          v300(v446, v495);
          (*(v487 + 8))(v479, v488);
          v300(v489, v324);
        }

        else
        {

          v362 = v421;
          v421(v444, v303);
          v362(v302, v303);
          v300(v446, v301);
          (*(v487 + 8))(v479, v488);
          v300(v489, v301);
        }

        return;
      }

      v300(v296, v268);
      v271 = v457;
      v269 = v458;
      v270 = v454;
      v267 = v500;
    }

    sub_224AEFFB4(v270);
    v272 = *(v271 + 48);
    if (v272(v270, 1, v269) == 1)
    {
      sub_224A3311C(v270, &unk_27D6F4680, &unk_224DB4610);
      v273 = v449;
      v274 = v502;
      v418(v449, v503, v502);
      v275 = sub_224DAB228();
      v276 = sub_224DAF288();
      v277 = os_log_type_enabled(v275, v276);
      v278 = v479;
      if (!v277)
      {

        v421(v273, v274);
        (*(v487 + 8))(v278, v488);
        goto LABEL_25;
      }

      v279 = swift_slowAlloc();
      v280 = swift_slowAlloc();
      v500 = v267;
      v503 = v280;
      v505 = v280;
      *v279 = 136446210;
      v281 = v496;
      sub_224DAAAF8();
      sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
      v282 = v497;
      v283 = sub_224DAFD28();
      v284 = v273;
      v286 = v285;
      v498(v281, v282);
      v421(v284, v274);
      v287 = sub_224A33F74(v283, v286, &v505);

      *(v279 + 4) = v287;
      _os_log_impl(&dword_224A2F000, v275, v276, "Cannot receive archive as temporary URL does not exist for record ID %{public}s", v279, 0xCu);
      v288 = v503;
      __swift_destroy_boxed_opaque_existential_1(v503);
      MEMORY[0x22AA5EED0](v288, -1, -1);
      MEMORY[0x22AA5EED0](v279, -1, -1);

LABEL_24:
      (*(v487 + 8))(v479, v488);
LABEL_25:
      (v504[1].isa)(v489, v495);
      return;
    }

    v485 = (v271 + 48);
    v492 = v272;
    v500 = v267;
    v289 = v212;
    v290 = v453;
    v493 = *(v271 + 32);
    (v493)(v453, v270, v269);
    v291 = v289[7];
    v494 = v289[10];
    __swift_project_boxed_opaque_existential_1(v289 + 4, v291);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
    *(swift_allocObject() + 16) = xmmword_224DB3100;
    sub_224DAAAF8();
    v292 = v450;
    (*(v271 + 16))(v450, v290, v269);
    (*(v271 + 56))(v292, 0, 1, v269);
    v293 = v500;
    v294 = sub_224DAAC08();
    v500 = v293;
    if (v293)
    {

      sub_224A3311C(v292, &unk_27D6F4680, &unk_224DB4610);
      (*(v271 + 8))(v290, v269);
      goto LABEL_24;
    }

    v325 = v493;
    v326 = v294;
    sub_224A3311C(v292, &unk_27D6F4680, &unk_224DB4610);

    v327 = v442;
    sub_224D5D3A0(v326, v442);

    v328 = v443;
    if ((*(v441 + 48))(v327, 1, v443) == 1)
    {
      sub_224A3311C(v327, &qword_27D6F4B30, &unk_224DB9BF0);
      v329 = v437;
      v330 = v502;
      v418(v437, v503, v502);
      v331 = sub_224DAB228();
      v332 = sub_224DAF288();
      v333 = os_log_type_enabled(v331, v332);
      v334 = v453;
      if (!v333)
      {

        v421(v329, v330);
        (*(v457 + 8))(v334, v458);
        goto LABEL_24;
      }

      v335 = swift_slowAlloc();
      v503 = swift_slowAlloc();
      v505 = v503;
      *v335 = 136446210;
      v336 = v496;
      sub_224DAAAF8();
      sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
      v337 = v497;
      v338 = sub_224DAFD28();
      v340 = v339;
      v498(v336, v337);
      v421(v329, v330);
      v341 = sub_224A33F74(v338, v340, &v505);

      *(v335 + 4) = v341;
      _os_log_impl(&dword_224A2F000, v331, v332, "Cannot receive archive as no record exists for record ID %{public}s", v335, 0xCu);
      v342 = v503;
      __swift_destroy_boxed_opaque_existential_1(v503);
      MEMORY[0x22AA5EED0](v342, -1, -1);
      MEMORY[0x22AA5EED0](v335, -1, -1);

LABEL_62:
      (*(v457 + 8))(v453, v458);
      goto LABEL_24;
    }

    v343 = v440;
    sub_224A44E4C(v327, v440, &qword_27D6F4B38, &unk_224DB9C00);
    v344 = v453;
    v345 = v503;
    if (qword_27D6F2CD0 != -1)
    {
      swift_once();
    }

    v346 = sub_224DAAB88();
    __swift_project_value_buffer(v346, qword_27D6F5248);
    v347 = sub_224DAAEB8();
    if (v348)
    {
      v349 = v436;
      v350 = v502;
      v418(v436, v345, v502);
      v351 = sub_224DAB228();
      v352 = sub_224DAF288();
      if (os_log_type_enabled(v351, v352))
      {
        v353 = swift_slowAlloc();
        v503 = swift_slowAlloc();
        v505 = v503;
        *v353 = 136446210;
        v354 = v496;
        sub_224DAAAF8();
        sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v355 = v497;
        v356 = sub_224DAFD28();
        v358 = v357;
        v498(v354, v355);
        v421(v349, v350);
        v359 = sub_224A33F74(v356, v358, &v505);

        *(v353 + 4) = v359;
        _os_log_impl(&dword_224A2F000, v351, v352, "Cannot receive archive as we have no compatible protocol versions for record ID %{public}s", v353, 0xCu);
        v360 = v503;
        __swift_destroy_boxed_opaque_existential_1(v503);
        MEMORY[0x22AA5EED0](v360, -1, -1);
        v361 = v353;
LABEL_60:
        MEMORY[0x22AA5EED0](v361, -1, -1);

LABEL_61:
        sub_224A3311C(v440, &qword_27D6F4B38, &unk_224DB9C00);
        goto LABEL_62;
      }

      v421(v349, v350);
      v398 = v343;
      goto LABEL_65;
    }

    v363 = v347;
    v364 = v343;
    v365 = v438;
    sub_224A3796C(v364, v438, &qword_27D6F4B38, &unk_224DB9C00);
    v366 = *(v328 + 48);
    v367 = sub_224DAAFD8();
    v368 = sub_224DAB018();
    (*(*(v368 - 8) + 8))(v365 + v366, v368);
    v369 = v497;
    if (!*(v367 + 16) || (v370 = sub_224B31510(v363), (v371 & 1) == 0))
    {

      v384 = v498;
      v498(v438, v369);
      v385 = v435;
      v386 = v502;
      v418(v435, v345, v502);
      v351 = sub_224DAB228();
      v387 = sub_224DAF288();
      if (os_log_type_enabled(v351, v387))
      {
        v388 = swift_slowAlloc();
        v494 = v388;
        v503 = swift_slowAlloc();
        v505 = v503;
        *v388 = 136446210;
        v389 = v496;
        sub_224DAAAF8();
        sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v390 = sub_224DAFD28();
        v391 = v385;
        v393 = v392;
        v384(v389, v369);
        v421(v391, v386);
        v394 = sub_224A33F74(v390, v393, &v505);

        v395 = v494;
        *(v494 + 1) = v394;
        v396 = v395;
        _os_log_impl(&dword_224A2F000, v351, v387, "Cannot receive archive as no compatible version exists for record ID %{public}s", v395, 0xCu);
        v397 = v503;
        __swift_destroy_boxed_opaque_existential_1(v503);
        MEMORY[0x22AA5EED0](v397, -1, -1);
        v361 = v396;
        goto LABEL_60;
      }

      v421(v385, v386);
      v398 = v440;
LABEL_65:
      sub_224A3311C(v398, &qword_27D6F4B38, &unk_224DB9C00);
      (*(v457 + 8))(v344, v458);
      goto LABEL_24;
    }

    (*(v433 + 16))(v432, *(v367 + 56) + *(v433 + 72) * v370, v434);

    v498(v438, v369);
    v372 = v430;
    sub_224DAAF98();
    if ((v492)(v372, 1, v458) == 1)
    {
      sub_224A3311C(v372, &unk_27D6F4680, &unk_224DB4610);
      v418(v428, v503, v502);
      v373 = sub_224DAB228();
      v374 = sub_224DAF288();
      if (os_log_type_enabled(v373, v374))
      {
        v375 = swift_slowAlloc();
        v376 = swift_slowAlloc();
        v505 = v376;
        *v375 = 136446210;
        v377 = v496;
        v378 = v428;
        sub_224DAAAF8();
        sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v379 = v497;
        v380 = sub_224DAFD28();
        v382 = v381;
        v498(v377, v379);
        v421(v378, v502);
        v383 = sub_224A33F74(v380, v382, &v505);

        *(v375 + 4) = v383;
        _os_log_impl(&dword_224A2F000, v373, v374, "Cannot receive archive as no source URL exists for record ID %{public}s", v375, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v376);
        MEMORY[0x22AA5EED0](v376, -1, -1);
        MEMORY[0x22AA5EED0](v375, -1, -1);
      }

      else
      {

        v421(v428, v502);
      }

      (*(v433 + 8))(v432, v434);
      goto LABEL_61;
    }

    (v325)(v431, v372, v458);
    __swift_project_boxed_opaque_existential_1(v483 + 28, v483[31]);
    sub_224DABF98();
    v399 = v500;
    sub_224DAD438();
    if (v399)
    {

      (v491)(v429, v466);
      v400 = *(v457 + 8);
      v401 = v458;
      v400(v431, v458);
      (*(v433 + 8))(v432, v434);
      sub_224A3311C(v440, &qword_27D6F4B38, &unk_224DB9C00);
      v400(v453, v401);
      (*(v487 + 8))(v479, v488);
      (v504[1].isa)(v489, v495);
    }

    else
    {
      (v491)(v429, v466);
      __swift_project_boxed_opaque_existential_1(v483 + 28, v483[31]);
      sub_224DABF98();
      sub_224DAAB08();
      sub_224DAD9E8();
      v402 = v504[1].isa;
      v402(v426, v495);
      (v491)(v427, v466);
      v403 = __swift_project_boxed_opaque_existential_1(v483 + 11, v483[14]);
      v404 = sub_224DAD938();
      v406 = v405;
      (*(v423 + 104))(v425, *MEMORY[0x277CF9B60], v424);
      v407 = *v403;
      sub_224BD7040(v404, v406, v422);
      v410 = MEMORY[0x28223BE20](v408, v409);
      v411 = v422;
      *(&v416 - 4) = v407;
      *(&v416 - 3) = v411;
      *(&v416 - 2) = v425;
      LOBYTE(v505) = 1;
      MEMORY[0x28223BE20](v410, v412);
      *(&v416 - 4) = &v505;
      *(&v416 - 3) = sub_224B7A900;
      *(&v416 - 2) = v413;

      sub_224DAC128();

      if (v505)
      {
        __break(1u);
      }

      else
      {

        v414 = *(v457 + 8);
        v415 = v458;
        v414(v431, v458);
        (*(v433 + 8))(v432, v434);
        sub_224A3311C(v440, &qword_27D6F4B38, &unk_224DB9C00);
        v414(v453, v415);
        (*(v487 + 8))(v479, v488);
        v402(v489, v495);
        (v486)(v422, v470);
        (*(v423 + 8))(v425, v424);
      }
    }
  }
}

uint64_t sub_224C15AC4()
{
  v0 = sub_224DA9498();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48B0, &qword_224DB8210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v6 = *MEMORY[0x277CBE7C0];
  *(inited + 32) = *MEMORY[0x277CBE7C0];
  v7 = v6;
  sub_224D5823C(inited);
  swift_setDeallocating();
  sub_224C15E54(inited + 32, type metadata accessor for URLResourceKey);
  sub_224DA95C8();

  sub_224DA9478();
  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_224C15C8C()
{
  result = qword_27D6F5268;
  if (!qword_27D6F5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5268);
  }

  return result;
}

unint64_t sub_224C15CE0()
{
  result = qword_27D6F5270;
  if (!qword_27D6F5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5270);
  }

  return result;
}

unint64_t sub_224C15D34()
{
  result = qword_27D6F5278;
  if (!qword_27D6F5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5278);
  }

  return result;
}

uint64_t sub_224C15D88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224C15DF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C15E54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224C15EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_224C15F48()
{
  result = qword_27D6F5290;
  if (!qword_27D6F5290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5290);
  }

  return result;
}

unint64_t sub_224C15F9C()
{
  result = qword_27D6F52A0;
  if (!qword_27D6F52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F52A0);
  }

  return result;
}

unint64_t sub_224C16004()
{
  result = qword_27D6F52A8;
  if (!qword_27D6F52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F52A8);
  }

  return result;
}

unint64_t sub_224C1605C()
{
  result = qword_27D6F52B0;
  if (!qword_27D6F52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F52B0);
  }

  return result;
}

uint64_t sub_224C160B0()
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34A0, &unk_224DB3A20);
  v2 = MEMORY[0x28223BE20](v48, v1);
  v47 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v46 = &v40 - v6;
  MEMORY[0x28223BE20](v5, v7);
  v45 = &v40 - v8;
  v9 = *(v0 + 40);
  v10 = *(v9 + 16);
  if (!v10)
  {
    return 0;
  }

  v51 = MEMORY[0x277D84F90];
  sub_224DAF9E8();
  v11 = v9 + 64;
  result = sub_224DAF798();
  v13 = result;
  v14 = 0;
  v15 = *(v9 + 36);
  v41 = v9 + 72;
  v42 = v15;
  v43 = v9 + 64;
  v44 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v9 + 32))
  {
    v17 = v13 >> 6;
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_22;
    }

    if (v15 != *(v9 + 36))
    {
      goto LABEL_23;
    }

    v49 = v14;
    v50 = 1 << v13;
    v18 = *(v9 + 48);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v20 = *(v19 - 8);
    v15 = v9;
    v21 = v45;
    (*(v20 + 16))(v45, v18 + *(v20 + 72) * v13, v19);
    v22 = *(*(v15 + 56) + 8 * v13);
    v23 = v46;
    (*(v20 + 32))(v46, v21, v19);
    v24 = v47;
    v25 = v48;
    *(v23 + *(v48 + 48)) = v22;
    sub_224A3796C(v23, v24, &qword_27D6F34A0, &unk_224DB3A20);
    v26 = *(v24 + *(v25 + 48));
    v27 = *(v26 + *(*v26 + 104));

    v28 = v27;

    v29 = [v28 metricsSpecification];

    sub_224A3311C(v23, &qword_27D6F34A0, &unk_224DB3A20);
    v30 = v24;
    v9 = v15;
    (*(v20 + 8))(v30, v19);
    sub_224DAF9B8();
    sub_224DAF9F8();
    sub_224DAFA08();
    result = sub_224DAF9C8();
    v16 = 1 << *(v15 + 32);
    if (v13 >= v16)
    {
      goto LABEL_24;
    }

    v11 = v43;
    v31 = v44;
    v32 = *(v43 + 8 * v17);
    if ((v32 & v50) == 0)
    {
      goto LABEL_25;
    }

    v33 = *(v15 + 36);
    LODWORD(v15) = v42;
    if (v42 != v33)
    {
      goto LABEL_26;
    }

    v34 = v32 & (-2 << (v13 & 0x3F));
    if (v34)
    {
      v16 = __clz(__rbit64(v34)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v35 = v17 << 6;
      v36 = v17 + 1;
      v37 = (v41 + 8 * v17);
      while (v36 < (v16 + 63) >> 6)
      {
        v39 = *v37++;
        v38 = v39;
        v35 += 64;
        ++v36;
        if (v39)
        {
          result = sub_224A3E204(v13, v42, 0);
          v16 = __clz(__rbit64(v38)) + v35;
          goto LABEL_4;
        }
      }

      result = sub_224A3E204(v13, v42, 0);
    }

LABEL_4:
    v14 = v49 + 1;
    v13 = v16;
    if (v49 + 1 == v31)
    {
      return v51;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_224C164EC()
{
  v0 = type metadata accessor for HostDescriptorPredicate(0);
  __swift_allocate_value_buffer(v0, qword_281365218);
  v1 = __swift_project_value_buffer(v0, qword_281365218);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  *(v1 + v0[5]) = 3;
  *(v1 + v0[6]) = 3;
  v3 = v0[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = v0[8];
  v6 = sub_224DABE18();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = v0[9];
  v8 = sub_224DAC268();
  result = (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v10 = v1 + v0[10];
  *v10 = 0;
  *(v10 + 8) = 1;
  return result;
}

void sub_224C16688(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_224DAFAF8();
      type metadata accessor for EmptyKey();
      swift_dynamicCast();
      sub_224DABF48();
      swift_dynamicCast();
      *a1 = v10;
      return;
    }

    goto LABEL_17;
  }

  if (a4)
  {
    if (sub_224DAFAA8() != *(a5 + 36))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    sub_224DAFAB8();
    type metadata accessor for EmptyKey();
    swift_dynamicCast();
    a2 = sub_224B304F8();
    v9 = v8;

    if (v9)
    {
LABEL_12:
      *a1 = *(*(a5 + 56) + 8 * a2);

      return;
    }

    __break(1u);
  }

  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    goto LABEL_14;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(a5 + 36) == a3)
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_224C1683C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = *(a5 + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v8 - 8) + 16))(v6, v7 + *(*(v8 - 8) + 72) * a2, v8);
}

uint64_t sub_224C16918(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
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
  v11 = sub_224DAAF48();
  (*(*(v11 - 8) + 16))(v9, v10 + *(*(v11 - 8) + 72) * a3, v11);
  v12 = *(a6 + 56);
  v13 = sub_224DAB018();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v16 = v12 + *(v14 + 72) * a3;

  return v15(a2, v16, v13);
}

void sub_224C16A2C(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_224DAFAF8();
      sub_224DAF538();
      swift_dynamicCast();
      type metadata accessor for ExtensionInfo(0);
      swift_dynamicCast();
      *a1 = v11;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
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
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_224DAFAA8() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_224DAFAB8();
  sub_224DAF538();
  swift_dynamicCast();
  a2 = sub_224A3E7EC(v11);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  *a1 = *(*(a5 + 56) + 8 * a2);
  v10;
}

void sub_224C16BE4(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_224DAFAF8();
      sub_224DAF538();
      swift_dynamicCast();
      sub_224DAE9F8();
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
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
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_224DAFAA8() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_224DAFAB8();
  sub_224DAF538();
  swift_dynamicCast();
  a2 = sub_224A3E7EC(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

unint64_t sub_224C16D98()
{
  result = qword_281351828;
  if (!qword_281351828)
  {
    sub_224DAA428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351828);
  }

  return result;
}

void sub_224C16DF0(uint64_t a1)
{
  sub_224C16F84(319, &qword_281351988, &qword_27D6F30E0, &unk_224DB2AD0);
  if (v1 <= 0x3F)
  {
    sub_224C1702C(319, &qword_281359058, &type metadata for HostActivationScope);
    if (v2 <= 0x3F)
    {
      sub_224C1702C(319, &qword_28135C2E8, &type metadata for HostLocality);
      if (v3 <= 0x3F)
      {
        sub_224C16F84(319, &qword_2813518B8, &unk_27D6F3920, &qword_224DB35B0);
        if (v4 <= 0x3F)
        {
          sub_224C16FD8(319, &qword_281350E68, MEMORY[0x277CF98E0]);
          if (v5 <= 0x3F)
          {
            sub_224C16FD8(319, &qword_281350E28, MEMORY[0x277CF9978]);
            if (v6 <= 0x3F)
            {
              sub_224C1702C(319, &qword_281350B50, MEMORY[0x277D839F8]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_224C16F84(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_224DAF728();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_224C16FD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_224DAF728();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_224C1702C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_224DAF728();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_224C170A0()
{
  v1 = type metadata accessor for WorkScheduleRequest(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_224DAF938();

  strcpy(v10, "identifier: ");
  BYTE5(v10[1]) = 0;
  HIWORD(v10[1]) = -5120;
  v9[1] = *v0;
  v5 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v5);

  MEMORY[0x22AA5D210](0x736575716572203BLL, 0xEB00000000203A74);
  v6 = type metadata accessor for SimpleWorkScheduler.Work(0);
  sub_224C17A48(v0 + *(v6 + 20), v4, type metadata accessor for WorkScheduleRequest);
  v7 = sub_224DAEE28();
  MEMORY[0x22AA5D210](v7);

  return v10[0];
}

void sub_224C17234(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B30, &unk_224DBB840);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v21 - v12;
  os_unfair_lock_assert_owner(*(*(a1 + 16) + 16));
  v14 = *(a1 + 32);
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 32) = v15;
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v15;
    v18 = type metadata accessor for SimpleWorkScheduler.Work(0);
    sub_224C17A48(a2, a5 + v18[5], type metadata accessor for WorkScheduleRequest);
    *a5 = v15;
    v19 = (a5 + v18[6]);
    *v19 = a3;
    v19[1] = a4;
    v20 = (a5 + v18[7]);
    *v20 = sub_224C17B10;
    v20[1] = v17;
    sub_224C17A48(a5, v13, type metadata accessor for SimpleWorkScheduler.Work);
    (*(*(v18 - 1) + 56))(v13, 0, 1, v18);
    swift_beginAccess();

    sub_224B09120(v13, v15);
    swift_endAccess();
  }
}

void sub_224C1743C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B30, &unk_224DBB840);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15[-v5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 16);
    v9 = *(v8 + 16);

    os_unfair_lock_lock(v9);
    v10 = type metadata accessor for SimpleWorkScheduler.Work(0);
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    swift_beginAccess();
    sub_224B09120(v6, a2);
    swift_endAccess();
    os_unfair_lock_unlock(*(v8 + 16));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
    sub_224A8CEE8(&qword_281350EF0, MEMORY[0x277CBCE18]);
    sub_224DAB398();
  }

  else
  {
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v11 = sub_224DAB258();
    __swift_project_value_buffer(v11, qword_281364E20);
    v12 = sub_224DAB228();
    v13 = sub_224DAF298();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_224A2F000, v12, v13, "Work scheduler unexpectedly deallocated", v14, 2u);
      MEMORY[0x22AA5EED0](v14, -1, -1);
    }
  }
}

void sub_224C17684()
{
  v0 = sub_224DA9A08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_224DA99E8();
  v6 = sub_224DA99D8();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  qword_27D6F52C8 = v5;
}

uint64_t sub_224C17790()
{

  return swift_deallocClassInstance();
}

unint64_t sub_224C177FC(uint64_t a1)
{
  result = type metadata accessor for WorkScheduleRequest(319);
  if (v2 <= 0x3F)
  {
    result = sub_224BC8B04();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_224C17890(uint64_t a1)
{
  result = sub_224DA9878();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_224C17914()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A8CEE8(&qword_281350EE0, MEMORY[0x277CBCE20]);
  return sub_224DAB3A8();
}

uint64_t sub_224C1798C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleWorkScheduler.Work(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_224C179F0()
{
  result = qword_281351A40;
  if (!qword_281351A40)
  {
    sub_224DA9878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351A40);
  }

  return result;
}

uint64_t sub_224C17A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224C17AB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224C17B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleWorkScheduler.Work(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_224C17B7C(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v322 = a3;
  v324 = sub_224DAB258();
  *&v323 = *(v324 - 8);
  MEMORY[0x28223BE20](v324, v7);
  v329 = &v286 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224AF21C0();
  v9 = sub_224B8336C(a2);
  v10 = sub_224D42214(0, v9);
  v288 = a4;
  if (v10 || sub_224D42214(1u, v9))
  {
    v11 = a1[3];
    v12 = a1[6];
    v13 = a1[9];
    v14 = __swift_project_boxed_opaque_existential_1(a1, v11);
    *&v331[24] = v11;
    *&v331[32] = v12;
    *&v331[40] = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v331);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v14, v11);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v16 = v324;
    v17 = __swift_project_value_buffer(v324, qword_281365120);
    v18 = v323;
    (*(v323 + 16))(v329, v17, v16);
    sub_224A3796C(a1, v333, &unk_27D6F55D0, &qword_224DBBC20);
    v19 = swift_allocObject();
    memcpy((v19 + 16), v333, 0x348uLL);
    *(v19 + 856) = a2;
    sub_224A3796C(a1, v332, &unk_27D6F55D0, &qword_224DBBC20);
    v20 = swift_allocObject();
    memcpy((v20 + 16), v332, 0x348uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5680, &qword_224DBBCB0);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5688, &qword_224DBBCB8);
    swift_allocObject();

    *(v21 + 24) = sub_224DAB358();
    *(v21 + qword_281365300) = MEMORY[0x277D84FA0];
    *(v21 + qword_2813652D8) = 0;
    *(v21 + 32) = 0x80;
    sub_224AB1DE0(v331, (v21 + 40));
    (*(v18 + 32))(v21 + qword_2813652E0, v329, v16);
    v22 = (v21 + qword_2813652F8);
    *v22 = sub_224C4DE54;
    v22[1] = v19;
    v23 = (v21 + qword_2813652E8);
    *v23 = sub_224AEC7AC;
    v23[1] = 0;
    v24 = (v21 + qword_281365308);
    *v24 = sub_224C4DE74;
    v24[1] = v20;
    v290 = v21;
    v25 = (v21 + qword_2813652F0);
    *v25 = sub_224AF25F8;
    v25[1] = 0;
  }

  else
  {
    v290 = 0;
  }

  v26 = sub_224D42214(0, v9);
  v330 = a1;
  *&v318 = v9;
  if (v26 || sub_224D42214(1u, v9))
  {
    v28 = a1[25];
    v27 = a1[26];
    v29 = a1;
    v327 = a1[27];
    v328 = v27;
    v30 = a1[3];
    v31 = a1[6];
    v32 = a1[9];
    v33 = __swift_project_boxed_opaque_existential_1(a1, v30);
    *&v331[24] = v30;
    *&v331[32] = v31;
    *&v331[40] = v32;
    v34 = __swift_allocate_boxed_opaque_existential_1(v331);
    (*(*(v30 - 8) + 16))(v34, v33, v30);
    v35 = qword_2813516C8;
    swift_unknownObjectRetain_n();
    if (v35 != -1)
    {
      swift_once();
    }

    v36 = v324;
    v37 = __swift_project_value_buffer(v324, qword_281365120);
    v38 = v323;
    v39 = v329;
    (*(v323 + 16))(v329, v37, v36);
    sub_224A3796C(v29, v333, &unk_27D6F55D0, &qword_224DBBC20);
    v40 = swift_allocObject();
    memcpy((v40 + 16), v333, 0x348uLL);
    sub_224A3796C(v29, v332, &unk_27D6F55D0, &qword_224DBBC20);
    v41 = swift_allocObject();
    memcpy(v41 + 2, v332, 0x348uLL);
    v41[107] = v28;
    v42 = v327;
    v41[108] = v328;
    v41[109] = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5670, &qword_224DBBCA8);
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5678, &unk_224DBD7C0);
    swift_allocObject();
    *(v43 + 24) = sub_224DAB358();
    *(v43 + qword_281365300) = MEMORY[0x277D84FA0];
    *(v43 + qword_2813652D8) = 0;
    *(v43 + 32) = -127;
    sub_224AB1DE0(v331, (v43 + 40));
    (*(v38 + 32))(v43 + qword_2813652E0, v39, v36);
    v44 = (v43 + qword_2813652F8);
    *v44 = sub_224C4DCEC;
    v44[1] = v40;
    v45 = (v43 + qword_2813652E8);
    *v45 = sub_224AEC7AC;
    v45[1] = 0;
    v46 = (v43 + qword_281365308);
    *v46 = sub_224C4DD08;
    v46[1] = v41;
    v47 = (v43 + qword_2813652F0);
    *v47 = sub_224AF3524;
    v47[1] = 0;
  }

  else
  {
    v43 = 0;
    v28 = 0;
  }

  v48 = sub_224D42214(0, v318);
  v317 = a2;
  v287 = v28;
  v289 = v43;
  if (v48)
  {
    v49 = v330;
    v50 = v330[3];
    v51 = v330[6];
    v52 = v330[8];
    v53 = v330[9];
    v54 = __swift_project_boxed_opaque_existential_1(v330, v50);
    v55 = v49[76];
    v56 = v49[77];
    v57 = __swift_project_boxed_opaque_existential_1(v49 + 73, v55);
    *&v333[24] = v55;
    *&v333[32] = *(v56 + 8);
    v58 = __swift_allocate_boxed_opaque_existential_1(v333);
    v59 = v57;
    a2 = v317;
    (*(*(v55 - 8) + 16))(v58, v59, v55);
    v327 = sub_224AF359C(0, v333, v54, v50, v51, v52, v53);
    __swift_destroy_boxed_opaque_existential_1(v333);
  }

  else
  {
    v327 = 0;
  }

  v60 = v318;
  if (sub_224D42214(1u, v318))
  {
    v61 = v330;
    sub_224C4DC78(v330, v333);
    v62 = *&v333[24];
    v63 = *&v333[48];
    v64 = *&v333[64];
    v65 = *&v333[72];
    v66 = __swift_project_boxed_opaque_existential_1(v333, *&v333[24]);
    sub_224A3796C((v61 + 100), v332, &qword_27D6F55A8, &qword_224DBBC08);
    v67 = *&v332[24];
    if (!*&v332[24])
    {
      goto LABEL_114;
    }

    v68 = *&v332[32];
    v69 = __swift_project_boxed_opaque_existential_1(v332, *&v332[24]);
    *&v331[24] = v67;
    *&v331[32] = *(v68 + 8);
    v70 = __swift_allocate_boxed_opaque_existential_1(v331);
    (*(*(v67 - 8) + 16))(v70, v69, v67);
    v321 = sub_224AF3A10(2, v331, v66, v62, v63, v64, v65);
    __swift_destroy_boxed_opaque_existential_1(v331);
    __swift_destroy_boxed_opaque_existential_1(v332);
    __swift_destroy_boxed_opaque_existential_1(v333);
    v71 = v330;
    a2 = v317;
  }

  else
  {
    v321 = 0;
    v71 = v330;
  }

  if (sub_224D42214(0, v60))
  {
    v72 = v71[3];
    v73 = v71[6];
    v74 = v71[8];
    v75 = v71[9];
    v76 = __swift_project_boxed_opaque_existential_1(v71, v72);
    v325 = sub_224AF359C(1, (v71 + 28), v76, v72, v73, v74, v75);
  }

  else
  {
    v325 = 0;
  }

  if (sub_224D42214(1u, v60))
  {
    sub_224C4DC78(v71, v333);
    v77 = *&v333[24];
    v78 = *&v333[48];
    v79 = *&v333[64];
    v80 = *&v333[72];
    v81 = __swift_project_boxed_opaque_existential_1(v333, *&v333[24]);
    v82 = v71[89];
    if (!v82)
    {
      goto LABEL_115;
    }

    v83 = v81;
    *&v332[24] = type metadata accessor for ControlHostService(0);
    *&v332[32] = sub_224C41198(&qword_28135A010, type metadata accessor for ControlHostService, &unk_224DBD8F4);
    *v332 = v82;

    v319 = sub_224AF3A10(3, v332, v83, v77, v78, v79, v80);
    __swift_destroy_boxed_opaque_existential_1(v332);
    __swift_destroy_boxed_opaque_existential_1(v333);
    v71 = v330;
  }

  else
  {
    v319 = 0;
  }

  if (sub_224D42214(0, v60))
  {
    v328 = type metadata accessor for PlaceholderArchiveReplicator(0);
    v84 = v71[3];
    v326 = v71[6];
    v85 = v71[9];
    v320 = v71[8];
    v86 = __swift_project_boxed_opaque_existential_1(v71, v84);
    v87 = v71[11];
    v88 = sub_224DAA508();

    v89 = sub_224DAA4F8();
    v90 = qword_2813516C8;

    if (v90 != -1)
    {
      swift_once();
    }

    v91 = v324;
    v92 = __swift_project_value_buffer(v324, qword_281365120);
    v93 = v329;
    v94 = (*(v323 + 16))(v329, v92, v91);
    MEMORY[0x28223BE20](v94, v95);
    v97 = &v286 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v98 + 16))(v97, v86, v84);
    *v333 = v89;
    v99 = sub_224DAC9B8();
    v100 = sub_224C41198(&unk_281350D38, MEMORY[0x277CF9B18], MEMORY[0x277CF9A08]);
    v328 = sub_224D94EC8(v97, v87, v333, v93, v328, v84, v88, v99, v326, v320, v85, MEMORY[0x277CFA098], v100);

    v71 = v330;
    a2 = v317;
    v60 = v318;
  }

  else
  {
    v328 = 0;
  }

  if (sub_224D42214(0, v60))
  {
    v101 = v71[3];
    v102 = v71[6];
    v103 = v71[9];
    v104 = __swift_project_boxed_opaque_existential_1(v71, v101);
    v335 = v101;
    v336 = v102;
    v337 = v103;
    v105 = __swift_allocate_boxed_opaque_existential_1(&v334);
    (*(*(v101 - 8) + 16))(v105, v104, v101);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v106 = v324;
    v107 = __swift_project_value_buffer(v324, qword_281365120);
    (*(v323 + 16))(v329, v107, v106);
    sub_224A3796C(v71, v333, &unk_27D6F55D0, &qword_224DBBC20);
    v108 = swift_allocObject();
    memcpy((v108 + 16), v333, 0x348uLL);
    sub_224A3796C(v71, v332, &unk_27D6F55D0, &qword_224DBBC20);
    v109 = swift_allocObject();
    memcpy((v109 + 16), v332, 0x348uLL);
    sub_224A3796C(v71, v331, &unk_27D6F55D0, &qword_224DBBC20);
    v110 = swift_allocObject();
    memcpy((v110 + 16), v331, 0x348uLL);
    sub_224A3796C(v71, v331, &unk_27D6F55D0, &qword_224DBBC20);
    v111 = swift_allocObject();
    memcpy((v111 + 16), v331, 0x348uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5660, &qword_224DBBCA0);
    v112 = swift_allocObject();
    *(v112 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5668, &qword_224DBD770);
    swift_allocObject();
    *(v112 + 24) = sub_224DAB358();
    *(v112 + qword_281365300) = MEMORY[0x277D84FA0];
    *(v112 + qword_2813652D8) = 0;
    *(v112 + 32) = 1;
    sub_224AB1DE0(&v334, (v112 + 40));
    (*(v323 + 32))(v112 + qword_2813652E0, v329, v106);
    v113 = (v112 + qword_2813652F8);
    *v113 = sub_224C4DBF4;
    v113[1] = v108;
    v114 = (v112 + qword_2813652E8);
    *v114 = sub_224C4DC10;
    v114[1] = v109;
    v115 = (v112 + qword_281365308);
    *v115 = sub_224C4DC30;
    v115[1] = v110;
    v326 = v112;
    v116 = (v112 + qword_2813652F0);
    *v116 = sub_224C4DC4C;
    v116[1] = v111;
  }

  else
  {
    v326 = 0;
  }

  if (sub_224D42214(1u, v60))
  {
    v117 = v330;
    v118 = v330[3];
    v119 = v330[6];
    v120 = v330[9];
    v121 = __swift_project_boxed_opaque_existential_1(v330, v118);
    v335 = v118;
    v336 = v119;
    v337 = v120;
    v122 = __swift_allocate_boxed_opaque_existential_1(&v334);
    (*(*(v118 - 8) + 16))(v122, v121, v118);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v123 = v324;
    v124 = __swift_project_value_buffer(v324, qword_281365120);
    v125 = v323;
    (*(v323 + 16))(v329, v124, v123);
    sub_224A3796C(v117, v333, &unk_27D6F55D0, &qword_224DBBC20);
    v126 = swift_allocObject();
    memcpy((v126 + 16), v333, 0x348uLL);
    sub_224A3796C(v117, v332, &unk_27D6F55D0, &qword_224DBBC20);
    v127 = swift_allocObject();
    memcpy((v127 + 16), v332, 0x348uLL);
    sub_224A3796C(v117, v331, &unk_27D6F55D0, &qword_224DBBC20);
    v128 = swift_allocObject();
    memcpy((v128 + 16), v331, 0x348uLL);
    sub_224A3796C(v117, v331, &unk_27D6F55D0, &qword_224DBBC20);
    v129 = swift_allocObject();
    memcpy((v129 + 16), v331, 0x348uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5650, &qword_224DBBC90);
    v130 = swift_allocObject();
    *(v130 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5658, &qword_224DBBC98);
    swift_allocObject();
    *(v130 + 24) = sub_224DAB358();
    *(v130 + qword_281365300) = MEMORY[0x277D84FA0];
    *(v130 + qword_2813652D8) = 0;
    *(v130 + 32) = 3;
    sub_224AB1DE0(&v334, (v130 + 40));
    (*(v125 + 32))(v130 + qword_2813652E0, v329, v123);
    v131 = (v130 + qword_2813652F8);
    *v131 = sub_224C4DB70;
    v131[1] = v126;
    v132 = (v130 + qword_2813652E8);
    *v132 = sub_224C4DB8C;
    v132[1] = v127;
    v133 = (v130 + qword_281365308);
    *v133 = sub_224C4DBAC;
    v133[1] = v128;
    v320 = v130;
    v134 = (v130 + qword_2813652F0);
    *v134 = sub_224C4DBC8;
    v134[1] = v129;
    v60 = v318;
  }

  else
  {
    v320 = 0;
  }

  if (sub_224D42214(0, v60))
  {
    v135 = v330;
    v136 = v330[3];
    v137 = v330[6];
    v138 = v330[9];
    v139 = __swift_project_boxed_opaque_existential_1(v330, v136);
    v335 = v136;
    v336 = v137;
    v337 = v138;
    v140 = __swift_allocate_boxed_opaque_existential_1(&v334);
    (*(*(v136 - 8) + 16))(v140, v139, v136);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v141 = v324;
    v142 = __swift_project_value_buffer(v324, qword_281365120);
    v143 = v323;
    (*(v323 + 16))(v329, v142, v141);
    sub_224A3796C(v135, v333, &unk_27D6F55D0, &qword_224DBBC20);
    v144 = swift_allocObject();
    memcpy((v144 + 16), v333, 0x348uLL);
    sub_224A3796C(v135, v332, &unk_27D6F55D0, &qword_224DBBC20);
    v145 = swift_allocObject();
    memcpy((v145 + 16), v332, 0x348uLL);
    sub_224A3796C(v135, v331, &unk_27D6F55D0, &qword_224DBBC20);
    v146 = swift_allocObject();
    memcpy((v146 + 16), v331, 0x348uLL);
    sub_224A3796C(v135, v331, &unk_27D6F55D0, &qword_224DBBC20);
    v147 = swift_allocObject();
    memcpy((v147 + 16), v331, 0x348uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5660, &qword_224DBBCA0);
    v148 = swift_allocObject();
    *(v148 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5668, &qword_224DBD770);
    swift_allocObject();
    *(v148 + 24) = sub_224DAB358();
    *(v148 + qword_281365300) = MEMORY[0x277D84FA0];
    *(v148 + qword_2813652D8) = 0;
    *(v148 + 32) = 2;
    sub_224AB1DE0(&v334, (v148 + 40));
    (*(v143 + 32))(v148 + qword_2813652E0, v329, v141);
    v149 = (v148 + qword_2813652F8);
    *v149 = sub_224C4DAFC;
    v149[1] = v144;
    v150 = (v148 + qword_2813652E8);
    *v150 = sub_224C4DB18;
    v150[1] = v145;
    v151 = v148;
    v152 = (v148 + qword_281365308);
    *v152 = sub_224C4DB38;
    v152[1] = v146;
    v153 = (v148 + qword_2813652F0);
    *v153 = sub_224C4DB54;
    v153[1] = v147;
    v60 = v318;
  }

  else
  {
    v151 = 0;
  }

  v316 = v151;
  if (sub_224D42214(1u, v60))
  {
    v154 = v330;
    v155 = v330[3];
    v156 = v330[6];
    v157 = v330[9];
    v158 = __swift_project_boxed_opaque_existential_1(v330, v155);
    v335 = v155;
    v336 = v156;
    v337 = v157;
    v159 = __swift_allocate_boxed_opaque_existential_1(&v334);
    (*(*(v155 - 8) + 16))(v159, v158, v155);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v160 = v324;
    v161 = __swift_project_value_buffer(v324, qword_281365120);
    v162 = v323;
    (*(v323 + 16))(v329, v161, v160);
    sub_224A3796C(v154, v333, &unk_27D6F55D0, &qword_224DBBC20);
    v163 = swift_allocObject();
    memcpy((v163 + 16), v333, 0x348uLL);
    sub_224A3796C(v154, v332, &unk_27D6F55D0, &qword_224DBBC20);
    v164 = swift_allocObject();
    memcpy((v164 + 16), v332, 0x348uLL);
    sub_224A3796C(v154, v331, &unk_27D6F55D0, &qword_224DBBC20);
    v165 = swift_allocObject();
    memcpy((v165 + 16), v331, 0x348uLL);
    sub_224A3796C(v154, v331, &unk_27D6F55D0, &qword_224DBBC20);
    v166 = swift_allocObject();
    memcpy((v166 + 16), v331, 0x348uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5650, &qword_224DBBC90);
    v167 = swift_allocObject();
    *(v167 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5658, &qword_224DBBC98);
    swift_allocObject();
    *(v167 + 24) = sub_224DAB358();
    *(v167 + qword_281365300) = MEMORY[0x277D84FA0];
    *(v167 + qword_2813652D8) = 0;
    *(v167 + 32) = 4;
    sub_224AB1DE0(&v334, (v167 + 40));
    (*(v162 + 32))(v167 + qword_2813652E0, v329, v160);
    v168 = (v167 + qword_2813652F8);
    *v168 = sub_224C4D988;
    v168[1] = v163;
    v169 = (v167 + qword_2813652E8);
    *v169 = sub_224C4DAA4;
    v169[1] = v164;
    v170 = (v167 + qword_281365308);
    *v170 = sub_224C4DAC4;
    v170[1] = v165;
    v329 = v167;
    v171 = (v167 + qword_2813652F0);
    *v171 = sub_224C4DAE0;
    v171[1] = v166;
  }

  else
  {
    v329 = 0;
  }

  v345 = sub_224DA0580(MEMORY[0x277D84F90]);
  if (!*(a2 + 16) || (v172 = sub_224B0B6F0(2), (v173 & 1) == 0) || (v174 = *(*(a2 + 56) + 8 * v172)) == 0)
  {

    v192 = v330;
LABEL_64:
    v193 = 0;
    *&v191 = 134349056;
    v286 = v191;
    while (1)
    {
      if (*(a2 + 16))
      {
        v201 = byte_283828018[v193 + 32];
        v202 = sub_224B0B6F0(byte_283828018[v193 + 32]);
        if (v203)
        {
          v204 = *(*(a2 + 56) + 8 * v202);
          if (v204)
          {
            if ((v201 - 2) >= 2)
            {
              if (v201)
              {
                v220 = v192[3];
                *&v318 = v192[4];
                v221 = v192[5];
                v314 = v192[6];
                *&v315 = v221;
                v222 = v192[9];
                v312 = v192[10];
                v313 = v222;
                v223 = __swift_project_boxed_opaque_existential_1(v192, v220);
                v224 = *(v220 - 8);
                MEMORY[0x28223BE20](v223, v223);
                v311 = v225;
                v226 = &v286 - ((v225 + 15) & 0xFFFFFFFFFFFFFFF0);
                v227 = *(v224 + 16);
                (v227)(v226);
                v228 = v192[85];
                if (!v228)
                {
                  goto LABEL_108;
                }

                v310 = v227;
                if (!v192[87])
                {
                  goto LABEL_107;
                }

                v308 = v192[87];
                v309 = v228;
                v229 = v192[89];
                if (!v229)
                {
                  goto LABEL_106;
                }

                v230 = v192[88];
                v306 = v192[86];
                v307 = v230;
                *&v333[24] = type metadata accessor for ControlHostService(0);
                *&v333[32] = sub_224C41198(&qword_28135A010, type metadata accessor for ControlHostService, &unk_224DBD8F4);
                v305 = v229;
                *v333 = v229;
                sub_224A3796C((v192 + 100), v332, &qword_27D6F55A8, &qword_224DBBC08);
                if (!*&v332[24])
                {
                  goto LABEL_105;
                }

                sub_224A3796C((v192 + 90), v331, &qword_27D6F4770, &qword_224DB7690);
                if (!*&v331[24])
                {
                  goto LABEL_104;
                }

                sub_224A3796C((v192 + 95), &v334, &qword_27D6F46C0, &qword_224DB7608);
                if (!v335)
                {
                  goto LABEL_103;
                }

                sub_224A3317C((v192 + 52), &v343);
                if (!v321)
                {
                  goto LABEL_102;
                }

                if (!v320)
                {
                  goto LABEL_101;
                }

                *&v323 = v226;
                if (!v319)
                {
                  goto LABEL_100;
                }

                v303 = v224;
                v304 = &v286;
                if (!v329)
                {
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
LABEL_105:
                  __break(1u);
LABEL_106:
                  __break(1u);
LABEL_107:
                  __break(1u);
LABEL_108:
                  __break(1u);
LABEL_109:
                  __break(1u);
LABEL_110:
                  __break(1u);
LABEL_111:
                  __break(1u);
LABEL_112:
                  __break(1u);
LABEL_113:
                  __break(1u);
LABEL_114:
                  __break(1u);
LABEL_115:
                  __break(1u);
LABEL_116:
                  __break(1u);
                  goto LABEL_117;
                }

                v231 = v220;
                v300 = type metadata accessor for ControlReplicationProvider();
                v232 = __swift_mutable_project_boxed_opaque_existential_1(v332, *&v332[24]);
                v302 = &v286;
                MEMORY[0x28223BE20](v232, v232);
                v299 = &v286 - ((v233 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v234 + 16))();
                v235 = __swift_mutable_project_boxed_opaque_existential_1(&v334, v335);
                v301 = &v286;
                MEMORY[0x28223BE20](v235, v235);
                v297 = &v286 - ((v236 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v237 + 16))();
                v238 = __swift_mutable_project_boxed_opaque_existential_1(&v343, v344);
                v298 = &v286;
                MEMORY[0x28223BE20](v238, v238);
                v295 = &v286 - ((v239 + 15) & 0xFFFFFFFFFFFFFFF0);
                v241 = (*(v240 + 16))();
                v296 = &v286;
                MEMORY[0x28223BE20](v241, v242);
                v311 = &v286 - ((v243 + 15) & 0xFFFFFFFFFFFFFFF0);
                v310();
                v310 = type metadata accessor for LocationService(0);
                v294 = type metadata accessor for PreviewControlConfigurationService();
                v293 = type metadata accessor for LiveControlService(0);
                v291 = sub_224C41198(&unk_281352A48, type metadata accessor for PreviewControlConfigurationService, &unk_224DB2A64);
                v244 = sub_224C41198(&qword_281359B70, type metadata accessor for LiveControlService, &unk_224DBCEA4);
                v292 = v322;
                v245 = v309;
                swift_unknownObjectRetain();
                v246 = v308;
                swift_unknownObjectRetain();

                v247 = v321;

                v248 = v320;

                v249 = v319;

                v285 = v244;
                *(&v283 + 1) = v313;
                *&v283 = v314;
                *(&v281 + 1) = v315;
                *&v281 = v318;
                v251 = v300;
                *(&v280 + 1) = v248;
                *&v280 = v247;
                v252 = sub_224ACEF78(v204, v311, v292, v245, v306, v246, v307, v333, v299, v331, v297, v295, v280, v249, v250, v300, v310, v294, v231, v293, &off_2838352C0, v291, v281, v283, v312, v285);
                (*(v303 + 8))(v323, v231);
                __swift_destroy_boxed_opaque_existential_1(&v343);
                __swift_destroy_boxed_opaque_existential_1(&v334);
                __swift_destroy_boxed_opaque_existential_1(v332);
                *&v333[24] = v251;
                *&v333[32] = sub_224C41198(&qword_281355300, type metadata accessor for ControlReplicationProvider, &unk_224DB349C);
                *v333 = v252;
                sub_224B079FC(v333, 1);
                v192 = v330;
                a2 = v317;
              }

              else
              {
                v315 = *(v192 + 3);
                v205 = v315;
                v323 = *(v192 + 5);
                v318 = *(v192 + 9);
                v206 = __swift_project_boxed_opaque_existential_1(v192, v315);
                *&v333[24] = v315;
                *&v333[40] = v323;
                *&v333[56] = v318;
                v207 = __swift_allocate_boxed_opaque_existential_1(v333);
                (*(*(v205 - 8) + 16))(v207, v206, v205);
                v208 = v192[12];
                v209 = v192[13];
                sub_224A3317C((v192 + 28), &v334);
                sub_224A3317C((v192 + 33), &v343);
                sub_224A3317C((v192 + 73), v342);
                sub_224A3317C((v192 + 38), v341);
                sub_224B44674((v192 + 67), v331);
                sub_224AFC6E0((v192 + 43), v332);
                sub_224A3317C((v192 + 52), v340);
                if (!v328)
                {
                  goto LABEL_113;
                }

                if (!v327)
                {
                  goto LABEL_112;
                }

                v210 = v316;
                if (!v326)
                {
                  goto LABEL_111;
                }

                if (!v325)
                {
                  goto LABEL_110;
                }

                if (!v316)
                {
                  goto LABEL_109;
                }

                v211 = *(v192 + 78);
                v212 = *(v192 + 632);
                v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5648, &qword_224DBBC88);
                v214 = swift_allocObject();
                *(v214 + 104) = MEMORY[0x277D84FA0];
                *(v214 + 496) = 0;
                *(v214 + 24) = v204;
                sub_224AFC6E0(v333, v214 + 32);
                if (v212)
                {
                  v211 = 900.0;
                }

                v215 = qword_2813516C8;

                if (v215 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v324, qword_281365120);
                v216 = sub_224DAB228();
                v217 = sub_224DAF2A8();
                if (os_log_type_enabled(v216, v217))
                {
                  v218 = swift_slowAlloc();
                  *v218 = v286;
                  *(v218 + 4) = v211;
                  _os_log_impl(&dword_224A2F000, v216, v217, "Snapshot expiration time interval set to %{public}f", v218, 0xCu);
                  v219 = v218;
                  v210 = v316;
                  MEMORY[0x22AA5EED0](v219, -1, -1);
                }

                sub_224A3317C(v341, v339);
                v194 = swift_allocObject();
                sub_224A36F98(v339, v194 + 16);
                sub_224A3317C(v342, v338);
                v195 = swift_allocObject();
                sub_224A36F98(v338, v195 + 16);
                type metadata accessor for SnapshotAssertionManager();
                swift_allocObject();
                v196 = sub_224BC1D98(sub_224C4D978, v194, sub_224C4D980, v195, v211);
                __swift_destroy_boxed_opaque_existential_1(v333);
                *(v214 + 112) = v196;
                *(v214 + 120) = v208;
                *(v214 + 128) = v209;
                sub_224A36F98(&v334, v214 + 136);
                sub_224A36F98(&v343, v214 + 176);
                sub_224A36F98(v342, v214 + 216);
                sub_224A36F98(v341, v214 + 256);
                sub_224AB1DE0(v331, (v214 + 296));
                sub_224ACFF34(v332, v214 + 344);
                sub_224A36F98(v340, v214 + 416);
                v197 = v327;
                *(v214 + 456) = v328;
                *(v214 + 464) = v197;
                v198 = v325;
                *(v214 + 472) = v326;
                *(v214 + 480) = v198;
                *(v214 + 488) = v210;
                v199 = v322;
                *(v214 + 16) = v322;
                *&v333[24] = v213;
                *&v333[32] = sub_224A33088(qword_2813553E0, &qword_27D6F5648, &qword_224DBBC88, &unk_224DBD610);
                *v333 = v214;
                v200 = v199;
                sub_224B079FC(v333, 0);
                v192 = v330;
              }
            }
          }
        }
      }

      if (++v193 == 4)
      {
        v253 = type metadata accessor for ReplicationService.Service();
        v254 = v345;
        v255 = v192[3];
        v330 = v192[4];
        v256 = v192[5];
        v257 = v192[6];
        v258 = v192[9];
        v259 = v192[10];
        v260 = __swift_project_boxed_opaque_existential_1(v192, v255);
        MEMORY[0x28223BE20](v260, v260);
        v262 = &v286 - ((v261 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v263 + 16))(v262);

        v264 = v322;
        v265 = sub_224AFB868(v254, v262, v264, v253, v255, v330, v256, v257, v258, v259);
        v266 = v288;
        v288[3] = v253;
        v266[4] = sub_224C41198(&qword_281359618, type metadata accessor for ReplicationService.Service, &unk_224DB40F4);

        swift_unknownObjectRelease();

        *v266 = v265;

        return;
      }
    }
  }

  v175 = v330;
  v176 = v330[3];
  *&v318 = v330[4];
  v177 = v330[5];
  v314 = v330[6];
  *&v315 = v177;
  v178 = v330[9];
  v312 = v330[10];
  v313 = v178;
  v179 = __swift_project_boxed_opaque_existential_1(v330, v176);
  v180 = *(v176 - 8);
  v181 = *(v180 + 64);
  MEMORY[0x28223BE20](v179, v179);
  v182 = &v286 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = *(v180 + 16);
  v309(v182);
  sub_224A3317C((v175 + 80), v332);
  v183 = v175[26];
  *&v323 = v175[25];
  v310 = v175[27];
  v311 = v183;
  sub_224B44674((v175 + 19), v333);
  sub_224A3317C((v175 + 14), v331);
  sub_224A3317C((v175 + 57), &v334);
  if (!v290)
  {
    goto LABEL_116;
  }

  sub_224A3317C((v175 + 62), &v343);
  if (v289)
  {
    swift_unknownObjectRetain();

    v184 = v317;
    v185 = *(v317 + 16);
    v307 = v174;
    v308 = &v286;
    v306 = v180;
    if (v185)
    {
      v186 = sub_224B0B6F0(0);
      LOBYTE(v187) = 0;
      if (v188)
      {
        v187 = (*(*(v184 + 56) + 8 * v186) >> 1) & 1;
      }

      if (*(v184 + 16) && (v189 = sub_224B0B6F0(1), (v190 & 1) != 0))
      {
        v304 = ((*(*(v184 + 56) + 8 * v189) >> 1) & 1);
      }

      else
      {
        v304 = 0;
      }

      v267 = v187;
    }

    else
    {
      v267 = 0;
      v304 = 0;
    }

    v268 = type metadata accessor for ExtensionReplicationProvider();
    v269 = __swift_mutable_project_boxed_opaque_existential_1(&v343, v344);
    v305 = &v286;
    MEMORY[0x28223BE20](v269, v269);
    v271 = &v286 - ((v270 + 15) & 0xFFFFFFFFFFFFFFF0);
    v273 = (*(v272 + 16))(v271);
    MEMORY[0x28223BE20](v273, v274);
    v275 = &v286 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v309)(v275, v275, v176);
    v276 = type metadata accessor for RemoteWidgetExtensionService();
    v277 = sub_224C41198(&qword_281353CB0, type metadata accessor for RemoteWidgetExtensionService, &unk_224DB9790);
    v278 = v322;
    *(&v284 + 1) = v313;
    *&v284 = v314;
    *(&v282 + 1) = v315;
    *&v282 = v318;
    v279 = sub_224C68B84(v307, v275, v278, v332, v323, v311, v310, v333, v331, &v334, v290, v271, v289, v267, v304, v268, v176, v276, v282, v284, v312, v277);
    (*(v306 + 8))(v182, v176);
    __swift_destroy_boxed_opaque_existential_1(&v343);
    *&v333[24] = v268;
    *&v333[32] = sub_224C41198(&qword_281354408, type metadata accessor for ExtensionReplicationProvider, &unk_224DBC760);
    *v333 = v279;
    sub_224B079FC(v333, 2);
    v192 = v330;
    a2 = v317;
    goto LABEL_64;
  }

LABEL_117:
  __break(1u);
}

void sub_224C1A508(uint64_t a1@<X0>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v10 = sub_224C1A6C4(a3);
  if (!v5)
  {
    v12 = v11;
    sub_224C59DD4(a1, v10);
    sub_224C5A14C(a1, v12);
    v19[6] = 0;
    sub_224DAE9F8();
    v17 = sub_224DAE9A8();
    __swift_project_boxed_opaque_existential_1(a3 + 14, a3[17]);
    v18 = sub_224DAC678();
    v13 = a3[3];
    v14 = a3[7];
    v15 = __swift_project_boxed_opaque_existential_1(a3, v13);
    v19[3] = v13;
    v19[4] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v15, v13);
    sub_224C54B88(a1, v18, v17, v19, a4, x8_0);

    __swift_destroy_boxed_opaque_existential_1(v19);
  }
}

uint64_t sub_224C1A6C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1 + 57, a1[60]);
  v2 = sub_224DADA38();
  __swift_project_boxed_opaque_existential_1(a1 + 57, a1[60]);
  v3 = sub_224DADA48();
  if (v2)
  {
    if (!v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5698, &qword_224DBBCC0);

      sub_224DA06C8(MEMORY[0x277D84F90]);
      sub_224DACF68();
    }
  }

  else if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55E0, &unk_224DB65D0);
    sub_224DA06A0(MEMORY[0x277D84F90]);
    return sub_224DACF68();
  }

  else
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C41198(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_224C1A838@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[3];
  v8 = a3[8];
  v9 = __swift_project_boxed_opaque_existential_1(a3, v7);
  v12[3] = v7;
  v12[4] = *(v8 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v9, v7);
  sub_224C56080(a1, a2, v12, a4);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_224C1A908@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[25];
  v7 = a2[26];
  v14[3] = swift_getObjectType();
  v14[4] = v7;
  v14[0] = v6;
  v8 = a2[3];
  v9 = a2[7];
  v10 = __swift_project_boxed_opaque_existential_1(a2, v8);
  v13[3] = v8;
  v13[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  swift_unknownObjectRetain();
  sub_224AF2674(a1, v14, v13, a3);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

void sub_224C1A9F4(void (*a1)(char *, uint64_t)@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v73 = a2;
  v64 = a4;
  v65 = a5;
  v72 = a1;
  v76 = a6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v63 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v7);
  v66 = &v57 - v8;
  v9 = sub_224DA9688();
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v71 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAA618();
  v69 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v57 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v57 - v22;
  v24 = _s10IconChangeOMa(0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a3[3];
  v29 = a3[8];
  v30 = __swift_project_boxed_opaque_existential_1(a3, v28);
  v75[3] = v28;
  v75[4] = *(v29 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
  (*(*(v28 - 8) + 16))(boxed_opaque_existential_1, v30, v28);
  v32 = v74;
  sub_224C56DE8(v72, v73, v75, v76);
  __swift_destroy_boxed_opaque_existential_1(v75);
  if (!v32)
  {
    v33 = v20;
    v73 = v16;
    v74 = v23;
    v34 = v70;
    v62 = v12;
    sub_224C4E30C(v76, v27, _s10IconChangeOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_224C4E374(v27, _s10IconChangeOMa);
    }

    else
    {
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A60, &qword_224DBC810) + 48);
      v36 = v69;
      v37 = v74;
      v38 = v62;
      (*(v69 + 32))(v74, v27, v62);
      v39 = v67;
      (*(v67 + 32))(v71, &v27[v35], v68);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v40 = sub_224DAB258();
      v41 = __swift_project_value_buffer(v40, qword_281365120);
      v42 = v33;
      v59 = *(v36 + 16);
      v60 = v36 + 16;
      v59(v33, v37, v38);
      v61 = v41;
      v43 = sub_224DAB228();
      v44 = sub_224DAF2A8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = v42;
        v46 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v75[0] = v58;
        *v46 = 136446210;
        v47 = v66;
        sub_224DAA5E8();
        sub_224A33088(&qword_281351848, &unk_27D6F56A0, &unk_224DB4150, MEMORY[0x277CFA030]);
        v48 = sub_224DAFD28();
        v49 = v34;
        v51 = v50;
        (*(v63 + 8))(v47, v49);
        v52 = v45;
        v38 = v62;
        v72 = *(v36 + 8);
        v72(v52, v62);
        v53 = sub_224A33F74(v48, v51, v75);
        v39 = v67;

        *(v46 + 4) = v53;
        _os_log_impl(&dword_224A2F000, v43, v44, "Received remote icon for %{public}s", v46, 0xCu);
        v54 = v58;
        __swift_destroy_boxed_opaque_existential_1(v58);
        MEMORY[0x22AA5EED0](v54, -1, -1);
        MEMORY[0x22AA5EED0](v46, -1, -1);
      }

      else
      {

        v72 = *(v36 + 8);
        v72(v42, v38);
      }

      v55 = v71;
      v56 = v74;
      if (v64)
      {
        swift_getObjectType();
        sub_224DA9CD8();
        (*(v39 + 8))(v55, v68);
        v72(v56, v38);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_224C1B290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[12];
  v8 = a3[3];
  v9 = a3[8];
  v10 = __swift_project_boxed_opaque_existential_1(a3, v8);
  v13[3] = v8;
  v13[4] = *(v9 + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  sub_224C1B36C(a1, v7, a2, 1, v13, a4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_224C1B36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v174 = a5;
  v175 = a4;
  v180 = a3;
  v171 = a2;
  v159 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v157 = &v146 - v9;
  v158 = sub_224DAAFF8();
  v160 = *(v158 - 8);
  v11 = MEMORY[0x28223BE20](v158, v10);
  v156 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v149 = &v146 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v154 = &v146 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v155 = &v146 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v150 = &v146 - v23;
  v165 = sub_224DAAFC8();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165, v24);
  v163 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_224DA9688();
  v169 = *(v26 - 8);
  v170 = v26;
  v28 = MEMORY[0x28223BE20](v26, v27);
  v151 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v172 = &v146 - v31;
  v182 = sub_224DAAC58();
  v179 = *(v182 - 1);
  MEMORY[0x28223BE20](v182, v32);
  v181 = &v146 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_224DA9908();
  v177 = *(v34 - 8);
  v178 = v34;
  v36 = MEMORY[0x28223BE20](v34, v35);
  v153 = &v146 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v168 = &v146 - v40;
  MEMORY[0x28223BE20](v39, v41);
  v176 = &v146 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v43 - 8, v44);
  v45 = sub_224DAAF48();
  v46 = *(v45 - 8);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v152 = &v146 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v50);
  v52 = &v146 - v51;
  v53 = sub_224DAC268();
  v183 = *(v53 - 8);
  v55 = MEMORY[0x28223BE20](v53, v54);
  v173 = &v146 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v55, v57);
  v60 = &v146 - v59;
  MEMORY[0x28223BE20](v58, v61);
  v184 = &v146 - v62;
  v63 = *(v46 + 16);
  v167 = a1;
  v162 = v46 + 16;
  v161 = v63;
  v63(v52, a1, v45);
  sub_224DAAEF8();
  v64 = sub_224DA96A8();
  v66 = v65;

  if (v66 >> 60 == 15)
  {
    sub_224C4DE90();
    swift_allocError();
    swift_willThrow();
    return (*(v46 + 8))(v52, v45);
  }

  else
  {
    v166 = v45;
    sub_224DAAD38();
    sub_224C41198(&qword_27D6F56D0, MEMORY[0x277CF9978], MEMORY[0x277CF9998]);
    v68 = v186;
    sub_224DAAD18();
    if (v68)
    {
      (*(v46 + 8))(v52, v166);
      return sub_224AC1D9C(v64, v66);
    }

    else
    {
      v148 = 0;
      v186 = sub_224DAC248();
      sub_224DAC258();
      sub_224DAC218();
      v69 = v183;
      sub_224DAC228();
      sub_224AC1D9C(v64, v66);
      v72 = *(v69 + 8);
      v70 = v69 + 8;
      v71 = v72;
      v72(v60, v53);
      (*(v46 + 8))(v52, v166);
      v73 = v179;
      v74 = v180;
      v75 = *(v179 + 16);
      v77 = v181;
      v76 = v182;
      v75(v181, v180, v182);
      if ((*(v73 + 88))(v77, v76) == *MEMORY[0x277D46558])
      {
        (*(v73 + 96))(v77, v76);
        v78 = *v77;
        v79 = *(*v77 + 16) == 1;
        v147 = v53;
        if (v79)
        {
          v186 = v71;
          v81 = v176;
          v80 = v177;
          v82 = v177 + 16;
          v83 = v78 + ((*(v177 + 80) + 32) & ~*(v177 + 80));
          v182 = *(v177 + 16);
          v183 = v70;
          (v182)(v176, v83, v178);

          __swift_project_boxed_opaque_existential_1(v174, *(v174 + 24));
          sub_224B942B8(v175);
          sub_224C4DEE4();
          sub_224C4DF38();
          v84 = v148;
          v85 = sub_224DAAB38();
          if (v84)
          {

            (*(v80 + 8))(v81, v178);
            return v186(v184, v147);
          }

          else
          {
            v180 = v82;
            v181 = v86;
            v93 = v85;
            v94 = v87;

            v95 = v184;
            sub_224DAC248();
            sub_224DAC258();
            sub_224DAC238();
            sub_224DAC9B8();
            sub_224C41198(&qword_281350D48, MEMORY[0x277CF9B18], MEMORY[0x277CF99F8]);
            v96 = v172;
            sub_224DAC3F8();
            v185[0] = sub_224DAC408();
            v185[1] = v97;
            sub_224DAAE48();
            v98 = v170;
            v148 = 0;

            v99 = [objc_opt_self() defaultManager];
            sub_224DA9658();
            v100 = sub_224DAEDE8();

            v101 = [v99 fileExistsAtPath_];

            if (v101)
            {
              v102 = v169;
              v103 = v150;
              (*(v169 + 16))(v150, v96, v98);
              (*(v102 + 56))(v103, 0, 1, v98);
              sub_224A77FD0(v93, v181);
              v104 = v163;
              sub_224DAAFB8();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
              v105 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
              v106 = (*(*v105 + 80) + 32) & ~*(*v105 + 80);
              v107 = swift_allocObject();
              v174 = xmmword_224DB3100;
              *(v107 + 16) = xmmword_224DB3100;
              v108 = (v107 + v106);
              v109 = v105[14];
              *v108 = v94;
              (*(v164 + 16))(&v108[v109], v104, v165);
              v179 = sub_224DA06F0(v107);
              swift_setDeallocating();
              sub_224A3311C(v108, &unk_27D6F6FE0, &unk_224DB9C50);
              swift_deallocClassInstance();
              if (v175 >= 0x40u)
              {
                v185[0] = MEMORY[0x277D84F90];
                sub_224C41198(&unk_27D6F5720, MEMORY[0x277D467D0], MEMORY[0x277D467D8]);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3880, &qword_224DC3300);
                sub_224A33088(&unk_27D6F5730, &qword_27D6F3880, &qword_224DC3300, MEMORY[0x277D83970]);
                v128 = v154;
                v129 = v158;
                sub_224DAF788();
                v130 = v160;
                v131 = *(v160 + 32);
              }

              else
              {
                if ((v175 - 1) >= 2u)
                {
                  v185[0] = MEMORY[0x277D84F90];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3888, &unk_224DB41D0);
                  v110 = swift_allocObject();
                  *(v110 + 16) = v174;
                  sub_224DAAFE8();
                  v185[0] = v110;
                }

                sub_224C41198(&unk_27D6F5720, MEMORY[0x277D467D0], MEMORY[0x277D467D8]);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3880, &qword_224DC3300);
                sub_224A33088(&unk_27D6F5730, &qword_27D6F3880, &qword_224DC3300, MEMORY[0x277D83970]);
                v139 = v149;
                v129 = v158;
                sub_224DAF788();
                v130 = v160;
                v131 = *(v160 + 32);
                v128 = v154;
                v131(v154, v139, v129);
              }

              v140 = v155;
              v131(v155, v128, v129);
              v161(v152, v167, v166);
              (v182)(v153, v168, v178);
              v141 = sub_224DA9878();
              (*(*(v141 - 8) + 56))(v157, 1, 1, v141);
              (*(v130 + 16))(v156, v140, v129);
              sub_224DAAF58();
              sub_224A78024(v93, v181);
              (*(v130 + 8))(v140, v129);
              (*(v164 + 8))(v163, v165);
              v142 = v178;
              v143 = *(v177 + 8);
              v143(v168, v178);
              (*(v169 + 8))(v96, v170);
              v144 = v147;
              v145 = v186;
              v186(v173, v147);
              v143(v176, v142);
              return v145(v184, v144);
            }

            else
            {
              v111 = v98;
              if (qword_2813516C8 != -1)
              {
                swift_once();
              }

              v112 = sub_224DAB258();
              __swift_project_value_buffer(v112, qword_281365120);
              v113 = v169;
              v114 = v151;
              (*(v169 + 16))(v151, v96, v111);
              v115 = sub_224DAB228();
              v116 = sub_224DAF288();
              if (os_log_type_enabled(v115, v116))
              {
                v117 = swift_slowAlloc();
                v179 = v117;
                v118 = swift_slowAlloc();
                v185[0] = v118;
                *v117 = 136315138;
                sub_224C41198(&qword_281351A70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
                v119 = sub_224DAFD28();
                v120 = v114;
                v122 = v121;
                v123 = *(v113 + 8);
                v180 = (v113 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                v182 = v123;
                (v123)(v120, v111);
                v124 = sub_224A33F74(v119, v122, v185);

                v125 = v179;
                *(v179 + 4) = v124;
                v126 = v125;
                _os_log_impl(&dword_224A2F000, v115, v116, "Archive at URL does not exist: %s", v125, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v118);
                v127 = v118;
                v95 = v184;
                MEMORY[0x22AA5EED0](v127, -1, -1);
                MEMORY[0x22AA5EED0](v126, -1, -1);
              }

              else
              {

                v132 = *(v113 + 8);
                v180 = (v113 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                v182 = v132;
                (v132)(v114, v111);
              }

              v133 = v147;
              v134 = v177;
              type metadata accessor for ReplicationService.ReplicationServiceError(0);
              sub_224C41198(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
              swift_allocError();
              v161(v135, v167, v166);
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              sub_224A78024(v93, v181);
              v136 = *(v134 + 8);
              v137 = v178;
              v136(v168, v178);
              (v182)(v96, v170);
              v138 = v186;
              v186(v173, v133);
              v136(v176, v137);
              return v138(v95, v133);
            }
          }
        }

        else
        {

          type metadata accessor for ReplicationService.ReplicationServiceError(0);
          sub_224C41198(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
          swift_allocError();
          v75(v92, v74, v76);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          return v71(v184, v147);
        }
      }

      else
      {
        type metadata accessor for ReplicationService.ReplicationServiceError(0);
        sub_224C41198(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
        swift_allocError();
        v89 = v88;
        v90 = v74;
        v91 = v182;
        v75(v89, v90, v182);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v71(v184, v53);
        return (*(v73 + 8))(v181, v91);
      }
    }
  }
}

uint64_t sub_224C1C9E8(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = a2;
  v27 = sub_224DA9908();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAAF48();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAAAF8();
  sub_224DAAB08();
  v13 = a3[12];
  v14 = a3[3];
  v15 = a3[8];
  v16 = __swift_project_boxed_opaque_existential_1(a3, v14);
  v26[3] = v14;
  v26[4] = *(v15 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v16, v14);
  v18 = v25;
  v19 = sub_224C1CC3C(v12, v7, v24, v13);
  if (v18)
  {
    (*(v4 + 8))(v7, v27);
    (*(v9 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v21 = v19;
    (*(v4 + 8))(v7, v27);
    (*(v9 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v20 = v21 ^ 1;
  }

  return v20 & 1;
}

uint64_t sub_224C1CC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a3;
  v68 = a4;
  v69 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56F8, &qword_224DBBCC8);
  MEMORY[0x28223BE20](v70, v5);
  v72 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v66 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v75 = &v62 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v76 = &v62 - v15;
  v71 = sub_224DA9908();
  v73 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v16);
  v74 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v20 = sub_224DAAF48();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_224DAC268();
  v80 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v77 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v62 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v79 = &v62 - v34;
  (*(v21 + 16))(v24, a1, v20);
  sub_224DAAEF8();
  v35 = sub_224DA96A8();
  v37 = v36;

  if (v37 >> 60 == 15)
  {
    sub_224C4DE90();
    swift_allocError();
    swift_willThrow();
    (*(v21 + 8))(v24, v20);
  }

  else
  {
    sub_224DAAD38();
    sub_224C41198(&qword_27D6F56D0, MEMORY[0x277CF9978], MEMORY[0x277CF9998]);
    v38 = v78;
    sub_224DAAD18();
    if (!v38)
    {
      v78 = 0;
      v64 = sub_224DAC248();
      v63 = sub_224DAC258();
      sub_224DAC218();
      sub_224DAC228();
      sub_224AC1D9C(v35, v37);
      v40 = *(v80 + 8);
      v80 += 8;
      v64 = v40;
      v40(v32, v25);
      (*(v21 + 8))(v24, v20);
      v41 = v74;
      sub_224DAAD98();
      sub_224B44A4C(v41, v77);
      v42 = v73;
      v43 = *(v73 + 8);
      v44 = v71;
      v67 = v73 + 8;
      v63 = v43;
      v43(v41, v71);
      sub_224DAC9B8();
      sub_224C41198(&qword_281350D48, MEMORY[0x277CF9B18], MEMORY[0x277CF99F8]);
      v45 = v76;
      v46 = v78;
      sub_224DAC428();
      v65 = v25;
      if (v46)
      {

        (*(v42 + 56))(v45, 1, 1, v44);
      }

      v78 = 0;
      v47 = v72;
      v48 = v75;
      (*(v42 + 16))(v75, v69, v44);
      (*(v42 + 56))(v48, 0, 1, v44);
      v49 = *(v70 + 48);
      sub_224A3796C(v48, v47, &unk_27D6F5630, &unk_224DB34C0);
      sub_224A3796C(v45, v47 + v49, &unk_27D6F5630, &unk_224DB34C0);
      v50 = *(v42 + 48);
      if (v50(v47, 1, v44) == 1)
      {
        sub_224A3311C(v48, &unk_27D6F5630, &unk_224DB34C0);
        sub_224A3311C(v45, &unk_27D6F5630, &unk_224DB34C0);
        v52 = v64;
        v51 = v65;
        v64(v77, v65);
        v52(v79, v51);
        if (v50(v47 + v49, 1, v44) == 1)
        {
          sub_224A3311C(v47, &unk_27D6F5630, &unk_224DB34C0);
          LOBYTE(v32) = 1;
          return v32 & 1;
        }
      }

      else
      {
        v53 = v66;
        sub_224A3796C(v47, v66, &unk_27D6F5630, &unk_224DB34C0);
        if (v50(v47 + v49, 1, v44) != 1)
        {
          v57 = v47 + v49;
          v58 = v74;
          (*(v73 + 32))(v74, v57, v44);
          sub_224C41198(&qword_281351A10, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          LOBYTE(v32) = sub_224DAEDD8();
          v59 = v63;
          v63(v58, v44);
          sub_224A3311C(v75, &unk_27D6F5630, &unk_224DB34C0);
          sub_224A3311C(v76, &unk_27D6F5630, &unk_224DB34C0);
          v61 = v64;
          v60 = v65;
          v64(v77, v65);
          v61(v79, v60);
          v59(v66, v44);
          sub_224A3311C(v47, &unk_27D6F5630, &unk_224DB34C0);
          return v32 & 1;
        }

        v54 = v53;
        sub_224A3311C(v75, &unk_27D6F5630, &unk_224DB34C0);
        sub_224A3311C(v76, &unk_27D6F5630, &unk_224DB34C0);
        v56 = v64;
        v55 = v65;
        v64(v77, v65);
        v56(v79, v55);
        v63(v54, v44);
      }

      sub_224A3311C(v47, &qword_27D6F56F8, &qword_224DBBCC8);
      LOBYTE(v32) = 0;
      return v32 & 1;
    }

    (*(v21 + 8))(v24, v20);
    sub_224AC1D9C(v35, v37);
  }

  return v32 & 1;
}

uint64_t sub_224C1D560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[12];
  v8 = a3[3];
  v9 = a3[8];
  v10 = __swift_project_boxed_opaque_existential_1(a3, v8);
  v13[3] = v8;
  v13[4] = *(v9 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  sub_224C1D638(a1, a2, v7, v13, a4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_224C1D638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a4;
  v58 = a3;
  v54 = a5;
  v7 = sub_224DA9908();
  v56 = *(v7 - 1);
  v57 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAC268();
  v59 = *(v10 - 1);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DA9688();
  v60 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v49 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v49 - v24;
  v26 = v62;
  result = sub_224C580E8(&v49 - v24, v13, a1, a2, v61);
  if (!v26)
  {
    v52 = a1;
    v53 = v25;
    v50 = v18;
    v51 = a2;
    v61 = v10;
    v62 = v14;
    sub_224DAC9B8();
    sub_224C41198(&qword_281350D48, MEMORY[0x277CF9B18], MEMORY[0x277CF99F8]);
    sub_224DAC3F8();
    sub_224C41198(&qword_27D6F56E0, MEMORY[0x277CF9B18], MEMORY[0x277CF9A00]);
    v28 = v53;
    sub_224DAC448();
    v29 = v55;
    sub_224DAB008();
    sub_224DAC458();
    v58 = 0;
    (*(v56 + 1))(v29, v57);
    v30 = v62;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v31 = sub_224DAB258();
    __swift_project_value_buffer(v31, qword_281365120);
    v32 = v60;
    v33 = v50;
    (*(v60 + 16))(v50, v22, v30);
    v34 = sub_224DAB228();
    v35 = sub_224DAF2A8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v56 = v36;
      v57 = swift_slowAlloc();
      v63 = v57;
      *v36 = 136446210;
      sub_224C41198(&qword_281351A70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      LODWORD(v55) = v35;
      v37 = sub_224DAFD28();
      v39 = v38;
      v40 = *(v60 + 8);
      v40(v33, v62);
      v41 = sub_224A33F74(v37, v39, &v63);
      v30 = v62;

      v42 = v56;
      *(v56 + 1) = v41;
      _os_log_impl(&dword_224A2F000, v34, v55, "Wrote to %{public}s", v42, 0xCu);
      v43 = v57;
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x22AA5EED0](v43, -1, -1);
      MEMORY[0x22AA5EED0](v42, -1, -1);

      v40(v53, v30);
      v32 = v60;
    }

    else
    {

      v44 = *(v32 + 8);
      v44(v33, v30);
      v44(v28, v30);
    }

    v45 = v54;
    (*(v59 + 32))(v54, v13, v61);
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56E8, &unk_224DC3340) + 44);
    (*(v32 + 32))(v45 + v46, v22, v30);
    (*(v32 + 56))(v45 + v46, 0, 1, v30);
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56D8, &qword_224DBD790) + 44);
    v48 = sub_224DAAE38();
    return (*(*(v48 - 8) + 16))(v45 + v47, v51, v48);
  }

  return result;
}

uint64_t sub_224C1DD5C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3[87];
  if (v4)
  {
    v6 = result;
    v8 = a3[88];
    v9 = a3[3];
    v10 = a3[8];
    v11 = __swift_project_boxed_opaque_existential_1(a3, v9);
    v13[3] = v9;
    v13[4] = *(v10 + 16);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
    sub_224AF3E84(v6, v4, v8, a2, 3u, v13, a4);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224C1DE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v91 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56F8, &qword_224DBBCC8);
  MEMORY[0x28223BE20](v92, v4);
  v93 = &v84 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v88 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v95 = &v84 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v96 = &v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v90 = (&v84 - v17);
  v100 = sub_224DAC2B8();
  v18 = *(v100 - 8);
  v20 = MEMORY[0x28223BE20](v100, v19);
  v97 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v84 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v99 = &v84 - v27;
  v105 = sub_224DA9908();
  v102 = *(v105 - 8);
  v29 = MEMORY[0x28223BE20](v105, v28);
  v94 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v84 - v32;
  v34 = sub_224DAAF48();
  v35 = *(v34 - 8);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = &v84 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v84 - v41;
  sub_224DAAAF8();
  v103 = v33;
  result = sub_224DAAB08();
  if (*(a3 + 696))
  {
    v89 = *(a3 + 704);
    v44 = *(v35 + 16);
    v101 = v42;
    v104 = v34;
    v44(v39, v42, v34);
    sub_224DAAEF8();
    v45 = sub_224DA96A8();
    v47 = v46;

    if (v47 >> 60 == 15)
    {
      sub_224AFC52C();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v87 = v18;
      sub_224DAAD38();
      sub_224C41198(&qword_27D6F3868, MEMORY[0x277CF99B8], MEMORY[0x277CF99D8]);
      v48 = v100;
      v49 = v98;
      sub_224DAAD18();
      if (!v49)
      {
        v53 = sub_224DAC2A8();
        v98 = 0;
        v86 = v53;
        sub_224DAC288();
        sub_224DAC298();
        sub_224AC1D9C(v45, v47);
        v85 = *(v87 + 8);
        v87 += 8;
        v85(v25, v48);
        v90 = *(v35 + 8);
        v90(v39, v104);
        v54 = v94;
        sub_224DAAD98();
        sub_224CBE434(v54);
        v55 = v102;
        v56 = *(v102 + 8);
        v57 = v54;
        v58 = v105;
        v91 = v102 + 8;
        v86 = v56;
        v56(v57, v105);
        swift_getObjectType();
        v59 = v96;
        v60 = v98;
        sub_224DAC428();
        if (v60)
        {

          (*(v55 + 56))(v59, 1, 1, v58);
        }

        v98 = 0;
        v61 = v103;
        v62 = v95;
        (*(v55 + 16))(v95, v103, v58);
        (*(v55 + 56))(v62, 0, 1, v58);
        v63 = v93;
        v64 = *(v92 + 48);
        sub_224A3796C(v62, v93, &unk_27D6F5630, &unk_224DB34C0);
        v92 = v64;
        v65 = v105;
        sub_224A3796C(v59, v63 + v64, &unk_27D6F5630, &unk_224DB34C0);
        v66 = v59;
        v67 = *(v55 + 48);
        if (v67(v63, 1, v65) == 1)
        {
          v68 = v65;
          sub_224A3311C(v62, &unk_27D6F5630, &unk_224DB34C0);
          sub_224A3311C(v66, &unk_27D6F5630, &unk_224DB34C0);
          v69 = v100;
          v70 = v85;
          v85(v97, v100);
          v70(v99, v69);
          v86(v103, v68);
          v90(v101, v104);
          if (v67(v63 + v92, 1, v68) == 1)
          {
            sub_224A3311C(v63, &unk_27D6F5630, &unk_224DB34C0);
            v52 = 0;
            return v52 & 1;
          }
        }

        else
        {
          v71 = v61;
          v72 = v88;
          sub_224A3796C(v63, v88, &unk_27D6F5630, &unk_224DB34C0);
          v73 = v92;
          if (v67(v63 + v92, 1, v65) != 1)
          {
            v79 = v63 + v73;
            v80 = v94;
            (*(v102 + 32))(v94, v79, v65);
            sub_224C41198(&qword_281351A10, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
            LODWORD(v102) = sub_224DAEDD8();
            v81 = v86;
            v86(v80, v65);
            sub_224A3311C(v95, &unk_27D6F5630, &unk_224DB34C0);
            sub_224A3311C(v96, &unk_27D6F5630, &unk_224DB34C0);
            v82 = v100;
            v83 = v85;
            v85(v97, v100);
            v83(v99, v82);
            v81(v71, v65);
            v90(v101, v104);
            v81(v88, v65);
            sub_224A3311C(v63, &unk_27D6F5630, &unk_224DB34C0);
            v52 = v102 ^ 1;
            return v52 & 1;
          }

          v74 = v65;
          v75 = v72;
          sub_224A3311C(v95, &unk_27D6F5630, &unk_224DB34C0);
          sub_224A3311C(v96, &unk_27D6F5630, &unk_224DB34C0);
          v76 = v100;
          v77 = v85;
          v85(v97, v100);
          v77(v99, v76);
          v78 = v86;
          v86(v71, v74);
          v90(v101, v104);
          v78(v75, v74);
        }

        sub_224A3311C(v63, &qword_27D6F56F8, &qword_224DBBCC8);
        v52 = 1;
        return v52 & 1;
      }

      sub_224AC1D9C(v45, v47);
    }

    v50 = *(v35 + 8);
    v51 = v104;
    v50(v39, v104);
    (*(v102 + 8))(v103, v105);
    v50(v101, v51);
    return v52 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_224C1E8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = sub_224DA9908();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAC2B8();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DA9688();
  v42 = *(v14 - 8);
  v43 = v14;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v44 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16, v18);
  v21 = &v36 - v20;
  if (a3[87])
  {
    v22 = a3[88];
    v23 = a3[3];
    v24 = a3[8];
    v25 = __swift_project_boxed_opaque_existential_1(a3, v23);
    v45[3] = v23;
    v45[4] = *(v24 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v25, v23);
    v27 = v46;
    sub_224C58DD8(v21, v13, a1, a2, v45);
    if (!v27)
    {
      swift_getObjectType();
      sub_224DAC3F8();
      v28 = *(*(v22 + 16) + 16);
      sub_224DAC448();
      v46 = v28;
      v29 = v37;
      sub_224DAB008();
      sub_224DAC458();
      (*(v38 + 8))(v29, v39);
      v31 = v42;
      v30 = v43;
      (*(v42 + 8))(v21, v43);
      v32 = v36;
      (*(v40 + 32))(v36, v13, v41);
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5748, &qword_224DBBCD0) + 44);
      (*(v31 + 32))(v32 + v33, v44, v30);
      (*(v31 + 56))(v32 + v33, 0, 1, v30);
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5740, &qword_224DB3608) + 44);
      v35 = sub_224DAAE38();
      (*(*(v35 - 8) + 16))(v32 + v34, a2, v35);
    }

    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224C1ED60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a4;
  v38 = a5;
  v47 = a3;
  v45 = a2;
  v39 = a6;
  v46 = sub_224DA9908();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v8);
  v43 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = sub_224DAAF48();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_224DAC268();
  v42 = *(v48 - 8);
  v18 = MEMORY[0x28223BE20](v48, v17);
  v41 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = v36 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v40 = v36 - v25;
  (*(v13 + 16))(v16, a1, v12);
  sub_224DAAEF8();
  v26 = sub_224DA96A8();
  v28 = v27;

  if (v28 >> 60 == 15)
  {
    sub_224C4DE90();
    swift_allocError();
    swift_willThrow();
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    sub_224DAAD38();
    sub_224C41198(&qword_27D6F56D0, MEMORY[0x277CF9978], MEMORY[0x277CF9998]);
    sub_224DAAD18();
    if (v6)
    {
      (*(v13 + 8))(v16, v12);
      return sub_224AC1D9C(v26, v28);
    }

    else
    {
      v36[2] = sub_224DAC248();
      v36[1] = sub_224DAC258();
      sub_224DAC218();
      v30 = v40;
      sub_224DAC228();
      sub_224AC1D9C(v26, v28);
      v31 = *(v42 + 8);
      v31(v23, v48);
      (*(v13 + 8))(v16, v12);
      v32 = v43;
      sub_224DAAD98();
      v33 = v41;
      sub_224B44A4C(v32, v41);
      (*(v44 + 8))(v32, v46);
      sub_224DAC9B8();
      sub_224C41198(&unk_281350D38, MEMORY[0x277CF9B18], MEMORY[0x277CF9A08]);
      sub_224DAC708();
      v34 = v48;
      v31(v33, v48);
      v31(v30, v34);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
      return (*(*(v35 - 8) + 56))(v39, 1, 1, v35);
    }
  }
}

uint64_t sub_224C1F2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[13];
  v8 = a3[3];
  v9 = a3[8];
  v10 = __swift_project_boxed_opaque_existential_1(a3, v8);
  v13[3] = v8;
  v13[4] = *(v9 + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  sub_224C1B36C(a1, v7, a2, 2, v13, a4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_224C1F37C(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = a2;
  v27 = sub_224DA9908();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAAF48();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAAAF8();
  sub_224DAAB08();
  v13 = a3[13];
  v14 = a3[3];
  v15 = a3[8];
  v16 = __swift_project_boxed_opaque_existential_1(a3, v14);
  v26[3] = v14;
  v26[4] = *(v15 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v16, v14);
  v18 = v25;
  v19 = sub_224C1CC3C(v12, v7, v24, v13);
  if (v18)
  {
    (*(v4 + 8))(v7, v27);
    (*(v9 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v21 = v19;
    (*(v4 + 8))(v7, v27);
    (*(v9 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v20 = v21 ^ 1;
  }

  return v20 & 1;
}

uint64_t sub_224C1F5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[13];
  v8 = a3[3];
  v9 = a3[8];
  v10 = __swift_project_boxed_opaque_existential_1(a3, v8);
  v13[3] = v8;
  v13[4] = *(v9 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  sub_224C1D638(a1, a2, v7, v13, a4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_224C1F6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v110 = a2;
  v111 = a3;
  v105 = a4;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56E8, &unk_224DC3340);
  MEMORY[0x28223BE20](v103, v5);
  v104 = v100 - v6;
  v7 = sub_224DA9908();
  v108 = *(v7 - 8);
  v109 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v107 = (v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = sub_224DAAF48();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAC268();
  v113 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v102 = v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v101 = v100 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v114 = v100 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = v100 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v112 = v100 - v32;
  v33 = *(v13 + 16);
  v106 = a1;
  v33(v16, a1, v12);
  sub_224DAAEF8();
  v34 = sub_224DA96A8();
  v36 = v35;

  if (v36 >> 60 == 15)
  {
    sub_224C4DE90();
    swift_allocError();
    swift_willThrow();
    return (*(v13 + 8))(v16, v12);
  }

  sub_224DAAD38();
  sub_224C41198(&qword_27D6F56D0, MEMORY[0x277CF9978], MEMORY[0x277CF9998]);
  v38 = v115;
  sub_224DAAD18();
  if (v38)
  {
    (*(v13 + 8))(v16, v12);
    return sub_224AC1D9C(v34, v36);
  }

  v115 = 0;
  v100[2] = sub_224DAC248();
  v100[1] = sub_224DAC258();
  sub_224DAC218();
  v39 = v112;
  sub_224DAC228();
  sub_224AC1D9C(v34, v36);
  v41 = v113 + 8;
  v40 = *(v113 + 8);
  v40(v30, v17);
  v42 = v39;
  (*(v13 + 8))(v16, v12);
  v43 = v107;
  v44 = v110;
  sub_224DAAD98();
  v45 = v114;
  sub_224B44A4C(v43, v114);
  (*(v108 + 8))(v43, v109);
  __swift_project_boxed_opaque_existential_1(v111, *(v111 + 3));
  v46 = v115;
  v47 = sub_224DAABB8();
  if (v46)
  {
    v40(v45, v17);
    return (v40)(v39, v17);
  }

  v108 = v41;
  v49 = v44;
  v50 = MEMORY[0x28223BE20](v47, v48);
  v100[-2] = v106;
  v100[-1] = v39;
  sub_224B3E8C4(sub_224C4DF8C, &v100[-4], v50);
  v52 = v51;
  v115 = 0;

  v53 = v42;
  if (v52)
  {
    v55 = v113;
    v54 = v114;
    v111 = v40;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v56 = sub_224DAB258();
    __swift_project_value_buffer(v56, qword_281365120);
    v57 = v101;
    (*(v55 + 16))(v101, v54, v17);
    v58 = sub_224DAB228();
    v59 = v17;
    v60 = sub_224DAF2A8();
    if (os_log_type_enabled(v58, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v109 = v59;
      v63 = v62;
      v116 = v62;
      *v61 = 136446210;
      sub_224C41198(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
      v64 = sub_224DAFD28();
      v66 = v65;
      v67 = v57;
      v68 = v111;
      v111(v67, v109);
      v69 = sub_224A33F74(v64, v66, &v116);
      v53 = v112;

      *(v61 + 4) = v69;
      _os_log_impl(&dword_224A2F000, v58, v60, "Skipping deleting archive for %{public}s)", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      v70 = v63;
      v59 = v109;
      MEMORY[0x22AA5EED0](v70, -1, -1);
      v71 = v61;
      v55 = v113;
      MEMORY[0x22AA5EED0](v71, -1, -1);
    }

    else
    {

      v89 = v57;
      v68 = v111;
      v111(v89, v59);
    }

    v90 = v114;
  }

  else
  {
    v55 = v113;
    v72 = v114;
    v68 = v40;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v73 = sub_224DAB258();
    __swift_project_value_buffer(v73, qword_281365120);
    v74 = v102;
    (*(v55 + 16))(v102, v72, v17);
    v75 = sub_224DAB228();
    v76 = v17;
    v77 = sub_224DAF2A8();
    if (os_log_type_enabled(v75, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v109 = v76;
      v80 = v74;
      v107 = v79;
      v116 = v79;
      *v78 = 136446210;
      sub_224C41198(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
      v81 = v49;
      v82 = sub_224DAFD28();
      v84 = v83;
      v40(v80, v109);
      v85 = v82;
      v49 = v81;
      v86 = sub_224A33F74(v85, v84, &v116);
      v53 = v112;

      *(v78 + 4) = v86;
      _os_log_impl(&dword_224A2F000, v75, v77, "Deleting archive for %{public}s)", v78, 0xCu);
      v87 = v107;
      __swift_destroy_boxed_opaque_existential_1(v107);
      v59 = v109;
      MEMORY[0x22AA5EED0](v87, -1, -1);
      v88 = v78;
      v55 = v113;
      MEMORY[0x22AA5EED0](v88, -1, -1);
    }

    else
    {

      v91 = v74;
      v59 = v76;
      v40(v91, v76);
    }

    sub_224DAC9B8();
    sub_224C41198(&unk_281350D38, MEMORY[0x277CF9B18], MEMORY[0x277CF9A08]);
    v90 = v114;
    v92 = v115;
    sub_224DAC708();
    if (v92)
    {
      v40(v90, v59);
      return (v40)(v53, v59);
    }

    v115 = 0;
  }

  v93 = v104;
  (*(v55 + 32))(v104, v90, v59);
  v94 = *(v103 + 44);
  v95 = sub_224DA9688();
  (*(*(v95 - 8) + 56))(v93 + v94, 1, 1, v95);
  v96 = v105;
  sub_224A44E4C(v93, v105, &unk_27D6F56E8, &unk_224DC3340);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56D8, &qword_224DBD790);
  v98 = *(v97 + 44);
  v99 = sub_224DAAE38();
  (*(*(v99 - 8) + 16))(v96 + v98, v49, v99);
  (*(*(v97 - 8) + 56))(v96, 0, 1, v97);
  return v68(v53, v59);
}

uint64_t sub_224C201BC@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3[85];
  if (v4)
  {
    v6 = result;
    v8 = a3[86];
    v9 = a3[3];
    v10 = a3[8];
    v11 = __swift_project_boxed_opaque_existential_1(a3, v9);
    v13[3] = v9;
    v13[4] = *(v10 + 16);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
    sub_224AF3E84(v6, v4, v8, a2, 4u, v13, a4);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224C202B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v91 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56F8, &qword_224DBBCC8);
  MEMORY[0x28223BE20](v92, v4);
  v93 = &v84 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v88 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v95 = &v84 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v96 = &v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v90 = (&v84 - v17);
  v100 = sub_224DAC2B8();
  v18 = *(v100 - 8);
  v20 = MEMORY[0x28223BE20](v100, v19);
  v97 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v84 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v99 = &v84 - v27;
  v105 = sub_224DA9908();
  v102 = *(v105 - 8);
  v29 = MEMORY[0x28223BE20](v105, v28);
  v94 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v84 - v32;
  v34 = sub_224DAAF48();
  v35 = *(v34 - 8);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = &v84 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v84 - v41;
  sub_224DAAAF8();
  v103 = v33;
  result = sub_224DAAB08();
  if (*(a3 + 680))
  {
    v89 = *(a3 + 688);
    v44 = *(v35 + 16);
    v101 = v42;
    v104 = v34;
    v44(v39, v42, v34);
    sub_224DAAEF8();
    v45 = sub_224DA96A8();
    v47 = v46;

    if (v47 >> 60 == 15)
    {
      sub_224AFC52C();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v87 = v18;
      sub_224DAAD38();
      sub_224C41198(&qword_27D6F3868, MEMORY[0x277CF99B8], MEMORY[0x277CF99D8]);
      v48 = v100;
      v49 = v98;
      sub_224DAAD18();
      if (!v49)
      {
        v53 = sub_224DAC2A8();
        v98 = 0;
        v86 = v53;
        sub_224DAC288();
        sub_224DAC298();
        sub_224AC1D9C(v45, v47);
        v85 = *(v87 + 8);
        v87 += 8;
        v85(v25, v48);
        v90 = *(v35 + 8);
        v90(v39, v104);
        v54 = v94;
        sub_224DAAD98();
        sub_224CBE434(v54);
        v55 = v102;
        v56 = *(v102 + 8);
        v57 = v54;
        v58 = v105;
        v91 = v102 + 8;
        v86 = v56;
        v56(v57, v105);
        swift_getObjectType();
        v59 = v96;
        v60 = v98;
        sub_224DAC428();
        if (v60)
        {

          (*(v55 + 56))(v59, 1, 1, v58);
        }

        v98 = 0;
        v61 = v103;
        v62 = v95;
        (*(v55 + 16))(v95, v103, v58);
        (*(v55 + 56))(v62, 0, 1, v58);
        v63 = v93;
        v64 = *(v92 + 48);
        sub_224A3796C(v62, v93, &unk_27D6F5630, &unk_224DB34C0);
        v92 = v64;
        v65 = v105;
        sub_224A3796C(v59, v63 + v64, &unk_27D6F5630, &unk_224DB34C0);
        v66 = v59;
        v67 = *(v55 + 48);
        if (v67(v63, 1, v65) == 1)
        {
          v68 = v65;
          sub_224A3311C(v62, &unk_27D6F5630, &unk_224DB34C0);
          sub_224A3311C(v66, &unk_27D6F5630, &unk_224DB34C0);
          v69 = v100;
          v70 = v85;
          v85(v97, v100);
          v70(v99, v69);
          v86(v103, v68);
          v90(v101, v104);
          if (v67(v63 + v92, 1, v68) == 1)
          {
            sub_224A3311C(v63, &unk_27D6F5630, &unk_224DB34C0);
            v52 = 0;
            return v52 & 1;
          }
        }

        else
        {
          v71 = v61;
          v72 = v88;
          sub_224A3796C(v63, v88, &unk_27D6F5630, &unk_224DB34C0);
          v73 = v92;
          if (v67(v63 + v92, 1, v65) != 1)
          {
            v79 = v63 + v73;
            v80 = v94;
            (*(v102 + 32))(v94, v79, v65);
            sub_224C41198(&qword_281351A10, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
            LODWORD(v102) = sub_224DAEDD8();
            v81 = v86;
            v86(v80, v65);
            sub_224A3311C(v95, &unk_27D6F5630, &unk_224DB34C0);
            sub_224A3311C(v96, &unk_27D6F5630, &unk_224DB34C0);
            v82 = v100;
            v83 = v85;
            v85(v97, v100);
            v83(v99, v82);
            v81(v71, v65);
            v90(v101, v104);
            v81(v88, v65);
            sub_224A3311C(v63, &unk_27D6F5630, &unk_224DB34C0);
            v52 = v102 ^ 1;
            return v52 & 1;
          }

          v74 = v65;
          v75 = v72;
          sub_224A3311C(v95, &unk_27D6F5630, &unk_224DB34C0);
          sub_224A3311C(v96, &unk_27D6F5630, &unk_224DB34C0);
          v76 = v100;
          v77 = v85;
          v85(v97, v100);
          v77(v99, v76);
          v78 = v86;
          v86(v71, v74);
          v90(v101, v104);
          v78(v75, v74);
        }

        sub_224A3311C(v63, &qword_27D6F56F8, &qword_224DBBCC8);
        v52 = 1;
        return v52 & 1;
      }

      sub_224AC1D9C(v45, v47);
    }

    v50 = *(v35 + 8);
    v51 = v104;
    v50(v39, v104);
    (*(v102 + 8))(v103, v105);
    v50(v101, v51);
    return v52 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_224C20D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = sub_224DA9908();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAC2B8();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DA9688();
  v42 = *(v14 - 8);
  v43 = v14;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v44 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16, v18);
  v21 = &v36 - v20;
  if (a3[85])
  {
    v22 = a3[86];
    v23 = a3[3];
    v24 = a3[8];
    v25 = __swift_project_boxed_opaque_existential_1(a3, v23);
    v45[3] = v23;
    v45[4] = *(v24 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v25, v23);
    v27 = v46;
    sub_224C58DD8(v21, v13, a1, a2, v45);
    if (!v27)
    {
      swift_getObjectType();
      sub_224DAC3F8();
      v28 = *(*(v22 + 16) + 16);
      sub_224DAC448();
      v46 = v28;
      v29 = v37;
      sub_224DAB008();
      sub_224DAC458();
      (*(v38 + 8))(v29, v39);
      v31 = v42;
      v30 = v43;
      (*(v42 + 8))(v21, v43);
      v32 = v36;
      (*(v40 + 32))(v36, v13, v41);
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5748, &qword_224DBBCD0) + 44);
      (*(v31 + 32))(v32 + v33, v44, v30);
      (*(v31 + 56))(v32 + v33, 0, 1, v30);
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5740, &qword_224DB3608) + 44);
      v35 = sub_224DAAE38();
      (*(*(v35 - 8) + 16))(v32 + v34, a2, v35);
    }

    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224C211C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v41 = a2;
  v35 = a4;
  v42 = sub_224DA9908();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v6);
  v39 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = sub_224DAAF48();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_224DAC268();
  v38 = *(v44 - 8);
  v16 = MEMORY[0x28223BE20](v44, v15);
  v37 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = v34 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v36 = v34 - v23;
  (*(v11 + 16))(v14, a1, v10);
  sub_224DAAEF8();
  v24 = sub_224DA96A8();
  v26 = v25;

  if (v26 >> 60 == 15)
  {
    sub_224C4DE90();
    swift_allocError();
    swift_willThrow();
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    sub_224DAAD38();
    sub_224C41198(&qword_27D6F56D0, MEMORY[0x277CF9978], MEMORY[0x277CF9998]);
    sub_224DAAD18();
    if (v4)
    {
      (*(v11 + 8))(v14, v10);
      return sub_224AC1D9C(v24, v26);
    }

    else
    {
      v34[2] = sub_224DAC248();
      v34[1] = sub_224DAC258();
      sub_224DAC218();
      v28 = v36;
      sub_224DAC228();
      sub_224AC1D9C(v24, v26);
      v29 = *(v38 + 8);
      v29(v21, v44);
      (*(v11 + 8))(v14, v10);
      v30 = v39;
      sub_224DAAD98();
      v31 = v37;
      sub_224B44A4C(v30, v37);
      (*(v40 + 8))(v30, v42);
      sub_224DAC9B8();
      sub_224C41198(&unk_281350D38, MEMORY[0x277CF9B18], MEMORY[0x277CF9A08]);
      sub_224DAC708();
      v32 = v44;
      v29(v31, v44);
      v29(v28, v32);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5740, &qword_224DB3608);
      return (*(*(v33 - 8) + 56))(v35, 1, 1, v33);
    }
  }
}

uint64_t sub_224C2170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v8 = sub_224DA9908();
  v7[27] = v8;
  v7[28] = *(v8 - 8);
  v7[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v7[30] = swift_task_alloc();
  v9 = sub_224DAAE38();
  v7[31] = v9;
  v7[32] = *(v9 - 8);
  v7[33] = swift_task_alloc();
  v7[34] = type metadata accessor for RemoteActivityLaunchMessage(0);
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v10 = sub_224DAB088();
  v7[37] = v10;
  v7[38] = *(v10 - 8);
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5610, &qword_224DBBC48);
  v7[41] = v11;
  v7[42] = *(v11 - 8);
  v7[43] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5618, &qword_224DBBC50);
  v7[44] = v12;
  v7[45] = *(v12 - 8);
  v7[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C219D8, 0, 0);
}

uint64_t sub_224C219D8()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 328);
  __swift_project_boxed_opaque_existential_1(*(v0 + 184), *(*(v0 + 184) + 24));
  sub_224DAAC18();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  *(v0 + 376) = 0;
  v4 = swift_task_alloc();
  *(v0 + 384) = v4;
  *v4 = v0;
  v4[1] = sub_224C21AF4;
  v5 = *(v0 + 352);

  return MEMORY[0x2822003E8](v0 + 168, 0, 0, v5);
}

uint64_t sub_224C21AF4()
{

  return MEMORY[0x2822009F8](sub_224C21BF0, 0, 0);
}

uint64_t sub_224C21BF0()
{
  v105 = v0;
  v1 = v0[21];
  v85 = v0 + 21;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v84 = (v0 + 8);
      v82 = v0 + 13;
      v83 = v0 + 2;
      v3 = v0[38];
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      swift_beginAccess();
      v5 = v4;
      v92 = *(v3 + 72);
      v94 = *(v3 + 16);
      v6 = v0[47];
      v103 = v0;
      do
      {
        v95 = v6;
        v101 = v5;
        v102 = v2;
        v8 = v0[24];
        (v94)(v0[40]);
        __swift_project_boxed_opaque_existential_1(v8, v8[3]);
        v9 = sub_224DAB078();
        v11 = v10;
        sub_224DAB038();
        v12 = sub_224C41198(&qword_2813545A0, type metadata accessor for RemoteActivityLaunchMessage, &unk_224DB6948);
        v13 = sub_224C41198(qword_2813545A8, type metadata accessor for RemoteActivityLaunchMessage, &unk_224DB6920);
        sub_224DAB098();
        if (v95)
        {
          sub_224A78024(v9, v11);
          if (qword_2813516C8 != -1)
          {
            swift_once();
          }

          v14 = sub_224DAB258();
          __swift_project_value_buffer(v14, qword_281365120);
          v15 = v95;
          v16 = sub_224DAB228();
          v17 = sub_224DAF288();

          v18 = os_log_type_enabled(v16, v17);
          v0 = v103;
          v19 = v103[40];
          v20 = v103[37];
          v21 = (v103[38] + 8);
          if (v18)
          {
            v22 = swift_slowAlloc();
            v97 = v19;
            v23 = swift_slowAlloc();
            v104[0] = v23;
            *v22 = 136446466;
            *(v22 + 4) = sub_224A33F74(0xD00000000000001BLL, 0x8000000224DCB290, v104);
            *(v22 + 12) = 2082;
            v85[1] = v95;
            v24 = v95;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
            v25 = sub_224DAEE28();
            v27 = sub_224A33F74(v25, v26, v104);

            *(v22 + 14) = v27;
            _os_log_impl(&dword_224A2F000, v16, v17, "Failed to decode message as %{public}s: %{public}s", v22, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v23, -1, -1);
            MEMORY[0x22AA5EED0](v22, -1, -1);

            (*v21)(v97, v20);
          }

          else
          {

            (*v21)(v19, v20);
          }
        }

        else
        {
          v86 = v12;
          v88 = v13;
          v29 = v0[35];
          v28 = v0[36];
          v30 = v0[32];
          v98 = v0[31];
          v31 = v0[29];
          v90 = v0[30];
          v32 = v0[28];
          v96 = v0[27];
          v33 = v0[25];
          sub_224A78024(v9, v11);
          sub_224C4E3D4(v29, v28, type metadata accessor for RemoteActivityLaunchMessage);
          __swift_project_boxed_opaque_existential_1(v33, v33[3]);
          sub_224DAB048();
          sub_224DAAC98();
          v34 = *(v32 + 8);
          v34(v31, v96);
          if ((*(v30 + 48))(v90, 1, v98) == 1)
          {
            sub_224A3311C(v0[30], &qword_27D6F3320, &unk_224DBD6F0);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v35 = v0[39];
            v36 = v0[40];
            v37 = v0[37];
            v38 = sub_224DAB258();
            __swift_project_value_buffer(v38, qword_281365120);
            v94(v35, v36, v37);
            v39 = sub_224DAB228();
            v40 = sub_224DAF288();
            v41 = os_log_type_enabled(v39, v40);
            v42 = v0[39];
            v43 = v0[40];
            v45 = v0[37];
            v44 = v0[38];
            v46 = v0[36];
            if (v41)
            {
              v87 = v0[37];
              v47 = v0[29];
              v93 = v0[36];
              v48 = v0[27];
              v99 = v34;
              v49 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              v104[0] = v89;
              *v49 = 136446210;
              sub_224DAB048();
              sub_224C41198(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v50 = sub_224DAFD28();
              v91 = v43;
              v52 = v51;
              v99(v47, v48);
              v53 = *(v44 + 8);
              v53(v42, v87);
              v54 = sub_224A33F74(v50, v52, v104);

              *(v49 + 4) = v54;
              _os_log_impl(&dword_224A2F000, v39, v40, "No relationship found with id: %{public}s", v49, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v89);
              MEMORY[0x22AA5EED0](v89, -1, -1);
              MEMORY[0x22AA5EED0](v49, -1, -1);

              sub_224C4E374(v93, type metadata accessor for RemoteActivityLaunchMessage);
              v53(v91, v87);
            }

            else
            {

              v70 = *(v44 + 8);
              v70(v42, v45);
              sub_224C4E374(v46, type metadata accessor for RemoteActivityLaunchMessage);
              v70(v43, v45);
            }
          }

          else
          {
            v100 = v34;
            (*(v0[32] + 32))(v0[33], v0[30], v0[31]);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v55 = sub_224DAB258();
            __swift_project_value_buffer(v55, qword_281365120);
            v56 = sub_224DAB228();
            v57 = sub_224DAF2A8();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v104[0] = v59;
              *v58 = 136446210;
              *(v58 + 4) = sub_224A33F74(0xD00000000000001BLL, 0x8000000224DCB290, v104);
              _os_log_impl(&dword_224A2F000, v56, v57, "Decoded valid message as %{public}s", v58, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v59);
              MEMORY[0x22AA5EED0](v59, -1, -1);
              MEMORY[0x22AA5EED0](v58, -1, -1);
            }

            sub_224A3796C(v0[26] + 152, v84, &qword_27D6F3F88, &unk_224DB53D0);
            if (v0[11])
            {
              v60 = v0[36];
              v61 = v103[34];
              v62 = v103[29];
              v63 = v103[27];
              sub_224A3317C(v84, v82);
              sub_224A3311C(v84, &qword_27D6F3F88, &unk_224DB53D0);
              v64 = v103[16];
              v65 = v103[17];
              __swift_project_boxed_opaque_existential_1(v82, v64);
              v103[5] = v61;
              v0 = v103;
              v103[6] = v86;
              v103[7] = v88;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v83);
              sub_224C4E30C(v60, boxed_opaque_existential_1, type metadata accessor for RemoteActivityLaunchMessage);
              sub_224DAADF8();
              v67 = sub_224DA9898();
              v69 = v68;
              v100(v62, v63);
              (*(v65 + 8))(v83, v67, v69, v64, v65);

              __swift_destroy_boxed_opaque_existential_1(v83);
              __swift_destroy_boxed_opaque_existential_1(v82);
            }

            else
            {
              sub_224A3311C(v84, &qword_27D6F3F88, &unk_224DB53D0);
            }

            v71 = v0[40];
            v72 = v103[38];
            v73 = v103[37];
            v74 = v103[36];
            v75 = v103[33];
            v76 = v103[32];
            v77 = v103[31];
            sub_224C2644C(v71, sub_224D741AC);
            (*(v76 + 8))(v75, v77);
            sub_224C4E374(v74, type metadata accessor for RemoteActivityLaunchMessage);
            (*(v72 + 8))(v71, v73);
            v0 = v103;
          }
        }

        v6 = 0;
        v7 = 0;
        v5 = v101 + v92;
        v2 = v102 - 1;
      }

      while (v102 != 1);
    }

    else
    {
      v7 = v0[47];
    }

    v0[47] = v7;
    v80 = swift_task_alloc();
    v0[48] = v80;
    *v80 = v0;
    v80[1] = sub_224C21AF4;
    v81 = v0[44];

    return MEMORY[0x2822003E8](v85, 0, 0, v81);
  }

  else
  {
    (*(v0[45] + 8))(v0[46], v0[44]);

    v78 = v0[1];

    return v78();
  }
}

uint64_t sub_224C22780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  v8 = sub_224DA9908();
  v7[29] = v8;
  v7[30] = *(v8 - 8);
  v7[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v7[32] = swift_task_alloc();
  v9 = sub_224DAAE38();
  v7[33] = v9;
  v7[34] = *(v9 - 8);
  v7[35] = swift_task_alloc();
  v10 = sub_224DAB088();
  v7[36] = v10;
  v7[37] = *(v10 - 8);
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5610, &qword_224DBBC48);
  v7[40] = v11;
  v7[41] = *(v11 - 8);
  v7[42] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5618, &qword_224DBBC50);
  v7[43] = v12;
  v7[44] = *(v12 - 8);
  v7[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C22A10, 0, 0);
}

uint64_t sub_224C22A10()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1(*(v0 + 200), *(*(v0 + 200) + 24));
  sub_224DAAC18();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  *(v0 + 368) = 0;
  v4 = swift_task_alloc();
  *(v0 + 376) = v4;
  *v4 = v0;
  v4[1] = sub_224C22B2C;
  v5 = *(v0 + 344);

  return MEMORY[0x2822003E8](v0 + 184, 0, 0, v5);
}

uint64_t sub_224C22B2C()
{

  return MEMORY[0x2822009F8](sub_224C22C28, 0, 0);
}

uint64_t sub_224C22C28()
{
  v96 = v0;
  v1 = v0[23];
  v81 = v0 + 23;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v80 = (v0 + 8);
      v78 = v0 + 13;
      v79 = v0 + 2;
      v3 = v92[37];
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      swift_beginAccess();
      v5 = v4;
      v90 = *(v3 + 72);
      v91 = *(v3 + 16);
      v6 = v92[46];
      do
      {
        v93 = v5;
        v94 = v2;
        v8 = v92[26];
        (v91)(v92[39]);
        __swift_project_boxed_opaque_existential_1(v8, v8[3]);
        v9 = sub_224DAB078();
        v11 = v10;
        sub_224DAB038();
        v12 = sub_224B3DCA0();
        v13 = sub_224B3DCF4();
        sub_224DAB098();
        if (v6)
        {
          sub_224A78024(v9, v11);
          if (qword_2813516C8 != -1)
          {
            swift_once();
          }

          v14 = sub_224DAB258();
          __swift_project_value_buffer(v14, qword_281365120);
          v15 = v6;
          v16 = sub_224DAB228();
          v17 = sub_224DAF288();

          v18 = os_log_type_enabled(v16, v17);
          v19 = v92[39];
          v20 = v92[36];
          v21 = (v92[37] + 8);
          if (v18)
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v95[0] = v23;
            *v22 = 136446466;
            *(v22 + 4) = sub_224A33F74(0xD000000000000010, 0x8000000224DCB2F0, v95);
            *(v22 + 12) = 2082;
            v81[1] = v6;
            v24 = v6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
            v25 = sub_224DAEE28();
            v27 = sub_224A33F74(v25, v26, v95);

            *(v22 + 14) = v27;
            _os_log_impl(&dword_224A2F000, v16, v17, "Failed to decode message as %{public}s: %{public}s", v22, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v23, -1, -1);
            v2 = v94;
            MEMORY[0x22AA5EED0](v22, -1, -1);
          }

          else
          {
          }

          (*v21)(v19, v20);
        }

        else
        {
          v84 = v12;
          v83 = v13;
          v28 = v92[34];
          v87 = v92[33];
          v30 = v92[31];
          v29 = v92[32];
          v31 = v92[29];
          v32 = v92[30];
          v33 = v92[27];
          sub_224A78024(v9, v11);
          v82 = v92[21];
          v89 = v92[22];
          __swift_project_boxed_opaque_existential_1(v33, v33[3]);
          sub_224DAB048();
          sub_224DAAC98();
          v34 = *(v32 + 8);
          v34(v30, v31);
          if ((*(v28 + 48))(v29, 1, v87) == 1)
          {
            sub_224A3311C(v92[32], &qword_27D6F3320, &unk_224DBD6F0);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v35 = v92[38];
            v36 = v92[39];
            v37 = v92[36];
            v38 = sub_224DAB258();
            __swift_project_value_buffer(v38, qword_281365120);
            v91(v35, v36, v37);
            v39 = sub_224DAB228();
            v40 = sub_224DAF288();
            v41 = os_log_type_enabled(v39, v40);
            v43 = v92[38];
            v42 = v92[39];
            v44 = v92[36];
            v45 = (v92[37] + 8);
            if (v41)
            {
              v88 = v34;
              v46 = v92[31];
              v85 = v92[36];
              v47 = v92[29];
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              v95[0] = v49;
              *v48 = 136446210;
              sub_224DAB048();
              sub_224C41198(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v50 = sub_224DAFD28();
              v86 = v42;
              v52 = v51;
              v88(v46, v47);
              v53 = *v45;
              (*v45)(v43, v85);
              v54 = sub_224A33F74(v50, v52, v95);

              *(v48 + 4) = v54;
              _os_log_impl(&dword_224A2F000, v39, v40, "No relationship found with id: %{public}s", v48, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v49);
              MEMORY[0x22AA5EED0](v49, -1, -1);
              MEMORY[0x22AA5EED0](v48, -1, -1);

              v53(v86, v85);
            }

            else
            {

              v67 = *v45;
              (*v45)(v43, v44);
              v67(v42, v44);
            }
          }

          else
          {
            (*(v92[34] + 32))(v92[35], v92[32], v92[33]);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v55 = sub_224DAB258();
            __swift_project_value_buffer(v55, qword_281365120);
            v56 = sub_224DAB228();
            v57 = sub_224DAF2A8();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v95[0] = v59;
              *v58 = 136446210;
              *(v58 + 4) = sub_224A33F74(0xD000000000000010, 0x8000000224DCB2F0, v95);
              _os_log_impl(&dword_224A2F000, v56, v57, "Decoded valid message as %{public}s", v58, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v59);
              MEMORY[0x22AA5EED0](v59, -1, -1);
              MEMORY[0x22AA5EED0](v58, -1, -1);
            }

            sub_224A3796C(v92[28] + 152, v80, &qword_27D6F3F88, &unk_224DB53D0);
            if (v92[11])
            {
              v60 = v92[31];
              v61 = v92[29];
              sub_224A3317C(v80, v78);
              sub_224A3311C(v80, &qword_27D6F3F88, &unk_224DB53D0);
              v62 = v92[16];
              v63 = v92[17];
              __swift_project_boxed_opaque_existential_1(v78, v62);
              v92[5] = &type metadata for DiscoveryMessage;
              v92[6] = v84;
              v92[7] = v83;
              v92[2] = v82;
              v92[3] = v89;

              sub_224DAADF8();
              v64 = sub_224DA9898();
              v66 = v65;
              v34(v60, v61);
              (*(v63 + 8))(v79, v64, v66, v62, v63);

              __swift_destroy_boxed_opaque_existential_1(v79);
              __swift_destroy_boxed_opaque_existential_1(v78);
            }

            else
            {
              sub_224A3311C(v80, &qword_27D6F3F88, &unk_224DB53D0);
            }

            v68 = v92[39];
            v69 = v92[36];
            v70 = v92[37];
            v72 = v92[34];
            v71 = v92[35];
            v73 = v92[33];
            sub_224C2644C(v68, sub_224D741DC);

            (*(v72 + 8))(v71, v73);
            (*(v70 + 8))(v68, v69);
          }

          v2 = v94;
        }

        v6 = 0;
        v7 = 0;
        v5 = v93 + v90;
        --v2;
      }

      while (v2);
    }

    else
    {
      v7 = v92[46];
    }

    v92[46] = v7;
    v76 = swift_task_alloc();
    v92[47] = v76;
    *v76 = v92;
    v76[1] = sub_224C22B2C;
    v77 = v92[43];

    return MEMORY[0x2822003E8](v81, 0, 0, v77);
  }

  else
  {
    (*(v0[44] + 8))(v0[45], v0[43]);

    v74 = v0[1];

    return v74();
  }
}

uint64_t sub_224C23694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[24] = a4;
  v7[25] = a5;
  v8 = sub_224DA9908();
  v7[28] = v8;
  v7[29] = *(v8 - 8);
  v7[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v7[31] = swift_task_alloc();
  v9 = sub_224DAAE38();
  v7[32] = v9;
  v7[33] = *(v9 - 8);
  v7[34] = swift_task_alloc();
  v10 = sub_224DAB088();
  v7[35] = v10;
  v7[36] = *(v10 - 8);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5610, &qword_224DBBC48);
  v7[39] = v11;
  v7[40] = *(v11 - 8);
  v7[41] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5618, &qword_224DBBC50);
  v7[42] = v12;
  v7[43] = *(v12 - 8);
  v7[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C23924, 0, 0);
}

uint64_t sub_224C23924()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  __swift_project_boxed_opaque_existential_1(*(v0 + 192), *(*(v0 + 192) + 24));
  sub_224DAAC18();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  *(v0 + 360) = 0;
  v4 = swift_task_alloc();
  *(v0 + 368) = v4;
  *v4 = v0;
  v4[1] = sub_224C23A40;
  v5 = *(v0 + 336);

  return MEMORY[0x2822003E8](v0 + 168, 0, 0, v5);
}

uint64_t sub_224C23A40()
{

  return MEMORY[0x2822009F8](sub_224C23B3C, 0, 0);
}

uint64_t sub_224C23B3C()
{
  v96 = v0;
  v1 = v0[21];
  v91 = v0 + 21;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v81 = (v0 + 8);
      v79 = v0 + 13;
      v80 = v0 + 2;
      v3 = v92[36];
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      swift_beginAccess();
      v5 = v4;
      v89 = *(v3 + 72);
      v90 = *(v3 + 16);
      v6 = v92[45];
      while (1)
      {
        v93 = v5;
        v94 = v2;
        v16 = v92[25];
        (v90)(v92[38]);
        __swift_project_boxed_opaque_existential_1(v16, v16[3]);
        v17 = sub_224DAB078();
        v19 = v18;
        sub_224DAB038();
        v20 = sub_224B3D9B8();
        v21 = sub_224B3DA0C();
        sub_224DAB098();
        if (v6)
        {
          sub_224A78024(v17, v19);
          if (qword_2813516C8 != -1)
          {
            swift_once();
          }

          v22 = sub_224DAB258();
          __swift_project_value_buffer(v22, qword_281365120);
          v23 = v6;
          v24 = sub_224DAB228();
          v25 = sub_224DAF288();

          v26 = os_log_type_enabled(v24, v25);
          v27 = v92[38];
          v28 = v92[35];
          v29 = (v92[36] + 8);
          if (!v26)
          {

            (*v29)(v27, v28);
            v14 = v93;
            v13 = v94;
            goto LABEL_6;
          }

          v7 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v95[0] = v8;
          *v7 = 136446466;
          *(v7 + 4) = sub_224A33F74(0xD000000000000010, 0x8000000224DCB340, v95);
          *(v7 + 12) = 2082;
          v91[2] = v6;
          v9 = v6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
          v10 = sub_224DAEE28();
          v12 = sub_224A33F74(v10, v11, v95);

          *(v7 + 14) = v12;
          _os_log_impl(&dword_224A2F000, v24, v25, "Failed to decode message as %{public}s: %{public}s", v7, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v8, -1, -1);
          v13 = v94;
          MEMORY[0x22AA5EED0](v7, -1, -1);

          (*v29)(v27, v28);
        }

        else
        {
          v83 = v20;
          v82 = v21;
          v30 = v92[33];
          v86 = v92[32];
          v32 = v92[30];
          v31 = v92[31];
          v33 = v92[28];
          v34 = v92[29];
          v35 = v92[26];
          sub_224A78024(v17, v19);
          v88 = v92[22];
          __swift_project_boxed_opaque_existential_1(v35, v35[3]);
          sub_224DAB048();
          sub_224DAAC98();
          v85 = *(v34 + 8);
          v85(v32, v33);
          if ((*(v30 + 48))(v31, 1, v86) == 1)
          {
            sub_224A3311C(v92[31], &qword_27D6F3320, &unk_224DBD6F0);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v36 = v92[37];
            v37 = v92[38];
            v38 = v92[35];
            v39 = sub_224DAB258();
            __swift_project_value_buffer(v39, qword_281365120);
            v90(v36, v37, v38);
            v40 = sub_224DAB228();
            v41 = sub_224DAF288();
            v42 = os_log_type_enabled(v40, v41);
            v44 = v92[37];
            v43 = v92[38];
            v45 = v92[35];
            v46 = (v92[36] + 8);
            if (v42)
            {
              v84 = v92[35];
              v47 = v92[30];
              v48 = v92[28];
              v49 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              v95[0] = v50;
              *v49 = 136446210;
              sub_224DAB048();
              sub_224C41198(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v51 = sub_224DAFD28();
              v87 = v43;
              v53 = v52;
              v85(v47, v48);
              v54 = *v46;
              (*v46)(v44, v84);
              v55 = sub_224A33F74(v51, v53, v95);

              *(v49 + 4) = v55;
              _os_log_impl(&dword_224A2F000, v40, v41, "No relationship found with id: %{public}s", v49, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v50);
              MEMORY[0x22AA5EED0](v50, -1, -1);
              MEMORY[0x22AA5EED0](v49, -1, -1);

              v54(v87, v84);
            }

            else
            {

              v68 = *v46;
              (*v46)(v44, v45);
              v68(v43, v45);
            }
          }

          else
          {
            (*(v92[33] + 32))(v92[34], v92[31], v92[32]);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v56 = sub_224DAB258();
            __swift_project_value_buffer(v56, qword_281365120);
            v57 = sub_224DAB228();
            v58 = sub_224DAF2A8();
            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v95[0] = v60;
              *v59 = 136446210;
              *(v59 + 4) = sub_224A33F74(0xD000000000000010, 0x8000000224DCB340, v95);
              _os_log_impl(&dword_224A2F000, v57, v58, "Decoded valid message as %{public}s", v59, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v60);
              MEMORY[0x22AA5EED0](v60, -1, -1);
              MEMORY[0x22AA5EED0](v59, -1, -1);
            }

            sub_224A3796C(v92[27] + 152, v81, &qword_27D6F3F88, &unk_224DB53D0);
            if (v92[11])
            {
              v61 = v92[30];
              v62 = v92[28];
              sub_224A3317C(v81, v79);
              sub_224A3311C(v81, &qword_27D6F3F88, &unk_224DB53D0);
              v63 = v92[16];
              v64 = v92[17];
              __swift_project_boxed_opaque_existential_1(v79, v63);
              v92[5] = &type metadata for StalenessMessage;
              v92[6] = v83;
              v92[7] = v82;
              v92[2] = v88;

              sub_224DAADF8();
              v65 = sub_224DA9898();
              v67 = v66;
              v85(v61, v62);
              (*(v64 + 8))(v80, v65, v67, v63, v64);

              __swift_destroy_boxed_opaque_existential_1(v80);
              __swift_destroy_boxed_opaque_existential_1(v79);
            }

            else
            {
              sub_224A3311C(v81, &qword_27D6F3F88, &unk_224DB53D0);
            }

            v69 = v92[38];
            v70 = v92[35];
            v71 = v92[36];
            v73 = v92[33];
            v72 = v92[34];
            v74 = v92[32];
            sub_224C2644C(v69, sub_224D74954);

            (*(v73 + 8))(v72, v74);
            (*(v71 + 8))(v69, v70);
          }

          v13 = v94;
        }

        v14 = v93;
LABEL_6:
        v6 = 0;
        v15 = 0;
        v5 = v14 + v89;
        v2 = v13 - 1;
        if (!v2)
        {
          goto LABEL_31;
        }
      }
    }

    v15 = v92[45];
LABEL_31:

    v92[45] = v15;
    v77 = swift_task_alloc();
    v92[46] = v77;
    *v77 = v92;
    v77[1] = sub_224C23A40;
    v78 = v92[42];

    return MEMORY[0x2822003E8](v91, 0, 0, v78);
  }

  else
  {
    (*(v0[43] + 8))(v0[44], v0[42]);

    v75 = v0[1];

    return v75();
  }
}

uint64_t sub_224C245AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[24] = a4;
  v7[25] = a5;
  v8 = sub_224DA9908();
  v7[28] = v8;
  v7[29] = *(v8 - 8);
  v7[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v7[31] = swift_task_alloc();
  v9 = sub_224DAAE38();
  v7[32] = v9;
  v7[33] = *(v9 - 8);
  v7[34] = swift_task_alloc();
  v10 = sub_224DAB088();
  v7[35] = v10;
  v7[36] = *(v10 - 8);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5610, &qword_224DBBC48);
  v7[39] = v11;
  v7[40] = *(v11 - 8);
  v7[41] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5618, &qword_224DBBC50);
  v7[42] = v12;
  v7[43] = *(v12 - 8);
  v7[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C2483C, 0, 0);
}

uint64_t sub_224C2483C()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  __swift_project_boxed_opaque_existential_1(*(v0 + 192), *(*(v0 + 192) + 24));
  sub_224DAAC18();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  *(v0 + 360) = 0;
  v4 = swift_task_alloc();
  *(v0 + 368) = v4;
  *v4 = v0;
  v4[1] = sub_224C24958;
  v5 = *(v0 + 336);

  return MEMORY[0x2822003E8](v0 + 168, 0, 0, v5);
}

uint64_t sub_224C24958()
{

  return MEMORY[0x2822009F8](sub_224C24A54, 0, 0);
}

uint64_t sub_224C24A54()
{
  v96 = v0;
  v1 = v0[21];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v80 = (v0 + 8);
      v78 = v0 + 13;
      v79 = v0 + 2;
      v3 = v0[36];
      v88 = type metadata accessor for ControlInteractionMessage(0);
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      swift_beginAccess();
      v5 = v4;
      v87 = *(v3 + 72);
      v92 = *(v3 + 16);
      v6 = v0[45];
      do
      {
        v93 = v5;
        v94 = v2;
        v8 = v0[25];
        (v92)(v0[38]);
        __swift_project_boxed_opaque_existential_1(v8, v8[3]);
        v9 = sub_224DAB078();
        v11 = v10;
        sub_224DAB038();
        v12 = sub_224C41198(&qword_281355990, type metadata accessor for ControlInteractionMessage, &unk_224DB6A48);
        v13 = sub_224C41198(qword_281355998, type metadata accessor for ControlInteractionMessage, &unk_224DB6A20);
        sub_224DAB098();
        if (v6)
        {
          sub_224A78024(v9, v11);
          if (qword_2813516C8 != -1)
          {
            swift_once();
          }

          v14 = sub_224DAB258();
          __swift_project_value_buffer(v14, qword_281365120);
          v15 = v6;
          v16 = sub_224DAB228();
          v17 = sub_224DAF288();

          v18 = os_log_type_enabled(v16, v17);
          v19 = v0[38];
          v20 = v0[35];
          v21 = (v0[36] + 8);
          if (v18)
          {
            v22 = swift_slowAlloc();
            v89 = v19;
            v23 = swift_slowAlloc();
            v95[0] = v23;
            *v22 = 136446466;
            *(v22 + 4) = sub_224A33F74(0xD000000000000019, 0x8000000224DCB250, v95);
            *(v22 + 12) = 2082;
            v0[23] = v6;
            v24 = v6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
            v25 = sub_224DAEE28();
            v27 = sub_224A33F74(v25, v26, v95);

            *(v22 + 14) = v27;
            _os_log_impl(&dword_224A2F000, v16, v17, "Failed to decode message as %{public}s: %{public}s", v22, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v23, -1, -1);
            MEMORY[0x22AA5EED0](v22, -1, -1);

            (*v21)(v89, v20);
          }

          else
          {

            (*v21)(v19, v20);
          }
        }

        else
        {
          v81 = v13;
          v82 = v12;
          v28 = v0[33];
          v84 = v0[32];
          v30 = v0[30];
          v29 = v0[31];
          v31 = v0[28];
          v32 = v0[29];
          v33 = v0[26];
          sub_224A78024(v9, v11);
          v86 = v0[22];
          __swift_project_boxed_opaque_existential_1(v33, v33[3]);
          sub_224DAB048();
          sub_224DAAC98();
          v34 = *(v32 + 8);
          v34(v30, v31);
          if ((*(v28 + 48))(v29, 1, v84) == 1)
          {
            sub_224A3311C(v0[31], &qword_27D6F3320, &unk_224DBD6F0);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v35 = v0[37];
            v36 = v0[38];
            v37 = v0[35];
            v38 = sub_224DAB258();
            __swift_project_value_buffer(v38, qword_281365120);
            v92(v35, v36, v37);
            v39 = sub_224DAB228();
            v40 = sub_224DAF288();
            v41 = os_log_type_enabled(v39, v40);
            v42 = v0[37];
            v43 = v0[38];
            v44 = v0[35];
            v45 = (v0[36] + 8);
            if (v41)
            {
              v46 = v0[30];
              v83 = v0[35];
              v47 = v0[28];
              v90 = v0[38];
              v48 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v95[0] = v85;
              *v48 = 136446210;
              sub_224DAB048();
              sub_224C41198(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v49 = sub_224DAFD28();
              v50 = v34;
              v52 = v51;
              v50(v46, v47);
              v53 = *v45;
              (*v45)(v42, v83);
              v54 = sub_224A33F74(v49, v52, v95);

              *(v48 + 4) = v54;
              _os_log_impl(&dword_224A2F000, v39, v40, "No relationship found with id: %{public}s", v48, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v85);
              MEMORY[0x22AA5EED0](v85, -1, -1);
              MEMORY[0x22AA5EED0](v48, -1, -1);

              v53(v90, v83);
            }

            else
            {

              v67 = *v45;
              (*v45)(v42, v44);
              v67(v43, v44);
            }
          }

          else
          {
            v91 = v34;
            (*(v0[33] + 32))(v0[34], v0[31], v0[32]);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v55 = sub_224DAB258();
            __swift_project_value_buffer(v55, qword_281365120);
            v56 = sub_224DAB228();
            v57 = sub_224DAF2A8();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v95[0] = v59;
              *v58 = 136446210;
              *(v58 + 4) = sub_224A33F74(0xD000000000000019, 0x8000000224DCB250, v95);
              _os_log_impl(&dword_224A2F000, v56, v57, "Decoded valid message as %{public}s", v58, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v59);
              MEMORY[0x22AA5EED0](v59, -1, -1);
              MEMORY[0x22AA5EED0](v58, -1, -1);
            }

            sub_224A3796C(v0[27] + 152, v80, &qword_27D6F3F88, &unk_224DB53D0);
            if (v0[11])
            {
              v60 = v0[30];
              v61 = v0[28];
              sub_224A3317C(v80, v78);
              sub_224A3311C(v80, &qword_27D6F3F88, &unk_224DB53D0);
              v62 = v0[16];
              v63 = v0[17];
              __swift_project_boxed_opaque_existential_1(v78, v62);
              v0[5] = v88;
              v0[6] = v82;
              v0[7] = v81;
              v0[2] = v86;

              sub_224DAADF8();
              v64 = sub_224DA9898();
              v66 = v65;
              v91(v60, v61);
              (*(v63 + 8))(v79, v64, v66, v62, v63);

              __swift_destroy_boxed_opaque_existential_1(v79);
              __swift_destroy_boxed_opaque_existential_1(v78);
            }

            else
            {
              sub_224A3311C(v80, &qword_27D6F3F88, &unk_224DB53D0);
            }

            v68 = v0[38];
            v69 = v0[35];
            v70 = v0[36];
            v72 = v0[33];
            v71 = v0[34];
            v73 = v0[32];
            sub_224C2644C(v68, sub_224D74984);

            (*(v72 + 8))(v71, v73);
            (*(v70 + 8))(v68, v69);
          }
        }

        v6 = 0;
        v7 = 0;
        v5 = v93 + v87;
        v2 = v94 - 1;
      }

      while (v94 != 1);
    }

    else
    {
      v7 = v0[45];
    }

    v0[45] = v7;
    v76 = swift_task_alloc();
    v0[46] = v76;
    *v76 = v0;
    v76[1] = sub_224C24958;
    v77 = v0[42];

    return MEMORY[0x2822003E8](v0 + 21, 0, 0, v77);
  }

  else
  {
    (*(v0[43] + 8))(v0[44], v0[42]);

    v74 = v0[1];

    return v74();
  }
}

uint64_t sub_224C254FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[24] = a4;
  v7[25] = a5;
  v8 = sub_224DA9908();
  v7[28] = v8;
  v7[29] = *(v8 - 8);
  v7[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v7[31] = swift_task_alloc();
  v9 = sub_224DAAE38();
  v7[32] = v9;
  v7[33] = *(v9 - 8);
  v7[34] = swift_task_alloc();
  v10 = sub_224DAB088();
  v7[35] = v10;
  v7[36] = *(v10 - 8);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5610, &qword_224DBBC48);
  v7[39] = v11;
  v7[40] = *(v11 - 8);
  v7[41] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5618, &qword_224DBBC50);
  v7[42] = v12;
  v7[43] = *(v12 - 8);
  v7[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C2578C, 0, 0);
}

uint64_t sub_224C2578C()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  __swift_project_boxed_opaque_existential_1(*(v0 + 192), *(*(v0 + 192) + 24));
  sub_224DAAC18();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  *(v0 + 360) = 0;
  v4 = swift_task_alloc();
  *(v0 + 368) = v4;
  *v4 = v0;
  v4[1] = sub_224C258A8;
  v5 = *(v0 + 336);

  return MEMORY[0x2822003E8](v0 + 168, 0, 0, v5);
}

uint64_t sub_224C258A8()
{

  return MEMORY[0x2822009F8](sub_224C259A4, 0, 0);
}

uint64_t sub_224C259A4()
{
  v96 = v0;
  v1 = v0[21];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v80 = (v0 + 8);
      v78 = v0 + 13;
      v79 = v0 + 2;
      v3 = v0[36];
      v88 = type metadata accessor for InteractionMessage();
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      swift_beginAccess();
      v5 = v4;
      v87 = *(v3 + 72);
      v92 = *(v3 + 16);
      v6 = v0[45];
      do
      {
        v93 = v5;
        v94 = v2;
        v8 = v0[25];
        (v92)(v0[38]);
        __swift_project_boxed_opaque_existential_1(v8, v8[3]);
        v9 = sub_224DAB078();
        v11 = v10;
        sub_224DAB038();
        v12 = sub_224C41198(&unk_281359D90, type metadata accessor for InteractionMessage, &unk_224DB6ADC);
        v13 = sub_224C41198(qword_281359DA0, type metadata accessor for InteractionMessage, &unk_224DB6AB4);
        sub_224DAB098();
        if (v6)
        {
          sub_224A78024(v9, v11);
          if (qword_2813516C8 != -1)
          {
            swift_once();
          }

          v14 = sub_224DAB258();
          __swift_project_value_buffer(v14, qword_281365120);
          v15 = v6;
          v16 = sub_224DAB228();
          v17 = sub_224DAF288();

          v18 = os_log_type_enabled(v16, v17);
          v19 = v0[38];
          v20 = v0[35];
          v21 = (v0[36] + 8);
          if (v18)
          {
            v22 = swift_slowAlloc();
            v89 = v19;
            v23 = swift_slowAlloc();
            v95[0] = v23;
            *v22 = 136446466;
            *(v22 + 4) = sub_224A33F74(0xD000000000000012, 0x8000000224DCB270, v95);
            *(v22 + 12) = 2082;
            v0[23] = v6;
            v24 = v6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
            v25 = sub_224DAEE28();
            v27 = sub_224A33F74(v25, v26, v95);

            *(v22 + 14) = v27;
            _os_log_impl(&dword_224A2F000, v16, v17, "Failed to decode message as %{public}s: %{public}s", v22, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v23, -1, -1);
            MEMORY[0x22AA5EED0](v22, -1, -1);

            (*v21)(v89, v20);
          }

          else
          {

            (*v21)(v19, v20);
          }
        }

        else
        {
          v81 = v13;
          v82 = v12;
          v28 = v0[33];
          v84 = v0[32];
          v30 = v0[30];
          v29 = v0[31];
          v31 = v0[28];
          v32 = v0[29];
          v33 = v0[26];
          sub_224A78024(v9, v11);
          v86 = v0[22];
          __swift_project_boxed_opaque_existential_1(v33, v33[3]);
          sub_224DAB048();
          sub_224DAAC98();
          v34 = *(v32 + 8);
          v34(v30, v31);
          if ((*(v28 + 48))(v29, 1, v84) == 1)
          {
            sub_224A3311C(v0[31], &qword_27D6F3320, &unk_224DBD6F0);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v35 = v0[37];
            v36 = v0[38];
            v37 = v0[35];
            v38 = sub_224DAB258();
            __swift_project_value_buffer(v38, qword_281365120);
            v92(v35, v36, v37);
            v39 = sub_224DAB228();
            v40 = sub_224DAF288();
            v41 = os_log_type_enabled(v39, v40);
            v42 = v0[37];
            v43 = v0[38];
            v44 = v0[35];
            v45 = (v0[36] + 8);
            if (v41)
            {
              v46 = v0[30];
              v83 = v0[35];
              v47 = v0[28];
              v90 = v0[38];
              v48 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v95[0] = v85;
              *v48 = 136446210;
              sub_224DAB048();
              sub_224C41198(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v49 = sub_224DAFD28();
              v50 = v34;
              v52 = v51;
              v50(v46, v47);
              v53 = *v45;
              (*v45)(v42, v83);
              v54 = sub_224A33F74(v49, v52, v95);

              *(v48 + 4) = v54;
              _os_log_impl(&dword_224A2F000, v39, v40, "No relationship found with id: %{public}s", v48, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v85);
              MEMORY[0x22AA5EED0](v85, -1, -1);
              MEMORY[0x22AA5EED0](v48, -1, -1);

              v53(v90, v83);
            }

            else
            {

              v67 = *v45;
              (*v45)(v42, v44);
              v67(v43, v44);
            }
          }

          else
          {
            v91 = v34;
            (*(v0[33] + 32))(v0[34], v0[31], v0[32]);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v55 = sub_224DAB258();
            __swift_project_value_buffer(v55, qword_281365120);
            v56 = sub_224DAB228();
            v57 = sub_224DAF2A8();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v95[0] = v59;
              *v58 = 136446210;
              *(v58 + 4) = sub_224A33F74(0xD000000000000012, 0x8000000224DCB270, v95);
              _os_log_impl(&dword_224A2F000, v56, v57, "Decoded valid message as %{public}s", v58, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v59);
              MEMORY[0x22AA5EED0](v59, -1, -1);
              MEMORY[0x22AA5EED0](v58, -1, -1);
            }

            sub_224A3796C(v0[27] + 152, v80, &qword_27D6F3F88, &unk_224DB53D0);
            if (v0[11])
            {
              v60 = v0[30];
              v61 = v0[28];
              sub_224A3317C(v80, v78);
              sub_224A3311C(v80, &qword_27D6F3F88, &unk_224DB53D0);
              v62 = v0[16];
              v63 = v0[17];
              __swift_project_boxed_opaque_existential_1(v78, v62);
              v0[5] = v88;
              v0[6] = v82;
              v0[7] = v81;
              v0[2] = v86;

              sub_224DAADF8();
              v64 = sub_224DA9898();
              v66 = v65;
              v91(v60, v61);
              (*(v63 + 8))(v79, v64, v66, v62, v63);

              __swift_destroy_boxed_opaque_existential_1(v79);
              __swift_destroy_boxed_opaque_existential_1(v78);
            }

            else
            {
              sub_224A3311C(v80, &qword_27D6F3F88, &unk_224DB53D0);
            }

            v68 = v0[38];
            v69 = v0[35];
            v70 = v0[36];
            v72 = v0[33];
            v71 = v0[34];
            v73 = v0[32];
            sub_224C2644C(v68, sub_224D749B4);

            (*(v72 + 8))(v71, v73);
            (*(v70 + 8))(v68, v69);
          }
        }

        v6 = 0;
        v7 = 0;
        v5 = v93 + v87;
        v2 = v94 - 1;
      }

      while (v94 != 1);
    }

    else
    {
      v7 = v0[45];
    }

    v0[45] = v7;
    v76 = swift_task_alloc();
    v0[46] = v76;
    *v76 = v0;
    v76[1] = sub_224C258A8;
    v77 = v0[42];

    return MEMORY[0x2822003E8](v0 + 21, 0, 0, v77);
  }

  else
  {
    (*(v0[43] + 8))(v0[44], v0[42]);

    v74 = v0[1];

    return v74();
  }
}

void sub_224C2644C(void *a1, void (*a2)(void *, uint64_t, char *, char *))
{
  v96 = a2;
  v3 = sub_224DAB088();
  v101 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v95 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v87 - v9;
  v12 = MEMORY[0x28223BE20](v8, v11);
  v97 = &v87 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v98 = &v87 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v87 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v87 - v22;
  v24 = sub_224DA9908();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = &v87 - v31;
  v102 = a1;
  v33._countAndFlagsBits = sub_224DAB028();
  EventReplicatorMessageType.init(rawValue:)(v33);
  v34 = 1;
  if (v103 - 1 >= 2 && v103 != 4)
  {
    if (v103 == 6)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v35 = sub_224DAB258();
      __swift_project_value_buffer(v35, qword_281365120);
      v36 = v101;
      (*(v101 + 16))(v23, v102, v3);
      v37 = sub_224DAB228();
      v38 = sub_224DAF288();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = v36;
        v41 = swift_slowAlloc();
        v103 = v41;
        *v39 = 136446210;
        v42 = sub_224DAB028();
        v44 = v43;
        (*(v40 + 8))(v23, v3);
        v45 = sub_224A33F74(v42, v44, &v103);

        *(v39 + 4) = v45;
        _os_log_impl(&dword_224A2F000, v37, v38, "Cannot send response: unknown message type %{public}s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        v46 = v41;
LABEL_14:
        MEMORY[0x22AA5EED0](v46, -1, -1);
        MEMORY[0x22AA5EED0](v39, -1, -1);

        return;
      }

      (*(v36 + 8))(v23, v3);
      return;
    }

    v34 = 0;
  }

  v93 = v10;
  v99 = v3;
  __swift_project_boxed_opaque_existential_1((v100 + 64), *(v100 + 88));
  sub_224DAB048();
  sub_224DAAC98();
  v47 = *(v25 + 8);
  v47(v28, v24);
  v48 = sub_224DAAE38();
  v49 = (*(*(v48 - 8) + 48))(v32, 1, v48);
  sub_224A3311C(v32, &qword_27D6F3320, &unk_224DBD6F0);
  if (v49 == 1)
  {
    v94 = v47;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v50 = sub_224DAB258();
    __swift_project_value_buffer(v50, qword_281365120);
    v51 = v101;
    v52 = v99;
    (*(v101 + 16))(v20, v102, v99);
    v37 = sub_224DAB228();
    v53 = sub_224DAF288();
    if (os_log_type_enabled(v37, v53))
    {
      v39 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v103 = v102;
      *v39 = 136446210;
      sub_224DAB048();
      sub_224C41198(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v54 = sub_224DAFD28();
      v56 = v55;
      v94(v28, v24);
      (*(v51 + 8))(v20, v99);
      v57 = sub_224A33F74(v54, v56, &v103);

      *(v39 + 4) = v57;
      _os_log_impl(&dword_224A2F000, v37, v53, "Cannot send response: no relationship exists with id %{public}s", v39, 0xCu);
      v58 = v102;
      __swift_destroy_boxed_opaque_existential_1(v102);
      v46 = v58;
      goto LABEL_14;
    }

    (*(v51 + 8))(v20, v52);
  }

  else if (v34)
  {
    v94 = v47;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v59 = sub_224DAB258();
    v60 = __swift_project_value_buffer(v59, qword_281365120);
    v62 = v101;
    v61 = v102;
    v63 = *(v101 + 16);
    v64 = v99;
    v63(v98, v102, v99);
    v65 = v97;
    v63(v97, v61, v64);
    v92 = v60;
    v66 = sub_224DAB228();
    v67 = sub_224DAF288();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v88 = v68;
      v91 = swift_slowAlloc();
      v103 = v91;
      *v68 = 136446466;
      v90 = v67;
      v69 = v98;
      sub_224DAB058();
      sub_224C41198(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v89 = v66;
      v70 = sub_224DAFD28();
      v72 = v71;
      v94(v28, v24);
      v73 = *(v101 + 8);
      v73(v69, v64);
      v74 = sub_224A33F74(v70, v72, &v103);

      v75 = v88;
      *(v88 + 1) = v74;
      *(v75 + 6) = 2082;
      v76 = v97;
      sub_224DAB048();
      v77 = sub_224DAFD28();
      v79 = v78;
      v80 = v24;
      v81 = v73;
      v94(v28, v80);
      v73(v76, v64);
      v62 = v101;
      v82 = sub_224A33F74(v77, v79, &v103);

      *(v75 + 14) = v82;
      v83 = v89;
      _os_log_impl(&dword_224A2F000, v89, v90, "Sending ack for %{public}s to device %{public}s", v75, 0x16u);
      v84 = v91;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v84, -1, -1);
      MEMORY[0x22AA5EED0](v75, -1, -1);
    }

    else
    {

      v81 = *(v62 + 8);
      v81(v65, v64);
      v81(v98, v64);
    }

    v85 = v95;
    v86 = v100;
    sub_224C26F14(v102, v96);
    (*(v62 + 32))(v93, v85, v99);
    __swift_project_boxed_opaque_existential_1((v86 + 24), *(v86 + 48));
    sub_224DAAC38();
    v81(v93, v99);
  }
}

uint64_t sub_224C26F14(uint64_t a1, void (*a2)(void *, uint64_t, char *, char *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v13 - v5;
  v7 = sub_224DA9908();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[3] = &type metadata for EventAckMessage;
  v13[4] = sub_224B6B5E0();
  v13[5] = sub_224B6B634();
  sub_224DAB048();
  sub_224DAB058();
  (*(v8 + 56))(v6, 0, 1, v7);
  a2(v13, 5, v11, v6);
  sub_224A3311C(v6, &unk_27D6F5630, &unk_224DB34C0);
  (*(v8 + 8))(v11, v7);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_224C270E4(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x90);
  swift_beginAccess();
  v4 = *(a1 + v3);
  v5 = *(a1 + *((*v2 & *a1) + 0x98));
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = sub_224A869E4(*(v6 + 16), 0);
  v9 = sub_224B2F0C4(&v17, (v8 + 32), v7, v6);
  v10 = v17;

  sub_224A3B7E4(v10);
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:

    v8 = MEMORY[0x277D84F90];
  }

  v17 = MEMORY[0x277D84F90];
  if ((v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
  {
    goto LABEL_11;
  }

  for (i = *(v8 + 16); ; i = sub_224DAF838())
  {
    v12 = *(v4 + 16);
    v13 = __OFADD__(i, v12);
    v14 = i + v12;
    if (!v13)
    {
      break;
    }

    __break(1u);
LABEL_11:
    ;
  }

  sub_224C40FD0(v14);

  sub_224B42678(v15);
  sub_224B42660(v8);

  return v17;
}

void sub_224C2728C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v195 = a2;
  v191 = sub_224DAC378();
  v169 = *(v191 - 8);
  MEMORY[0x28223BE20](v191, v5);
  v7 = (&v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v174 = &v169 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5900, &qword_224DBBDD0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v169 - v17;
  v182 = sub_224DAA428();
  v19 = *(v182 - 8);
  MEMORY[0x28223BE20](v182, v20);
  v181 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v196 = *(v198 - 8);
  v23 = MEMORY[0x28223BE20](v198, v22);
  v25 = &v169 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v200 = &v169 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5908, &qword_224DBBDD8);
  v30 = MEMORY[0x28223BE20](v28 - 8, v29);
  v184 = (&v169 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30, v32);
  v183 = &v169 - v33;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5910, qword_224DC00F0);
  v34 = *(v201 - 8);
  v36 = MEMORY[0x28223BE20](v201 - 8, v35);
  v38 = (&v169 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v36, v39);
  v197 = &v169 - v40;
  v193 = sub_224DAB258();
  v192 = *(v193 - 8);
  v42 = MEMORY[0x28223BE20](a1, v41);
  v44 = MEMORY[0x28223BE20](v42, v43);
  v46 = &v169 - v45;
  v47 = *(v44 + 24);
  v170 = v7;
  v190 = v48;
  v199 = v38;
  if (v47)
  {
    sub_224A3317C(v44, &v205);
    v49 = *(&v206 + 1);
    if (!*(&v206 + 1))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v50 = *(v44 + 16);
    v205 = *v44;
    v206 = v50;
    v207 = *(v44 + 32);
    v49 = *(&v50 + 1);
    if (!*(&v50 + 1))
    {
LABEL_17:
      v70 = v192;
      v71 = v193;
      (*(v192 + 16))(v46, v195 + qword_281365438, v193);
      v72 = sub_224DAB228();
      v73 = sub_224DAF2A8();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_224A2F000, v72, v73, "Initialized - no persisted hosts found", v74, 2u);
        MEMORY[0x22AA5EED0](v74, -1, -1);
      }

      (*(v70 + 8))(v46, v71);
      return;
    }
  }

  v185 = v34;
  v189 = v19;
  v51 = v207;
  __swift_project_boxed_opaque_existential_1(&v205, v49);
  v52 = (*(v51 + 24))(v49, v51);
  __swift_destroy_boxed_opaque_existential_1(&v205);
  if (!v52)
  {
    goto LABEL_17;
  }

  v53 = *(v52 + 16);
  v54 = MEMORY[0x277D84F90];
  v173 = v15;
  v188 = v18;
  v187 = v52;
  v178 = v25;
  if (v53)
  {
    v186 = v2;
    *&v205 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v53, 0);
    v208 = v205;
    v55 = v52 + 64;
    v25 = sub_224DAF798();
    v194 = (v196 + 32);
    v56 = v198;
    while (1)
    {
      v57 = *(v52 + 36);
      v58 = v197;
      v59 = sub_224C17088();
      v60 = v199;
      (*v194)(v199, v58, v56);
      *(v60 + *(v201 + 48)) = v59;
      v61 = v186;
      v62 = sub_224C2A1C0(v60, &qword_27D6F5910, qword_224DC00F0);
      v186 = v61;
      if (v61)
      {
        break;
      }

      v64 = v62;
      v65 = v63;
      sub_224A3311C(v60, &qword_27D6F5910, qword_224DC00F0);
      v66 = v208;
      *&v205 = v208;
      isa = v208[2].isa;
      v67 = v208[3].isa;
      v60 = (isa + 1);
      if (isa >= v67 >> 1)
      {
        sub_224A3DFD8((v67 > 1), isa + 1, 1);
        v66 = v205;
      }

      v66[2].isa = v60;
      v69 = &v66[2 * isa];
      v69[4].isa = v64;
      v69[5].isa = v65;
      v52 = v187;
      if (v25 < 0 || v25 >= -(-1 << *(v187 + 32)))
      {
        goto LABEL_81;
      }

      if (((*(v55 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_82;
      }

      if (v57 != *(v187 + 36))
      {
        goto LABEL_83;
      }

      v208 = v66;
      v25 = sub_224DAF7B8();
      --v53;
      v56 = v198;
      if (!v53)
      {
        v3 = v186;
        v25 = v178;
        v54 = v208;
        goto LABEL_21;
      }
    }
  }

  else
  {
    v56 = v198;
LABEL_21:
    *&v205 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
    sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
    v199 = sub_224DAEDA8();
    v76 = v75;

    v77 = v192;
    v78 = v193;
    (*(v192 + 16))(v190, v195 + qword_281365438, v193);

    v79 = sub_224DAB228();
    v80 = sub_224DAF2A8();

    v208 = v79;
    v81 = os_log_type_enabled(v79, v80);
    v186 = v3;
    if (v81)
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v205 = v83;
      *v82 = 136446210;
      v84 = sub_224A33F74(v199, v76, &v205);

      *(v82 + 4) = v84;
      v85 = v80;
      v86 = v208;
      _os_log_impl(&dword_224A2F000, v208, v85, "Initialized with hosts: (\n\t%{public}s\n)", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x22AA5EED0](v83, -1, -1);
      MEMORY[0x22AA5EED0](v82, -1, -1);

      (*(v77 + 8))(v190, v193);
    }

    else
    {

      (*(v77 + 8))(v190, v78);
    }

    v57 = v184;
    v87 = 0;
    v88 = *(v52 + 64);
    v172 = v52 + 64;
    v89 = 1 << *(v52 + 32);
    v90 = -1;
    if (v89 < 64)
    {
      v90 = ~(-1 << v89);
    }

    v91 = v90 & v88;
    v177 = qword_28135C9F0;
    v171 = (v89 + 63) >> 6;
    v180 = (v185 + 56);
    v208 = (v196 + 16);
    v197 = (v196 + 32);
    v179 = (v185 + 48);
    v176 = (v189 + 2);
    v190 = (v169 + 56);
    v175 = (v189 + 4);
    v189 = (v196 + 8);
    v199 = MEMORY[0x277D84F98];
    while (1)
    {
      v60 = v201;
      if (!v91)
      {
        break;
      }

      v92 = v87;
LABEL_38:
      v95 = __clz(__rbit64(v91));
      v91 &= v91 - 1;
      v96 = v95 | (v92 << 6);
      v97 = v187;
      v98 = v196;
      v99 = v200;
      (*(v196 + 16))(v200, *(v187 + 48) + *(v196 + 72) * v96, v56);
      v100 = *(*(v97 + 56) + 8 * v96);
      v101 = *(v201 + 48);
      (*(v98 + 32))(v57, v99, v56);
      *(v57 + v101) = v100;
      v60 = v201;
      (*v180)(v57, 0, 1, v201);

      v94 = v92;
LABEL_39:
      v102 = v183;
      sub_224A44E4C(v57, v183, &qword_27D6F5908, &qword_224DBBDD8);
      if ((*v179)(v102, 1, v60) == 1)
      {

        v127 = qword_28135CA28;
        v128 = v195;
        swift_beginAccess();
        v129 = v199;
        *(v128 + v127) = v199;

        v130 = 0;
        v131 = v129 + 64;
        v132 = 1 << *(v129 + 32);
        v133 = -1;
        if (v132 < 64)
        {
          v133 = ~(-1 << v132);
        }

        v25 = v133 & *(v129 + 64);
        v187 = qword_28135CA18;
        v134 = (v132 + 63) >> 6;
        v184 = (v169 + 8);
        v60 = &qword_27D6F5918;
        v135 = v188;
        v192 = v129 + 64;
        v185 = v134;
        while (v25)
        {
          v137 = v130;
          v138 = v198;
LABEL_65:
          v142 = __clz(__rbit64(v25));
          v25 &= v25 - 1;
          v143 = v142 | (v137 << 6);
          v144 = v196;
          v145 = v200;
          (*(v196 + 16))(v200, *(v129 + 48) + *(v196 + 72) * v143, v138);
          v146 = *(*(v129 + 56) + 8 * v143);
          v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5918, &qword_224DBBDE0);
          v148 = *(v147 + 48);
          v149 = *(v144 + 32);
          v150 = v173;
          v149(v173, v145, v138);
          *(v150 + v148) = v146;
          (*(*(v147 - 8) + 56))(v150, 0, 1, v147);

          v141 = v138;
          v135 = v188;
LABEL_66:
          sub_224A44E4C(v150, v135, &qword_27D6F5900, &qword_224DBBDD0);
          v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5918, &qword_224DBBDE0);
          if ((*(*(v151 - 8) + 48))(v135, 1, v151) == 1)
          {

            sub_224C2A790();
            return;
          }

          v57 = *(v135 + *(v151 + 48));
          v152 = qword_281365430;
          swift_retain_n();
          sub_224DAA1F8();
          v153 = sub_224DAA048();

          if ((v153 & 1) != 0 || (v154 = *(*v57 + 104), swift_beginAccess(), ([*(v57 + v154) automaticallyOrphaned] & 1) == 0))
          {

            v164 = v174;
            (*v190)(v174, 1, 1, v191);
            v165 = *(*v57 + 216);
            swift_beginAccess();
            v162 = v57 + v165;
            v163 = v164;
          }

          else
          {
            v60 = v170;
            sub_224DAC338();
            v155 = *(v57 + v154);

            [v155 expirationTimeout];
            v157 = v156;

            v158 = v157 * 1000000000.0;
            if (COERCE__INT64(fabs(v157 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_85;
            }

            if (v158 <= -1.0)
            {
              goto LABEL_86;
            }

            if (v158 >= 1.84467441e19)
            {
              goto LABEL_87;
            }

            v159 = v174;
            sub_224DAC358();
            v160 = v191;
            (*v184)(v60, v191);
            (*v190)(v159, 0, 1, v160);
            v161 = *(*v57 + 216);
            swift_beginAccess();
            v162 = v57 + v161;
            v163 = v159;
          }

          sub_224A838C0(v163, v162, &qword_27D6F3948, &qword_224DB5C10);
          swift_endAccess();
          sub_224A3796C(v195 + v187, &v205, &unk_27D6F53A0, &qword_224DC1A80);
          if (*(&v206 + 1))
          {
            v201 = v207;
            v194 = *(&v206 + 1);
            v193 = __swift_project_boxed_opaque_existential_1(&v205, *(&v206 + 1));
            v204[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5920, &qword_224DBBDE8);
            v204[4] = sub_224A33088(&qword_281352098, &qword_27D6F5920, &qword_224DBBDE8, &unk_224DB5F7C);
            v204[0] = v57;
            v166 = v200;
            (v208->isa)(v200, v57 + v152, v141);
            v202 = 0x2D74736F48;
            v203 = 0xE500000000000000;
            v167 = sub_224DAA1C8();
            MEMORY[0x22AA5D210](v167);

            v136 = *v189;
            (*v189)(v166, v141);
            sub_224DAA2D8();

            __swift_destroy_boxed_opaque_existential_1(v204);
            __swift_destroy_boxed_opaque_existential_1(&v205);
          }

          else
          {

            sub_224A3311C(&v205, &unk_27D6F53A0, &qword_224DC1A80);
            v136 = *v189;
          }

          v60 = &qword_27D6F5918;
          v135 = v188;
          v136(v188, v141);
          v129 = v199;
          v131 = v192;
          v134 = v185;
        }

        if (v134 <= v130 + 1)
        {
          v139 = v130 + 1;
        }

        else
        {
          v139 = v134;
        }

        v140 = v139 - 1;
        v141 = v198;
        while (1)
        {
          v137 = v130 + 1;
          if (__OFADD__(v130, 1))
          {
            goto LABEL_79;
          }

          if (v137 >= v134)
          {
            v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5918, &qword_224DBBDE0);
            v150 = v173;
            (*(*(v168 - 8) + 56))(v173, 1, 1, v168);
            v25 = 0;
            v130 = v140;
            goto LABEL_66;
          }

          v25 = *(v131 + 8 * v137);
          ++v130;
          if (v25)
          {
            v130 = v137;
            v138 = v198;
            goto LABEL_65;
          }
        }
      }

      v192 = v94;
      v103 = *(v102 + v60[12]);
      v194 = *v197;
      (v194)(v25, v102, v56);
      v104 = v200;
      v185 = v208->isa;
      (v185)(v200, v103 + qword_281365418, v56);
      v105 = *v103;
      v193 = *(v103 + *(*v103 + 104));
      v106 = v181;
      v57 = v182;
      (*v176)(v181, v103 + *(v105 + 112), v182);
      v107 = *(v195 + v177);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5920, &qword_224DBBDE8);
      v60 = swift_allocObject();
      (*v190)(v60 + *(*v60 + 216), 1, 1, v191);
      *(v60 + *(*v60 + 208)) = v107;
      v108 = v104;
      v25 = v178;
      (v194)(v60 + qword_281365430, v108, v56);
      v109 = v193;
      *(v60 + *(*v60 + 104)) = v193;
      (*v175)(v60 + *(*v60 + 112), v106, v57);
      v110 = v109;

      v111 = v199;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v205 = v111;
      v113 = sub_224A683FC(v25);
      v115 = *(v111 + 16);
      v116 = (v114 & 1) == 0;
      v117 = __OFADD__(v115, v116);
      v118 = v115 + v116;
      if (v117)
      {
        goto LABEL_80;
      }

      v119 = v114;
      if (*(v111 + 24) >= v118)
      {
        v57 = v184;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v126 = v113;
          sub_224B25090();
          v113 = v126;
        }
      }

      else
      {
        sub_224B0EA5C(v118, isUniquelyReferenced_nonNull_native);
        v113 = sub_224A683FC(v25);
        v57 = v184;
        if ((v119 & 1) != (v120 & 1))
        {
          goto LABEL_89;
        }
      }

      v121 = v205;
      v199 = v205;
      if (v119)
      {
        *(*(v205 + 56) + 8 * v113) = v60;

        v56 = v198;
        (*v189)(v25, v198);
      }

      else
      {
        *(v205 + 8 * (v113 >> 6) + 64) |= 1 << v113;
        v122 = v196;
        v123 = v113;
        v56 = v198;
        (v185)(v121[6] + *(v196 + 72) * v113, v25, v198);
        *(v121[7] + 8 * v123) = v60;

        (*(v122 + 8))(v25, v56);
        v124 = v121[2];
        v117 = __OFADD__(v124, 1);
        v125 = v124 + 1;
        if (v117)
        {
          goto LABEL_84;
        }

        v121[2] = v125;
      }

      v87 = v192;
    }

    if (v171 <= v87 + 1)
    {
      v93 = v87 + 1;
    }

    else
    {
      v93 = v171;
    }

    v94 = v93 - 1;
    while (1)
    {
      v92 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        break;
      }

      if (v92 >= v171)
      {
        (*v180)(v57, 1, 1, v201);
        v91 = 0;
        goto LABEL_39;
      }

      v91 = *(v172 + 8 * v92);
      ++v87;
      if (v91)
      {
        goto LABEL_38;
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
  }

  sub_224A3311C(v60, &qword_27D6F5910, qword_224DC00F0);
  sub_224A3E204(v25, v57, 0);

  __break(1u);
LABEL_89:
  sub_224DAFDD8();
  __break(1u);
}

void sub_224C28A28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v194 = a2;
  v190 = sub_224DAC378();
  v168 = *(v190 - 8);
  MEMORY[0x28223BE20](v190, v5);
  v7 = (&v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v173 = &v168 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5928, &qword_224DBBDF0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v168 - v17;
  v181 = sub_224DAA428();
  v19 = *(v181 - 8);
  MEMORY[0x28223BE20](v181, v20);
  v180 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v195 = *(v197 - 8);
  v23 = MEMORY[0x28223BE20](v197, v22);
  v25 = &v168 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v199 = &v168 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5930, &qword_224DBBDF8);
  v30 = MEMORY[0x28223BE20](v28 - 8, v29);
  v183 = (&v168 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30, v32);
  v182 = &v168 - v33;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34A0, &unk_224DB3A20);
  v34 = *(v200 - 8);
  v36 = MEMORY[0x28223BE20](v200 - 8, v35);
  v38 = (&v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v36, v39);
  v196 = &v168 - v40;
  v192 = sub_224DAB258();
  v191 = *(v192 - 8);
  v42 = MEMORY[0x28223BE20](a1, v41);
  v44 = &v168 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v42, v45);
  v47 = *(v46 + 24);
  v169 = v7;
  v189 = &v168 - v48;
  v198 = v38;
  if (v47)
  {
    sub_224A3317C(v46, &v204);
    v49 = *(&v205 + 1);
    if (!*(&v205 + 1))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v50 = *(v46 + 16);
    v204 = *v46;
    v205 = v50;
    v206 = *(v46 + 32);
    v49 = *(&v50 + 1);
    if (!*(&v50 + 1))
    {
LABEL_17:
      v70 = v191;
      v71 = v192;
      (*(v191 + 16))(v44, v194 + qword_281365438, v192);
      v72 = sub_224DAB228();
      v73 = sub_224DAF2A8();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_224A2F000, v72, v73, "Initialized - no persisted hosts found", v74, 2u);
        MEMORY[0x22AA5EED0](v74, -1, -1);
      }

      (*(v70 + 8))(v44, v71);
      return;
    }
  }

  v184 = v34;
  v188 = v19;
  v51 = v206;
  __swift_project_boxed_opaque_existential_1(&v204, v49);
  v52 = (*(v51 + 24))(v49, v51);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  if (!v52)
  {
    goto LABEL_17;
  }

  v53 = *(v52 + 16);
  v54 = MEMORY[0x277D84F90];
  v172 = v15;
  v187 = v18;
  v186 = v52;
  v177 = v25;
  if (v53)
  {
    v185 = v2;
    *&v204 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v53, 0);
    v207 = v204;
    v55 = v52 + 64;
    v25 = sub_224DAF798();
    v193 = (v195 + 32);
    v56 = v197;
    while (1)
    {
      v57 = *(v52 + 36);
      v58 = v196;
      v59 = sub_224C17088();
      v60 = v198;
      (*v193)(v198, v58, v56);
      *(v60 + *(v200 + 48)) = v59;
      v61 = v185;
      v62 = sub_224C2A1C0(v60, &qword_27D6F34A0, &unk_224DB3A20);
      v185 = v61;
      if (v61)
      {
        break;
      }

      v64 = v62;
      v65 = v63;
      sub_224A3311C(v60, &qword_27D6F34A0, &unk_224DB3A20);
      v66 = v207;
      *&v204 = v207;
      isa = v207[2].isa;
      v67 = v207[3].isa;
      v60 = (isa + 1);
      if (isa >= v67 >> 1)
      {
        sub_224A3DFD8((v67 > 1), isa + 1, 1);
        v66 = v204;
      }

      v66[2].isa = v60;
      v69 = &v66[2 * isa];
      v69[4].isa = v64;
      v69[5].isa = v65;
      v52 = v186;
      if (v25 < 0 || v25 >= -(-1 << *(v186 + 32)))
      {
        goto LABEL_81;
      }

      if (((*(v55 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_82;
      }

      if (v57 != *(v186 + 36))
      {
        goto LABEL_83;
      }

      v207 = v66;
      v25 = sub_224DAF7B8();
      --v53;
      v56 = v197;
      if (!v53)
      {
        v3 = v185;
        v25 = v177;
        v54 = v207;
        goto LABEL_21;
      }
    }
  }

  else
  {
    v56 = v197;
LABEL_21:
    *&v204 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
    sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
    v198 = sub_224DAEDA8();
    v76 = v75;

    v77 = v191;
    v78 = v192;
    (*(v191 + 16))(v189, v194 + qword_281365438, v192);

    v79 = sub_224DAB228();
    v80 = sub_224DAF2A8();

    v207 = v79;
    v81 = os_log_type_enabled(v79, v80);
    v185 = v3;
    if (v81)
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v204 = v83;
      *v82 = 136446210;
      v84 = sub_224A33F74(v198, v76, &v204);

      *(v82 + 4) = v84;
      v85 = v80;
      v86 = v207;
      _os_log_impl(&dword_224A2F000, v207, v85, "Initialized with hosts: (\n\t%{public}s\n)", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x22AA5EED0](v83, -1, -1);
      MEMORY[0x22AA5EED0](v82, -1, -1);

      (*(v77 + 8))(v189, v192);
    }

    else
    {

      (*(v77 + 8))(v189, v78);
    }

    v57 = v183;
    v87 = 0;
    v88 = *(v52 + 64);
    v171 = v52 + 64;
    v89 = 1 << *(v52 + 32);
    v90 = -1;
    if (v89 < 64)
    {
      v90 = ~(-1 << v89);
    }

    v91 = v90 & v88;
    v176 = qword_28135C9F0;
    v170 = (v89 + 63) >> 6;
    v179 = (v184 + 56);
    v207 = (v195 + 16);
    v196 = (v195 + 32);
    v178 = (v184 + 48);
    v175 = (v188 + 2);
    v189 = (v168 + 56);
    v174 = (v188 + 4);
    v188 = (v195 + 8);
    v198 = MEMORY[0x277D84F98];
    while (1)
    {
      v60 = v200;
      if (!v91)
      {
        break;
      }

      v92 = v87;
LABEL_38:
      v95 = __clz(__rbit64(v91));
      v91 &= v91 - 1;
      v96 = v95 | (v92 << 6);
      v97 = v186;
      v98 = v195;
      v99 = v199;
      (*(v195 + 16))(v199, *(v186 + 48) + *(v195 + 72) * v96, v56);
      v100 = *(*(v97 + 56) + 8 * v96);
      v101 = *(v200 + 48);
      (*(v98 + 32))(v57, v99, v56);
      *(v57 + v101) = v100;
      v60 = v200;
      (*v179)(v57, 0, 1, v200);

      v94 = v92;
LABEL_39:
      v102 = v182;
      sub_224A44E4C(v57, v182, &unk_27D6F5930, &qword_224DBBDF8);
      if ((*v178)(v102, 1, v60) == 1)
      {

        v127 = qword_28135CA28;
        v128 = v194;
        swift_beginAccess();
        v129 = v198;
        *(v128 + v127) = v198;

        v130 = v129 + 64;
        v131 = 1 << *(v129 + 32);
        v132 = -1;
        if (v131 < 64)
        {
          v132 = ~(-1 << v131);
        }

        v25 = v132 & *(v129 + 64);
        v186 = qword_28135CA18;
        v184 = ((v131 + 63) >> 6);
        v183 = (v168 + 8);

        v133 = 0;
        v60 = &qword_27D6F5940;
        v134 = v187;
        v191 = v129 + 64;
        while (v25)
        {
          v136 = v133;
          v137 = v197;
LABEL_65:
          v141 = __clz(__rbit64(v25));
          v25 &= v25 - 1;
          v142 = v141 | (v136 << 6);
          v143 = v195;
          v144 = v199;
          (*(v195 + 16))(v199, *(v129 + 48) + *(v195 + 72) * v142, v137);
          v145 = *(*(v129 + 56) + 8 * v142);
          v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5940, &qword_224DBBE00);
          v147 = *(v146 + 48);
          v148 = *(v143 + 32);
          v149 = v172;
          v148(v172, v144, v137);
          *(v149 + v147) = v145;
          (*(*(v146 - 8) + 56))(v149, 0, 1, v146);

          v140 = v137;
          v134 = v187;
LABEL_66:
          sub_224A44E4C(v149, v134, &qword_27D6F5928, &qword_224DBBDF0);
          v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5940, &qword_224DBBE00);
          if ((*(*(v150 - 8) + 48))(v134, 1, v150) == 1)
          {

            sub_224C2B638();
            return;
          }

          v57 = *(v134 + *(v150 + 48));
          v151 = qword_281365430;
          swift_retain_n();
          sub_224DAA1F8();
          v152 = sub_224DAA048();

          if ((v152 & 1) != 0 || (v153 = *(*v57 + 104), swift_beginAccess(), ([*(v57 + v153) automaticallyOrphaned] & 1) == 0))
          {

            v163 = v173;
            (*v189)(v173, 1, 1, v190);
            v164 = *(*v57 + 216);
            swift_beginAccess();
            v161 = v57 + v164;
            v162 = v163;
          }

          else
          {
            v60 = v169;
            sub_224DAC338();
            v154 = *(v57 + v153);

            [v154 expirationTimeout];
            v156 = v155;

            v157 = v156 * 1000000000.0;
            if (COERCE__INT64(fabs(v156 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_85;
            }

            if (v157 <= -1.0)
            {
              goto LABEL_86;
            }

            if (v157 >= 1.84467441e19)
            {
              goto LABEL_87;
            }

            v158 = v173;
            sub_224DAC358();
            v159 = v190;
            (*v183)(v60, v190);
            (*v189)(v158, 0, 1, v159);
            v160 = *(*v57 + 216);
            swift_beginAccess();
            v161 = v57 + v160;
            v162 = v158;
          }

          sub_224A838C0(v162, v161, &qword_27D6F3948, &qword_224DB5C10);
          swift_endAccess();
          sub_224A3796C(v194 + v186, &v204, &unk_27D6F53A0, &qword_224DC1A80);
          if (*(&v205 + 1))
          {
            v200 = v206;
            v193 = *(&v205 + 1);
            v192 = __swift_project_boxed_opaque_existential_1(&v204, *(&v205 + 1));
            v203[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5948, &qword_224DBBE08);
            v203[4] = sub_224A33088(qword_2813520A0, &unk_27D6F5948, &qword_224DBBE08, &unk_224DB5F7C);
            v203[0] = v57;
            v165 = v199;
            (v207->isa)(v199, v57 + v151, v140);
            v201 = 0x2D74736F48;
            v202 = 0xE500000000000000;
            v166 = sub_224DAA1C8();
            MEMORY[0x22AA5D210](v166);

            v135 = *v188;
            (*v188)(v165, v140);
            sub_224DAA2D8();

            __swift_destroy_boxed_opaque_existential_1(v203);
            __swift_destroy_boxed_opaque_existential_1(&v204);
          }

          else
          {

            sub_224A3311C(&v204, &unk_27D6F53A0, &qword_224DC1A80);
            v135 = *v188;
          }

          v60 = &qword_27D6F5940;
          v134 = v187;
          v135(v187, v140);
          v129 = v198;
          v130 = v191;
        }

        if (v184 <= v133 + 1)
        {
          v138 = (v133 + 1);
        }

        else
        {
          v138 = v184;
        }

        v139 = v138 - 1;
        v140 = v197;
        while (1)
        {
          v136 = v133 + 1;
          if (__OFADD__(v133, 1))
          {
            goto LABEL_79;
          }

          if (v136 >= v184)
          {
            v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5940, &qword_224DBBE00);
            v149 = v172;
            (*(*(v167 - 8) + 56))(v172, 1, 1, v167);
            v25 = 0;
            v133 = v139;
            goto LABEL_66;
          }

          v25 = *(v130 + 8 * v136);
          ++v133;
          if (v25)
          {
            v133 = v136;
            v137 = v197;
            goto LABEL_65;
          }
        }
      }

      v191 = v94;
      v103 = *(v102 + v60[12]);
      v193 = *v196;
      (v193)(v25, v102, v56);
      v104 = v199;
      v184 = v207->isa;
      (v184)(v199, v103 + qword_281365418, v56);
      v105 = *v103;
      v192 = *(v103 + *(*v103 + 104));
      v106 = v180;
      v57 = v181;
      (*v175)(v180, v103 + *(v105 + 112), v181);
      v107 = *(v194 + v176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5948, &qword_224DBBE08);
      v60 = swift_allocObject();
      (*v189)(v60 + *(*v60 + 216), 1, 1, v190);
      *(v60 + *(*v60 + 208)) = v107;
      v108 = v104;
      v25 = v177;
      (v193)(v60 + qword_281365430, v108, v56);
      v109 = v192;
      *(v60 + *(*v60 + 104)) = v192;
      (*v174)(v60 + *(*v60 + 112), v106, v57);
      v110 = v109;

      v111 = v198;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v204 = v111;
      v113 = sub_224A683FC(v25);
      v115 = *(v111 + 16);
      v116 = (v114 & 1) == 0;
      v117 = __OFADD__(v115, v116);
      v118 = v115 + v116;
      if (v117)
      {
        goto LABEL_80;
      }

      v119 = v114;
      if (*(v111 + 24) >= v118)
      {
        v57 = v183;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v126 = v113;
          sub_224B269F8();
          v113 = v126;
        }
      }

      else
      {
        sub_224B1195C(v118, isUniquelyReferenced_nonNull_native);
        v113 = sub_224A683FC(v25);
        v57 = v183;
        if ((v119 & 1) != (v120 & 1))
        {
          goto LABEL_89;
        }
      }

      v121 = v204;
      v198 = v204;
      if (v119)
      {
        *(*(v204 + 56) + 8 * v113) = v60;

        v56 = v197;
        (*v188)(v25, v197);
      }

      else
      {
        *(v204 + 8 * (v113 >> 6) + 64) |= 1 << v113;
        v122 = v195;
        v123 = v113;
        v56 = v197;
        (v184)(v121[6] + *(v195 + 72) * v113, v25, v197);
        *(v121[7] + 8 * v123) = v60;

        (*(v122 + 8))(v25, v56);
        v124 = v121[2];
        v117 = __OFADD__(v124, 1);
        v125 = v124 + 1;
        if (v117)
        {
          goto LABEL_84;
        }

        v121[2] = v125;
      }

      v87 = v191;
    }

    if (v170 <= v87 + 1)
    {
      v93 = v87 + 1;
    }

    else
    {
      v93 = v170;
    }

    v94 = v93 - 1;
    while (1)
    {
      v92 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        break;
      }

      if (v92 >= v170)
      {
        (*v179)(v57, 1, 1, v200);
        v91 = 0;
        goto LABEL_39;
      }

      v91 = *(v171 + 8 * v92);
      ++v87;
      if (v91)
      {
        goto LABEL_38;
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
  }

  sub_224A3311C(v60, &qword_27D6F34A0, &unk_224DB3A20);
  sub_224A3E204(v25, v57, 0);

  __break(1u);
LABEL_89:
  sub_224DAFDD8();
  __break(1u);
}

uint64_t sub_224C2A1C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v37 = sub_224DAA428();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v6);
  v36 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v30 - v11;
  v31 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v30 - v16;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_224DAF938();
  MEMORY[0x22AA5D210](91, 0xE100000000000000);
  v32 = a2;
  sub_224A3796C(a1, v17, a2, a3);
  (*(v9 + 16))(v12, *&v17[*(v14 + 56)] + qword_281365418, v8);

  sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
  v18 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v18);

  v19 = *(v9 + 8);
  v34 = v9 + 8;
  v35 = v19;
  v33 = v8;
  v19(v12, v8);
  v19(v17, v8);
  MEMORY[0x22AA5D210](539828317, 0xE400000000000000);
  v20 = v31;
  sub_224A3796C(a1, v17, a2, v31);
  v21 = *&v17[*(v14 + 56)];
  v23 = v36;
  v22 = v37;
  (*(v38 + 16))(v36, v21 + *(*v21 + 112), v37);

  sub_224C41198(&qword_281351820, MEMORY[0x277CFA048], MEMORY[0x277CFA060]);
  v24 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v24);

  (*(v38 + 8))(v23, v22);
  v25 = v33;
  v26 = v35;
  v35(v17, v33);
  MEMORY[0x22AA5D210](0xD000000000000019, 0x8000000224DCB6C0);
  sub_224A3796C(a1, v17, v32, v20);
  v27 = *&v17[*(v14 + 56)];
  v28 = *(v27 + *(*v27 + 104));

  [v28 expirationTimeout];

  sub_224DAF188();
  v26(v17, v25);
  MEMORY[0x22AA5D210](41, 0xE100000000000000);
  return v39;
}

void sub_224C2A634(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  sub_224A3796C(v3 + qword_28135CA18, &v8, &unk_27D6F53A0, &qword_224DC1A80);
  if (v9)
  {
    sub_224A36F98(&v8, v10);
    v5 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    MEMORY[0x28223BE20](v5, v6);
    sub_224DAA308();
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_224A3311C(&v8, &unk_27D6F53A0, &qword_224DC1A80);
    v7 = *(v3 + qword_28135C9F0);
    os_unfair_lock_lock(*(v7 + 16));
    a1();
    os_unfair_lock_unlock(*(v7 + 16));
  }
}

void sub_224C2A790()
{
  v1 = v0;
  v141 = sub_224DAC378();
  v125 = *(v141 - 8);
  v3 = MEMORY[0x28223BE20](v141, v2);
  v5 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v119 - v8;
  MEMORY[0x28223BE20](v7, v10);
  v140 = &v119 - v11;
  v12 = sub_224DAB258();
  v134 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = (&v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v17);
  v137 = &v119 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v126 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v130 = &v119 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v119 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v131 = &v119 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v136 = &v119 - v35;
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v119 - v37;
  v39 = *(v1 + qword_28135C9F0);
  os_unfair_lock_assert_owner(*(v39 + 16));
  v40 = qword_28135CA40;
  v41 = *(v1 + qword_28135CA40);
  v122 = v9;
  v121 = v5;
  v123 = v29;
  v135 = v12;
  v129 = v16;
  v132 = v41;
  if (v41)
  {

    sub_224DAC5F8();
  }

  v120 = v40;
  *(v1 + v40) = 0;

  os_unfair_lock_assert_owner(*(v39 + 16));
  v42 = qword_28135CA28;
  swift_beginAccess();
  v124 = v1;
  v43 = *(v1 + v42);
  v45 = v43 + 64;
  v44 = *(v43 + 64);
  v143[0] = MEMORY[0x277D84F90];
  v46 = 1 << *(v43 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & v44;
  v49 = (v46 + 63) >> 6;
  v133 = (v125 + 48);

  v50 = 0;
  v51 = &qword_224DB5C10;
  v139 = v38;
  if (v48)
  {
    goto LABEL_8;
  }

  while (1)
  {
LABEL_9:
    v52 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v52 >= v49)
    {
      break;
    }

    v48 = *(v45 + 8 * v52);
    ++v50;
    if (v48)
    {
      while (1)
      {
        v53 = __clz(__rbit64(v48));
        v48 &= v48 - 1;
        v54 = *(*(v43 + 56) + ((v52 << 9) | (8 * v53)));
        v55 = *(*v54 + 216);
        swift_beginAccess();
        sub_224A3796C(v54 + v55, v38, &qword_27D6F3948, &qword_224DB5C10);
        if ((*v133)(v38, 1, v141) == 1)
        {
          sub_224A3311C(v38, &qword_27D6F3948, &qword_224DB5C10);
          v50 = v52;
          if (!v48)
          {
            goto LABEL_9;
          }
        }

        else
        {

          sub_224A3311C(v38, &qword_27D6F3948, &qword_224DB5C10);
          sub_224DAF9B8();
          sub_224DAF9F8();
          v38 = v139;
          sub_224DAFA08();
          sub_224DAF9C8();
          v50 = v52;
          if (!v48)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v52 = v50;
      }
    }
  }

  v51 = v143[0];
  LODWORD(v45) = v143[0] < 0 || (v143[0] & 0x4000000000000000) != 0;
  if ((v45 & 1) == 0)
  {
    v56 = *(v143[0] + 16);
    goto LABEL_20;
  }

LABEL_69:
  v56 = sub_224DAF838();
LABEL_20:
  v57 = v124;
  v58 = v131;
  v60 = v134;
  v59 = v135;
  v61 = v137;
  if (v56)
  {
    (*(v134 + 16))(v137, v124 + qword_281365438, v135);

    v62 = sub_224DAB228();
    v63 = v59;
    v64 = sub_224DAF268();

    LODWORD(v139) = v64;
    v65 = os_log_type_enabled(v62, v64);
    v132 = v51;
    v138 = v56;
    if (!v65)
    {

      (*(v60 + 8))(v61, v63);
      v74 = v141;
      v75 = v136;
LABEL_45:
      v45 = v125 + 56;
      v127 = *(v125 + 56);
      v127(v75, 1, 1, v74);
      v100 = 0;
      v139 = v51 & 0xC000000000000001;
      v135 = (v45 - 24);
      v128 = v45;
      v129 = (v45 - 48);
      v101 = v133;
      while (1)
      {
        if (v139)
        {
          v102 = MEMORY[0x22AA5DCC0](v100, v51);
          v45 = v100 + 1;
          if (__OFADD__(v100, 1))
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v100 >= *(v51 + 16))
          {
            goto LABEL_68;
          }

          v102 = *(v51 + 8 * v100 + 32);

          v45 = v100 + 1;
          if (__OFADD__(v100, 1))
          {
            goto LABEL_67;
          }
        }

        v103 = *(*v102 + 216);
        swift_beginAccess();
        v104 = v102 + v103;
        v105 = v141;
        sub_224A3796C(v104, v58, &qword_27D6F3948, &qword_224DB5C10);
        v106 = *v101;
        if ((*v101)(v58, 1, v105) != 1)
        {
          break;
        }

        sub_224A3311C(v58, &qword_27D6F3948, &qword_224DB5C10);
LABEL_47:
        ++v100;
        if (v45 == v138)
        {

          v115 = v136;
          v116 = v123;
          sub_224A3796C(v136, v123, &qword_27D6F3948, &qword_224DB5C10);
          if ((v106)(v116, 1, v105) == 1)
          {
            sub_224A3311C(v115, &qword_27D6F3948, &qword_224DB5C10);
            sub_224A3311C(v116, &qword_27D6F3948, &qword_224DB5C10);
          }

          else
          {
            v117 = v125;
            v118 = v122;
            (*(v125 + 32))(v122, v116, v105);
            sub_224DAC648();
            (*(v117 + 16))(v121, v118, v105);
            sub_224DAC618();
            *(v124 + v120) = sub_224DAC608();

            swift_allocObject();
            swift_weakInit();

            sub_224DAC638();

            (*(v117 + 8))(v118, v105);
            sub_224A3311C(v115, &qword_27D6F3948, &qword_224DB5C10);
          }

          return;
        }
      }

      v134 = *v135;
      (v134)(v140, v58, v105);
      v107 = v136;
      v108 = v130;
      sub_224A3796C(v136, v130, &qword_27D6F3948, &qword_224DB5C10);
      v109 = (v106)(v108, 1, v105);
      v137 = v106;
      if (v109 == 1)
      {

        sub_224A3311C(v108, &qword_27D6F3948, &qword_224DB5C10);
        v110 = v140;
      }

      else
      {
        sub_224A3311C(v108, &qword_27D6F3948, &qword_224DB5C10);
        v111 = v126;
        sub_224A3796C(v107, v126, &qword_27D6F3948, &qword_224DB5C10);
        if ((v106)(v111, 1, v105) == 1)
        {
          goto LABEL_71;
        }

        sub_224C41198(&qword_281350DF0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A18]);
        v110 = v140;
        v112 = sub_224DAEDB8();

        isa = v129->isa;
        (v129->isa)(v111, v105);
        if ((v112 & 1) == 0)
        {
          (isa)(v110, v105);
          goto LABEL_61;
        }
      }

      v114 = v136;
      sub_224A3311C(v136, &qword_27D6F3948, &qword_224DB5C10);
      (v134)(v114, v110, v105);
      v127(v114, 0, 1, v105);
LABEL_61:
      v58 = v131;
      v51 = v132;
      v101 = v133;
      v106 = v137;
      goto LABEL_47;
    }

    v66 = v63;
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v143[0] = v68;
    *v67 = 136446210;
    if (v45)
    {
      v69 = sub_224DAF838();
    }

    else
    {
      v69 = *(v51 + 16);
    }

    v129 = v62;
    v76 = MEMORY[0x277D84F90];
    v128 = v68;
    if (!v69)
    {
      v85 = v66;
      v86 = v137;
LABEL_44:
      v142 = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
      sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
      v94 = sub_224DAEDA8();
      v96 = v95;

      v97 = sub_224A33F74(v94, v96, v143);

      *(v67 + 4) = v97;
      v98 = v129;
      _os_log_impl(&dword_224A2F000, v129, v139, "Starting orphaned host purge timer for host identifiers: %{public}s", v67, 0xCu);
      v99 = v128;
      __swift_destroy_boxed_opaque_existential_1(v128);
      MEMORY[0x22AA5EED0](v99, -1, -1);
      MEMORY[0x22AA5EED0](v67, -1, -1);

      (*(v60 + 8))(v86, v85);
      v74 = v141;
      v75 = v136;
      v51 = v132;
      goto LABEL_45;
    }

    v142 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v69 & ~(v69 >> 63), 0);
    if ((v69 & 0x8000000000000000) == 0)
    {
      v77 = v69;
      v127 = v67;
      v76 = v142;
      if ((v132 & 0xC000000000000001) != 0)
      {
        v78 = 0;
        do
        {
          MEMORY[0x22AA5DCC0](v78, v132);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
          v79 = sub_224DAA1C8();
          v81 = v80;
          swift_unknownObjectRelease();
          v142 = v76;
          v83 = *(v76 + 16);
          v82 = *(v76 + 24);
          if (v83 >= v82 >> 1)
          {
            sub_224A3DFD8((v82 > 1), v83 + 1, 1);
            v76 = v142;
          }

          ++v78;
          *(v76 + 16) = v83 + 1;
          v84 = v76 + 16 * v83;
          *(v84 + 32) = v79;
          *(v84 + 40) = v81;
        }

        while (v69 != v78);
      }

      else
      {
        v87 = (v132 + 32);
        do
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
          v88 = sub_224DAA1C8();
          v90 = v89;

          v142 = v76;
          v92 = *(v76 + 16);
          v91 = *(v76 + 24);
          if (v92 >= v91 >> 1)
          {
            sub_224A3DFD8((v91 > 1), v92 + 1, 1);
            v76 = v142;
          }

          *(v76 + 16) = v92 + 1;
          v93 = v76 + 16 * v92;
          *(v93 + 32) = v88;
          *(v93 + 40) = v90;
          ++v87;
          --v77;
        }

        while (v77);
      }

      v58 = v131;
      v60 = v134;
      v85 = v135;
      v86 = v137;
      v67 = v127;
      goto LABEL_44;
    }

    __break(1u);
LABEL_71:
    __break(1u);
  }

  else
  {

    if (v132)
    {
      v70 = v129;
      (*(v60 + 16))(v129, v57 + qword_281365438, v59);
      v71 = sub_224DAB228();
      v72 = sub_224DAF268();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_224A2F000, v71, v72, "Invalidated orphaned host purge timer.", v73, 2u);
        MEMORY[0x22AA5EED0](v73, -1, -1);
      }

      (*(v60 + 8))(v70, v59);
    }
  }
}

void sub_224C2B638()
{
  v1 = v0;
  v133 = sub_224DAC378();
  v117 = *(v133 - 8);
  v3 = MEMORY[0x28223BE20](v133, v2);
  v123 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v111 - v7;
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v111 - v10;
  v12 = sub_224DAB258();
  v126 = *(v12 - 8);
  v127 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v124 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v125 = (&v111 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v118 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v122 = &v111 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v130 = (&v111 - v27);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v111 - v30;
  v33 = MEMORY[0x28223BE20](v29, v32);
  v129 = &v111 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v111 - v36;
  v38 = *(v1 + qword_28135C9F0);
  os_unfair_lock_assert_owner(*(v38 + 16));
  v39 = qword_28135CA40;
  v40 = *(v1 + qword_28135CA40);
  v114 = v11;
  v113 = v8;
  v115 = v31;
  v128 = v40;
  if (v40)
  {

    sub_224DAC5F8();
  }

  v112 = v39;
  *(v1 + v39) = 0;

  os_unfair_lock_assert_owner(*(v38 + 16));
  v41 = qword_28135CA28;
  swift_beginAccess();
  v116 = v1;
  v42 = *(v1 + v41);
  v44 = v42 + 64;
  v43 = *(v42 + 64);
  v135[0] = MEMORY[0x277D84F90];
  v45 = 1 << *(v42 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v43;
  v48 = (v45 + 63) >> 6;
  v131 = (v117 + 48);

  v49 = 0;
  v50 = v129;
  if (v47)
  {
    goto LABEL_8;
  }

  while (1)
  {
LABEL_9:
    v51 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v51 >= v48)
    {
      break;
    }

    v47 = *(v44 + 8 * v51);
    ++v49;
    if (v47)
    {
      while (1)
      {
        v52 = __clz(__rbit64(v47));
        v47 &= v47 - 1;
        v53 = *(*(v42 + 56) + ((v51 << 9) | (8 * v52)));
        v54 = *(*v53 + 216);
        swift_beginAccess();
        sub_224A3796C(v53 + v54, v37, &qword_27D6F3948, &qword_224DB5C10);
        if ((*v131)(v37, 1, v133) == 1)
        {
          sub_224A3311C(v37, &qword_27D6F3948, &qword_224DB5C10);
          v49 = v51;
          if (!v47)
          {
            goto LABEL_9;
          }
        }

        else
        {

          sub_224A3311C(v37, &qword_27D6F3948, &qword_224DB5C10);
          sub_224DAF9B8();
          sub_224DAF9F8();
          v50 = v129;
          sub_224DAFA08();
          sub_224DAF9C8();
          v49 = v51;
          if (!v47)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v51 = v49;
      }
    }
  }

  v51 = v135[0];
  LODWORD(v44) = v135[0] < 0 || (v135[0] & 0x4000000000000000) != 0;
  if ((v44 & 1) == 0)
  {
    v55 = *(v135[0] + 16);
    goto LABEL_20;
  }

LABEL_65:
  v55 = sub_224DAF838();
LABEL_20:
  v56 = v116;
  v57 = v128;
  if (v55)
  {
    v58 = v50;
    v60 = v126;
    v59 = v127;
    v61 = v125;
    (*(v126 + 16))(v125, v116 + qword_281365438, v127);

    v62 = sub_224DAB228();
    v63 = sub_224DAF268();

    LODWORD(v124) = v63;
    v64 = os_log_type_enabled(v62, v63);
    v132 = v51;
    v128 = v55;
    if (!v64)
    {

      v73 = *(v60 + 8);
      v50 = (v60 + 8);
      v73(v61, v59);
      v74 = v58;
LABEL_41:
      v44 = v117 + 56;
      v119 = *(v117 + 56);
      v119(v74, 1, 1, v133);
      v91 = 0;
      v92 = v132;
      v129 = (v132 & 0xC000000000000001);
      v125 = (v44 - 24);
      v120 = v44;
      v121 = (v44 - 48);
      while (1)
      {
        if (v129)
        {
          v93 = MEMORY[0x22AA5DCC0](v91);
          v51 = v131;
          v44 = v91 + 1;
          if (__OFADD__(v91, 1))
          {
            goto LABEL_63;
          }
        }

        else
        {
          v51 = v131;
          if (v91 >= *(v92 + 16))
          {
            goto LABEL_64;
          }

          v93 = *(v92 + 8 * v91 + 32);

          v44 = v91 + 1;
          if (__OFADD__(v91, 1))
          {
            goto LABEL_63;
          }
        }

        v94 = *(*v93 + 216);
        swift_beginAccess();
        v50 = v130;
        sub_224A3796C(v93 + v94, v130, &qword_27D6F3948, &qword_224DB5C10);
        v95 = *v51;
        if ((*v51)(v50, 1, v133) != 1)
        {
          break;
        }

        sub_224A3311C(v50, &qword_27D6F3948, &qword_224DB5C10);
LABEL_43:
        ++v91;
        v92 = v132;
        if (v44 == v128)
        {

          v107 = v115;
          sub_224A3796C(v74, v115, &qword_27D6F3948, &qword_224DB5C10);
          if (v95(v107, 1, v133) == 1)
          {
            sub_224A3311C(v74, &qword_27D6F3948, &qword_224DB5C10);
            sub_224A3311C(v107, &qword_27D6F3948, &qword_224DB5C10);
          }

          else
          {
            v108 = v117;
            v109 = v114;
            v110 = v133;
            (*(v117 + 32))(v114, v107, v133);
            sub_224DAC648();
            (*(v108 + 16))(v113, v109, v110);
            sub_224DAC618();
            *(v116 + v112) = sub_224DAC608();

            swift_allocObject();
            swift_weakInit();

            sub_224DAC638();

            (*(v108 + 8))(v109, v110);
            sub_224A3311C(v74, &qword_27D6F3948, &qword_224DB5C10);
          }

          return;
        }
      }

      v126 = v44;
      v96 = v133;
      v97 = v123;
      v124 = *v125;
      (v124)(v123, v50, v133);
      v50 = v74;
      v98 = v74;
      v99 = v122;
      sub_224A3796C(v98, v122, &qword_27D6F3948, &qword_224DB5C10);
      v100 = v95(v99, 1, v96);
      v127 = v95;
      if (v100 == 1)
      {
        sub_224A3311C(v50, &qword_27D6F3948, &qword_224DB5C10);

        v101 = v99;
        v102 = v97;
      }

      else
      {
        sub_224A3311C(v99, &qword_27D6F3948, &qword_224DB5C10);
        v103 = v118;
        sub_224A3796C(v50, v118, &qword_27D6F3948, &qword_224DB5C10);
        if (v95(v103, 1, v96) == 1)
        {
          goto LABEL_67;
        }

        sub_224C41198(&qword_281350DF0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A18]);
        v102 = v123;
        v104 = v103;
        v105 = sub_224DAEDB8();

        isa = v121->isa;
        (v121->isa)(v104, v96);
        v101 = v50;
        if ((v105 & 1) == 0)
        {
          (isa)(v102, v96, &qword_224DB5C10);
          goto LABEL_57;
        }
      }

      sub_224A3311C(v101, &qword_27D6F3948, &qword_224DB5C10);
      (v124)(v50, v102, v96);
      v119(v50, 0, 1, v96);
LABEL_57:
      v74 = v50;
      v44 = v126;
      v95 = v127;
      goto LABEL_43;
    }

    v65 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v135[0] = v50;
    *v65 = 136446210;
    v121 = v62;
    if (v44)
    {
      v66 = sub_224DAF838();
    }

    else
    {
      v66 = *(v132 + 16);
    }

    v75 = MEMORY[0x277D84F90];
    v76 = v125;
    if (!v66)
    {
LABEL_40:
      v134 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
      sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
      v86 = sub_224DAEDA8();
      v88 = v87;

      v89 = sub_224A33F74(v86, v88, v135);

      *(v65 + 4) = v89;
      v90 = v121;
      _os_log_impl(&dword_224A2F000, v121, v124, "Starting orphaned host purge timer for host identifiers: %{public}s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x22AA5EED0](v50, -1, -1);
      MEMORY[0x22AA5EED0](v65, -1, -1);

      (*(v126 + 8))(v76, v127);
      v74 = v129;
      goto LABEL_41;
    }

    v120 = v50;
    v77 = v65;
    v134 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v66 & ~(v66 >> 63), 0);
    if ((v66 & 0x8000000000000000) == 0)
    {
      v78 = 0;
      v75 = v134;
      v79 = v132 & 0xC000000000000001;
      do
      {
        if (v79)
        {
          MEMORY[0x22AA5DCC0](v78, v132);
        }

        else
        {
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
        v80 = sub_224DAA1C8();
        v82 = v81;

        v134 = v75;
        v84 = *(v75 + 16);
        v83 = *(v75 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_224A3DFD8((v83 > 1), v84 + 1, 1);
          v75 = v134;
        }

        ++v78;
        *(v75 + 16) = v84 + 1;
        v85 = v75 + 16 * v84;
        *(v85 + 32) = v80;
        *(v85 + 40) = v82;
      }

      while (v66 != v78);
      v76 = v125;
      v65 = v77;
      v50 = v120;
      goto LABEL_40;
    }

    __break(1u);
LABEL_67:
    __break(1u);
  }

  else
  {

    if (v57)
    {
      v68 = v126;
      v67 = v127;
      v69 = v124;
      (*(v126 + 16))(v124, v56 + qword_281365438, v127);
      v70 = sub_224DAB228();
      v71 = sub_224DAF268();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_224A2F000, v70, v71, "Invalidated orphaned host purge timer.", v72, 2u);
        MEMORY[0x22AA5EED0](v72, -1, -1);
      }

      (*(v68 + 8))(v69, v67);
    }
  }
}

double sub_224C2C430(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *), void (*a4)(uint64_t, char *))
{
  v6 = type metadata accessor for _HostFilterableChange(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v19 = 0;
    v14 = *(Strong + qword_28135C9F0);
    os_unfair_lock_lock(*(v14 + 16));
    a3(v13, &v19);
    os_unfair_lock_unlock(*(v14 + 16));
    if (v19)
    {
      v15 = *(v19 + 16);
      if (v15)
      {
        v16 = v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        v17 = *(v7 + 72);
        do
        {
          sub_224C4E30C(v16, v10, type metadata accessor for _HostFilterableChange);
          a4(15, v10);
          sub_224C4E374(v10, type metadata accessor for _HostFilterableChange);
          v16 += v17;
          --v15;
        }

        while (v15);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_224C2C5F0(uint64_t a1, uint64_t *a2)
{
  v137 = a2;
  v125 = type metadata accessor for _HostFilterableChange(0);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v3);
  v136 = &v112[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v114 = *(v143 - 8);
  v6 = MEMORY[0x28223BE20](v143, v5);
  v135 = &v112[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v8);
  v126 = &v112[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v123 = &v112[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12, v14);
  v129 = &v112[-v16];
  MEMORY[0x28223BE20](v15, v17);
  v146 = &v112[-v18];
  v19 = sub_224DAC378();
  v140 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v128 = &v112[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v112[-v25];
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v112[-v28];
  v30 = sub_224DAB258();
  v32 = MEMORY[0x28223BE20](v30, v31);
  v131 = &v112[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v112[-v35];
  v38 = v37;
  v39 = *(v37 + 16);
  v121 = qword_281365438;
  v132 = v40;
  v120 = v37 + 16;
  v119 = v39;
  (v39)(&v112[-v35], a1 + qword_281365438);
  v41 = sub_224DAB228();
  v42 = sub_224DAF278();
  v43 = os_log_type_enabled(v41, v42);
  v141 = v19;
  if (v43)
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_224A2F000, v41, v42, "Orphaned host purge timer fired", v44, 2u);
    v45 = v44;
    v19 = v141;
    MEMORY[0x22AA5EED0](v45, -1, -1);
  }

  v46 = *(v38 + 8);
  v122 = v38 + 8;
  v118 = v46;
  v46(v36, v132);
  sub_224DAC338();
  v127 = v29;
  sub_224DAC358();
  v47 = v140 + 1;
  v138 = v140[1];
  v138(v26, v19);
  os_unfair_lock_assert_owner(*(*(a1 + qword_28135C9F0) + 16));
  v48 = qword_28135CA28;
  swift_beginAccess();
  v142 = a1;
  v117 = v48;
  v49 = *(a1 + v48);
  v51 = v49 + 64;
  v50 = *(v49 + 64);
  *&v149 = MEMORY[0x277D84F90];
  v52 = 1 << *(v49 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & v50;
  v55 = (v52 + 63) >> 6;
  v139 = v47;
  v147 = v49;
  v148 = (v47 + 5);

  v56 = 0;
  if (v54)
  {
    goto LABEL_8;
  }

  while (1)
  {
LABEL_9:
    v57 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v57 >= v55)
    {
      break;
    }

    v54 = *(v51 + 8 * v57);
    ++v56;
    if (v54)
    {
      while (1)
      {
        v58 = __clz(__rbit64(v54));
        v54 &= v54 - 1;
        v59 = *(*(v147 + 56) + ((v57 << 9) | (8 * v58)));
        v60 = *(*v59 + 216);
        swift_beginAccess();
        v61 = v59 + v60;
        v62 = v146;
        v48 = &qword_27D6F3948;
        sub_224A3796C(v61, v146, &qword_27D6F3948, &qword_224DB5C10);
        if ((*v148)(v62, 1, v19) == 1)
        {
          sub_224A3311C(v62, &qword_27D6F3948, &qword_224DB5C10);
          v56 = v57;
          if (!v54)
          {
            goto LABEL_9;
          }
        }

        else
        {

          sub_224A3311C(v62, &qword_27D6F3948, &qword_224DB5C10);
          v48 = &v149;
          sub_224DAF9B8();
          sub_224DAF9F8();
          v19 = v141;
          sub_224DAFA08();
          sub_224DAF9C8();
          v56 = v57;
          if (!v54)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v57 = v56;
      }
    }
  }

  v48 = v149;
  if ((v149 & 0x8000000000000000) == 0 && (v149 & 0x4000000000000000) == 0)
  {
    result = *(v149 + 16);
    goto LABEL_18;
  }

LABEL_53:
  result = sub_224DAF838();
LABEL_18:
  v65 = v129;
  v66 = v128;
  v67 = v127;
  if (result)
  {
    if (result >= 1)
    {
      v68 = 0;
      v116 = (v142 + qword_28135CA30);
      v145 = v48 & 0xC000000000000001;
      v133 = v140 + 4;
      v144 = (v114 + 16);
      v130 = (v114 + 8);
      v115 = v140 + 7;
      *&v63 = 136446210;
      v113 = v63;
      v134 = v48;
      v146 = result;
      while (1)
      {
        if (v145)
        {
          v69 = MEMORY[0x22AA5DCC0](v68, v48);
        }

        else
        {
          v69 = *(v48 + 8 * v68 + 32);
        }

        v70 = *(*v69 + 216);
        swift_beginAccess();
        v147 = v70;
        sub_224A3796C(v69 + v70, v65, &qword_27D6F3948, &qword_224DB5C10);
        if ((*v148)(v65, 1, v19) != 1)
        {
          break;
        }

        sub_224A3311C(v65, &qword_27D6F3948, &qword_224DB5C10);
LABEL_22:
        if (v146 == ++v68)
        {
          goto LABEL_51;
        }
      }

      (*v133)(v66, v65, v19);
      sub_224C41198(&qword_281350DF0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A18]);
      if (sub_224DAEDB8())
      {
        v138(v66, v19);

LABEL_50:
        v48 = v134;
        goto LABEL_22;
      }

      v71 = v131;
      v72 = v132;
      v119(v131, v142 + v121, v132);

      v73 = sub_224DAB228();
      v74 = sub_224DAF2A8();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        *&v149 = v140;
        *v75 = v113;
        v76 = v126;
        v77 = v143;
        (*v144)(v126, v69 + qword_281365430, v143);
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
        v78 = sub_224DAFD28();
        v80 = v79;

        (*v130)(v76, v77);
        v81 = sub_224A33F74(v78, v80, &v149);
        v82 = v137;

        *(v75 + 4) = v81;
        _os_log_impl(&dword_224A2F000, v73, v74, "Purging orphaned host: %{public}s", v75, 0xCu);
        v83 = v140;
        __swift_destroy_boxed_opaque_existential_1(v140);
        MEMORY[0x22AA5EED0](v83, -1, -1);
        MEMORY[0x22AA5EED0](v75, -1, -1);

        v118(v131, v132);
        if (*v82)
        {
          goto LABEL_34;
        }
      }

      else
      {

        v118(v71, v72);
        v82 = v137;
        if (*v137)
        {
          goto LABEL_34;
        }
      }

      *v82 = MEMORY[0x277D84F90];
LABEL_34:
      v84 = v136;
      v140 = *v144;
      (v140)(v136, v69 + qword_281365430, v143);
      v85 = *(*v69 + 112);
      swift_beginAccess();
      v86 = v125;
      v87 = *(v125 + 24);
      v88 = sub_224DAA428();
      v89 = *(*(v88 - 8) + 16);
      v89(&v84[v87], v69 + v85, v88);
      v90 = v137;
      v89(&v84[*(v86 + 20)], &v84[v87], v88);
      v91 = *v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v90 = v91;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v91 = sub_224AD9290(0, v91[2] + 1, 1, v91);
        *v90 = v91;
      }

      v93 = v142;
      v95 = v91[2];
      v94 = v91[3];
      v96 = v143;
      if (v95 >= v94 >> 1)
      {
        v91 = sub_224AD9290((v94 > 1), v95 + 1, 1, v91);
        *v137 = v91;
      }

      v91[2] = v95 + 1;
      sub_224C4E3D4(v136, v91 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v95, type metadata accessor for _HostFilterableChange);
      v97 = v123;
      (*v115)(v123, 1, 1, v141);
      v98 = v147;
      swift_beginAccess();
      sub_224A838C0(v97, v69 + v98, &qword_27D6F3948, &qword_224DB5C10);
      swift_endAccess();
      v99 = qword_281365430;
      v100 = v135;
      (v140)(v135, v69 + qword_281365430, v96);
      v101 = v117;
      swift_beginAccess();

      v102 = sub_224A683FC(v100);
      v147 = v99;
      if (v103)
      {
        v104 = v102;
        v105 = swift_isUniquelyReferenced_nonNull_native();
        v106 = *(v93 + v101);
        v152 = v106;
        *(v93 + v101) = 0x8000000000000000;
        if (!v105)
        {
          sub_224B25090();
          v106 = v152;
        }

        v107 = *(v114 + 8);
        v96 = v143;
        v107(*(v106 + 48) + *(v114 + 72) * v104, v143);
        sub_224B31518(v104, v106);
        *(v142 + v101) = v106;
      }

      else
      {
        v107 = *v130;
      }

      v107(v135, v96);
      swift_endAccess();
      if (*(v116 + 3))
      {
        sub_224A3317C(v116, &v149);
        v108 = *(&v150 + 1);
        if (*(&v150 + 1))
        {
LABEL_45:
          v109 = v151;
          __swift_project_boxed_opaque_existential_1(&v149, v108);
          v110 = v126;
          (v140)(v126, v69 + v147, v96);

          (*(v109 + 48))(v110, v108, v109);

          v107(v110, v96);
          v66 = v128;
          v19 = v141;
          v138(v128, v141);
          goto LABEL_48;
        }
      }

      else
      {
        v111 = v116[1];
        v149 = *v116;
        v150 = v111;
        v151 = *(v116 + 4);
        v108 = *(&v111 + 1);
        if (*(&v111 + 1))
        {
          goto LABEL_45;
        }
      }

      v66 = v128;
      v19 = v141;
      v138(v128, v141);
      if (!*(&v150 + 1))
      {
LABEL_49:
        v65 = v129;
        v67 = v127;
        goto LABEL_50;
      }

LABEL_48:
      __swift_destroy_boxed_opaque_existential_1(&v149);
      goto LABEL_49;
    }

    __break(1u);
  }

  else
  {
LABEL_51:

    sub_224C2A790();
    return (v138)(v67, v19);
  }

  return result;
}