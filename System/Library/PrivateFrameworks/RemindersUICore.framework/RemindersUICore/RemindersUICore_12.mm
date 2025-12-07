void TTRRemindersListInteractor.indentUncommittedReminder(with:changes:paramsForREMManualOrdering:)(void *a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v79 = *MEMORY[0x277D85DE8];
  v6 = a3[1];
  v75 = *a3;
  v76 = v6;
  v7 = a3[3];
  v77 = a3[2];
  v78 = v7;
  v8 = MEMORY[0x277D84F90];
  *&v74[0] = MEMORY[0x277D84F90];
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = (a2 + 32);
    v11 = *(a2 + 16);
    do
    {
      v12 = *v10;
      MEMORY[0x223D42D80]();
      if (*((*&v74[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v74[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v10 += 2;
      --v11;
    }

    while (v11);
    v13 = *&v74[0];
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v14 = sub_21D19ED08(v13);

  *&v74[0] = v8;
  if (v9)
  {
    v15 = (a2 + 40);
    v16 = v9;
    do
    {
      v17 = *v15;
      MEMORY[0x223D42D80]();
      if (*((*&v74[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v74[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v15 += 2;
      --v16;
    }

    while (v16);
    v8 = *&v74[0];
  }

  v18 = sub_21D198698(v14);

  *&v74[0] = v18;
  sub_21D562328(v8);
  v19 = *(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v20 = sub_21DBFA5DC();

  *&v74[0] = 0;
  v21 = [v19 fetchRemindersIncludingUnsupportedWithObjectIDs:v20 error:v74];

  v22 = *&v74[0];
  if (v21)
  {
    sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
    sub_21D19F2B8(&qword_280D17870, &qword_280D17880, 0x277D44700);
    v23 = sub_21DBF9E6C();
    v24 = v22;

    v25 = [a1 saveRequest];
    v26 = v25;
    if (!v9)
    {
      v69 = MEMORY[0x277D84F90];
      goto LABEL_52;
    }

    v27 = 0;
    v28 = a2 + 40;
    v29 = v23 & 0xC000000000000001;
    v69 = MEMORY[0x277D84F90];
    v30 = v23;
    v71 = v9;
    v72 = v28;
    v68 = v25;
    while (1)
    {
      v31 = (v28 + 16 * v27);
      v32 = v27;
      while (1)
      {
        if (v32 >= v9)
        {
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v27 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_55;
        }

        v34 = *(v31 - 1);
        v33 = *v31;
        if (v29)
        {
          break;
        }

        v45 = *(v30 + 16);
        v46 = v34;
        v47 = v33;
        if (v45)
        {
          v48 = sub_21D17E07C(v46);
          if (v49)
          {
            v73 = v32 + 1;
            v37 = *(*(v30 + 56) + 8 * v48);
            v28 = v72;
            if (!v37)
            {
              goto LABEL_34;
            }

            goto LABEL_26;
          }
        }

        v23 = v34;
LABEL_19:
        v28 = v72;
LABEL_20:

        ++v32;
        v31 += 2;
        if (v27 == v9)
        {
          v26 = v68;
          goto LABEL_52;
        }
      }

      v35 = v34;
      v36 = v33;
      if (!sub_21DBFC2CC())
      {
        v23 = v34;
        goto LABEL_20;
      }

      v73 = v32 + 1;
      swift_dynamicCast();
      v37 = *&v74[0];
      if (!*&v74[0])
      {
LABEL_34:
        v23 = v34;
        v9 = v71;
        v27 = v73;
        goto LABEL_20;
      }

LABEL_26:
      v38 = v29;
      v39 = v30;
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v40 = [a1 objectID];
      v41 = sub_21DBFB63C();

      if (v41)
      {
        v67 = a1;

        v26 = v68;
        v30 = v39;
        v9 = v71;
        v29 = v38;
        v23 = v37;
        v27 = v73;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_41;
        }

        goto LABEL_46;
      }

      if (v38)
      {
        break;
      }

      v29 = 0;
      v30 = v39;
      v50 = *(v39 + 16);
      v9 = v71;
      v23 = v37;
      v27 = v73;
      if (!v50)
      {
        goto LABEL_39;
      }

      v51 = sub_21D17E07C(v33);
      if ((v52 & 1) == 0)
      {
        goto LABEL_39;
      }

      v44 = *(*(v30 + 56) + 8 * v51);
      if (!v44)
      {
        goto LABEL_39;
      }

LABEL_45:
      v26 = v68;
      v56 = v44;
      v67 = [v68 updateReminder_];

      v28 = v72;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_41;
      }

LABEL_46:
      v69 = sub_21D211328(0, v69[2] + 1, 1, v69);
LABEL_41:
      v54 = v69[2];
      v53 = v69[3];
      if (v54 >= v53 >> 1)
      {
        v69 = sub_21D211328((v53 > 1), v54 + 1, 1, v69);
      }

      v69[2] = v54 + 1;
      v55 = &v69[2 * v54];
      v55[4] = v23;
      v55[5] = v67;
      if (v27 == v9)
      {
LABEL_52:

        v74[0] = v75;
        v74[1] = v76;
        v74[2] = v77;
        v74[3] = v78;
        sub_21D1E8E68(v69, v26, 0, v74);

        return;
      }
    }

    v42 = v33;
    v43 = sub_21DBFC2CC();

    v29 = v38;
    v30 = v39;
    v9 = v71;
    v23 = v37;
    v27 = v73;
    if (v43)
    {
      swift_dynamicCast();
      v44 = *&v74[0];
      if (*&v74[0])
      {
        goto LABEL_45;
      }
    }

LABEL_39:

    v33 = v34;
    goto LABEL_19;
  }

  v57 = *&v74[0];
  v23 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_280D17ED0 != -1)
  {
LABEL_56:
    swift_once();
  }

  v58 = sub_21DBF84BC();
  __swift_project_value_buffer(v58, qword_280D0F228);
  v59 = v23;
  v60 = sub_21DBF84AC();
  v61 = sub_21DBFAEBC();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v74[0] = v63;
    *v62 = 136315138;
    swift_getErrorValue();
    v64 = sub_21DBFC75C();
    v66 = sub_21D0CDFB4(v64, v65, v74);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_21D0C9000, v60, v61, "indentUncommittedReminder error: Failed to fetch reminders {error: %s}", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x223D46520](v63, -1, -1);
    MEMORY[0x223D46520](v62, -1, -1);
  }

  else
  {
  }
}

void TTRRemindersListInteractor.makeTask(_:paramsForREMManualOrdering:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v125 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v121 = *a2;
  v6 = a2[2];
  v7 = a2[3];
  v122 = v5;
  v123 = v6;
  v124 = v7;
  *&v120[0] = MEMORY[0x277D84F90];
  v8 = *(a1 + 16);
  v114 = v8;
  if (v8)
  {
    v9 = (a1 + 56);
    do
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *(v9 - 3);
      v14 = v10;
      v15 = v12;
      v16 = v13;
      v17 = sub_21DBF8E0C();
      MEMORY[0x223D42D80](v17);
      if (*((*&v120[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v120[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v18 = v16;
      v19 = v14;

      MEMORY[0x223D42D80]();
      if (*((*&v120[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v120[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      v9 += 4;
      sub_21DBFA6CC();
      v20 = v18;
      v21 = v19;
      sub_21DBF8E0C();

      sub_21D562328(v11);

      --v8;
    }

    while (v8);
    v8 = v114;
  }

  v22 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v23 = sub_21DBFA5DC();

  *&v120[0] = 0;
  v24 = [v22 fetchRemindersWithObjectIDs:v23 error:v120];

  v25 = *&v120[0];
  if (v24)
  {
    sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
    sub_21D19F2B8(&qword_280D17870, &qword_280D17880, 0x277D44700);
    v26 = sub_21DBF9E6C();
    v27 = v25;

    v28 = sub_21DBF8E0C();
    sub_21D1E1A6C(v28);
    v30._rawValue = v29;
    v115 = v26;

    v31 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(v30, 1);
    [v31 setNotifyChangeDelegate_];

    if (!v8)
    {
      v112 = MEMORY[0x277D84F90];
      goto LABEL_76;
    }

    v32 = 0;
    v116 = v26 & 0xC000000000000001;
    v33 = a1 + 56;
    v112 = MEMORY[0x277D84F90];
    v111 = v31;
    v108 = a1 + 56;
    while (1)
    {
      v34 = (v33 + 32 * v32);
      v35 = v32;
      while (1)
      {
        if (v35 >= v8)
        {
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_79;
        }

        v36 = *(v34 - 3);
        v38 = *(v34 - 2);
        v39 = *v34;
        v117 = *v34;
        v118 = *(v34 - 1);
        if (v116)
        {
          v40 = v39;
          v41 = v36;
          v42 = v38;
          sub_21DBF8E0C();
          v43 = sub_21DBFC2CC();

          if (!v43)
          {
            goto LABEL_34;
          }

          v119 = v43;
          swift_dynamicCast();
          v44 = *&v120[0];
          if (!*&v120[0])
          {
            goto LABEL_34;
          }

          v45 = v42;
          v46 = sub_21DBFC2CC();

          if (v46)
          {
            v119 = v46;
            swift_dynamicCast();
            v47 = *&v120[0];
            if (*&v120[0])
            {
              break;
            }
          }

          goto LABEL_22;
        }

        v55 = *(v115 + 16);
        v56 = v39;
        v57 = v36;
        v58 = v38;
        v37 = v35 + 1;
        sub_21DBF8E0C();
        if (!v55 || (v59 = sub_21D17E07C(v57), (v60 & 1) == 0) || (v61 = *(*(v115 + 56) + 8 * v59), v62 = v61, !v61))
        {
LABEL_34:
          if (qword_280D17ED0 != -1)
          {
            swift_once();
          }

          v65 = sub_21DBF84BC();
          __swift_project_value_buffer(v65, qword_280D0F228);
          v50 = v36;
          v44 = sub_21DBF84AC();
          v66 = sub_21DBFAEBC();

          if (os_log_type_enabled(v44, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            *v67 = 138412290;
            *(v67 + 4) = v50;
            *v68 = v50;
            v50 = v50;
            _os_log_impl(&dword_21D0C9000, v44, v66, "makeTask error: target reminder not fetched {objectID: %@}", v67, 0xCu);
            sub_21D0CF7E0(v68, &unk_27CE60070, &unk_21DC09550);
            v69 = v68;
            v8 = v114;
            MEMORY[0x223D46520](v69, -1, -1);
            MEMORY[0x223D46520](v67, -1, -1);
          }

          v36 = v38;
          goto LABEL_14;
        }

        v44 = v62;
        if (*(v115 + 16))
        {
          v63 = sub_21D17E07C(v58);
          if (v64)
          {
            v47 = *(*(v115 + 56) + 8 * v63);
            if (v47)
            {
              break;
            }
          }
        }

LABEL_22:
        if (qword_280D17ED0 != -1)
        {
          swift_once();
        }

        v48 = sub_21DBF84BC();
        __swift_project_value_buffer(v48, qword_280D0F228);
        v49 = v38;
        v50 = sub_21DBF84AC();
        v51 = sub_21DBFAEBC();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v52 = 138412290;
          *(v52 + 4) = v49;
          *v53 = v49;
          v49 = v49;
          _os_log_impl(&dword_21D0C9000, v50, v51, "makeTask error: siblingBefore not fetched {objectID: %@}", v52, 0xCu);
          sub_21D0CF7E0(v53, &unk_27CE60070, &unk_21DC09550);
          v54 = v53;
          v8 = v114;
          MEMORY[0x223D46520](v54, -1, -1);
          MEMORY[0x223D46520](v52, -1, -1);
        }

LABEL_14:
        ++v35;
        v34 += 4;
        if (v37 == v8)
        {
          v31 = v111;
          goto LABEL_76;
        }
      }

      v104 = v47;
      v106 = v37;
      *&v120[0] = MEMORY[0x277D84F90];
      if (v118 >> 62)
      {
        v70 = v118 & 0xFFFFFFFFFFFFFF8;
        v71 = sub_21DBFBD7C();
        if (!v71)
        {
          goto LABEL_64;
        }

LABEL_40:
        v72 = 0;
        v34 = (v118 & 0xC000000000000001);
        v107 = MEMORY[0x277D84F90];
        v109 = v70;
        v110 = v71;
LABEL_41:
        v73 = v72;
        while (1)
        {
          if (v34)
          {
            v74 = MEMORY[0x223D44740](v73, v118);
          }

          else
          {
            if (v73 >= *(v70 + 16))
            {
              goto LABEL_81;
            }

            v74 = *(v118 + 8 * v73 + 32);
          }

          v75 = v74;
          v72 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            break;
          }

          v113 = v73;
          if (v116)
          {
            v76 = v74;
            v77 = sub_21DBFC2CC();

            if (v77)
            {
              swift_dynamicCast();
              if (v119)
              {
                goto LABEL_59;
              }
            }
          }

          else if (*(v115 + 16))
          {
            v78 = sub_21D17E07C(v74);
            if (v79)
            {
              if (*(*(v115 + 56) + 8 * v78))
              {
LABEL_59:

                MEMORY[0x223D42D80]();
                if (*((*&v120[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v120[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_21DBFA63C();
                }

                sub_21DBFA6CC();
                v107 = *&v120[0];
                v8 = v114;
                if (v72 != v71)
                {
                  goto LABEL_41;
                }

                goto LABEL_65;
              }
            }
          }

          if (qword_280D17ED0 != -1)
          {
            swift_once();
          }

          v80 = sub_21DBF84BC();
          __swift_project_value_buffer(v80, qword_280D0F228);
          v81 = v75;
          v82 = sub_21DBF84AC();
          v83 = sub_21DBFAEBC();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = v34;
            v86 = swift_slowAlloc();
            *v84 = 138412290;
            *(v84 + 4) = v81;
            *v86 = v81;
            v87 = v81;
            _os_log_impl(&dword_21D0C9000, v82, v83, "makeTask error: subtask not fetched {objectID: %@}", v84, 0xCu);
            sub_21D0CF7E0(v86, &unk_27CE60070, &unk_21DC09550);
            v88 = v86;
            v34 = v85;
            MEMORY[0x223D46520](v88, -1, -1);
            v89 = v84;
            v70 = v109;
            v71 = v110;
            MEMORY[0x223D46520](v89, -1, -1);
          }

          v73 = v113 + 1;
          v8 = v114;
          if (v72 == v71)
          {
            goto LABEL_65;
          }
        }

LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v70 = v118 & 0xFFFFFFFFFFFFFF8;
      v71 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v71)
      {
        goto LABEL_40;
      }

LABEL_64:
      v107 = MEMORY[0x277D84F90];
LABEL_65:
      v31 = v111;
      v90 = [v111 updateReminder_];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_21D211484(0, v112[2] + 1, 1, v112);
      }

      v32 = v106;
      v92 = v112[2];
      v91 = v112[3];
      if (v92 >= v91 >> 1)
      {
        v112 = sub_21D211484((v91 > 1), v92 + 1, 1, v112);
      }

      v112[2] = v92 + 1;
      v93 = &v112[4 * v92];
      v93[4] = v90;
      v93[5] = v105;
      v33 = v108;
      v93[6] = v107;
      v93[7] = v117;
      if (v106 == v8)
      {
LABEL_76:

        v120[0] = v121;
        v120[1] = v122;
        v120[2] = v123;
        v120[3] = v124;
        sub_21D1EAAB8(v112, v31, 1, v120, v124);

        return;
      }
    }
  }

  v94 = *&v120[0];
  v34 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_280D17ED0 != -1)
  {
LABEL_82:
    swift_once();
  }

  v95 = sub_21DBF84BC();
  __swift_project_value_buffer(v95, qword_280D0F228);
  v96 = v34;
  v97 = sub_21DBF84AC();
  v98 = sub_21DBFAEBC();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *&v120[0] = v100;
    *v99 = 136315138;
    swift_getErrorValue();
    v101 = sub_21DBFC74C();
    v103 = sub_21D0CDFB4(v101, v102, v120);

    *(v99 + 4) = v103;
    _os_log_impl(&dword_21D0C9000, v97, v98, "makeTask error: Failed to fetch reminders {error: %s}", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v100);
    MEMORY[0x223D46520](v100, -1, -1);
    MEMORY[0x223D46520](v99, -1, -1);
  }

  else
  {
  }
}

void sub_21D1EAAB8(uint64_t a1, char *a2, int a3, __int128 *a4, __n128 a5)
{
  v112 = a3;
  v132 = sub_21DBF6D7C();
  v134 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v133 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58990, &qword_21DC09BE8);
  v120 = *(v9 - 8);
  v121 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v108 - v10;
  v117 = sub_21DBF563C();
  MEMORY[0x28223BE20](v117);
  v116 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a4[1];
  v143 = *a4;
  v144 = v14;
  v15 = a4[3];
  v145 = a4[2];
  v146 = v15;
  v113 = a1;
  v16 = *(a1 + 16);
  v118 = v11;
  v123 = v16;
  if (!v16)
  {
LABEL_29:
    v57 = v143;
    if (v143)
    {
      v59 = *(&v143 + 1);
      v58 = v144;
      v60 = BYTE8(v144);
      v61 = v145;
      LODWORD(v117) = WORD4(v145);
      v62 = *(&v146 + 1);
      v116 = v146;
      *&v119 = v144;
      if (v16)
      {
        LODWORD(v114) = BYTE8(v144);
        *&v141[0] = MEMORY[0x277D84F90];
        v115 = v143;
        sub_21DBF8E0C();
        v111 = v59;
        sub_21DBF8E0C();
        v63 = v58;
        v109 = v61;
        v64 = v61;
        v110 = v62;
        sub_21DBF8E0C();
        sub_21D18EA40(0, v16, 0);
        v65 = 0;
        v66 = *&v141[0];
        v124 = a2;
        v125 = (v113 + 32);
        v67 = v118;
        while (1)
        {
          v130 = v65;
          v131 = v66;
          v68 = &v125[32 * v65];
          v69 = *v68;
          v70 = *(v68 + 1);
          v71 = *(v68 + 2);
          v128 = *(v68 + 3);
          v72 = v69;
          v73 = v70;
          sub_21DBF8E0C();
          v74 = [v72 objectID];
          sub_21DBFADFC();

          v129 = v72;
          [v72 isCompleted];
          sub_21DBF6D4C();
          v75 = [v73 objectID];
          if (v71 >> 62)
          {
            v76 = sub_21DBFBD7C();
            if (v76)
            {
LABEL_34:
              *&v138 = MEMORY[0x277D84F90];
              sub_21D18E718(0, v76 & ~(v76 >> 63), 0);
              if (v76 < 0)
              {
                goto LABEL_58;
              }

              v126 = v75;
              v127 = v73;
              v77 = 0;
              v78 = v138;
              do
              {
                if ((v71 & 0xC000000000000001) != 0)
                {
                  v79 = MEMORY[0x223D44740](v77, v71);
                }

                else
                {
                  v79 = *(v71 + 8 * v77 + 32);
                }

                v80 = v79;
                v81 = [v79 objectID];
                sub_21DBFADFC();

                [v80 isCompleted];
                v82 = v133;
                sub_21DBF6D4C();

                *&v138 = v78;
                v84 = *(v78 + 16);
                v83 = *(v78 + 24);
                if (v84 >= v83 >> 1)
                {
                  sub_21D18E718((v83 > 1), v84 + 1, 1);
                  v82 = v133;
                  v78 = v138;
                }

                ++v77;
                *(v78 + 16) = v84 + 1;
                (*(v134 + 32))(v78 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v84, v82, v132);
              }

              while (v76 != v77);

              v67 = v118;
              v16 = v123;
              v75 = v126;
              goto LABEL_45;
            }
          }

          else
          {
            v76 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v76)
            {
              goto LABEL_34;
            }
          }

          v78 = MEMORY[0x277D84F90];
LABEL_45:
          v85 = *(v121 + 64);
          *(v67 + *(v121 + 48)) = v75;
          *(v67 + v85) = v78;
          v86 = v130;
          v66 = v131;
          *&v141[0] = v131;
          v88 = v131[2];
          v87 = v131[3];
          if (v88 >= v87 >> 1)
          {
            sub_21D18EA40((v87 > 1), v88 + 1, 1);
            v66 = *&v141[0];
          }

          v65 = v86 + 1;
          v66[2] = v88 + 1;
          sub_21D0D523C(v67, v66 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v88, &qword_27CE58990, &qword_21DC09BE8);
          a2 = v124;
          if (v65 == v16)
          {
            v57 = v115;
            v60 = v114;
            v62 = v110;
            v59 = v111;
            v61 = v109;
            goto LABEL_50;
          }
        }
      }

      v89 = v144;
      v90 = v61;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v66 = MEMORY[0x277D84F90];
LABEL_50:
      sub_21D0D8CF0(0, &qword_27CE59830, 0x277D446E8);
      v91 = v61;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v92 = sub_21D39B7F8(v91, v117, v116, v62, v57, v59, v66);
      v142 = 0;
      memset(v141, 0, sizeof(v141));
      sub_21D0D3954(v141, &v138, &unk_27CE60D80, &unk_21DC093F0);
      if (v60)
      {
        v93 = a2;
        v94 = v119;
        v95 = [v93 updateTemplate_];
        sub_21D0CF7E0(v141, &unk_27CE60D80, &unk_21DC093F0);
        type metadata accessor for TTRTemplateEditor();
        inited = swift_initStackObject();
        *(inited + 16) = v95;
        v97 = v140;
        v98 = v139;
        *(inited + 24) = v138;
        *(inited + 40) = v98;
        *(inited + 56) = v97;
        *(inited + 64) = 0;
        LOBYTE(v135) = 4;
        sub_21D866814(v92);
        v99 = *MEMORY[0x277D44BF0];
        LOBYTE(v135) = 1;
        sub_21D863CB4(v99);
      }

      else
      {
        v93 = a2;
        v94 = v119;
        v100 = [v93 updateSmartList_];
        sub_21D0CF7E0(v141, &unk_27CE60D80, &unk_21DC093F0);
        type metadata accessor for TTRSmartListEditor();
        inited = swift_initStackObject();
        *(inited + 16) = v100;
        v101 = v140;
        v102 = v139;
        *(inited + 24) = v138;
        *(inited + 40) = v102;
        *(inited + 56) = v101;
        *(inited + 64) = 0;
        LOBYTE(v135) = 4;
        sub_21D6532B4(v92);
        v103 = *MEMORY[0x277D44BF0];
        LOBYTE(v135) = 1;
        sub_21D64F7E4(v103);
      }

      swift_setDeallocating();

      sub_21D0CF7E0(inited + 24, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0CF7E0(&v143, &qword_27CE59DD8, &qword_21DC0D110);
    }

    if (v112)
    {
      v104 = *(v122 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 24);
      v105 = *(v122 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 32);
      __swift_project_boxed_opaque_existential_1((v122 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer), v104);
      v106 = swift_allocObject();
      *(v106 + 16) = v113;
      v107 = *(v105 + 16);
      sub_21DBF8E0C();
      v107(a2, sub_21D22D1A4, v106, v104, v105);
    }

    return;
  }

  v17 = 0;
  v124 = (v113 + 32);
  v115 = (v12 + 8);
  *(&v18 + 1) = 3;
  v119 = xmmword_21DC09CF0;
  *&v18 = 138412290;
  v114 = v18;
  while (1)
  {
    v19 = v16;
    v20 = &v124[32 * v17];
    v21 = *v20;
    v22 = *(v20 + 1);
    v23 = *(v20 + 2);
    v130 = *(v20 + 3);
    v24 = v130;
    v25 = v21;
    v26 = v22;
    sub_21DBF8E0C();
    v27 = [v25 listChangeItem];
    if (v27)
    {
      break;
    }

    v16 = v19;
LABEL_4:
    v17 = v17 + 1;

    if (v17 == v16)
    {
      goto LABEL_29;
    }
  }

  v28 = v27;
  v131 = v25;
  v128 = v24;
  v127 = [a2 updateReminder_];
  if (v23 >> 62)
  {
    v29 = sub_21DBFBD7C();
  }

  else
  {
    v29 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v126 = v17;
  v129 = v26;
  if (!v29)
  {

    v34 = MEMORY[0x277D84F90];
    v16 = v19;
    goto LABEL_17;
  }

  *&v141[0] = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  if ((v29 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x223D44740](v30, v23);
      }

      else
      {
        v31 = *(v23 + 8 * v30 + 32);
      }

      v32 = v31;
      ++v30;
      v33 = [a2 updateReminder_];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v29 != v30);

    v34 = *&v141[0];
    v16 = v123;
    v17 = v126;
LABEL_17:
    v35 = v28;
    TTRRemindersListInteractor.undoContext.getter(v141);
    sub_21D0D3954(v141, &v138, &unk_27CE60D80, &unk_21DC093F0);
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v36 = qword_280D1AA18;
    sub_21D0CF7E0(v141, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRListEditor();
    v37 = swift_initStackObject();
    v136 = type metadata accessor for TTRUserDefaults();
    v137 = &protocol witness table for TTRUserDefaults;
    *&v135 = v36;
    *(v37 + 64) = 0;
    v125 = v35;
    *(v37 + 16) = v35;
    *(v37 + 56) = v140;
    v38 = v138;
    *(v37 + 40) = v139;
    *(v37 + 24) = v38;
    swift_beginAccess();
    *(v37 + 64) = 0;
    sub_21D0D0FD0(&v135, v37 + 72);
    v39 = v127;
    *&v135 = v127;
    BYTE8(v135) = 1;
    v40 = v36;
    v127 = v39;
    v41 = v131;
    TTRListEditor.moveWithinList(_:togetherWith:position:)(v131, v34, &v135);

    sub_21D157478(v135, BYTE8(v135));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v42 = swift_initStackObject();
    *(v42 + 16) = v119;
    *(v42 + 32) = [v41 objectID];
    sub_21D1CE198(v42);
    v44 = v43;
    swift_setDeallocating();
    swift_arrayDestroy();
    v45 = *(v37 + 16);
    v46 = [v45 sectionsContextChangeItem];
    if (v46)
    {
      v47 = v46;
      v48 = v128;
      v49 = v128;
      v50 = v116;
      sub_21DBF560C();
      sub_21D0D8CF0(0, &qword_27CE59228, 0x277D446B0);
      sub_21DBF815C();

      (*v115)(v50, v117);
      v51 = v127;
    }

    else
    {
      v130 = v44;
      if (qword_27CE56580 != -1)
      {
        swift_once();
      }

      v52 = sub_21DBF84BC();
      __swift_project_value_buffer(v52, qword_27CE591E0);

      v47 = sub_21DBF84AC();
      v53 = sub_21DBFAECC();

      if (os_log_type_enabled(v47, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = v114;
        v56 = [v45 objectID];
        *(v54 + 4) = v56;
        *v55 = v56;
        _os_log_impl(&dword_21D0C9000, v47, v53, "Failed to update memberships of reminders in sections because list does not support sections {listID: %@}", v54, 0xCu);
        sub_21D0CF7E0(v55, &unk_27CE60070, &unk_21DC09550);
        MEMORY[0x223D46520](v55, -1, -1);
        MEMORY[0x223D46520](v54, -1, -1);

        v17 = v126;
LABEL_27:
        v24 = v131;
        goto LABEL_4;
      }

      v17 = v126;
      v51 = v127;
      v48 = v128;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

void TTRRemindersListInteractor.outdentUncommittedReminder(with:changes:paramsForREMManualOrdering:)(id a1, uint64_t a2, uint64_t a3)
{
  v178 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390);
  MEMORY[0x28223BE20](v6 - 8);
  v147 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v151 = &v141 - v9;
  v10 = *(a3 + 16);
  v174 = *a3;
  v175 = v10;
  v11 = *(a3 + 48);
  v176 = *(a3 + 32);
  v177 = v11;
  *&v170 = MEMORY[0x277D84F90];
  v12 = *(a2 + 16);
  v156 = a1;
  v157 = v12;
  if (v12)
  {
    v13 = (a2 + 56);
    do
    {
      v14 = *(v13 - 2);
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = *(v13 - 3);
      v18 = v14;
      v19 = v16;
      v20 = v17;
      v21 = sub_21DBF8E0C();
      MEMORY[0x223D42D80](v21);
      if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
        a1 = v156;
      }

      sub_21DBFA6CC();
      v22 = v20;
      v23 = v18;

      MEMORY[0x223D42D80]();
      if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
        a1 = v156;
      }

      v13 += 4;
      sub_21DBFA6CC();
      v24 = v22;
      v25 = v23;
      sub_21DBF8E0C();

      sub_21D562328(v15);

      v12 = (v12 - 1);
    }

    while (v12);
    v12 = v157;
  }

  v26 = *(v154 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v27 = sub_21DBFA5DC();

  *&v170 = 0;
  v28 = [v26 fetchRemindersWithObjectIDs:v27 error:&v170];

  v29 = v170;
  if (!v28)
  {
    v97 = v170;
    v28 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17ED0 == -1)
    {
      goto LABEL_79;
    }

    goto LABEL_120;
  }

  v30 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
  sub_21D19F2B8(&qword_280D17870, &qword_280D17880, 0x277D44700);
  v148 = v30;
  v31 = sub_21DBF9E6C();
  v32 = v29;

  v33 = [a1 saveRequest];
  v35 = MEMORY[0x277D84F90];
  if (!v12)
  {
    v158 = MEMORY[0x277D84F90];
    goto LABEL_83;
  }

  v36 = 0;
  v160 = (v31 & 0xC000000000000001);
  v37 = v31 & 0xFFFFFFFFFFFFFF8;
  if (v31 < 0)
  {
    v37 = v31;
  }

  v152 = v37;
  v38 = a2 + 56;
  *&v34 = 138412290;
  v149 = v34;
  v158 = MEMORY[0x277D84F90];
  v155 = v31;
  v143 = a2 + 56;
  do
  {
    v39 = (v38 + 32 * v36);
    while (1)
    {
      if (v36 >= v12)
      {
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        swift_once();
LABEL_79:
        v98 = sub_21DBF84BC();
        __swift_project_value_buffer(v98, qword_280D0F228);
        v99 = v28;
        v100 = sub_21DBF84AC();
        v101 = sub_21DBFAEBC();

        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          *&v170 = v103;
          *v102 = 136315138;
          swift_getErrorValue();
          v104 = sub_21DBFC74C();
          v106 = sub_21D0CDFB4(v104, v105, &v170);

          *(v102 + 4) = v106;
          _os_log_impl(&dword_21D0C9000, v100, v101, "outdentUncommittedReminder error: Failed to fetch reminders {error: %s}", v102, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v103);
          MEMORY[0x223D46520](v103, -1, -1);
          MEMORY[0x223D46520](v102, -1, -1);
        }

        else
        {
        }

        return;
      }

      if (__OFADD__(v36, 1))
      {
        goto LABEL_115;
      }

      v162 = (v36 + 1);
      v40 = *(v39 - 3);
      v41 = *(v39 - 2);
      v43 = *(v39 - 1);
      v42 = *v39;
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v153 = v42;
      v161 = v42;
      v44 = v40;
      v45 = v41;
      v163 = v43;
      v46 = v44;
      sub_21DBF8E0C();
      v47 = v156;
      v28 = [v156 objectID];
      v48 = sub_21DBFB63C();

      if (v48)
      {
        v159 = v47;
        if (v160)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v160)
        {
          v28 = v46;
          v52 = sub_21DBFC2CC();

          if (!v52)
          {
            goto LABEL_39;
          }

          *&v167 = v52;
          swift_dynamicCast();
          v53 = v170;
          if (!v170)
          {
            goto LABEL_39;
          }
        }

        else if (!*(v155 + 16) || (v54 = sub_21D17E07C(v46), (v55 & 1) == 0) || (v53 = *(*(v155 + 56) + 8 * v54)) == 0)
        {
LABEL_39:
          if (qword_280D17ED0 != -1)
          {
            swift_once();
          }

          v64 = sub_21DBF84BC();
          __swift_project_value_buffer(v64, qword_280D0F228);
          v59 = v46;
          v46 = sub_21DBF84AC();
          v65 = sub_21DBFAEBC();

          if (os_log_type_enabled(v46, v65))
          {
            v28 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            *v28 = v149;
            *(v28 + 4) = v59;
            *v66 = v59;
            v59 = v59;
            _os_log_impl(&dword_21D0C9000, v46, v65, "outdentUncommittedReminder error: target reminder not fetched {objectID: %@}", v28, 0xCu);
            sub_21D0CF7E0(v66, &unk_27CE60070, &unk_21DC09550);
            MEMORY[0x223D46520](v66, -1, -1);
            MEMORY[0x223D46520](v28, -1, -1);
          }

          goto LABEL_16;
        }

        v159 = [v33 updateReminder_];

        if (v160)
        {
LABEL_21:
          v28 = v45;
          v49 = v45;
          v50 = sub_21DBFC2CC();

          v45 = v28;
          if (v50)
          {
            *&v167 = v50;
            swift_dynamicCast();
            v51 = v170;
            if (v170)
            {
              break;
            }
          }

          goto LABEL_35;
        }
      }

      if (*(v155 + 16))
      {
        v56 = sub_21D17E07C(v45);
        if (v57)
        {
          v51 = *(*(v155 + 56) + 8 * v56);
          if (v51)
          {
            break;
          }
        }
      }

LABEL_35:
      if (qword_280D17ED0 != -1)
      {
        swift_once();
      }

      v58 = sub_21DBF84BC();
      __swift_project_value_buffer(v58, qword_280D0F228);
      v59 = v45;
      v60 = sub_21DBF84AC();
      v61 = sub_21DBFAEBC();

      if (os_log_type_enabled(v60, v61))
      {
        v28 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v28 = v149;
        *(v28 + 4) = v59;
        *v62 = v59;
        v63 = v59;
        _os_log_impl(&dword_21D0C9000, v60, v61, "outdentUncommittedReminder error: siblingBefore not fetched {objectID: %@}", v28, 0xCu);
        sub_21D0CF7E0(v62, &unk_27CE60070, &unk_21DC09550);
        MEMORY[0x223D46520](v62, -1, -1);
        MEMORY[0x223D46520](v28, -1, -1);
      }

LABEL_16:

      ++v36;
      v39 += 4;
      v12 = v157;
      v35 = MEMORY[0x277D84F90];
      if (v162 == v157)
      {
        goto LABEL_83;
      }
    }

    v141 = v51;
    *&v170 = v35;
    v67 = v163;
    v68 = v163 & 0xFFFFFFFFFFFFFF8;
    if (v163 >> 62)
    {
      v88 = v163;
      v69 = sub_21DBFBD7C();
      v67 = v88;
      if (!v69)
      {
        goto LABEL_71;
      }

LABEL_46:
      v70 = 0;
      v28 = v67 & 0xC000000000000001;
      v142 = v35;
      v145 = v69;
      v146 = v45;
      v144 = v67 & 0xC000000000000001;
      while (1)
      {
        if (v28)
        {
          v71 = MEMORY[0x223D44740](v70, v67);
        }

        else
        {
          if (v70 >= *(v68 + 16))
          {
            goto LABEL_119;
          }

          v71 = *(v67 + 8 * v70 + 32);
        }

        v72 = v71;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_118;
        }

        v161 = (v70 + 1);
        if (v160)
        {
          v73 = v71;
          v74 = sub_21DBFC2CC();

          if (!v74)
          {
            goto LABEL_58;
          }

          *&v164 = v74;
          swift_dynamicCast();
          if (!v167)
          {
            goto LABEL_58;
          }
        }

        else if (!*(v155 + 16) || (v75 = sub_21D17E07C(v71), (v76 & 1) == 0) || !*(*(v155 + 56) + 8 * v75))
        {
LABEL_58:
          if (qword_280D17ED0 != -1)
          {
            swift_once();
          }

          v77 = sub_21DBF84BC();
          __swift_project_value_buffer(v77, qword_280D0F228);
          v78 = v72;
          v79 = sub_21DBF84AC();
          v80 = sub_21DBFAEBC();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = v68;
            v83 = swift_slowAlloc();
            *v81 = v149;
            *(v81 + 4) = v78;
            *v83 = v78;
            v84 = v78;
            _os_log_impl(&dword_21D0C9000, v79, v80, "outdentUncommittedReminder error: subtask not fetched {objectID: %@}", v81, 0xCu);
            sub_21D0CF7E0(v83, &unk_27CE60070, &unk_21DC09550);
            v85 = v83;
            v68 = v82;
            v69 = v145;
            MEMORY[0x223D46520](v85, -1, -1);
            v86 = v81;
            v28 = v144;
            MEMORY[0x223D46520](v86, -1, -1);
          }

          ++v70;
          v87 = v161 == v69;
          goto LABEL_63;
        }

        MEMORY[0x223D42D80]();
        if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v142 = v170;
        v70 = v161;
        v87 = v161 == v69;
LABEL_63:
        v35 = MEMORY[0x277D84F90];
        v67 = v163;
        v45 = v146;
        if (v87)
        {
          goto LABEL_72;
        }
      }
    }

    v69 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v69)
    {
      goto LABEL_46;
    }

LABEL_71:
    v142 = v35;
LABEL_72:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v158 = sub_21D211484(0, v158[2] + 1, 1, v158);
    }

    v12 = v157;
    v90 = v158[2];
    v89 = v158[3];
    v36 = v162;
    if (v90 >= v89 >> 1)
    {
      v96 = sub_21D211484((v89 > 1), v90 + 1, 1, v158);
      v36 = v162;
      v158 = v96;
    }

    v91 = v158;
    v92 = v159;
    v158[2] = v90 + 1;
    v93 = &v91[4 * v90];
    v95 = v141;
    v94 = v142;
    v93[4] = v92;
    v93[5] = v95;
    v93[6] = v94;
    v93[7] = v153;
    v38 = v143;
  }

  while (v36 != v12);
LABEL_83:

  v159 = v158[2];
  if (v159)
  {
    v156 = OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_fixedUndoContext;
    v157 = v158 + 4;
    v107 = v154 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_delegate;
    swift_beginAccess();
    v108 = 0;
    v155 = v107;
    v150 = v33;
    do
    {
      if (v108 >= v158[2])
      {
        goto LABEL_116;
      }

      v109 = &v157[4 * v108];
      v110 = v109[1];
      v28 = v109[2];
      v163 = *v109;
      v111 = v110;
      sub_21DBF8E0C();
      v161 = v111;
      v160 = [v33 updateReminder_];
      if (v28 >> 62)
      {
        v112 = sub_21DBFBD7C();
        if (!v112)
        {
LABEL_98:

          v117 = MEMORY[0x277D84F90];
          goto LABEL_99;
        }
      }

      else
      {
        v112 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v112)
        {
          goto LABEL_98;
        }
      }

      *&v170 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      if (v112 < 0)
      {
        goto LABEL_117;
      }

      v113 = 0;
      do
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v114 = MEMORY[0x223D44740](v113, v28);
        }

        else
        {
          v114 = *(v28 + 8 * v113 + 32);
        }

        v115 = v114;
        ++v113;
        v116 = [v33 updateReminder_];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v112 != v113);

      v117 = v170;
LABEL_99:
      v118 = v163;
      v162 = [v163 listChangeItem];
      if (v162)
      {
        v119 = v117;
        v120 = v151;
        sub_21D0D3954(v156 + v154, v151, &qword_27CE59370, &unk_21DC0B390);
        v121 = type metadata accessor for TTRRemindersListUndoContext(0);
        v122 = *(v121 - 8);
        v123 = *(v122 + 48);
        if (v123(v120, 1, v121) == 1)
        {
          v124 = v162;
          sub_21D0CF7E0(v120, &qword_27CE59370, &unk_21DC0B390);
          v167 = 0u;
          v168 = 0u;
          v169 = 0;
          v125 = v155;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v126 = *(v125 + 8);
            ObjectType = swift_getObjectType();
            v128 = v147;
            (*(v126 + 8))(v154, &protocol witness table for TTRRemindersListInteractor, ObjectType, v126);
            swift_unknownObjectRelease();
            v129 = v128;
            if (v123(v128, 1, v121) != 1)
            {
              *(&v171 + 1) = v121;
              v172.n128_u64[0] = &protocol witness table for TTRRemindersListUndoContext;
              boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v170);
              sub_21D1073B0(v128, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListUndoContext);
LABEL_107:
              v28 = &unk_27CE60D80;
              if (*(&v168 + 1))
              {
                sub_21D0CF7E0(&v167, &unk_27CE60D80, &unk_21DC093F0);
              }

LABEL_109:
              sub_21D0D3954(&v170, &v167, &unk_27CE60D80, &unk_21DC093F0);
              if (qword_280D1AA10 != -1)
              {
                swift_once();
              }

              v133 = qword_280D1AA18;
              sub_21D0CF7E0(&v170, &unk_27CE60D80, &unk_21DC093F0);
              type metadata accessor for TTRListEditor();
              inited = swift_initStackObject();
              v165 = type metadata accessor for TTRUserDefaults();
              v166 = &protocol witness table for TTRUserDefaults;
              *&v164 = v133;
              *(inited + 64) = 0;
              v135 = v162;
              *(inited + 16) = v162;
              *(inited + 56) = v169;
              v136 = v167;
              *(inited + 40) = v168;
              *(inited + 24) = v136;
              swift_beginAccess();
              *(inited + 64) = 0;
              sub_21D0D0FD0(&v164, inited + 72);
              v137 = v160;
              *&v164 = v160;
              BYTE8(v164) = 1;
              v138 = v133;
              v139 = v137;
              v140 = v163;
              TTRListEditor.moveWithinList(_:togetherWith:position:)(v163, v119, &v164);

              swift_setDeallocating();
              sub_21D0CF7E0(inited + 24, &unk_27CE60D80, &unk_21DC093F0);
              __swift_destroy_boxed_opaque_existential_0((inited + 72));

              sub_21D157478(v164, BYTE8(v164));
              v33 = v150;
              goto LABEL_86;
            }
          }

          else
          {
            v129 = v147;
            (*(v122 + 56))(v147, 1, 1, v121);
          }

          sub_21D0CF7E0(v129, &qword_27CE59370, &unk_21DC0B390);
          v170 = 0u;
          v171 = 0u;
          v172.n128_u64[0] = 0;
          goto LABEL_107;
        }

        *(&v168 + 1) = v121;
        v169 = &protocol witness table for TTRRemindersListUndoContext;
        v131 = __swift_allocate_boxed_opaque_existential_0(&v167);
        sub_21D1073B0(v120, v131, type metadata accessor for TTRRemindersListUndoContext);
        sub_21D0D0FD0(&v167, &v170);
        v132 = v162;
        v28 = &unk_27CE60D80;
        goto LABEL_109;
      }

LABEL_86:
      ++v108;
    }

    while (v108 != v159);
  }

  v170 = v174;
  v171 = v175;
  v172 = v176;
  v173 = v177;
  sub_21D1EAAB8(v158, v33, 0, &v170, v176);
}

id TTRRemindersListInteractor.reminderChangeItem(forEditing:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v3 setNotifyChangeDelegate_];
  [v3 setSaveIsNoopIfNoChangedKeys_];
  v4 = [v3 updateReminder_];

  return v4;
}

void TTRRemindersListInteractor.newReminderChangeItems(params:targetContainer:position:remindersBeingSaved:)(uint64_t *a1@<X0>, __int128 *a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a2 + 16);
  v10 = *a3;
  v11 = *(a3 + 8);
  v67 = *a2;
  v68 = v9;
  sub_21D1ED28C(&v67, a4, &v69);
  if (!v70)
  {
    sub_21D0CF7E0(&v69, &qword_27CE597E8, &qword_21DC0C070);
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  v59 = v5;
  sub_21D0D0FD0(&v69, v71);
  v12 = v72;
  v13 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  v14 = *(v13 + 8);
  sub_21D227D78(v10, v11);
  v15 = v14(v12, v13);
  if (v11 <= 1)
  {
    v18 = v15;
    if (v11)
    {
      v19 = [v15 updateReminder_];

      v20 = v10;
      v17 = 1;
      sub_21D227D8C(v20, 1u);
    }

    else
    {
      v19 = [v15 updateReminder_];

      sub_21D227D8C(v10, 0);
      v17 = 0;
    }

    v16 = v19;
  }

  else if (v11 == 2)
  {
    v16 = v10;

    v17 = 0;
  }

  else if (v11 == 3)
  {
    v16 = v10;

    v17 = 1;
  }

  else
  {
    v16 = v10 != 0;

    v17 = 2;
  }

  *&v69 = v7;
  BYTE8(v69) = v8;
  sub_21D1E46EC();
  v22 = v21;
  v23 = v21[2];
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v56 = v8;
    v57 = v7;
    v58 = a5;
    v66 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    if (!v22[2])
    {
LABEL_34:
      __break(1u);
      return;
    }

    v25 = v22[4];
    v26 = v22[5];
    v27 = v22[6];
    v60 = v23;
    v61 = v22;
    v29 = v72;
    v28 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    *&v67 = v16;
    BYTE8(v67) = v17;
    v30 = *(v28 + 24);
    v63 = v25;
    sub_21DBF8E0C();
    sub_21D157850(v16, v17);
    v31 = v30(v25, &v67, v26, v27, v29, v28);
    sub_21D157478(v67, BYTE8(v67));
    v32 = v31;
    sub_21D157478(v16, v17);

    sub_21DBFBFEC();
    sub_21DBFC03C();
    v33 = v61;
    sub_21DBFC04C();
    sub_21DBFBFFC();
    if (v60 != 1)
    {
      v34 = v61 + 9;
      v35 = 1;
      v36 = v32;
      while (v35 < v33[2])
      {
        ++v35;
        v37 = *(v34 - 2);
        v62 = *(v34 - 1);
        v38 = *v34;
        v34 += 3;
        v39 = v72;
        v40 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        *&v67 = v36;
        BYTE8(v67) = 1;
        v41 = *(v40 + 24);
        v64 = v37;
        sub_21DBF8E0C();
        sub_21D157850(v36, 1u);
        v42 = v41(v37, &v67, v62, v38, v39, v40);
        sub_21D157478(v67, BYTE8(v67));
        v32 = v42;
        sub_21D157478(v36, 1u);

        sub_21DBFBFEC();
        sub_21DBFC03C();
        v33 = v61;
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v36 = v32;
        if (v60 == v35)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_34;
    }

LABEL_19:

    v43 = v66;
    v65 = 1;
    v44 = v32;
    v7 = v57;
    a5 = v58;
    v8 = v56;
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    v65 = v17;

    v43 = MEMORY[0x277D84F90];
    v44 = v16;
  }

  *&v69 = v7;
  BYTE8(v69) = v8;
  sub_21D1E46EC();
  v46 = v45;
  v47 = 0;
  *&v67 = v24;
  v48 = *(v45 + 16);
LABEL_22:
  v49 = 24 * v47 + 32;
  while (v48 != v47)
  {
    if (v47 >= *(v46 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    ++v47;
    v50 = *(v46 + v49);
    v49 += 24;
    if (v50)
    {
      v51 = v50;
      MEMORY[0x223D42D80]();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v24 = v67;
      goto LABEL_22;
    }
  }

  v52 = sub_21D19ED08(v24);

  v53 = v59 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v54 = *(v53 + 8);
    ObjectType = swift_getObjectType();
    (*(v54 + 24))(v59, &protocol witness table for TTRRemindersListInteractor, v52, ObjectType, v54);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  *(a5 + 24) = &type metadata for TTRRemindersListInteractor.ReminderChangeItemGroup;
  *(a5 + 32) = &off_282EADB00;
  *a5 = v43;
  sub_21D157478(v44, v65);
  __swift_destroy_boxed_opaque_existential_0(v71);
}

double sub_21D1ED28C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = a2;
  v6 = a3;
  v8 = *a1;
  v7 = *(a1 + 8);
  if (!*(a1 + 16))
  {
    if (*(a1 + 8) > 1u)
    {
      if (*(a1 + 8) == 2)
      {
        v64 = a2;
        v65 = a3;
        Fallback = v8;
        v16 = 0;
LABEL_25:
        v43 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
        v44 = Fallback;
        TTRRemindersListInteractor.undoContext.getter(v74);
        v45 = type metadata accessor for ReminderContainerListEditor();
        v46 = swift_allocObject();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21DC09CF0;
        *(inited + 32) = v44;
        v48 = objc_allocWithZone(MEMORY[0x277D447D8]);
        v49 = v44;
        v50 = [v48 initWithStore_];
        REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(inited, v16);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_21D0D3954(v74, v73, &unk_27CE60D80, &unk_21DC093F0);
        sub_21D0D3954(v73, v72, &unk_27CE60D80, &unk_21DC093F0);
        v51 = [v50 updateList_];
        sub_21D0D3954(v72, &v69, &unk_27CE60D80, &unk_21DC093F0);
        if (qword_280D1AA10 != -1)
        {
          swift_once();
        }

        v52 = qword_280D1AA18;
        sub_21D0CF7E0(v72, &unk_27CE60D80, &unk_21DC093F0);
        type metadata accessor for TTRListEditor();
        v53 = swift_allocObject();
        v67 = type metadata accessor for TTRUserDefaults();
        v68 = &protocol witness table for TTRUserDefaults;
        *&v66 = v52;
        v54 = v52;
        sub_21D0CF7E0(v73, &unk_27CE60D80, &unk_21DC093F0);
        *(v53 + 64) = 0;
        *(v53 + 16) = v51;
        v55 = v70;
        *(v53 + 24) = v69;
        *(v53 + 40) = v55;
        *(v53 + 56) = v71;
        swift_beginAccess();
        *(v53 + 64) = 0;
        sub_21D0D0FD0(&v66, v53 + 72);

        sub_21D0CF7E0(v74, &unk_27CE60D80, &unk_21DC093F0);
        *(v46 + 16) = v53;
        v75 = v45;
        v76 = &off_282EADAD8;
        v74[0] = v46;
        v56 = [*(*(*__swift_project_boxed_opaque_existential_1(v74 v45) + 16) + 16)];
        [v56 setNotifyChangeDelegate_];

        goto LABEL_28;
      }

      Fallback = TTRRemindersListInteractor.fetchDefaultListOrCreateFallbackList()();
      if (!Fallback)
      {
        goto LABEL_31;
      }

      v64 = v5;
      v65 = v6;
    }

    else
    {
      if (!*(a1 + 8))
      {
        Fallback = sub_21D20574C(*a1);
        if (!Fallback)
        {
          goto LABEL_31;
        }

        v64 = v5;
        v65 = v6;
        v16 = 0;
        goto LABEL_25;
      }

      v64 = a2;
      v65 = a3;
      Fallback = v8;
    }

    v16 = 1;
    goto LABEL_25;
  }

  if (*(a1 + 16) != 1)
  {
    if (*(a1 + 8))
    {
      if (*(a1 + 8) != 1)
      {
        goto LABEL_31;
      }

      v17 = TTRRemindersListInteractor.fetchDefaultListOrCreateFallbackList()();
      if (!v17)
      {
        goto LABEL_31;
      }

      v64 = v5;
      v65 = v6;
      v18 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
      v19 = v17;
      TTRRemindersListInteractor.undoContext.getter(v74);
      v20 = type metadata accessor for ReminderContainerListEditor();
      v62 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_21DC09CF0;
      *(v21 + 32) = v19;
      v22 = objc_allocWithZone(MEMORY[0x277D447D8]);
      v23 = v19;
      v24 = [v22 initWithStore_];
      REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(v21, 1);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_21D0D3954(v74, v73, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0D3954(v73, v72, &unk_27CE60D80, &unk_21DC093F0);
      v25 = [v24 updateList_];
      sub_21D0D3954(v72, &v69, &unk_27CE60D80, &unk_21DC093F0);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      v26 = qword_280D1AA18;
      sub_21D0CF7E0(v72, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRListEditor();
      v27 = swift_allocObject();
      v67 = type metadata accessor for TTRUserDefaults();
      v68 = &protocol witness table for TTRUserDefaults;
      *&v66 = v26;
      v28 = v26;
      sub_21D0CF7E0(v73, &unk_27CE60D80, &unk_21DC093F0);
      *(v27 + 64) = 0;
      *(v27 + 16) = v25;
      v29 = v70;
      *(v27 + 24) = v69;
      *(v27 + 40) = v29;
      *(v27 + 56) = v71;
      swift_beginAccess();
      *(v27 + 64) = 0;
      sub_21D0D0FD0(&v66, v27 + 72);

      sub_21D0CF7E0(v74, &unk_27CE60D80, &unk_21DC093F0);
      *(v62 + 16) = v27;
      v75 = v20;
      v76 = &off_282EADAD8;
      v74[0] = v62;
      v30 = [*(*(*__swift_project_boxed_opaque_existential_1(v74 v20) + 16) + 16)];
      [v30 setNotifyChangeDelegate_];
    }

    else
    {
      v64 = a2;
      v65 = a3;
      v31 = [v8 list];
      v32 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
      TTRRemindersListInteractor.undoContext.getter(v74);
      v63 = type metadata accessor for ReminderContainerListEditor();
      v61 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_21DC09CF0;
      *(v33 + 32) = v31;
      v34 = objc_allocWithZone(MEMORY[0x277D447D8]);
      v35 = v31;
      v36 = [v34 initWithStore_];
      REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(v33, 1);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_21D0D3954(v74, v73, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0D3954(v73, v72, &unk_27CE60D80, &unk_21DC093F0);
      v60 = v35;
      v37 = [v36 updateList_];
      sub_21D0D3954(v72, &v69, &unk_27CE60D80, &unk_21DC093F0);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      v38 = qword_280D1AA18;
      sub_21D0CF7E0(v72, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRListEditor();
      v39 = swift_allocObject();
      v67 = type metadata accessor for TTRUserDefaults();
      v68 = &protocol witness table for TTRUserDefaults;
      *&v66 = v38;
      v40 = v38;
      sub_21D0CF7E0(v73, &unk_27CE60D80, &unk_21DC093F0);
      *(v39 + 64) = 0;
      *(v39 + 16) = v37;
      v41 = v70;
      *(v39 + 24) = v69;
      *(v39 + 40) = v41;
      *(v39 + 56) = v71;
      swift_beginAccess();
      *(v39 + 64) = 0;
      sub_21D0D0FD0(&v66, v39 + 72);

      sub_21D0CF7E0(v74, &unk_27CE60D80, &unk_21DC093F0);
      *(v61 + 16) = v39;
      v75 = v63;
      v76 = &off_282EADAD8;
      v74[0] = v61;
      v42 = [*(*(*__swift_project_boxed_opaque_existential_1(v74 v63) + 16) + 16)];
      [v42 setNotifyChangeDelegate_];

      sub_21D22A46C(v8, v7, 2);
    }

LABEL_28:
    v5 = v64;
    v6 = v65;
    if (!v64)
    {
LABEL_30:
      sub_21D0D32E4(v74, v6);
      __swift_destroy_boxed_opaque_existential_0(v74);
      return result;
    }

LABEL_29:
    v57 = v75;
    v58 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    (v58[2])(v5, v57, v58);
    goto LABEL_30;
  }

  v9 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v10 = v7;
  v11 = v8;
  v12 = v9;
  TTRRemindersListInteractor.undoContext.getter(v74);
  v13 = type metadata accessor for ReminderContainerReminderEditor();
  swift_allocObject();
  v14 = sub_21D20BBE4(v11, v7, v12, v74);
  if (v14)
  {
    v75 = v13;
    v76 = &off_282EADAB0;
    v74[0] = v14;
    if (!v5)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_31:
  *(v6 + 32) = 0;
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  return result;
}

uint64_t TTRRemindersListInteractor.reminderChangeItems(forMoving:to:insertingAt:)@<X0>(unint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *a3;
  v8 = *(a3 + 8);
  v20 = *a2;
  v21 = v6;
  sub_21D1ED28C(&v20, 0, &v22);
  if (v23)
  {
    sub_21D0D0FD0(&v22, v24);
    v9 = v25;
    v10 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v11 = *(v10 + 8);
    sub_21D227D78(v7, v8);
    v12 = v11(v9, v10);
    if (v8 <= 1)
    {
      v16 = v12;
      if (v8)
      {
        v17 = [v12 updateReminder_];

        v14 = 1;
        sub_21D227D8C(v7, 1u);
      }

      else
      {
        v17 = [v12 updateReminder_];

        sub_21D227D8C(v7, 0);
        v14 = 0;
      }

      v7 = v17;
    }

    else if (v8 == 2)
    {

      v14 = 0;
    }

    else if (v8 == 3)
    {

      v14 = 1;
    }

    else
    {
      v7 = v7 != 0;

      v14 = 2;
    }

    *&v22 = v7;
    BYTE8(v22) = v14;
    MEMORY[0x28223BE20](v13);
    v19[2] = v24;
    v19[3] = &v22;
    v18 = sub_21D173B74(sub_21D227DA0, v19, a1);
    *(a4 + 24) = &type metadata for TTRRemindersListInteractor.ReminderChangeItemGroup;
    *(a4 + 32) = &off_282EADB00;
    *a4 = v18;
    sub_21D157478(v22, BYTE8(v22));
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    result = sub_21D0CF7E0(&v22, &qword_27CE597E8, &qword_21DC0C070);
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void sub_21D1EDE58(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = *(a3 + 8);
  v14 = *a3;
  v15 = v9;
  v10 = *(v8 + 32);
  sub_21D157850(v14, v9);
  v11 = v10(v6, &v14, v7, v8);
  sub_21D157478(v14, v15);
  v12 = *a3;
  *a3 = v11;
  LOBYTE(v8) = *(a3 + 8);
  *(a3 + 8) = 1;
  v13 = v11;
  sub_21D157478(v12, v8);
  *a4 = v13;
}

void TTRRemindersListInteractor.save(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 objectID];
  sub_21D1EE0BC(a1);
  v9 = [a1 saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v10 = sub_21DBFB12C();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v8;
  v11[5] = v4;
  v15[4] = sub_21D228298;
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_21D11E5E4;
  v15[3] = &block_descriptor_15;
  v12 = _Block_copy(v15);
  sub_21D0D0E78(a2, a3);
  v13 = v8;
  v14 = v4;

  [v9 saveWithQueue:v10 completion:v12];
  _Block_release(v12);
}

void sub_21D1EE0BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v18[-v4];
  v6 = [a1 lastModifiedDate];
  if (v6)
  {
    v7 = v6;
    sub_21DBF55FC();

    v8 = sub_21DBF563C();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    sub_21D0CF7E0(v5, &qword_27CE58D68, &unk_21DC0C060);
  }

  else
  {
    v9 = sub_21DBF563C();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    sub_21D0CF7E0(v5, &qword_27CE58D68, &unk_21DC0C060);
    v10 = [a1 listChangeItem];
    if (v10)
    {
      v11 = v10;
      TTRRemindersListInteractor.undoContext.getter(v24);
      sub_21D0D3954(v24, v22, &unk_27CE60D80, &unk_21DC093F0);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      v12 = qword_280D1AA18;
      sub_21D0CF7E0(v24, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRListEditor();
      v13 = swift_allocObject();
      v20 = type metadata accessor for TTRUserDefaults();
      v21 = &protocol witness table for TTRUserDefaults;
      *&v19 = v12;
      *(v13 + 64) = 0;
      *(v13 + 16) = v11;
      v14 = v22[1];
      *(v13 + 24) = v22[0];
      *(v13 + 40) = v14;
      *(v13 + 56) = v23;
      swift_beginAccess();
      *(v13 + 64) = 0;
      sub_21D0D0FD0(&v19, v13 + 72);
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      v16 = v12;
      v17 = a1;
      sub_21D182B38(sub_21D22D19C, v15);
    }
  }
}

void sub_21D1EE37C(void *a1, void (*a2)(id), uint64_t a3, void *a4, uint64_t a5)
{
  v41[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_280D0F228);
    v9 = a1;
    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAEBC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v41[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_21DBFC74C();
      v16 = sub_21D0CDFB4(v14, v15, v41);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_21D0C9000, v10, v11, "Error saving reminder: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223D46520](v13, -1, -1);
      MEMORY[0x223D46520](v12, -1, -1);
    }

    if (a2)
    {
      a2(0);
    }
  }

  else
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v19 = sub_21DBF84BC();
    __swift_project_value_buffer(v19, qword_280D0F228);
    v20 = a4;
    v21 = sub_21DBF84AC();
    v22 = sub_21DBFAE9C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_21D0C9000, v21, v22, "reminder saved: %@", v23, 0xCu);
      sub_21D0CF7E0(v24, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v24, -1, -1);
      MEMORY[0x223D46520](v23, -1, -1);
    }

    if (a2)
    {
      v26 = *(a5 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
      v41[0] = 0;

      v27 = [v26 fetchReminderWithObjectID:v20 error:v41];
      v28 = v41[0];
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v30 = v28;
        v31 = sub_21DBF52DC();

        swift_willThrow();
        v32 = v31;
        v33 = sub_21DBF84AC();
        v34 = sub_21DBFAEBC();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v41[0] = v36;
          *v35 = 136315138;
          swift_getErrorValue();
          v37 = sub_21DBFC74C();
          v39 = sub_21D0CDFB4(v37, v38, v41);

          *(v35 + 4) = v39;
          _os_log_impl(&dword_21D0C9000, v33, v34, "Error fetching updated reminder: %s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v36);
          MEMORY[0x223D46520](v36, -1, -1);
          MEMORY[0x223D46520](v35, -1, -1);
        }

        else
        {
        }

        v29 = 0;
      }

      v40 = v27;
      a2(v29);

      sub_21D0D0E88(a2, a3);
    }
  }
}

uint64_t TTRRemindersListInteractor.save(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v52 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE597F0, &qword_21DC0C078);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE597F8, &qword_21DC0C080);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59800, &qword_21DC0C088);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v8 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  v9 = *(a1 + 16);
  v49 = &v41 - v10;
  if (!v9)
  {
LABEL_24:
    if (v8 >> 62)
    {
      goto LABEL_35;
    }

    v25 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_26;
    }

LABEL_36:

    v31 = MEMORY[0x277D84F90];
LABEL_37:
    v54 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59808, &qword_21DC0C090);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59810, &unk_21DC0C098);
    sub_21D0D0F1C(&qword_280D17948, &qword_27CE59808, &qword_21DC0C090, MEMORY[0x277CBCEB0]);
    sub_21D0D0F1C(&qword_280D178D8, &qword_27CE59810, &unk_21DC0C098, MEMORY[0x277D83970]);
    v32 = v43;
    sub_21DBF8FCC();
    sub_21D0D0F1C(&qword_280D179B8, &qword_27CE597F0, &qword_21DC0C078, MEMORY[0x277CBCD48]);
    v34 = v45;
    v33 = v46;
    sub_21DBF932C();
    (*(v44 + 8))(v32, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    sub_21D0D0F1C(&qword_280D179D8, &qword_27CE597F8, &qword_21DC0C080, MEMORY[0x277CBCCD0]);
    v35 = v48;
    v36 = v49;
    sub_21DBF93BC();
    (*(v47 + 8))(v34, v35);
    v37 = swift_allocObject();
    v38 = v52;
    v39 = v53;
    *(v37 + 16) = v52;
    *(v37 + 24) = v39;
    sub_21D0D0E78(v38, v39);
    sub_21D0D0F1C(&qword_280D17A08, &qword_27CE59800, &qword_21DC0C088, MEMORY[0x277CBCBA0]);
    v40 = v51;
    sub_21DBF91DC();

    return (*(v50 + 8))(v36, v40);
  }

  v11 = 0;
  v12 = a1 + 32;
  while (1)
  {
    v14 = v12 + 16 * v11;
    v15 = *(v14 + 8);
    v16 = *v14;
    v17 = v16;
    if ((v15 & 1) == 0)
    {
      sub_21D1EE0BC(v16);
    }

    v18 = [v17 saveRequest];
    if (!(v8 >> 62))
    {
      v19 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        break;
      }

      goto LABEL_21;
    }

    v23 = v18;
    v19 = sub_21DBFBD7C();
    v18 = v23;
    if (v19)
    {
      break;
    }

LABEL_21:
    v24 = v18;
    MEMORY[0x223D42D80]();
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();

    v8 = v55;
LABEL_4:
    if (++v11 == v9)
    {
      goto LABEL_24;
    }
  }

  v20 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v42 = v18;
      result = MEMORY[0x223D44740](v20, v8);
      if (__OFADD__(v20++, 1))
      {
        goto LABEL_39;
      }

      v41 = result;
      swift_unknownObjectRelease();
      v18 = v42;
      if (v41 == v42)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v20 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    if (*(v8 + 32 + 8 * v20) == v18)
    {
LABEL_3:
      v13 = v18;

      goto LABEL_4;
    }

    ++v20;
LABEL_15:
    if (v20 == v19)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  v25 = sub_21DBFBD7C();
  if (!v25)
  {
    goto LABEL_36;
  }

LABEL_26:
  v54 = MEMORY[0x277D84F90];
  result = sub_21DBFC01C();
  if ((v25 & 0x8000000000000000) == 0)
  {
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v26 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x223D44740](v26, v8);
      }

      else
      {
        v27 = *(v8 + 8 * v26 + 32);
      }

      v28 = v27;
      ++v26;
      v29 = sub_21DBFB12C();
      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      *(v30 + 24) = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59808, &qword_21DC0C090);
      swift_allocObject();
      sub_21DBF911C();
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v25 != v26);

    v31 = v54;
    goto LABEL_37;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

double sub_21D1EEEEC(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *a1;
  if (*(a1 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DC8, &qword_21DC0D0F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21DC08D00;
    *(v4 + 32) = v3;
    v5 = v3;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DD0, &qword_21DC0D0F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
  sub_21D0D0F1C(&qword_280D178A8, &qword_27CE59DD0, &qword_21DC0D0F8, MEMORY[0x277D83970]);
  v4 = sub_21DBFA41C();
  if (a2)
  {
LABEL_5:
    a2(v4);
  }

LABEL_6:

  return result;
}

id TTRRemindersListInteractor.saveAndFetchSynchronously(_:options:)(void *a1, uint64_t *a2)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = [a1 objectID];
  if ((v4 & 1) == 0)
  {
    sub_21D1EE0BC(a1);
  }

  v6 = [a1 saveRequest];
  v33[0] = 0;
  v7 = [v6 saveSynchronouslyWithError_];

  v8 = v33[0];
  if (v7)
  {
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 defaultFetchOptions];
    v12 = [a1 storage];
    v13 = [v12 fetchedDueDateDeltaAlerts];

    if (v13)
    {
      sub_21D0D8CF0(0, &qword_27CE59818, 0x277D44608);
      v14 = sub_21DBFA5EC();

      v15 = v14 >> 62 ? sub_21DBFBD7C() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v15)
      {
        v16 = [v11 fetchOptionsIncludingDueDateDeltaAlerts];

        v11 = v16;
      }
    }

    v17 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
    v33[0] = 0;
    v18 = [v17 fetchReminderWithObjectID:v5 fetchOptions:v11 error:v33];
    v19 = v33[0];
    if (v18)
    {

      return v18;
    }

    v22 = v19;
    v21 = sub_21DBF52DC();

    swift_willThrow();
  }

  else
  {
    v20 = v33[0];
    v21 = sub_21DBF52DC();

    swift_willThrow();
  }

  if (qword_280D17ED0 != -1)
  {
    swift_once();
  }

  v23 = sub_21DBF84BC();
  __swift_project_value_buffer(v23, qword_280D0F228);
  v24 = v21;
  v25 = sub_21DBF84AC();
  v26 = sub_21DBFAEBC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33[0] = v28;
    *v27 = 136315138;
    swift_getErrorValue();
    v29 = sub_21DBFC74C();
    v31 = sub_21D0CDFB4(v29, v30, v33);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_21D0C9000, v25, v26, "Error saving and fetching reminder synchronously: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x223D46520](v28, -1, -1);
    MEMORY[0x223D46520](v27, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t TTRRemindersListInteractor.fetchReminderAsync(withID:on:)(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = v5;
  v6[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59820, &qword_21DC0C0A8);
  swift_allocObject();
  v7 = a2;
  v8 = v5;
  v9 = a1;
  return sub_21DBF911C();
}

uint64_t sub_21D1EF468(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v24 = a3;
  v9 = sub_21DBF9D2C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21DBF9D5C();
  v13 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = sub_21D22D120;
  v17[5] = v16;
  aBlock[4] = sub_21D22D124;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_416;
  v18 = _Block_copy(aBlock);

  v19 = a4;
  v20 = a5;
  sub_21DBF9D4C();
  v25 = MEMORY[0x277D84F90];
  sub_21D0F1C20(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v15, v12, v18);
  _Block_release(v18);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v23);
}

void sub_21D1EF778(void *a1, uint64_t a2, void (*a3)(id, uint64_t))
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
  v12[0] = 0;
  v7 = [a1 fetchReminderWithObjectID:a2 fetchOptions:v6 error:v12];

  v8 = v12[0];
  if (v7)
  {
    v9 = v7;
    a3(v7, 0);
  }

  else
  {
    v10 = v8;
    v9 = sub_21DBF52DC();

    swift_willThrow();
    v11 = v9;
    a3(v9, 1);
  }
}

uint64_t TTRRemindersListInteractor.registerUndoToDeleteReminderIfExists(with:)(void *a1)
{
  TTRRemindersListInteractor.undoContext.getter(&v15);
  if (!v16)
  {
    return sub_21D0CF7E0(&v15, &unk_27CE60D80, &unk_21DC093F0);
  }

  sub_21D0D0FD0(&v15, v17);
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v16 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  *&v15 = a1;
  v4 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);
  *&v13 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21DC08D00;
  sub_21D0CEB98(&v15, v5 + 32);
  sub_21D0CF2E8(&v13, (v5 + 64));
  v6 = a1;
  __swift_destroy_boxed_opaque_existential_0(&v15);
  v7 = v18;
  v8 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  *&v15 = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v3;
  v10 = v6;
  v11 = v3;
  TTRUndoContext.registerUndo(forEditing:action:)(&v15, sub_21D2282C0, v9, v7, v8);

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

unint64_t sub_21D1EFA60(uint64_t a1, void *a2, void *a3)
{
  v25[10] = *MEMORY[0x277D85DE8];
  if (qword_280D17ED0 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF84BC();
  __swift_project_value_buffer(v6, qword_280D0F228);
  v7 = a2;
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAEDC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_21D0C9000, v8, v9, "Reminder List: undo adding new reminder {reminderID: %@}", v10, 0xCu);
    sub_21D0CF7E0(v11, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v11, -1, -1);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  v25[0] = 0;
  v13 = [a3 fetchReminderWithObjectID:v7 error:v25];
  if (v13)
  {
    v14 = v13;
    v15 = v25[0];
    v16 = v14;
    v17 = [v16 store];
    v18 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = v16;
    sub_21D0D32E4(a1, v25);
    v20 = v16;
    v21 = _s15RemindersUICore13TTRListEditorC6remove9reminders11saveRequest11undoContext7Combine6FutureCyyts5Error_pGSaySo11REMReminderCG_So07REMSaveH0CAA07TTRUndoJ0_pSgtFZ_0(inited, v18, v25);

    sub_21D0CF7E0(v25, &unk_27CE60D80, &unk_21DC093F0);
  }

  else
  {
    v22 = v25[0];
    v23 = sub_21DBF52DC();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260, &unk_21DC0CB70);
    swift_allocObject();
    return sub_21DBF911C();
  }

  return v21;
}

uint64_t sub_21D1EFD54(uint64_t (*a1)(uint64_t *))
{
  v2 = 0;
  v3 = 0;
  return a1(&v2);
}

uint64_t TTRRemindersListInteractor.registerUndoToSaveUncommittedReminder(_:)(void *a1)
{
  TTRRemindersListInteractor.undoContext.getter(&v15);
  if (!v16)
  {
    return sub_21D0CF7E0(&v15, &unk_27CE60D80, &unk_21DC093F0);
  }

  sub_21D0D0FD0(&v15, v17);
  v2 = [a1 listChangeItem];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 objectID];
    v16 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    *&v15 = v4;
    v5 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);
    *&v13 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21DC08D00;
    sub_21D0CEB98(&v15, v6 + 32);
    sub_21D0CF2E8(&v13, (v6 + 64));
    __swift_destroy_boxed_opaque_existential_0(&v15);
    v7 = v18;
    v8 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    *&v15 = v6;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = v3;
    v10 = a1;
    v11 = v3;
    TTRUndoContext.registerUndo(forEditing:action:)(&v15, sub_21D2282C8, v9, v7, v8);
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t sub_21D1EFF78(void *a1, void *a2, void *a3)
{
  v46 = a1;
  v5 = sub_21DBF4CAC();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 objectID];
  if (qword_280D17ED0 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_280D0F228);
  v12 = v10;
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAEDC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_21D0C9000, v13, v14, "Reminder List: undo discarding uncommitted reminder {reminderID: %@}", v15, 0xCu);
    sub_21D0CF7E0(v16, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  sub_21D0D32E4(v46, v52);
  sub_21D0D3954(v52, v50, &unk_27CE60D80, &unk_21DC093F0);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v18 = qword_280D1AA18;
  sub_21D0CF7E0(v52, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRListEditor();
  v19 = swift_allocObject();
  v48 = type metadata accessor for TTRUserDefaults();
  v49 = &protocol witness table for TTRUserDefaults;
  *&v47 = v18;
  *(v19 + 64) = 0;
  *(v19 + 16) = a3;
  v20 = v50[1];
  *(v19 + 24) = v50[0];
  *(v19 + 40) = v20;
  *(v19 + 56) = v51;
  swift_beginAccess();
  *(v19 + 64) = 0;
  sub_21D0D0FD0(&v47, v19 + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = v12;
  v22 = v12;
  v23 = v18;
  v24 = a3;
  sub_21D182B38(sub_21D22D104, v21);

  v25 = [a2 titleAsString];
  if (!v25)
  {
    goto LABEL_11;
  }

  v26 = v25;
  v27 = sub_21DBFA16C();
  v29 = v28;

  v52[0] = v27;
  v52[1] = v29;
  sub_21DBF4C5C();
  sub_21D176F0C();
  v30 = sub_21DBFBB3C();
  v32 = v31;
  (*(v6 + 8))(v9, v5);

  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
LABEL_11:
    sub_21D0D32E4(v46, v52);
    sub_21D0D3954(v52, v50, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRReminderEditor();
    inited = swift_initStackObject();
    *(inited + 72) = 0;
    *(inited + 16) = a2;
    sub_21D0D3954(v50, inited + 24, &unk_27CE60D80, &unk_21DC093F0);
    v35 = a2;
    v46 = [v35 fetchedCurrentDueDateDeltaAlert];
    sub_21D0CF7E0(v52, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0CF7E0(v50, &unk_27CE60D80, &unk_21DC093F0);
    v48 = sub_21D0D8CF0(0, &unk_280D177F0, 0x277D44680);
    v49 = &protocol witness table for REMListChangeItem;
    *&v47 = v24;
    v36 = v24;
    _s15RemindersUICore21TTRLocalizableStringsO6CommonO28defaultTitleForBlankReminder19effectiveParentListSSAA15TTRListProtocol_pSg_tFZ_0(&v47);
    sub_21D0CF7E0(&v47, &qword_27CE59DC0, &qword_21DC0FBF0);
    v37 = v22;
    v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v39 = sub_21DBFA12C();

    v40 = [v38 initWithString_];

    sub_21D9CA3E0(v40, 0, 1);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 24, &unk_27CE60D80, &unk_21DC093F0);

    v22 = v37;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = a2;
  *(v41 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260, &unk_21DC0CB70);
  swift_allocObject();
  v42 = v22;
  v43 = a2;
  v44 = sub_21DBF911C();

  return v44;
}

void sub_21D1F0568(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [*(*a1 + 16) saveRequest];
  v4 = [v3 store];

  v9[0] = 0;
  v5 = [v4 fetchReminderWithObjectID:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
    TTRListEditor.remove(reminder:)(v5);
  }

  else
  {
    v7 = v9[0];
    v8 = sub_21DBF52DC();

    swift_willThrow();
  }
}

void sub_21D1F0670(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = [a3 saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v10 = sub_21DBFB12C();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = sub_21D1D20C4;
  v11[4] = v8;
  v14[4] = sub_21D22D114;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21D11E5E4;
  v14[3] = &block_descriptor_407;
  v12 = _Block_copy(v14);
  v13 = a4;

  [v9 saveWithQueue:v10 completion:v12];
  _Block_release(v12);
}

void sub_21D1F07E0(void *a1, void *a2, void (*a3)(void, void))
{
  if (a1)
  {
    v6 = a1;
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_280D0F228);
    v8 = a1;
    v9 = a2;
    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAEBC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = a3;
      v15 = swift_slowAlloc();
      v29 = v15;
      *v12 = 136315394;
      swift_getErrorValue();
      v16 = sub_21DBFC75C();
      v18 = sub_21D0CDFB4(v16, v17, &v29);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2112;
      *(v12 + 14) = v9;
      *v13 = v9;
      v19 = v9;
      _os_log_impl(&dword_21D0C9000, v10, v11, "Reminder List: failed to save uncommitted reminder {error: %s, reminderID: %@}", v12, 0x16u);
      sub_21D0CF7E0(v13, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      v20 = v15;
      a3 = v14;
      MEMORY[0x223D46520](v20, -1, -1);
      MEMORY[0x223D46520](v12, -1, -1);
    }

    v21 = a1;
    a3(a1, 1);
  }

  else
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_280D0F228);
    v23 = a2;
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAEDC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&dword_21D0C9000, v24, v25, "Reminder List: saved uncommitted reminder {reminderID: %@}", v26, 0xCu);
      sub_21D0CF7E0(v27, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    a3(0, 0);
  }
}

id TTRRemindersListInteractor.changeItem(for:)(uint64_t a1)
{
  return sub_21D1F0B5C(a1, &selRef_updateAccount_);
}

{
  return sub_21D1F0B5C(a1, &selRef_updateList_);
}

{
  return sub_21D1F0B5C(a1, &selRef_updateSmartList_);
}

{
  return sub_21D1F0B5C(a1, &selRef_updateTemplate_);
}

id sub_21D1F0B5C(uint64_t a1, SEL *a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v5 setNotifyChangeDelegate_];
  v6 = [v5 *a2];

  return v6;
}

void TTRRemindersListInteractor.setSortingStyle(sortingStyle:for:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_21DBF70DC();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_canChangeSortingStyle) == 1)
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = [*a2 sortingStyle];
    sub_21DBFAF7C();

    sub_21D0F1C20(&qword_27CE58DB0, MEMORY[0x277D45430], MEMORY[0x277D45440]);
    v13 = sub_21DBFA10C();
    v14 = (*(v6 + 8))(v9, v5);
    if (v11)
    {
      if (v11 == 1)
      {
        if (v13)
        {
          return;
        }

        MEMORY[0x28223BE20](v14);
        *(&v19 - 2) = a1;
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        sub_21D20C818(v10, &v21, sub_21D228300, (&v19 - 4), 0, 0);
      }

      else
      {
        if (v13)
        {
          return;
        }

        MEMORY[0x28223BE20](v14);
        *(&v19 - 2) = a1;
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        sub_21D20C56C(v10, &v21, sub_21D2282D0, (&v19 - 4), 0, 0);
      }
    }

    else
    {
      if (v13)
      {
        return;
      }

      MEMORY[0x28223BE20](v14);
      *(&v19 - 2) = a1;
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      sub_21D20CAC4(v10, &v21, sub_21D228330, (&v19 - 4), 0, 0);
    }

    sub_21D0CF7E0(&v21, &unk_27CE60D80, &unk_21DC093F0);
  }

  else
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_280D0F228);
    v20 = sub_21DBF84AC();
    v16 = sub_21DBFAEBC();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21D0C9000, v20, v16, "Illegal attempt to change sorting style.", v17, 2u);
      MEMORY[0x223D46520](v17, -1, -1);
    }

    v18 = v20;
  }
}

void sub_21D1F0F80(uint64_t a1, uint64_t a2, void (*a3)(id, char *))
{
  v4 = sub_21DBF709C();
  v5 = 2;
  a3(v4, &v5);
}

uint64_t TTRRemindersListInteractor.move(reminders:to:position:)(unint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *(a3 + 8);
  v5 = *a3;
  v6 = v3;
  return sub_21D1F1024(a1, a2, &v5, 0);
}

uint64_t sub_21D1F1024(unint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a3;
  v10 = *(a3 + 8);
  if (a1 >> 62)
  {
    v11 = sub_21DBFBD7C();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12._rawValue = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = [a2 list];
    v26[0] = v12._rawValue;
    sub_21D562354(inited);
    v19 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(v12, 1);
    [v19 setNotifyChangeDelegate_];

    v27 = v9;
    v28 = v10;
    TTRRemindersListInteractor.undoContext.getter(v26);
    sub_21D205B3C(a1, a2, &v27, a4, v19, v26);
    sub_21D0CF7E0(v26, &unk_27CE60D80, &unk_21DC093F0);
    v20 = (v5 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer);
    v21 = *(v5 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 24);
    v22 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *(v23 + 24) = a2;
    v24 = *(v22 + 16);
    sub_21DBF8E0C();
    v25 = a2;
    v24(v19, sub_21D22D0D0, v23, v21, v22);
  }

  v26[0] = MEMORY[0x277D84F90];
  result = sub_21DBFC01C();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](v14, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      v17 = [v15 list];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v11 != v14);
    v12._rawValue = v26[0];
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t TTRRemindersListInteractor.move(reminders:to:position:initialUncompletedRemindersInTargetList:)(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v6 = *a3;
  v7 = v4;
  return sub_21D1F1024(a1, a2, &v6, a4);
}

uint64_t TTRRemindersListInteractor.move(reminders:to:position:initialSectionIDByReminderID:)(unint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v6 = *a3;
  v7 = v4;
  return sub_21D1F1358(a1, a2, &v6, a4, 0);
}

uint64_t sub_21D1F1358(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v96 = *a3;
  v98 = *(a3 + 8);
  if (a1 >> 62)
  {
    v9 = sub_21DBFBD7C();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10._rawValue = MEMORY[0x277D84F90];
  v93 = a4;
  v97 = a5;
  if (v9)
  {
    *&v112[0] = MEMORY[0x277D84F90];
    result = sub_21DBFC01C();
    if (v9 < 0)
    {
      __break(1u);
      goto LABEL_59;
    }

    v12 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223D44740](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = [v13 list];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v9 != v12);
    v10._rawValue = *&v112[0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = a2;
  *&v112[0] = v10;
  v17 = a2;
  sub_21D562354(inited);
  v18 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(v10, 1);

  [v18 setNotifyChangeDelegate_];

  v95 = v17;
  if (!v9)
  {
    v91 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  *&v112[0] = MEMORY[0x277D84F90];
  result = sub_21DBFC01C();
  if (v9 < 0)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v19 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x223D44740](v19, a1);
    }

    else
    {
      v20 = *(a1 + 8 * v19 + 32);
    }

    v21 = v20;
    ++v19;
    v22 = [v20 objectID];

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
  }

  while (v9 != v19);
  v91 = *&v112[0];
LABEL_20:
  TTRRemindersListInteractor.undoContext.getter(v112);
  sub_21D0D3954(v112, v111, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0D3954(v111, v109, &unk_27CE60D80, &unk_21DC093F0);
  v23 = v95;
  v24 = v18;
  v95 = [v24 updateList_];
  sub_21D0D3954(v109, &v106, &unk_27CE60D80, &unk_21DC093F0);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v25 = qword_280D1AA18;
  sub_21D0CF7E0(v109, &unk_27CE60D80, &unk_21DC093F0);
  v90 = type metadata accessor for TTRListEditor();
  v26 = swift_initStackObject();
  v104 = type metadata accessor for TTRUserDefaults();
  v105 = &protocol witness table for TTRUserDefaults;
  v89 = v104;
  *&v103 = v25;
  v88 = v25;
  sub_21D0CF7E0(v111, &unk_27CE60D80, &unk_21DC093F0);
  *(v26 + 64) = 0;
  *(v26 + 16) = v95;
  v27 = v108;
  v28 = v107;
  *(v26 + 24) = v106;
  *(v26 + 40) = v28;
  *(v26 + 56) = v27;
  swift_beginAccess();
  *(v26 + 64) = 0;
  v29 = v26;
  sub_21D0D0FD0(&v103, v26 + 72);

  if (v97)
  {
    sub_21D2272C4(v97, v24, v26, v30);
  }

  if (!v98)
  {
    sub_21D157850(v96, 0);
    v97 = [v24 updateReminder_];

    goto LABEL_30;
  }

  if (v98 != 1)
  {
    if (!v96)
    {
      sub_21D157850(0, 2u);
      v97 = 0;
      goto LABEL_32;
    }

    v97 = 1;
    sub_21D157850(1, 2u);
LABEL_30:
    v102 = MEMORY[0x277D84F90];
    v31 = sub_21DBF8E0C();
    v32 = a1;
    goto LABEL_33;
  }

  sub_21D157850(v96, 1u);
  v97 = [v24 updateReminder_];

LABEL_32:
  v102 = MEMORY[0x277D84F90];
  v33 = sub_21DBF8E0C();
  v31 = sub_21D1E3EEC(v33, sub_21D9D9774, sub_21D565304, sub_21D256E5C);
  v32 = v31;
LABEL_33:
  MEMORY[0x28223BE20](v31);
  v95 = v24;
  v84[2] = v24;
  v84[3] = v99;
  v84[4] = v112;
  v84[5] = &v102;
  v92 = v29;
  v84[6] = v29;
  v84[7] = v97;
  v85 = v98;
  sub_21D173B74(sub_21D22D4D8, v84, v32);

  sub_21D0D3954(v112, &v100, &unk_27CE60D80, &unk_21DC093F0);
  v94 = v23;
  if (v101)
  {
    v87 = 0;
    sub_21D0D0FD0(&v100, &v103);
    v34 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA8, &unk_21DC0D0D0);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_21DC08D00;
    v35 = MEMORY[0x277D84F90];
    if (v9)
    {
      *&v100 = MEMORY[0x277D84F90];
      result = sub_21DBFC01C();
      if (v9 < 0)
      {
LABEL_61:
        __break(1u);
        return result;
      }

      v36 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x223D44740](v36, a1);
        }

        else
        {
          v37 = *(a1 + 8 * v36 + 32);
        }

        v38 = v37;
        ++v36;
        v39 = [v37 objectID];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v9 != v36);
      v35 = v100;
      v23 = v94;
    }

    v40 = [v23 objectID];
    v41 = v86;
    *(v86 + 32) = v35;
    *(v41 + 40) = v40;
    v42 = v96;
    *(v41 + 48) = v96;
    v43 = v98;
    *(v41 + 56) = v98;
    sub_21D157850(v42, v43);
    v44 = v34;
    sub_21D2080D0(v34);
    TTRUndoNavigationEditingTarget.init(reminderIDs:)(v45);
    v46 = v100;
    v47 = v104;
    v96 = v105;
    v87 = __swift_project_boxed_opaque_existential_1(&v103, v104);
    *&v100 = v46;
    v48 = swift_allocObject();
    v49 = v99;
    v48[2] = v99;
    v48[3] = v44;
    v48[4] = v41;
    v50 = v49;
    sub_21DBF8E0C();
    TTRUndoContext.registerUndo(forEditing:action:)(&v100, sub_21D22D518, v48, v47, v96);
    v51 = v98;

    __swift_destroy_boxed_opaque_existential_0(&v103);
  }

  else
  {
    sub_21D0CF7E0(&v100, &unk_27CE60D80, &unk_21DC093F0);
    v49 = v99;
    v51 = v98;
  }

  v52 = *MEMORY[0x277D44BF0];
  LOBYTE(v103) = 1;
  TTRListEditor.edit(sortingStyle:reason:)(v52, &v103);

  sub_21D157478(v97, v51);

  sub_21D0CF7E0(v112, &unk_27CE60D80, &unk_21DC093F0);
  v53 = (v49 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer);
  sub_21D0D32E4(v49 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, v112);
  type metadata accessor for TTRRemindersListInteractorSectionsCapability();
  v54 = swift_allocObject();
  *(v54 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D0FD0(v112, v54 + 32);
  swift_beginAccess();
  *(v54 + 24) = &protocol witness table for TTRRemindersListInteractor;
  swift_unknownObjectWeakAssign();
  v55 = v95;
  v99 = v53;
  if (v9)
  {
    *&v112[0] = MEMORY[0x277D84F90];
    v56 = v95;
    result = sub_21DBFC01C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v57 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x223D44740](v57, a1);
        }

        else
        {
          v58 = *(a1 + 8 * v57 + 32);
        }

        v59 = v58;
        ++v57;
        v60 = [v58 objectID];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v9 != v57);
      v61 = *&v112[0];
      v55 = v95;
      goto LABEL_53;
    }

    goto LABEL_60;
  }

  v62 = v95;
  v61 = MEMORY[0x277D84F90];
LABEL_53:
  if (swift_unknownObjectWeakLoadStrong())
  {
    v63 = *(v54 + 24);
    ObjectType = swift_getObjectType();
    v65 = *(v63 + 8);
    v66 = v94;
    v67 = v94;
    v68 = v55;
    v65(v112, v54, &protocol witness table for TTRRemindersListInteractorSectionsCapability, ObjectType, v63);
    swift_unknownObjectRelease();
  }

  else
  {
    v113 = 0;
    memset(v112, 0, sizeof(v112));
    v66 = v94;
    v69 = v94;
    v70 = v55;
  }

  sub_21D0D3954(v112, v111, &unk_27CE60D80, &unk_21DC093F0);
  v71 = [v55 updateList_];
  sub_21D0D3954(v111, v109, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0CF7E0(v111, &unk_27CE60D80, &unk_21DC093F0);
  v72 = swift_allocObject();
  *(&v107 + 1) = v89;
  v108 = &protocol witness table for TTRUserDefaults;
  *&v106 = v88;
  v73 = v88;
  sub_21D0CF7E0(v112, &unk_27CE60D80, &unk_21DC093F0);
  *(v72 + 64) = 0;
  *(v72 + 16) = v71;
  v74 = v109[1];
  *(v72 + 24) = v109[0];
  *(v72 + 40) = v74;
  *(v72 + 56) = v110;
  swift_beginAccess();
  *(v72 + 64) = 0;
  sub_21D0D0FD0(&v106, v72 + 72);
  v75 = v66;

  v76 = sub_21DBF8E0C();
  v77 = sub_21D19ED08(v76);

  *&v112[0] = 0;
  TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v77, v112, v93);

  sub_21D1BF9F4(v61);

  v78 = v99[3];
  v79 = v99[4];
  __swift_project_boxed_opaque_existential_1(v99, v78);
  v80 = swift_allocObject();
  *(v80 + 16) = v91;
  *(v80 + 24) = v75;
  v81 = v75;
  v82 = *(v79 + 16);
  v83 = v81;
  v82(v55, sub_21D22D07C, v80, v78, v79);
}

uint64_t TTRRemindersListInteractor.move(reminders:to:position:initialSectionIDByReminderID:initialUncompletedRemindersInTargetList:)(unint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 8);
  v7 = *a3;
  v8 = v5;
  return sub_21D1F1358(a1, a2, &v7, a4, a5);
}

void TTRRemindersListInteractor.move(reminders:to:position:initialSectionIDByReminderID:)(unint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  v16 = a2;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v14 = v6;
  v15 = v7;
  v8 = a2;
  sub_21D1F2014(a1, &v16, &v14, a4, 0, 0, 0);

  v9 = v16;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  v13 = v20;

  sub_21D228360(v9, v10, v11, v12, v13);
}

char *sub_21D1F2014(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id *a5, uint64_t a6, uint64_t a7)
{
  v141 = a6;
  v142 = a7;
  v143 = a5;
  v9 = *(a2 + 8);
  v148 = *a2;
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v137 = v9;
  v138 = v11;
  v139 = v10;
  v140 = a4;
  LODWORD(v12) = *(a2 + 32);
  v145 = *a3;
  v146 = *(a3 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80, &qword_21DC09CB0);
  v13 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  sub_21D0D0F1C(&qword_27CE589E8, &qword_27CE5DF80, &qword_21DC09CB0, MEMORY[0x277D83970]);
  sub_21D19F2B8(&qword_280D17870, &qword_280D17880, 0x277D44700);
  v154 = v13;
  v14 = sub_21DBFA42C();
  v144 = 0;
  *&v170[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_106;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v16 = &off_278331000;
  LODWORD(v147) = v12;
  if (v15)
  {
    v7 = 0;
    v136 = a1;
    v155 = (a1 + 32);
    v156 = (a1 & 0xFFFFFFFFFFFFFF8);
    a1 &= 0xC000000000000001;
    v17 = (v14 & 0xFFFFFFFFFFFFFF8);
    if (v14 < 0)
    {
      v17 = v14;
    }

    v152 = v17;
    v153 = (v14 & 0xC000000000000001);
    v12 = v14 + 56;
    v149 = a1;
    v150 = v15;
    while (1)
    {
      if (a1)
      {
        v18 = MEMORY[0x223D44740](v7, v136);
      }

      else
      {
        if (v7 >= *(v156 + 2))
        {
          goto LABEL_105;
        }

        v18 = v155[v7];
      }

      v19 = v18;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        v15 = sub_21DBFBD7C();
        goto LABEL_3;
      }

      v21 = [v18 parentReminder];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 v16[425]];

        if (v23)
        {
          if (v153)
          {
            v24 = v23;
            v25 = sub_21DBFBDCC();

            if (v25)
            {

              goto LABEL_9;
            }
          }

          else
          {
            if (*(v14 + 16))
            {
              v26 = sub_21DBFB62C();
              v27 = -1 << *(v14 + 32);
              v28 = v26 & ~v27;
              if ((*(v12 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
              {
                v29 = ~v27;
                while (1)
                {
                  v30 = *(*(v14 + 48) + 8 * v28);
                  v31 = sub_21DBFB63C();

                  if (v31)
                  {
                    break;
                  }

                  v28 = (v28 + 1) & v29;
                  if (((*(v12 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
                  {
                    goto LABEL_7;
                  }
                }

                v16 = &off_278331000;
                a1 = v149;
                v15 = v150;
                goto LABEL_9;
              }
            }

LABEL_7:

            v16 = &off_278331000;
            a1 = v149;
            v15 = v150;
          }
        }
      }

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
LABEL_9:
      if (v7 == v15)
      {
        v32 = *&v170[0];
        LODWORD(v12) = v147;
        goto LABEL_29;
      }
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_29:

  v33 = &selRef__setContentViewMarginType_;
  if ((v12 & 0x80000000) != 0)
  {
    v34 = v148;
    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_107;
    }
  }

  else
  {
    v34 = [v148 list];
    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_107;
    }
  }

  if ((v32 & 0x4000000000000000) == 0)
  {
    v35 = *(v32 + 16);
    goto LABEL_35;
  }

LABEL_107:
  v35 = sub_21DBFBD7C();
LABEL_35:
  v36 = MEMORY[0x277D84F90];
  if (v35)
  {
    *&v170[0] = MEMORY[0x277D84F90];
    v37 = v170;
    sub_21DBFC01C();
    if (v35 < 0)
    {
      __break(1u);
      goto LABEL_109;
    }

    v38 = 0;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x223D44740](v38, v32);
      }

      else
      {
        v39 = *(v32 + 8 * v38 + 32);
      }

      v40 = v39;
      ++v38;
      v41 = [v39 list];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v35 != v38);
    v36 = *&v170[0];
    LODWORD(v12) = v147;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = v34;
  *&v170[0] = v36;
  v156 = v34;
  sub_21D562354(inited);
  v16 = *&v170[0];
  v34 = v151;
  v7 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(v16, 1);

  [v7 setNotifyChangeDelegate_];

  v43 = MEMORY[0x277D84F90];
  v33 = &off_278331000;
  if (!v35)
  {
    goto LABEL_51;
  }

  *&v170[0] = MEMORY[0x277D84F90];
  v37 = v170;
  sub_21DBFC01C();
  if ((v35 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x223D44740](v44, v32);
      }

      else
      {
        v45 = *(v32 + 8 * v44 + 32);
      }

      v46 = v45;
      ++v44;
      v47 = [v45 objectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v35 != v44);
    v43 = *&v170[0];
    v33 = &off_278331000;
LABEL_51:
    v153 = v43;
    if ((v12 & 0x80000000) != 0)
    {
      v55 = v156;
      v56 = v7;
      TTRRemindersListInteractor.undoContext.getter(v170);
      sub_21D0D3954(v170, v169, &unk_27CE60D80, &unk_21DC093F0);
      v155 = v55;
      v57 = [v56 updateList_];
      sub_21D0D3954(v169, &v166, &unk_27CE60D80, &unk_21DC093F0);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      v58 = qword_280D1AA18;
      sub_21D0CF7E0(v169, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRListEditor();
      v59 = swift_allocObject();
      *(&v164 + 1) = type metadata accessor for TTRUserDefaults();
      v165 = &protocol witness table for TTRUserDefaults;
      *&v163 = v58;
      v60 = v58;
      sub_21D0CF7E0(v170, &unk_27CE60D80, &unk_21DC093F0);
      *(v59 + 64) = 0;
      *(v59 + 16) = v57;
      v61 = v167;
      *(v59 + 24) = v166;
      *(v59 + 40) = v61;
      *(v59 + 56) = v168;
      swift_beginAccess();
      *(v59 + 64) = 0;
      sub_21D0D0FD0(&v163, v59 + 72);
      v54 = v155;

      v62 = TTRListEditor.addNewSection(with:displayName:)(v137, v138, v139);
      if (!v62)
      {
        v35 = v56;

        v33 = &off_278331000;
        if (qword_280D17ED0 == -1)
        {
LABEL_71:
          v68 = sub_21DBF84BC();
          __swift_project_value_buffer(v68, qword_280D0F228);
          v69 = v54;
          v70 = sub_21DBF84AC();
          v71 = sub_21DBFAECC();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            *v72 = 138412290;
            v74 = [v69 v33[425]];
            *(v72 + 4) = v74;
            *v73 = v74;
            _os_log_impl(&dword_21D0C9000, v70, v71, "failed to add new section with displayName given {groupID: %@}", v72, 0xCu);
            sub_21D0CF7E0(v73, &unk_27CE60070, &unk_21DC09550);
            MEMORY[0x223D46520](v73, -1, -1);
            MEMORY[0x223D46520](v72, -1, -1);
          }

          goto LABEL_74;
        }

LABEL_114:
        swift_once();
        goto LABEL_71;
      }

      v63 = v62;
      v64 = [v62 remObjectID];
      v33 = &off_278331000;
      if (v147)
      {
        v65 = sub_21DBFA12C();
        [v63 setCanonicalName_];
      }

      v48 = v64;
      if (v64)
      {
LABEL_53:
        v155 = v48;
        TTRRemindersListInteractor.undoContext.getter(v170);
        v16 = &unk_27CE60D80;
        v34 = &unk_21DC093F0;
        sub_21D0D3954(v170, v169, &unk_27CE60D80, &unk_21DC093F0);
        sub_21D0D3954(v169, &v166, &unk_27CE60D80, &unk_21DC093F0);
        v37 = v156;
        v7 = v7;
        v156 = [v7 updateList_];
        sub_21D0D3954(&v166, &v163, &unk_27CE60D80, &unk_21DC093F0);
        if (qword_280D1AA10 == -1)
        {
          goto LABEL_54;
        }

        goto LABEL_110;
      }
    }

    else
    {
      v48 = [v148 remObjectID];
      if (v48)
      {
        goto LABEL_53;
      }
    }

LABEL_74:

    return MEMORY[0x277D84F90];
  }

LABEL_109:
  __break(1u);
LABEL_110:
  swift_once();
LABEL_54:
  v49 = qword_280D1AA18;
  sub_21D0CF7E0(&v166, v16, v34);
  v148 = type metadata accessor for TTRListEditor();
  v50 = swift_initStackObject();
  v161 = type metadata accessor for TTRUserDefaults();
  v162 = &protocol witness table for TTRUserDefaults;
  v147 = v161;
  *&v160 = v49;
  v139 = v49;
  sub_21D0CF7E0(v169, v16, v34);
  *(v50 + 64) = 0;
  *(v50 + 16) = v156;
  v51 = v165;
  v52 = v164;
  *(v50 + 24) = v163;
  *(v50 + 40) = v52;
  *(v50 + 56) = v51;
  swift_beginAccess();
  *(v50 + 64) = 0;
  sub_21D0D0FD0(&v160, v50 + 72);
  v152 = v37;

  if (v143)
  {
    sub_21D2272C4(v143, v7, v50, v53);
  }

  v54 = v146;
  if (!v146)
  {
    sub_21D157850(v145, 0);
    v150 = [v7 updateReminder_];

    goto LABEL_69;
  }

  if (v146 != 1)
  {
    if (!v145)
    {
      sub_21D157850(0, 2u);
      v150 = 0;
      goto LABEL_76;
    }

    v150 = 1;
    sub_21D157850(1, 2u);
LABEL_69:
    v159 = MEMORY[0x277D84F90];

    v67 = v32;
    goto LABEL_77;
  }

  sub_21D157850(v145, 1u);
  v150 = [v7 updateReminder_];

LABEL_76:
  v159 = MEMORY[0x277D84F90];

  v66 = sub_21D1E3EEC(v76, sub_21D9D9774, sub_21D565304, sub_21D256E5C);
  v67 = v66;
LABEL_77:
  MEMORY[0x28223BE20](v66);
  v154 = v7;
  v134[2] = v7;
  v134[3] = v151;
  v134[4] = v170;
  v134[5] = &v159;
  v149 = v50;
  v134[6] = v50;
  v134[7] = v150;
  v135 = v54;
  v77 = v144;
  v78 = sub_21D173B74(sub_21D22CEA0, v134, v67);

  sub_21D0D3954(v170, &v157, &unk_27CE60D80, &unk_21DC093F0);
  v156 = v78;
  if (v158)
  {
    v143 = v77;
    sub_21D0D0FD0(&v157, &v160);
    v144 = v159;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA8, &unk_21DC0D0D0);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_21DC08D00;
    if (v35)
    {
      *&v157 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      if (v35 < 0)
      {
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v80 = 0;
      do
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v81 = MEMORY[0x223D44740](v80, v32);
        }

        else
        {
          v81 = *(v32 + 8 * v80 + 32);
        }

        v82 = v81;
        ++v80;
        v83 = [v81 v33[425]];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v35 != v80);

      v84 = v157;
      LOBYTE(v54) = v146;
    }

    else
    {

      v84 = MEMORY[0x277D84F90];
    }

    v86 = [v152 v33[425]];
    v87 = v79;
    *(v79 + 32) = v84;
    *(v79 + 40) = v86;
    v88 = v145;
    *(v79 + 48) = v145;
    *(v79 + 56) = v54;
    sub_21D157850(v88, v54);
    v54 = v144;
    sub_21D2080D0(v144);
    TTRUndoNavigationEditingTarget.init(reminderIDs:)(v89);
    v90 = v157;
    v91 = v161;
    v92 = v162;
    __swift_project_boxed_opaque_existential_1(&v160, v161);
    *&v157 = v90;
    v35 = swift_allocObject();
    v85 = v151;
    *(v35 + 16) = v151;
    *(v35 + 24) = v54;
    *(v35 + 32) = v87;
    v93 = v85;
    sub_21DBF8E0C();
    LOBYTE(v54) = v146;
    TTRUndoContext.registerUndo(forEditing:action:)(&v157, sub_21D22CF48, v35, v91, v92);

    __swift_destroy_boxed_opaque_existential_0(&v160);
    v78 = v156;
  }

  else
  {

    sub_21D0CF7E0(&v157, &unk_27CE60D80, &unk_21DC093F0);
    v85 = v151;
  }

  v94 = *MEMORY[0x277D44BF0];
  LOBYTE(v160) = 1;
  TTRListEditor.edit(sortingStyle:reason:)(v94, &v160);

  sub_21D157478(v150, v54);

  sub_21D0CF7E0(v170, &unk_27CE60D80, &unk_21DC093F0);
  v95 = &v85[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer];
  sub_21D0D32E4(&v85[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer], v170);
  type metadata accessor for TTRRemindersListInteractorSectionsCapability();
  v96 = swift_allocObject();
  *(v96 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D0FD0(v170, v96 + 32);
  swift_beginAccess();
  *(v96 + 24) = &protocol witness table for TTRRemindersListInteractor;
  swift_unknownObjectWeakAssign();
  if (v78 >> 62)
  {
    v97 = sub_21DBFBD7C();
  }

  else
  {
    v97 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = v155;
  v54 = v152;
  if (v97)
  {
    *&v170[0] = MEMORY[0x277D84F90];
    v99 = v152;
    v100 = v154;
    v101 = v98;
    sub_21DBFC01C();
    if ((v97 & 0x8000000000000000) == 0)
    {
      v102 = 0;
      v103 = v78;
      do
      {
        if ((v78 & 0xC000000000000001) != 0)
        {
          v104 = MEMORY[0x223D44740](v102);
        }

        else
        {
          v104 = v103[v102 + 4];
        }

        v105 = v104;
        ++v102;
        v106 = [v104 v33[425]];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v103 = v156;
      }

      while (v97 != v102);
      v107 = *&v170[0];
      v54 = v152;
      goto LABEL_100;
    }

    __break(1u);
    goto LABEL_113;
  }

  v108 = v152;
  v109 = v154;
  v110 = v98;
  v107 = MEMORY[0x277D84F90];
LABEL_100:
  v152 = v95;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v111 = *(v96 + 24);
    ObjectType = swift_getObjectType();
    v113 = *(v111 + 8);
    v114 = v54;
    v115 = v154;
    v116 = v154;
    v113(v170, v96, &protocol witness table for TTRRemindersListInteractorSectionsCapability, ObjectType, v111);
    swift_unknownObjectRelease();
  }

  else
  {
    v171 = 0;
    memset(v170, 0, sizeof(v170));
    v117 = v54;
    v115 = v154;
    v118 = v154;
  }

  sub_21D0D3954(v170, v169, &unk_27CE60D80, &unk_21DC093F0);
  v119 = [v115 updateList_];
  sub_21D0D3954(v169, &v166, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0CF7E0(v169, &unk_27CE60D80, &unk_21DC093F0);
  v120 = swift_allocObject();
  *(&v164 + 1) = v147;
  v165 = &protocol witness table for TTRUserDefaults;
  *&v163 = v139;
  v121 = v139;
  sub_21D0CF7E0(v170, &unk_27CE60D80, &unk_21DC093F0);
  *(v120 + 64) = 0;
  *(v120 + 16) = v119;
  v122 = v167;
  *(v120 + 24) = v166;
  *(v120 + 40) = v122;
  *(v120 + 56) = v168;
  swift_beginAccess();
  *(v120 + 64) = 0;
  sub_21D0D0FD0(&v163, v120 + 72);

  v123 = sub_21DBF8E0C();
  v124 = sub_21D19ED08(v123);

  *&v170[0] = v155;
  v125 = v155;
  TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v124, v170, v140);

  sub_21D1BF9F4(v107);

  v126 = *(v152 + 3);
  v127 = *(v152 + 4);
  __swift_project_boxed_opaque_existential_1(v152, v126);
  v128 = swift_allocObject();
  v129 = v141;
  v130 = v142;
  v128[2] = v141;
  v128[3] = v130;
  v128[4] = v153;
  v128[5] = v54;
  v131 = *(v127 + 16);
  v153 = v54;
  sub_21D0D0E78(v129, v130);
  v132 = v154;
  v131(v154, sub_21D22CF08, v128, v126, v127);

  v133 = v155;
  return v156;
}

void TTRRemindersListInteractor.move(reminders:to:position:initialSectionIDByReminderID:initialUncompletedRemindersInTargetList:)(unint64_t a1, void *a2, uint64_t *a3, uint64_t a4, id *a5)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v18 = a2;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v16 = v8;
  v17 = v9;
  v10 = a2;
  sub_21D1F2014(a1, &v18, &v16, a4, a5, 0, 0);

  v11 = v18;
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v15 = v22;

  sub_21D228360(v11, v12, v13, v14, v15);
}

char *TTRRemindersListInteractor.move(reminders:to:position:)(unint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v11 = a2;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v9 = v4;
  v10 = v5;
  v6 = a2;
  v7 = sub_21D1F2014(a1, &v11, &v9, 0, 0, 0, 0);
  sub_21D228360(v11, v12, v13, v14, v15);
  return v7;
}

void TTRRemindersListInteractor.move(reminders:to:position:initialSectionIDByReminderID:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, _OWORD *a6, char *a7)
{
  sub_21D1F4604(a1, a2, a3, a4, a5, a6, a7, sub_21D1F345C);
}

{
  sub_21D1F4604(a1, a2, a3, a4, a5, a6, a7, sub_21D1F46BC);
}

void sub_21D1F345C(NSObject *a1, uint64_t a2, uint64_t a3, void *a4, __n128 a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v149 = a9;
  v141 = a4;
  v157 = sub_21DBF6D7C();
  v159 = *(v157 - 8);
  *&v17 = MEMORY[0x28223BE20](v157).n128_u64[0];
  v158 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v20 = *(a2 + 32);
  v21 = *a3;
  LODWORD(v152) = *(a3 + 8);
  v23 = *a7;
  v22 = a7[1];
  v146 = a7[2];
  v145 = *(a7 + 24);
  v24 = a7[4];
  v150 = v21;
  v151 = v24;
  v144 = *(a7 + 20);
  v160 = a1;
  v153 = a1 >> 62;
  v26 = a7[6];
  v25 = a7[7];
  v142 = v23;
  v143 = v26;
  v154 = v25;
  v155 = v22;
  v147 = *a8;
  v148 = v11;
  if (!v20)
  {
    v156 = [v19 smartList];
    a8 = [v156 store];
    v41 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

    sub_21D0D32E4(v11 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, &v165);
    type metadata accessor for TTRRemindersListInteractorSectionsCapability();
    v42 = swift_allocObject();
    v42[3] = 0;
    swift_unknownObjectWeakInit();
    sub_21D0D0FD0(&v165, (v42 + 4));
    swift_beginAccess();
    v42[3] = &protocol witness table for TTRRemindersListInteractor;
    v140 = v42;
    swift_unknownObjectWeakAssign();
    v43 = v41;
    v44 = v19;
    v31 = v43;
    v32 = &off_278331000;
    v45 = [v44 objectID];
    if (v153)
    {
      goto LABEL_85;
    }

    v46 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

  v27 = *(a2 + 8);
  v28 = *(a2 + 16);
  v29 = *(a2 + 24);
  v139 = v29;
  v140 = v28;
  if (v20 == 1)
  {
    v137 = v27;
    sub_21D125950(v19, v27, v28, v29, 1u);
    v138 = v19;
    v156 = v19;
    v30 = [v156 store];
    v31 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

    sub_21D0D32E4(v11 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, &v165);
    type metadata accessor for TTRRemindersListInteractorSectionsCapability();
    v32 = swift_allocObject();
    *(v32 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_21D0D0FD0(&v165, v32 + 32);
    swift_beginAccess();
    *(v32 + 24) = &protocol witness table for TTRRemindersListInteractor;
    swift_unknownObjectWeakAssign();
    if (v153)
    {
      v33 = sub_21DBFBD7C();
      if (v33)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v33 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
LABEL_5:
        v136 = v32;
        *&v165 = MEMORY[0x277D84F90];
        v34 = v31;
        v35 = &v165;
        sub_21DBFC01C();
        if (v33 < 0)
        {
          __break(1u);
          goto LABEL_87;
        }

        v36 = 0;
        v37 = v160 & 0xC000000000000001;
        do
        {
          if (v37)
          {
            v38 = MEMORY[0x223D44740](v36, v160);
          }

          else
          {
            v38 = v160[v36 + 4].isa;
          }

          v39 = v38;
          ++v36;
          v40 = [(objc_class *)v38 objectID];

          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
        }

        while (v33 != v36);
        v32 = v136;
        goto LABEL_44;
      }
    }

    v89 = v31;
LABEL_44:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v90 = *(v32 + 24);
      ObjectType = swift_getObjectType();
      (*(v90 + 8))(&v165, v32, &protocol witness table for TTRRemindersListInteractorSectionsCapability, ObjectType, v90);
      swift_unknownObjectRelease();
    }

    else
    {
      v167 = 0;
      v165 = 0u;
      v166 = 0u;
    }

    sub_21D0D3954(&v165, &v162, &unk_27CE60D80, &unk_21DC093F0);
    v92 = [v31 updateSmartList_];
    sub_21D0CF7E0(&v165, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRSmartListEditor();
    v93 = swift_allocObject();
    *(v93 + 16) = v92;
    v94 = v163;
    *(v93 + 24) = v162;
    *(v93 + 40) = v94;
    *(v93 + 56) = v164;
    *(v93 + 64) = 0;
    v95 = sub_21DBF8E0C();
    v96 = sub_21D19ED08(v95);

    *&v165 = 0;
    TTRSmartListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v96, &v165, v141);

    sub_21D2283C4(v138, v137, v140, v139, 1u);
    goto LABEL_48;
  }

  v52 = v27;
  v53 = v11;
  v54 = v19;
  v55 = [v54 store];
  v56 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  v31 = v56;
  TTRRemindersListInteractor.undoContext.getter(&v165);
  sub_21D0D3954(&v165, &v162, &unk_27CE60D80, &unk_21DC093F0);
  v156 = v54;
  v57 = [v31 updateSmartList_];

  sub_21D0CF7E0(&v165, &unk_27CE60D80, &unk_21DC093F0);
  v32 = type metadata accessor for TTRSmartListEditor();
  v35 = swift_allocObject();
  *(v35 + 2) = v57;
  v58 = v163;
  *(v35 + 24) = v162;
  *(v35 + 40) = v58;
  *(v35 + 7) = v164;
  *(v35 + 64) = 0;
  v59 = TTRSmartListEditor.addNewSection(with:displayName:)(v52);
  if (v59)
  {
    a8 = v59;
    v139 = v32;
    sub_21D0D32E4(v53 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, &v165);
    type metadata accessor for TTRRemindersListInteractorSectionsCapability();
    v60 = swift_allocObject();
    v60[3] = 0;
    swift_unknownObjectWeakInit();
    sub_21D0D0FD0(&v165, (v60 + 4));
    swift_beginAccess();
    v60[3] = &protocol witness table for TTRRemindersListInteractor;
    v137 = v60;
    swift_unknownObjectWeakAssign();
    v32 = &off_278331000;
    v136 = [a8 objectID];
    if (v153)
    {
      goto LABEL_88;
    }

    v61 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_23;
  }

  v23 = v142;
  while (1)
  {
LABEL_48:
    if (v153)
    {
      a8 = sub_21DBFBD7C();
    }

    else
    {
      a8 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v97 = MEMORY[0x277D84F90];
    if (!a8)
    {
      v103 = MEMORY[0x277D84F90];
      goto LABEL_59;
    }

    *&v165 = MEMORY[0x277D84F90];
    v45 = sub_21DBFC01C();
    if ((a8 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    v135 = v45;
    v46 = sub_21DBFBD7C();
    v45 = v135;
LABEL_13:
    v139 = v45;
    if (v46)
    {
      *&v165 = MEMORY[0x277D84F90];
      v35 = &v165;
      sub_21DBFC01C();
      if ((v46 & 0x8000000000000000) == 0)
      {
        v47 = 0;
        v48 = v160 & 0xC000000000000001;
        do
        {
          if (v48)
          {
            v49 = MEMORY[0x223D44740](v47, v160);
          }

          else
          {
            v49 = v160[v47 + 4].isa;
          }

          v50 = v49;
          ++v47;
          v51 = [v49 *(v32 + 3400)];

          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
        }

        while (v46 != v47);
        goto LABEL_31;
      }

LABEL_87:
      __break(1u);
LABEL_88:
      v61 = sub_21DBFBD7C();
LABEL_23:
      v23 = v142;
      v138 = v35;
      v140 = a8;
      if (v61)
      {
        *&v165 = MEMORY[0x277D84F90];
        v62 = v156;
        v63 = v31;
        sub_21DBFC01C();
        if (v61 < 0)
        {
          __break(1u);
          return;
        }

        v64 = 0;
        v65 = v160 & 0xC000000000000001;
        do
        {
          if (v65)
          {
            v66 = MEMORY[0x223D44740](v64, v160);
          }

          else
          {
            v66 = v160[v64 + 4].isa;
          }

          v67 = v66;
          ++v64;
          v68 = [v66 *(v32 + 3400)];

          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
        }

        while (v61 != v64);
      }

      else
      {
        v78 = v156;
        v79 = v31;
      }

      v80 = v137;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v81 = v80[3];
        v82 = swift_getObjectType();
        (*(v81 + 8))(&v165, v80, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v82, v81);
        swift_unknownObjectRelease();
      }

      else
      {
        v167 = 0;
        v165 = 0u;
        v166 = 0u;
      }

      sub_21D0D3954(&v165, &v162, &unk_27CE60D80, &unk_21DC093F0);
      v32 = v156;
      v83 = [v31 updateSmartList_];
      sub_21D0CF7E0(&v165, &unk_27CE60D80, &unk_21DC093F0);
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      v85 = v163;
      *(v84 + 24) = v162;
      *(v84 + 40) = v85;
      *(v84 + 56) = v164;
      *(v84 + 64) = 0;
      v86 = sub_21DBF8E0C();
      v87 = sub_21D19ED08(v86);

      v88 = v136;
      *&v165 = v136;
      TTRSmartListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v87, &v165, v141);
    }

    else
    {
LABEL_31:
      v69 = v140;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v70 = v69[3];
        v71 = swift_getObjectType();
        (*(v70 + 8))(&v165, v69, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v71, v70);
        swift_unknownObjectRelease();
      }

      else
      {
        v167 = 0;
        v165 = 0u;
        v166 = 0u;
      }

      sub_21D0D3954(&v165, &v162, &unk_27CE60D80, &unk_21DC093F0);
      v32 = v156;
      v72 = [v31 updateSmartList_];
      sub_21D0CF7E0(&v165, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRSmartListEditor();
      v73 = swift_allocObject();
      *(v73 + 16) = v72;
      v74 = v163;
      *(v73 + 24) = v162;
      *(v73 + 40) = v74;
      *(v73 + 56) = v164;
      *(v73 + 64) = 0;
      v75 = sub_21DBF8E0C();
      v76 = sub_21D19ED08(v75);

      v77 = v139;
      *&v165 = v139;
      TTRSmartListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v76, &v165, v141);
    }
  }

  v98 = 0;
  v99 = v160 & 0xC000000000000001;
  do
  {
    if (v99)
    {
      v100 = MEMORY[0x223D44740](v98, v160);
    }

    else
    {
      v100 = v160[v98 + 4].isa;
    }

    v101 = v100;
    ++v98;
    v102 = [(objc_class *)v100 objectID];

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
  }

  while (a8 != v98);
  v103 = v165;
  v97 = MEMORY[0x277D84F90];
LABEL_59:
  v104 = v151;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v152)
  {
    if (v152 == 1)
    {
      v32 = [v150 remObjectID];
      v105 = 1;
      if (!a8)
      {
        v106 = 1;
LABEL_76:
        v152 = v106;
        goto LABEL_77;
      }
    }

    else
    {
      v32 = v150 != 0;
      v105 = 2;
      if (!a8)
      {
        v106 = 2;
        goto LABEL_76;
      }
    }
  }

  else
  {
    v32 = [v150 remObjectID];
    v105 = 0;
    if (!a8)
    {
      v152 = 0;
LABEL_77:
      v153 = v32;
      v108 = MEMORY[0x277D84F90];
      goto LABEL_78;
    }
  }

  *&v165 = v97;
  v45 = sub_21D18E718(0, a8 & ~(a8 >> 63), 0);
  if (a8 < 0)
  {
    goto LABEL_84;
  }

  v152 = v105;
  v153 = v32;
  v141 = v104;
  v150 = v103;
  v151 = v31;
  v107 = 0;
  v108 = v165;
  v109 = v160 & 0xC000000000000001;
  do
  {
    if (v109)
    {
      v110 = MEMORY[0x223D44740](v107, v160);
    }

    else
    {
      v110 = v160[v107 + 4].isa;
    }

    v111 = v110;
    v112 = [(objc_class *)v110 remObjectID];
    sub_21DBFADFC();

    [(objc_class *)v111 isCompleted];
    v113 = v158;
    sub_21DBF6D4C();

    *&v165 = v108;
    v115 = v108[2];
    v114 = v108[3];
    if (v115 >= v114 >> 1)
    {
      sub_21D18E718((v114 > 1), v115 + 1, 1);
      v113 = v158;
      v108 = v165;
    }

    ++v107;
    v108[2] = v115 + 1;
    (*(v159 + 32))(v108 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v115, v113, v157);
  }

  while (a8 != v107);
  v103 = v150;
  v31 = v151;
  v104 = v141;
  v23 = v142;
LABEL_78:
  sub_21D0D8CF0(0, &qword_27CE59830, 0x277D446E8);
  *&v165 = v153;
  *(&v165 + 1) = v152;
  *&v166 = 0;
  v160 = sub_21D39D1B0(v104, v144, v143, v154, v23, v155, v108, 0, &v165);
  v167 = 0;
  v165 = 0u;
  v166 = 0u;
  if (v145)
  {
    sub_21D0D3954(&v165, &v162, &unk_27CE60D80, &unk_21DC093F0);
    v116 = v31;
    v117 = v31;
    v118 = v146;
    v119 = [v116 updateTemplate_];
    sub_21D0CF7E0(&v165, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRTemplateEditor();
    inited = swift_initStackObject();
    *(inited + 16) = v119;
    v121 = v164;
    v122 = v163;
    *(inited + 24) = v162;
    *(inited + 40) = v122;
    *(inited + 56) = v121;
    *(inited + 64) = 0;
    v161 = v147;
    sub_21D866814(v160);
    v123 = *MEMORY[0x277D44BF0];
    v161 = 1;
    sub_21D863CB4(v123);
  }

  else
  {
    sub_21D0D3954(&v165, &v162, &unk_27CE60D80, &unk_21DC093F0);
    v116 = v31;
    v117 = v31;
    v118 = v146;
    v124 = [v116 updateSmartList_];
    sub_21D0CF7E0(&v165, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRSmartListEditor();
    inited = swift_initStackObject();
    *(inited + 16) = v124;
    v125 = v164;
    v126 = v163;
    *(inited + 24) = v162;
    *(inited + 40) = v126;
    *(inited + 56) = v125;
    *(inited + 64) = 0;
    v161 = v147;
    sub_21D6532B4(v160);
    v127 = *MEMORY[0x277D44BF0];
    v161 = 1;
    sub_21D64F7E4(v127);
  }

  swift_setDeallocating();

  sub_21D0CF7E0(inited + 24, &unk_27CE60D80, &unk_21DC093F0);
  v128 = *(v148 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 24);
  v129 = *(v148 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 32);
  __swift_project_boxed_opaque_existential_1((v148 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer), v128);
  v130 = swift_allocObject();
  v131 = v149;
  v130[2] = v149;
  v130[3] = a10;
  v130[4] = v103;
  v132 = v156;
  v130[5] = v156;
  v133 = *(v129 + 16);
  sub_21D0D0E78(v131, a10);
  v134 = v132;
  v133(v117, sub_21D22CE8C, v130, v128, v129);
}

void sub_21D1F4604(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, _OWORD *a6, char *a7, void (*a8)(uint64_t, void **, uint64_t *, uint64_t, uint64_t, _OWORD *, char *, void, void))
{
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = a6[1];
  v19[0] = *a6;
  v19[1] = v14;
  v15 = a6[3];
  v19[2] = a6[2];
  v19[3] = v15;
  v16 = *a7;
  v22 = a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v20 = v12;
  v21 = v13;
  v18 = v16;
  v17 = a2;
  a8(a1, &v22, &v20, a4, a5, v19, &v18, 0, 0);
  sub_21D2283C4(v22, v23, v24, v25, v26);
}

void sub_21D1F46BC(unint64_t a1, char **a2, uint64_t a3, uint64_t a4, __n128 a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v152 = a9;
  v146 = a4;
  v162 = sub_21DBF6D7C();
  v164 = *(v162 - 8);
  *&v15 = MEMORY[0x28223BE20](v162).n128_u64[0];
  v163 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v18 = *(a2 + 32);
  v19 = *a3;
  LODWORD(v155) = *(a3 + 8);
  v21 = *a7;
  v20 = *(a7 + 8);
  v150 = *(a7 + 16);
  v149 = *(a7 + 24);
  v22 = *(a7 + 32);
  v153 = v19;
  v154 = v22;
  v148 = *(a7 + 40);
  v165 = a1;
  v158 = a1 >> 62;
  v23 = *(a7 + 56);
  v147 = *(a7 + 48);
  v159 = v23;
  v160 = v20;
  v151 = *a8;
  v156 = v21;
  if (!v18)
  {
    v41 = [v17 parentTemplate];
    v42 = [v41 store];

    v43 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    v31 = v17;
    v27 = v43;
    v44 = [v31 parentTemplate];
    sub_21D0D32E4(v161 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, &v170);
    type metadata accessor for TTRRemindersListInteractorSectionsCapability();
    v45 = swift_allocObject();
    *(v45 + 3) = 0;
    swift_unknownObjectWeakInit();
    sub_21D0D0FD0(&v170, (v45 + 32));
    swift_beginAccess();
    *(v45 + 3) = &protocol witness table for TTRRemindersListInteractor;
    v145 = v45;
    swift_unknownObjectWeakAssign();
    v157 = v44;
    v30 = &off_278331000;
    v46 = [v31 objectID];
    v143 = [v31 parentTemplate];
    if (v158)
    {
      v47 = sub_21DBFBD7C();
    }

    else
    {
      v47 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v144 = v46;
    if (v47)
    {
      *&v170 = MEMORY[0x277D84F90];
      v35 = &v170;
      sub_21DBFC01C();
      if (v47 < 0)
      {
        goto LABEL_86;
      }

      v48 = 0;
      v49 = v165 & 0xC000000000000001;
      do
      {
        if (v49)
        {
          v50 = MEMORY[0x223D44740](v48, v165);
        }

        else
        {
          v50 = *(v165 + 8 * v48 + 32);
        }

        v51 = v50;
        ++v48;
        v52 = [v50 objectID];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v47 != v48);
    }

    v70 = v145;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v71 = *(v70 + 3);
      ObjectType = swift_getObjectType();
      (*(v71 + 8))(&v170, v70, &protocol witness table for TTRRemindersListInteractorSectionsCapability, ObjectType, v71);
      swift_unknownObjectRelease();
    }

    else
    {
      v172 = 0;
      v170 = 0u;
      v171 = 0u;
    }

    sub_21D0D3954(&v170, &v167, &unk_27CE60D80, &unk_21DC093F0);
    v84 = v143;
    v85 = [v27 updateTemplate_];
    sub_21D0CF7E0(&v170, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRTemplateEditor();
    v86 = swift_allocObject();
    *(v86 + 16) = v85;
    v87 = v168;
    *(v86 + 24) = v167;
    *(v86 + 40) = v87;
    *(v86 + 56) = v169;
    *(v86 + 64) = 0;
    v88 = sub_21DBF8E0C();
    v89 = sub_21D19ED08(v88);

    v90 = v144;
    *&v170 = v144;
    TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v89, &v170, v146);

    if (v158)
    {
      goto LABEL_80;
    }

    goto LABEL_45;
  }

  v24 = a2[1];
  v25 = a2[2];
  if (v18 != 1)
  {
    v145 = a2[1];
    v53 = v17;
    v54 = [v53 store];
    v55 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

    v56 = v53;
    v27 = v55;
    v57 = v161;
    TTRRemindersListInteractor.undoContext.getter(&v170);
    sub_21D0D3954(&v170, &v167, &unk_27CE60D80, &unk_21DC093F0);
    v58 = [v27 updateTemplate_];
    v157 = v56;

    sub_21D0CF7E0(&v170, &unk_27CE60D80, &unk_21DC093F0);
    v31 = type metadata accessor for TTRTemplateEditor();
    v35 = swift_allocObject();
    *(v35 + 2) = v58;
    v59 = v168;
    *(v35 + 24) = v167;
    *(v35 + 40) = v59;
    *(v35 + 7) = v169;
    *(v35 + 64) = 0;
    v60 = TTRTemplateEditor.addNewSection(with:displayName:)(v145);
    if (!v60)
    {

      v21 = v156;
      if (v158)
      {
        goto LABEL_80;
      }

      goto LABEL_45;
    }

    v30 = v60;
    sub_21D0D32E4(v57 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, &v170);
    type metadata accessor for TTRRemindersListInteractorSectionsCapability();
    v61 = swift_allocObject();
    *(v61 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_21D0D0FD0(&v170, v61 + 32);
    swift_beginAccess();
    *(v61 + 24) = &protocol witness table for TTRRemindersListInteractor;
    v142 = v61;
    swift_unknownObjectWeakAssign();
    v141 = [v30 remObjectID];
    v21 = v156;
    if (v158)
    {
      goto LABEL_87;
    }

    v62 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_24;
  }

  v143 = a2[3];
  v144 = v25;
  v21 = v24;
  v145 = v17;
  v157 = v17;
  v26 = [v157 store];
  v27 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  sub_21D0D32E4(v161 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, &v170);
  type metadata accessor for TTRRemindersListInteractorSectionsCapability();
  v28 = swift_allocObject();
  *(v28 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D0FD0(&v170, v28 + 32);
  swift_beginAccess();
  *(v28 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v142 = v28;
  swift_unknownObjectWeakAssign();
  if (v158)
  {
    goto LABEL_83;
  }

  for (i = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {
    v30 = v21;
    v32 = v143;
    v31 = v144;
    if (!i)
    {
      v73 = v145;
      sub_21D125950(v145, v21, v144, v143, 1u);
      sub_21D125950(v73, v21, v31, v32, 1u);
      v74 = v27;
      goto LABEL_36;
    }

    *&v170 = MEMORY[0x277D84F90];
    v33 = v145;
    sub_21D125950(v145, v21, v144, v143, 1u);
    sub_21D125950(v33, v21, v31, v32, 1u);
    v34 = v27;
    v35 = &v170;
    sub_21DBFC01C();
    if ((i & 0x8000000000000000) == 0)
    {
      v36 = 0;
      v37 = v165 & 0xC000000000000001;
      do
      {
        if (v37)
        {
          v38 = MEMORY[0x223D44740](v36, v165);
        }

        else
        {
          v38 = *(v165 + 8 * v36 + 32);
        }

        v39 = v38;
        ++v36;
        v40 = [v38 objectID];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (i != v36);
      v30 = v21;
LABEL_36:
      v75 = v142;
      Strong = swift_unknownObjectWeakLoadStrong();
      v21 = v156;
      if (Strong)
      {
        v77 = *(v75 + 24);
        v78 = swift_getObjectType();
        (*(v77 + 8))(&v170, v75, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v78, v77);
        swift_unknownObjectRelease();
      }

      else
      {
        v172 = 0;
        v170 = 0u;
        v171 = 0u;
      }

      sub_21D0D3954(&v170, &v167, &unk_27CE60D80, &unk_21DC093F0);
      v79 = [v27 updateTemplate_];
      sub_21D0CF7E0(&v170, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRTemplateEditor();
      v80 = swift_allocObject();
      *(v80 + 16) = v79;
      v81 = v168;
      *(v80 + 24) = v167;
      *(v80 + 40) = v81;
      *(v80 + 56) = v169;
      *(v80 + 64) = 0;
      v82 = sub_21DBF8E0C();
      v83 = sub_21D19ED08(v82);

      *&v170 = 0;
      TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v83, &v170, v146);

      sub_21D2283C4(v145, v30, v144, v143, 1u);
      if (!v158)
      {
        goto LABEL_45;
      }

      goto LABEL_80;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    v62 = sub_21DBFBD7C();
LABEL_24:
    v144 = v35;
    v145 = v30;
    v143 = v31;
    if (v62)
    {
      *&v170 = MEMORY[0x277D84F90];
      v63 = v157;
      v64 = v27;
      sub_21DBFC01C();
      if (v62 < 0)
      {
        __break(1u);
        return;
      }

      v65 = 0;
      v66 = v165 & 0xC000000000000001;
      do
      {
        if (v66)
        {
          v67 = MEMORY[0x223D44740](v65, v165);
        }

        else
        {
          v67 = *(v165 + 8 * v65 + 32);
        }

        v68 = v67;
        ++v65;
        v69 = [v67 objectID];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v62 != v65);
    }

    else
    {
      v129 = v157;
      v130 = v27;
    }

    v131 = v142;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v132 = *(v131 + 24);
      v133 = swift_getObjectType();
      (*(v132 + 8))(&v170, v131, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v133, v132);
      swift_unknownObjectRelease();
    }

    else
    {
      v172 = 0;
      v170 = 0u;
      v171 = 0u;
    }

    sub_21D0D3954(&v170, &v167, &unk_27CE60D80, &unk_21DC093F0);
    v134 = v157;
    v135 = [v27 updateTemplate_];
    sub_21D0CF7E0(&v170, &unk_27CE60D80, &unk_21DC093F0);
    v136 = swift_allocObject();
    *(v136 + 16) = v135;
    v137 = v168;
    *(v136 + 24) = v167;
    *(v136 + 40) = v137;
    *(v136 + 56) = v169;
    *(v136 + 64) = 0;
    v138 = sub_21DBF8E0C();
    v139 = sub_21D19ED08(v138);

    v140 = v141;
    *&v170 = v141;
    TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v139, &v170, v146);

    if (!v158)
    {
LABEL_45:
      v91 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_46;
    }

LABEL_80:
    v91 = sub_21DBFBD7C();
LABEL_46:
    v92 = MEMORY[0x277D84F90];
    if (v91)
    {
      *&v170 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      if (v91 < 0)
      {
        __break(1u);
        goto LABEL_82;
      }

      v93 = 0;
      v94 = v165 & 0xC000000000000001;
      do
      {
        if (v94)
        {
          v95 = MEMORY[0x223D44740](v93, v165);
        }

        else
        {
          v95 = *(v165 + 8 * v93 + 32);
        }

        v96 = v95;
        ++v93;
        v97 = [v95 objectID];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v91 != v93);
      v98 = v170;
      v92 = MEMORY[0x277D84F90];
    }

    else
    {
      v98 = MEMORY[0x277D84F90];
    }

    v99 = v154;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v158 = v98;
    if (v155)
    {
      if (v155 == 1)
      {
        v100 = [v153 remObjectID];
        v155 = 1;
        if (!v91)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v100 = v153 != 0;
        v155 = 2;
        if (!v91)
        {
LABEL_68:
          v102 = MEMORY[0x277D84F90];
          goto LABEL_69;
        }
      }
    }

    else
    {
      v100 = [v153 remObjectID];
      v155 = 0;
      if (!v91)
      {
        goto LABEL_68;
      }
    }

    *&v170 = v92;
    sub_21D18E718(0, v91 & ~(v91 >> 63), 0);
    if ((v91 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    ;
  }

  v146 = v100;
  v153 = v99;
  v154 = v27;
  v101 = 0;
  v102 = v170;
  v103 = v165 & 0xC000000000000001;
  do
  {
    if (v103)
    {
      v104 = MEMORY[0x223D44740](v101, v165);
    }

    else
    {
      v104 = *(v165 + 8 * v101 + 32);
    }

    v105 = v104;
    v106 = [v104 remObjectID];
    sub_21DBFADFC();

    [v105 isCompleted];
    v107 = v163;
    sub_21DBF6D4C();

    *&v170 = v102;
    v109 = v102[2];
    v108 = v102[3];
    if (v109 >= v108 >> 1)
    {
      sub_21D18E718((v108 > 1), v109 + 1, 1);
      v107 = v163;
      v102 = v170;
    }

    ++v101;
    v102[2] = v109 + 1;
    (*(v164 + 32))(v102 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v109, v107, v162);
  }

  while (v91 != v101);
  v99 = v153;
  v27 = v154;
  v21 = v156;
  v100 = v146;
LABEL_69:
  sub_21D0D8CF0(0, &qword_27CE59830, 0x277D446E8);
  *&v170 = v100;
  *(&v170 + 1) = v155;
  *&v171 = 0;
  v110 = sub_21D39D1B0(v99, v148, v147, v159, v21, v160, v102, 0, &v170);
  v172 = 0;
  v170 = 0u;
  v171 = 0u;
  if (v149)
  {
    sub_21D0D3954(&v170, &v167, &unk_27CE60D80, &unk_21DC093F0);
    v111 = v27;
    v112 = v27;
    v113 = v150;
    v114 = [v111 updateTemplate_];
    sub_21D0CF7E0(&v170, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRTemplateEditor();
    inited = swift_initStackObject();
    *(inited + 16) = v114;
    v116 = v169;
    v117 = v168;
    *(inited + 24) = v167;
    *(inited + 40) = v117;
    *(inited + 56) = v116;
    *(inited + 64) = 0;
    v166 = v151;
    sub_21D866814(v110);
    v118 = *MEMORY[0x277D44BF0];
    v166 = 1;
    sub_21D863CB4(v118);
  }

  else
  {
    sub_21D0D3954(&v170, &v167, &unk_27CE60D80, &unk_21DC093F0);
    v111 = v27;
    v112 = v27;
    v113 = v150;
    v119 = [v111 updateSmartList_];
    sub_21D0CF7E0(&v170, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRSmartListEditor();
    inited = swift_initStackObject();
    *(inited + 16) = v119;
    v120 = v169;
    v121 = v168;
    *(inited + 24) = v167;
    *(inited + 40) = v121;
    *(inited + 56) = v120;
    *(inited + 64) = 0;
    v166 = v151;
    sub_21D6532B4(v110);
    v122 = *MEMORY[0x277D44BF0];
    v166 = 1;
    sub_21D64F7E4(v122);
  }

  swift_setDeallocating();

  sub_21D0CF7E0(inited + 24, &unk_27CE60D80, &unk_21DC093F0);
  v123 = *(v161 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 24);
  v124 = *(v161 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 32);
  __swift_project_boxed_opaque_existential_1((v161 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer), v123);
  v125 = swift_allocObject();
  v126 = v152;
  v125[2] = v152;
  v125[3] = a10;
  v127 = v157;
  v125[4] = v158;
  v125[5] = v127;
  v128 = *(v124 + 16);
  sub_21D0D0E78(v126, a10);
  v128(v112, sub_21D22CE78, v125, v123, v124);
}

void TTRRemindersListInteractor.move(reminders:toNewSection:sectionID:targetList:position:initialSectionIDByReminderID:isFromSuggestion:moveSectionCompletion:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v13 = *a6;
  v14 = *(a6 + 8);
  v24 = a5;
  v25 = a4;
  v26 = a2;
  v27 = a3;
  v28 = a8 | 0x80;
  v22 = v13;
  v23 = v14;
  v15 = a4;
  sub_21DBF8E0C();
  v16 = a5;
  sub_21D1F2014(a1, &v24, &v22, a7, 0, a9, a10);

  v17 = v24;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v21 = v28;

  sub_21D228360(v17, v18, v19, v20, v21);
}

void sub_21D1F5A50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, _OWORD *a9, char *a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, void **, uint64_t *, uint64_t, uint64_t, _OWORD *, char *, uint64_t, uint64_t))
{
  v17 = *a6;
  v18 = *(a6 + 8);
  v19 = a9[1];
  v25[0] = *a9;
  v25[1] = v19;
  v20 = a9[3];
  v25[2] = a9[2];
  v25[3] = v20;
  v21 = *a10;
  v28 = a5;
  v29 = a4;
  v30 = a2;
  v31 = a3;
  v32 = 2;
  v26 = v17;
  v27 = v18;
  v24 = v21;
  v22 = a4;
  sub_21DBF8E0C();
  v23 = a5;
  a13(a1, &v28, &v26, a7, a8, v25, &v24, a11, a12);
  sub_21D2283C4(v28, v29, v30, v31, v32);
}

void sub_21D1F5B68(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, _OWORD *a6, char *a7, void (*a8)(uint64_t, void **, uint64_t *, uint64_t, uint64_t, _OWORD *, char *, void, void))
{
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = a6[1];
  v19[0] = *a6;
  v19[1] = v14;
  v15 = a6[3];
  v19[2] = a6[2];
  v19[3] = v15;
  v16 = *a7;
  v22 = a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 1;
  v20 = v12;
  v21 = v13;
  v18 = v16;
  v17 = a2;
  a8(a1, &v22, &v20, a4, a5, v19, &v18, 0, 0);
  sub_21D2283C4(v22, v23, v24, v25, v26);
}

void TTRRemindersListInteractor.move(topLevelReminders:to:)(unint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (a1 >> 62)
  {
    v5 = sub_21DBFBD7C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    sub_21DBFC01C();
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v7 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = [v8 objectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v5 != v7);
    v6 = v11;
  }

  sub_21D20D1B8(v6, v3, v4, 0, 0);
}

void TTRRemindersListInteractor.move(reminders:position:initialSectionIDByReminderID:makeTopLevelInParentREMList:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:)(NSObject *a1, uint64_t a2, uint64_t a3, int a4, char *a5, uint64_t *a6, unsigned __int8 *a7, __n128 a8)
{
  LODWORD(v172) = a4;
  v167 = a3;
  v185 = a1;
  v182 = sub_21DBF6D7C();
  v184 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v183 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF70DC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v181 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v166 - v19;
  v170 = *a2;
  LODWORD(v171) = *(a2 + 8);
  v21 = *a6;
  v178 = a6[1];
  v179 = v21;
  v22 = a6[2];
  v180 = *(a6 + 24);
  v177 = a6[4];
  v169 = *(a6 + 20);
  v23 = a6[6];
  v24 = a6[7];
  v168 = v23;
  v176 = *a7;
  (*(v15 + 104))(&v166 - v19, *MEMORY[0x277D45418], v14, v18);
  LOBYTE(a7) = MEMORY[0x223D3F870](a5, v20);
  v175 = *(v15 + 8);
  (v175)(v20, v14);
  if ((a7 & 1) == 0 && v8[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_canChangeSortingStyle] != 1)
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v31 = sub_21DBF84BC();
    __swift_project_value_buffer(v31, qword_280D0F228);
    v32 = v181;
    (*(v15 + 16))(v181, a5, v14);
    v33 = v22;
    v34 = v8;
    v35 = sub_21DBF84AC();
    v36 = sub_21DBFAEBC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v187 = v38;
      *v37 = 136315650;
      *&v190 = v22;
      BYTE8(v190) = v180;
      v39 = TTRRemindersListREMManualOrderingSaveTarget.debugDescription.getter();
      v41 = sub_21D0CDFB4(v39, v40, &v187);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_21D0CDFB4(0x65736C6166, 0xE500000000000000, &v187);
      *(v37 + 22) = 2080;
      sub_21D0F1C20(&qword_27CE59828, MEMORY[0x277D45430], MEMORY[0x277D45448]);
      v42 = sub_21DBFC5BC();
      v44 = v43;
      (v175)(v32, v14);
      v45 = sub_21D0CDFB4(v42, v44, &v187);

      *(v37 + 24) = v45;
      _os_log_impl(&dword_21D0C9000, v35, v36, "Illegal attempt to move reminders in list using REMManualOrdering {saveTarget: %s, canChangeSortingStyle: %s, sortingStyleInPresenter: %s}", v37, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v38, -1, -1);
      MEMORY[0x223D46520](v37, -1, -1);
    }

    else
    {

      (v175)(v32, v14);
    }

    return;
  }

  v174 = v24;
  v175 = v22;
  v181 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v173 = v8;
  [v181 setNotifyChangeDelegate_];
  v25 = v185;
  if (v172)
  {
    if (v185 >> 62)
    {
      v26 = sub_21DBFBD7C();
      if (v26)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v26 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
LABEL_6:
        if (v26 < 1)
        {
          __break(1u);
          goto LABEL_87;
        }

        for (i = 0; i != v26; ++i)
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x223D44740](i, v25);
          }

          else
          {
            v28 = *(v25 + 8 * i + 32);
          }

          v29 = v28;
          if ([v28 isSubtask])
          {
            v30 = [v181 updateReminder_];
            [v30 setParentReminderID_];

            v29 = v30;
          }
        }
      }
    }
  }

  LOBYTE(v15) = v180;
  if (v180)
  {
    a5 = v175;
    v22 = v181;
    if (v176 != 1)
    {
      goto LABEL_105;
    }

    sub_21D0D32E4(&v173[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer], &v190);
    type metadata accessor for TTRRemindersListInteractorSectionsCapability();
    v46 = v25;
    v25 = swift_allocObject();
    *(v25 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_21D0D0FD0(&v190, v25 + 32);
    swift_beginAccess();
    *(v25 + 24) = &protocol witness table for TTRRemindersListInteractor;
    swift_unknownObjectWeakAssign();
    if (!(v46 >> 62))
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
LABEL_24:
        *&v190 = MEMORY[0x277D84F90];
        v48 = a5;
        v49 = v22;
        sub_21DBFC01C();
        if ((v47 & 0x8000000000000000) == 0)
        {
          v50 = 0;
          v51 = v185 & 0xC000000000000001;
          do
          {
            if (v51)
            {
              v52 = MEMORY[0x223D44740](v50, v185);
            }

            else
            {
              v52 = *(v185 + 8 * v50 + 32);
            }

            v53 = v52;
            ++v50;
            v54 = [(objc_class *)v52 objectID];

            sub_21DBFBFEC();
            sub_21DBFC03C();
            sub_21DBFC04C();
            sub_21DBFBFFC();
          }

          while (v47 != v50);
          LOBYTE(v15) = v180;
          v22 = v181;
          goto LABEL_89;
        }

        __break(1u);
        goto LABEL_94;
      }

LABEL_88:
      v113 = a5;
      v114 = v22;
LABEL_89:
      if (swift_unknownObjectWeakLoadStrong())
      {
        v115 = *(v25 + 24);
        ObjectType = swift_getObjectType();
        (*(v115 + 8))(&v190, v25, &protocol witness table for TTRRemindersListInteractorSectionsCapability, ObjectType, v115);
        swift_unknownObjectRelease();
      }

      else
      {
        v192 = 0;
        v190 = 0u;
        v191 = 0u;
      }

      sub_21D0D3954(&v190, &v187, &unk_27CE60D80, &unk_21DC093F0);
      v117 = [v22 updateTemplate_];
      sub_21D0CF7E0(&v190, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRTemplateEditor();
      v118 = swift_allocObject();
      *(v118 + 16) = v117;
      v119 = v188;
      *(v118 + 24) = v187;
      *(v118 + 40) = v119;
      *(v118 + 56) = v189;
      *(v118 + 64) = 0;
      v120 = sub_21DBF8E0C();
      v121 = sub_21D19ED08(v120);

      *&v190 = 0;
      TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v121, &v190, v167);

      goto LABEL_104;
    }

LABEL_87:
    v47 = sub_21DBFBD7C();
    if (v47)
    {
      goto LABEL_24;
    }

    goto LABEL_88;
  }

  a5 = v175;
  v172 = v175;
  v55 = [v172 smartListType];
  v56 = sub_21DBFA16C();
  v58 = v57;
  if (v56 == sub_21DBFA16C() && v58 == v59)
  {

    v22 = v181;
LABEL_37:
    if (v176 > 1)
    {
      if (v176 == 2)
      {
        v75 = v173;
        TTRRemindersListInteractor.undoContext.getter(&v190);
        sub_21D1F73DC(v25, v172, v22, &v190, qword_282EADF38, sub_21D22CD60);

        sub_21D0CF7E0(&v190, &unk_27CE60D80, &unk_21DC093F0);
        sub_21D0D32E4(&v75[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer], &v190);
        type metadata accessor for TTRRemindersListInteractorSectionsCapability();
        v76 = v25;
        v25 = swift_allocObject();
        *(v25 + 24) = 0;
        swift_unknownObjectWeakInit();
        sub_21D0D0FD0(&v190, v25 + 32);
        swift_beginAccess();
        *(v25 + 24) = &protocol witness table for TTRRemindersListInteractor;
        swift_unknownObjectWeakAssign();
        if (!(v76 >> 62))
        {
          v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v77)
          {
LABEL_95:
            v122 = v22;
            goto LABEL_96;
          }

          goto LABEL_56;
        }

LABEL_94:
        v77 = sub_21DBFBD7C();
        if (!v77)
        {
          goto LABEL_95;
        }

LABEL_56:
        *&v190 = MEMORY[0x277D84F90];
        v78 = v22;
        v55 = &v190;
        sub_21DBFC01C();
        if ((v77 & 0x8000000000000000) == 0)
        {
          v79 = 0;
          v80 = v185 & 0xC000000000000001;
          do
          {
            if (v80)
            {
              v81 = MEMORY[0x223D44740](v79, v185);
            }

            else
            {
              v81 = *(v185 + 8 * v79 + 32);
            }

            v82 = v81;
            ++v79;
            v83 = [(objc_class *)v81 objectID];

            sub_21DBFBFEC();
            sub_21DBFC03C();
            sub_21DBFC04C();
            sub_21DBFBFFC();
          }

          while (v77 != v79);
          LOBYTE(v15) = v180;
          v22 = v181;
LABEL_96:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            v192 = 0;
            v190 = 0u;
            v191 = 0u;
LABEL_103:
            sub_21D0D3954(&v190, &v187, &unk_27CE60D80, &unk_21DC093F0);
            v126 = v172;
            v127 = [v22 updateSmartList_];
            sub_21D0CF7E0(&v190, &unk_27CE60D80, &unk_21DC093F0);
            type metadata accessor for TTRSmartListEditor();
            v128 = swift_allocObject();
            *(v128 + 16) = v127;
            v129 = v188;
            *(v128 + 24) = v187;
            *(v128 + 40) = v129;
            *(v128 + 56) = v189;
            *(v128 + 64) = 0;
            v130 = sub_21DBF8E0C();
            v131 = sub_21D19ED08(v130);

            *&v190 = 0;
            TTRSmartListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v131, &v190, v167);

LABEL_104:

            v25 = v185;
LABEL_105:
            v74 = v171;
            if (!v171)
            {
              goto LABEL_65;
            }

            goto LABEL_106;
          }

LABEL_101:
          v124 = *(v25 + 24);
          v125 = swift_getObjectType();
          (*(v124 + 8))(&v190, v25, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v125, v124);
          swift_unknownObjectRelease();
          goto LABEL_103;
        }

        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

LABEL_64:

      v74 = v171;
      if (!v171)
      {
        goto LABEL_65;
      }

      goto LABEL_106;
    }

    if (!v176)
    {
      goto LABEL_64;
    }

    sub_21D0D32E4(&v173[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer], &v190);
    type metadata accessor for TTRRemindersListInteractorSectionsCapability();
    v62 = v25;
    v25 = swift_allocObject();
    *(v25 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_21D0D0FD0(&v190, v25 + 32);
    swift_beginAccess();
    *(v25 + 24) = &protocol witness table for TTRRemindersListInteractor;
    swift_unknownObjectWeakAssign();
    if (v62 >> 62)
    {
      v63 = sub_21DBFBD7C();
      if (v63)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v63)
      {
LABEL_44:
        *&v190 = MEMORY[0x277D84F90];
        v64 = v22;
        v55 = &v190;
        sub_21DBFC01C();
        if (v63 < 0)
        {
          goto LABEL_132;
        }

        v65 = 0;
        v66 = v185 & 0xC000000000000001;
        do
        {
          if (v66)
          {
            v67 = MEMORY[0x223D44740](v65, v185);
          }

          else
          {
            v67 = *(v185 + 8 * v65 + 32);
          }

          v68 = v67;
          ++v65;
          v69 = [(objc_class *)v67 objectID];

          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
        }

        while (v63 != v65);
        LOBYTE(v15) = v180;
        v22 = v181;
LABEL_100:
        if (!swift_unknownObjectWeakLoadStrong())
        {
          v192 = 0;
          v190 = 0u;
          v191 = 0u;
          goto LABEL_103;
        }

        goto LABEL_101;
      }
    }

    v123 = v22;
    goto LABEL_100;
  }

  v61 = sub_21DBFC64C();

  v22 = v181;
  if (v61)
  {

    goto LABEL_37;
  }

  v70 = sub_21DBFA16C();
  v72 = v71;
  if (v70 == sub_21DBFA16C() && v72 == v73)
  {
LABEL_52:

    v74 = v171;
    if (!v171)
    {
      goto LABEL_65;
    }

    goto LABEL_106;
  }

  v84 = sub_21DBFC64C();

  if (v84)
  {
    goto LABEL_63;
  }

  v88 = sub_21DBFA16C();
  v90 = v89;
  if (v88 == sub_21DBFA16C() && v90 == v91)
  {
    goto LABEL_52;
  }

  v92 = sub_21DBFC64C();

  if (v92)
  {
    goto LABEL_63;
  }

  v93 = sub_21DBFA16C();
  v95 = v94;
  if (v93 == sub_21DBFA16C() && v95 == v96)
  {
    goto LABEL_52;
  }

  v97 = sub_21DBFC64C();

  if (v97)
  {
    goto LABEL_63;
  }

  v98 = sub_21DBFA16C();
  v100 = v99;
  if (v98 == sub_21DBFA16C() && v100 == v101)
  {
    goto LABEL_52;
  }

  v102 = sub_21DBFC64C();

  if (v102)
  {
    goto LABEL_63;
  }

  v103 = sub_21DBFA16C();
  v105 = v104;
  if (v103 == sub_21DBFA16C() && v105 == v106)
  {
    goto LABEL_52;
  }

  v107 = sub_21DBFC64C();

  if (v107)
  {
LABEL_63:

    goto LABEL_64;
  }

  v108 = sub_21DBFA16C();
  v110 = v109;
  if (v108 == sub_21DBFA16C() && v110 == v111)
  {
    goto LABEL_52;
  }

  v112 = sub_21DBFC64C();

  if ((v112 & 1) == 0)
  {
    goto LABEL_128;
  }

LABEL_85:

  while (1)
  {
    a5 = v175;
    LOBYTE(v15) = v180;
    v25 = v185;
    v22 = v181;
    v74 = v171;
    if (v171)
    {
LABEL_106:
      v86 = v174;
      if (v74 == 1)
      {
        v132 = v177;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v87 = [v170 remObjectID];
        v133 = 1;
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v87 = v170 != 0;
        v160 = v177;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v133 = 2;
        if ((v25 & 0x8000000000000000) != 0)
        {
LABEL_125:
          v172 = v133;
          goto LABEL_126;
        }
      }

      v172 = v133;
      if ((v25 & 0x4000000000000000) == 0)
      {
        goto LABEL_109;
      }
    }

    else
    {
LABEL_65:
      v85 = v177;
      v86 = v174;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v87 = [v170 remObjectID];
      v172 = 0;
      if ((v25 & 0x8000000000000000) == 0 && (v25 & 0x4000000000000000) == 0)
      {
LABEL_109:
        v134 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_110;
      }
    }

LABEL_126:
    v134 = sub_21DBFBD7C();
LABEL_110:
    v135 = MEMORY[0x277D84F90];
    if (!v134)
    {
      goto LABEL_120;
    }

    *&v190 = MEMORY[0x277D84F90];
    v55 = &v190;
    sub_21D18E718(0, v134 & ~(v134 >> 63), 0);
    if ((v134 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_128:
    v161 = sub_21DBFA16C();
    v163 = v162;
    if (v161 == sub_21DBFA16C() && v163 == v164)
    {
    }

    else
    {
LABEL_133:
      v165 = sub_21DBFC64C();

      if (v165)
      {
        goto LABEL_85;
      }
    }
  }

  v171 = v87;
  v136 = 0;
  v135 = v190;
  v137 = v25 & 0xC000000000000001;
  do
  {
    if (v137)
    {
      v138 = MEMORY[0x223D44740](v136, v25);
    }

    else
    {
      v138 = *(v25 + 8 * v136 + 32);
    }

    v139 = v138;
    v140 = [v138 remObjectID];
    sub_21DBFADFC();

    [v139 isCompleted];
    v141 = v183;
    sub_21DBF6D4C();

    *&v190 = v135;
    v143 = v135[2];
    v142 = v135[3];
    if (v143 >= v142 >> 1)
    {
      sub_21D18E718((v142 > 1), v143 + 1, 1);
      v141 = v183;
      v135 = v190;
    }

    ++v136;
    v135[2] = v143 + 1;
    (*(v184 + 32))(v135 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v143, v141, v182);
    v25 = v185;
  }

  while (v134 != v136);
  v86 = v174;
  a5 = v175;
  LOBYTE(v15) = v180;
  v22 = v181;
  v87 = v171;
LABEL_120:
  sub_21D0D8CF0(0, &qword_27CE59830, 0x277D446E8);
  *&v190 = v87;
  *(&v190 + 1) = v172;
  *&v191 = 0;
  v185 = sub_21D39D1B0(v177, v169, v168, v86, v179, v178, v135, 0, &v190);
  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  sub_21D0D3954(&v190, &v187, &unk_27CE60D80, &unk_21DC093F0);
  v144 = v22;
  if (v15)
  {
    v145 = [v144 updateTemplate_];
    sub_21D0CF7E0(&v190, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRTemplateEditor();
    v146 = v22;
    inited = swift_initStackObject();
    *(inited + 16) = v145;
    v148 = v189;
    v149 = v188;
    *(inited + 24) = v187;
    *(inited + 40) = v149;
    *(inited + 56) = v148;
    *(inited + 64) = 0;
    v186 = v176;
    sub_21D866814(v185);
    v150 = *MEMORY[0x277D44BF0];
    v186 = 1;
    sub_21D863CB4(v150);
  }

  else
  {
    v151 = [v144 updateSmartList_];
    sub_21D0CF7E0(&v190, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRSmartListEditor();
    v146 = v22;
    inited = swift_initStackObject();
    *(inited + 16) = v151;
    v152 = v189;
    v153 = v188;
    *(inited + 24) = v187;
    *(inited + 40) = v153;
    *(inited + 56) = v152;
    *(inited + 64) = 0;
    v186 = v176;
    sub_21D6532B4(v185);
    v154 = *MEMORY[0x277D44BF0];
    v186 = 1;
    sub_21D64F7E4(v154);
  }

  swift_setDeallocating();

  sub_21D0CF7E0(inited + 24, &unk_27CE60D80, &unk_21DC093F0);
  v155 = *&v173[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 24];
  v156 = *&v173[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 32];
  __swift_project_boxed_opaque_existential_1(&v173[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer], v155);
  v157 = swift_allocObject();
  *(v157 + 16) = v25;
  *(v157 + 24) = a5;
  *(v157 + 32) = v15;
  v158 = *(v156 + 16);
  v159 = a5;
  sub_21DBF8E0C();
  v158(v146, sub_21D228424, v157, v155, v156);
}

unint64_t sub_21D1F73DC(unint64_t a1, NSObject *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = v6;
  v84 = a4;
  v87[5] = *MEMORY[0x277D85DE8];
  v82 = sub_21DBF563C();
  v13 = *(v82 - 8);
  *&v14 = MEMORY[0x28223BE20](v82).n128_u64[0];
  v81 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 customContext];
  if (!v16 || (v17 = v16, v18 = sub_21DBFB4FC(), v17, (v83 = v18) == 0))
  {
    if (qword_27CE56E90 == -1)
    {
LABEL_17:
      v26 = sub_21DBF84BC();
      __swift_project_value_buffer(v26, qword_27CE641B8);
      v27 = a2;
      v28 = sub_21DBF84AC();
      v29 = sub_21DBFAECC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        v32 = [v27 objectID];
        *(v30 + 4) = v32;
        *v31 = v32;
        _os_log_impl(&dword_21D0C9000, v28, v29, "Passed smart list that is not a custom smart {listID: %@}", v30, 0xCu);
        sub_21D0CF7E0(v31, &unk_27CE60070, &unk_21DC09550);
        MEMORY[0x223D46520](v31, -1, -1);
        MEMORY[0x223D46520](v30, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_34:
    swift_once();
    goto LABEL_17;
  }

  v79 = a2;
  v80 = a3;
  v75 = v9;
  v76 = a5;
  v77 = a6;
  v87[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v19 = sub_21DBFBD7C();
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x277D84F90];
  if (!v19)
  {
    v34 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v21 = 0;
  a5 = (a1 & 0xC000000000000001);
  do
  {
    if (a5)
    {
      v22 = MEMORY[0x223D44740](v21, a1);
    }

    else
    {
      if (v21 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 8 * v21 + 32);
    }

    v23 = v22;
    a2 = (v21 + 1);
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v24 = [v22 account];
    v25 = [v24 capabilities];

    v17 = [v25 supportsCustomSmartLists];
    if (v17)
    {
      v17 = v87;
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    else
    {
    }

    ++v21;
  }

  while (a2 != v19);
  v34 = v87[0];
  v20 = MEMORY[0x277D84F90];
LABEL_22:
  v78 = v13;
  if ((v34 & 0x8000000000000000) != 0 || (v34 & 0x4000000000000000) != 0)
  {
    v35 = sub_21DBFBD7C();
    if (!v35)
    {
      goto LABEL_37;
    }

LABEL_25:
    v87[0] = v20;
    sub_21DBFC01C();
    if ((v35 & 0x8000000000000000) == 0)
    {
      v36 = 0;
      do
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x223D44740](v36, v34);
        }

        else
        {
          v37 = *(v34 + 8 * v36 + 32);
        }

        v38 = v37;
        v36 = (v36 + 1);
        a5 = [v80 updateReminder_];

        v17 = v87;
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v35 != v36);

      v39 = v87[0];
      v13 = v78;
      v20 = MEMORY[0x277D84F90];
      goto LABEL_38;
    }

    __break(1u);
LABEL_86:
    swift_once();
    goto LABEL_54;
  }

  v35 = *(v34 + 16);
  if (v35)
  {
    goto LABEL_25;
  }

LABEL_37:

  v39 = MEMORY[0x277D84F90];
LABEL_38:
  v85 = v39;
  v87[0] = v20;
  if (v19)
  {
    v34 = 0;
    a5 = (a1 & 0xC000000000000001);
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a5)
      {
        v40 = MEMORY[0x223D44740](v34, a1);
      }

      else
      {
        if (v34 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v40 = *(a1 + 8 * v34 + 32);
      }

      v35 = v40;
      v41 = (v34 + 1);
      if (__OFADD__(v34, 1))
      {
        break;
      }

      v42 = [v40 account];
      v43 = [v42 capabilities];

      v17 = [v43 supportsCustomSmartLists];
      if (v17)
      {
      }

      else
      {
        v17 = v87;
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      ++v34;
      if (v41 == v19)
      {
        v20 = v87[0];
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    if (!sub_21DBFBD7C())
    {
      goto LABEL_72;
    }
  }

  else
  {
LABEL_50:
    v34 = v79;
    if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
    {
      goto LABEL_71;
    }

    if (!*(v20 + 16))
    {
LABEL_72:

      goto LABEL_73;
    }
  }

  if (qword_27CE56E90 != -1)
  {
    goto LABEL_86;
  }

LABEL_54:
  v44 = sub_21DBF84BC();
  v45 = __swift_project_value_buffer(v44, qword_27CE641B8);
  v33 = v34;

  v19 = sub_21DBF84AC();
  LOBYTE(v35) = sub_21DBFAECC();

  if (!os_log_type_enabled(v19, v35))
  {

    goto LABEL_60;
  }

  v46 = swift_slowAlloc();
  a5 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v87[0] = v34;
  *v46 = 138412546;
  v17 = &off_278331000;
  v47 = [v33 objectID];
  *(v46 + 4) = v47;
  *a5 = v47;
  *(v46 + 12) = 2080;
  v74 = v45;
  if ((v20 & 0xC000000000000001) != 0)
  {
    goto LABEL_88;
  }

  if (!*(v20 + 16))
  {
    __break(1u);
  }

  v48 = a5;
  v49 = v34;
  v50 = *(v20 + 32);
  while (2)
  {
    v51 = v50;
    v52 = [v50 v17[425]];

    v86[0] = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60EE0, &qword_21DC18C30);
    v53 = sub_21DBFBA5C();
    v55 = v54;

    v56 = sub_21D0CDFB4(v53, v55, v87);

    *(v46 + 14) = v56;
    _os_log_impl(&dword_21D0C9000, v19, v35, "Unexpected attempt to add reminders not supporting CSL to a CSL {cslID: %@, reminders.first.objectID: %s}", v46, 0x16u);
    sub_21D0CF7E0(v48, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v48, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x223D46520](v49, -1, -1);
    MEMORY[0x223D46520](v46, -1, -1);

    v13 = v78;
    v45 = v74;
LABEL_60:
    a5 = v80;
    v57 = [v80 store];
    v35 = [v33 accountID];
    v87[0] = 0;
    v34 = [v57 fetchDefaultListRequiringCloudKitAccountWithAccountID:v35 error:v87];

    if (v87[0])
    {
      v58 = v87[0];

      swift_willThrow();
      v34 = v58;
      v17 = v45;
      v35 = sub_21DBF84AC();
      v59 = sub_21DBFAEBC();

      if (os_log_type_enabled(v35, v59))
      {
        v60 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v87[0] = v19;
        *v60 = 136315138;
        swift_getErrorValue();
        v61 = sub_21DBFC74C();
        v17 = v62;
        a5 = sub_21D0CDFB4(v61, v62, v87);

        *(v60 + 4) = a5;
        _os_log_impl(&dword_21D0C9000, v35, v59, "unable to fetch default CloudKit list because %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x223D46520](v19, -1, -1);
        MEMORY[0x223D46520](v60, -1, -1);

        goto LABEL_63;
      }

LABEL_73:
      v80 = 0;
    }

    else
    {
      if (!v34)
      {

        v34 = sub_21DBF84AC();
        v17 = sub_21DBFAEBC();
        if (os_log_type_enabled(v34, v17))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_21D0C9000, v34, v17, "No available default CloudKit list", v35, 2u);
          MEMORY[0x223D46520](v35, -1, -1);
        }

LABEL_63:

        goto LABEL_73;
      }

      a5 = sub_21D20DD3C(v20, v34, a5, v84, v76, v77);
      v80 = v63;

      v17 = &v85;
      sub_21D562380(a5);
    }

    v33 = v85;
    if (v85 >> 62)
    {
      v46 = sub_21DBFBD7C();
      if (!v46)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v46 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v46)
      {
        goto LABEL_83;
      }
    }

    if (v46 < 1)
    {
      __break(1u);
LABEL_88:
      v48 = a5;
      v49 = v34;
      v50 = MEMORY[0x223D44740](0, v20);
      continue;
    }

    break;
  }

  v64 = 0;
  do
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v65 = MEMORY[0x223D44740](v64, v33);
    }

    else
    {
      v65 = *(v33 + 8 * v64 + 32);
    }

    v66 = v65;
    ++v64;
    sub_21D0D3954(v84, v87, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0D3954(v87, v86, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRReminderEditor();
    v67 = swift_allocObject();
    *(v67 + 72) = 0;
    *(v67 + 16) = v66;
    sub_21D0D3954(v86, v67 + 24, &unk_27CE60D80, &unk_21DC093F0);
    *(v67 + 64) = 0;
    v68 = v66;
    v69 = [v68 fetchedCurrentDueDateDeltaAlert];
    sub_21D0CF7E0(v86, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0CF7E0(v87, &unk_27CE60D80, &unk_21DC093F0);
    v70 = *(v67 + 72);
    *(v67 + 72) = v69;

    v71 = v81;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    TTRReminderEditor.edit(toMatch:now:)(v83, v71);

    (*(v13 + 8))(v71, v82);
  }

  while (v46 != v64);
LABEL_83:

  return v33;
}

void sub_21D1F7FD8(void *a1, char a2, unint64_t a3, void *a4)
{
  if (a3 >> 62)
  {
    v8 = sub_21DBFBD7C();
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v45 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    if (v8 < 0)
    {
      __break(1u);
LABEL_25:
      swift_once();
LABEL_13:
      v14 = sub_21DBF84BC();
      __swift_project_value_buffer(v14, qword_280D0F228);
      v15 = a4;
      sub_21DBF8E0C();
      sub_21D22CD54(a1, 1);
      oslog = sub_21DBF84AC();
      v16 = sub_21DBFAEBC();
      sub_21D1D1F18(a1, 1);

      if (os_log_type_enabled(oslog, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v46 = v18;
        *v17 = 136315650;
        swift_getErrorValue();
        v19 = sub_21DBFC75C();
        v21 = sub_21D0CDFB4(v19, v20, &v46);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        v22 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v23 = MEMORY[0x223D42DB0](v9, v22);
        v25 = v24;

        v26 = sub_21D0CDFB4(v23, v25, &v46);

        *(v17 + 14) = v26;
        *(v17 + 22) = 2080;
        v27 = TTRRemindersListREMManualOrderingSaveTarget.debugDescription.getter();
        v29 = sub_21D0CDFB4(v27, v28, &v46);

        *(v17 + 24) = v29;
        _os_log_impl(&dword_21D0C9000, oslog, v16, "Failed to move reminders using REMManualOrdering {error: %s, reminders.objectID: %s, saveTarget: %s}", v17, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v18, -1, -1);
        v30 = v17;
LABEL_19:
        MEMORY[0x223D46520](v30, -1, -1);

        return;
      }

      goto LABEL_20;
    }

    v10 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223D44740](v10, a3);
      }

      else
      {
        v11 = *(a3 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      v13 = [v11 objectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v8 != v10);
    v9 = v45;
  }

  if (a2)
  {
    if (qword_280D17ED0 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  if (qword_280D17ED0 != -1)
  {
    swift_once();
  }

  v31 = sub_21DBF84BC();
  __swift_project_value_buffer(v31, qword_280D0F228);
  v32 = a4;
  sub_21DBF8E0C();
  oslog = sub_21DBF84AC();
  v33 = sub_21DBFAEDC();

  if (os_log_type_enabled(oslog, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46 = v35;
    *v34 = 136315394;
    v36 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v37 = MEMORY[0x223D42DB0](v9, v36);
    v39 = v38;

    v40 = sub_21D0CDFB4(v37, v39, &v46);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2080;
    v41 = TTRRemindersListREMManualOrderingSaveTarget.debugDescription.getter();
    v43 = sub_21D0CDFB4(v41, v42, &v46);

    *(v34 + 14) = v43;
    _os_log_impl(&dword_21D0C9000, oslog, v33, "Moved reminders using REMManualOrdering {reminders.objectID: %s, saveTarget: %s}", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v35, -1, -1);
    v30 = v34;
    goto LABEL_19;
  }

LABEL_20:
}

void TTRRemindersListInteractor.move(reminders:to:position:sortingStyleInPresenter:paramsForREMManualOrdering:)(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, __n128 a6)
{
  v7 = v6;
  v104 = a4;
  v115 = sub_21DBF6D7C();
  v118 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v117 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF70DC();
  v14 = *(v13 - 8);
  v105 = v13;
  v106 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v103 = &v95 - v18;
  v112 = *a3;
  v19 = *(a3 + 8);
  v20 = *a5;
  v108 = a5[1];
  v109 = v20;
  v102 = a5[2];
  v100 = *(a5 + 24);
  v99 = a5[4];
  v98 = *(a5 + 20);
  v21 = a5[7];
  v97 = a5[6];
  v107 = v21;
  v22 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v111 = v7;
  [v22 setNotifyChangeDelegate_];
  v133 = 0;
  memset(v132, 0, sizeof(v132));
  v23 = &unk_27CE60D80;
  sub_21D0D3954(v132, v131, &unk_27CE60D80, &unk_21DC093F0);
  v24 = a2;
  v25 = v22;
  v26 = [v25 updateReminder_];
  sub_21D0D3954(v131, v130, &unk_27CE60D80, &unk_21DC093F0);
  v129[6] = 0;
  sub_21D0D3954(v130, v129, &unk_27CE60D80, &unk_21DC093F0);
  v101 = [v26 fetchedCurrentDueDateDeltaAlert];
  v110 = v24;

  sub_21D0CF7E0(v132, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0CF7E0(v130, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0CF7E0(v131, &unk_27CE60D80, &unk_21DC093F0);
  v116 = v19;
  if (!v19)
  {
    v28 = v112;
    sub_21D157850(v112, 0);
    v121 = [v25 updateReminder_];

    goto LABEL_7;
  }

  if (v19 != 1)
  {
    if (!v112)
    {
      sub_21D157850(0, 2u);
      v121 = 0;
      goto LABEL_9;
    }

    v121 = 1;
    sub_21D157850(1, 2u);
LABEL_7:
    sub_21DBF8E0C();
    v29 = a1;
    goto LABEL_10;
  }

  v27 = v112;
  sub_21D157850(v112, 1u);
  v121 = [v25 updateReminder_];

LABEL_9:
  v30 = sub_21DBF8E0C();
  v29 = sub_21D1E3EEC(v30, sub_21D9D9774, sub_21D565304, sub_21D256E5C);
LABEL_10:
  v119 = a1;
  if (v29 >> 62)
  {
    v31 = sub_21DBFBD7C();
  }

  else
  {
    v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v113 = v26;
  v114 = v25;
  v96 = v16;
  if (v31)
  {
    if (v31 >= 1)
    {
      v32 = 0;
      v120 = v29 & 0xC000000000000001;
      while (1)
      {
        if (v120)
        {
          v35 = MEMORY[0x223D44740](v32, v29);
        }

        else
        {
          v35 = *(v29 + 8 * v32 + 32);
        }

        v36 = v35;
        v37 = [v25 updateReminder_];
        v38 = [v26 subtaskContext];
        if (!v38)
        {
          goto LABEL_17;
        }

        v39 = v38;
        v40 = v29;
        v41 = [v26 listChangeItem];
        if (v41)
        {
          v42 = v41;
          v43 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_2to11asSubtaskOf011allowsLossyI0So21REMReminderChangeItemCAI_So07REMListsT0CSo0rn7ContextsT0CSbtFZ_0(v37, v41, v39, 0);

          v44 = v116;
          if (!v116)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v43 = v37;
          v44 = v116;
          if (!v116)
          {
LABEL_28:
            v34 = v121;
LABEL_29:
            v33 = &selRef_insertReminderChangeItem_beforeReminderChangeItem_;
            goto LABEL_16;
          }
        }

        if (v44 == 1)
        {
          v33 = &selRef_insertReminderChangeItem_afterReminderChangeItem_;
          v34 = v121;
        }

        else
        {
          v34 = 0;
          if (!v121)
          {
            goto LABEL_29;
          }

          v33 = &selRef_insertReminderChangeItem_afterReminderChangeItem_;
        }

LABEL_16:
        sub_21D157850(v121, v44);
        [v39 *v33];

        v26 = v113;
        v25 = v114;
        v29 = v40;
LABEL_17:
        ++v32;

        if (v31 == v32)
        {
          goto LABEL_30;
        }
      }
    }

    __break(1u);
    goto LABEL_61;
  }

LABEL_30:

  a1 = v105;
  v45 = v106;
  v46 = v103;
  (v106[13])(v103, *MEMORY[0x277D45418], v105);
  v25 = v104;
  v47 = MEMORY[0x223D3F870](v104, v46);
  v29 = v45[1];
  (v29)(v46, a1);
  if ((v47 & 1) == 0 && (v111[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_canChangeSortingStyle] & 1) == 0)
  {
    v23 = v102;
    if (qword_280D17ED0 == -1)
    {
      goto LABEL_37;
    }

    goto LABEL_62;
  }

  v48 = v99;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v116)
  {
    v49 = v114;
    v25 = v119;
    if (v116 == 1)
    {
      v50 = [v112 remObjectID];
    }

    else
    {
      v50 = v112 != 0;
    }
  }

  else
  {
    v50 = [v112 remObjectID];
    v49 = v114;
    v25 = v119;
  }

  a1 = [v110 objectID];
  if (v25 >> 62)
  {
    v23 = sub_21DBFBD7C();
  }

  else
  {
    v23 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = MEMORY[0x277D84F90];
  if (v23)
  {
    *&v126 = MEMORY[0x277D84F90];
    sub_21D18E718(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      swift_once();
LABEL_37:
      v51 = sub_21DBF84BC();
      __swift_project_value_buffer(v51, qword_280D0F228);
      (v106[2])(v96, v25, a1);
      v52 = v23;
      v53 = v111;
      v54 = sub_21DBF84AC();
      v55 = sub_21DBFAEBC();

      LODWORD(v120) = v55;
      if (os_log_type_enabled(v54, v55))
      {
        v56 = a1;
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v123 = v58;
        *v57 = 136315650;
        *&v126 = v23;
        BYTE8(v126) = v100;
        v59 = v54;
        v60 = TTRRemindersListREMManualOrderingSaveTarget.debugDescription.getter();
        v62 = sub_21D0CDFB4(v60, v61, &v123);

        *(v57 + 4) = v62;
        *(v57 + 12) = 2080;
        *(v57 + 14) = sub_21D0CDFB4(0x65736C6166, 0xE500000000000000, &v123);
        *(v57 + 22) = 2080;
        sub_21D0F1C20(&qword_27CE59828, MEMORY[0x277D45430], MEMORY[0x277D45448]);
        v63 = v96;
        v64 = sub_21DBFC5BC();
        v66 = v65;
        (v29)(v63, v56);
        v67 = sub_21D0CDFB4(v64, v66, &v123);

        *(v57 + 24) = v67;
        _os_log_impl(&dword_21D0C9000, v59, v120, "Illegal attempt to move reminders in list using REMManualOrdering {saveTarget: %s, canChangeSortingStyle: %s, sortingStyleInPresenter: %s}", v57, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v58, -1, -1);
        MEMORY[0x223D46520](v57, -1, -1);

        sub_21D157478(v121, v116);
        sub_21D0CF7E0(v129, &unk_27CE60D80, &unk_21DC093F0);
      }

      else
      {

        sub_21D157478(v121, v116);
        sub_21D0CF7E0(v129, &unk_27CE60D80, &unk_21DC093F0);

        (v29)(v96, a1);
      }

      return;
    }

    v106 = a1;
    v112 = v50;
    v120 = v48;
    v68 = 0;
    v26 = v126;
    v69 = v25 & 0xC000000000000001;
    do
    {
      if (v69)
      {
        v70 = MEMORY[0x223D44740](v68, v119);
      }

      else
      {
        v70 = v119[v68 + 4];
      }

      v71 = v70;
      v72 = [v70 remObjectID];
      sub_21DBFADFC();

      [v71 isCompleted];
      v73 = v117;
      sub_21DBF6D4C();

      *&v126 = v26;
      v75 = v26[2];
      v74 = v26[3];
      if (v75 >= v74 >> 1)
      {
        sub_21D18E718((v74 > 1), v75 + 1, 1);
        v73 = v117;
        v26 = v126;
      }

      ++v68;
      v26[2] = v75 + 1;
      (*(v118 + 32))(v26 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v75, v73, v115);
    }

    while (v23 != v68);
    v76 = v116;
    v49 = v114;
    v48 = v120;
    v50 = v112;
    a1 = v106;
  }

  else
  {
    v76 = v116;
  }

  v77 = v76 | 0x8000000000000000;
  sub_21D0D8CF0(0, &qword_27CE59830, 0x277D446E8);
  *&v126 = v50;
  *(&v126 + 1) = v77;
  *&v127 = a1;
  v78 = sub_21D39D1B0(v48, v98, v97, v107, v109, v108, v26, 0, &v126);
  v128 = 0;
  v126 = 0u;
  v127 = 0u;
  if (v100)
  {
    sub_21D0D3954(&v126, &v123, &unk_27CE60D80, &unk_21DC093F0);
    v79 = v49;
    v80 = [v79 updateTemplate_];
    sub_21D0CF7E0(&v126, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRTemplateEditor();
    inited = swift_initStackObject();
    *(inited + 16) = v80;
    v82 = v125;
    v83 = v124;
    *(inited + 24) = v123;
    *(inited + 40) = v83;
    *(inited + 56) = v82;
    *(inited + 64) = 0;
    v122 = 1;
    sub_21D866814(v78);
    v84 = *MEMORY[0x277D44BF0];
    v122 = 1;
    sub_21D863CB4(v84);
  }

  else
  {
    sub_21D0D3954(&v126, &v123, &unk_27CE60D80, &unk_21DC093F0);
    v79 = v49;
    v85 = [v79 updateSmartList_];
    sub_21D0CF7E0(&v126, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRSmartListEditor();
    inited = swift_initStackObject();
    *(inited + 16) = v85;
    v86 = v125;
    v87 = v124;
    *(inited + 24) = v123;
    *(inited + 40) = v87;
    *(inited + 56) = v86;
    *(inited + 64) = 0;
    v122 = 1;
    sub_21D6532B4(v78);
    v88 = *MEMORY[0x277D44BF0];
    v122 = 1;
    sub_21D64F7E4(v88);
  }

  swift_setDeallocating();

  sub_21D0CF7E0(inited + 24, &unk_27CE60D80, &unk_21DC093F0);
  v89 = *&v111[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 24];
  v90 = *&v111[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 32];
  __swift_project_boxed_opaque_existential_1(&v111[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer], v89);
  v91 = swift_allocObject();
  v92 = v110;
  *(v91 + 16) = v119;
  *(v91 + 24) = v92;
  v93 = *(v90 + 16);
  v94 = v92;
  sub_21DBF8E0C();
  v93(v49, sub_21D228434, v91, v89, v90);

  sub_21D157478(v121, v116);
  sub_21D0CF7E0(v129, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t TTRRemindersListInteractor.move(reminders:byReplacingDueDate:completionBlock:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v32 = a3;
  v37 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0, &unk_21DC0C0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = *(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  TTRRemindersListInteractor.undoContext.getter(v41);
  v38 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v38 setSaveIsNoopIfNoChangedKeys_];
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v26 = sub_21DBFB12C();
    v27 = swift_allocObject();
    v28 = v32;
    v27[2] = a1;
    v27[3] = v28;
    v29 = v33;
    v27[4] = v33;
    aBlock[4] = sub_21D22D514;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_42_0;
    v30 = _Block_copy(aBlock);
    sub_21DBF8E0C();
    sub_21D0D0E78(v28, v29);

    v31 = v38;
    [v38 saveWithQueue:v26 completion:v30];
    _Block_release(v30);

    return sub_21D0CF7E0(v41, &unk_27CE60D80, &unk_21DC093F0);
  }

  result = sub_21DBFBD7C();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (result >= 1)
  {
    v14 = 0;
    v34 = a1 & 0xC000000000000001;
    v35 = result;
    v36 = a1;
    do
    {
      if (v34)
      {
        v15 = MEMORY[0x223D44740](v14, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      sub_21D0D3954(v41, aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v17 = v38;
      v18 = [v17 updateReminder_];
      sub_21D0D3954(aBlock, v40, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRReminderEditor();
      v19 = swift_allocObject();
      *(v19 + 72) = 0;
      *(v19 + 16) = v18;
      sub_21D0D3954(v40, v19 + 24, &unk_27CE60D80, &unk_21DC093F0);
      *(v19 + 64) = 0;
      v20 = v18;
      v21 = [v20 fetchedCurrentDueDateDeltaAlert];

      sub_21D0CF7E0(v40, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v22 = *(v19 + 72);
      *(v19 + 72) = v21;

      v23 = sub_21DBF509C();
      v24 = *(v23 - 8);
      (*(v24 + 16))(v11, v37, v23);
      (*(v24 + 56))(v11, 0, 1, v23);
      v25 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
      (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
      sub_21D9C50E0(v11, v8);

      sub_21D0CF7E0(v8, &unk_27CE60DA0, &unk_21DC0C0C0);
      sub_21D0CF7E0(v11, &qword_27CE58D60, &unk_21DC0A690);
      a1 = v36;
    }

    while (v35 != v14);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t TTRRemindersListInteractor.move(reminders:byUpdatingDueDate:completionBlock:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v49 = a3;
  v51 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0, &unk_21DC0C0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v48 - v12;
  MEMORY[0x28223BE20](v13);
  v58 = &v48 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = *(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  TTRRemindersListInteractor.undoContext.getter(v63);
  v60 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v60 setSaveIsNoopIfNoChangedKeys_];
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_16:
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v42 = sub_21DBFB12C();
    v43 = swift_allocObject();
    v44 = v49;
    v43[2] = a1;
    v43[3] = v44;
    v45 = v50;
    v43[4] = v50;
    aBlock[4] = sub_21D22D514;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_49;
    v46 = _Block_copy(aBlock);
    sub_21DBF8E0C();
    sub_21D0D0E78(v44, v45);

    v47 = v60;
    [v60 saveWithQueue:v42 completion:v46];
    _Block_release(v46);

    return sub_21D0CF7E0(v63, &unk_27CE60D80, &unk_21DC093F0);
  }

  result = sub_21DBFBD7C();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (result >= 1)
  {
    v20 = 0;
    v53 = a1 & 0xC000000000000001;
    v56 = a1;
    v55 = v10;
    v54 = result;
    v52 = v17;
    do
    {
      if (v53)
      {
        v25 = MEMORY[0x223D44740](v20, a1);
      }

      else
      {
        v25 = *(a1 + 8 * v20 + 32);
      }

      v26 = v25;
      v27 = v17;
      sub_21D0D3954(v63, aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v28 = v60;
      v29 = [v28 updateReminder_];
      sub_21D0D3954(aBlock, v62, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRReminderEditor();
      v30 = swift_allocObject();
      *(v30 + 72) = 0;
      *(v30 + 16) = v29;
      sub_21D0D3954(v62, v30 + 24, &unk_27CE60D80, &unk_21DC093F0);
      *(v30 + 64) = 0;
      v31 = v29;
      v32 = [v31 fetchedCurrentDueDateDeltaAlert];

      sub_21D0CF7E0(v62, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v33 = *(v30 + 72);
      *(v30 + 72) = v32;

      v34 = [*(v30 + 16) dueDateComponents];
      if (v34)
      {
        v35 = v58;
        v36 = v34;
        sub_21DBF4EFC();

        v37 = 0;
      }

      else
      {
        v37 = 1;
        v35 = v58;
      }

      v38 = sub_21DBF509C();
      v39 = *(v38 - 8);
      v40 = *(v39 + 56);
      v40(v35, v37, 1, v38);
      sub_21D0D523C(v35, v27, &qword_27CE58D60, &unk_21DC0A690);
      v41 = v55;
      sub_21D0D3954(v27, v55, &qword_27CE58D60, &unk_21DC0A690);
      if ((*(v39 + 48))(v41, 1, v38) == 1)
      {
        sub_21D0CF7E0(v41, &qword_27CE58D60, &unk_21DC0A690);
        v21 = 1;
        a1 = v56;
        v22 = v57;
      }

      else
      {
        v22 = v57;
        sub_21DBF4ECC();
        (*(v39 + 8))(v41, v38);
        v21 = 0;
        a1 = v56;
      }

      ++v20;
      v40(v22, v21, 1, v38);
      v23 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
      v24 = v59;
      (*(*(v23 - 8) + 56))(v59, 1, 1, v23);
      sub_21D9C50E0(v22, v24);

      sub_21D0CF7E0(v24, &unk_27CE60DA0, &unk_21DC0C0C0);
      sub_21D0CF7E0(v22, &qword_27CE58D60, &unk_21DC0A690);
      v17 = v52;
      sub_21D0CF7E0(v52, &qword_27CE58D60, &unk_21DC0A690);
    }

    while (v54 != v20);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t TTRRemindersListInteractor.move(sections:to:position:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v130 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *a3;
  v8 = *(a3 + 8);
  v124 = *(a3 + 9);
  v9 = [*a2 sectionContext];
  v10 = v9;
  if (!v6)
  {
    if (v9)
    {
      v25 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
      *&v129[0] = 0;
      v26 = [v25 fetchListSectionsForListSectionContext:v10 error:v129];
      v27 = *&v129[0];
      if (v26)
      {
        v28 = v26;
        v119 = a1;
        sub_21D0D8CF0(0, &qword_27CE584F8, 0x277D44698);
        v29 = sub_21DBFA5EC();
        v30 = v27;

        *&v129[0] = MEMORY[0x277D84F90];
        v110 = v3;
        v111 = v5;
        v109 = 0;
        v117 = v8;
        v112 = v7;
        v122 = v10;
        v17 = v29 & 0xFFFFFFFFFFFFFF8;
        if (v29 >> 62)
        {
          v31 = sub_21DBFBD7C();
        }

        else
        {
          v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v19 = 0;
        v20 = (v29 & 0xC000000000000001);
        v21 = MEMORY[0x277D84F90];
        while (v31 != v19)
        {
          if (v20)
          {
            v32 = MEMORY[0x223D44740](v19, v29);
          }

          else
          {
            if (v19 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_120;
            }

            v32 = *(v29 + 8 * v19 + 32);
          }

          v33 = v32;
          v6 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_117;
          }

          v34 = [v32 objectID];

          ++v19;
          if (v34)
          {
            MEMORY[0x223D42D80]();
            if (*((*&v129[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v129[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();
            v21 = *&v129[0];
            v19 = v6;
          }
        }

        goto LABEL_48;
      }

      v89 = *&v129[0];
      v75 = sub_21DBF52DC();

      swift_willThrow();
      if (qword_280D17ED0 != -1)
      {
        swift_once();
      }

      v90 = sub_21DBF84BC();
      __swift_project_value_buffer(v90, qword_280D0F228);
      v77 = v5;
      v91 = v75;
      v79 = sub_21DBF84AC();
      v80 = sub_21DBFAEBC();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v129[0] = v83;
        *v81 = 138543618;
        v92 = [v77 objectID];

        *(v81 + 4) = v92;
        *v82 = v92;
        *(v81 + 12) = 2082;
        swift_getErrorValue();
        v93 = sub_21DBFC75C();
        v95 = sub_21D0CDFB4(v93, v94, v129);

        *(v81 + 14) = v95;
        v88 = "Failed to move sections to target {targetListID: %{public}@, error: %{public}s}";
        goto LABEL_113;
      }

LABEL_114:

      return 0;
    }

    return 0;
  }

  if (v6 != 1)
  {
    if (v9)
    {
      v35 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
      *&v129[0] = 0;
      v36 = [v35 fetchTemplateSectionsForTemplateSectionContext:v10 error:v129];
      v37 = *&v129[0];
      if (v36)
      {
        v38 = v36;
        v119 = a1;
        sub_21D0D8CF0(0, &qword_27CE584B8, 0x277D448B8);
        v39 = sub_21DBFA5EC();
        v40 = v37;

        *&v129[0] = MEMORY[0x277D84F90];
        v110 = v3;
        v111 = v5;
        v109 = v6;
        v117 = v8;
        v112 = v7;
        v122 = v10;
        v17 = v39 & 0xFFFFFFFFFFFFFF8;
        if (v39 >> 62)
        {
          v41 = sub_21DBFBD7C();
        }

        else
        {
          v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v19 = 0;
        v20 = (v39 & 0xC000000000000001);
        v21 = MEMORY[0x277D84F90];
        while (v41 != v19)
        {
          if (v20)
          {
            v42 = MEMORY[0x223D44740](v19, v39);
          }

          else
          {
            if (v19 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_121;
            }

            v42 = *(v39 + 8 * v19 + 32);
          }

          v43 = v42;
          v6 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_118;
          }

          v44 = [v42 objectID];

          ++v19;
          if (v44)
          {
            MEMORY[0x223D42D80]();
            if (*((*&v129[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v129[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();
            v21 = *&v129[0];
            v19 = v6;
          }
        }

        goto LABEL_48;
      }

      v96 = *&v129[0];
      v75 = sub_21DBF52DC();

      swift_willThrow();
      if (qword_280D17ED0 != -1)
      {
        swift_once();
      }

      v97 = sub_21DBF84BC();
      __swift_project_value_buffer(v97, qword_280D0F228);
      v77 = v5;
      v98 = v75;
      v79 = sub_21DBF84AC();
      v80 = sub_21DBFAEBC();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v129[0] = v83;
        *v81 = 138543618;
        v99 = [v77 objectID];

        *(v81 + 4) = v99;
        *v82 = v99;
        *(v81 + 12) = 2082;
        swift_getErrorValue();
        v100 = sub_21DBFC75C();
        v102 = sub_21D0CDFB4(v100, v101, v129);

        *(v81 + 14) = v102;
        v88 = "Failed to move sections to target {targetTemplateID: %{public}@, error: %{public}s}";
        goto LABEL_113;
      }

      goto LABEL_114;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v11 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  *&v129[0] = 0;
  v12 = [v11 fetchSmartListSectionsForSmartListSectionContext:v10 error:v129];
  v13 = *&v129[0];
  if (!v12)
  {
    v74 = *&v129[0];
    v75 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v76 = sub_21DBF84BC();
    __swift_project_value_buffer(v76, qword_280D0F228);
    v77 = v5;
    v78 = v75;
    v79 = sub_21DBF84AC();
    v80 = sub_21DBFAEBC();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v129[0] = v83;
      *v81 = 138543618;
      v84 = [v77 objectID];

      *(v81 + 4) = v84;
      *v82 = v84;
      *(v81 + 12) = 2082;
      swift_getErrorValue();
      v85 = sub_21DBFC75C();
      v87 = sub_21D0CDFB4(v85, v86, v129);

      *(v81 + 14) = v87;
      v88 = "Failed to move sections to target {targetSmartListID: %{public}@, error: %{public}s}";
LABEL_113:
      _os_log_impl(&dword_21D0C9000, v79, v80, v88, v81, 0x16u);
      sub_21D0CF7E0(v82, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v82, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x223D46520](v83, -1, -1);
      MEMORY[0x223D46520](v81, -1, -1);

      return 0;
    }

    goto LABEL_114;
  }

  v14 = v12;
  v119 = a1;
  sub_21D0D8CF0(0, &qword_27CE584A8, 0x277D44818);
  v15 = sub_21DBFA5EC();
  v16 = v13;

  *&v129[0] = MEMORY[0x277D84F90];
  v110 = v3;
  v111 = v5;
  v109 = 1;
  v117 = v8;
  v112 = v7;
  v122 = v10;
  v17 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    v18 = sub_21DBFBD7C();
  }

  else
  {
    v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = 0;
  v20 = (v15 & 0xC000000000000001);
  v21 = MEMORY[0x277D84F90];
  while (v18 != v19)
  {
    if (v20)
    {
      v22 = MEMORY[0x223D44740](v19, v15);
    }

    else
    {
      if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_119;
      }

      v22 = *(v15 + 8 * v19 + 32);
    }

    v23 = v22;
    v6 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_116;
    }

    v24 = [v22 objectID];

    ++v19;
    if (v24)
    {
      MEMORY[0x223D42D80]();
      if (*((*&v129[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v129[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v21 = *&v129[0];
      v19 = v6;
    }
  }

LABEL_48:

  v17 = v21;
  sub_21DBF8E0C();
  v45 = MEMORY[0x277D84F90];
  *&v129[0] = MEMORY[0x277D84F90];
  v46 = *(v119 + 16);
  v20 = v112;
  if (v46)
  {
    v47 = (v119 + 32);
    do
    {
      v48 = *v47;
      v47 += 2;
      v49 = [v48 objectID];
      MEMORY[0x223D42D80]();
      if (*((*&v129[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v129[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      --v46;
    }

    while (v46);
    v51 = *&v129[0];
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
  }

  v114 = v51;
  *&v129[0] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858, &unk_21DC09AA0);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  sub_21D0D0F1C(&qword_27CE59838, &qword_27CE58858, &unk_21DC09AA0, MEMORY[0x277D83970]);
  sub_21D19F2B8(&qword_280D17870, &qword_280D17880, 0x277D44700);
  v6 = sub_21DBFA49C();
  v125 = v45;
  if (v124 != 2 || v112 || v117)
  {
    LODWORD(v19) = 0;
    if (v17 < 0)
    {
      goto LABEL_123;
    }
  }

  else
  {
    v52 = sub_21DBF8E0C();
    sub_21D562328(v52);
    LODWORD(v19) = 1;
    if (v17 < 0)
    {
      goto LABEL_123;
    }
  }

  if ((v17 & 0x4000000000000000) != 0)
  {
    goto LABEL_123;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v54 = 0;
    v121 = v6 & 0xC000000000000001;
    v123 = v17 & 0xC000000000000001;
    v115 = v17 + 32;
    v116 = v17 & 0xFFFFFFFFFFFFFF8;
    v118 = v17;
    v17 = v6 + 56;
    v120 = i;
    v113 = v20;
    while (1)
    {
      if (v123)
      {
        v55 = MEMORY[0x223D44740](v54, v118);
      }

      else
      {
        if (v54 >= *(v116 + 16))
        {
          goto LABEL_122;
        }

        v55 = *(v115 + 8 * v54);
      }

      v56 = v55;
      if (__OFADD__(v54++, 1))
      {
        break;
      }

      if (v19)
      {
        goto LABEL_72;
      }

      if (v124)
      {
LABEL_80:
        v58 = 0;
        if (!v121)
        {
          goto LABEL_81;
        }

LABEL_73:
        v59 = v56;
        v60 = sub_21DBFBDCC();

        if ((v60 & 1) == 0)
        {
          goto LABEL_87;
        }

        if ((v58 & 1) == 0)
        {
          goto LABEL_90;
        }

LABEL_65:

        LODWORD(v19) = 1;
        if (v54 == i)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v61 = [v20 objectID];
        sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
        v62 = sub_21DBFB63C();

        if ((v62 & 1) == 0)
        {
          sub_21D228468(v20, v117, 0);
          goto LABEL_80;
        }

        v63 = sub_21DBF8E0C();
        sub_21D562328(v63);
        sub_21D228468(v20, v117, 0);
LABEL_72:
        v58 = 1;
        if (v121)
        {
          goto LABEL_73;
        }

LABEL_81:
        if (*(v6 + 16))
        {
          v64 = sub_21DBFB62C();
          v65 = -1 << *(v6 + 32);
          v66 = v64 & ~v65;
          if ((*(v17 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
          {
            v67 = ~v65;
            while (1)
            {
              v68 = *(*(v6 + 48) + 8 * v66);
              v69 = sub_21DBFB63C();

              if (v69)
              {
                break;
              }

              v66 = (v66 + 1) & v67;
              if (((*(v17 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
              {
                v20 = v113;
                goto LABEL_87;
              }
            }

            v20 = v113;
            i = v120;
            if (v58)
            {
              goto LABEL_65;
            }

            goto LABEL_90;
          }
        }

LABEL_87:
        v70 = v56;
        MEMORY[0x223D42D80]();
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        i = v120;
        if (v58)
        {
          goto LABEL_65;
        }

LABEL_90:
        if (v124 == 1)
        {
          v71 = [v20 objectID];
          sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
          v72 = sub_21DBFB63C();

          if (v72)
          {
            v73 = sub_21DBF8E0C();
            sub_21D562328(v73);
            LODWORD(v19) = 1;
            sub_21D228468(v20, v117, 1u);

            if (v54 == i)
            {
LABEL_100:

              v17 = v118;

              goto LABEL_125;
            }
          }

          else
          {

            sub_21D228468(v20, v117, 1u);
            LODWORD(v19) = 0;
            if (v54 == i)
            {

              v17 = v118;
              goto LABEL_125;
            }
          }
        }

        else
        {

          LODWORD(v19) = 0;
          if (v54 == i)
          {

            v17 = v118;

            goto LABEL_126;
          }
        }
      }
    }

    __break(1u);
LABEL_116:
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
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    ;
  }

  if (v19)
  {
LABEL_125:

    v103 = v110;
    v104 = v111;
    v105 = v109;
  }

  else
  {
LABEL_126:
    v103 = v110;
    v104 = v111;
    v105 = v109;
    if (v124 == 2 && v20 == 1 && !v117)
    {
      sub_21D562328(v114);
    }

    else
    {
    }
  }

  sub_21D0D32E4(v103 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, v129);
  type metadata accessor for TTRRemindersListInteractorSectionsCapability();
  v106 = swift_allocObject();
  *(v106 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D0FD0(v129, v106 + 32);
  v50 = 1;
  swift_beginAccess();
  *(v106 + 24) = &protocol witness table for TTRRemindersListInteractor;
  swift_unknownObjectWeakAssign();
  v126 = 0;
  v127 = v104;
  v128 = v105;
  v107._rawValue = v125;
  TTRRemindersListInteractorSectionsCapability.updateOrderingOfSections(withSectionIDsOrdering:in:initialSectionIDsOrdering:option:)(v107, &v127, v17, &v126);

  return v50;
}

void TTRRemindersListInteractor.updateManualOrdering(uncommittedReminderIDs:position:paramsForREMManualOrdering:)(void *a1, uint64_t a2, uint64_t *a3, __n128 a4)
{
  v82 = a1;
  v7 = sub_21DBF6D7C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *a3;
  v80 = a3[1];
  v81 = v16;
  v17 = a3[2];
  LODWORD(v16) = *(a3 + 24);
  v18 = a3[4];
  v70 = *(a3 + 20);
  v71 = v16;
  v19 = a3[7];
  v69 = a3[6];
  v78 = v19;
  v79 = v18;
  v20 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v21 = v20;
  v72 = v17;
  if (v15 <= 1)
  {
    if (v15)
    {
      v14 = [v20 updateReminder_];
      goto LABEL_10;
    }

    v14 = [v20 updateReminder_];
    v23 = 0;
  }

  else if (v15 == 2)
  {
    v24 = v14;
    v23 = 0;
  }

  else
  {
    if (v15 == 3)
    {
      v22 = v14;
LABEL_10:
      v23 = 1;
      goto LABEL_11;
    }

    v14 = v14 != 0;
    v23 = 2;
  }

LABEL_11:
  v74 = v4;
  v25 = sub_21D1FF5E0();
  if (v25)
  {
    v31 = v25;
    v26 = [v25 accountID];

    v73 = v26;
    if (!v23)
    {
LABEL_18:
      v32 = v26;
      v33 = v79;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v34 = [v14 remObjectID];
      v67 = 0;
      v68 = v34;
      v30 = v82;
      if ((v82 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v26 = 0;
    v73 = 0;
    if (!v23)
    {
      goto LABEL_18;
    }
  }

  if (v23 == 1)
  {
    v27 = v26;
    v28 = v79;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v29 = [v14 remObjectID];
    v67 = 1;
    v68 = v29;
    v30 = v82;
    if ((v82 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v68 = v14 != 0;
    v35 = v26;
    v36 = v79;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v67 = 2;
    v30 = v82;
    if ((v82 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }
  }

LABEL_21:
  if ((v30 & 0x4000000000000000) == 0)
  {
    v37 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_23;
  }

LABEL_39:
  v37 = sub_21DBFBD7C();
LABEL_23:
  v38 = MEMORY[0x277D84F90];
  v76 = v21;
  v77 = v14;
  v75 = v23;
  if (v37)
  {
    v83[0] = MEMORY[0x277D84F90];
    sub_21D18E718(0, v37 & ~(v37 >> 63), 0);
    if (v37 < 0)
    {
      __break(1u);
      return;
    }

    v38 = v83[0];
    if ((v82 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v37; ++i)
      {
        MEMORY[0x223D44740](i);
        sub_21DBFADFC();
        sub_21DBF6D4C();
        swift_unknownObjectRelease();
        v83[0] = v38;
        v41 = v38[2];
        v40 = v38[3];
        if (v41 >= v40 >> 1)
        {
          sub_21D18E718((v40 > 1), v41 + 1, 1);
          v38 = v83[0];
        }

        v38[2] = v41 + 1;
        (*(v8 + 32))(v38 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v41, v10, v7);
      }
    }

    else
    {
      v42 = (v82 + 32);
      do
      {
        v43 = *v42;
        sub_21DBFADFC();
        sub_21DBF6D4C();

        v83[0] = v38;
        v45 = v38[2];
        v44 = v38[3];
        if (v45 >= v44 >> 1)
        {
          sub_21D18E718((v44 > 1), v45 + 1, 1);
          v38 = v83[0];
        }

        v38[2] = v45 + 1;
        (*(v8 + 32))(v38 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v45, v13, v7);
        ++v42;
        --v37;
      }

      while (v37);
    }
  }

  sub_21D0D8CF0(0, &qword_27CE59830, 0x277D446E8);
  v83[0] = v68;
  v83[1] = v67;
  v83[2] = 0;
  v46 = v38;
  v47 = v73;
  v48 = sub_21D39D1B0(v79, v70, v69, v78, v81, v80, v46, v73, v83);
  if (v71)
  {
    sub_21D0D32E4(v74 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, v83);
    v49 = v84;
    v50 = v85;
    v82 = __swift_project_boxed_opaque_existential_1(v83, v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_21DC09CF0;
    v52 = v72;
    *(v51 + 32) = v72;
    v53 = v52;
    v54 = [v53 store];
    v55 = TTRRemindersListInteractor.undoManager.getter();
    v56 = type metadata accessor for TTRTemplateEditor();
    MEMORY[0x28223BE20](v56);
    v65 = v50;
    v66 = &protocol witness table for TTRTemplateEditor;
    v63 = v49;
    v64 = v57;
    v58 = sub_21D22847C;
  }

  else
  {
    sub_21D0D32E4(v74 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, v83);
    v59 = v84;
    v60 = v85;
    v82 = __swift_project_boxed_opaque_existential_1(v83, v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_21DC09CF0;
    v61 = v72;
    *(v51 + 32) = v72;
    v53 = v61;
    v54 = [v53 store];
    v55 = TTRRemindersListInteractor.undoManager.getter();
    v62 = type metadata accessor for TTRSmartListEditor();
    MEMORY[0x28223BE20](v62);
    v65 = v60;
    v66 = &protocol witness table for TTRSmartListEditor;
    v63 = v59;
    v64 = v57;
    v58 = sub_21D2284C4;
  }

  TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v57, v51, v54, v55, v58, &v63, 0, 0, v63, v64, v65, v66);

  __swift_destroy_boxed_opaque_existential_0(v83);

  sub_21D157478(v77, v75);
}

uint64_t TTRRemindersListInteractor.updateMembershipsOfReminders(with:sectionIDByClonedReminderIDs:saveRequest:)(uint64_t a1, uint64_t a2, void *a3)
{
  v63 = sub_21DBF563C();
  v6 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  LOBYTE(v7) = *(a1 + 8);
  v65 = a2;
  if ((v7 & 1) == 0)
  {
    v8 = v8;
    v17 = a3;
    TTRRemindersListInteractor.undoContext.getter(v73);
    v9 = &unk_27CE60D80;
    a3 = &unk_21DC093F0;
    sub_21D0D3954(v73, v71, &unk_27CE60D80, &unk_21DC093F0);
    v19 = [v17 updateList_];
    sub_21D0D3954(v71, v69, &unk_27CE60D80, &unk_21DC093F0);
    if (qword_280D1AA10 == -1)
    {
LABEL_19:
      v33 = qword_280D1AA18;
      sub_21D0CF7E0(v71, v9, a3);
      type metadata accessor for TTRListEditor();
      inited = swift_initStackObject();
      v67 = type metadata accessor for TTRUserDefaults();
      v68 = &protocol witness table for TTRUserDefaults;
      *&v66 = v33;
      v35 = v33;
      sub_21D0CF7E0(v73, v9, a3);
      *(inited + 64) = 0;
      v9 = (inited + 64);
      v61 = v19;
      *(inited + 16) = v19;
      v36 = v70;
      v37 = v69[1];
      *(inited + 24) = v69[0];
      *(inited + 40) = v37;
      *(inited + 56) = v36;
      swift_beginAccess();
      *(inited + 64) = 0;
      v57 = inited;
      sub_21D0D0FD0(&v66, inited + 72);

      v38 = a2 + 64;
      v39 = 1 << *(a2 + 32);
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      v8 = v40 & *(a2 + 64);
      v41 = (v39 + 63) >> 6;
      v58 = v6 + 1;
      sub_21DBF8E0C();
      v19 = 0;
      *(&v42 + 1) = 3;
      v59 = xmmword_21DC09CF0;
      *&v42 = 138412290;
      v56 = v42;
      while (1)
      {
        if (!v8)
        {
          do
          {
            v45 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_37;
            }

            if (v45 >= v41)
            {
              goto LABEL_35;
            }

            v8 = *(v38 + 8 * v45);
            ++v19;
          }

          while (!v8);
          v19 = v45;
        }

        v46 = (v19 << 9) | (8 * __clz(__rbit64(v8)));
        v47 = *(*(a2 + 48) + v46);
        a3 = *(*(a2 + 56) + v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
        v48 = swift_initStackObject();
        *(v48 + 16) = v59;
        *(v48 + 32) = v47;
        v49 = a3;
        v6 = v47;
        sub_21D1CE198(v48);
        v64 = v50;
        swift_setDeallocating();
        swift_arrayDestroy();
        v51 = [v61 sectionsContextChangeItem];
        if (v51)
        {
          v9 = v51;
          v17 = v49;
          v60 = v6;
          v43 = v62;
          sub_21DBF560C();
          sub_21D0D8CF0(0, &qword_27CE59228, 0x277D446B0);
          sub_21DBF815C();

          (*v58)(v43, v63);
          v44 = v17;

          v6 = v9;
        }

        else
        {
          v17 = v49;
          if (qword_27CE56580 != -1)
          {
            swift_once();
          }

          v52 = sub_21DBF84BC();
          __swift_project_value_buffer(v52, qword_27CE591E0);
          v44 = sub_21DBF84AC();
          v9 = sub_21DBFAECC();
          if (os_log_type_enabled(v44, v9))
          {
            v53 = swift_slowAlloc();
            v60 = v17;
            v17 = v53;
            a3 = swift_slowAlloc();
            *v17 = v56;
            v54 = [v61 objectID];
            *(v17 + 4) = v54;
            *a3 = v54;
            _os_log_impl(&dword_21D0C9000, v44, v9, "Failed to update memberships of reminders in sections because list does not support sections {listID: %@}", v17, 0xCu);
            sub_21D0CF7E0(a3, &unk_27CE60070, &unk_21DC09550);
            MEMORY[0x223D46520](a3, -1, -1);
            MEMORY[0x223D46520](v17, -1, -1);
          }

          else
          {

            v6 = v44;
            v44 = v17;
          }
        }

        v8 &= v8 - 1;

        a2 = v65;
      }
    }

LABEL_38:
    swift_once();
    goto LABEL_19;
  }

  TTRRemindersListInteractor.undoContext.getter(v73);
  v9 = &unk_27CE60D80;
  sub_21D0D3954(v73, v71, &unk_27CE60D80, &unk_21DC093F0);
  v10 = [a3 updateSmartList_];
  sub_21D0CF7E0(v73, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRSmartListEditor();
  v11 = swift_initStackObject();
  v61 = v10;
  *(v11 + 16) = v10;
  v12 = v72;
  v13 = v71[1];
  *(v11 + 24) = v71[0];
  *(v11 + 40) = v13;
  *(v11 + 56) = v12;
  *(v11 + 64) = 0;
  v14 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 64);
  v18 = (v15 + 63) >> 6;
  v57 = v11;
  v58 = v6 + 1;
  sub_21DBF8E0C();
  v19 = 0;
  *(&v20 + 1) = 3;
  v59 = xmmword_21DC09CF0;
  *&v20 = 138412290;
  v56 = v20;
LABEL_7:
  if (v17)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v23 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v23);
    ++v19;
    if (v17)
    {
      v19 = v23;
LABEL_12:
      v24 = (v19 << 9) | (8 * __clz(__rbit64(v17)));
      v25 = *(*(a2 + 48) + v24);
      a3 = *(*(a2 + 56) + v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v26 = swift_initStackObject();
      *(v26 + 16) = v59;
      *(v26 + 32) = v25;
      v27 = a3;
      v6 = v25;
      sub_21D1CE198(v26);
      v64 = v28;
      swift_setDeallocating();
      swift_arrayDestroy();
      v29 = [v61 sectionsContextChangeItem];
      if (v29)
      {
        v9 = v29;
        v8 = v27;
        v60 = v6;
        v21 = v62;
        sub_21DBF560C();
        sub_21D0D8CF0(0, &qword_27CE59840, 0x277D44828);
        sub_21DBF815C();

        (*v58)(v21, v63);
        v22 = v8;

        v6 = v9;
      }

      else
      {
        v8 = v27;
        if (qword_27CE56B28 != -1)
        {
          swift_once();
        }

        v30 = sub_21DBF84BC();
        __swift_project_value_buffer(v30, qword_27CE5F5C8);
        v22 = sub_21DBF84AC();
        v9 = sub_21DBFAECC();
        if (os_log_type_enabled(v22, v9))
        {
          v31 = swift_slowAlloc();
          v60 = v8;
          v8 = v31;
          a3 = swift_slowAlloc();
          *v8 = v56;
          v32 = [v61 objectID];
          *(v8 + 4) = v32;
          *a3 = v32;
          _os_log_impl(&dword_21D0C9000, v22, v9, "Failed to update memberships of reminders in sections because list does not support sections {listID: %@}", v8, 0xCu);
          sub_21D0CF7E0(a3, &unk_27CE60070, &unk_21DC09550);
          MEMORY[0x223D46520](a3, -1, -1);
          MEMORY[0x223D46520](v8, -1, -1);
        }

        else
        {

          v6 = v22;
          v22 = v8;
        }
      }

      v17 &= v17 - 1;

      a2 = v65;
      goto LABEL_7;
    }
  }

LABEL_35:
}