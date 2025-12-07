void sub_1DA82D378(void *a1, uint64_t a2)
{
  v103 = a2;
  v3 = [a1 sourceSettings];
  v4 = [v3 notificationSettings];

  v5 = [v4 authorizationStatus];
  v6 = 5;
  if (v5 > 2)
  {
    if (v5 != 3 && v5 != 4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v5 == 1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = 3;
    goto LABEL_9;
  }

  if (v5 == 2)
  {
LABEL_7:
    v6 = 4;
  }

LABEL_9:
  v7 = [a1 sourceSettings];
  v8 = [v7 notificationSettings];

  v9 = [v8 remoteNotificationsSetting];
  if (v9 == 2)
  {
    v10 = 4;
  }

  else if (v9 == 1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = 3;
  }

  else
  {
    v10 = 5;
  }

  v11 = [a1 sourceSettings];
  v12 = [v11 notificationSettings];

  v13 = [v12 scheduledDeliverySetting];
  if (v13 == 2)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = 3;
  }

  else
  {
    v14 = 4;
  }

  v15 = v6;
  if (v6 != 5)
  {
    v15 = v6;
    if (v6 == 4)
    {
      if (v10 == 4 || (v15 = v10, v10 == 5))
      {
        v15 = v14;
      }
    }

    sub_1DA8304A0(v15);
  }

  v105 = v14;
  v109 = v6;
  v106 = v15;
  v107 = v10;
  if ([a1 isHiddenFromSettings] & 1) != 0 || (v51 = objc_msgSend(a1, sel_sourceSettings), v52 = objc_msgSend(v51, sel_isRestricted), v51, v15 == 5) || (v52)
  {
    if (qword_1EE110E70 != -1)
    {
      swift_once();
    }

    v16 = sub_1DA9405A4();
    __swift_project_value_buffer(v16, qword_1EE110E80);
    v17 = a1;
    v18 = sub_1DA940584();
    v19 = sub_1DA940F04();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v108[0] = v21;
      *v20 = 136380675;
      v22 = [v17 sourceIdentifier];
      v23 = sub_1DA940A14();
      v25 = v24;

      v26 = sub_1DA7AE6E8(v23, v25, v108);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_1DA7A9000, v18, v19, "Removing %{private}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12739F0](v21, -1, -1);
      MEMORY[0x1E12739F0](v20, -1, -1);
    }

    v27 = [v17 sourceIdentifier];
    v28 = sub_1DA940A14();
    v30 = v29;

    v108[0] = v28;
    v108[1] = v30;
    v31 = sub_1DA93FDC4();
    v32 = *(v31 - 8);
    MEMORY[0x1EEE9AC00](v31);
    v34 = &v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 104))(v34, *MEMORY[0x1E69C74C8], v31);
    v35 = v104;
    sub_1DA93FC94();
    v36 = v35;
    if (!v35)
    {
      sub_1DA830524(v105);
      sub_1DA8305BC(v107);
      sub_1DA8305BC(v106);
      v96 = sub_1DA8305BC(v109);
      (*(v32 + 8))(v34, v31, v96);

      return;
    }

    (*(v32 + 8))(v34, v31);

    v37 = v17;
    v38 = v35;
    v39 = sub_1DA940584();
    v40 = sub_1DA940F14();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v108[0] = v43;
      *v41 = 136380931;
      v44 = [v37 sourceIdentifier];
      v45 = sub_1DA940A14();
      v47 = v46;

      v48 = sub_1DA7AE6E8(v45, v47, v108);

      *(v41 + 4) = v48;
      *(v41 + 12) = 2114;
      v49 = v35;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v50;
      *v42 = v50;
      _os_log_impl(&dword_1DA7A9000, v39, v40, "Error removing source %{private}s from store. %{public}@", v41, 0x16u);
      sub_1DA7BA120(v42, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v42, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1E12739F0](v43, -1, -1);
      MEMORY[0x1E12739F0](v41, -1, -1);
      sub_1DA8305BC(v109);
      sub_1DA830524(v105);
      sub_1DA8305BC(v106);
      sub_1DA8305BC(v107);

      return;
    }

    sub_1DA8305BC(v109);
    sub_1DA830524(v105);
    sub_1DA8305BC(v106);
    sub_1DA8305BC(v107);
  }

  else
  {
    v53 = [a1 sourceIdentifier];
    v54 = sub_1DA940A14();
    v56 = v55;

    type metadata accessor for MinimalSource();
    v57 = swift_allocObject();
    v57[2] = v54;
    v57[3] = v56;
    v57[4] = v15;
    sub_1DA8304A0(v15);
    if (qword_1EE110E70 != -1)
    {
      swift_once();
    }

    v58 = sub_1DA9405A4();
    v59 = __swift_project_value_buffer(v58, qword_1EE110E80);
    v60 = a1;
    v100 = v59;
    v61 = sub_1DA940584();
    v62 = sub_1DA940F04();

    v99 = v60;
    if (os_log_type_enabled(v61, v62))
    {
      v63 = v57;
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v108[0] = v65;
      *v64 = 136380675;
      v66 = [v60 sourceIdentifier];
      v67 = sub_1DA940A14();
      v69 = v68;

      v70 = sub_1DA7AE6E8(v67, v69, v108);

      *(v64 + 4) = v70;
      _os_log_impl(&dword_1DA7A9000, v61, v62, "Adding %{private}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x1E12739F0](v65, -1, -1);
      v71 = v64;
      v57 = v63;
      MEMORY[0x1E12739F0](v71, -1, -1);
    }

    v108[0] = v57;
    v72 = sub_1DA93FC54();
    v102 = &v98;
    v73 = *(v72 - 8);
    MEMORY[0x1EEE9AC00](v72);
    v75 = &v98 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 104))(v75, *MEMORY[0x1E69C73B8], v72);
    v76 = v57;
    v77 = sub_1DA93FDC4();
    v101 = &v98;
    v78 = *(v77 - 8);
    MEMORY[0x1EEE9AC00](v77);
    v80 = &v98 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v78 + 104))(v80, *MEMORY[0x1E69C74C8], v77);
    v81 = v104;
    sub_1DA93FC84();
    v36 = v81;
    if (!v81)
    {
      sub_1DA830524(v105);
      sub_1DA8305BC(v107);
      sub_1DA8305BC(v106);
      v97 = sub_1DA8305BC(v109);
      (*(v78 + 8))(v80, v77, v97);
      (*(v73 + 8))(v75, v72);

      return;
    }

    v104 = v76;
    (*(v78 + 8))(v80, v77);
    (*(v73 + 8))(v75, v72);
    v82 = v99;
    v83 = v81;
    v84 = sub_1DA940584();
    v85 = sub_1DA940F14();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v108[0] = v88;
      *v86 = 136380931;
      v89 = [v82 sourceIdentifier];
      v90 = sub_1DA940A14();
      v92 = v91;

      v93 = sub_1DA7AE6E8(v90, v92, v108);

      *(v86 + 4) = v93;
      *(v86 + 12) = 2114;
      v94 = v81;
      v95 = _swift_stdlib_bridgeErrorToNSError();
      *(v86 + 14) = v95;
      *v87 = v95;
      _os_log_impl(&dword_1DA7A9000, v84, v85, "Error adding source %{private}s to store. %{public}@", v86, 0x16u);
      sub_1DA7BA120(v87, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v87, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v88);
      MEMORY[0x1E12739F0](v88, -1, -1);
      MEMORY[0x1E12739F0](v86, -1, -1);
      sub_1DA8305BC(v109);
      sub_1DA830524(v105);
      sub_1DA8305BC(v106);

      sub_1DA8305BC(v107);

      return;
    }

    sub_1DA8305BC(v109);
    sub_1DA830524(v105);
    sub_1DA8305BC(v106);

    sub_1DA8305BC(v107);
  }
}

void sub_1DA82DFE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  if (*(v0 + 64) == 1)
  {
  }

  else
  {
    v4 = sub_1DA941684();

    if ((v4 & 1) == 0)
    {
      __break(1u);
      return;
    }
  }

  v5 = *(v0 + 40);
  if (v5)
  {
    v6 = sub_1DA940D34();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    v7[5] = v0;

    *(v0 + 80) = sub_1DA8DB00C(0, 0, v3, &unk_1DA9591A8, v7);
  }
}

uint64_t sub_1DA82E164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DA82E184, 0, 0);
}

uint64_t sub_1DA82E184()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA8, &qword_1DA9591B0);
  v0[9] = v1;
  v0[10] = *(v1 - 8);
  v0[11] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FB0, &qword_1DA9591B8);
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  sub_1DA93FC74();
  sub_1DA940D84();
  (*(v3 + 8))(v4, v2);

  v0[12] = 0;
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1DA82E354;
  v6 = v0[9];

  return MEMORY[0x1EEE6D9C8](v0 + 4, 0, 0, v6);
}

uint64_t sub_1DA82E354()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA82E450, 0, 0);
}

void sub_1DA82E450()
{
  v116 = v0;
  v1 = (v0 + 4);
  v2 = v0[4];
  if (v2)
  {
    if (qword_1EE110E70 != -1)
    {
LABEL_63:
      swift_once();
    }

    v3 = sub_1DA9405A4();
    __swift_project_value_buffer(v3, qword_1EE110E80);

    v4 = sub_1DA940584();
    v5 = sub_1DA940F34();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134349056;
      *(v6 + 4) = v2[2];

      _os_log_impl(&dword_1DA7A9000, v4, v5, "Got %{public}ld store updates.", v6, 0xCu);
      MEMORY[0x1E12739F0](v6, -1, -1);
    }

    else
    {
    }

    *(v1 + 8) = MEMORY[0x1E69E7CC0];
    isa = v2[2].isa;
    v91 = v1;
    if (isa)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FB8, &qword_1DA9591C0);
      v9 = 0;
      v10 = *(v8 - 8);
      v100 = v2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v92 = (v10 + 96);
      v1 = MEMORY[0x1E69E7CC0];
      v101 = v10;
      v106 = v0[12];
      v89 = MEMORY[0x1E69E7CC0];
      v98 = v2;
      v111 = v8;
      v110 = v0;
      v99 = (v10 + 8);
      while (1)
      {
        if (v9 >= v2[2].isa)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v112 = v9;
        v14 = &v100[*(v101 + 72) * v9];
        v15 = swift_task_alloc();
        v16 = *(v101 + 16);
        (v16)(v15, v14, v8);
        v17 = swift_task_alloc();
        v113 = v15;
        (v16)(v17, v15, v8);
        v114 = v17;
        v18 = (*(v101 + 88))(v17, v8);
        if (MEMORY[0x1E69C73D0] && v18 == *MEMORY[0x1E69C73D0])
        {
          v107 = v1;
          (*v92)(v17, v8);
          v19 = *(v17 + 8);
          v103 = *v17;
          v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FC0, &qword_1DA9591C8) + 48);
          v21 = sub_1DA93FD94();
          v22 = *(v21 - 8);
          v0 = (*(v22 + 64) + 15);
          v23 = swift_task_alloc();
          v24 = v22;
          (*(v22 + 32))(v23, v114 + v20, v21);
          v25 = swift_task_alloc();
          log = v23;
          (*(v24 + 16))(v25, v23, v21);

          v2 = sub_1DA940584();
          v26 = sub_1DA940F04();

          v96 = v19;
          if (os_log_type_enabled(v2, v26))
          {
            v27 = swift_slowAlloc();
            v0 = swift_slowAlloc();
            v115[0] = v0;
            *v27 = 136315395;
            sub_1DA8306B8();
            v28 = sub_1DA941614();
            v30 = v29;
            v31 = *(v24 + 8);
            v31(v25, v21);
            v32 = sub_1DA7AE6E8(v28, v30, v115);

            *(v27 + 4) = v32;
            *(v27 + 12) = 2081;
            *(v27 + 14) = sub_1DA7AE6E8(v103, v19, v115);
            _os_log_impl(&dword_1DA7A9000, v2, v26, "[%s] Removing %{private}s", v27, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12739F0](v0, -1, -1);
            MEMORY[0x1E12739F0](v27, -1, -1);
          }

          else
          {

            v31 = *(v24 + 8);
            v31(v25, v21);
          }

          v62 = v110[8];

          if (*(v62 + 64) == 1)
          {

            v1 = v19;
            v63 = v103;
          }

          else
          {
            v64 = sub_1DA941684();

            v1 = v19;
            v63 = v103;
            if ((v64 & 1) == 0)
            {
              goto LABEL_61;
            }
          }

          v65 = v31;
          v66 = *(v110[8] + 72);
          v67 = swift_task_alloc();
          *(v67 + 16) = v63;
          *(v67 + 24) = v1;
          v68 = v66 + 6;

          os_unfair_lock_lock(v66 + 6);
          sub_1DA83069C(&v66[4]);
          if (v106)
          {
            goto LABEL_57;
          }

          os_unfair_lock_unlock(v66 + 6);

          v69 = v107;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v69 = sub_1DA7B6928(0, *(v107 + 16) + 1, 1, v107);
          }

          v71 = *(v69 + 2);
          v70 = *(v69 + 3);
          if (v71 >= v70 >> 1)
          {
            v72 = sub_1DA7B6928((v70 > 1), v71 + 1, 1, v69);
          }

          else
          {
            v72 = v69;
          }

          v65(log, v21);
          v8 = v111;
          (*v99)(v113, v111);
          *(v72 + 2) = v71 + 1;
          v73 = &v72[16 * v71];
          *(v73 + 4) = v103;
          *(v73 + 5) = v96;
          v1 = v72;

          v106 = 0;
          v13 = v112;
          v2 = v98;
          v0 = v110;
        }

        else
        {
          if (MEMORY[0x1E69C73D8] && v18 == *MEMORY[0x1E69C73D8])
          {
            (*v92)(v17, v8);
            v33 = *v17;
            v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD4FD0, &unk_1DA9591D0);
            v34 = v104[12];
            v35 = sub_1DA93FD94();
            v36 = *(v35 - 8);
            v2 = swift_task_alloc();
            (*(v36 + 32))(v2, v114 + v34, v35);
            v37 = swift_task_alloc();
            v97 = v2;
            (*(v36 + 16))(v37, v2, v35);

            v38 = sub_1DA940584();
            v39 = sub_1DA940F04();

            if (os_log_type_enabled(v38, v39))
            {
              v93 = v39;
              loga = v38;
              v108 = v1;
              v40 = v36;
              v41 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              *(v91 + 16) = v90;
              *v41 = 136315651;
              sub_1DA8306B8();
              v42 = sub_1DA941614();
              v44 = v43;
              v45 = *(v40 + 8);
              v45(v37, v35);
              v46 = sub_1DA7AE6E8(v42, v44, (v91 + 16));

              *(v41 + 4) = v46;
              *(v41 + 12) = 2081;
              v47 = *(v33 + 2);
              v48 = *(v33 + 3);

              v49 = sub_1DA7AE6E8(v47, v48, (v91 + 16));

              *(v41 + 14) = v49;
              *(v41 + 22) = 2082;
              v2 = *(v33 + 4);
              if (v2 == 4)
              {
                v50 = 0xE700000000000000;
                v51 = 0x64656C62616E65;
              }

              else
              {
                v0[2] = 0x64656C6261736964;
                v0[3] = 0xE900000000000028;
                if (v2 == 3)
                {
                  v74 = 0;
                  v75 = 0xE000000000000000;
                }

                else
                {
                  v115[0] = v2;
                  v76 = sub_1DA8304A0(v2);
                  v74 = NotificationSource.State.OverrideReason.description.getter(v76);
                  v75 = v77;
                }

                MEMORY[0x1E1271BD0](v74, v75);

                MEMORY[0x1E1271BD0](41, 0xE100000000000000);
                sub_1DA830524(v2);
                v51 = v0[2];
                v50 = v0[3];
              }

              v78 = sub_1DA7AE6E8(v51, v50, (v91 + 16));

              *(v41 + 24) = v78;
              _os_log_impl(&dword_1DA7A9000, loga, v93, "[%s] Adding %{private}s = %{public}s", v41, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1E12739F0](v90, -1, -1);
              MEMORY[0x1E12739F0](v41, -1, -1);

              v1 = v108;
            }

            else
            {

              v45 = *(v36 + 8);
              v45(v37, v35);
            }

            v79 = v0[8];

            if (*(v79 + 64) == 1)
            {
            }

            else
            {
              v80 = sub_1DA941684();

              if ((v80 & 1) == 0)
              {
                goto LABEL_62;
              }
            }

            v81 = v1;
            v82 = *(v0[8] + 72);
            v68 = (v82 + 24);

            os_unfair_lock_lock((v82 + 24));
            sub_1DA830704((v82 + 16));
            if (v106)
            {
LABEL_57:

              os_unfair_lock_unlock(v68);
              return;
            }

            os_unfair_lock_unlock((v82 + 24));

            MEMORY[0x1E1271CA0](v83);
            if (*((*(v91 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v91 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1DA940C04();
            }

            v84 = v104[16];
            v85 = v104[20];
            sub_1DA940C14();

            v45(v97, v35);
            v8 = v111;
            (*v99)(v113, v111);
            v89 = *(v91 + 8);

            v86 = sub_1DA93FB24();
            (*(*(v86 - 8) + 8))(v114 + v85, v86);
            sub_1DA7BA120(v114 + v84, &qword_1ECBD6310, &unk_1DA95F3B0);
            v106 = 0;
            v1 = v81;
            v2 = v98;
          }

          else
          {
            v52 = swift_task_alloc();
            (v16)(v52, v15, v8);
            v53 = sub_1DA940584();
            v105 = sub_1DA940F14();
            if (os_log_type_enabled(v53, v105))
            {
              v109 = v1;
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v115[0] = v55;
              *v54 = 136380675;
              swift_task_alloc();
              v16();
              v56 = sub_1DA940A74();
              v58 = v57;
              v11 = *v99;
              (*v99)(v52, v111);

              v59 = sub_1DA7AE6E8(v56, v58, v115);
              v2 = v98;

              *(v54 + 4) = v59;
              _os_log_impl(&dword_1DA7A9000, v53, v105, "Unknown update type: %{private}s.", v54, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v55);
              v60 = v55;
              v8 = v111;
              MEMORY[0x1E12739F0](v60, -1, -1);
              v61 = v54;
              v1 = v109;
              MEMORY[0x1E12739F0](v61, -1, -1);

              v11(v113, v111);
              v12 = v114;
            }

            else
            {

              v11 = *v99;
              (*v99)(v52, v8);
              v11(v113, v8);
              v12 = v114;
              v2 = v98;
            }

            v11(v12, v8);
            v0 = v110;
          }

          v13 = v112;
        }

        v9 = (v13 + 1);

        if (isa == v9)
        {
          goto LABEL_52;
        }
      }
    }

    v106 = v0[12];
    v1 = MEMORY[0x1E69E7CC0];
    v89 = MEMORY[0x1E69E7CC0];
LABEL_52:

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1DA8BCB40(v89, v1);
      swift_unknownObjectRelease();
    }

    v0[12] = v106;
    v87 = swift_task_alloc();
    v0[13] = v87;
    *v87 = v0;
    v87[1] = sub_1DA82E354;
    v88 = v0[9];

    MEMORY[0x1EEE6D9C8](v91, 0, 0, v88);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v7 = v0[1];

    v7();
  }
}

void sub_1DA82F3C4(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for NotificationSource(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 64) == 1)
  {
  }

  else
  {
    v9 = sub_1DA941684();

    if ((v9 & 1) == 0)
    {
      __break(1u);
      swift_once();
      v28 = sub_1DA9405A4();
      __swift_project_value_buffer(v28, qword_1EE110E80);
      v29 = v43;
      sub_1DA830728(v42, v43, type metadata accessor for NotificationSource);
      v30 = v2;
      v31 = sub_1DA940584();
      v32 = sub_1DA940F14();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v47[0] = v35;
        *v33 = 136380931;
        v36 = *(v29 + 16);
        v37 = *(v29 + 24);

        sub_1DA82A7FC(v29);
        v38 = sub_1DA7AE6E8(v36, v37, v47);

        *(v33 + 4) = v38;
        *(v33 + 12) = 2114;
        v39 = v2;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v40;
        *v34 = v40;
        _os_log_impl(&dword_1DA7A9000, v31, v32, "Error adding ghost source %{private}s to store. %{public}@", v33, 0x16u);
        sub_1DA7BA120(v34, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v34, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1E12739F0](v35, -1, -1);
        MEMORY[0x1E12739F0](v33, -1, -1);
      }

      else
      {

        sub_1DA82A7FC(v29);
      }

      return;
    }
  }

  v10 = *(v3 + 72);
  MEMORY[0x1EEE9AC00](v8);
  *(&v41 - 2) = a1;

  os_unfair_lock_lock((v10 + 24));
  sub_1DA8305A0((v10 + 16), v47);
  os_unfair_lock_unlock((v10 + 24));
  v11 = v47[0];

  if (v11)
  {
    if (*(v3 + 40))
    {
      v42 = a1;
      v43 = v7;
      v12 = a1[2];
      v13 = a1[3];
      v14 = a1[7];
      type metadata accessor for MinimalSource();
      v15 = swift_allocObject();
      v15[2] = v12;
      v15[3] = v13;
      v15[4] = v14;
      v16 = v14;
      v47[0] = v15;
      v17 = sub_1DA93FC54();
      v46 = &v41;
      v18 = *(v17 - 8);
      MEMORY[0x1EEE9AC00](v17);
      v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = *MEMORY[0x1E69C73B8];
      v22 = *(v18 + 104);
      v45 = v23;
      v22(v20, v21);
      v24 = sub_1DA93FDC4();
      v44 = &v41;
      v25 = *(v24 - 8);
      MEMORY[0x1EEE9AC00](v24);
      v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 104))(v27, *MEMORY[0x1E69C74C8], v24);

      sub_1DA8304A0(v16);
      sub_1DA93FC84();

      (*(v25 + 8))(v27, v24);
      (*(v18 + 8))(v20, v45);
    }
  }
}

void sub_1DA82F948(uint64_t *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v46 = a3;
  v6 = type metadata accessor for NotificationSource(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v43 - v10;
  v12 = a2[7];
  v14 = a2[2];
  v13 = a2[3];
  v44 = a1;
  v15 = *a1;
  v16 = *(v15 + 16);
  sub_1DA8304A0(v12);
  v45 = v13;
  if (v16)
  {
    v17 = sub_1DA85A4B4(v14, v13);
    v18 = v14;
    if (v19)
    {
      v20 = *(*(v15 + 56) + 8 * v17);
      sub_1DA8304A0(v20);
      if (v12 != 5)
      {
        goto LABEL_9;
      }

LABEL_6:
      if (v20 == 5)
      {
        sub_1DA8305BC(5uLL);
        v21 = 0;
        goto LABEL_26;
      }

      goto LABEL_11;
    }

    v20 = 5;
    if (v12 == 5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 5;
    v18 = v14;
    if (v12 == 5)
    {
      goto LABEL_6;
    }
  }

LABEL_9:
  v48 = v12;
  if (v20 != 5)
  {
    v50 = v20;
    sub_1DA8305CC(v12);
    v33 = _s21UserNotificationsCore18NotificationSourceV5StateO2eeoiySbAE_AEtFZ_0(&v48, &v50);
    sub_1DA830524(v50);
    sub_1DA830524(v48);
    sub_1DA8305BC(v12);
    if (v33)
    {
      v21 = 0;
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  sub_1DA8305CC(v12);
  sub_1DA830524(v12);
LABEL_11:
  sub_1DA8305BC(v12);
  sub_1DA8305BC(v20);
LABEL_12:
  if (qword_1EE110E70 != -1)
  {
    swift_once();
  }

  v22 = sub_1DA9405A4();
  __swift_project_value_buffer(v22, qword_1EE110E80);
  sub_1DA830728(a2, v11, type metadata accessor for NotificationSource);
  sub_1DA830728(a2, v9, type metadata accessor for NotificationSource);
  v23 = sub_1DA940584();
  v24 = sub_1DA940F04();
  if (os_log_type_enabled(v23, v24))
  {
    v43[0] = v18;
    v43[1] = v3;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v50 = v26;
    *v25 = 136380931;
    v27 = *(v11 + 2);
    v28 = *(v11 + 3);

    sub_1DA82A7FC(v11);
    v29 = sub_1DA7AE6E8(v27, v28, &v50);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    v30 = *(v9 + 7);
    if (v30 == 4)
    {
      v31 = 0xE700000000000000;
      v32 = 0x64656C62616E65;
    }

    else
    {
      v48 = 0x64656C6261736964;
      v49 = 0xE900000000000028;
      if (v30 == 3)
      {
        v34 = 0;
        v35 = 0xE000000000000000;
      }

      else
      {
        v47 = v30;
        v36 = sub_1DA8304A0(v30);
        v34 = NotificationSource.State.OverrideReason.description.getter(v36);
        v35 = v37;
      }

      MEMORY[0x1E1271BD0](v34, v35);

      MEMORY[0x1E1271BD0](41, 0xE100000000000000);
      sub_1DA830524(v30);
      v32 = v48;
      v31 = v49;
    }

    sub_1DA82A7FC(v9);
    v38 = sub_1DA7AE6E8(v32, v31, &v50);

    *(v25 + 14) = v38;
    _os_log_impl(&dword_1DA7A9000, v23, v24, "Adding ghostly %{private}s = %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);

    v18 = v43[0];
  }

  else
  {

    sub_1DA82A7FC(v9);
    sub_1DA82A7FC(v11);
  }

  v39 = v45;
  v40 = a2[7];

  sub_1DA8304A0(v40);
  v41 = v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v41;
  sub_1DA90AAEC(v40, v18, v39, isUniquelyReferenced_nonNull_native);

  *v41 = v48;
  v21 = 1;
LABEL_26:
  *v46 = v21;
}

uint64_t sub_1DA82FDA0(uint64_t *a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];

  sub_1DA8304A0(v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  sub_1DA90AAEC(v5, v3, v4, isUniquelyReferenced_nonNull_native);

  *a1 = v8;
  return result;
}

void sub_1DA82FE30(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1DA8F42F0(a2, a3, &v5);

  sub_1DA8305BC(v5);
}

uint64_t sub_1DA82FE90()
{
  sub_1DA7C5714(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA82FF78(void *a1, uint64_t a2)
{
  if (qword_1EE110E70 != -1)
  {
    swift_once();
  }

  v4 = sub_1DA9405A4();
  __swift_project_value_buffer(v4, qword_1EE110E80);

  v5 = sub_1DA940584();
  v6 = sub_1DA940F34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(a2 + 16);

    _os_log_impl(&dword_1DA7A9000, v5, v6, "Got %ld source updates.", v7, 0xCu);
    MEMORY[0x1E12739F0](v7, -1, -1);
  }

  else
  {
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = sub_1DA940E84();
    v10 = [a1 notificationSourcesWithIdentifiers_];

    sub_1DA830554();
    sub_1DA830790(&qword_1EE110C00, 255, sub_1DA830554, MEMORY[0x1E69E81B8]);
    v11 = sub_1DA940E94();

    sub_1DA82D140(v11);
    swift_unknownObjectRelease();
  }

  return result;
}

id sub_1DA830230()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsCenterListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA83037C()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110E80);
  __swift_project_value_buffer(v0, qword_1EE110E80);
  return sub_1DA940594();
}

unint64_t sub_1DA8303F8()
{
  result = qword_1EE113918[0];
  if (!qword_1EE113918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE113918);
  }

  return result;
}

unint64_t sub_1DA83044C()
{
  result = qword_1EE112B60;
  if (!qword_1EE112B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112B60);
  }

  return result;
}

uint64_t sub_1DA8304A0(uint64_t result)
{
  if (result != 4)
  {
    return sub_1DA8304B0(result);
  }

  return result;
}

uint64_t sub_1DA8304B0(uint64_t result)
{
  if (result != 3)
  {
    return sub_1DA8304C0(result);
  }

  return result;
}

unint64_t sub_1DA8304C0(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_1DA8304D0()
{
  result = qword_1EE112B70;
  if (!qword_1EE112B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112B70);
  }

  return result;
}

double sub_1DA830524(unint64_t result)
{
  if (result != 4)
  {
    return sub_1DA830534(result);
  }

  return v1;
}

double sub_1DA830534(unint64_t result)
{
  if (result != 3)
  {
    return sub_1DA830544(result);
  }

  return v1;
}

double sub_1DA830544(unint64_t a1)
{
  if (a1 >= 3)
  {
  }

  return result;
}

unint64_t sub_1DA830554()
{
  result = qword_1EE110C08;
  if (!qword_1EE110C08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE110C08);
  }

  return result;
}

double sub_1DA8305BC(unint64_t result)
{
  if (result != 5)
  {
    return sub_1DA830524(result);
  }

  return v1;
}

uint64_t sub_1DA8305CC(uint64_t result)
{
  if (result != 5)
  {
    return sub_1DA8304A0(result);
  }

  return result;
}

uint64_t sub_1DA8305DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DA7B7470;

  return sub_1DA82E164(a1, v4, v5, v7, v6);
}

unint64_t sub_1DA8306B8()
{
  result = qword_1ECBD4FC8;
  if (!qword_1ECBD4FC8)
  {
    sub_1DA93FD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4FC8);
  }

  return result;
}

uint64_t sub_1DA830728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA830790(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA8307EC()
{
  result = qword_1ECBD4FF8;
  if (!qword_1ECBD4FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4FF8);
  }

  return result;
}

unint64_t sub_1DA830844()
{
  result = qword_1EE113900;
  if (!qword_1EE113900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE113900);
  }

  return result;
}

unint64_t sub_1DA83089C()
{
  result = qword_1EE113908;
  if (!qword_1EE113908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE113908);
  }

  return result;
}

uint64_t sub_1DA830930(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DA93FAF4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v69 - v9;
  if (qword_1ECBD4708 != -1)
  {
LABEL_23:
    swift_once();
  }

  v11 = sub_1DA9405A4();
  v12 = __swift_project_value_buffer(v11, qword_1ECBE3D60);
  v13 = *(v5 + 16);
  v81 = a1;
  v72 = v5 + 16;
  v71 = v13;
  v13(v10, a1, v4);

  v83 = v12;
  v14 = sub_1DA940584();
  v15 = sub_1DA940F34();

  v16 = os_log_type_enabled(v14, v15);
  v74 = v4;
  v75 = v5;
  v73 = v8;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136315394;
    v89 = 0;
    v90 = 0xE000000000000000;
    v91[0] = v18;
    sub_1DA941364();

    v89 = 0xD00000000000001BLL;
    v90 = 0x80000001DA951720;
    v88 = *(v2 + 16);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5000, &unk_1DA959390);
    v19 = sub_1DA940A74();
    MEMORY[0x1E1271BD0](v19);

    MEMORY[0x1E1271BD0](62, 0xE100000000000000);
    v20 = sub_1DA7AE6E8(v89, v90, v91);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    sub_1DA831984();
    v21 = sub_1DA941614();
    v23 = v22;
    v70 = *(v75 + 8);
    v70(v10, v4);
    v24 = sub_1DA7AE6E8(v21, v23, v91);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_1DA7A9000, v14, v15, "%s reapBefore: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v18, -1, -1);
    MEMORY[0x1E12739F0](v17, -1, -1);
  }

  else
  {

    v70 = *(v5 + 8);
    v70(v10, v4);
  }

  v25 = off_1F5639728[0];
  v26 = type metadata accessor for DateDefinedReaperClientRepositoryProxy();
  swift_unknownObjectRetain();
  v86 = v26;
  v27 = v25();
  swift_unknownObjectRelease();
  v29 = *(v27 + 16);
  v5 = v2;
  v69[1] = v27;
  if (v29)
  {
    v84 = 0;
    v4 = 0;
    v82 = off_1F5639730[0];
    v78 = 0x80000001DA951720;
    v30 = (v27 + 40);
    *&v28 = 136315394;
    v76 = v28;
    *&v28 = 136315650;
    v77 = v28;
    v80 = v2;
    v2 = v81;
    while (1)
    {
      v31 = *(v30 - 1);
      v10 = *v30;

      swift_unknownObjectRetain();
      v87 = v31;
      v8 = v82(v31, v10);
      v32 = swift_unknownObjectRelease();
      MEMORY[0x1EEE9AC00](v32);
      v69[-2] = v2;
      v33 = sub_1DA831604(sub_1DA831968, &v69[-4], v8);

      v34 = sub_1DA8AD06C(v33);

      if (*(v34 + 16))
      {

        a1 = v83;
        v35 = sub_1DA940584();
        v36 = sub_1DA940F34();

        v37 = os_log_type_enabled(v35, v36);
        v85 = v4;
        if (v37)
        {
          v8 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v79 = v38;
          *v8 = v77;
          v89 = 0;
          v90 = 0xE000000000000000;
          v91[0] = v38;
          sub_1DA941364();

          v89 = 0xD00000000000001BLL;
          v90 = v78;
          v88 = *(v5 + 16);
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5000, &unk_1DA959390);
          v39 = sub_1DA940A74();
          MEMORY[0x1E1271BD0](v39);

          MEMORY[0x1E1271BD0](62, 0xE100000000000000);
          v40 = sub_1DA7AE6E8(v89, v90, v91);

          *(v8 + 4) = v40;
          *(v8 + 6) = 2080;
          *(v8 + 14) = sub_1DA7AE6E8(v87, v10, v91);
          *(v8 + 11) = 2080;
          v41 = sub_1DA940EA4();
          v43 = sub_1DA7AE6E8(v41, v42, v91);

          *(v8 + 3) = v43;
          v4 = MEMORY[0x1E69E7CA0];
          _os_log_impl(&dword_1DA7A9000, v35, v36, "%s reapBefore %s removalSet: %s", v8, 0x20u);
          a1 = v79;
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](a1, -1, -1);
          MEMORY[0x1E12739F0](v8, -1, -1);
        }

        v44 = *(v34 + 16);
        v2 = v81;
        if (__OFADD__(v84, v44))
        {
          __break(1u);
          goto LABEL_23;
        }

        v84 += v44;
        v5 = v80;
        v45 = off_1F5639738[0];
        swift_unknownObjectRetain();
        v45(v34, v87, v10);

        swift_unknownObjectRelease();
        v4 = v85;
      }

      else
      {

        v46 = sub_1DA940584();
        v47 = sub_1DA940F34();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = v76;
          v89 = 0;
          v90 = 0xE000000000000000;
          v91[0] = v49;
          sub_1DA941364();

          v89 = 0xD00000000000001BLL;
          v90 = v78;
          v88 = *(v5 + 16);
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5000, &unk_1DA959390);
          v50 = sub_1DA940A74();
          v85 = v4;
          MEMORY[0x1E1271BD0](v50);

          MEMORY[0x1E1271BD0](62, 0xE100000000000000);
          v51 = sub_1DA7AE6E8(v89, v90, v91);

          *(v48 + 4) = v51;
          *(v48 + 12) = 2080;
          v52 = sub_1DA7AE6E8(v87, v10, v91);

          *(v48 + 14) = v52;
          _os_log_impl(&dword_1DA7A9000, v46, v47, "%s reapBefore %s - nothing to remove", v48, 0x16u);
          v4 = v85;
          swift_arrayDestroy();
          v53 = v49;
          v2 = v81;
          MEMORY[0x1E12739F0](v53, -1, -1);
          MEMORY[0x1E12739F0](v48, -1, -1);
        }

        else
        {
        }
      }

      v30 += 2;
      if (!--v29)
      {
        goto LABEL_18;
      }
    }
  }

  v84 = 0;
  v2 = v81;
LABEL_18:

  v54 = v2;
  v55 = v73;
  v56 = v74;
  v71(v73, v54, v74);

  v57 = sub_1DA940584();
  v58 = sub_1DA940F34();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 136315650;
    v89 = 0;
    v90 = 0xE000000000000000;
    v91[0] = v60;
    sub_1DA941364();

    v89 = 0xD00000000000001BLL;
    v90 = 0x80000001DA951720;
    v88 = *(v5 + 16);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5000, &unk_1DA959390);
    v61 = sub_1DA940A74();
    MEMORY[0x1E1271BD0](v61);

    MEMORY[0x1E1271BD0](62, 0xE100000000000000);
    v62 = sub_1DA7AE6E8(v89, v90, v91);

    *(v59 + 4) = v62;
    *(v59 + 12) = 2080;
    sub_1DA831984();
    v63 = sub_1DA941614();
    v65 = v64;
    v70(v55, v56);
    v66 = sub_1DA7AE6E8(v63, v65, v91);

    *(v59 + 14) = v66;
    *(v59 + 22) = 2048;
    v67 = v84;
    *(v59 + 24) = v84;
    _os_log_impl(&dword_1DA7A9000, v57, v58, "%s reapBefore: %s removedCount: %ld", v59, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v60, -1, -1);
    MEMORY[0x1E12739F0](v59, -1, -1);
  }

  else
  {

    v70(v55, v56);
    return v84;
  }

  return v67;
}

void sub_1DA8314A0(void **a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_1DA93FAF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [v9 date];
  if (v10)
  {
    v11 = v10;
    sub_1DA93FAB4();

    v12 = sub_1DA93FA64();
    (*(v6 + 8))(v8, v5);
    if ((v12 & 1) != 0 && (v13 = [v9 identifier]) != 0)
    {
      v14 = v13;
      v15 = sub_1DA940A14();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    *a3 = v15;
    a3[1] = v17;
  }

  else
  {
    __break(1u);
  }
}

char *sub_1DA831604(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DA941264())
  {
    v6 = 0;
    v19 = v4 & 0xFFFFFFFFFFFFFF8;
    v20 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x1E69E7CC0];
    v18 = v4;
    while (1)
    {
      if (v20)
      {
        v9 = MEMORY[0x1E1272460](v6, v4);
      }

      else
      {
        if (v6 >= *(v19 + 16))
        {
          goto LABEL_19;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v24 = v9;
      a1(&v22, &v24);
      if (v3)
      {

        return v7;
      }

      v12 = v23;
      if (v23)
      {
        v13 = i;
        v14 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1DA7B6928(0, *(v7 + 2) + 1, 1, v7);
        }

        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        if (v16 >= v15 >> 1)
        {
          v7 = sub_1DA7B6928((v15 > 1), v16 + 1, 1, v7);
        }

        *(v7 + 2) = v16 + 1;
        v8 = &v7[16 * v16];
        *(v8 + 4) = v14;
        *(v8 + 5) = v12;
        v4 = v18;
        i = v13;
      }

      ++v6;
      if (v11 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DA8317BC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1DA831818()
{
  sub_1DA941364();

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5000, &unk_1DA959390);
  v0 = sub_1DA940A74();
  MEMORY[0x1E1271BD0](v0);

  MEMORY[0x1E1271BD0](62, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_1DA8318F4()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBE3D60);
  __swift_project_value_buffer(v0, qword_1ECBE3D60);
  return sub_1DA940594();
}

unint64_t sub_1DA831984()
{
  result = qword_1EE114C88;
  if (!qword_1EE114C88)
  {
    sub_1DA93FAF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114C88);
  }

  return result;
}

uint64_t sub_1DA8319DC()
{
  type metadata accessor for SummaryService(0);
  v0 = swift_allocObject();
  result = SummaryService.init()();
  qword_1EE1134B8 = v0;
  return result;
}

uint64_t SummaryService.__allocating_init()()
{
  v0 = swift_allocObject();
  SummaryService.init()();
  return v0;
}

uint64_t static SummaryService.shared.getter()
{
  if (qword_1EE1134B0 != -1)
  {
    swift_once();
  }
}

uint64_t SummaryService.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SummaryService.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1DA831BC8;
}

void sub_1DA831BC8(void **a1, char a2)
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

uint64_t SummaryService.init()()
{
  v1 = v0;
  v2 = sub_1DA9407F4();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DA940FC4();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DA940854();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  if (qword_1EE1127C0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1EE11AEB0;
  v11 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v32 = "com.apple.UserNotifications";
  v33 = v11;

  sub_1DA940824();
  v12 = MEMORY[0x1E69E7CC0];
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  v13 = v10;
  sub_1DA9411D4();
  (*(v34 + 104))(v6, *MEMORY[0x1E69E8090], v35);
  *(v0 + 40) = sub_1DA941004();
  *(v0 + 48) = v12;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  v14 = OBJC_IVAR____TtC21UserNotificationsCore14SummaryService_queue_lastIndividualSummaryOutdatedCheckTime;
  v15 = sub_1DA93FAF4();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  *(v1 + OBJC_IVAR____TtC21UserNotificationsCore14SummaryService_powerSourceToken) = -1;
  if (qword_1EE110E58 != -1)
  {
    swift_once();
  }

  v16 = sub_1DA9405A4();
  __swift_project_value_buffer(v16, qword_1EE11ADA8);
  v17 = sub_1DA940584();
  v18 = sub_1DA940F34();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1DA7A9000, v17, v18, "SummaryService initializing", v19, 2u);
    MEMORY[0x1E12739F0](v19, -1, -1);
  }

  if (UNCCatchMe())
  {
    v20 = swift_allocObject();
    swift_weakInit();

    v21 = sub_1DA880904(sub_1DA83431C, v20);

    *(v1 + 24) = v21;

    sub_1DA8323D4();
    aBlock[4] = sub_1DA834328;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_1;
    v22 = _Block_copy(aBlock);

    sub_1DA940824();
    v36 = v12;
    sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    v23 = v13;
    v24 = v29;
    v25 = v31;
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v23, v24, v22);
    _Block_release(v22);
    (*(v30 + 8))(v24, v25);
    (*(v27 + 8))(v23, v28);
  }

  return v1;
}

double sub_1DA8322B4(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((a3 & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1DA9593A0;
        *(v9 + 32) = a1;
        sub_1DA7AF3EC(0, &unk_1EE110C60, off_1E85D5D40);
        v10 = a1;
        v11 = sub_1DA940BD4();

        [v8 summaryServiceDidReceiveGroupSummaries_];

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_1DA8323D4()
{
  if (qword_1EE110E58 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  __swift_project_value_buffer(v1, qword_1EE11ADA8);
  v2 = sub_1DA940584();
  v3 = sub_1DA940F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA7A9000, v2, v3, "Starting observation of power source changes", v4, 2u);
    MEMORY[0x1E12739F0](v4, -1, -1);
  }

  v5 = *(v0 + 40);
  v6 = swift_allocObject();
  swift_weakInit();
  v13[4] = sub_1DA834750;
  v13[5] = v6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DA857960;
  v13[3] = &block_descriptor_29;
  v7 = _Block_copy(v13);

  v8 = OBJC_IVAR____TtC21UserNotificationsCore14SummaryService_powerSourceToken;
  swift_beginAccess();
  v9 = notify_register_dispatch("com.apple.system.powersources.source", (v0 + v8), v5, v7);
  swift_endAccess();
  _Block_release(v7);
  if (v9)
  {
    v10 = sub_1DA940584();
    v11 = sub_1DA940F14();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v9;
      _os_log_impl(&dword_1DA7A9000, v10, v11, "Failed to begin observing for power source changes, status %u", v12, 8u);
      MEMORY[0x1E12739F0](v12, -1, -1);
    }
  }
}

void sub_1DA832618()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 40);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  v7 = sub_1DA9408F4();
  (*(v2 + 8))(v4, v1);
  if (v7)
  {
    v8 = *(v0 + 64);
    if (v8)
    {
      [v8 invalidate];
      v9 = *(v0 + 64);
    }

    else
    {
      v9 = 0;
    }

    *(v0 + 64) = 0;

    v10 = objc_allocWithZone(MEMORY[0x1E69D54C8]);
    v11 = sub_1DA940A04();
    v12 = [v10 initWithIdentifier_];

    v13 = *(v0 + 64);
    *(v0 + 64) = v12;

    v14 = *(v0 + 64);
    if (v14)
    {
      v15 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1DA83469C;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B00D0;
      aBlock[3] = &block_descriptor_20;
      v16 = _Block_copy(aBlock);
      v17 = v14;

      [v17 scheduleWithFireInterval:v6 leewayInterval:v16 queue:86400.0 handler:60.0];
      _Block_release(v16);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t SummaryService.deinit()
{
  v1 = v0;
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5008, &unk_1DA9593B0);
  sub_1DA940FE4();

  [v9 invalidate];
  v3 = OBJC_IVAR____TtC21UserNotificationsCore14SummaryService_powerSourceToken;
  swift_beginAccess();
  if (*(v1 + v3) != -1)
  {
    if (qword_1EE110E58 != -1)
    {
      swift_once();
    }

    v4 = sub_1DA9405A4();
    __swift_project_value_buffer(v4, qword_1EE11ADA8);
    v5 = sub_1DA940584();
    v6 = sub_1DA940F34();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DA7A9000, v5, v6, "Ending observation of power source changes", v7, 2u);
      MEMORY[0x1E12739F0](v7, -1, -1);
    }

    notify_cancel(*(v1 + v3));
  }

  sub_1DA7C5714(v1 + 16);

  sub_1DA7BA120(v1 + OBJC_IVAR____TtC21UserNotificationsCore14SummaryService_queue_lastIndividualSummaryOutdatedCheckTime, &unk_1ECBD6530, &unk_1DA958820);
  return v1;
}

uint64_t SummaryService.__deallocating_deinit()
{
  SummaryService.deinit();

  return swift_deallocClassInstance();
}

double SummaryService.update(listState:)(uint64_t a1)
{
  v3 = sub_1DA9407F4();
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940854();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  v17[1] = *(v1 + 40);
  (*(v10 + 16))(v17 - v11, a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  (*(v10 + 32))(v14 + v13, v12, v9);
  aBlock[4] = sub_1DA834398;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_6;
  v15 = _Block_copy(aBlock);

  sub_1DA940824();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v8, v5, v15);
  _Block_release(v15);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);

  return result;
}

uint64_t sub_1DA832E3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  (*(v5 + 16))(&v13 - v6, a2, v4);
  swift_beginAccess();
  v8 = *(a1 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 48) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1DA885D70(0, v8[2] + 1, 1, v8);
    *(a1 + 48) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1DA885D70((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a1 + 48) = v8;
  swift_endAccess();
  return sub_1DA7B769C();
}

double sub_1DA832FE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1EE110E58 != -1)
    {
      swift_once();
    }

    v3 = sub_1DA9405A4();
    __swift_project_value_buffer(v3, qword_1EE11ADA8);
    v4 = sub_1DA940584();
    v5 = sub_1DA940F34();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DA7A9000, v4, v5, "Automatic cleanup individual summary timer fired", v6, 2u);
      MEMORY[0x1E12739F0](v6, -1, -1);
    }

    sub_1DA8330FC();
    sub_1DA832618();
  }

  return result;
}

void sub_1DA8330FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v39 = &v39 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - v7;
  v40 = sub_1DA93FAF4();
  v9 = *(v40 - 8);
  v10 = MEMORY[0x1EEE9AC00](v40);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  v15 = sub_1DA9408C4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v0 + 40);
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v20 = v19;
  LOBYTE(v19) = sub_1DA9408F4();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (!UNCCatchMe() || (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0() & 1) == 0)
  {
    return;
  }

  if (IOPSGetTimeRemainingEstimate() != -2.0)
  {
    if (qword_1EE110E58 == -1)
    {
LABEL_8:
      v26 = sub_1DA9405A4();
      __swift_project_value_buffer(v26, qword_1EE11ADA8);
      v27 = sub_1DA940584();
      v28 = sub_1DA940F34();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1DA7A9000, v27, v28, "Skip outdated individual summary cleanup; power not connected", v29, 2u);
        MEMORY[0x1E12739F0](v29, -1, -1);
      }

      return;
    }

LABEL_21:
    swift_once();
    goto LABEL_8;
  }

  v21 = v14;
  sub_1DA93FAE4();
  v22 = OBJC_IVAR____TtC21UserNotificationsCore14SummaryService_queue_lastIndividualSummaryOutdatedCheckTime;
  swift_beginAccess();
  sub_1DA825D4C(v0 + v22, v8);
  v23 = v9;
  v24 = *(v9 + 48);
  v25 = v40;
  if (v24(v8, 1, v40) == 1)
  {
    sub_1DA7BA120(v8, &unk_1ECBD6530, &unk_1DA958820);
LABEL_18:
    sub_1DA93FAE4();
    (*(v23 + 56))(v6, 0, 1, v25);
    swift_beginAccess();
    sub_1DA825C64(v6, v0 + v22);
    swift_endAccess();
    v36 = sub_1DA940D34();
    v37 = v39;
    (*(*(v36 - 8) + 56))(v39, 1, 1, v36);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    sub_1DA8DB00C(0, 0, v37, &unk_1DA9594B8, v38);

    (*(v23 + 8))(v14, v25);
    return;
  }

  (*(v23 + 32))(v12, v8, v25);
  sub_1DA93FA24();
  if (v30 >= 300.0)
  {
    (*(v23 + 8))(v12, v25);
    goto LABEL_18;
  }

  if (qword_1EE110E58 != -1)
  {
    swift_once();
  }

  v31 = sub_1DA9405A4();
  __swift_project_value_buffer(v31, qword_1EE11ADA8);
  v32 = sub_1DA940584();
  v33 = sub_1DA940F34();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = 0x4072C00000000000;
    _os_log_impl(&dword_1DA7A9000, v32, v33, "Skip outdated individual summary cleanup; was cleanup within %f secs", v34, 0xCu);
    MEMORY[0x1E12739F0](v34, -1, -1);
  }

  v35 = *(v23 + 8);
  v35(v12, v25);
  v35(v21, v25);
}

double sub_1DA83371C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1EE110E58 != -1)
    {
      swift_once();
    }

    v3 = sub_1DA9405A4();
    __swift_project_value_buffer(v3, qword_1EE11ADA8);
    v4 = sub_1DA940584();
    v5 = sub_1DA940F34();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DA7A9000, v4, v5, "Power source changed", v6, 2u);
      MEMORY[0x1E12739F0](v6, -1, -1);
    }

    sub_1DA8330FC();
  }

  return result;
}

uint64_t sub_1DA833834()
{
  v1 = sub_1DA93FAF4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA8338F0, 0, 0);
}

uint64_t sub_1DA8338F0()
{
  if (qword_1EE110E58 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  v0[5] = __swift_project_value_buffer(v1, qword_1EE11ADA8);
  v2 = sub_1DA940584();
  v3 = sub_1DA940F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA7A9000, v2, v3, "Start cleaning up outdated individual summary", v4, 2u);
    MEMORY[0x1E12739F0](v4, -1, -1);
  }

  type metadata accessor for SpotlightIndexer();
  sub_1DA93FA74();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1DA833A6C;
  v6 = v0[4];

  return sub_1DA88BD58(v6);
}

uint64_t sub_1DA833A6C()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v5 = *v1;
  *(v5 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA833C14, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1DA833C14()
{
  v1 = *(v0 + 56);
  v2 = v1;
  v3 = sub_1DA940584();
  v4 = sub_1DA940F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 56);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "cleanupIndividualSummaries return error: %@", v7, 0xCu);
    sub_1DA7BA120(v8, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v8, -1, -1);
    MEMORY[0x1E12739F0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DA833D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = sub_1DA9407F4();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = sub_1DA940854();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA833E98, 0, 0);
}

uint64_t sub_1DA833E98()
{
  if (qword_1EE110E58 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  v0[21] = __swift_project_value_buffer(v1, qword_1EE11ADA8);
  v2 = sub_1DA940584();
  v3 = sub_1DA940F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA7A9000, v2, v3, "Indexing list state", v4, 2u);
    MEMORY[0x1E12739F0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1DA7B7144;
  v6 = v0[13];

  return sub_1DA88E7C8(v6);
}

uint64_t sub_1DA834000()
{
  v23 = v0;
  v1 = v0[23];
  v2 = v1;
  v3 = sub_1DA940584();
  v4 = sub_1DA940F14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1DA941704();
    v10 = sub_1DA7AE6E8(v8, v9, &v22);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "Failed index list state: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12739F0](v7, -1, -1);
    MEMORY[0x1E12739F0](v6, -1, -1);
  }

  else
  {
    v11 = v0[23];
  }

  v12 = v0[20];
  v13 = v0[17];
  v20 = v0[19];
  v21 = v0[18];
  v14 = v0[15];
  v15 = v0[14];
  v19 = v0[16];
  v0[6] = sub_1DA7B7694;
  v0[7] = v15;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DA7AF1D0;
  v0[5] = &block_descriptor_15;
  v16 = _Block_copy(v0 + 2);

  sub_1DA940824();
  v0[11] = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v12, v13, v16);
  _Block_release(v16);
  (*(v19 + 8))(v13, v14);
  (*(v20 + 8))(v12, v21);

  v17 = v0[1];

  return v17();
}

id sub_1DA834368@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return v2;
}

uint64_t sub_1DA834398()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1DA832E3C(v2, v3);
}

uint64_t type metadata accessor for SummaryService(uint64_t a1)
{
  result = qword_1EE1133E0;
  if (!qword_1EE1133E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA83445C(uint64_t a1)
{
  sub_1DA8235A8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DA834570(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DA7B7470;

  return sub_1DA833D7C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1DA8346A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA7B7660;

  return sub_1DA833834();
}

uint64_t sub_1DA834770(uint64_t a1)
{
  if (*v1 == 2)
  {
    sub_1DA941784();
    if (*(v1 + 16))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1DA941784();
    sub_1DA940AB4();

    if (*(v1 + 16))
    {
LABEL_3:
      sub_1DA941784();
      sub_1DA940AB4();
      v2 = *(v1 + 24);
      if (v2)
      {
        goto LABEL_4;
      }

LABEL_15:
      sub_1DA941784();
      if (*(v1 + 40))
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  sub_1DA941784();
  v2 = *(v1 + 24);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  sub_1DA941784();
  v3 = *(v2 + 16);
  MEMORY[0x1E1272850](v3);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_1DA940AB4();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  if (*(v1 + 40))
  {
LABEL_8:
    sub_1DA941784();
    sub_1DA940AB4();
    v5 = *(v1 + 48);
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_17:
    sub_1DA941784();
    goto LABEL_18;
  }

LABEL_16:
  sub_1DA941784();
  v5 = *(v1 + 48);
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_9:
  sub_1DA941784();
  v6 = *(v5 + 16);
  MEMORY[0x1E1272850](v6);
  if (v6)
  {
    v7 = v5 + 40;
    do
    {

      sub_1DA940AB4();

      v7 += 16;
      --v6;
    }

    while (v6);
  }

LABEL_18:
  v8 = *(v1 + 56);
  v9 = *(v8 + 16);
  result = MEMORY[0x1E1272850](v9);
  if (v9)
  {
    v11 = v8 + 40;
    do
    {

      sub_1DA940AB4();

      v11 += 16;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1DA834980()
{
  sub_1DA941764();
  sub_1DA834770(v1);
  return sub_1DA941794();
}

uint64_t sub_1DA8349C4(uint64_t a1)
{
  sub_1DA941764();
  sub_1DA834770(v2);
  return sub_1DA941794();
}

uint64_t sub_1DA834A00(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1DA8356CC(v7, v8) & 1;
}

uint64_t sub_1DA834A4C()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = v0[5];
    if (!v2)
    {
      return 0x292A3D3D2A28;
    }

    v3 = v0[7];
  }

  else
  {
    v3 = v0[7];
    v24 = v3;
    v22 = sub_1DA940A14();
    v23 = v4;
    sub_1DA8362B0(&v24, &v21);
    MEMORY[0x1E1271BD0](540884256, 0xE400000000000000);
    if (v1)
    {
      v5 = 0xD000000000000022;
    }

    else
    {
      v5 = 0xD00000000000001BLL;
    }

    if (v1)
    {
      v6 = "com.apple.usernotifications";
    }

    else
    {
      v6 = "led";
    }

    MEMORY[0x1E1271BD0](v5, v6 | 0x8000000000000000);

    v7 = v22;
    v8 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1DA7B6928(0, *(v3 + 2) + 1, 1, v3);
    }

    v10 = *(v3 + 2);
    v9 = *(v3 + 3);
    if (v10 >= v9 >> 1)
    {
      v3 = sub_1DA7B6928((v9 > 1), v10 + 1, 1, v3);
    }

    *(v3 + 2) = v10 + 1;
    v11 = &v3[16 * v10];
    *(v11 + 4) = v7;
    *(v11 + 5) = v8;
    v2 = v0[5];
    if (!v2)
    {
      goto LABEL_20;
    }
  }

  v12 = v0[4];
  v22 = sub_1DA940A14();
  v23 = v13;
  MEMORY[0x1E1271BD0](540884256, 0xE400000000000000);
  MEMORY[0x1E1271BD0](v12, v2);
  v14 = v22;
  v15 = v23;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DA7B6928(0, *(v3 + 2) + 1, 1, v3);
  }

  v17 = *(v3 + 2);
  v16 = *(v3 + 3);
  if (v17 >= v16 >> 1)
  {
    v3 = sub_1DA7B6928((v16 > 1), v17 + 1, 1, v3);
  }

  *(v3 + 2) = v17 + 1;
  v18 = &v3[16 * v17];
  *(v18 + 4) = v14;
  *(v18 + 5) = v15;
LABEL_20:
  v22 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA7B6A38();
  v19 = sub_1DA9409C4();

  return v19;
}

uint64_t sub_1DA834CAC()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = *(v1 + 16) == 0;
    v3 = v0[2];
    if (v3)
    {
LABEL_3:
      v4 = v0[1];
      v15 = sub_1DA940A14();
      MEMORY[0x1E1271BD0](540884256, 0xE400000000000000);
      MEMORY[0x1E1271BD0](v4, v3);
      return v15;
    }
  }

  else
  {
    v2 = 1;
    v3 = v0[2];
    if (v3)
    {
      goto LABEL_3;
    }
  }

  if (!v1)
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  v6 = *(v1 + 16);
  if (!v6)
  {
    return 0;
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1DA82A778(0, v6, 0);
  v7 = (v1 + 40);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v16 = sub_1DA940A14();
    v17 = v10;

    MEMORY[0x1E1271BD0](540884256, 0xE400000000000000);
    MEMORY[0x1E1271BD0](v8, v9);

    v12 = *(v18 + 16);
    v11 = *(v18 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1DA82A778((v11 > 1), v12 + 1, 1);
    }

    *(v18 + 16) = v12 + 1;
    v13 = v18 + 16 * v12;
    *(v13 + 32) = v16;
    *(v13 + 40) = v17;
    v7 += 2;
    --v6;
  }

  while (v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA7B6A38();
  v14 = sub_1DA9409C4();

  return v14;
}

double sub_1DA834E9C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = *(v4 + 16);
  v9(&v16 - v7, a1, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  v11 = *(v4 + 32);
  v11(v17 + v10, v8, v3);
  v12 = v18;
  v9(v18, a1, v3);
  v13 = swift_allocObject();
  v11(v13 + v10, v12, v3);
  v14 = sub_1DA835E88(v19, 0, sub_1DA83637C, v17, sub_1DA836394, v13);

  return result;
}

uint64_t sub_1DA835094(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8);
  return sub_1DA940C54();
}

uint64_t sub_1DA8350E4(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8);
  return sub_1DA940C44();
}

double sub_1DA835194(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  sub_1DA836568(a2 & 1, a3, sub_1DA8364DC, v11);

  return result;
}

uint64_t sub_1DA8352E8(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8);
    return sub_1DA940C44();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8);
    return sub_1DA940C54();
  }
}

uint64_t sub_1DA83536C(id a1, void (*a2)(uint64_t, id), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v7 = sub_1DA9405A4();
    __swift_project_value_buffer(v7, qword_1EE11AFA0);
    v8 = a1;
    v9 = sub_1DA940584();
    v10 = sub_1DA940F14();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_1DA7A9000, v9, v10, "Spotlight query error of %{public}@", v11, 0xCu);
      sub_1DA828378(v12);
      MEMORY[0x1E12739F0](v12, -1, -1);
      MEMORY[0x1E12739F0](v11, -1, -1);
    }

    else
    {
    }
  }

  swift_beginAccess();

  a2(v15, a1);
}

uint64_t sub_1DA835528()
{
  sub_1DA941764();
  MEMORY[0x1E1272850](0);
  return sub_1DA941794();
}

uint64_t sub_1DA83556C(uint64_t a1)
{
  sub_1DA941764();
  MEMORY[0x1E1272850](0);
  return sub_1DA941794();
}

uint64_t sub_1DA8355AC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    return a3(a1);
  }

  swift_beginAccess();

  sub_1DA7B9114(v6);
  return swift_endAccess();
}

void sub_1DA835618(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = a1;
    a2(a1);
  }

  else
  {
    swift_beginAccess();

    a4(v10);
  }
}

uint64_t sub_1DA8356CC(void *a1, void *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 2)
    {
      return 0;
    }

    if (v4)
    {
      v6 = 0xD000000000000022;
    }

    else
    {
      v6 = 0xD00000000000001BLL;
    }

    if (v4)
    {
      v7 = "com.apple.usernotifications";
    }

    else
    {
      v7 = "led";
    }

    if (v5)
    {
      v8 = 0xD000000000000022;
    }

    else
    {
      v8 = 0xD00000000000001BLL;
    }

    if (v5)
    {
      v9 = "com.apple.usernotifications";
    }

    else
    {
      v9 = "led";
    }

    if (v6 == v8 && (v7 | 0x8000000000000000) == (v9 | 0x8000000000000000))
    {
    }

    else
    {
      v11 = sub_1DA941684();

      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v12 = a1[2];
  v13 = a2[2];
  if (v12)
  {
    if (!v13 || (a1[1] != a2[1] || v12 != v13) && (sub_1DA941684() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (sub_1DA82A1FC(v14, v15) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[5];
  v17 = a2[5];
  if (v16)
  {
    if (!v17 || (a1[4] != a2[4] || v16 != v17) && (sub_1DA941684() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = a1[6];
  v19 = a2[6];
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_46;
    }

    return 0;
  }

  if (!v19 || (sub_1DA82A1FC(v18, v19) & 1) == 0)
  {
    return 0;
  }

LABEL_46:
  v20 = a1[7];
  v21 = a2[7];

  return sub_1DA82A1FC(v20, v21);
}

uint64_t sub_1DA835894(char a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 56) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA8358B8, 0, 0);
}

uint64_t sub_1DA8358B8()
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 56);
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *(v3 + 16) = v2 & 1;
    *(v3 + 24) = v1;
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5020, &qword_1DA9594D0);
    *v4 = v0;
    v4[1] = sub_1DA835A3C;

    return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000031, 0x80000001DA951980, sub_1DA83643C, v3, v5);
  }

  else
  {
    sub_1DA836320();
    swift_allocError();
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1DA835A3C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1DA835B74;
  }

  else
  {

    v2 = sub_1DA835B58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA835B74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA835BF8()
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v1 = v0[3];
    v2 = swift_task_alloc();
    v0[4] = v2;
    *(v2 + 16) = v1;
    v3 = swift_task_alloc();
    v0[5] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5020, &qword_1DA9594D0);
    *v3 = v0;
    v3[1] = sub_1DA835D6C;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0x7571286863746566, 0xED0000293A797265, sub_1DA836374, v2, v4);
  }

  else
  {
    sub_1DA836320();
    swift_allocError();
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1DA835D6C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1DA836AB4;
  }

  else
  {

    v2 = sub_1DA836AB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

id sub_1DA835E88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  v12 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  [v12 setLive_];
  v13 = *(a1 + 48);
  if (v13)
  {
    v39 = a4;
    v14 = *(v13 + 16);
    if (v14)
    {
      v35 = a2;
      v36 = a3;
      v37 = a6;
      v38 = v11;
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1DA82A778(0, v14, 0);
      v15 = aBlock;
      v16 = (v13 + 40);
      do
      {
        v18 = *(v16 - 1);
        v17 = *v16;
        aBlock = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);

        if (v20 >= v19 >> 1)
        {
          sub_1DA82A778((v19 > 1), v20 + 1, 1);
          v15 = aBlock;
        }

        *(v15 + 16) = v20 + 1;
        v21 = v15 + 16 * v20;
        *(v21 + 32) = v18;
        *(v21 + 40) = v17;
        v16 += 2;
        --v14;
      }

      while (v14);
      a6 = v37;
      v11 = v38;
      a3 = v36;
      a2 = v35;
    }

    v22 = sub_1DA940BD4();

    [v12 setFetchAttributes_];

    a4 = v39;
  }

  sub_1DA834CAC();
  if (v23)
  {
    v24 = sub_1DA940A04();
  }

  else
  {
    v24 = 0;
  }

  [v12 setFilterQuery_];

  sub_1DA834A4C();
  v25 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v26 = v12;
  v27 = sub_1DA940A04();

  v28 = [v25 initWithQueryString:v27 queryContext:v26];

  v29 = sub_1DA940BD4();
  [v28 setBundleIDs_];

  v30 = swift_allocObject();
  *(v30 + 16) = a2 & 1;
  *(v30 + 24) = a3;
  *(v30 + 32) = a4;
  *(v30 + 40) = v11;
  v45 = sub_1DA836290;
  v46 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1DA7B8FEC;
  v44 = &block_descriptor_2;
  v31 = _Block_copy(&aBlock);

  [v28 setFoundItemsHandler_];
  _Block_release(v31);
  v32 = swift_allocObject();
  v32[2] = a5;
  v32[3] = a6;
  v32[4] = a3;
  v32[5] = a4;
  v32[6] = v11;
  v45 = sub_1DA8362A0;
  v46 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1DA7B1BFC;
  v44 = &block_descriptor_9;
  v33 = _Block_copy(&aBlock);

  [v28 setCompletionHandler_];
  _Block_release(v33);
  [v28 start];

  return v28;
}

uint64_t sub_1DA8362B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA836320()
{
  result = qword_1ECBD5018;
  if (!qword_1ECBD5018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5018);
  }

  return result;
}

uint64_t sub_1DA8363AC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_13Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA8364DC(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5028, &qword_1DA9594D8);

  return sub_1DA8352E8(a1, a2);
}

void sub_1DA836568(char a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = MEMORY[0x1E69E7CC0];
    v8 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
    v9 = sub_1DA940BD4();
    [v8 setFetchAttributes_];

    sub_1DA941364();

    v21 = 0xD00000000000001DLL;
    v22 = 0x80000001DA9519C0;
    if (a1)
    {
      v10 = 0xD000000000000022;
    }

    else
    {
      v10 = 0xD00000000000001BLL;
    }

    if (a1)
    {
      v11 = "com.apple.usernotifications";
    }

    else
    {
      v11 = "led";
    }

    MEMORY[0x1E1271BD0](v10, v11 | 0x8000000000000000);

    MEMORY[0x1E1271BD0](10530, 0xE200000000000000);
    v12 = objc_allocWithZone(MEMORY[0x1E6964E68]);
    v13 = v8;
    v14 = sub_1DA940A04();

    v15 = [v12 initWithQueryString:v14 queryContext:{v13, v21, v22}];

    v16 = sub_1DA940BD4();
    [v15 setBundleIDs_];

    v25 = sub_1DA7B90AC;
    v26 = v7;
    v21 = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1DA7B8FEC;
    v24 = &block_descriptor_27;
    v17 = _Block_copy(&v21);

    [v15 setFoundItemsHandler_];
    _Block_release(v17);
    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = a4;
    v18[4] = v7;
    v25 = sub_1DA836914;
    v26 = v18;
    v21 = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1DA7B1BFC;
    v24 = &block_descriptor_33;
    v19 = _Block_copy(&v21);

    [v15 setCompletionHandler_];
    _Block_release(v19);
    [v15 start];
  }

  else
  {
    sub_1DA836320();
    v20 = swift_allocError();
    a3(MEMORY[0x1E69E7CC0], v20);
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DA836934(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA83697C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DA8369F0()
{
  result = qword_1ECBD5030;
  if (!qword_1ECBD5030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5030);
  }

  return result;
}

unint64_t sub_1DA836A48()
{
  result = qword_1EE1134D0;
  if (!qword_1EE1134D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1134D0);
  }

  return result;
}

uint64_t static LogSignpost.begin(logger:name:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v38 = a2;
  v39 = a3;
  v37 = a4;
  v35 = sub_1DA9404F4();
  v7 = *(v35 - 8);
  v8 = MEMORY[0x1EEE9AC00](v35);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = sub_1DA9405A4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1DA940524();
  v17 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, v13);
  v20 = v12;
  v21 = v39;
  sub_1DA940504();
  sub_1DA940514();
  sub_1DA9404C4();
  v22 = sub_1DA940514();
  v23 = sub_1DA941084();
  result = sub_1DA941124();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v34 = v17;
  if ((v37 & 1) == 0)
  {
    v25 = v38;
    if (v38)
    {
      v26 = v20;
LABEL_9:
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = sub_1DA9404D4();
      _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v22, v23, v28, v25, "", v27, 2u);
      v29 = v27;
      v20 = v26;
      MEMORY[0x1E12739F0](v29, -1, -1);
      v21 = v39;
      v17 = v34;
LABEL_10:

      v30 = v35;
      (*(v7 + 16))(v10, v20, v35);
      sub_1DA940564();
      swift_allocObject();
      v31 = sub_1DA940554();
      (*(v7 + 8))(v20, v30);
      *a5 = v38;
      *(a5 + 8) = v21;
      *(a5 + 16) = v37;
      *(a5 + 24) = v31;
      v32 = type metadata accessor for LogSignpost(0);
      return (*(v17 + 32))(a5 + *(v32 + 24), v19, v36);
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v38 >> 32)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v38 & 0xFFFFF800) != 0xD800)
  {
    if (v38 >> 16 <= 0x10)
    {
      v26 = v20;
      v25 = &v40;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

Swift::Void __swiftcall LogSignpost.end(enableTelemetry:)(Swift::Bool enableTelemetry)
{
  v3 = sub_1DA940534();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - v7;
  v9 = sub_1DA9404F4();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  type metadata accessor for LogSignpost(0);
  v15 = *v1;
  v16 = *(v1 + 16);

  v17 = sub_1DA940514();
  if (enableTelemetry)
  {
    sub_1DA940544();
    v12 = sub_1DA941074();
    if (sub_1DA941124())
    {
      if (v16)
      {
        if (v15 >> 32)
        {
          goto LABEL_30;
        }

        if ((v15 & 0xFFFFF800) == 0xD800)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v15 >> 16 > 0x10)
        {
          goto LABEL_32;
        }

        v15 = &v42;
      }

      else if (!v15)
      {
        __break(1u);
        goto LABEL_6;
      }

      v36 = v15;

      sub_1DA940574();

      v21 = v37;
      v20 = v38;
      if ((*(v37 + 88))(v8, v38) == *MEMORY[0x1E69E93E8])
      {
        v22 = 0;
        v23 = 0;
        v24 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 8))(v8, v20);
        v24 = "%s";
        v23 = 2;
        v22 = 1;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = v23;
      *(v28 + 1) = v22;
      *(v28 + 2) = 2080;
      v30 = sub_1DA941374();
      v32 = sub_1DA7AE6E8(v30, v31, &v41);

      *(v28 + 4) = v32;
      v33 = sub_1DA9404D4();
      _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v17, v12, v33, v36, v24, v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E12739F0](v29, -1, -1);
      MEMORY[0x1E12739F0](v28, -1, -1);
    }

    (*(v39 + 8))(v14, v40);
    return;
  }

LABEL_6:
  sub_1DA940544();
  v18 = sub_1DA941074();
  if (sub_1DA941124())
  {
    if (v16)
    {
      if (!(v15 >> 32))
      {
        if ((v15 & 0xFFFFF800) == 0xD800)
        {
LABEL_35:
          __break(1u);
          return;
        }

        if (v15 >> 16 <= 0x10)
        {
          v19 = &v43;
          goto LABEL_20;
        }

        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (v15)
    {
      v19 = v15;
LABEL_20:
      v26 = v37;
      v25 = v38;

      sub_1DA940574();

      if ((*(v26 + 88))(v6, v25) == *MEMORY[0x1E69E93E8])
      {
        v27 = "[Error] Interval already ended";
      }

      else
      {
        (*(v26 + 8))(v6, v25);
        v27 = "";
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = sub_1DA9404D4();
      _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v17, v18, v35, v19, v27, v34, 2u);
      MEMORY[0x1E12739F0](v34, -1, -1);
      goto LABEL_27;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_27:

  (*(v39 + 8))(v12, v40);
}

uint64_t LogSignpost.signposter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LogSignpost(0) + 24);
  v4 = sub_1DA940524();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LogSignpost.init(name:state:signposter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  v8 = *(type metadata accessor for LogSignpost(0) + 24);
  v9 = sub_1DA940524();
  v10 = *(*(v9 - 8) + 32);

  return v10(a6 + v8, a5, v9);
}

uint64_t LogSignpost.end(message:)(void *a1)
{
  v3 = sub_1DA940534();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA9404F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LogSignpost(0);
  v10 = *v1;
  v11 = *(v1 + 16);

  v12 = sub_1DA940514();
  sub_1DA940544();
  v36 = sub_1DA941074();
  v39 = sub_1DA9404B4();
  result = sub_1DA941124();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v32 = v12;
  v33 = v6;
  v34 = v9;
  v35 = v7;
  if (v11)
  {
    if (v10 >> 32)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if ((v10 & 0xFFFFF800) == 0xD800)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v10 >> 16 > 0x10)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v10 = &v43;
  }

  else if (!v10)
  {
    __break(1u);
LABEL_5:

    return (*(v7 + 8))(v9, v6);
  }

  v14 = a1[2];
  v15 = a1[5];
  v16 = a1[6];

  sub_1DA940574();

  result = (*(v37 + 88))(v5, v38);
  if (result != *MEMORY[0x1E69E93E8])
  {
LABEL_35:
    __break(1u);
    return result;
  }

  result = v39;
  if ((v39 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v39))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = swift_slowAlloc();
  v17 = result;
  if (v16)
  {
    if ((v16 - 0x1000000000000000) >> 61 == 7)
    {
      result = swift_slowAlloc();
      v18 = result;
      v30 = v16;
      v31 = v15;
      if (v15)
      {
        goto LABEL_16;
      }

LABEL_19:
      v19 = v10;
      v20 = 0;
      goto LABEL_20;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v18 = 0;
  v30 = 0;
  v31 = v15;
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_16:
  if ((v15 - 0x400000000000000) >> 59 != 31)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = v10;
  v20 = swift_slowAlloc();
LABEL_20:
  v40 = v20;
  v41 = v18;
  v21 = v17;
  *v17 = 0;
  v42 = v17 + 2;
  v22 = *(v14 + 16);
  if (v22)
  {
    v23 = v14 + 40;
    do
    {
      v24 = *(v23 - 8);

      v24(&v42, &v41, &v40);

      v23 += 16;
      --v22;
    }

    while (v22);
  }

  v25 = v34;
  v26 = sub_1DA9404D4();
  v27 = v32;
  _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v32, v36, v26, v19, "[Error] Interval already ended", v21, v39);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5430, &unk_1DA959190);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v18, -1, -1);
  }

  v28 = v33;
  v29 = v35;
  if (v20)
  {
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v20, -1, -1);
  }

  MEMORY[0x1E12739F0](v21, -1, -1);

  return (*(v29 + 8))(v25, v28);
}

void static LogSignpost.emit(_:name:_:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v34 = a5;
  v33 = a4;
  v32 = a2;
  v6 = sub_1DA9404F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DA9405A4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DA940524();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  v18 = v34;
  sub_1DA940504();
  sub_1DA9404E4();
  v19 = sub_1DA940514();
  sub_1DA941094();
  v20 = sub_1DA9404B4();
  if ((sub_1DA941124() & 1) == 0)
  {

    (*(v7 + 8))(v9, v6);
    (*(v15 + 8))(v17, v14);
    return;
  }

  v21 = v32;
  if ((v33 & 1) == 0)
  {
    if (v32)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (HIDWORD(v21))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 > 0x10)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_9:
    if ((v20 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v20))
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v22 = *(v18 + 16);
      v23 = *(v18 + 24);
      v24 = *(v18 + 25);
      v26 = *(v18 + 40);
      v25 = *(v18 + 48);
      v27 = swift_slowAlloc();
      if (v25)
      {
        if ((v25 - 0x1000000000000000) >> 61 != 7)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v25 = swift_slowAlloc();
      }

      if (v26)
      {
        if ((v26 - 0x400000000000000) >> 59 != 31)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v28 = swift_slowAlloc();
      }

      else
      {
        v28 = 0;
      }

      v35 = v28;
      v36 = v25;
      *v27 = v23;
      v27[1] = v24;
      v37 = v27 + 2;
      v29 = *(v22 + 16);
      if (v29)
      {
        v30 = v22 + 40;
        do
        {
          v31 = *(v30 - 8);

          v31(&v37, &v36, &v35);

          v30 += 16;
          --v29;
        }

        while (v29);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
}

uint64_t withSignpost<A>(logger:name:enableTelemetry:closure:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, int a5@<W4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a7;
  v43 = a6;
  v44 = a5;
  v40 = a3;
  v41 = a8;
  v47 = a2;
  v45 = a1;
  v46 = a4;
  v39 = sub_1DA9404F4();
  v8 = *(v39 - 8);
  v9 = MEMORY[0x1EEE9AC00](v39);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - v12;
  v14 = sub_1DA9405A4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1DA940524();
  v18 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LogSignpost(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v45, v14);
  v24 = v13;
  sub_1DA940504();
  sub_1DA940514();
  sub_1DA9404C4();
  v25 = sub_1DA940514();
  v26 = sub_1DA941084();
  result = sub_1DA941124();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v37 = v21;
  v45 = v18;
  if ((v46 & 1) == 0)
  {
    v24 = v47;
    if (v47)
    {
LABEL_9:
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = sub_1DA9404D4();
      v30 = v24;
      v24 = v13;
      _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v25, v26, v29, v30, "", v28, 2u);
      MEMORY[0x1E12739F0](v28, -1, -1);
      v18 = v45;
      v21 = v37;
LABEL_10:

      v31 = v39;
      (*(v8 + 16))(v11, v24, v39);
      sub_1DA940564();
      swift_allocObject();
      v32 = sub_1DA940554();
      v33 = v24;
      v34 = v32;
      (*(v8 + 8))(v33, v31);
      v35 = v40;
      *v23 = v47;
      *(v23 + 1) = v35;
      v23[16] = v46;
      *(v23 + 3) = v34;
      v36 = (*(v18 + 32))(&v23[*(v21 + 24)], v20, v38);
      v43(v36);
      sub_1DA838B2C(v23, v44 & 1);
      return sub_1DA839118(v23);
    }

    __break(1u);
  }

  if (HIDWORD(v47))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v47 & 0xFFFFF800) != 0xD800)
  {
    if (v47 >> 16 <= 0x10)
    {
      v13 = v24;
      v24 = &v48;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t withThrowingSignpost<A>(logger:name:enableTelemetry:closure:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, int a5@<W4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a6;
  v41 = a8;
  v42 = a7;
  v44 = a5;
  v40 = a3;
  v47 = a2;
  v45 = a1;
  v46 = a4;
  v39 = sub_1DA9404F4();
  v8 = *(v39 - 8);
  v9 = MEMORY[0x1EEE9AC00](v39);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = sub_1DA9405A4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1DA940524();
  v17 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for LogSignpost(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v45, v13);
  v23 = v12;
  sub_1DA940504();
  sub_1DA940514();
  sub_1DA9404C4();
  v24 = sub_1DA940514();
  v25 = sub_1DA941084();
  result = sub_1DA941124();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v36 = v20;
  v45 = v17;
  if ((v46 & 1) == 0)
  {
    v27 = v47;
    if (v47)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v47 >> 32)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v47 & 0xFFFFF800) != 0xD800)
  {
    if (v47 >> 16 <= 0x10)
    {
      v27 = &v48;
LABEL_9:
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = sub_1DA9404D4();
      _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v24, v25, v29, v27, "", v28, 2u);
      v30 = v28;
      v23 = v12;
      MEMORY[0x1E12739F0](v30, -1, -1);
      v17 = v45;
      v20 = v36;
LABEL_10:

      v31 = v39;
      (*(v8 + 16))(v37, v23, v39);
      sub_1DA940564();
      swift_allocObject();
      v32 = sub_1DA940554();
      (*(v8 + 8))(v23, v31);
      v33 = v40;
      *v22 = v47;
      *(v22 + 1) = v33;
      v22[16] = v46;
      *(v22 + 3) = v32;
      v34 = (*(v17 + 32))(&v22[*(v20 + 24)], v19, v38);
      v43(v34);
      sub_1DA838B2C(v22, v44 & 1);
      return sub_1DA839118(v22);
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t withThrowingSignpostAsync<A>(logger:name:enableTelemetry:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 185) = a6;
  *(v8 + 184) = a5;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v9 = sub_1DA9404F4();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v10 = sub_1DA9405A4();
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();
  v11 = sub_1DA940524();
  *(v8 + 128) = v11;
  *(v8 + 136) = *(v11 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = type metadata accessor for LogSignpost(0);
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA8385DC, 0, 0);
}

uint64_t sub_1DA8385DC()
{
  (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 32), *(v0 + 104));
  sub_1DA940504();
  sub_1DA940514();
  sub_1DA9404C4();
  v1 = sub_1DA940514();
  v2 = sub_1DA941084();
  result = sub_1DA941124();
  if (result)
  {
    v4 = *(v0 + 40);
    if ((*(v0 + 184) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = sub_1DA9404D4();
        _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v1, v2, v6, v4, "", v5, 2u);
        MEMORY[0x1E12739F0](v5, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v7 = *(v0 + 160);
  v8 = *(v0 + 136);
  v21 = *(v0 + 144);
  v19 = *(v0 + 152);
  v20 = *(v0 + 128);
  v9 = *(v0 + 96);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v13 = *(v0 + 48);
  v12 = *(v0 + 56);
  v18 = *(v0 + 184);
  v14 = *(v0 + 40);
  (*(v10 + 16))(*(v0 + 88), v9, v11);
  sub_1DA940564();
  swift_allocObject();
  v15 = sub_1DA940554();
  (*(v10 + 8))(v9, v11);
  *v7 = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = v18;
  *(v7 + 24) = v15;
  (*(v8 + 32))(v7 + *(v19 + 24), v21, v20);
  v22 = (v12 + *v12);
  v16 = swift_task_alloc();
  *(v0 + 168) = v16;
  *v16 = v0;
  v16[1] = sub_1DA8388A8;
  v17 = *(v0 + 24);

  return v22(v17);
}

uint64_t sub_1DA8388A8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1DA838A74;
  }

  else
  {
    v2 = sub_1DA8389BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA8389BC()
{
  v1 = *(v0 + 160);
  sub_1DA838B2C(v1, *(v0 + 185));
  sub_1DA839118(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DA838A74()
{
  v1 = *(v0 + 160);
  sub_1DA838B2C(v1, *(v0 + 185));
  sub_1DA839118(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DA838B2C(uint64_t a1, char a2)
{
  v4 = sub_1DA940534();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - v8;
  v10 = sub_1DA9404F4();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  type metadata accessor for LogSignpost(0);
  v16 = *a1;
  v17 = *(a1 + 16);
  v18 = sub_1DA940514();
  if (a2)
  {
    sub_1DA940544();
    v13 = sub_1DA941074();
    result = sub_1DA941124();
    if (result)
    {
      if (v17)
      {
        if (v16 >> 32)
        {
          goto LABEL_32;
        }

        if ((v16 & 0xFFFFF800) == 0xD800)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if (v16 >> 16 > 0x10)
        {
          goto LABEL_34;
        }

        v16 = &v48;
      }

      else if (!v16)
      {
        __break(1u);
        goto LABEL_6;
      }

      v41 = v18;
      v42 = v16;

      sub_1DA940574();

      v23 = v43;
      v22 = v44;
      if ((*(v43 + 88))(v9, v44) == *MEMORY[0x1E69E93E8])
      {
        v24 = 0;
        v25 = 0;
        v26 = "[Error] Interval already ended";
      }

      else
      {
        (*(v23 + 8))(v9, v22);
        v26 = "%s";
        v25 = 2;
        v24 = 1;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47 = v32;
      *v31 = v25;
      *(v31 + 1) = v24;
      *(v31 + 2) = 2080;
      v33 = sub_1DA941374();
      v35 = sub_1DA7AE6E8(v33, v34, &v47);

      *(v31 + 4) = v35;
      v36 = sub_1DA9404D4();
      v37 = v41;
      _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v41, v13, v36, v42, v26, v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1E12739F0](v32, -1, -1);
      MEMORY[0x1E12739F0](v31, -1, -1);
    }

    else
    {
    }

    return (*(v45 + 8))(v15, v46);
  }

LABEL_6:
  sub_1DA940544();
  v20 = sub_1DA941074();
  result = sub_1DA941124();
  if (result)
  {
    if (v17)
    {
      if (!(v16 >> 32))
      {
        if ((v16 & 0xFFFFF800) == 0xD800)
        {
LABEL_37:
          __break(1u);
          return result;
        }

        if (v16 >> 16 <= 0x10)
        {
          v21 = &v49;
          goto LABEL_22;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

    if (v16)
    {
      v21 = v16;
LABEL_22:
      v27 = v18;

      sub_1DA940574();

      v29 = v43;
      v28 = v44;
      if ((*(v43 + 88))(v7, v44) == *MEMORY[0x1E69E93E8])
      {
        v30 = "[Error] Interval already ended";
      }

      else
      {
        (*(v29 + 8))(v7, v28);
        v30 = "";
      }

      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = sub_1DA9404D4();
      _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v27, v20, v39, v21, v30, v38, 2u);
      MEMORY[0x1E12739F0](v38, -1, -1);

      return (*(v45 + 8))(v13, v46);
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  return (*(v45 + 8))(v13, v46);
}

uint64_t sub_1DA838FF0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1DA839000@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA839038(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1DA7AE6E8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void *sub_1DA839094(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5038, &qword_1DA9596D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_BYTE **sub_1DA839108(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1DA839118(uint64_t a1)
{
  v2 = type metadata accessor for LogSignpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA839174(uint64_t a1)
{
  result = sub_1DA940564();
  if (v2 <= 0x3F)
  {
    result = sub_1DA940524();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA839270(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_consumer;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v5 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_holdingPen);
  if (v5)
  {
    swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 8);
    swift_unknownObjectRelease();
    *(v5 + 24) = v6;
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

void (*sub_1DA839318(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_consumer;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1DA8393B8;
}

void sub_1DA8393B8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = *(v4 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_holdingPen);
    if (v5)
    {
      v6 = v3[5] + v3[6];
      swift_unknownObjectWeakLoadStrong();
      *(v5 + 24) = *(v6 + 8);
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

id UserNotificationsCloudReceiver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserNotificationsCloudReceiver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserNotificationsCloudReceiver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void UserNotificationsCloudReceiver.receiveAdd(notification:bundleIdentifier:settings:communicationImageData:)(void *a1, NSObject *a2, unint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v14 = sub_1DA9405A4();
  __swift_project_value_buffer(v14, qword_1EE11AD30);
  v15 = a4;
  v16 = a1;

  v17 = sub_1DA940584();
  v18 = sub_1DA940F34();

  if (os_log_type_enabled(v17, v18))
  {
    v53 = v15;
    v19 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v51 = a5;
    v48 = swift_slowAlloc();
    v56[0] = v48;
    *v19 = 136315650;
    log = v17;
    v20 = a4;
    v21 = a6;
    v22 = v16;
    v23 = a3;
    v24 = [v22 description];
    v49 = v7;
    v25 = a2;
    v26 = sub_1DA940A14();
    v44 = v18;
    v27 = v16;
    v29 = v28;

    a6 = v21;
    a4 = v20;

    a3 = v23;
    v30 = sub_1DA7AE6E8(v26, v29, v56);
    v16 = v27;

    *(v19 + 4) = v30;
    a2 = v25;
    v7 = v49;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1DA7AE6E8(a2, v23, v56);
    *(v19 + 22) = 2112;
    *(v19 + 24) = v53;
    *v47 = v20;
    v31 = v53;
    v17 = log;
    _os_log_impl(&dword_1DA7A9000, log, v44, "receiveAdd(notification): %s bundleIdentifier: %s settings: %@", v19, 0x20u);
    sub_1DA828378(v47);
    MEMORY[0x1E12739F0](v47, -1, -1);
    swift_arrayDestroy();
    a5 = v51;
    MEMORY[0x1E12739F0](v48, -1, -1);
    v32 = v19;
    v15 = v53;
    MEMORY[0x1E12739F0](v32, -1, -1);
  }

  if (sub_1DA839AC4(a2, a3))
  {
    if (a4)
    {
      v33 = v7 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_settingsProvider;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v34 = *(v33 + 8);
        v35 = v15;
        [v35 mutableCopy];
        sub_1DA941154();
        swift_unknownObjectRelease();
        sub_1DA7AF3EC(0, &qword_1ECBD5058, 0x1E6983230);
        v54 = v34;
        if (swift_dynamicCast())
        {
          v50 = v7;
          v52 = a5;
          ObjectType = swift_getObjectType();
          v37 = *(v34 + 8);
          v38 = v55;
          v39 = v37(a2, a3, ObjectType, v34);
          if (v39)
          {
            v40 = v39;
            [v38 setRemoteNotificationsSetting_];
            [v38 copy];
            sub_1DA941154();
            v45 = v38;

            swift_unknownObjectRelease();
            sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
            if (swift_dynamicCast())
            {
              v41 = v55;
            }

            else
            {
              v41 = v35;
            }

            v7 = v50;
            a5 = v52;
            v42 = v45;
          }

          else
          {

            v41 = v35;
            v42 = v38;
            v7 = v50;
            a5 = v52;
          }
        }

        else
        {
          v42 = 0;
          v41 = v35;
        }

        v43 = swift_getObjectType();
        (*(v54 + 16))(v41, a2, a3, v43);

        swift_unknownObjectRelease();
      }
    }

    if (*(v7 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_holdingPen))
    {
      sub_1DA8508F4(v16, a2, a3, a5, a6);
    }
  }
}

uint64_t sub_1DA839AC4(uint64_t a1, unint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_receiver];
  v6 = OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_properties;
  if (*(*(v5 + OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_properties) + 16) == 1)
  {
  }

  else
  {
    v7 = sub_1DA941684();

    if ((v7 & 1) == 0)
    {
      if (qword_1EE110D20 != -1)
      {
        swift_once();
      }

      v15 = sub_1DA9405A4();
      __swift_project_value_buffer(v15, qword_1EE11AD30);
      v16 = v2;
      v17 = sub_1DA940584();
      v18 = sub_1DA940EF4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v30 = v20;
        *v19 = 136315138;
        if (*(*(v5 + v6) + 16))
        {
          v21 = 0x7265766965636572;
        }

        else
        {
          v21 = 0x7265646E6573;
        }

        if (*(*(v5 + v6) + 16))
        {
          v22 = 0xE800000000000000;
        }

        else
        {
          v22 = 0xE600000000000000;
        }

        v23 = sub_1DA7AE6E8(v21, v22, &v30);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_1DA7A9000, v17, v18, "Ignoring enablement check for non-receiver (%s).", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x1E12739F0](v20, -1, -1);
        MEMORY[0x1E12739F0](v19, -1, -1);
      }

      return 1;
    }
  }

  v8 = &v2[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_settingsProvider];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    if (sub_1DA83A7C8(a1, a2, ObjectType, v9))
    {
      swift_unknownObjectRelease();
      return 1;
    }

    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v25 = sub_1DA9405A4();
    __swift_project_value_buffer(v25, qword_1EE11AD30);

    v26 = sub_1DA940584();
    v27 = sub_1DA940F34();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DA7AE6E8(a1, a2, &v30);
      _os_log_impl(&dword_1DA7A9000, v26, v27, "Notifications are disabled for %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E12739F0](v29, -1, -1);
      MEMORY[0x1E12739F0](v28, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v11 = sub_1DA9405A4();
    __swift_project_value_buffer(v11, qword_1EE11AD30);
    v12 = sub_1DA940584();
    v13 = sub_1DA940F34();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DA7A9000, v12, v13, "Missing settings provider.", v14, 2u);
      MEMORY[0x1E12739F0](v14, -1, -1);
    }
  }

  return 0;
}

void sub_1DA839ED4(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v8 = sub_1DA9405A4();
  __swift_project_value_buffer(v8, qword_1EE11AD30);
  v9 = a1;

  v10 = sub_1DA940584();
  v11 = sub_1DA940F34();

  v32 = v9;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33[0] = v31;
    *v12 = 136315394;
    v13 = a3;
    v14 = a2;
    v15 = v9;
    v16 = [v15 description];
    v17 = sub_1DA940A14();
    v19 = v18;

    a2 = v14;
    a3 = v13;

    v20 = sub_1DA7AE6E8(v17, v19, v33);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1DA7AE6E8(a2, v13, v33);
    _os_log_impl(&dword_1DA7A9000, v10, v11, "receiveRemove(notification): %s bundleIdentifier: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v31, -1, -1);
    MEMORY[0x1E12739F0](v12, -1, -1);
  }

  v21 = v4 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_consumer;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v21 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DA9596E0;
    v24 = [v32 notificationRecord];
    v25 = [v24 identifier];

    if (v25)
    {
      ObjectType = swift_getObjectType();
      v27 = sub_1DA940A14();
      v29 = v28;

      *(inited + 32) = v27;
      *(inited + 40) = v29;
      v30 = sub_1DA8AD06C(inited);
      swift_setDeallocating();
      sub_1DA83ACD0(inited + 32);
      (*(v22 + 16))(v30, a2, a3, ObjectType, v22);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1DA83A1E8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  v41 = a4;
  v42 = a2;
  v14 = sub_1DA93F964();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v18 = sub_1DA9405A4();
  __swift_project_value_buffer(v18, qword_1EE11AD30);
  v19 = *(v15 + 16);
  v43 = a1;
  v19(v17, a1, v14);

  v20 = sub_1DA940584();
  v21 = sub_1DA940F34();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v39 = v8;
    v23 = v22;
    v38 = swift_slowAlloc();
    v44 = v38;
    *v23 = 136315906;
    sub_1DA828278();
    v37 = v20;
    v24 = sub_1DA941614();
    v40 = a3;
    v36 = v21;
    v25 = a5;
    v26 = a7;
    v27 = a6;
    v29 = v28;
    (*(v15 + 8))(v17, v14);
    v30 = sub_1DA7AE6E8(v24, v29, &v44);
    a6 = v27;
    a7 = v26;
    a5 = v25;
    a3 = v40;
    v31 = v41;

    *(v23 + 4) = v30;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1DA7AE6E8(v42, a3, &v44);
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_1DA7AE6E8(v31, v25, &v44);
    *(v23 + 32) = 2080;
    *(v23 + 34) = sub_1DA7AE6E8(a6, a7, &v44);
    v32 = v37;
    _os_log_impl(&dword_1DA7A9000, v37, v36, "receiveAttachment(fileURL): %s attachmentIdentifier: %s notificationIdentifier: %s bundleIdentifier: %s", v23, 0x2Au);
    v33 = v38;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v33, -1, -1);
    v34 = v23;
    v8 = v39;
    MEMORY[0x1E12739F0](v34, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v17, v14);
  }

  if (sub_1DA839AC4(a6, a7))
  {
    if (*(v8 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_holdingPen))
    {
      sub_1DA84E964(v43, v42, a3, v41, a5, a6, a7);
    }
  }
}

Swift::Void __swiftcall UserNotificationsCloudReceiver.receiveCategory(categories:bundleIdentifier:)(Swift::OpaquePointer categories, Swift::String bundleIdentifier)
{
  v3 = v2;
  object = bundleIdentifier._object;
  countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v7 = sub_1DA9405A4();
  __swift_project_value_buffer(v7, qword_1EE11AD30);

  v8 = sub_1DA940584();
  v9 = sub_1DA940F34();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    v12 = sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
    v13 = MEMORY[0x1E1271CD0](categories._rawValue, v12);
    v15 = sub_1DA7AE6E8(v13, v14, &v19);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1DA7AE6E8(countAndFlagsBits, object, &v19);
    _os_log_impl(&dword_1DA7A9000, v8, v9, "receiveCategory(notification): %s bundleIdentifier: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v11, -1, -1);
    MEMORY[0x1E12739F0](v10, -1, -1);
  }

  if (sub_1DA839AC4(countAndFlagsBits, object))
  {
    v16 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_categoryRepository);
    sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
    v17 = sub_1DA940BD4();
    v18 = sub_1DA940A04();
    [v16 setCategories:v17 forBundleIdentifier:v18];
  }
}

BOOL sub_1DA83A7C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8))(a1, a2, a3);
  if (v6)
  {
    v7 = v6;
    v8 = [v6 remoteNotificationsSetting];

    return v8 == 2;
  }

  else
  {
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v10 = sub_1DA9405A4();
    __swift_project_value_buffer(v10, qword_1EE11AD30);

    v11 = sub_1DA940584();
    v12 = sub_1DA940F34();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136380675;
      *(v13 + 4) = sub_1DA7AE6E8(a1, a2, &v15);
      _os_log_impl(&dword_1DA7A9000, v11, v12, "No settings for %{private}s; defaulting to enabled.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E12739F0](v14, -1, -1);
      MEMORY[0x1E12739F0](v13, -1, -1);
    }

    return 1;
  }
}

void sub_1DA83A950(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t dispatch thunk of UserNotificationsCloudReceiverConsumer.save(_:shouldRepost:forBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DA83AB0C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DA83AB0C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t get_enum_tag_for_layout_string_21UserNotificationsCore11ToolServiceV0D5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1DA83AD40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DA83AD88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1DA83ADCC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_21UserNotificationsCore11ToolServiceV7RequestO(uint64_t a1)
{
  if ((*(a1 + 48) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 48) & 7;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DA83AE48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 49))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1DA83AE90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DA83AEE4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1DA83AF28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 17))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x3E | (*(a1 + 16) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DA83AF7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 16) = 0;
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1DA83B004(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5148, &qword_1DA959C28);
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5150, &qword_1DA959C30);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5158, &qword_1DA959C38);
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5160, &qword_1DA959C40);
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5168, &qword_1DA959C48);
  v49 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5170, &qword_1DA959C50);
  v17 = *(v16 - 8);
  v60 = v16;
  v61 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA83E598();
  v59 = v19;
  sub_1DA941834();
  v20 = *v2;
  v21 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
  v22 = *(v2 + 1);
  v23 = *(v2 + 2);
  v24 = *(v2 + 3);
  v25 = *(v2 + 4);
  v26 = v2[48];
  if (v26 <= 1)
  {
    v56 = *(v2 + 2);
    v57 = v22;
    v58 = v24;
    if (v26)
    {
      LOBYTE(v63) = 1;
      sub_1DA83E790();
      v46 = v59;
      v33 = v60;
      sub_1DA9415A4();
      LOBYTE(v63) = v20;
      HIBYTE(v63) = BYTE6(v21);
      *(&v63 + 5) = WORD2(v21);
      *(&v63 + 1) = v21;
      v64 = v57;
      v65 = v56;
      v66 = v58;
      sub_1DA83E934();
      sub_1DA941604();
      (*(v48 + 8))(v12, v10);
      v36 = *(v61 + 8);
      v37 = v46;
    }

    else
    {
      v52 = v25;
      LOBYTE(v63) = 0;
      sub_1DA83E838();
      v34 = v59;
      v33 = v60;
      sub_1DA9415A4();
      LOBYTE(v63) = v20;
      HIBYTE(v63) = BYTE6(v21);
      *(&v63 + 5) = WORD2(v21);
      *(&v63 + 1) = v21;
      v64 = v57;
      v65 = v56;
      v66 = v58;
      v67 = 0;
      sub_1DA83E8E0();
      v35 = v62;
      sub_1DA941604();
      if (!v35)
      {
        LOBYTE(v63) = 1;
        sub_1DA9415D4();
        (*(v49 + 8))(v15, v13);
        return (*(v61 + 8))(v34, v33);
      }

      (*(v49 + 8))(v15, v13);
      v36 = *(v61 + 8);
      v37 = v34;
    }

    return v36(v37, v33);
  }

  if (v26 == 2)
  {
    v52 = *(v2 + 4);
    v38 = v23;
    v58 = v24;
    v39 = v22;
    LOBYTE(v63) = 2;
    sub_1DA83E6E8();
    v40 = v53;
    v41 = v59;
    v42 = v60;
    sub_1DA9415A4();
    LOBYTE(v63) = 0;
    v43 = v55;
    v44 = v62;
    sub_1DA9415E4();
    if (!v44)
    {
      v63 = v39;
      v64 = v38;
      v65 = v58;
      v66 = v52;
      v67 = 1;
      sub_1DA83E8E0();
      sub_1DA941604();
    }

    (*(v54 + 8))(v40, v43);
    return (*(v61 + 8))(v41, v42);
  }

  else
  {
    v27 = v59;
    v28 = v60;
    if (v26 == 3)
    {
      LOBYTE(v63) = 4;
      v29 = v22;
      sub_1DA83E5EC();
      v30 = v56;
      sub_1DA9415A4();
      LOBYTE(v63) = v20;
      HIBYTE(v63) = BYTE6(v21);
      *(&v63 + 5) = WORD2(v21);
      *(&v63 + 1) = v21;
      v64 = v29;
      sub_1DA83E88C();
      v31 = v58;
      sub_1DA941604();
      (*(v57 + 8))(v30, v31);
    }

    else
    {
      LOBYTE(v63) = 3;
      sub_1DA83E694();
      v45 = v50;
      sub_1DA9415A4();
      (*(v51 + 8))(v45, v52);
    }

    return (*(v61 + 8))(v27, v28);
  }
}

unint64_t sub_1DA83B7C0()
{
  v1 = *v0;
  v2 = 0x7A6972616D6D7573;
  v3 = 7628147;
  v4 = 0x7061436574617473;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DA83B874@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DA83D964(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DA83B89C(uint64_t a1)
{
  v2 = sub_1DA83E598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83B8D8(uint64_t a1)
{
  v2 = sub_1DA83E598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83B92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x617461446E6F736ALL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA83B9B4(uint64_t a1)
{
  v2 = sub_1DA83E5EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83B9F0(uint64_t a1)
{
  v2 = sub_1DA83E5EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83BA2C()
{
  if (*v0)
  {
    return 0x6669746F4E726F66;
  }

  else
  {
    return 0x6867696C68676968;
  }
}

uint64_t sub_1DA83BA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6867696C68676968 && a2 == 0xEB00000000646574;
  if (v6 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6669746F4E726F66 && a2 == 0xEF6E6F6974616369)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA83BB64(uint64_t a1)
{
  v2 = sub_1DA83E6E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83BBA0(uint64_t a1)
{
  v2 = sub_1DA83E6E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83BBE8(uint64_t a1)
{
  v2 = sub_1DA83E694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83BC24(uint64_t a1)
{
  v2 = sub_1DA83E694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83BC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA83BCF8(uint64_t a1)
{
  v2 = sub_1DA83E790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83BD34(uint64_t a1)
{
  v2 = sub_1DA83E790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83BD70()
{
  if (*v0)
  {
    return 0x7972616D6D7573;
  }

  else
  {
    return 0x6163696669746F6ELL;
  }
}

uint64_t sub_1DA83BDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974;
  if (v6 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA83BE94(uint64_t a1)
{
  v2 = sub_1DA83E838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83BED0(uint64_t a1)
{
  v2 = sub_1DA83E838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DA83BF0C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DA83DB30(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

unint64_t sub_1DA83BFB8(uint64_t a1)
{
  result = sub_1DA83BFE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DA83BFE0()
{
  result = qword_1ECBD5090;
  if (!qword_1ECBD5090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5090);
  }

  return result;
}

uint64_t sub_1DA83C0D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v20[2] = a3;
  v20[0] = a4;
  v20[1] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (a8)(v15, v16, v17);
  sub_1DA941834();
  v22 = 0;
  v18 = v20[3];
  sub_1DA9415D4();
  if (!v18)
  {
    v21 = 1;
    sub_1DA9415D4();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1DA83C264(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v23 = a4;
  v24 = a2;
  v25 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5098, &qword_1DA959BD8);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v20 = &v19 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD50A0, &qword_1DA959BE0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD50A8, &qword_1DA959BE8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA83D814();
  sub_1DA941834();
  if ((v23 & 0x80) != 0)
  {
    v16 = v23 & 0x7F;
    LOBYTE(v26) = 1;
    sub_1DA83D868();
    v17 = v20;
    sub_1DA9415A4();
    v26 = v24;
    v27 = v25;
    v28 = v16;
    sub_1DA83D8BC();
    v18 = v22;
    sub_1DA941604();
    (*(v21 + 8))(v17, v18);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_1DA83D910();
    sub_1DA9415A4();
    sub_1DA9415D4();
    (*(v8 + 8))(v10, v7);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1DA83C59C(uint64_t a1)
{
  v2 = sub_1DA840E90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83C5D8(uint64_t a1)
{
  v2 = sub_1DA840E90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83C6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DA950340 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA83C79C(uint64_t a1)
{
  v2 = sub_1DA840EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83C7D8(uint64_t a1)
{
  v2 = sub_1DA840EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83C858@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_1DA83E988(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

uint64_t sub_1DA83C8F0()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1DA83C924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA83CA00(uint64_t a1)
{
  v2 = sub_1DA83D814();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83CA3C(uint64_t a1)
{
  v2 = sub_1DA83D814();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83CA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA83CB10(uint64_t a1)
{
  v2 = sub_1DA83D868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83CB4C(uint64_t a1)
{
  v2 = sub_1DA83D868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83CBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA83CC28(uint64_t a1)
{
  v2 = sub_1DA83D910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83CC64(uint64_t a1)
{
  v2 = sub_1DA83D910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DA83CCA0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DA83EB78(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DA83CCF0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v37 = a4;
  *&v38 = a2;
  *(&v38 + 1) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5208, &qword_1DA959CA0);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5210, &qword_1DA959CA8);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5218, &qword_1DA959CB0);
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v26 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5220, &qword_1DA959CB8);
  v27 = *(v12 - 8);
  v28 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5228, &qword_1DA959CC0);
  v26 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5230, &qword_1DA959CC8);
  v39 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA83FAF8();
  sub_1DA941834();
  if (v37)
  {
    if (v37 == 1)
    {
      v44 = 4;
      sub_1DA83FB4C();
      v21 = v34;
      sub_1DA9415A4();
      v22 = v36;
      sub_1DA9415D4();
      (*(v35 + 8))(v21, v22);
      return (*(v39 + 8))(v20, v18);
    }

    else
    {
      if (v38 == 0)
      {
        v40 = 0;
        sub_1DA83FC9C();
        sub_1DA9415A4();
        (*(v26 + 8))(v17, v15);
      }

      else if (v38 ^ 1 | *(&v38 + 1))
      {
        v42 = 2;
        sub_1DA83FBF4();
        v25 = v29;
        sub_1DA9415A4();
        (*(v30 + 8))(v25, v31);
      }

      else
      {
        v41 = 1;
        sub_1DA83FC48();
        sub_1DA9415A4();
        (*(v27 + 8))(v14, v28);
      }

      return (*(v39 + 8))(v20, v18);
    }
  }

  else
  {
    v43 = 3;
    sub_1DA83FBA0();
    sub_1DA9415A4();
    v24 = v33;
    sub_1DA9415D4();
    (*(v32 + 8))(v9, v24);
    return (*(v39 + 8))(v20, v18);
  }
}

unint64_t sub_1DA83D2A8()
{
  v1 = *v0;
  v2 = 0x5264696C61766E69;
  v3 = 0xD000000000000012;
  v4 = 0x724565746F6D6572;
  if (v1 != 3)
  {
    v4 = 0x7272456C61636F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65534350586C696ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DA83D36C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DA83F104(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DA83D394(uint64_t a1)
{
  v2 = sub_1DA83FAF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83D3D0(uint64_t a1)
{
  v2 = sub_1DA83FAF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83D40C(uint64_t a1)
{
  v2 = sub_1DA83FC9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83D448(uint64_t a1)
{
  v2 = sub_1DA83FC9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83D4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001DA951B40 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DA941684();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DA83D534(uint64_t a1)
{
  v2 = sub_1DA83FB4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83D570(uint64_t a1)
{
  v2 = sub_1DA83FB4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83D5AC(uint64_t a1)
{
  v2 = sub_1DA83FBF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83D5E8(uint64_t a1)
{
  v2 = sub_1DA83FBF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83D624(uint64_t a1)
{
  v2 = sub_1DA83FC48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83D660(uint64_t a1)
{
  v2 = sub_1DA83FC48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83D6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x80000001DA951B60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DA941684();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DA83D74C(uint64_t a1)
{
  v2 = sub_1DA83FBA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA83D788(uint64_t a1)
{
  v2 = sub_1DA83FBA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA83D7C4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DA83F2D8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_1DA83D814()
{
  result = qword_1ECBD50B0;
  if (!qword_1ECBD50B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD50B0);
  }

  return result;
}

unint64_t sub_1DA83D868()
{
  result = qword_1ECBD50B8;
  if (!qword_1ECBD50B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD50B8);
  }

  return result;
}

unint64_t sub_1DA83D8BC()
{
  result = qword_1ECBD50C0;
  if (!qword_1ECBD50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD50C0);
  }

  return result;
}

unint64_t sub_1DA83D910()
{
  result = qword_1ECBD50C8;
  if (!qword_1ECBD50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD50C8);
  }

  return result;
}

uint64_t sub_1DA83D964(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001DA951AE0 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A6972616D6D7573 && a2 == 0xEE0070756F724765 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7628147 && a2 == 0xE300000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7061436574617473 && a2 == 0xEC00000065727574 || (sub_1DA941684() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DA951B00 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_1DA941684();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DA83DB30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD50D0, &qword_1DA959BF0);
  v4 = *(v3 - 8);
  v70 = v3;
  v71 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD50D8, &qword_1DA959BF8);
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v62 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD50E0, &qword_1DA959C00);
  v72 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v74 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD50E8, &qword_1DA959C08);
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD50F0, &qword_1DA959C10);
  v65 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD50F8, &qword_1DA959C18);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v62 - v17;
  v19 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1DA83E598();
  v20 = v78;
  sub_1DA941804();
  v78 = v20;
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v77);
  }

  v21 = v14;
  v22 = v75;
  v62 = v12;
  v23 = v74;
  v24 = v76;
  v63 = v16;
  v25 = sub_1DA941594();
  v26 = (2 * *(v25 + 16)) | 1;
  v83 = v25;
  v84 = v25 + 32;
  v85 = 0;
  v86 = v26;
  v27 = sub_1DA8675E0();
  v28 = v15;
  if (v27 == 5 || v85 != v86 >> 1)
  {
    v38 = sub_1DA9413B4();
    v39 = swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20);
    *v41 = &type metadata for ToolService.Request;
    sub_1DA941514();
    sub_1DA9413A4();
    (*(*(v38 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v38);
    v78 = v39;
    swift_willThrow();
    goto LABEL_10;
  }

  if (v27 <= 1u)
  {
    if (v27)
    {
      LOBYTE(v79) = 1;
      sub_1DA83E790();
      v53 = v78;
      sub_1DA941504();
      v78 = v53;
      if (!v53)
      {
        sub_1DA83E7E4();
        v54 = v67;
        v55 = v78;
        sub_1DA941584();
        v56 = v63;
        v78 = v55;
        if (!v55)
        {
          (*(v66 + 8))(v11, v54);
          (*(v56 + 8))(v18, v28);
          swift_unknownObjectRelease();
          v35 = 0;
          v36 = 0;
          v31 = v79;
          v32 = v80;
          v37 = 1;
          v33 = v81;
          v34 = v82;
          v29 = v73;
          goto LABEL_31;
        }

        (*(v66 + 8))(v11, v54);
        (*(v56 + 8))(v18, v28);
        goto LABEL_11;
      }
    }

    else
    {
      LOBYTE(v79) = 0;
      sub_1DA83E838();
      v43 = v78;
      sub_1DA941504();
      v78 = v43;
      if (!v43)
      {
        v87 = 0;
        sub_1DA83E73C();
        v44 = v62;
        v45 = v78;
        sub_1DA941584();
        v78 = v45;
        if (!v45)
        {
          v75 = v18;
          v76 = v15;
          v32 = v80;
          v74 = v79;
          v33 = v81;
          v34 = v82;
          v87 = 1;
          v59 = sub_1DA941554();
          v60 = (v63 + 8);
          v78 = 0;
          v35 = v59;
          v36 = v61;
          (*(v65 + 8))(v21, v44);
          (*v60)(v75, v76);
          swift_unknownObjectRelease();
          v37 = 0;
          v29 = v73;
          v31 = v74;
          goto LABEL_31;
        }

        (*(v65 + 8))(v21, v44);
      }
    }

    goto LABEL_10;
  }

  v29 = v73;
  if (v27 == 2)
  {
    LOBYTE(v79) = 2;
    sub_1DA83E6E8();
    v46 = v23;
    v47 = v78;
    sub_1DA941504();
    v78 = v47;
    if (!v47)
    {
      LOBYTE(v79) = 0;
      v48 = v64;
      v49 = sub_1DA941564();
      v78 = 0;
      v57 = v49;
      v87 = 1;
      sub_1DA83E73C();
      v58 = v78;
      sub_1DA941584();
      v78 = v58;
      if (!v58)
      {
        (*(v72 + 8))(v46, v48);
        (*(v63 + 8))(v18, v28);
        swift_unknownObjectRelease();
        v36 = 0;
        v32 = v79;
        v33 = v80;
        v31 = (v57 & 1);
        v37 = 2;
        v34 = v81;
        v35 = v82;
        goto LABEL_31;
      }

      (*(v72 + 8))(v46, v48);
    }

    goto LABEL_10;
  }

  if (v27 != 3)
  {
    LOBYTE(v79) = 4;
    sub_1DA83E5EC();
    v50 = v78;
    sub_1DA941504();
    v78 = v50;
    if (!v50)
    {
      sub_1DA83E640();
      v51 = v70;
      v52 = v78;
      sub_1DA941584();
      v78 = v52;
      if (!v52)
      {
        (*(v71 + 8))(v24, v51);
        (*(v63 + 8))(v18, v28);
        swift_unknownObjectRelease();
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v31 = v79;
        v32 = v80;
        v37 = 3;
        goto LABEL_31;
      }

      (*(v71 + 8))(v24, v51);
    }

    goto LABEL_10;
  }

  LOBYTE(v79) = 3;
  sub_1DA83E694();
  v30 = v78;
  sub_1DA941504();
  v78 = v30;
  if (v30)
  {
LABEL_10:
    (*(v63 + 8))(v18, v28);
LABEL_11:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v77);
  }

  (*(v68 + 8))(v22, v69);
  (*(v63 + 8))(v18, v28);
  swift_unknownObjectRelease();
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 4;
LABEL_31:
  result = __swift_destroy_boxed_opaque_existential_1(v77);
  *v29 = v31;
  *(v29 + 8) = v32;
  *(v29 + 16) = v33;
  *(v29 + 24) = v34;
  *(v29 + 32) = v35;
  *(v29 + 40) = v36;
  *(v29 + 48) = v37;
  return result;
}

unint64_t sub_1DA83E598()
{
  result = qword_1ECBD5100;
  if (!qword_1ECBD5100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5100);
  }

  return result;
}

unint64_t sub_1DA83E5EC()
{
  result = qword_1ECBD5110;
  if (!qword_1ECBD5110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5110);
  }

  return result;
}

unint64_t sub_1DA83E640()
{
  result = qword_1EE114C90;
  if (!qword_1EE114C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114C90);
  }

  return result;
}

unint64_t sub_1DA83E694()
{
  result = qword_1ECBD5118;
  if (!qword_1ECBD5118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5118);
  }

  return result;
}

unint64_t sub_1DA83E6E8()
{
  result = qword_1ECBD5120;
  if (!qword_1ECBD5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5120);
  }

  return result;
}

unint64_t sub_1DA83E73C()
{
  result = qword_1ECBD5128;
  if (!qword_1ECBD5128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5128);
  }

  return result;
}

unint64_t sub_1DA83E790()
{
  result = qword_1ECBD5130;
  if (!qword_1ECBD5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5130);
  }

  return result;
}

unint64_t sub_1DA83E7E4()
{
  result = qword_1ECBD5138;
  if (!qword_1ECBD5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5138);
  }

  return result;
}

unint64_t sub_1DA83E838()
{
  result = qword_1ECBD5140;
  if (!qword_1ECBD5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5140);
  }

  return result;
}

unint64_t sub_1DA83E88C()
{
  result = qword_1EE114CA0;
  if (!qword_1EE114CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114CA0);
  }

  return result;
}

unint64_t sub_1DA83E8E0()
{
  result = qword_1ECBD5178;
  if (!qword_1ECBD5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5178);
  }

  return result;
}

unint64_t sub_1DA83E934()
{
  result = qword_1ECBD5180;
  if (!qword_1ECBD5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5180);
  }

  return result;
}

uint64_t sub_1DA83E988(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  a4();
  sub_1DA941804();
  if (!v5)
  {
    v12 = v15;
    v17 = 0;
    v11 = sub_1DA941554();
    v16 = 1;
    sub_1DA941554();
    (*(v12 + 8))(v10, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

void *sub_1DA83EB78(void *a1)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5188, &qword_1DA959C58);
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v3 = &v25 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5190, &qword_1DA959C60);
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5198, &qword_1DA959C68);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = a1[3];
  v35 = a1;
  v12 = __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DA83D814();
  v13 = v29;
  sub_1DA941804();
  if (!v13)
  {
    v29 = v8;
    v14 = sub_1DA941594();
    v15 = (2 * *(v14 + 16)) | 1;
    v31 = v14;
    v32 = v14 + 32;
    v33 = 0;
    v34 = v15;
    v16 = sub_1DA8675E4();
    v17 = v7;
    if (v16 == 2 || v33 != v34 >> 1)
    {
      v20 = sub_1DA9413B4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20);
      *v22 = &type metadata for ToolService.ToolResult;
      v12 = v10;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v29 + 8))(v10, v7);
      swift_unknownObjectRelease();
    }

    else if (v16)
    {
      LOBYTE(v30) = 1;
      sub_1DA83D868();
      sub_1DA941504();
      v18 = v29;
      sub_1DA83F0B0();
      v19 = v26;
      sub_1DA941584();
      (*(v28 + 8))(v3, v19);
      (*(v18 + 8))(v10, v17);
      swift_unknownObjectRelease();
      v12 = v30;
    }

    else
    {
      LOBYTE(v30) = 0;
      sub_1DA83D910();
      sub_1DA941504();
      v24 = v29;
      v12 = sub_1DA941554();
      (*(v27 + 8))(v6, v4);
      (*(v24 + 8))(v10, v17);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v12;
}

unint64_t sub_1DA83F0B0()
{
  result = qword_1ECBD51A0;
  if (!qword_1ECBD51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD51A0);
  }

  return result;
}

uint64_t sub_1DA83F104(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5264696C61766E69 && a2 == 0xEE00747365757165;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65534350586C696ELL && a2 == 0xED00006E6F697373 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DA951B20 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x724565746F6D6572 && a2 == 0xEB00000000726F72 || (sub_1DA941684() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7272456C61636F6CLL && a2 == 0xEA0000000000726FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DA941684();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DA83F2D8(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD51A8, &qword_1DA959C70);
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v33 - v2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD51B0, &qword_1DA959C78);
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v44 = &v33 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD51B8, &qword_1DA959C80);
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v43 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD51C0, &qword_1DA959C88);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD51C8, &qword_1DA959C90);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD51D0, &qword_1DA959C98);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v15 = a1[3];
  v46 = a1;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1DA83FAF8();
  v17 = v45;
  sub_1DA941804();
  if (!v17)
  {
    v18 = v10;
    v45 = v8;
    v20 = v43;
    v19 = v44;
    v21 = sub_1DA941594();
    v22 = (2 * *(v21 + 16)) | 1;
    v47 = v21;
    v48 = v21 + 32;
    v49 = 0;
    v50 = v22;
    v23 = sub_1DA8675E0();
    if (v23 == 5 || v49 != v50 >> 1)
    {
      v26 = sub_1DA9413B4();
      swift_allocError();
      v27 = v11;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20);
      v16 = v14;
      *v29 = &type metadata for ToolService.ToolError;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v26 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v12 + 8))(v14, v27);
      swift_unknownObjectRelease();
    }

    else if (v23 <= 1u)
    {
      if (v23)
      {
        v51 = 1;
        sub_1DA83FC48();
        sub_1DA941504();
        (*(v35 + 8))(v7, v36);
        (*(v12 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v16 = 1;
      }

      else
      {
        v51 = 0;
        sub_1DA83FC9C();
        sub_1DA941504();
        (*(v33 + 8))(v18, v45);
        (*(v12 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v16 = 0;
      }
    }

    else if (v23 == 2)
    {
      v51 = 2;
      sub_1DA83FBF4();
      sub_1DA941504();
      (*(v34 + 8))(v20, v37);
      (*(v12 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v16 = 2;
    }

    else
    {
      if (v23 == 3)
      {
        v51 = 3;
        sub_1DA83FBA0();
        v24 = v19;
        sub_1DA941504();
        v25 = v38;
        v16 = sub_1DA941554();
        (*(v40 + 8))(v24, v25);
      }

      else
      {
        v51 = 4;
        sub_1DA83FB4C();
        v31 = v42;
        sub_1DA941504();
        v32 = v39;
        v16 = sub_1DA941554();
        (*(v41 + 8))(v31, v32);
      }

      (*(v12 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v46);
  return v16;
}

unint64_t sub_1DA83FAF8()
{
  result = qword_1ECBD51D8;
  if (!qword_1ECBD51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD51D8);
  }

  return result;
}

unint64_t sub_1DA83FB4C()
{
  result = qword_1ECBD51E0;
  if (!qword_1ECBD51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD51E0);
  }

  return result;
}

unint64_t sub_1DA83FBA0()
{
  result = qword_1ECBD51E8;
  if (!qword_1ECBD51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD51E8);
  }

  return result;
}

unint64_t sub_1DA83FBF4()
{
  result = qword_1ECBD51F0;
  if (!qword_1ECBD51F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD51F0);
  }

  return result;
}

unint64_t sub_1DA83FC48()
{
  result = qword_1ECBD51F8;
  if (!qword_1ECBD51F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD51F8);
  }

  return result;
}

unint64_t sub_1DA83FC9C()
{
  result = qword_1ECBD5200;
  if (!qword_1ECBD5200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5200);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DismissalSyncPlatform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DismissalSyncPlatform(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA83FF3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DA83FF84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DA84003C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DA84007C()
{
  result = qword_1ECBD5238;
  if (!qword_1ECBD5238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5238);
  }

  return result;
}

unint64_t sub_1DA8400D4()
{
  result = qword_1ECBD5240;
  if (!qword_1ECBD5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5240);
  }

  return result;
}

unint64_t sub_1DA84012C()
{
  result = qword_1ECBD5248;
  if (!qword_1ECBD5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5248);
  }

  return result;
}

unint64_t sub_1DA840184()
{
  result = qword_1ECBD5250;
  if (!qword_1ECBD5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5250);
  }

  return result;
}

unint64_t sub_1DA8401DC()
{
  result = qword_1ECBD5258;
  if (!qword_1ECBD5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5258);
  }

  return result;
}

unint64_t sub_1DA840234()
{
  result = qword_1ECBD5260;
  if (!qword_1ECBD5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5260);
  }

  return result;
}

unint64_t sub_1DA84028C()
{
  result = qword_1ECBD5268;
  if (!qword_1ECBD5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5268);
  }

  return result;
}

unint64_t sub_1DA8402E4()
{
  result = qword_1ECBD5270;
  if (!qword_1ECBD5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5270);
  }

  return result;
}

unint64_t sub_1DA84033C()
{
  result = qword_1ECBD5278;
  if (!qword_1ECBD5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5278);
  }

  return result;
}

unint64_t sub_1DA840394()
{
  result = qword_1ECBD5280;
  if (!qword_1ECBD5280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5280);
  }

  return result;
}

unint64_t sub_1DA8403EC()
{
  result = qword_1ECBD5288;
  if (!qword_1ECBD5288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5288);
  }

  return result;
}

unint64_t sub_1DA840444()
{
  result = qword_1ECBD5290;
  if (!qword_1ECBD5290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5290);
  }

  return result;
}

unint64_t sub_1DA84049C()
{
  result = qword_1ECBD5298;
  if (!qword_1ECBD5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5298);
  }

  return result;
}

unint64_t sub_1DA8404F4()
{
  result = qword_1ECBD52A0;
  if (!qword_1ECBD52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52A0);
  }

  return result;
}

unint64_t sub_1DA84054C()
{
  result = qword_1ECBD52A8;
  if (!qword_1ECBD52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52A8);
  }

  return result;
}

unint64_t sub_1DA8405A4()
{
  result = qword_1ECBD52B0;
  if (!qword_1ECBD52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52B0);
  }

  return result;
}

unint64_t sub_1DA8405FC()
{
  result = qword_1ECBD52B8;
  if (!qword_1ECBD52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52B8);
  }

  return result;
}

unint64_t sub_1DA840654()
{
  result = qword_1ECBD52C0;
  if (!qword_1ECBD52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52C0);
  }

  return result;
}

unint64_t sub_1DA8406AC()
{
  result = qword_1ECBD52C8;
  if (!qword_1ECBD52C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52C8);
  }

  return result;
}

unint64_t sub_1DA840704()
{
  result = qword_1ECBD52D0;
  if (!qword_1ECBD52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52D0);
  }

  return result;
}

unint64_t sub_1DA84075C()
{
  result = qword_1ECBD52D8;
  if (!qword_1ECBD52D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52D8);
  }

  return result;
}

unint64_t sub_1DA8407B4()
{
  result = qword_1ECBD52E0;
  if (!qword_1ECBD52E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52E0);
  }

  return result;
}

unint64_t sub_1DA84080C()
{
  result = qword_1ECBD52E8;
  if (!qword_1ECBD52E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52E8);
  }

  return result;
}

unint64_t sub_1DA840864()
{
  result = qword_1ECBD52F0;
  if (!qword_1ECBD52F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52F0);
  }

  return result;
}

unint64_t sub_1DA8408BC()
{
  result = qword_1ECBD52F8;
  if (!qword_1ECBD52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD52F8);
  }

  return result;
}

unint64_t sub_1DA840914()
{
  result = qword_1ECBD5300;
  if (!qword_1ECBD5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5300);
  }

  return result;
}

unint64_t sub_1DA84096C()
{
  result = qword_1ECBD5308;
  if (!qword_1ECBD5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5308);
  }

  return result;
}

unint64_t sub_1DA8409C4()
{
  result = qword_1ECBD5310;
  if (!qword_1ECBD5310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5310);
  }

  return result;
}

unint64_t sub_1DA840A1C()
{
  result = qword_1ECBD5318;
  if (!qword_1ECBD5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5318);
  }

  return result;
}

unint64_t sub_1DA840A74()
{
  result = qword_1ECBD5320;
  if (!qword_1ECBD5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5320);
  }

  return result;
}

unint64_t sub_1DA840ACC()
{
  result = qword_1ECBD5328;
  if (!qword_1ECBD5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5328);
  }

  return result;
}

unint64_t sub_1DA840B24()
{
  result = qword_1ECBD5330;
  if (!qword_1ECBD5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5330);
  }

  return result;
}

unint64_t sub_1DA840B7C()
{
  result = qword_1ECBD5338;
  if (!qword_1ECBD5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5338);
  }

  return result;
}

unint64_t sub_1DA840BD4()
{
  result = qword_1ECBD5340;
  if (!qword_1ECBD5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5340);
  }

  return result;
}

unint64_t sub_1DA840C2C()
{
  result = qword_1ECBD5348;
  if (!qword_1ECBD5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5348);
  }

  return result;
}

unint64_t sub_1DA840C84()
{
  result = qword_1ECBD5350;
  if (!qword_1ECBD5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5350);
  }

  return result;
}

unint64_t sub_1DA840CDC()
{
  result = qword_1ECBD5358;
  if (!qword_1ECBD5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5358);
  }

  return result;
}

unint64_t sub_1DA840D34()
{
  result = qword_1ECBD5360;
  if (!qword_1ECBD5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5360);
  }

  return result;
}

unint64_t sub_1DA840D8C()
{
  result = qword_1ECBD5368;
  if (!qword_1ECBD5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5368);
  }

  return result;
}

unint64_t sub_1DA840DE4()
{
  result = qword_1ECBD5370;
  if (!qword_1ECBD5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5370);
  }

  return result;
}

unint64_t sub_1DA840E3C()
{
  result = qword_1ECBD5378;
  if (!qword_1ECBD5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5378);
  }

  return result;
}

unint64_t sub_1DA840E90()
{
  result = qword_1ECBD5388;
  if (!qword_1ECBD5388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5388);
  }

  return result;
}

unint64_t sub_1DA840EE4()
{
  result = qword_1ECBD5398;
  if (!qword_1ECBD5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5398);
  }

  return result;
}

unint64_t sub_1DA840F5C()
{
  result = qword_1ECBD53B0;
  if (!qword_1ECBD53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD53B0);
  }

  return result;
}

unint64_t sub_1DA840FB4()
{
  result = qword_1ECBD53B8;
  if (!qword_1ECBD53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD53B8);
  }

  return result;
}

unint64_t sub_1DA84100C()
{
  result = qword_1ECBD53C0;
  if (!qword_1ECBD53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD53C0);
  }

  return result;
}

unint64_t sub_1DA841064()
{
  result = qword_1ECBD53C8;
  if (!qword_1ECBD53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD53C8);
  }

  return result;
}

unint64_t sub_1DA8410BC()
{
  result = qword_1ECBD53D0;
  if (!qword_1ECBD53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD53D0);
  }

  return result;
}

unint64_t sub_1DA841114()
{
  result = qword_1ECBD53D8;
  if (!qword_1ECBD53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD53D8);
  }

  return result;
}

uint64_t sub_1DA8411E8()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBE3D78);
  __swift_project_value_buffer(v0, qword_1ECBE3D78);
  return sub_1DA940594();
}

uint64_t sub_1DA84125C(uint64_t (*a1)(void))
{
  a1();

  return sub_1DA941884();
}

void sub_1DA841298(void *a1, uint64_t a2, char a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA93F7D4();
  swift_allocObject();
  sub_1DA93F7C4();
  v5 = sub_1DA93F7B4();
  v7 = v6;
  if (!v3)
  {

    if (qword_1ECBD4718 != -1)
    {
      swift_once();
    }

    v17 = sub_1DA9405A4();
    __swift_project_value_buffer(v17, qword_1ECBE3D78);
    sub_1DA7BABAC(a1, v43);
    sub_1DA841874(v5, v7);
    sub_1DA841874(v5, v7);
    v18 = sub_1DA940584();
    v19 = sub_1DA940F34();
    if (!os_log_type_enabled(v18, v19))
    {
      sub_1DA828324(v5, v7);
      sub_1DA828324(v5, v7);

      __swift_destroy_boxed_opaque_existential_1(v43);
      return;
    }

    v20 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45 = v41;
    *v20 = 136446722;
    if (a3)
    {
      v21 = 7104846;
      v22 = 0xE300000000000000;
    }

    else
    {
      sub_1DA841820();
      v21 = sub_1DA941144();
      v22 = v31;
    }

    v32 = sub_1DA7AE6E8(v21, v22, &v45);

    *(v20 + 4) = v32;
    *(v20 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    swift_getDynamicType();
    v33 = sub_1DA941884();
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_1(v43);
    v36 = sub_1DA7AE6E8(v33, v35, &v45);

    *(v20 + 14) = v36;
    *(v20 + 22) = 2050;
    v37 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v37 != 2)
      {
        sub_1DA828324(v5, v7);
        v38 = 0;
        goto LABEL_28;
      }

      v40 = *(v5 + 16);
      v39 = *(v5 + 24);
      sub_1DA828324(v5, v7);
      v38 = v39 - v40;
      if (!__OFSUB__(v39, v40))
      {
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (!v37)
    {
      sub_1DA828324(v5, v7);
      v38 = BYTE6(v7);
      goto LABEL_28;
    }

    sub_1DA828324(v5, v7);
    LODWORD(v38) = HIDWORD(v5) - v5;
    if (__OFSUB__(HIDWORD(v5), v5))
    {
      __break(1u);
      return;
    }

    v38 = v38;
LABEL_28:
    *(v20 + 24) = v38;
    sub_1DA828324(v5, v7);
    _os_log_impl(&dword_1DA7A9000, v18, v19, "[v%{public}s] Encoded value of type %{public}s; size: %{public}ldB.", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v41, -1, -1);
    MEMORY[0x1E12739F0](v20, -1, -1);

    return;
  }

  if (qword_1ECBD4718 != -1)
  {
    swift_once();
  }

  v8 = sub_1DA9405A4();
  __swift_project_value_buffer(v8, qword_1ECBE3D78);
  sub_1DA7BABAC(a1, v43);
  v9 = v3;
  v10 = sub_1DA940584();
  v11 = sub_1DA940F14();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v45 = v14;
    *v12 = 136446722;
    if (a3)
    {
      v15 = 7104846;
      v16 = 0xE300000000000000;
    }

    else
    {
      sub_1DA841820();
      v15 = sub_1DA941144();
      v16 = v23;
    }

    v24 = sub_1DA7AE6E8(v15, v16, &v45);

    *(v12 + 4) = v24;
    *(v12 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    swift_getDynamicType();
    v25 = sub_1DA941884();
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_1(v43);
    v28 = sub_1DA7AE6E8(v25, v27, &v45);

    *(v12 + 14) = v28;
    *(v12 + 22) = 2112;
    v29 = v3;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v30;
    *v13 = v30;
    _os_log_impl(&dword_1DA7A9000, v10, v11, "[v%{public}s] Encountered error encoding value of type %{public}s. %@", v12, 0x20u);
    sub_1DA828378(v13);
    MEMORY[0x1E12739F0](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v14, -1, -1);
    MEMORY[0x1E12739F0](v12, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  swift_willThrow();
}

unint64_t sub_1DA841820()
{
  result = qword_1ECBD53E0;
  if (!qword_1ECBD53E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD53E0);
  }

  return result;
}

uint64_t sub_1DA841874(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1DA841918(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1DA841984(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1DA841A24;
}

void sub_1DA841A24(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

uint64_t UserNotificationsVendorClient.__allocating_init(serviceName:configureXPC:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = swift_allocObject();
  UserNotificationsVendorClient.init(serviceName:configureXPC:)(a1, a2, v3);
  return v6;
}

uint64_t UserNotificationsVendorClient.init(serviceName:configureXPC:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  sub_1DA93FB14();
  v7 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD53F0, &qword_1DA95AFB0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v3 + v7) = v8;
  *(v3 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_actionStreamContinuation;
  v10 = MEMORY[0x1E69E7CC0];
  *(v3 + v9) = sub_1DA8485B4(MEMORY[0x1E69E7CC0]);
  v11 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_transactionStreamContinuation;
  *(v3 + v11) = sub_1DA8487E0(v10);
  v12 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_historicalNotificationsContinuations;
  *(v3 + v12) = sub_1DA8487E0(v10);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  if (a3)
  {
    sub_1DA841C00();
  }

  else
  {
    *(v3 + 32) = 0;
  }

  return v3;
}

void sub_1DA841C00()
{
  v1 = v0;
  v2 = sub_1DA940804();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA9405E4();
  MEMORY[0x1EEE9AC00](v5);
  if (*(v0 + 32))
  {

    sub_1DA940634();
  }

  sub_1DA940674();
  v6 = sub_1DA7AC344();

  v19[1] = v6;
  sub_1DA940FD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5588, &unk_1DA95D880);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DA9596E0;
  sub_1DA9405D4();
  aBlock[0] = v7;
  sub_1DA84A9BC(&unk_1EE110D10, MEMORY[0x1E69E8498], MEMORY[0x1E69E84A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5598, &qword_1DA95B230);
  sub_1DA84AA04();
  sub_1DA9411D4();
  *(v1 + 32) = sub_1DA9405C4();

  sub_1DA8423C4();
  swift_beginAccess();
  if (!notify_is_valid_token(*(v1 + 40)))
  {
    v9 = v20;
    v8 = v21;
    (*(v20 + 104))(v4, *MEMORY[0x1E69E7F90], v21);
    v10 = sub_1DA941014();
    (*(v9 + 8))(v4, v8);
    v11 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1DA84AA68;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA857960;
    aBlock[3] = &block_descriptor_3;
    v12 = _Block_copy(aBlock);

    v13 = sub_1DA940A94();
    swift_beginAccess();
    v14 = notify_register_dispatch((v13 + 32), (v1 + 40), v10, v12);
    swift_endAccess();
    _Block_release(v12);

    if (v14)
    {
      if (qword_1EE110DD0 != -1)
      {
        swift_once();
      }

      v15 = sub_1DA9405A4();
      __swift_project_value_buffer(v15, qword_1EE110DE0);
      v16 = sub_1DA940584();
      v17 = sub_1DA940F14();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67109120;
        *(v18 + 4) = v14;
        _os_log_impl(&dword_1DA7A9000, v16, v17, "notify_register_dispatch failed: %u", v18, 8u);
        MEMORY[0x1E12739F0](v18, -1, -1);
      }
    }
  }
}

double sub_1DA842250(uint64_t a1, uint64_t a2)
{
  if (qword_1EE110DD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1EE110DE0);
  v3 = sub_1DA940584();
  v4 = sub_1DA940F34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1DA7AE6E8(0xD00000000000002ALL, 0x80000001DA951D30, v8);
    _os_log_impl(&dword_1DA7A9000, v3, v4, "Received: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E12739F0](v6, -1, -1);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DA841C00();
  }

  return result;
}

void sub_1DA8423C4()
{
  v1 = v0;
  v2 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 32);
  if (v8)
  {
    swift_allocObject();
    swift_weakInit();

    sub_1DA940604();

    sub_1DA940644();
    swift_storeEnumTagMultiPayload();
    v9 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_uuid;
    v10 = *(v5 + 24);
    v11 = sub_1DA93FB24();
    (*(*(v11 - 8) + 16))(&v7[v10], v1 + v9, v11);
    sub_1DA849F78(v4, v7, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
    sub_1DA93FB14();
    sub_1DA849FE0(v4, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
    sub_1DA84A9BC(&qword_1EE113F68, type metadata accessor for UserNotificationsVendorClientTransaction, &unk_1DA963390);
    sub_1DA940624();
    sub_1DA849FE0(v7, type metadata accessor for UserNotificationsVendorClientTransaction);
    if (qword_1EE110DD0 != -1)
    {
      swift_once();
    }

    v16 = sub_1DA9405A4();
    __swift_project_value_buffer(v16, qword_1EE110DE0);

    v17 = sub_1DA940584();
    v18 = sub_1DA940F34();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v8;
      v29[0] = v20;
      *v19 = 136315394;
      sub_1DA940674();

      v21 = sub_1DA940A74();
      v23 = sub_1DA7AE6E8(v21, v22, v29);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v28 = v1;
      type metadata accessor for UserNotificationsVendorClient(0);

      v24 = sub_1DA940A74();
      v26 = sub_1DA7AE6E8(v24, v25, v29);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_1DA7A9000, v17, v18, "configureSession() session: %s for %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v20, -1, -1);
      MEMORY[0x1E12739F0](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EE110DD0 != -1)
    {
      swift_once();
    }

    v12 = sub_1DA9405A4();
    __swift_project_value_buffer(v12, qword_1EE110DE0);
    v27 = sub_1DA940584();
    v13 = sub_1DA940F14();
    if (os_log_type_enabled(v27, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DA7A9000, v27, v13, "configureSession(): No XPC listener found", v14, 2u);
      MEMORY[0x1E12739F0](v14, -1, -1);
    }

    v15 = v27;
  }
}

double sub_1DA842A08@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1DA9407A4();
  v4 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  v5 = type metadata accessor for UserNotificationsVendorTransaction(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DA84A9BC(&unk_1EE1141D0, type metadata accessor for UserNotificationsVendorTransaction, &protocol conformance descriptor for UserNotificationsVendorTransaction);
    sub_1DA940794();
    sub_1DA842E20(v7);

    sub_1DA849FE0(v7, type metadata accessor for UserNotificationsVendorTransaction);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1DA842E20(NSObject *a1)
{
  v274 = a1;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD54D0, &qword_1DA95B158);
  isa = v270[-1].isa;
  MEMORY[0x1EEE9AC00](v270);
  v269 = &v253 - v1;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5960, &qword_1DA95B160);
  v266 = *(v279 - 1);
  MEMORY[0x1EEE9AC00](v279);
  v277 = &v253 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54E0, &qword_1DA95B168);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v265 = &v253 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v264 = (&v253 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54E8, &qword_1DA95B170);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v263 = (&v253 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v262 = &v253 - v10;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54F0, &qword_1DA95B178);
  v261 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272);
  v271 = &v253 - v11;
  v257 = type metadata accessor for UserNotificationsVendorTransaction(0);
  v12 = MEMORY[0x1EEE9AC00](v257);
  v259 = &v253 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v255 = &v253 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v256 = &v253 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v280 = &v253 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v254 = &v253 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = (&v253 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v253 = &v253 - v25;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
  v267 = *(v268 - 8);
  v26 = MEMORY[0x1EEE9AC00](v268);
  v278 = &v253 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = (&v253 - v29);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v253 - v31;
  v33 = sub_1DA93FB24();
  v276 = *(v33 - 8);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v275 = &v253 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v253 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v253 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = (&v253 - v43);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v253 - v45;
  v47 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = (&v253 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DA849F78(v274, v49, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v273 = v24;
  if (EnumCaseMultiPayload)
  {
    v280 = v33;
    if (EnumCaseMultiPayload == 1)
    {
      v51 = v49[1];
      v283 = *v49;
      v284 = v51;
      v52 = v49[3];
      v285 = v49[2];
      v286 = v52;
      v53 = *(v258 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      *(&v253 - 2) = sub_1DA849F58;
      *(&v253 - 1) = v54;
      os_unfair_lock_lock(v53 + 4);
      sub_1DA84AA70(v282);
      os_unfair_lock_unlock(v53 + 4);
      v272 = *&v282[0];
      if (qword_1EE110DD0 != -1)
      {
        goto LABEL_75;
      }

      while (1)
      {
        v55 = sub_1DA9405A4();
        __swift_project_value_buffer(v55, qword_1EE110DE0);
        v56 = v259;
        sub_1DA849F78(v274, v259, type metadata accessor for UserNotificationsVendorTransaction);

        v57 = sub_1DA940584();
        v58 = sub_1DA940F34();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *&v282[0] = v60;
          *v59 = 136315394;
          sub_1DA849F78(v56, v273, type metadata accessor for UserNotificationsVendorTransaction);
          v61 = sub_1DA940A74();
          v63 = v62;
          sub_1DA849FE0(v56, type metadata accessor for UserNotificationsVendorTransaction);
          v64 = sub_1DA7AE6E8(v61, v63, v282);

          *(v59 + 4) = v64;
          *(v59 + 12) = 2080;
          sub_1DA84A9BC(&qword_1EE115A40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
          v65 = sub_1DA940984();
          v67 = sub_1DA7AE6E8(v65, v66, v282);

          *(v59 + 14) = v67;
          _os_log_impl(&dword_1DA7A9000, v57, v58, "Received action %s sending to: %s", v59, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v60, -1, -1);
          MEMORY[0x1E12739F0](v59, -1, -1);
        }

        else
        {

          sub_1DA849FE0(v56, type metadata accessor for UserNotificationsVendorTransaction);
        }

        v139 = v265;
        v140 = v264;
        v141 = 0;
        v142 = *(v272 + 64);
        v262 = (v272 + 64);
        v143 = 1 << *(v272 + 32);
        v144 = -1;
        if (v143 < 64)
        {
          v144 = ~(-1 << v143);
        }

        v145 = v144 & v142;
        v261 = (v143 + 63) >> 6;
        v271 = (v276 + 16);
        v268 = &v266[2];
        v267 = v276 + 32;
        v146 = v266 + 4;
        v278 = isa + 8;
        v274 = v266 + 1;
        v273 = (v276 + 8);
        v263 = v266 + 4;
        if ((v144 & v142) != 0)
        {
          break;
        }

LABEL_28:
        if (v261 <= v141 + 1)
        {
          v148 = v141 + 1;
        }

        else
        {
          v148 = v261;
        }

        v149 = v148 - 1;
        while (1)
        {
          v147 = v141 + 1;
          if (__OFADD__(v141, 1))
          {
            break;
          }

          if (v147 >= v261)
          {
            v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54F8, &unk_1DA95B180);
            (*(*(v168 - 8) + 56))(v139, 1, 1, v168);
            v145 = 0;
            goto LABEL_36;
          }

          v145 = *&v262[8 * v147];
          ++v141;
          if (v145)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        swift_once();
      }

      while (1)
      {
        v147 = v141;
LABEL_35:
        v150 = __clz(__rbit64(v145));
        v145 &= v145 - 1;
        v151 = v150 | (v147 << 6);
        v152 = v272;
        v153 = v276;
        v154 = v275;
        v155 = v280;
        (*(v276 + 16))(v275, *(v272 + 48) + *(v276 + 72) * v151, v280);
        v156 = v266;
        v157 = v277;
        v158 = v279;
        (v266[2].isa)(v277, *(v152 + 56) + v266[9].isa * v151, v279);
        v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54F8, &unk_1DA95B180);
        v160 = *(v159 + 48);
        v161 = *(v153 + 32);
        v139 = v265;
        v161(v265, v154, v155);
        v162 = v156[4].isa;
        v146 = v263;
        v162(v139 + v160, v157, v158);
        (*(*(v159 - 8) + 56))(v139, 0, 1, v159);
        v149 = v147;
        v140 = v264;
LABEL_36:
        sub_1DA84A0CC(v139, v140, &qword_1ECBD54E0, &qword_1DA95B168);
        v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54F8, &unk_1DA95B180);
        if ((*(*(v163 - 8) + 48))(v140, 1, v163) == 1)
        {
          break;
        }

        v164 = v140 + *(v163 + 48);
        v165 = v277;
        v166 = v279;
        (v146->isa)(v277, v164, v279);
        v282[0] = v283;
        v282[1] = v284;
        v282[2] = v285;
        v282[3] = v286;
        sub_1DA848A24(&v283, v281);
        v167 = v269;
        sub_1DA940D54();
        (*v278)(v167, v270);
        (v274->isa)(v165, v166);
        (*v273)(v140, v280);
        v141 = v149;
        if (!v145)
        {
          goto LABEL_28;
        }
      }

      return sub_1DA84A040(&v283);
    }

    else
    {
      v96 = *(v258 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      *(&v253 - 2) = sub_1DA84A094;
      *(&v253 - 1) = v97;
      os_unfair_lock_lock(v96 + 4);
      sub_1DA84A0B4(&v283);
      os_unfair_lock_unlock(v96 + 4);
      v98 = v283;
      if (qword_1EE110DD0 != -1)
      {
        swift_once();
      }

      v99 = sub_1DA9405A4();
      v100 = __swift_project_value_buffer(v99, qword_1EE110DE0);
      v101 = v256;
      sub_1DA849F78(v274, v256, type metadata accessor for UserNotificationsVendorTransaction);

      v254 = v100;
      v102 = sub_1DA940584();
      v103 = sub_1DA940F34();

      v104 = os_log_type_enabled(v102, v103);
      v105 = v276;
      v269 = v98;
      if (v104)
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        *&v283 = v107;
        *v106 = 136315394;
        sub_1DA849F78(v101, v273, type metadata accessor for UserNotificationsVendorTransaction);
        v108 = sub_1DA940A74();
        v110 = v109;
        sub_1DA849FE0(v101, type metadata accessor for UserNotificationsVendorTransaction);
        v111 = sub_1DA7AE6E8(v108, v110, &v283);

        *(v106 + 4) = v111;
        *(v106 + 12) = 2080;
        sub_1DA84A9BC(&qword_1EE115A40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v112 = v268;
        v113 = sub_1DA940984();
        v115 = sub_1DA7AE6E8(v113, v114, &v283);
        v98 = v269;

        *(v106 + 14) = v115;
        _os_log_impl(&dword_1DA7A9000, v102, v103, "Received update %s sending to: %s", v106, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v107, -1, -1);
        MEMORY[0x1E12739F0](v106, -1, -1);
      }

      else
      {

        sub_1DA849FE0(v101, type metadata accessor for UserNotificationsVendorTransaction);
        v112 = v268;
      }

      v169 = v263;
      v170 = v262;
      v171 = 0;
      v172 = *(v98 + 8);
      isa = (v98 + 64);
      v173 = 1 << v98[32];
      v174 = -1;
      if (v173 < 64)
      {
        v174 = ~(-1 << v173);
      }

      v175 = v174 & v172;
      v259 = (v173 + 63) >> 6;
      v266 = v105 + 2;
      v265 = (v267 + 16);
      v264 = v105 + 4;
      v176 = (v267 + 32);
      v279 = (v261 + 8);
      v277 = (v267 + 8);
      v270 = v105 + 1;
      v261 = v267 + 32;
      v177 = &qword_1ECBD5408;
      if ((v174 & v172) == 0)
      {
        goto LABEL_46;
      }

LABEL_45:
      v178 = v171;
LABEL_53:
      v181 = __clz(__rbit64(v175));
      v175 &= v175 - 1;
      v182 = v181 | (v178 << 6);
      v183 = v269;
      v184 = v276;
      v185 = v275;
      v186 = v280;
      (*(v276 + 16))(v275, *(v269 + 6) + *(v276 + 72) * v182, v280);
      v187 = v267;
      v188 = *(v183 + 7) + *(v267 + 72) * v182;
      v189 = v278;
      v112 = v268;
      (*(v267 + 16))(v278, v188, v268);
      v190 = __swift_instantiateConcreteTypeFromMangledNameV2(v177, &qword_1DA95AFC8);
      v191 = *(v190 + 48);
      v192 = *(v184 + 32);
      v193 = v263;
      v192(v263, v185, v186);
      v194 = *(v187 + 32);
      v195 = v189;
      v169 = v193;
      v176 = v261;
      v194(&v193[v191], v195, v112);
      (*(*(v190 - 8) + 56))(v193, 0, 1, v190);
      v180 = v178;
      v196 = &qword_1ECBD5408;
      v197 = v273;
      v170 = v262;
      while (1)
      {
        sub_1DA84A0CC(v169, v170, &qword_1ECBD54E8, &qword_1DA95B170);
        v198 = __swift_instantiateConcreteTypeFromMangledNameV2(v196, &qword_1DA95AFC8);
        if ((*(*(v198 - 8) + 48))(v170, 1, v198) == 1)
        {
          break;
        }

        v199 = v170 + *(v198 + 48);
        v200 = v278;
        (*v176)(v278, v199, v112);
        sub_1DA849F78(v274, v197, type metadata accessor for UserNotificationsVendorTransaction);
        v201 = v271;
        sub_1DA940D54();
        (*v279)(v201, v272);
        (*v277)(v200, v112);
        (v270->isa)(v170, v280);
        v171 = v180;
        v177 = v196;
        if (v175)
        {
          goto LABEL_45;
        }

LABEL_46:
        if (v259 <= v171 + 1)
        {
          v179 = v171 + 1;
        }

        else
        {
          v179 = v259;
        }

        v180 = v179 - 1;
        while (1)
        {
          v178 = v171 + 1;
          if (__OFADD__(v171, 1))
          {
            goto LABEL_74;
          }

          if (v178 >= v259)
          {
            break;
          }

          v175 = *(isa + v178);
          ++v171;
          if (v175)
          {
            goto LABEL_53;
          }
        }

        v196 = v177;
        v202 = __swift_instantiateConcreteTypeFromMangledNameV2(v177, &qword_1DA95AFC8);
        (*(*(v202 - 8) + 56))(v169, 1, 1, v202);
        v175 = 0;
        v197 = v273;
      }

      v203 = v255;
      sub_1DA849F78(v274, v255, type metadata accessor for UserNotificationsVendorTransaction);
      v204 = v258;

      v205 = sub_1DA940584();
      v206 = sub_1DA940F34();

      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        v281[0] = v208;
        *v207 = 136315394;
        sub_1DA849F78(v203, v197, type metadata accessor for UserNotificationsVendorTransaction);
        v209 = sub_1DA940A74();
        v211 = v210;
        sub_1DA849FE0(v203, type metadata accessor for UserNotificationsVendorTransaction);
        v212 = sub_1DA7AE6E8(v209, v211, v281);

        *(v207 + 4) = v212;
        *(v207 + 12) = 2080;
        v213 = v204 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v215 = *(v213 + 8);
        *&v283 = Strong;
        *(&v283 + 1) = v215;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5420, &unk_1DA95AFD8);
        v216 = sub_1DA940A74();
        v218 = sub_1DA7AE6E8(v216, v217, v281);

        *(v207 + 14) = v218;
        _os_log_impl(&dword_1DA7A9000, v205, v206, "Received update %s sending to delegate: %s", v207, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v208, -1, -1);
        MEMORY[0x1E12739F0](v207, -1, -1);
      }

      else
      {

        sub_1DA849FE0(v203, type metadata accessor for UserNotificationsVendorTransaction);
      }

      v219 = v204 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v220 = *(v219 + 8);
        ObjectType = swift_getObjectType();
        (*(v220 + 8))(v274, ObjectType, v220);
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v275 = v38;
    v266 = v44;
    v269 = v41;
    v270 = v30;
    v279 = v32;
    v68 = v276;
    v69 = (*(v276 + 32))(v46, v49, v33);
    v70 = *(v258 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
    MEMORY[0x1EEE9AC00](v69);
    *(&v253 - 2) = sub_1DA84A134;
    *(&v253 - 1) = v71;
    os_unfair_lock_lock(v70 + 4);
    sub_1DA84AA70(&v283);
    os_unfair_lock_unlock(v70 + 4);
    v72 = v283;
    v73 = v46;
    if (*(v283 + 16) && (v74 = sub_1DA85A5DC(v46), (v75 & 1) != 0))
    {
      v277 = v46;
      v76 = *(v72 + 56) + *(v267 + 72) * v74;
      v77 = v279;
      v275 = *(v267 + 16);
      (v275)(v279, v76, v268);

      v78 = (&v274->isa + *(v257 + 20));
      v79 = v270;
      if (!*v78 && v78[1] == 0xE000000000000000 || (sub_1DA941684() & 1) != 0)
      {
        if (qword_1EE110DD0 != -1)
        {
          swift_once();
        }

        v80 = sub_1DA9405A4();
        __swift_project_value_buffer(v80, qword_1EE110DE0);
        v81 = v253;
        sub_1DA849F78(v274, v253, type metadata accessor for UserNotificationsVendorTransaction);
        v82 = v266;
        (*(v68 + 16))(v266, v277, v33);
        v83 = sub_1DA940584();
        v84 = sub_1DA940F34();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = v81;
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          *&v283 = v87;
          *v86 = 136315394;
          sub_1DA849F78(v85, v273, type metadata accessor for UserNotificationsVendorTransaction);
          v88 = sub_1DA940A74();
          v90 = v89;
          sub_1DA849FE0(v85, type metadata accessor for UserNotificationsVendorTransaction);
          v91 = sub_1DA7AE6E8(v88, v90, &v283);

          *(v86 + 4) = v91;
          *(v86 + 12) = 2080;
          sub_1DA84A9BC(&qword_1EE114C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v92 = sub_1DA941614();
          v94 = v93;
          (*(v276 + 8))(v82, v33);
          v95 = sub_1DA7AE6E8(v92, v94, &v283);
          v68 = v276;

          *(v86 + 14) = v95;
          _os_log_impl(&dword_1DA7A9000, v83, v84, "COMPLETE: Received initial %s sending to: %s", v86, 0x16u);
          swift_arrayDestroy();
          v79 = v270;
          MEMORY[0x1E12739F0](v87, -1, -1);
          MEMORY[0x1E12739F0](v86, -1, -1);
        }

        else
        {

          (*(v68 + 8))(v82, v33);
          sub_1DA849FE0(v81, type metadata accessor for UserNotificationsVendorTransaction);
        }

        v77 = v279;
        sub_1DA940D64();
      }

      v223 = v254;
      v224 = v269;
      if (qword_1EE110DD0 != -1)
      {
        swift_once();
      }

      v225 = sub_1DA9405A4();
      __swift_project_value_buffer(v225, qword_1EE110DE0);
      sub_1DA849F78(v274, v223, type metadata accessor for UserNotificationsVendorTransaction);
      (*(v68 + 16))(v224, v277, v33);
      v226 = v268;
      (v275)(v79, v77, v268);
      v227 = sub_1DA940584();
      v228 = sub_1DA940F34();
      v229 = os_log_type_enabled(v227, v228);
      v280 = v33;
      if (v229)
      {
        v230 = swift_slowAlloc();
        v276 = swift_slowAlloc();
        *&v283 = v276;
        *v230 = 136315650;
        v270 = v227;
        sub_1DA849F78(v223, v273, type metadata accessor for UserNotificationsVendorTransaction);
        v231 = sub_1DA940A74();
        LODWORD(v266) = v228;
        v232 = v68;
        v234 = v233;
        sub_1DA849FE0(v223, type metadata accessor for UserNotificationsVendorTransaction);
        v235 = sub_1DA7AE6E8(v231, v234, &v283);

        *(v230 + 4) = v235;
        *(v230 + 12) = 2080;
        sub_1DA84A9BC(&qword_1EE114C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v236 = v280;
        v237 = sub_1DA941614();
        v239 = v238;
        v265 = *(v232 + 8);
        (v265)(v224, v236);
        v240 = v273;
        v241 = sub_1DA7AE6E8(v237, v239, &v283);

        *(v230 + 14) = v241;
        *(v230 + 22) = 2080;
        (v275)(v278, v79, v226);
        v242 = sub_1DA940A74();
        v244 = v243;
        v245 = *(v267 + 8);
        v245(v79, v226);
        v246 = sub_1DA7AE6E8(v242, v244, &v283);

        *(v230 + 24) = v246;
        v247 = v270;
        _os_log_impl(&dword_1DA7A9000, v270, v266, "Received initial %s sending to: %s with: %s", v230, 0x20u);
        v248 = v276;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v248, -1, -1);
        v249 = v230;
        v250 = v265;
        MEMORY[0x1E12739F0](v249, -1, -1);
      }

      else
      {

        v245 = *(v267 + 8);
        v245(v79, v226);
        v250 = *(v68 + 8);
        v250(v224, v280);
        sub_1DA849FE0(v223, type metadata accessor for UserNotificationsVendorTransaction);
        v240 = v273;
      }

      sub_1DA849F78(v274, v240, type metadata accessor for UserNotificationsVendorTransaction);
      v251 = v271;
      v252 = v279;
      sub_1DA940D54();
      (*(v261 + 8))(v251, v272);
      v245(v252, v226);
      return (v250)(v277, v280);
    }

    else
    {
      if (qword_1EE110DD0 != -1)
      {
        swift_once();
      }

      v116 = sub_1DA9405A4();
      __swift_project_value_buffer(v116, qword_1EE110DE0);
      v117 = v280;
      sub_1DA849F78(v274, v280, type metadata accessor for UserNotificationsVendorTransaction);
      v118 = v275;
      (*(v68 + 16))(v275, v73, v33);

      v119 = sub_1DA940584();
      v120 = sub_1DA940F14();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v279 = swift_slowAlloc();
        *&v283 = v279;
        *v121 = 136315650;
        LODWORD(v278) = v120;
        sub_1DA849F78(v117, v273, type metadata accessor for UserNotificationsVendorTransaction);
        v122 = sub_1DA940A74();
        v277 = v73;
        v124 = v123;
        sub_1DA849FE0(v117, type metadata accessor for UserNotificationsVendorTransaction);
        v125 = sub_1DA7AE6E8(v122, v124, &v283);

        *(v121 + 4) = v125;
        *(v121 + 12) = 2080;
        v126 = MEMORY[0x1E69695A8];
        sub_1DA84A9BC(&qword_1EE114C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v127 = sub_1DA941614();
        v128 = v33;
        v130 = v129;
        v131 = *(v68 + 8);
        v131(v118, v128);
        v132 = sub_1DA7AE6E8(v127, v130, &v283);

        *(v121 + 14) = v132;
        *(v121 + 22) = 2080;
        sub_1DA84A9BC(&qword_1EE115A40, v126, MEMORY[0x1E69695B8]);
        v133 = sub_1DA940984();
        v135 = v134;

        v136 = sub_1DA7AE6E8(v133, v135, &v283);

        *(v121 + 24) = v136;
        _os_log_impl(&dword_1DA7A9000, v119, v278, "Received initial %s client: %s not found in: %s", v121, 0x20u);
        v137 = v279;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v137, -1, -1);
        MEMORY[0x1E12739F0](v121, -1, -1);

        return (v131)(v277, v128);
      }

      else
      {

        v222 = *(v68 + 8);
        v222(v118, v33);
        sub_1DA849FE0(v117, type metadata accessor for UserNotificationsVendorTransaction);
        return (v222)(v73, v33);
      }
    }
  }

  return result;
}