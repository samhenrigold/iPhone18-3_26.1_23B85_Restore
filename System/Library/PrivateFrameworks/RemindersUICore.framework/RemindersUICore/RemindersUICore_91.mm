uint64_t sub_21D971C14()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE641B8);
  v1 = __swift_project_value_buffer(v0, qword_27CE641B8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D971CE0(unint64_t a1, uint64_t a2, void (*a3)(void, __n128), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = sub_21D972080(a1, a5, a6);
  v13 = v12;
  if (v12 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v35 = a3;
    v36 = a4;
    v14 = swift_allocObject();
    v15 = swift_allocObject();
    v16 = (*(a6 + 8))(a5, a6);
    v37 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

    v17 = objc_allocWithZone(TTRUndoManager);
    v18 = sub_21DBFA12C();
    v19 = [v17 initWithDebugIdentifier_];

    v20 = type metadata accessor for TTRBasicUndoContext();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    v39[3] = v20;
    v39[4] = &protocol witness table for TTRBasicUndoContext;
    v39[0] = v21;
    v34 = v11;
    sub_21D0D32E4(v39, aBlock);
    v22 = v19;
    if (v11)
    {
      v23 = sub_21D971010(v13, v10, v37, aBlock, a5, a6);
    }

    else
    {
      v23 = sub_21D9724B8(v13, v10, v37, aBlock, a5, a6);
    }

    v25 = v23;
    v26 = v10;
    v27 = v24;

    sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
    *(v14 + 16) = v25;
    *(v15 + 16) = v27;
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v28 = sub_21DBFB12C();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = a5;
    *(v30 + 24) = a6;
    *(v30 + 32) = v26;
    *(v30 + 40) = v34;
    *(v30 + 48) = v14;
    *(v30 + 56) = v15;
    *(v30 + 64) = v35;
    *(v30 + 72) = v36;
    *(v30 + 80) = v29;
    *(v30 + 88) = v19;
    aBlock[4] = sub_21D974DEC;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_30_1;
    v31 = _Block_copy(aBlock);
    v32 = v19;
    v33 = v26;

    sub_21D0D0E78(v35, v36);

    [v37 saveWithQueue:v28 completion:v31];

    _Block_release(v31);
    __swift_destroy_boxed_opaque_existential_0(v39);

    return;
  }

  if (a3)
  {
    (a3)(0);
  }
}

id sub_21D972080(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = (*(a3 + 8))(a2, a3);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v5 = sub_21DBFA5DC();
  v33[0] = 0;
  v6 = [v4 fetchRemindersWithObjectIDs:v5 error:v33];

  v7 = v33[0];
  if (v6)
  {
    sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
    sub_21D183A0C();
    v8 = sub_21DBF9E6C();
    v9 = v7;

    v33[0] = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
LABEL_30:
      v10 = sub_21DBFBD7C();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    v31 = MEMORY[0x277D84F90];
    while (1)
    {
      while (1)
      {
        if (v10 == v11)
        {

          return v31;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x223D44740](v11, a1);
        }

        else
        {
          if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v12 = *(a1 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*(v8 + 16))
        {
          v16 = sub_21D17E07C(v12);
          if (v17)
          {
            v15 = *(*(v8 + 56) + 8 * v16);
            v18 = v15;
            goto LABEL_17;
          }
        }

LABEL_5:

        ++v11;
      }

      if (!sub_21DBFC2CC())
      {
        goto LABEL_5;
      }

      swift_dynamicCast();
      v15 = v32;
LABEL_17:

      ++v11;
      if (v15)
      {
        MEMORY[0x223D42D80]();
        if (*((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v31 = v33[0];
        v11 = v14;
      }
    }
  }

  v20 = v33[0];
  v21 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_27CE56E90 != -1)
  {
    swift_once();
  }

  v22 = sub_21DBF84BC();
  __swift_project_value_buffer(v22, qword_27CE641B8);
  v23 = v21;
  v24 = sub_21DBF84AC();
  v25 = sub_21DBFAEBC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33[0] = v27;
    *v26 = 136315138;
    swift_getErrorValue();
    v28 = sub_21DBFC74C();
    v30 = sub_21D0CDFB4(v28, v29, v33);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_21D0C9000, v24, v25, "Failed to fetch reminders {error: %s}", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x223D46520](v27, -1, -1);
    MEMORY[0x223D46520](v26, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_21D9724B8(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v96 = a5;
  v97 = a6;
  v10 = v110;
  v11 = sub_21DBF563C();
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x28223BE20](v11);
  v84 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = MEMORY[0x277D84F90];
  v88 = a4;
  sub_21D1826C4(a4, v113);
  sub_21D1826C4(v113, v112);
  v13 = a2;
  v14 = a3;
  v15 = [v14 updateList_];
  sub_21D1826C4(v112, v110);
  if (qword_280D1AA10 != -1)
  {
LABEL_55:
    swift_once();
  }

  v16 = qword_280D1AA18;
  sub_21D0CF7E0(v112, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRListEditor();
  inited = swift_initStackObject();
  v108 = type metadata accessor for TTRUserDefaults();
  v109 = &protocol witness table for TTRUserDefaults;
  *&v107 = v16;
  v18 = v16;
  sub_21D0CF7E0(v113, &unk_27CE60D80, &unk_21DC093F0);
  inited[64] = 0;
  *(inited + 2) = v15;
  v19 = v111;
  v20 = v10[1];
  *(inited + 24) = *v10;
  *(inited + 40) = v20;
  *(inited + 7) = v19;
  swift_beginAccess();
  inited[64] = 0;
  v93 = inited;
  sub_21D0D15E0(&v107, (inited + 72));

  v105 = v14;
  v21 = a1;
  v15 = (a1 >> 62);
  v94 = v13;
  v95 = a1;
  v89 = a1 >> 62;
  if (a1 >> 62)
  {
    v92 = a1 & 0xFFFFFFFFFFFFFF8;
    v90 = sub_21DBFBD7C();
    if (!v90)
    {
      v90 = 0;
      v10 = 0;
      v103 = MEMORY[0x277D84F90];
      v99 = MEMORY[0x277D84F90];
      v21 = a1;
      v13 = v105;
LABEL_60:
      v101 = v10;
      v48 = v21;
      v49 = sub_21DBFBD7C();
      v21 = v48;
      v47 = v49;
      goto LABEL_61;
    }

    v21 = a1;
  }

  else
  {
    v92 = a1 & 0xFFFFFFFFFFFFFF8;
    v90 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v90)
    {
      v90 = 0;
      v10 = 0;
      v103 = MEMORY[0x277D84F90];
      v99 = MEMORY[0x277D84F90];
      v13 = v105;
      goto LABEL_51;
    }
  }

  v10 = 0;
  v98 = v21 & 0xC000000000000001;
  v91 = v21 + 32;
  v22 = v90;
  v103 = MEMORY[0x277D84F90];
  v13 = v105;
  while (1)
  {
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v23)
    {
      break;
    }

    v100 = v24;
    if (v98)
    {
      v25 = MEMORY[0x223D44740]();
    }

    else
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_53;
      }

      if (v24 >= *(v92 + 16))
      {
        goto LABEL_54;
      }

      v25 = *(v91 + 8 * v24);
    }

    v26 = v25;
    v104 = [v13 updateReminder_];
    v27 = _s15RemindersUICore07TTRMoveA26ToListInteractorCapabilityPAAE22fetchSubtasksForMoving2ofSaySo11REMReminderCGAG_tF_0(v26);
    v14 = v27;
    if (v27 >> 62)
    {
      a1 = sub_21DBFBD7C();
      v102 = v26;
      if (!a1)
      {
LABEL_21:
        v32 = MEMORY[0x277D84F90];
        goto LABEL_22;
      }
    }

    else
    {
      a1 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v102 = v26;
      if (!a1)
      {
        goto LABEL_21;
      }
    }

    *&v107 = MEMORY[0x277D84F90];
    v15 = &v107;
    sub_21DBFC01C();
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v28 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x223D44740](v28, v14);
      }

      else
      {
        v29 = *(v14 + 8 * v28 + 32);
      }

      v30 = v29;
      ++v28;
      v31 = [v13 updateReminder_];

      sub_21DBFBFEC();
      inited = *(v107 + 16);
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (a1 != v28);
    v32 = v107;
LABEL_22:
    v101 = v10;
    v33 = [v104 assignmentContext];
    [v33 removeAllAssignments];

    v99 = v32 >> 62;
    if (v32 >> 62)
    {
      v34 = sub_21DBFBD7C();
      if (v34)
      {
LABEL_24:
        v35 = 0;
        v10 = (v32 & 0xC000000000000001);
        while (1)
        {
          if (v10)
          {
            v36 = MEMORY[0x223D44740](v35, v32);
          }

          else
          {
            if (v35 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }

            v36 = *(v32 + 8 * v35 + 32);
          }

          v37 = v36;
          v13 = (v35 + 1);
          if (__OFADD__(v35, 1))
          {
            break;
          }

          inited = [v36 assignmentContext];
          [inited removeAllAssignments];

          ++v35;
          v38 = v13 == v34;
          v13 = v105;
          if (v38)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
        break;
      }
    }

    else
    {
      v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        goto LABEL_24;
      }
    }

LABEL_34:
    if (v99)
    {
      v39 = sub_21DBFBD7C();
    }

    else
    {
      v39 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = (v101 + v39);
    if (__OFADD__(v101, v39))
    {
      goto LABEL_49;
    }

    *&v107 = 0;
    BYTE8(v107) = 2;
    v40 = TTRListEditor.move(_:togetherWith:position:)(v104, v32, &v107);

    a1 = v40;
    MEMORY[0x223D42D80]();
    if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v99 = v114;
    v15 = [v102 list];
    v41 = [a1 objectID];
    v42 = v94;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = sub_21D2115B8(0, *(v103 + 2) + 1, 1, v103);
    }

    v44 = *(v103 + 2);
    v43 = *(v103 + 3);
    inited = (v44 + 1);
    if (v44 >= v43 >> 1)
    {
      v103 = sub_21D2115B8((v43 > 1), v44 + 1, 1, v103);
    }

    v45 = v103;
    *(v103 + 2) = inited;
    v46 = &v45[32 * v44];
    *(v46 + 4) = v15;
    *(v46 + 5) = v42;
    *(v46 + 6) = v41;
    *(v46 + 7) = v14;
    v21 = v95;
    v22 = v100;
    if (!v100)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  if (v89)
  {
    goto LABEL_60;
  }

LABEL_51:
  v101 = v10;
  v47 = *(v92 + 16);
LABEL_61:
  v50 = MEMORY[0x277D84F90];
  if (v47)
  {
    *&v107 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    if (v47 < 0)
    {
      goto LABEL_102;
    }

    v51 = 0;
    inited = (v95 & 0xC000000000000001);
    v105 = (v95 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if (inited)
      {
        v52 = MEMORY[0x223D44740](v51, v95);
      }

      else
      {
        if ((v51 & 0x8000000000000000) != 0)
        {
          goto LABEL_100;
        }

        if (v51 >= v105[2])
        {
          goto LABEL_101;
        }

        v52 = *(v95 + 8 * v51 + 32);
      }

      v53 = v52;
      ++v51;
      v54 = [v52 remObjectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v47 != v51);
    v55 = v107;
    v56 = v95;
  }

  else
  {
    v56 = v21;
    v55 = MEMORY[0x277D84F90];
  }

  v57 = [v13 updateList_];
  v58 = sub_21D1BF9F4(v55);

  v59 = v56;
  if ((v58 & 1) == 0)
  {
    *&v107 = v50;
    v105 = v57;
    if (v90)
    {
      v50 = 0;
      v60 = v56 & 0xC000000000000001;
      v61 = v56 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v60)
        {
          v62 = MEMORY[0x223D44740](v50, v59);
        }

        else
        {
          if (v50 >= *(v61 + 16))
          {
            goto LABEL_97;
          }

          v62 = *(v59 + 8 * v50 + 32);
        }

        v63 = v62;
        inited = (v50 + 1);
        if (__OFADD__(v50, 1))
        {
          __break(1u);
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        v64 = [v62 list];
        v65 = [v64 objectID];

        v66 = [v94 objectID];
        sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        LOBYTE(v64) = sub_21DBFB63C();

        if (v64)
        {
        }

        else
        {
          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
        }

        ++v50;
        v59 = v95;
      }

      while (inited != v90);
      v50 = v107;
    }

    inited = sub_21D1778CC(MEMORY[0x277D84F90]);
    if ((v50 & 0x8000000000000000) != 0 || (v50 & 0x4000000000000000) != 0)
    {
      goto LABEL_103;
    }

    for (i = *(v50 + 16); i; i = sub_21DBFBD7C())
    {
      v68 = 0;
      while (1)
      {
        if ((v50 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x223D44740](v68, v50);
        }

        else
        {
          if (v68 >= *(v50 + 16))
          {
            goto LABEL_99;
          }

          v69 = *(v50 + 8 * v68 + 32);
        }

        v70 = v69;
        v71 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          break;
        }

        v72 = [v69 objectID];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v107 = inited;
        sub_21D477304(0, v72, isUniquelyReferenced_nonNull_native);

        inited = v107;
        ++v68;
        if (v71 == i)
        {
          goto LABEL_104;
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
      ;
    }

LABEL_104:

    v57 = v105;
    v74 = [v105 sectionsContextChangeItem];
    if (v74)
    {
      v75 = v74;
      v76 = v84;
      sub_21DBF560C();
      sub_21D1E449C(inited, v76);

      (*(v85 + 8))(v76, v86);
    }

    else
    {
    }

    v59 = v95;
  }

  v77 = v59;
  sub_21DBF8E0C();
  sub_21D20C388(v77, &v107);
  v78 = v107;
  sub_21D1826C4(v88, &v107);
  v79 = v108;
  if (v108)
  {
    v80 = v109;
    __swift_project_boxed_opaque_existential_1(&v107, v108);
    v106[0] = v78;
    v81 = swift_allocObject();
    v82 = v97;
    v81[2] = v96;
    v81[3] = v82;
    v81[4] = v103;
    v81[5] = v87;
    swift_unknownObjectRetain();
    TTRUndoContext.registerUndo(forEditing:action:)(v106, sub_21D974DE0, v81, v79, v80);

    __swift_destroy_boxed_opaque_existential_0(&v107);
  }

  else
  {

    sub_21D0CF7E0(&v107, &unk_27CE60D80, &unk_21DC093F0);
  }

  return v99;
}

void sub_21D973080(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  if (a1)
  {
    v16 = a1;
    if (qword_27CE56E90 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_27CE641B8);

    v18 = a1;
    v19 = a2;

    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAEBC();

    if (os_log_type_enabled(v20, v21))
    {
      v48 = a6;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49[0] = v47;
      *v22 = 136315906;
      swift_getErrorValue();
      v24 = sub_21DBFC74C();
      v26 = sub_21D0CDFB4(v24, v25, v49);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2112;
      v27 = [v19 objectID];
      *(v22 + 14) = v27;
      *v23 = v27;
      *(v22 + 22) = 2048;
      swift_beginAccess();
      v28 = *(a4 + 16);
      if (v28 >> 62)
      {
        v29 = sub_21DBFBD7C();
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a6 = v48;

      *(v22 + 24) = v29;

      *(v22 + 32) = 2048;
      swift_beginAccess();
      v30 = *(a5 + 16);

      *(v22 + 34) = v30;

      _os_log_impl(&dword_21D0C9000, v20, v21, "Failed to move reminders into list {error: %s, listID: %@, reminderCount: %ld, subtaskCount: %ld}", v22, 0x2Au);
      sub_21D0CF7E0(v23, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x223D46520](v47, -1, -1);
      MEMORY[0x223D46520](v22, -1, -1);

      if (!v48)
      {
        goto LABEL_17;
      }
    }

    else
    {

      if (!a6)
      {
LABEL_17:

        return;
      }
    }

    v40 = a1;
    a6(a1);

    goto LABEL_17;
  }

  if (qword_27CE56E90 != -1)
  {
    swift_once();
  }

  v31 = sub_21DBF84BC();
  __swift_project_value_buffer(v31, qword_27CE641B8);
  v32 = a2;

  v33 = sub_21DBF84AC();
  v34 = sub_21DBFAEDC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412802;
    v37 = [v32 objectID];
    *(v35 + 4) = v37;
    *v36 = v37;
    *(v35 + 12) = 2048;
    swift_beginAccess();
    v38 = *(a4 + 16);
    if (v38 >> 62)
    {
      v39 = sub_21DBFBD7C();
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v35 + 14) = v39;

    *(v35 + 22) = 2048;
    swift_beginAccess();
    *(v35 + 24) = *(a5 + 16);

    _os_log_impl(&dword_21D0C9000, v33, v34, "Moved reminders into list {listID: %@, reminderCount: %ld, subtaskCount: %ld}", v35, 0x20u);
    sub_21D0CF7E0(v36, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v36, -1, -1);
    MEMORY[0x223D46520](v35, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = (*(a11 + 16))(a10, a11);
    if (v41)
    {
      v42 = v41;
      v43 = (*(a11 + 8))(a10, a11);
      if ([a9 canUndo])
      {
        v44 = swift_allocObject();
        *(v44 + 16) = a9;
        *(v44 + 24) = v43;
        sub_21D0D8CF0(0, &unk_280D17840, 0x277CCAD90);
        v45 = a9;
        v46 = v43;
        sub_21DBFAE8C();
      }
    }

    if (a6)
    {
      a6(0);
    }

    swift_unknownObjectRelease();
  }

  else if (a6)
  {
    a6(0);
  }
}

uint64_t sub_21D973698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a5 + 8))(a4, a5);
  sub_21D0D32E4(a1, v12);
  v10 = sub_21D973750(a2, 1, v9, v12, a4, a5);

  sub_21D0CF7E0(v12, &unk_27CE60D80, &unk_21DC093F0);
  return v10;
}

uint64_t sub_21D973750(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v144 = *MEMORY[0x277D85DE8];
  v8 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  *&v136 = MEMORY[0x277D84FA0];
  v9 = *(a1 + 16);
  v120 = v8;
  v116 = a1;
  if (v9)
  {
    v10 = a1 + 56;
    v11 = *(a1 + 16);
    do
    {
      v12 = *(v10 - 8);
      v13 = *(v10 - 16);
      v14 = *(v10 - 24);
      v15 = v13;
      v16 = v12;
      sub_21DBF8E0C();
      sub_21D29B0D0(&v132, [v14 objectID]);

      sub_21D29B0D0(&v132, [v15 objectID]);

      v10 += 32;
      --v11;
    }

    while (v11);
    REMSaveRequest.prepareForMutatingOrder(inListsWithIDs:)(v136);

    *&v136 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v17 = (v116 + 48);
    v18 = v9;
    do
    {
      v19 = *v17;
      v17 += 4;
      v20 = v19;
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      --v18;
    }

    while (v18);
  }

  else
  {
    REMSaveRequest.prepareForMutatingOrder(inListsWithIDs:)(MEMORY[0x277D84FA0]);
  }

  v21 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v22 = sub_21DBFA5DC();

  *&v136 = 0;
  v23 = [a3 fetchRemindersWithObjectIDs:v22 error:&v136];

  v24 = v136;
  if (!v23)
  {
    v95 = v136;
    v33 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56E90 != -1)
    {
      goto LABEL_72;
    }

    goto LABEL_62;
  }

  v112 = a3;
  v25 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
  sub_21D183A0C();
  v131 = v25;
  v26 = sub_21DBF9E6C();
  v27 = v24;

  v119 = v26;
  if (!v9)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_66:

    *(swift_allocObject() + 16) = v120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260, &unk_21DC0CB70);
    swift_allocObject();
    v106 = v120;
    v105 = sub_21DBF911C();
    sub_21D1826C4(a4, &v136);
    v107 = v137;
    if (v137)
    {
      v108 = v138;
      __swift_project_boxed_opaque_existential_1(&v136, v137);
      *&v132 = v29;
      v109 = swift_allocObject();
      *(v109 + 16) = a5;
      *(v109 + 24) = a6;
      *(v109 + 32) = v115;
      *(v109 + 40) = v116;
      *(v109 + 48) = a2 & 1;
      *(v109 + 56) = v112;
      sub_21DBF8E0C();
      v110 = v112;
      TTRUndoContext.registerUndo(forEditing:action:)(&v132, sub_21D974DCC, v109, v107, v108);

      __swift_destroy_boxed_opaque_existential_0(&v136);
    }

    else
    {

      sub_21D0CF7E0(&v136, &unk_27CE60D80, &unk_21DC093F0);
    }

    return v105;
  }

  v28 = 0;
  v130 = v21;
  v129 = v26 & 0xC000000000000001;
  v29 = MEMORY[0x277D84F90];
  v125 = v9;
  while (1)
  {
    v30 = v116 + 32 + 32 * v28;
    v31 = *v30;
    v32 = *(v30 + 8);
    v34 = *(v30 + 16);
    v33 = *(v30 + 24);
    if (v129)
    {
      v35 = v34;
      v36 = v31;
      v37 = v32;
      sub_21DBF8E0C();
      v38 = sub_21DBFC2CC();
      if (v38)
      {
        *&v132 = v38;
        swift_dynamicCast();
        v39 = v136;

        if (!v39)
        {
          goto LABEL_56;
        }

        goto LABEL_20;
      }

LABEL_56:
      if (qword_27CE56E90 != -1)
      {
        swift_once();
      }

      v86 = sub_21DBF84BC();
      __swift_project_value_buffer(v86, qword_27CE641B8);
      v87 = v34;
      v88 = v31;
      v89 = v32;
      sub_21DBF8E0C();
      v90 = sub_21DBF84AC();
      v91 = sub_21DBFAEBC();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *v92 = 138412290;
        *(v92 + 4) = v87;
        *v93 = v87;
        v87 = v87;
        _os_log_impl(&dword_21D0C9000, v90, v91, "TTRMoveRemindersToListInteractorCapability#performUndo: missing reminder {objectID: %@}", v92, 0xCu);
        sub_21D0CF7E0(v93, &unk_27CE60070, &unk_21DC09550);
        v94 = v93;
        v9 = v125;
        MEMORY[0x223D46520](v94, -1, -1);
        MEMORY[0x223D46520](v92, -1, -1);
      }

      goto LABEL_12;
    }

    v40 = *(v119 + 16);
    v41 = v34;
    if (!v40)
    {
      v62 = v31;
      v63 = v32;
      sub_21DBF8E0C();
      goto LABEL_56;
    }

    v42 = v41;
    v43 = v31;
    v44 = v32;
    sub_21DBF8E0C();
    v45 = sub_21D17E07C(v42);
    if ((v46 & 1) == 0)
    {

      goto LABEL_56;
    }

    v39 = *(*(v119 + 56) + 8 * v45);

    if (!v39)
    {
      goto LABEL_56;
    }

LABEL_20:
    v128 = v39;
    if (a2)
    {
      v47 = v31;
    }

    else
    {
      v47 = v32;
    }

    sub_21D1826C4(a4, v143);
    sub_21D1826C4(v143, v142);
    v48 = v47;
    v49 = v120;
    v121 = v48;
    v50 = [v49 updateList_];
    sub_21D1826C4(v142, v140);
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v122 = v34;
    v123 = v32;
    v51 = qword_280D1AA18;

    sub_21D0CF7E0(v142, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRListEditor();
    inited = swift_initStackObject();
    v137 = type metadata accessor for TTRUserDefaults();
    v138 = &protocol witness table for TTRUserDefaults;
    *&v136 = v51;
    v53 = v51;
    sub_21D0CF7E0(v143, &unk_27CE60D80, &unk_21DC093F0);
    *(inited + 64) = 0;
    *(inited + 16) = v50;
    v54 = v141;
    v55 = v140[1];
    *(inited + 24) = v140[0];
    *(inited + 40) = v55;
    *(inited + 56) = v54;
    v127 = inited;
    sub_21D0D15E0(&v136, inited + 72);
    v126 = [v49 updateReminder_];
    if (v33 >> 62)
    {
      v56 = sub_21DBFBD7C();
    }

    else
    {
      v56 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v124 = v50;
    if (!v56)
    {
      v61 = MEMORY[0x277D84F90];
      goto LABEL_38;
    }

    *&v136 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    if (v56 < 0)
    {
      break;
    }

    v57 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x223D44740](v57, v33);
      }

      else
      {
        v58 = *(v33 + 8 * v57 + 32);
      }

      v59 = v58;
      ++v57;
      v60 = [v49 updateReminder_];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v56 != v57);
    v61 = v136;
    v50 = v124;
LABEL_38:
    LOBYTE(v136) = 0;
    v64 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_12togetherWith2to05forceI0011allowsLossyI0010assignmentI0So21REMReminderChangeItemC8reminder_SayAKG8subtaskstAK_AMSo07REMListtU0CS2bAC010AssignmentI0OtFZ_0(v126, v61, v50, 0, 0, &v136);
    *&v136 = 0;
    BYTE8(v136) = 2;
    sub_21D1BF7A0(v64, v65, &v136);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_21DC09CF0;
    *(v66 + 32) = [v126 objectID];
    sub_21D1BF9F4(v66);

    v67 = [v64 objectID];
    v137 = v130;
    *&v136 = v67;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);
    v139 = v68;
    v138 = v131;
    sub_21D22BFF0(&v136, &v132);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_21D2116C4(0, *(v29 + 2) + 1, 1, v29);
    }

    v9 = v125;
    v70 = *(v29 + 2);
    v69 = *(v29 + 3);
    if (v70 >= v69 >> 1)
    {
      v29 = sub_21D2116C4((v69 > 1), v70 + 1, 1, v29);
    }

    sub_21D22C04C(&v136);
    *(v29 + 2) = v70 + 1;
    v71 = &v29[64 * v70];
    v72 = v135;
    v73 = v132;
    v74 = v133;
    *(v71 + 4) = v134;
    *(v71 + 5) = v72;
    *(v71 + 2) = v73;
    *(v71 + 3) = v74;
    if (v33 >> 62)
    {
      v75 = sub_21DBFBD7C();
      if (!v75)
      {
LABEL_54:

        swift_setDeallocating();
        sub_21D0CF7E0(v127 + 24, &unk_27CE60D80, &unk_21DC093F0);
        __swift_destroy_boxed_opaque_existential_0((v127 + 72));
        goto LABEL_12;
      }
    }

    else
    {
      v75 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v75)
      {
        goto LABEL_54;
      }
    }

    if (v75 < 1)
    {
      goto LABEL_71;
    }

    v76 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v77 = MEMORY[0x223D44740](v76, v33);
      }

      else
      {
        v77 = *(v33 + 8 * v76 + 32);
      }

      v78 = v77;
      v79 = [v77 remObjectID];
      v137 = v130;
      v138 = v131;
      *&v136 = v79;
      v139 = v68;
      sub_21D22BFF0(&v136, &v132);
      v81 = *(v29 + 2);
      v80 = *(v29 + 3);
      if (v81 >= v80 >> 1)
      {
        v29 = sub_21D2116C4((v80 > 1), v81 + 1, 1, v29);
      }

      ++v76;

      sub_21D22C04C(&v136);
      *(v29 + 2) = v81 + 1;
      v82 = &v29[64 * v81];
      v83 = v135;
      v84 = v132;
      v85 = v133;
      *(v82 + 4) = v134;
      *(v82 + 5) = v83;
      *(v82 + 2) = v84;
      *(v82 + 3) = v85;
    }

    while (v75 != v76);

    swift_setDeallocating();
    sub_21D0CF7E0(v127 + 24, &unk_27CE60D80, &unk_21DC093F0);
    __swift_destroy_boxed_opaque_existential_0((v127 + 72));
    v9 = v125;
LABEL_12:
    if (++v28 == v9)
    {
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  swift_once();
LABEL_62:
  v96 = sub_21DBF84BC();
  __swift_project_value_buffer(v96, qword_27CE641B8);
  v97 = v33;
  v98 = sub_21DBF84AC();
  v99 = sub_21DBFAEBC();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *&v136 = v101;
    *v100 = 136446210;
    swift_getErrorValue();
    v102 = sub_21DBFC75C();
    v104 = sub_21D0CDFB4(v102, v103, &v136);

    *(v100 + 4) = v104;
    _os_log_impl(&dword_21D0C9000, v98, v99, "TTRMoveRemindersToListInteractorCapability#performUndo: failed to fetch reminders {error: %{public}s}", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v101);
    MEMORY[0x223D46520](v101, -1, -1);
    MEMORY[0x223D46520](v100, -1, -1);
  }

  *(swift_allocObject() + 16) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260, &unk_21DC0CB70);
  swift_allocObject();
  v105 = sub_21DBF911C();

  return v105;
}

uint64_t sub_21D9745D4(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = 1;
  return a1(&v4);
}

void sub_21D974618(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);

  v7 = sub_21DBFB12C();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21D22D130;
  *(v8 + 24) = v6;
  v10[4] = sub_21D974D7C;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_21D11E5E4;
  v10[3] = &block_descriptor_119;
  v9 = _Block_copy(v10);

  [a3 saveWithQueue:v7 completion:v9];
  _Block_release(v9);
}

void sub_21D974754(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    if (qword_27CE56E90 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE641B8);
    v6 = a1;
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_21DBFC74C();
      v13 = sub_21D0CDFB4(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Failed to undo move of reminders. %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    v14 = a1;
    a2(a1, 1);
  }

  else
  {
    if (qword_27CE56E90 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_27CE641B8);
    v16 = sub_21DBF84AC();
    v17 = sub_21DBFAEDC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21D0C9000, v16, v17, "Undid move of reminders.", v18, 2u);
      MEMORY[0x223D46520](v18, -1, -1);
    }

    a2(0, 0);
  }
}

uint64_t sub_21D9749D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_21D0D32E4(a1, v14);
  v12 = sub_21D973750(a3, (a4 & 1) == 0, a5, v14, a6, a7);
  sub_21D0CF7E0(v14, &unk_27CE60D80, &unk_21DC093F0);
  return v12;
}

uint64_t _s15RemindersUICore07TTRMoveA26ToListInteractorCapabilityPAAE22fetchSubtasksForMoving2ofSaySo11REMReminderCGAG_tF_0(void *a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 subtaskContext];
  if (v2)
  {
    v3 = v2;
    v24[0] = 0;
    v4 = [v2 fetchRemindersForMovingWithError_];
    v5 = v24[0];
    if (v4)
    {
      v6 = v4;
      sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
      v7 = sub_21DBFA5EC();
      v8 = v5;

      return v7;
    }

    v10 = v24[0];
    v11 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56E90 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE641B8);
    v13 = a1;
    v14 = v11;
    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAEBC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v17 = 138412546;
      v20 = [v13 objectID];
      *(v17 + 4) = v20;
      *v18 = v20;
      *(v17 + 12) = 2080;
      swift_getErrorValue();
      v21 = sub_21DBFC74C();
      v23 = sub_21D0CDFB4(v21, v22, v24);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_21D0C9000, v15, v16, "Failed to fetch subtasks of reminder for moving {objectID: %@, error: %s}", v17, 0x16u);
      sub_21D0CF7E0(v18, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x223D46520](v19, -1, -1);
      MEMORY[0x223D46520](v17, -1, -1);
    }

    else
    {
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21D974D84(uint64_t (*a1)(uint64_t *))
{
  v3 = *(v1 + 16);
  v4 = 1;
  return a1(&v3);
}

double destroy for MoveReminderArguments(id *a1)
{

  return result;
}

void *initializeWithCopy for MoveReminderArguments(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  a1[2] = v6;
  a1[3] = v5;
  v7 = v3;
  v8 = v4;
  v9 = v6;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for MoveReminderArguments(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  v10 = *(a2 + 16);
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;
  v12 = v10;

  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for MoveReminderArguments(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = a2[1];

  return a1;
}

id DateComponents.rem_isAllDay.getter(uint64_t a1)
{
  v1 = sub_21DBF4EDC();
  v2 = [v1 rem_isAllDayDateComponents];

  return v2;
}

id DateComponents.rem_isValid.getter(uint64_t a1)
{
  v1 = sub_21DBF4EDC();
  v2 = [v1 rem_isValidDateComponents];

  return v2;
}

void sub_21D97505C(SEL *a1)
{
  v2 = sub_21DBF4EDC();
  v3 = [v2 *a1];

  sub_21DBF4EFC();
}

void DateComponents.rem_dateComponents(byAddingTimeInterval:)(uint64_t a1, double a2)
{
  v3 = sub_21DBF4EDC();
  v4 = [v3 rem:a2 dateComponentsByAddingTimeInterval:?];

  sub_21DBF4EFC();
}

id DateComponents.rem_isWeekend.getter(uint64_t a1)
{
  v1 = sub_21DBF4EDC();
  v2 = [v1 rem_isWeekendDateComponents];

  return v2;
}

id DateComponents.rem_localizedDayString.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v25 - v1;
  v3 = sub_21DBF5C4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF563C();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = sub_21DBF4EDC();
  sub_21DBF507C();
  v14 = *(v4 + 48);
  if (v14(v2, 1, v3) == 1)
  {
    v15 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v14(v2, 1, v3) != 1)
    {
      sub_21D1E0858(v2);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
  }

  v16 = objc_opt_self();
  v17 = sub_21DBF5C0C();
  (*(v4 + 8))(v6, v3);
  v18 = [v16 rem:v13 dateWithDateComponents:v17 timeZone:?];

  if (v18)
  {
    sub_21DBF55FC();

    v20 = v25;
    v19 = v26;
    (*(v25 + 32))(v12, v9, v26);
    if (qword_280D1B878 != -1)
    {
      swift_once();
    }

    v21 = qword_280D1B880;
    v22 = sub_21DBF55BC();
    v23 = [v21 stringFromDate_];

    v18 = sub_21DBFA16C();
    (*(v20 + 8))(v12, v19);
  }

  return v18;
}

uint64_t sub_21D975538(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v46 = a2;
  v3 = sub_21DBF582C();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = sub_21DBF5C4C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_21DBF563C();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v50 = &v39 - v18;
  v19 = sub_21DBF4EDC();
  v48 = v2;
  sub_21DBF507C();
  v20 = *(v12 + 48);
  v21 = v20(v10, 1, v11);
  v44 = v7;
  v40 = v20;
  if (v21 == 1)
  {
    v22 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v20(v10, 1, v11) != 1)
    {
      sub_21D1E0858(v10);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  v23 = objc_opt_self();
  v24 = sub_21DBF5C0C();
  v25 = *(v12 + 8);
  v25(v14, v11);
  v26 = [v23 rem:v19 dateWithDateComponents:v24 timeZone:?];

  if (!v26)
  {
    return 0;
  }

  sub_21DBF55FC();

  v27 = v47;
  v28 = v49;
  (*(v47 + 32))(v50, v16, v49);
  v29 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v30 = v41;
  sub_21DBF56FC();
  v31 = sub_21DBF574C();
  (*(v42 + 8))(v30, v43);
  [v29 setLocale_];

  [v29 setDateStyle_];
  [v29 setTimeStyle_];
  v32 = v44;
  sub_21DBF507C();
  if (v40(v32, 1, v11) == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = sub_21DBF5C0C();
    v25(v32, v11);
  }

  [v29 setTimeZone_];

  v35 = v50;
  v36 = sub_21DBF55BC();
  v37 = [v29 stringFromDate_];

  v34 = sub_21DBFA16C();
  (*(v27 + 8))(v35, v28);
  return v34;
}

id static TTROneshotEditing.saveRequest(in:)(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D447D8]);

  return [v2 initWithStore_];
}

uint64_t TTROneshotEditing.init(item:saveRequest:undoContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v17[-v13 - 8];
  (*(v11 + 16))(&v17[-v13 - 8], a1, AssociatedTypeWitness, v12);
  sub_21D1826C4(a3, v17);
  (*(a5 + 24))(v14, a2, v17, 0, a4, a5);
  sub_21D311700(a3);
  return (*(v11 + 8))(a1, AssociatedTypeWitness);
}

uint64_t static TTROneshotEditing.oneshotEdit(_:undoManager:editBlock:)(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = 0;
  if (a2)
  {
    v13 = type metadata accessor for TTRBasicUndoContext();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    v14 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v17[1] = 0;
    v17[2] = 0;
  }

  v17[0] = v12;
  v17[3] = v13;
  v17[4] = v14;
  v15 = a2;
  static TTROneshotEditing.oneshotEdit(_:undoContext:editBlock:completionBlock:)(a1, v17, a3, a4, 0, 0, a5, a6);
  return sub_21D311700(v17);
}

id static TTROneshotEditing.performEdit(_:store:listIDsForOrderMutationPreparation:undoContext:unitTest_oneShotSyncSaveForUndo:editBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a6;
  v36 = a7;
  v34 = a5;
  v33 = a4;
  v29 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v28 = *(v16 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v28 - v18;
  v20 = *(a9 + 40);
  v37 = a9;
  v21 = v20(a2, a8, a9, v17);
  [v21 setSaveIsNoopIfNoChangedKeys_];
  if (a3)
  {
    REMSaveRequest.prepareForMutatingOrder(inListsWithIDs:)(a3);
  }

  v38 = v21;
  if (!sub_21DBFA6DC())
  {
    return v38;
  }

  v22 = 0;
  v30 = *(v37 + 24);
  v31 = v37 + 24;
  v32 = (v16 + 16);
  v23 = (v29 + 8);
  while (1)
  {
    v24 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v24)
    {
      (*(v16 + 16))(v19, a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v22, AssociatedTypeWitness);
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    result = sub_21DBFBF7C();
    if (v28 != 8)
    {
      break;
    }

    v39[0] = result;
    (*v32)(v19, v39, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_12:
      __break(1u);
      return v38;
    }

LABEL_7:
    sub_21D1826C4(v33, v39);
    v26 = v38;
    v30(v19, v26, v39, v34 & 1, a8, v37);
    v35(v14);
    (*v23)(v14, a8);
    ++v22;
    if (v25 == sub_21DBFA6DC())
    {
      return v38;
    }
  }

  __break(1u);
  return result;
}

void static TTROneshotEditing.unitTest_oneshotEditWithSyncSave(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = MEMORY[0x223D45970]();
  sub_21D976B90(v8, a1, a2, a3, a4, a5, a6, a7, a8, &v18);
  objc_autoreleasePoolPop(v17);
}

double static TTROneshotEditing.oneshotEdit(_:undoContext:editBlock:completionBlock:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = (*(a8 + 32))(a1, a7, a8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_21D23CE60(AssociatedTypeWitness, AssociatedTypeWitness);
  v15 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v16 = sub_21DBFA60C();
  (*(v15 + 16))(v17, a1, AssociatedTypeWitness);
  sub_21D23C8B4(v16, AssociatedTypeWitness);
  static TTROneshotEditing.oneshotEdit(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:willSave:completionBlock:)(v18, v13, 0, a2, a3, a4, 0, 0, a5, a6, a7, a8);

  return result;
}

uint64_t TTROneshotEditing.init(item:saveRequest:undoManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v20[-1] - v13;
  (*(v11 + 16))(&v20[-1] - v13, a1, AssociatedTypeWitness, v12);
  v15 = 0;
  if (a3)
  {
    v16 = type metadata accessor for TTRBasicUndoContext();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    v17 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v20[1] = 0;
    v20[2] = 0;
  }

  v20[0] = v15;
  v20[3] = v16;
  v20[4] = v17;
  TTROneshotEditing.init(item:saveRequest:undoContext:)(v14, a2, v20, a4, a5);
  return (*(v11 + 8))(a1, AssociatedTypeWitness);
}

uint64_t static TTROneshotEditing.oneshotEdit(_:store:undoManager:editBlock:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = 0;
  if (a3)
  {
    v15 = type metadata accessor for TTRBasicUndoContext();
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    v16 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[0] = v14;
  v19[3] = v15;
  v19[4] = v16;
  v17 = a3;
  static TTROneshotEditing.oneshotEdit(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:willSave:completionBlock:)(a1, a2, 0, v19, a4, a5, 0, 0, 0, 0, a6, a7);
  return sub_21D311700(v19);
}

void static TTROneshotEditing.oneshotEdit(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:willSave:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = static TTROneshotEditing.performEdit(_:store:listIDsForOrderMutationPreparation:undoContext:unitTest_oneShotSyncSaveForUndo:editBlock:)(a1, a2, a3, a4, 0, a5, a6, a11, a12);
  if (a7)
  {
    a7();
  }

  sub_21D0CE468();
  v15 = sub_21DBFB12C();
  v16 = swift_allocObject();
  v16[2] = a11;
  v16[3] = a12;
  v16[4] = a1;
  v16[5] = a9;
  v16[6] = a10;
  aBlock[4] = sub_21D97766C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  aBlock[3] = &block_descriptor_120;
  v17 = _Block_copy(aBlock);
  sub_21DBF8E0C();
  sub_21D0D0E78(a9, a10);

  [v14 saveWithQueue:v15 completion:v17];
  _Block_release(v17);
}

uint64_t sub_21D976634()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE641D0);
  v1 = __swift_project_value_buffer(v0, qword_27CE641D0);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D976714(id a1, uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = a1;
    if (qword_27CE56E98 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_27CE641D0);
    v10 = a1;
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAEBC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_21DBFC74C();
      v17 = sub_21D0CDFB4(v15, v16, &v22);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_21D0C9000, v11, v12, "Failed to save oneshot edit {error: %s}", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);

      if (!a3)
      {
        return;
      }
    }

    else
    {

      if (!a3)
      {
        return;
      }
    }
  }

  else
  {
    if (qword_27CE56E98 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE641D0);
    sub_21DBF8E0C();
    v19 = sub_21DBF84AC();
    v20 = sub_21DBFAE9C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      swift_getAssociatedTypeWitness();
      *(v21 + 4) = sub_21DBFA6DC();

      _os_log_impl(&dword_21D0C9000, v19, v20, "Did perform oneshot edit {items.count: %ld}", v21, 0xCu);
      MEMORY[0x223D46520](v21, -1, -1);

      if (!a3)
      {
        return;
      }
    }

    else
    {

      if (!a3)
      {
        return;
      }
    }
  }

  a3(a1);
}

void static TTROneshotEditing.oneshotEditWithSyncSave(_:store:undoContext:editBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = MEMORY[0x223D45970]();
  sub_21D976AA8(v7, a1, a2, a3, a4, a5, a6, a7, &v16);
  objc_autoreleasePoolPop(v15);
}

void sub_21D976AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v9 = static TTROneshotEditing.performEdit(_:store:listIDsForOrderMutationPreparation:undoContext:unitTest_oneShotSyncSaveForUndo:editBlock:)(a2, a3, 0, a4, 1, a5, a6, a7, a8);
  v13[0] = 0;
  if ([v9 saveSynchronouslyWithError_])
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    v12 = sub_21DBF52DC();

    swift_willThrow();
    *a9 = v12;
  }
}

void sub_21D976B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v10 = static TTROneshotEditing.performEdit(_:store:listIDsForOrderMutationPreparation:undoContext:unitTest_oneShotSyncSaveForUndo:editBlock:)(a2, a3, a4, a5, 1, a6, a7, a8, a9);
  v14[0] = 0;
  if ([v10 saveSynchronouslyWithError_])
  {
    v11 = v14[0];
  }

  else
  {
    v12 = v14[0];
    v13 = sub_21DBF52DC();

    swift_willThrow();
    *a10 = v13;
  }
}

void static TTROneshotEditing.unitTest_oneshotEditWithSyncSave(_:undoContext:editBlock:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a3;
  v33 = a4;
  v31 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v30 - v12;
  v13 = (*(a6 + 32))(a1, a5, a6, v11);
  sub_21D23CE60(AssociatedTypeWitness, AssociatedTypeWitness);
  swift_allocObject();
  v14 = sub_21DBFA60C();
  v15 = *(v10 + 16);
  v15(v16, a1, AssociatedTypeWitness);
  sub_21D23C8B4(v14, AssociatedTypeWitness);
  v34 = v13;
  static TTROneshotEditing.unitTest_oneshotEditWithSyncSave(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:)(v17, v13, 0, v31, v32, v33, a5, a6);
  v18 = v10;
  v19 = v30;

  if (qword_27CE56E98 != -1)
  {
    swift_once();
  }

  v20 = sub_21DBF84BC();
  __swift_project_value_buffer(v20, qword_27CE641D0);
  v15(v19, a1, AssociatedTypeWitness);
  v21 = sub_21DBF84AC();
  v22 = sub_21DBFAE9C();
  v23 = v18;
  if (os_log_type_enabled(v21, v22))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v36 = v25;
    *v24 = 136315138;
    DynamicType = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v26 = sub_21DBFA1AC();
    v28 = v27;
    (*(v23 + 8))(v19, AssociatedTypeWitness);
    v29 = sub_21D0CDFB4(v26, v28, &v36);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_21D0C9000, v21, v22, "Did perform oneshot edit {type: %s}", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x223D46520](v25, -1, -1);
    MEMORY[0x223D46520](v24, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v19, AssociatedTypeWitness);
  }
}

uint64_t static TTROneshotEditing.oneshotEdit(_:undoManager:editBlock:completionBlock:)(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 0;
  if (a2)
  {
    v17 = type metadata accessor for TTRBasicUndoContext();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    v18 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v21[1] = 0;
    v21[2] = 0;
  }

  v21[0] = v16;
  v21[3] = v17;
  v21[4] = v18;
  v19 = a2;
  static TTROneshotEditing.oneshotEdit(_:undoContext:editBlock:completionBlock:)(a1, v21, a3, a4, a5, a6, a7, a8);
  return sub_21D311700(v21);
}

uint64_t static TTROneshotEditing.oneshotEdit(_:store:listIDsForOrderMutationPreparation:undoManager:editBlock:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = 0;
  if (a4)
  {
    v18 = type metadata accessor for TTRBasicUndoContext();
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    v19 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v23[1] = 0;
    v23[2] = 0;
  }

  v23[0] = v17;
  v23[3] = v18;
  v23[4] = v19;
  v20 = a4;
  static TTROneshotEditing.oneshotEdit(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:willSave:completionBlock:)(a1, a2, a3, v23, a5, a6, 0, 0, a7, a8, a9, a10);
  return sub_21D311700(v23);
}

uint64_t static TTROneshotEditing.oneshotEditWithSyncSave(_:store:undoManager:editBlock:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = 0;
  if (a3)
  {
    v15 = type metadata accessor for TTRBasicUndoContext();
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    v16 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[0] = v14;
  v19[3] = v15;
  v19[4] = v16;
  v17 = a3;
  static TTROneshotEditing.oneshotEditWithSyncSave(_:store:undoContext:editBlock:)(a1, a2, v19, a4, a5, a6, a7);
  return sub_21D311700(v19);
}

uint64_t static TTROneshotEditing.unitTest_oneshotEditWithSyncSave(_:store:listIDsForOrderMutationPreparation:undoManager:editBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 0;
  if (a4)
  {
    v17 = type metadata accessor for TTRBasicUndoContext();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    v18 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v21[1] = 0;
    v21[2] = 0;
  }

  v21[0] = v16;
  v21[3] = v17;
  v21[4] = v18;
  v19 = a4;
  static TTROneshotEditing.unitTest_oneshotEditWithSyncSave(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:)(a1, a2, a3, v21, a5, a6, a7, a8);
  return sub_21D311700(v21);
}

uint64_t static TTROneshotEditing.unitTest_oneshotEditWithSyncSave(_:undoManager:editBlock:)(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = 0;
  if (a2)
  {
    v13 = type metadata accessor for TTRBasicUndoContext();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    v14 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v17[1] = 0;
    v17[2] = 0;
  }

  v17[0] = v12;
  v17[3] = v13;
  v17[4] = v14;
  v15 = a2;
  static TTROneshotEditing.unitTest_oneshotEditWithSyncSave(_:undoContext:editBlock:)(a1, v17, a3, a4, a5, a6);
  return sub_21D311700(v17);
}

id static TTROneshotEditing.performEdit(_:store:listIDsForOrderMutationPreparation:undoManager:unitTest_oneShotSyncSaveForUndo:editBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, void (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = 0;
  if (a4)
  {
    v18 = type metadata accessor for TTRBasicUndoContext();
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    v19 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v23[1] = 0;
    v23[2] = 0;
  }

  v23[0] = v17;
  v23[3] = v18;
  v23[4] = v19;
  v20 = a4;
  v21 = static TTROneshotEditing.performEdit(_:store:listIDsForOrderMutationPreparation:undoContext:unitTest_oneShotSyncSaveForUndo:editBlock:)(a1, a2, a3, v23, a5 & 1, a6, a7, a8, a9);
  sub_21D311700(v23);
  return v21;
}

void sub_21D9776CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21DC09CF0;
  *(v7 + 32) = a1;
  v8 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v9 = a1;
  v26 = v6;
  v10 = [v8 initWithStore_];
  [v10 setSaveIsNoopIfNoChangedKeys_];
  v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    v12 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223D44740](v12, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v12 + 32);
      }

      v14 = v13;
      sub_21D1826C4(a2, aBlock);
      v15 = v10;
      v16 = [v15 updateList_];
      sub_21D1826C4(aBlock, v33);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      ++v12;
      v17 = qword_280D1AA18;

      sub_21D311700(aBlock);
      type metadata accessor for TTRListEditor();
      v18 = swift_allocObject();
      v31 = type metadata accessor for TTRUserDefaults();
      v32 = &protocol witness table for TTRUserDefaults;
      *&v30 = v17;
      *(v18 + 64) = 0;
      *(v18 + 16) = v16;
      v19 = v33[1];
      *(v18 + 24) = v33[0];
      *(v18 + 40) = v19;
      *(v18 + 56) = v34;
      swift_beginAccess();
      *(v18 + 64) = 0;
      sub_21D0D15E0(&v30, v18 + 72);
      v20 = v17;
      a5(v18);
    }

    while (v11 != v12);
  }

  sub_21D0CE468();
  v21 = sub_21DBFB12C();
  v22 = swift_allocObject();
  v22[2] = v7;
  v22[3] = a3;
  v22[4] = a4;
  aBlock[4] = sub_21D1D1AC8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  aBlock[3] = &block_descriptor_12_4;
  v23 = _Block_copy(aBlock);
  sub_21D0D0E78(a3, a4);

  [v10 saveWithQueue:v21 completion:v23];
  _Block_release(v23);
}

void sub_21D9779E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v8 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC09CF0;
  *(v9 + 32) = a1;
  v10 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v11 = a1;
  v25 = v8;
  v12 = [v10 initWithStore_];
  [v12 setSaveIsNoopIfNoChangedKeys_];
  v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    v14 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](v14, v9);
      }

      else
      {
        v15 = *(v9 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      sub_21D1826C4(a2, &aBlock);
      v17 = [v12 updateSmartList_];

      type metadata accessor for TTRSmartListEditor();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      v19 = v27;
      *(v18 + 24) = aBlock;
      *(v18 + 40) = v19;
      *(v18 + 56) = v28;
      *(v18 + 64) = 0;
      a5();
    }

    while (v13 != v14);
  }

  sub_21D0CE468();
  v20 = sub_21DBFB12C();
  v21 = swift_allocObject();
  v21[2] = v9;
  v21[3] = a3;
  v21[4] = a4;
  v28 = sub_21D1D1AC8;
  v29 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_21D11E5E4;
  *(&v27 + 1) = &block_descriptor_18_2;
  v22 = _Block_copy(&aBlock);
  sub_21D0D0E78(a3, a4);

  [v12 saveWithQueue:v20 completion:v22];
  _Block_release(v22);
}

void sub_21D977C68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v8 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC09CF0;
  *(v9 + 32) = a1;
  v10 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v11 = a1;
  v25 = v8;
  v12 = [v10 initWithStore_];
  [v12 setSaveIsNoopIfNoChangedKeys_];
  v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    v14 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](v14, v9);
      }

      else
      {
        v15 = *(v9 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      sub_21D1826C4(a2, &aBlock);
      v17 = [v12 updateTemplate_];

      type metadata accessor for TTRTemplateEditor();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      v19 = v27;
      *(v18 + 24) = aBlock;
      *(v18 + 40) = v19;
      *(v18 + 56) = v28;
      *(v18 + 64) = 0;
      a5();
    }

    while (v13 != v14);
  }

  sub_21D0CE468();
  v20 = sub_21DBFB12C();
  v21 = swift_allocObject();
  v21[2] = v9;
  v21[3] = a3;
  v21[4] = a4;
  v28 = sub_21D1D1AC8;
  v29 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_21D11E5E4;
  *(&v27 + 1) = &block_descriptor_24_2;
  v22 = _Block_copy(&aBlock);
  sub_21D0D0E78(a3, a4);

  [v12 saveWithQueue:v20 completion:v22];
  _Block_release(v22);
}

void sub_21D977EE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22._countAndFlagsBits = a4;
  v22._object = a5;
  v23 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v23 setSaveIsNoopIfNoChangedKeys_];
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_21D0CE468();
    v19 = sub_21DBFB12C();
    v20 = swift_allocObject();
    v20[3] = 0;
    v20[4] = 0;
    v20[2] = a1;
    aBlock[4] = sub_21D1D1AC8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_6_5;
    v21 = _Block_copy(aBlock);
    sub_21DBF8E0C();

    [v23 saveWithQueue:v19 completion:v21];
    _Block_release(v21);

    return;
  }

  v7 = sub_21DBFBD7C();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = a1 & 0xC000000000000001;
    v10 = a1;
    do
    {
      if (v9)
      {
        v11 = MEMORY[0x223D44740](v8, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v8 + 32);
      }

      v12 = v11;
      ++v8;
      sub_21D1826C4(a3, aBlock);
      v13 = v23;
      v14 = [v13 updateReminder_];
      sub_21D1826C4(aBlock, v25);
      type metadata accessor for TTRReminderEditor();
      v15 = swift_allocObject();
      *(v15 + 72) = 0;
      *(v15 + 16) = v14;
      sub_21D1826C4(v25, v15 + 24);
      *(v15 + 64) = 0;
      v16 = v14;
      v17 = [v16 fetchedCurrentDueDateDeltaAlert];

      sub_21D311700(v25);
      sub_21D311700(aBlock);
      v18 = *(v15 + 72);
      *(v15 + 72) = v17;

      TTRReminderEditor.edit(tagged:withHashtagNamed:)(1, v22);

      a1 = v10;
    }

    while (v7 != v8);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_21D97823C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t))
{
  v12 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21DC09CF0;
  *(v13 + 32) = a1;
  v14 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v15 = a1;
  v31 = v12;
  v16 = [v14 initWithStore_];
  [v16 setSaveIsNoopIfNoChangedKeys_];
  v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
    v18 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x223D44740](v18, v13);
      }

      else
      {
        v19 = *(v13 + 8 * v18 + 32);
      }

      v20 = v19;
      ++v18;
      sub_21D1826C4(a2, &aBlock);
      v21 = [v16 updateAccount_];

      type metadata accessor for TTRAccountEditor();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      v23 = v33;
      *(v22 + 24) = aBlock;
      *(v22 + 40) = v23;
      *(v22 + 56) = v34;
      *(v22 + 64) = 0;
      a9(a5);
    }

    while (v17 != v18);
  }

  sub_21D0CE468();
  v24 = sub_21DBFB12C();
  v25 = swift_allocObject();
  v25[2] = v13;
  v25[3] = a3;
  v25[4] = a4;
  v34 = a7;
  v35 = v25;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v33 = sub_21D11E5E4;
  *(&v33 + 1) = a8;
  v26 = _Block_copy(&aBlock);
  sub_21D0D0E78(a3, a4);

  [v16 saveWithQueue:v24 completion:v26];
  _Block_release(v26);
}

void sub_21D9784B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC09CF0;
  *(v9 + 32) = a1;
  v10 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v11 = a1;
  v28 = v8;
  v12 = [v10 initWithStore_];
  [v12 setSaveIsNoopIfNoChangedKeys_];
  v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    v14 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](v14, v9);
      }

      else
      {
        v15 = *(v9 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      sub_21D1826C4(a2, &aBlock);
      v17 = [v12 updateAccount_];

      type metadata accessor for TTRAccountEditor();
      inited = swift_initStackObject();
      *(inited + 16) = v17;
      v19 = v31;
      v20 = v30;
      *(inited + 24) = aBlock;
      *(inited + 40) = v20;
      *(inited + 56) = v19;
      *(inited + 64) = 0;
      v21 = [v17 saveRequest];
      v22 = [v21 updateTemplate_];
      [v22 removeFromParentAccount];
    }

    while (v13 != v14);
  }

  sub_21D0CE468();
  v23 = sub_21DBFB12C();
  v24 = swift_allocObject();
  v24[2] = v9;
  v24[3] = a3;
  v24[4] = a4;
  v31 = sub_21D1D1AC8;
  v32 = v24;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_21D11E5E4;
  *(&v30 + 1) = &block_descriptor_30_2;
  v25 = _Block_copy(&aBlock);
  sub_21D0D0E78(a3, a4);

  [v12 saveWithQueue:v23 completion:v25];
  _Block_release(v25);
}

uint64_t sub_21D9787B0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE641F0);
  v1 = __swift_project_value_buffer(v0, qword_27CE641F0);
  if (qword_280D17A48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D978878(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  sub_21DBF8E0C();
  v5 = sub_21DBFA12C();

  v6 = [v4 localizedStringForLabel_];

  sub_21DBFA16C();
  sub_21D176F0C();
  v7 = MEMORY[0x277D837D0];
  v8 = sub_21DBFBB4C();
  v10 = v9;

  v11 = [a3 contactType];
  if (v11 == 1)
  {
    v12 = [objc_opt_self() stringFromContact:a3 style:0];
    if (v12)
    {
      v13 = v12;

      sub_21DBFA16C();
    }

    else
    {
      if (qword_27CE56EA0 != -1)
      {
        swift_once();
      }

      v21 = sub_21DBF84BC();
      __swift_project_value_buffer(v21, qword_27CE641F0);
      v22 = a3;
      v13 = sub_21DBF84AC();
      v23 = sub_21DBFAEBC();

      if (os_log_type_enabled(v13, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v22;
        *v25 = v22;
        v26 = v22;
        _os_log_impl(&dword_21D0C9000, v13, v23, "contact is missing name -- returning cnLocalizedLabel {contact: %@}", v24, 0xCu);
        sub_21D560EB8(v25);
        MEMORY[0x223D46520](v25, -1, -1);
        MEMORY[0x223D46520](v24, -1, -1);
      }
    }
  }

  else if (v11)
  {
    if (qword_27CE56EA0 != -1)
    {
      swift_once();
    }

    v28 = sub_21DBF84BC();
    __swift_project_value_buffer(v28, qword_27CE641F0);
    v29 = MEMORY[0x277D84F90];
    v30 = sub_21D17716C(MEMORY[0x277D84F90]);
    v31 = sub_21D17716C(v29);
    sub_21DAEAB00("unknown contact type", 20, 2, v30, v31);
    __break(1u);
  }

  else
  {
    v14 = [a3 givenName];
    v15 = sub_21DBFA16C();
    v17 = v16;

    v18 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v18 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC08D20;
      *(v19 + 56) = v7;
      v20 = sub_21D17A884();
      *(v19 + 32) = v15;
      *(v19 + 40) = v17;
      *(v19 + 96) = v7;
      *(v19 + 104) = v20;
      *(v19 + 64) = v20;
      *(v19 + 72) = v8;
      *(v19 + 80) = v10;
      sub_21DBFA13C();
    }

    else
    {

      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;
      *(v27 + 56) = v7;
      *(v27 + 64) = sub_21D17A884();
      *(v27 + 32) = v15;
      *(v27 + 40) = v17;
      sub_21DBFA13C();
    }
  }
}

id sub_21D978DB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_21DBFA16C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  sub_21D978878(v5, v7, v8);

  v9 = sub_21DBFA12C();

  return v9;
}

uint64_t sub_21D978E58()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64210);
  v1 = __swift_project_value_buffer(v0, qword_27CE64210);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_21D978F60(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = (v1 + qword_27CE64228);
  *v5 = 0;
  v5[1] = 0;
  v6 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v6 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v6 & *v1) + 0x90)) = 0;
  v7 = v1 + *((*v6 & *v1) + 0x78);
  *v7 = v2;
  *(v7 + 1) = v3;
  v7[16] = v4;
  *(v1 + *((*v6 & *v1) + 0x80)) = 0;
  v8 = (v1 + *((*v6 & *v1) + 0x88));
  *v8 = 0xD000000000000012;
  v8[1] = 0x800000021DC71840;
  v10.receiver = v1;
  v10.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64390, &unk_21DC33270);
  return objc_msgSendSuper2(&v10, sel_init);
}

unint64_t sub_21D9790CC(uint64_t a1)
{
  v2 = v1;
  v4 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x78));
  swift_beginAccess();
  result = *v4;
  v6 = v4[1];
  if ((result & 0x8000000000000000) != 0 && (v7 = __OFSUB__(0, result), result = -result, v7))
  {
    __break(1u);
  }

  else
  {
    sub_21D97926C(result);
    result = sub_21D97A14C(v6);
    v8 = *(a1 + qword_27CE64278);
    *(a1 + qword_27CE64278) = result;
    if (v8 != result)
    {
      return sub_21D97A234();
    }
  }

  return result;
}

id sub_21D97926C(id result)
{
  v2 = *(v1 + qword_27CE64270);
  *(v1 + qword_27CE64270) = result;
  if (v2 != result)
  {
    sub_21D97A030();
    v3 = *(v1 + qword_27CE64258);
    v4 = *(v1 + qword_27CE64260 + 8);
    if (*(v4 + 16) && (v5 = sub_21D17E780(1), (v6 & 1) != 0))
    {
      v7 = *(*(v4 + 56) + 8 * v5);
    }

    else
    {
      v7 = 0;
    }

    return [v3 reloadComponent_];
  }

  return result;
}

void *sub_21D97930C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

char *sub_21D97933C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[qword_27CE64250 + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = qword_27CE64268;
  *&v4[qword_27CE64268] = &unk_282EA8080;
  *&v4[qword_27CE64270] = 1;
  v4[qword_27CE64278] = 1;
  v9 = [objc_allocWithZone(MEMORY[0x277D75840]) initWithFrame_];
  *&v4[qword_27CE64258] = v9;
  v10 = *&v4[v8];
  v11 = v9;
  v12 = sub_21DBF8E0C();
  v13 = sub_21D97A334(v12);
  v14 = &v4[qword_27CE64260];
  *v14 = v10;
  v14[1] = v13;
  if (a3)
  {
    v15 = sub_21DBFA12C();
  }

  else
  {
    v15 = 0;
  }

  v26.receiver = v4;
  v26.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v26, sel_initWithStyle_reuseIdentifier_, a1, v15);

  v17 = qword_27CE5AF20;
  v18 = *&v16[qword_27CE5AF20];
  v19 = v16;
  [v18 setAxis_];
  [v11 setDelegate_];
  v20 = *&v16[v17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC09CF0;
  *(v21 + 32) = v11;
  sub_21D114EC8();
  v22 = v11;
  v23 = v20;
  v24 = sub_21DBFA5DC();

  [v23 setArrangedSubviews_];

  sub_21D97A030();
  sub_21D97A234();

  return v19;
}

char *sub_21D97955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_21D97933C(a3, a4, v6);
}

void sub_21D9795DC()
{
  v1 = objc_allocWithZone(v0);
  *&v1[qword_27CE64250 + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_21DBFC31C();
  __break(1u);
}

uint64_t sub_21D979658()
{
  v1 = *(v0 + qword_27CE64258);
  v2 = [v1 numberOfComponents];
  v3 = v2;
  v4 = *(v0 + qword_27CE64260 + 8);
  if (*(v4 + 16))
  {
    v5 = sub_21D17E780(0);
    if (v6)
    {
      if (*(*(v4 + 56) + 8 * v5) >= v3)
      {
        return 1;
      }
    }

    else if (v3 < 1)
    {
      return 1;
    }

    v7 = sub_21D17E780(0);
    if (v8)
    {
      v9 = *(*(v4 + 56) + 8 * v7);
      goto LABEL_12;
    }
  }

  else if (v2 <= 0)
  {
    return 1;
  }

  v9 = 0;
LABEL_12:
  v11 = [v1 selectedRowInComponent_];
  v12 = __OFADD__(v11, 1);
  result = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21D979728()
{
  v1 = *(v0 + qword_27CE64258);
  v2 = [v1 numberOfComponents];
  v3 = v2;
  v4 = *(v0 + qword_27CE64260 + 8);
  if (*(v4 + 16))
  {
    v5 = sub_21D17E780(1);
    if (v6)
    {
      if (*(*(v4 + 56) + 8 * v5) >= v3)
      {
        return 1;
      }
    }

    else if (v3 < 1)
    {
      return 1;
    }

    v7 = sub_21D17E780(1);
    if (v8)
    {
      v9 = *(*(v4 + 56) + 8 * v7);
      goto LABEL_12;
    }
  }

  else if (v2 <= 0)
  {
    return 1;
  }

  v9 = 0;
LABEL_12:
  result = [v1 selectedRowInComponent_];
  if (result >= 5)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

double sub_21D9797F4()
{
  sub_21D157444(v0 + qword_27CE64250);

  return result;
}

double sub_21D979868(uint64_t a1)
{
  sub_21D157444(a1 + qword_27CE64250);

  return result;
}

id sub_21D979A14(uint64_t a1)
{
  v3 = [*(v1 + qword_27CE64258) effectiveUserInterfaceLayoutDirection];
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = [objc_opt_self() labelColor];
  [v4 setTextColor_];

  v6 = *MEMORY[0x277D74418];
  v7 = objc_opt_self();
  v8 = [v7 systemFontOfSize:23.0 weight:v6];
  v9 = [v8 fontDescriptor];
  v10 = [v9 fontDescriptorWithDesign_];

  if (v10)
  {
    v11 = [v7 fontWithDescriptor:v10 size:0.0];

    v8 = v11;
  }

  v12 = v3 == 1;
  [v4 setFont_];

  if (a1 == 1)
  {
    v13 = 2 * v12;
  }

  else
  {
    v13 = 1;
  }

  [v4 setTextAlignment_];
  return v4;
}

uint64_t sub_21D979BB8(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0 || (v4 = *(v2 + qword_27CE64260), *(v4 + 16) <= a2) || (*(v4 + a2 + 32) & 1) == 0)
  {
    v8 = objc_opt_self();
    v9 = __OFADD__(a1, 1);
    v10 = a1 + 1;
    if (v9)
    {
      __break(1u);
      goto LABEL_17;
    }

    v11 = v8;
    v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v13 = [v11 localizedStringFromNumber:v12 numberStyle:1];

    v14 = sub_21DBFA16C();
    return v14;
  }

  if (a1 > 4)
  {
    return 0;
  }

  result = sub_21D979658();
  v6 = -result;
  if (__OFSUB__(0, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

LABEL_18:
    swift_once();
    return sub_21DBF516C();
  }

  if (!__OFSUB__(0, v6))
  {
    return _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO16intervalUnitText5count0gH0SSSi_So015REMDueDateDeltaH0VtFZ_0(result, a1);
  }

  __break(1u);
  return result;
}

unint64_t sub_21D979F44()
{
  result = qword_27CE64370;
  if (!qword_27CE64370)
  {
    result = swift_getWitnessTable(aQoD, &type metadata for TTRIIntervalPickerTableCell.PickerViewComponentType, v0, v1);
    atomic_store(result, &qword_27CE64370);
  }

  return result;
}

unint64_t sub_21D979FDC()
{
  result = qword_27CE64388;
  if (!qword_27CE64388)
  {
    result = swift_getWitnessTable(byte_21DC33238, &type metadata for TTRIIntervalPickerTableCell.Units, v0, v1);
    atomic_store(result, &qword_27CE64388);
  }

  return result;
}

uint64_t sub_21D97A030()
{
  v1 = v0;
  v2 = *(v0 + qword_27CE64258);
  result = [v2 numberOfComponents];
  v4 = result;
  v5 = *(v0 + qword_27CE64260 + 8);
  if (!*(v5 + 16))
  {
    if (result <= 0)
    {
      return result;
    }

    v7 = *(v1 + qword_27CE64270);
    v8 = v7 - 1;
    if (!__OFSUB__(v7, 1))
    {
LABEL_14:
      v11 = 0;
      if (v8 < 0)
      {
        return result;
      }

      goto LABEL_15;
    }

LABEL_20:
    __break(1u);
    return result;
  }

  result = sub_21D17E780(0);
  if (v6)
  {
    if (*(*(v5 + 56) + 8 * result) >= v4)
    {
      return result;
    }
  }

  else if (v4 < 1)
  {
    return result;
  }

  v9 = *(v1 + qword_27CE64270);
  v8 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    goto LABEL_20;
  }

  result = sub_21D17E780(0);
  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

  v11 = *(*(v5 + 56) + 8 * result);
  if (v8 < 0)
  {
    return result;
  }

LABEL_15:
  if ((v11 & 0x8000000000000000) == 0)
  {

    return [v2 selectRow:v8 inComponent:? animated:?];
  }

  return result;
}

unint64_t sub_21D97A14C(unint64_t result)
{
  if (result >= 5)
  {
    if (qword_27CE56EA8 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_27CE64210);
    v2 = sub_21DBF84AC();
    v3 = sub_21DBFAEBC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21D0C9000, v2, v3, "TTRIIntervalPickerTableCell.Units: Invalid remValue", v4, 2u);
      MEMORY[0x223D46520](v4, -1, -1);
    }

    return 1;
  }

  return result;
}

uint64_t sub_21D97A234()
{
  v1 = v0;
  v2 = *(v0 + qword_27CE64258);
  result = [v2 numberOfComponents];
  v4 = result;
  v5 = *(v0 + qword_27CE64260 + 8);
  if (*(v5 + 16))
  {
    result = sub_21D17E780(1);
    if (v6)
    {
      if (*(*(v5 + 56) + 8 * result) >= v4)
      {
        return result;
      }
    }

    else if (v4 <= 0)
    {
      return result;
    }

    v8 = *(v1 + qword_27CE64278);
    v9 = sub_21D17E780(1);
    if (v10)
    {
      v7 = *(*(v5 + 56) + 8 * v9);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (result <= 0)
    {
      return result;
    }

    v7 = 0;
    v8 = *(v1 + qword_27CE64278);
  }

  return [v2 selectRow:v8 inComponent:v7 animated:0];
}

void *sub_21D97A334(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  v2 = 0;
  v3 = a1 + 32;
  v4 = MEMORY[0x277D84F98];
  while (1)
  {
    v5 = *(v3 + v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = sub_21D17E780(v5);
    v9 = v4[2];
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      break;
    }

    v13 = v8;
    if (v4[3] < v12)
    {
      sub_21D218DBC(v12, isUniquelyReferenced_nonNull_native);
      v7 = sub_21D17E780(v5);
      if ((v13 & 1) != (v14 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v13)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v17 = v7;
    sub_21D2224F4();
    v7 = v17;
    if (v13)
    {
LABEL_3:
      *(v4[7] + 8 * v7) = v2;
      goto LABEL_4;
    }

LABEL_11:
    v4[(v7 >> 6) + 8] |= 1 << v7;
    *(v4[6] + 8 * v7) = v5;
    *(v4[7] + 8 * v7) = v2;
    v15 = v4[2];
    v11 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (v11)
    {
      goto LABEL_18;
    }

    v4[2] = v16;
LABEL_4:
    if (v1 == ++v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

void sub_21D97A49C()
{
  *(v0 + qword_27CE64250 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_27CE64268) = &unk_282EA80A8;
  *(v0 + qword_27CE64270) = 1;
  *(v0 + qword_27CE64278) = 1;
  sub_21DBFC31C();
  __break(1u);
}

void sub_21D97A540()
{
  v1 = sub_21D979658();
  v2 = -v1;
  if (__OFSUB__(0, v1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v3 = sub_21D979728();
  if (v2 < 0)
  {
    v4 = __OFSUB__(0, v2);
    v2 = -v2;
    if (v4)
    {
      goto LABEL_16;
    }
  }

  sub_21D97926C(v2);
  v5 = sub_21D97A14C(v3);
  v6 = qword_27CE64278;
  v7 = *(v0 + qword_27CE64278);
  *(v0 + qword_27CE64278) = v5;
  if (v7 != v5)
  {
    sub_21D97A234();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(v0 + qword_27CE64270);
    v10 = -v9;
    if (!__OFSUB__(0, v9))
    {
      v11 = Strong;
      v12 = *(v0 + v6);
      sub_21D5C732C(-v9, v12, 1);
      v13 = *(v11 + qword_27CE64228);
      if (v13)
      {
        v14 = *(v11 + qword_27CE64228 + 8);
        v15[0] = v10;
        v15[1] = v12;
        v16 = 1;

        v13(v15);
        swift_unknownObjectRelease();
        sub_21D0D0E88(v13, v14);
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return;
    }

    goto LABEL_15;
  }
}

Swift::Bool __swiftcall TTRReminderDetailCompletionState.prepareToCommitOrCancel()()
{
  v1 = *v0;
  if (!*v0)
  {
    *v0 = 1;
  }

  return v1 == 0;
}

uint64_t TTRReminderDetailCompletionState.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D97A758()
{
  result = qword_27CE64398;
  if (!qword_27CE64398)
  {
    atomic_store(result, &qword_27CE64398);
  }

  return result;
}

uint64_t initializeWithCopy for TTRSESuggestedRemindersState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRSESuggestedRemindersState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRSESuggestedRemindersState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void sub_21D97A914(char a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v32 = v11;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v34 = v12;
    swift_bridgeObjectRetain_n();
    v36 = a3;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v13 = 0;
    v35 = MEMORY[0x277D84F90];
    v14 = a2 >> 62;
    for (i = a2 >> 62; ; v14 = i)
    {
      v15 = v13;
      if (!v14)
      {
        break;
      }

      while (2)
      {
        v16 = sub_21DBFBD7C();
        if (v15 == v16)
        {
          goto LABEL_30;
        }

        while (1)
        {
LABEL_12:
          if ((a2 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x223D44740](v15, a2);
          }

          else
          {
            if ((v15 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              return;
            }

            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v17 = *(a2 + 8 * v15 + 32);
          }

          v18 = v17;
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_34;
          }

          if (*(a4 + 16))
          {
            v19 = sub_21D17E07C(v17);
            if (v20)
            {
              break;
            }
          }

          ++v15;
          if (v13 == v16)
          {
            goto LABEL_30;
          }
        }

        v21 = *(*(a4 + 56) + 24 * v19);
        sub_21DBF8E0C();

        v22 = sub_21D1E21BC(v21, v36);

        if (v22)
        {

          v15 = v13;
          if (i)
          {
            continue;
          }

          goto LABEL_7;
        }

        break;
      }

      v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v25 = v32;
      (*(*(v24 - 8) + 56))(v32 + v23, 1, 1, v24);
      *v25 = v21;
      swift_storeEnumTagMultiPayload();
      v26 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_21D214F10(0, v26[2] + 1, 1, v26);
      }

      v28 = v26[2];
      v27 = v26[3];
      v35 = v26;
      if (v28 >= v27 >> 1)
      {
        v35 = sub_21D214F10((v27 > 1), v28 + 1, 1, v35);
      }

      v29 = v35;
      v35[2] = v28 + 1;
      sub_21D97BA40(v32, v29 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v28);
    }

LABEL_7:
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

LABEL_30:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v30 = v35;
    if (v35[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A60, &unk_21DC316E0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_21DC08D00;
      swift_storeEnumTagMultiPayload();
      v37 = v31;
      sub_21D5635D0(v30);
    }

    else
    {
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A60, &unk_21DC316E0);
    *(swift_allocObject() + 16) = xmmword_21DC08D20;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }
}

void sub_21D97AD40(char a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v7 = sub_21DBF604C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277D44DA8], v7, v9);
  v12 = sub_21DBF603C();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0 || (a1 & 1) == 0)
  {
    return;
  }

  v32 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_60:
    v13 = sub_21DBFBD7C();
  }

  else
  {
    v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = a2 & 0xC000000000000001;
  v34 = a2 + 32;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v15 = 0;
  while (1)
  {
    if (v13 == v15)
    {
      v15 = v13;
      if (v32)
      {
        goto LABEL_19;
      }

LABEL_16:
      v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15 != v20)
      {
        goto LABEL_22;
      }

      goto LABEL_47;
    }

    if (v14)
    {
      v17 = MEMORY[0x223D44740](v15, a2);
    }

    else
    {
      if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v17 = *(a2 + 8 * v15 + 32);
    }

    v18 = v17;
    if (*(a4 + 16))
    {
      sub_21D17E07C(v17);
      if (v19)
      {
        break;
      }
    }

    v16 = __OFADD__(v15++, 1);
    if (v16)
    {
      goto LABEL_55;
    }
  }

  if (!v32)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = sub_21DBFBD7C();
  if (v15 == v20)
  {
    goto LABEL_47;
  }

LABEL_22:
  while (2)
  {
    if (v14)
    {
      v21 = MEMORY[0x223D44740](v15, a2);
      goto LABEL_26;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_56;
    }

    if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v21 = *(v34 + 8 * v15);
LABEL_26:
    v22 = v21;
    if (*(a4 + 16) && (v23 = sub_21D17E07C(v21), (v24 & 1) != 0))
    {
      v25 = *(*(a4 + 56) + 24 * v23);
      sub_21DBF8E0C();

      v26 = sub_21D1E21BC(v25, v33);

      if (v26)
      {
        if (!v32)
        {
          v27 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v15 != v27)
          {
            goto LABEL_35;
          }

LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (v15 == sub_21DBFBD7C())
        {
          goto LABEL_59;
        }

        v27 = sub_21DBFBD7C();
        while (1)
        {
LABEL_35:
          v16 = __OFADD__(v15++, 1);
          if (v16)
          {
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          if (v15 == v27)
          {
            v15 = v27;
            if (v27 == v20)
            {
              goto LABEL_47;
            }

            goto LABEL_22;
          }

          if (v14)
          {
            v28 = MEMORY[0x223D44740](v15, a2);
          }

          else
          {
            if ((v15 & 0x8000000000000000) != 0)
            {
              goto LABEL_52;
            }

            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_53;
            }

            v28 = *(v34 + 8 * v15);
          }

          v29 = v28;
          if (*(a4 + 16))
          {
            sub_21D17E07C(v28);
            if (v30)
            {
              break;
            }
          }
        }

        if (v15 != v20)
        {
          continue;
        }
      }

LABEL_47:

      if (v32)
      {
        sub_21DBFBD7C();
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      __break(1u);
    }

    break;
  }
}

void sub_21D97B164(uint64_t a1)
{
  if (*a1 != 1)
  {
    return;
  }

  v2 = *(a1 + 16);
  v1 = a1 + 16;
  v3 = *(v1 - 8);
  v4 = *(v1 + 8);
  swift_bridgeObjectRetain_n();
  v24 = v2;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 == v7)
  {
LABEL_27:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v22 = v6[2];
    if (v22)
    {
      v23 = 4;
      do
      {
        sub_21D29B0D0(&v25, v6[v23]);

        v23 += 3;
        --v22;
      }

      while (v22);
    }

    return;
  }

  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D44740](v5, v3);
      goto LABEL_12;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

    v8 = *(v3 + 8 * v5 + 32);
LABEL_12:
    v9 = v8;
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_32;
    }

    if (*(v4 + 16) && (v11 = sub_21D17E07C(v8), (v12 & 1) != 0))
    {
      v13 = *(v4 + 56) + 24 * v11;
      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      v16 = *v13;
      sub_21DBF8E0C();

      v17 = sub_21D1E21BC(v16, v24);
      if (v17)
      {
      }

      else
      {
        v25 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21D18F60C(0, v6[2] + 1, 1);
          v6 = v25;
        }

        v19 = v6[2];
        v18 = v6[3];
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          sub_21D18F60C((v18 > 1), v19 + 1, 1);
          v20 = v19 + 1;
          v6 = v25;
        }

        v6[2] = v20;
        v21 = &v6[3 * v19];
        v21[4] = v16;
        v21[5] = v14;
        v21[6] = v15;
      }

      v5 = v10;
      if (!(v3 >> 62))
      {
        goto LABEL_3;
      }

LABEL_5:
      v7 = sub_21DBFBD7C();
      if (v5 == v7)
      {
        goto LABEL_27;
      }
    }

    else
    {

      ++v5;
      if (v10 == v7)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_21D97B3FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v3 = *(a1 + 2);
    v2 = *(a1 + 3);
    v5 = *(a2 + 2);
    v4 = *(a2 + 3);
    if (sub_21D1D7450(*(a1 + 1), *(a2 + 1)) & 1) != 0 && (sub_21D322414(v3, v5))
    {

      sub_21D371718(v2, v4);
    }
  }
}

uint64_t sub_21D97B494(char a1, uint64_t a2, char a3)
{
  LOBYTE(v3) = a3;
  v4 = a2;
  LOBYTE(v5) = a1;
  v34 = MEMORY[0x277D84F98];
  v6 = *(a2 + 16);
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v35 = sub_21DBFBF9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE643A0, &unk_21DC33368);
    sub_21DBF9EAC();
    if (!v6)
    {
      break;
    }

    v30 = v3;
    v31 = v5;
    v7 = v34;
    v5 = (v4 + 48);
    v3 = v6 & ~(v6 >> 63);
    while (v3)
    {
      v32 = *(v5 - 1);
      v4 = *v5;
      v10 = *(v5 - 2);
      sub_21DBF8E0C();
      v11 = v10;
      MEMORY[0x223D42D80]();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v12 = v11;
      sub_21DBF8E0C();
      v13 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v7;
      v15 = sub_21D17E07C(v13);
      v17 = v7[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_25;
      }

      v21 = v16;
      if (v7[3] < v20)
      {
        sub_21D21EB04(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_21D17E07C(v13);
        if ((v21 & 1) != (v22 & 1))
        {
          sub_21D37FB1C();
          result = sub_21DBFC70C();
          __break(1u);
          return result;
        }

LABEL_14:
        v23 = v32;
        if (v21)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v27 = v15;
      sub_21D225B9C();
      v15 = v27;
      v23 = v32;
      v7 = v33;
      if (v21)
      {
LABEL_4:
        v8 = v7[7] + 24 * v15;
        v9 = *v8;
        *v8 = v13;
        *(v8 + 8) = v23;
        *(v8 + 16) = v4;

        goto LABEL_5;
      }

LABEL_15:
      v7[(v15 >> 6) + 8] |= 1 << v15;
      *(v7[6] + 8 * v15) = v13;
      v24 = (v7[7] + 24 * v15);
      *v24 = v13;
      v24[1] = v23;
      v24[2] = v4;

      v25 = v7[2];
      v19 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v19)
      {
        goto LABEL_26;
      }

      v7[2] = v26;
LABEL_5:
      --v3;
      v5 += 3;
      if (!--v6)
      {
        LOBYTE(v3) = v30;
        LOBYTE(v5) = v31;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_21DBFBD7C();
  }

LABEL_20:
  if (v3)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  return v28 & 0xFFFFFFFE | v5 & 1;
}

void sub_21D97B794(uint64_t a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    return;
  }

  v3 = *(a1 + 16);
  v2 = a1 + 16;
  v4 = *(v2 - 8);
  v5 = *(v2 + 8);
  swift_bridgeObjectRetain_n();
  v26 = v3;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 == v8)
  {
LABEL_28:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v23 = v7[2];
    if (v23)
    {
      v24 = 4;
      do
      {
        sub_21D29B0D0(&v27, v7[v24]);

        v24 += 3;
        --v23;
      }

      while (v23);
    }

    return;
  }

  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x223D44740](v6, v4);
      goto LABEL_12;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    v9 = *(v4 + 8 * v6 + 32);
LABEL_12:
    v10 = v9;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_33;
    }

    if (*(v5 + 16) && (v12 = sub_21D17E07C(v9), (v13 & 1) != 0))
    {
      v14 = *(v5 + 56) + 24 * v12;
      v15 = *(v14 + 8);
      v16 = *(v14 + 16);
      v17 = *v14;
      sub_21DBF8E0C();

      v18 = sub_21D1E21BC(v17, v26);
      if (v18 & 1) == 0 && (sub_21D1E21BC(v17, a2))
      {
        v27 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21D18F60C(0, v7[2] + 1, 1);
          v7 = v27;
        }

        v20 = v7[2];
        v19 = v7[3];
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          sub_21D18F60C((v19 > 1), v20 + 1, 1);
          v21 = v20 + 1;
          v7 = v27;
        }

        v7[2] = v21;
        v22 = &v7[3 * v20];
        v22[4] = v17;
        v22[5] = v15;
        v22[6] = v16;
      }

      else
      {
      }

      v6 = v11;
      if (!(v4 >> 62))
      {
        goto LABEL_3;
      }

LABEL_5:
      v8 = sub_21DBFBD7C();
      if (v6 == v8)
      {
        goto LABEL_28;
      }
    }

    else
    {

      ++v6;
      if (v11 == v8)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_21D97BA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D97BAB8()
{
  result = qword_27CE643A8;
  if (!qword_27CE643A8)
  {
    result = swift_getWitnessTable(byte_21DC333C8, &type metadata for TTRSESuggestedRemindersState.LoadingState, v0, v1);
    atomic_store(result, &qword_27CE643A8);
  }

  return result;
}

uint64_t TTRITreeViewExpandedState.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

__n128 TTRITreeViewCellModel.init(level:expandedState:itemIdentifier:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = a1;
  *(a4 + 8) = v4;
  result = *a3;
  v6 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v6;
  *(a4 + 48) = *(a3 + 32);
  return result;
}

uint64_t static TTRITreeViewCellModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    JUMPOUT(0x223D445C0);
  }

  return 0;
}

unint64_t sub_21D97BC0C()
{
  result = qword_27CE643B0;
  if (!qword_27CE643B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRITreeViewExpandedState, &type metadata for TTRITreeViewExpandedState, v0, v1);
    atomic_store(result, &qword_27CE643B0);
  }

  return result;
}

uint64_t sub_21D97BC60(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    JUMPOUT(0x223D445C0);
  }

  return 0;
}

uint64_t initializeWithCopy for TTRITreeViewCellModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  (**(v3 - 8))(a1 + 16, a2 + 16);
  return a1;
}

uint64_t assignWithCopy for TTRITreeViewCellModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  __swift_assign_boxed_opaque_existential_1((a1 + 16), (a2 + 16));
  return a1;
}

uint64_t assignWithTake for TTRITreeViewCellModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  __swift_destroy_boxed_opaque_existential_0((a1 + 16));
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRITreeViewCellModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRITreeViewCellModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_21D97BF04()
{
  v1 = qword_280D13DC8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D97BF48(double a1)
{
  v3 = qword_280D13DC8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_21D97BFF8()
{
  v1 = [v0 contentView];
  [v1 bounds];

  swift_beginAccess();
}

id sub_21D97C094()
{
  v1 = *&v0[qword_280D13DD0];
  v2 = [v0 contentView];
  [v2 layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  return [v1 setLayoutMargins_];
}

id TTRITableViewContainerCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id TTRITableViewContainerCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *MEMORY[0x277D85000];
  *(v3 + qword_280D13DC8) = 0x4069000000000000;
  v8 = *((v7 & v6) + 0x50);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  [v9 setPreservesSuperviewLayoutMargins_];
  [v9 setLayoutMarginsRelativeArrangement_];
  [v9 setAutoresizingMask_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview_];
  *(v3 + qword_280D13DD0) = v9;
  v10 = v9;
  if (a3)
  {
    v13 = sub_21DBFA12C();
  }

  else
  {
    v13 = 0;
  }

  v27.receiver = v3;
  v27.super_class = type metadata accessor for TTRITableViewContainerCell(0, v8, v11, v12);
  v14 = objc_msgSendSuper2(&v27, sel_initWithStyle_reuseIdentifier_, a1, v13);

  v15 = v14;
  v16 = [v15 contentView];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [v9 setFrame_];
  v25 = [v15 contentView];

  [v25 addSubview_];
  return v15;
}

id sub_21D97C3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRITableViewContainerCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

id TTRITableViewContainerCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TTRITableViewContainerCell.__allocating_init(reuseIdentifier:)()
{
  v1 = objc_allocWithZone(v0);
  *&v1[qword_280D13DC8] = 0x4069000000000000;
  sub_21DBFC31C();
  __break(1u);
}

double sub_21D97C528(double a1)
{
  sub_21D97C094();
  sub_21D97BFF8();
  [*(v1 + qword_280D13DD0) effectiveLayoutSizeFittingSize_];
  return a1;
}

double sub_21D97C57C(void *a1, double a2)
{
  v3 = a1;
  v4 = sub_21D97C528(a2);

  return v4;
}

id sub_21D97C5C8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for TTRITableViewContainerCell(0, *((*MEMORY[0x277D85000] & *v5) + 0x50), a4, a5);
  v21.receiver = v5;
  v21.super_class = v6;
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  sub_21D97C094();
  v7 = [v5 contentView];
  [v7 bounds];

  sub_21D97BFF8();
  v8 = *(v5 + qword_280D13DD0);
  [v8 effectiveLayoutSizeFittingSize_];
  v10 = v9;
  v12 = v11;
  v13 = [v5 contentView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;

  if (v10 > v15)
  {
    v18 = v10;
  }

  else
  {
    v18 = v15;
  }

  if (v12 > v17)
  {
    v19 = v12;
  }

  else
  {
    v19 = v17;
  }

  return [v8 setFrame_];
}

void sub_21D97C704(void *a1)
{
  v5 = a1;
  sub_21D97C5C8(v4, v5, v1, v2, v3);
}

id TTRITableViewContainerCell.__deallocating_deinit(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for TTRITableViewContainerCell(0, *((*MEMORY[0x277D85000] & *v5) + 0x50), a4, a5);
  v8.receiver = v5;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void _s15RemindersUICore26TTRITableViewContainerCellC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  *(v0 + qword_280D13DC8) = 0x4069000000000000;
  sub_21DBFC31C();
  __break(1u);
}

void _s15RemindersUICore26TTRITableViewContainerCellC15reuseIdentifierACyxGSgSSSg_tcfc_0()
{
  *(v0 + qword_280D13DC8) = 0x4069000000000000;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t sub_21D97C9C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v3;
    v6 = a1;
    v4 = a2;
    *v26 = *v3;
    *&v26[16] = *(v3 + 16);
    *&v26[32] = *(v3 + 32);
    a1 = sub_21D97E6B4();
    v5 = *v26;
    v25 = *&v26[8];
    v27 = *v26;
    v7 = *v26 >> 62;
    if (!(*v26 >> 62))
    {
      sub_21D97E824(a1, v6, *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10));
      if (v9)
      {
        v10 = *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      else
      {
        v10 = v8;
      }

      result = sub_21D97E6B4();
      if (v10 < result)
      {
        goto LABEL_30;
      }

      v12 = result;
      result = *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= v12)
      {
        goto LABEL_8;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  v21 = a1;
  v22 = sub_21DBFBD7C();
  sub_21D97E824(v21, v6, v22);
  if (v24)
  {
    v23 = sub_21DBFBD7C();
  }

  v10 = v23;
  result = sub_21D97E6B4();
  if (v10 < result)
  {
    goto LABEL_30;
  }

  v12 = result;
  result = sub_21DBFBD7C();
  if (result < v12)
  {
    goto LABEL_29;
  }

LABEL_8:
  if (v12 < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v7)
  {
    result = sub_21DBFBD7C();
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v10)
  {
    goto LABEL_32;
  }

  if (v10 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((v5 & 0xC000000000000001) == 0 || v12 == v10)
  {
    sub_21DBF8E0C();
    if (!v7)
    {
LABEL_20:
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v15 + 32;
      v17 = (2 * v10) | 1;
LABEL_23:
      result = sub_21D0CF7E0(&v27, &qword_27CE5DE68, &qword_21DC1B208);
      *v4 = v15;
      *(v4 + 8) = v16;
      *(v4 + 16) = v12;
      *(v4 + 24) = v17;
      *(v4 + 32) = v25;
      *(v4 + 48) = *&v26[24];
      *(v4 + 64) = *(v2 + 40);
      return result;
    }

LABEL_22:
    sub_21D0CF7E0(&v27, &qword_27CE5DE68, &qword_21DC1B208);
    v15 = sub_21DBFC3BC();
    v16 = v18;
    v12 = v19;
    v17 = v20;
    goto LABEL_23;
  }

  if (v12 < v10)
  {
    sub_21D97EEFC();
    sub_21DBF8E0C();
    v13 = v12;
    do
    {
      v14 = v13 + 1;
      sub_21DBFBF6C();
      v13 = v14;
    }

    while (v10 != v14);
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_21D97CC08()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE643B8);
  v1 = __swift_project_value_buffer(v0, qword_27CE643B8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRHashtagAssociationPresenterCapability.HashtagLabelRenameIntent.NoOpReason.description.getter()
{
  if (*v0)
  {
    return 0x656D614E656D6173;
  }

  else
  {
    return 0x4E64696C61766E69;
  }
}

uint64_t TTRHashtagAssociationPresenterCapability.HashtagLabelRenameIntent.NoOpReason.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D97CDA0()
{
  if (*v0)
  {
    return 0x656D614E656D6173;
  }

  else
  {
    return 0x4E64696C61766E69;
  }
}

uint64_t TTRHashtagAssociationPresenterCapability.__allocating_init(interactor:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

Swift::String_optional __swiftcall TTRHashtagAssociationPresenterCapability.validateNewHashtagName(_:hasMarkedText:)(Swift::String _, Swift::Bool hasMarkedText)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = sub_21DBF4CAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 0;
  if (!hasMarkedText)
  {
    v11 = 0xE000000000000000;
    v32 = 0;
    v33 = 0xE000000000000000;
    v12 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v12 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    v31[0] = countAndFlagsBits;
    v31[1] = object;
    v31[2] = 0;
    v31[3] = v12;
    sub_21DBF8E0C();
    v13 = sub_21DBFA30C();
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      do
      {
        sub_21DBF4C2C();
        v18 = sub_21DBF4BFC();
        (*(v6 + 8))(v8, v5);
        if (v18)
        {
          MEMORY[0x223D42A90](v15, v16);
        }

        v15 = sub_21DBFA30C();
        v16 = v17;
      }

      while (v17);
      v19 = v32;
      v11 = v33;
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_21D97EC88(75, v19, v11);
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = MEMORY[0x223D429B0](v20, v22, v24, v26);
    v10 = v28;

    if (v27 == countAndFlagsBits && v10 == object || (sub_21DBFC64C() & 1) != 0)
    {

      v9 = 0;
      v10 = 0;
    }

    else
    {
      v9 = v27;
    }
  }

  v29 = v10;
  result.value._object = v29;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t TTRHashtagAssociationPresenterCapability.hashtagLabelRenameIntent(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = sub_21DBF78CC();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  v6[20] = swift_task_alloc();
  v8 = sub_21DBF582C();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();
  sub_21DBFA84C();
  v6[24] = sub_21DBFA83C();
  v10 = sub_21DBFA7CC();
  v6[25] = v10;
  v6[26] = v9;

  return MEMORY[0x2822009F8](sub_21D97D1FC, v10, v9);
}

uint64_t sub_21D97D1FC(__n128 a1)
{
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[21];
  v6 = v1[13];
  v5 = v1[14];
  sub_21DBF57AC();
  v7 = String.safeNameForHashtag(locale:)(v2, v6, v5);
  v9 = v8;
  v1[27] = v7;
  v1[28] = v8;
  (*(v3 + 8))(v2, v4);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v13 = v1[10];

    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    goto LABEL_16;
  }

  v11 = v7 == v1[11] && v9 == v1[12];
  if (v11 || (sub_21DBFC64C() & 1) != 0)
  {
    v12 = v1[10];

    *v12 = xmmword_21DC11550;
    *(v12 + 16) = 0;
LABEL_16:

    v26 = v1[1];

    return v26();
  }

  v14 = v1[21];
  v15 = v1[22];
  v16 = v1[20];
  v17 = v1[12];
  v1[5] = v1[11];
  v1[6] = v17;
  sub_21DBF57AC();
  v18 = *(v15 + 56);
  v18(v16, 0, 1, v14);
  sub_21D176F0C();
  v32 = sub_21DBFBBEC();
  v20 = v19;
  sub_21D0CF7E0(v16, &unk_27CE65010, &qword_21DC08D60);
  v1[7] = v7;
  v1[8] = v9;
  sub_21DBF57AC();
  v18(v16, 0, 1, v14);
  v21 = sub_21DBFBBEC();
  v23 = v22;
  sub_21D0CF7E0(v16, &unk_27CE65010, &qword_21DC08D60);
  if (v32 == v21 && v20 == v23)
  {

LABEL_15:

    v25 = v1[10];
    *v25 = v7;
    *(v25 + 8) = v9;
    *(v25 + 16) = 1;
    goto LABEL_16;
  }

  v24 = sub_21DBFC64C();

  if (v24)
  {
    goto LABEL_15;
  }

  v28 = *(v1[15] + 24);
  ObjectType = swift_getObjectType();
  v33 = (*(v28 + 48) + **(v28 + 48));
  v30 = swift_task_alloc();
  v1[29] = v30;
  *v30 = v1;
  v30[1] = sub_21D97D5BC;
  v31 = v1[18];

  return v33(v31, ObjectType, v28);
}

uint64_t sub_21D97D5BC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = sub_21D97D824;
  }

  else
  {
    v5 = sub_21D97D6F8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D97D6F8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];

  (*(v4 + 32))(v1, v2, v3);
  v5 = sub_21DBF781C();
  v7 = v6;
  (*(v4 + 8))(v1, v3);
  v8 = v0[28];
  v9 = v0[10];
  if (v7)
  {

    *v9 = v5;
    v10 = 2;
  }

  else
  {
    *v9 = v0[27];
    v10 = 1;
    v7 = v8;
  }

  *(v9 + 8) = v7;
  *(v9 + 16) = v10;

  v11 = v0[1];

  return v11();
}

uint64_t sub_21D97D824()
{
  v18 = v0;

  if (qword_27CE56EB0 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE643B8);
  v3 = v1;
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[30];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_21DBFC75C();
    v12 = sub_21D0CDFB4(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21D0C9000, v4, v5, "TTRHashtagAssociationPresenterCapability: fetchAllHashtagLabels failed {error: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[28];
  v14 = v0[10];
  *v14 = v0[27];
  *(v14 + 8) = v13;
  *(v14 + 16) = 1;

  v15 = v0[1];

  return v15();
}

uint64_t TTRHashtagAssociationPresenterCapability.obtainNewHashtagNameFromUser(srcLabel:showInputUI:showMergeUI:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  sub_21DBFA84C();
  v7[12] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();
  v7[13] = v9;
  v7[14] = v8;

  return MEMORY[0x2822009F8](sub_21D97DACC, v9, v8);
}

uint64_t sub_21D97DACC()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v0[15] = v1;
  sub_21DBF8E0C();
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_21D97DBD8;

  return v6(v3, v1);
}

uint64_t sub_21D97DBD8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = a2;

  v5 = *(v3 + 112);
  v6 = *(v3 + 104);

  return MEMORY[0x2822009F8](sub_21D97DD24, v6, v5);
}

uint64_t sub_21D97DD24()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_21D97DE10;
    v3 = v0[17];
    v4 = v0[5];
    v5 = v0[6];

    return TTRHashtagAssociationPresenterCapability.hashtagLabelRenameIntent(from:to:)((v0 + 2), v4, v5, v3, v1);
  }

  else
  {

    v7 = v0[1];

    return v7(0, 0);
  }
}

uint64_t sub_21D97DE10()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21D97DF30, v3, v2);
}

uint64_t sub_21D97DF30()
{
  v25 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 160) = v1;
  *(v0 + 168) = v2;
  v3 = *(v0 + 32);
  *(v0 + 33) = v3;
  if (!v3)
  {

    if (qword_27CE56EB0 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE643B8);
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEDC();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_25;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    if (v1)
    {
      v12 = 0x656D614E656D6173;
    }

    else
    {
      v12 = 0x4E64696C61766E69;
    }

    if (v1)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0xEB00000000656D61;
    }

    v14 = sub_21D0CDFB4(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_21D0C9000, v8, v9, "TTRHashtagAssociationPresenterCapability: abort renaming {reason: %s}", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223D46520](v11, -1, -1);
    v15 = v10;
    goto LABEL_24;
  }

  if (v3 == 1)
  {

    v4 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      v5 = *(v0 + 160);
      v6 = *(v0 + 168);
LABEL_26:
      v22 = *(v0 + 8);

      return v22(v5, v6);
    }

    sub_21D97ED24(*(v0 + 160), *(v0 + 168), *(v0 + 33));
    if (qword_27CE56EB0 != -1)
    {
      swift_once();
    }

    v19 = sub_21DBF84BC();
    __swift_project_value_buffer(v19, qword_27CE643B8);
    v8 = sub_21DBF84AC();
    v20 = sub_21DBFAECC();
    if (!os_log_type_enabled(v8, v20))
    {
LABEL_25:

      v5 = 0;
      v6 = 0;
      goto LABEL_26;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_21D0C9000, v8, v20, "TTRHashtagAssociationPresenterCapability: unexpected: invalid newName", v21, 2u);
    v15 = v21;
LABEL_24:
    MEMORY[0x223D46520](v15, -1, -1);
    goto LABEL_25;
  }

  v16 = *(v0 + 72);
  sub_21DBF8E0C();
  v23 = (v16 + *v16);
  v17 = swift_task_alloc();
  *(v0 + 176) = v17;
  *v17 = v0;
  v17[1] = sub_21D97E2DC;

  return v23(v1, v2);
}

uint64_t sub_21D97E2DC(char a1)
{
  v2 = *v1;
  *(*v1 + 34) = a1;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);

  return MEMORY[0x2822009F8](sub_21D97E404, v4, v3);
}

uint64_t sub_21D97E404(__n128 a1)
{
  v2 = *(v1 + 34);
  sub_21D97ED24(*(v1 + 160), *(v1 + 168), 2u);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  if (v2)
  {

    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = *(v1 + 160);
      v7 = *(v1 + 168);
    }

    else
    {
      sub_21D97ED24(*(v1 + 160), *(v1 + 168), *(v1 + 33));
      if (qword_27CE56EB0 != -1)
      {
        swift_once();
      }

      v12 = sub_21DBF84BC();
      __swift_project_value_buffer(v12, qword_27CE643B8);
      v13 = sub_21DBF84AC();
      v14 = sub_21DBFAECC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_21D0C9000, v13, v14, "TTRHashtagAssociationPresenterCapability: unexpected: invalid newName", v15, 2u);
        MEMORY[0x223D46520](v15, -1, -1);
      }

      v6 = 0;
      v7 = 0;
    }

    v16 = *(v1 + 8);

    return v16(v6, v7);
  }

  else
  {
    sub_21D97ED24(*(v1 + 160), *(v1 + 168), 2u);
    v8 = *(v1 + 136);
    v9 = *(v1 + 144);
    *(v1 + 120) = v9;
    v17 = (*(v1 + 56) + **(v1 + 56));
    v10 = swift_task_alloc();
    *(v1 + 128) = v10;
    *v10 = v1;
    v10[1] = sub_21D97DBD8;

    return v17(v8, v9);
  }
}

uint64_t TTRHashtagAssociationPresenterCapability.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_21D97E6B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CE90, &qword_21DC336F0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v14 - v3;
  v6 = *v0;
  v5 = *(v0 + 8);
  v14[1] = *(v0 + 16);
  v15 = v5;
  if (v6 >> 62)
  {
LABEL_17:
    v7 = sub_21DBFBD7C();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v9 = *(v0 + 24);
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x223D44740](v8, v6, v2);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(v6 + 8 * v8 + 32);
    }

    v11 = v10;
    v16 = v10;
    v15(&v16);

    v0 = v9(v4);
    sub_21D0CF7E0(v4, &qword_27CE5CE90, &qword_21DC336F0);
    if (v0)
    {
      return v8;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_16;
    }
  }

  return v7;
}

void sub_21D97E824(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CE90, &qword_21DC336F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v11 = *v3;
  v10 = *(v3 + 8);
  v26 = *(v3 + 16);
  v27 = v10;
  v12 = a2 > 0;
  v13 = a2 >> 63;
  if (a2 >> 63 < 0 && v11 >> 62)
  {
    sub_21DBFBD7C();
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_9;
  }

  v14 = __OFSUB__(0, a2);
  a2 = -a2;
  if (v14)
  {
    __break(1u);
    return;
  }

  if (a2 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_9:
  if (a1 == v23)
  {
    return;
  }

  v22 = a2;
  if (!(v11 >> 62))
  {
    v25 = v11 & 0xFFFFFFFFFFFFFF8;
    v28 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_12;
  }

LABEL_35:
  v25 = v11 & 0xFFFFFFFFFFFFFF8;
  v28 = sub_21DBFBD7C();
LABEL_12:
  v15 = v13 | v12;
  v16 = *(v3 + 24);
  v17 = v11 & 0xC000000000000001;
  v21 = v11;
  v11 += 32;
  v18 = 1;
  do
  {
    v24 = v18;
    v12 = a1;
    while (1)
    {
      a1 = v12 + v15;
      if (__OFADD__(v12, v15))
      {
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

      if (a1 == v28)
      {
        break;
      }

      if (v17)
      {
        v19 = MEMORY[0x223D44740](v12 + v15, v21, v7);
      }

      else
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (a1 >= *(v25 + 16))
        {
          goto LABEL_31;
        }

        v19 = *(v11 + 8 * a1);
      }

      v13 = v19;
      v29 = v19;
      v27(&v29);

      v3 = v16(v9);
      sub_21D0CF7E0(v9, &qword_27CE5CE90, &qword_21DC336F0);
      v12 += v15;
      if (v3)
      {
        goto LABEL_24;
      }
    }

    a1 = v28;
LABEL_24:
    if (v24 == v22)
    {
      break;
    }

    if (v24 >= v22)
    {
      goto LABEL_32;
    }

    v18 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_33;
    }
  }

  while (a1 != v23);
}

BOOL _s15RemindersUICore40TTRHashtagAssociationPresenterCapabilityC24HashtagLabelRenameIntentO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_21D97ED24(*a1, v4, 0);
      sub_21D97ED24(v6, v7, 0);
      return ((v6 ^ v3) & 1) == 0;
    }

    goto LABEL_19;
  }

  if (v5 != 1)
  {
    if (v8 == 2)
    {
      v16 = *a1;
      if (v3 != v6 || v4 != v7)
      {
        v11 = sub_21DBFC64C();
        sub_21D97EDC4(v6, v7, 2u);
        sub_21D97EDC4(v3, v4, 2u);
        sub_21D97ED24(v3, v4, 2u);
        v12 = v6;
        v13 = v7;
        v14 = 2;
        goto LABEL_17;
      }

      sub_21D97EDC4(v16, v4, 2u);
      sub_21D97EDC4(v3, v4, 2u);
      sub_21D97ED24(v3, v4, 2u);
      v18 = v3;
      v19 = v4;
      v20 = 2;
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (v8 != 1)
  {
LABEL_18:
    sub_21DBF8E0C();
LABEL_19:
    sub_21D97EDC4(v6, v7, v8);
    sub_21D97ED24(v3, v4, v5);
    sub_21D97ED24(v6, v7, v8);
    return 0;
  }

  v9 = *a1;
  if (v3 != v6 || v4 != v7)
  {
    v11 = sub_21DBFC64C();
    sub_21D97EDC4(v6, v7, 1u);
    sub_21D97EDC4(v3, v4, 1u);
    sub_21D97ED24(v3, v4, 1u);
    v12 = v6;
    v13 = v7;
    v14 = 1;
LABEL_17:
    sub_21D97ED24(v12, v13, v14);
    return v11 & 1;
  }

  sub_21D97EDC4(v9, v4, 1u);
  sub_21D97EDC4(v3, v4, 1u);
  sub_21D97ED24(v3, v4, 1u);
  v18 = v3;
  v19 = v4;
  v20 = 1;
LABEL_22:
  sub_21D97ED24(v18, v19, v20);
  return 1;
}

uint64_t sub_21D97EC88(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21DBFA2BC();

    return sub_21DBFA3FC();
  }

  return result;
}

double sub_21D97ED24(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

unint64_t sub_21D97ED44()
{
  result = qword_27CE643D0;
  if (!qword_27CE643D0)
  {
    atomic_store(result, &qword_27CE643D0);
  }

  return result;
}

double sub_21D97EDC4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
    sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D97EDF0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D97EDC4(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRHashtagAssociationPresenterCapability.HashtagLabelRenameIntent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D97EDC4(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_21D97ED24(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRHashtagAssociationPresenterCapability.HashtagLabelRenameIntent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D97ED24(v4, v5, v6);
  return a1;
}

unint64_t sub_21D97EEFC()
{
  result = qword_280D17640;
  if (!qword_280D17640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D17640);
  }

  return result;
}

RemindersUICore::TTRReminderTextStorage::StyleTypingAttributeState __swiftcall TTRReminderTextStorage.StyleTypingAttributeState.init(boldState:italicState:underlineState:)(RemindersUICore::TTRReminderTextStorage::StyleTypingAttributeState::StyleState boldState, RemindersUICore::TTRReminderTextStorage::StyleTypingAttributeState::StyleState italicState, RemindersUICore::TTRReminderTextStorage::StyleTypingAttributeState::StyleState underlineState)
{
  v4 = *italicState;
  v5 = *underlineState;
  *v3 = *boldState;
  v3[1] = v4;
  v3[2] = v5;
  result.boldState = boldState;
  return result;
}

id TTRReminderTextStorage.__allocating_init(baseTextStyles:uncommittedHashtagTextStyles:committedHashtagTextStyles:foreignHashtagTextStyles:harvestedResultTextStyles:hashtagVisibility:debug_nonEditableTextStyles:debug_highlightNonEditableTexts:showsAsTransparent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, char a8, char a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = *a6;
  *&v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_baseTextStyles] = a1;
  *&v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_uncommittedHashtagTextStyles] = a2;
  *&v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_committedHashtagTextStyles] = a3;
  *&v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_foreignHashtagTextStyles] = a4;
  *&v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_harvestedResultTextStyles] = a5;
  *&v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility] = v19;
  *&v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_nonEditableTextStyles] = a7;
  v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_highlightNonEditableTexts] = a8;
  v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_showsAsTransparent] = a9;
  v21.receiver = v18;
  v21.super_class = v9;
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t TTRReminderTextStorage.applyTextHighlights(_:)(void *a1)
{
  v2 = [v1 string];
  v3 = sub_21DBFA16C();
  v5 = v4;

  TTRReminderCellTextHighlights.rebased(forCurrentText:)(v3, v5, v9);

  sub_21D98115C(v9[2]);
  v7 = v6;

  return v7 & 1;
}

Swift::Bool __swiftcall TTRReminderTextStorage.applyHashtagUpdate(_:)(RemindersUICore::TTRReminderCellHashtagTextUpdate a1)
{
  v2 = v1;
  v4 = *a1.hashtagsToAdd._rawValue;
  v3 = *(a1.hashtagsToAdd._rawValue + 1);
  v5 = *(a1.hashtagsToAdd._rawValue + 2);
  v6 = &selRef_setAttributedText_;
  v7 = [v2 string];
  v8 = sub_21DBFA16C();
  v10 = v9;

  if (v8 == v3 && v10 == v5)
  {
  }

  else
  {
    v12 = sub_21DBFC64C();

    if ((v12 & 1) == 0)
    {
      if (qword_280D0F488 != -1)
      {
        swift_once();
      }

      v13 = sub_21DBF84BC();
      __swift_project_value_buffer(v13, qword_280D0F490);
      v14 = sub_21DBF84AC();
      v15 = sub_21DBFAEBC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_21D0C9000, v14, v15, "TTRReminderTextStorage is given an (probably) outdated hashtagUpdate.expectedCurrentText", v16, 2u);
        MEMORY[0x223D46520](v16, -1, -1);
      }
    }
  }

  v17 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  if (!*&v2[v17])
  {
    if (qword_280D0F488 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_16;
  }

  v18 = *(v4 + 16);
  if (!v18)
  {
    return v18 != 0;
  }

  while (2)
  {
    [v2 beginEditing];
    v23 = [v2 v6[155]];
    v24 = sub_21DBFA16C();
    v26 = v25;

    v27 = MEMORY[0x223D42B30](v24, v26);

    v28 = (v4 + 48);
    v29 = *MEMORY[0x277D740E8];
    v37 = v18;
    while (1)
    {
      v32 = *(v28 - 1);
      v33 = v32 + *v28;
      if (__OFADD__(v32, *v28))
      {
        break;
      }

      v34 = *(v28 - 2);
      if (v33 >= v27)
      {
        v4 = v27;
      }

      else
      {
        v4 = v32 + *v28;
      }

      if ((v32 & 0x8000000000000000) == 0 && v32 < v27)
      {
        v30 = __OFSUB__(v4, v32);
        v4 -= v32;
        if (v30)
        {
          goto LABEL_39;
        }

        goto LABEL_21;
      }

      if (v32 <= 0 && v33 > 0)
      {
        v32 = 0;
LABEL_21:
        v31 = qword_280D177B8;
        swift_unknownObjectRetain();
        if (v31 != -1)
        {
          swift_once();
        }

        [v2 removeAttribute:qword_280D177C0 range:{v32, v4, v37}];
        [v2 removeAttribute:v29 range:{v32, v4}];
        v6 = [objc_opt_self() attributeFromHashtag_];
        [v2 rem:v6 addHashtag:v32 range:v4];
        swift_unknownObjectRelease();
      }

      v28 += 3;
      if (!--v18)
      {
        [v2 endEditing];
        v18 = v37;
        return v18 != 0;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
LABEL_16:
    v19 = sub_21DBF84BC();
    __swift_project_value_buffer(v19, qword_280D0F490);
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAEBC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_21D0C9000, v20, v21, "TTRReminderTextStorage#applyHashtagUpdate: text storage is configured to hide all hashtags", v22, 2u);
      MEMORY[0x223D46520](v22, -1, -1);
    }

    v18 = *(v4 + 16);
    if (v18)
    {
      continue;
    }

    return v18 != 0;
  }
}

Swift::Void __swiftcall TTRReminderTextStorage.applyStyleAttributeUpdate(_:)(RemindersUICore::TTRReminderCellStyleAttributeUpdate a1)
{
  v2 = *a1.rangeToChange.location;
  v3 = *(a1.rangeToChange.location + 8);
  v4 = *(a1.rangeToChange.location + 16);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  sub_21DBF8E0C();
  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      [v1 addAttribute:*(*(v4 + 48) + ((v10 << 9) | (8 * v11))) value:*(*(v4 + 56) + ((v10 << 9) | (8 * v11))) range:{v2, v3}];
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }
}

Swift::Bool __swiftcall TTRReminderTextStorage.applyParagraphStyleAttributeUpdate(_:)(RemindersUICore::TTRReminderCellParagraphStyleUpdate a1)
{
  v2 = v1;
  v4 = *a1.paragraphStylesToAdd._rawValue;
  v3 = *(a1.paragraphStylesToAdd._rawValue + 1);
  v5 = *(a1.paragraphStylesToAdd._rawValue + 2);
  v6 = [v2 string];
  v7 = sub_21DBFA16C();
  v9 = v8;

  if (v7 == v3 && v9 == v5)
  {
  }

  else
  {
    v11 = sub_21DBFC64C();

    if ((v11 & 1) == 0)
    {
      if (qword_280D0F488 != -1)
      {
        swift_once();
      }

      v12 = sub_21DBF84BC();
      __swift_project_value_buffer(v12, qword_280D0F490);
      v13 = sub_21DBF84AC();
      v14 = sub_21DBFAEBC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_21D0C9000, v13, v14, "TTRReminderTextStorage is given an (probably) outdated paragraphStyleAttributeUpdate.expectedCurrentText", v15, 2u);
        MEMORY[0x223D46520](v15, -1, -1);
      }
    }
  }

  v16 = *(v4 + 16);
  if (v16)
  {
    [v2 beginEditing];
    sub_21D9F82C4(v2, v4);
    [v2 endEditing];
  }

  return v16 != 0;
}

double TTRReminderTextStorage.hashtagVisibility.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6 = v4;
  sub_21D980810(&v6);

  return result;
}

uint64_t TTRReminderTextStorage.typingAttributesFilteringInternalStyles(for:in:currentTypingAttributes:styleTypingAttributeState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned __int8 *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = a5[2];
  v13 = sub_21DBF4B4C();
  if (a1 < 0 || v13 == a1 || (v14 = a2 + a1, v15 = [a3 string], v16 = sub_21DBFA16C(), v18 = v17, v15, v19 = MEMORY[0x223D42B30](v16, v18), , v19 < v14))
  {
    sub_21DBF8E0C();
  }

  else if (a1)
  {
    v21 = a1 - 1;
    v22 = [v5 rem:v21 fontHintAtIndex:0 effectiveRange:?];
    v23 = [v5 rem:v21 isUnderlinedAtIndex:0 effectiveRange:?];
    v24 = v22 & 1 | 2;
    if (v11 != 1)
    {
      v24 = v22 & 1;
    }

    if (!v11)
    {
      v24 = v22;
    }

    v25 = 3;
    v26 = v22 & 2;
    if (v11 != 1)
    {
      v25 = 1;
    }

    if (!v11)
    {
      v25 = v22 & 2 | 1;
    }

    v27 = 2;
    if (v11 != 1)
    {
      v27 = 0;
    }

    if (v11)
    {
      v26 = v27;
    }

    if (v10 != 1)
    {
      v25 = v26;
    }

    if (v10)
    {
      v28 = v25;
    }

    else
    {
      v28 = v24;
    }

    v29 = v23;
    v30 = objc_opt_self();
    v31 = [v30 attributeNameForStyle_];
    v32 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v33 = v31;
    v34 = [v32 initWithUnsignedInteger_];
    v35 = sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v61 = v35;
    *&v60 = v34;
    sub_21D0CF2E8(&v60, v59);
    v36 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21D476CE0(v59, v33, isUniquelyReferenced_nonNull_native);

    v62 = v36;
    if (v12)
    {
      v38 = v12 == 1;
    }

    else
    {
      v38 = v29;
    }

    v39 = [v30 attributeNameForStyle_];
    v40 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v41 = v39;
    v42 = [v40 initWithBool_];
    v61 = v35;
    *&v60 = v42;
    sub_21D0CF2E8(&v60, v59);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    sub_21D476CE0(v59, v41, v43);

    type metadata accessor for Key(0);
    sub_21D985D5C(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
    v44 = sub_21DBF9ECC();

    v62 = v44;
    sub_21D983190(*MEMORY[0x277D74118], &v60);

    sub_21D0CF7E0(&v60, &qword_27CE5C690, &unk_21DC11AB0);
    return v62;
  }

  else
  {
    v62 = a4;
    v45 = *MEMORY[0x277D74118];
    sub_21DBF8E0C();
    sub_21D983190(v45, &v60);
    sub_21D0CF7E0(&v60, &qword_27CE5C690, &unk_21DC11AB0);
    v46 = 2;
    if (v10 == 1)
    {
      v46 = 3;
    }

    if (v11 == 1)
    {
      v47 = v46;
    }

    else
    {
      v47 = v10 == 1;
    }

    v48 = objc_opt_self();
    v49 = [v48 attributeNameForStyle_];
    v50 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v51 = v49;
    v52 = [v50 initWithUnsignedInteger_];
    v53 = sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v61 = v53;
    *&v60 = v52;
    sub_21D0CF2E8(&v60, v59);
    v54 = v62;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    sub_21D476CE0(v59, v51, v55);

    v56 = [v48 attributeNameForStyle_];
    v57 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v61 = v53;
    *&v60 = v57;
    sub_21D0CF2E8(&v60, v59);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    sub_21D476CE0(v59, v56, v58);

    return v54;
  }

  return a4;
}

uint64_t sub_21D97FD40()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F490);
  v1 = __swift_project_value_buffer(v0, qword_280D0F490);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderTextStorage.StyleTypingAttributeState.StyleState.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

void *sub_21D97FEC4()
{
  result = sub_21D97FEE4();
  off_27CE643D8 = result;
  return result;
}

void *sub_21D97FEE4()
{
  if (qword_27CE56EC8 != -1)
  {
    swift_once();
  }

  v5 = off_27CE643E0;
  v0 = qword_280D0C260;
  sub_21DBF8E0C();
  if (v0 != -1)
  {
    swift_once();
  }

  sub_21D29EA24(&v4, qword_280D0C268);

  if (qword_280D177B8 != -1)
  {
    swift_once();
  }

  sub_21D29EA24(&v4, qword_280D177C0);

  v1 = [objc_opt_self() attributeName];
  sub_21D29EA24(&v4, v1);

  v2 = [objc_opt_self() attributeNameForStyle_];
  sub_21D29EA24(&v4, v2);

  return v5;
}

double static TTRReminderTextStorage.defaultDisallowedTypingAttributes.getter()
{
  if (qword_27CE56EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

double static TTRReminderTextStorage.defaultDisallowedTypingAttributes.setter(void *a1)
{
  if (qword_27CE56EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_27CE643D8 = a1;

  return result;
}

uint64_t (*static TTRReminderTextStorage.defaultDisallowedTypingAttributes.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27CE56EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_21D9801E8@<D0>(void *a1@<X8>)
{
  if (qword_27CE56EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_27CE643D8;
  sub_21DBF8E0C();
  return result;
}

double sub_21D980268(void **a1)
{
  v1 = *a1;
  v2 = qword_27CE56EC0;
  sub_21DBF8E0C();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_27CE643D8 = v1;

  return result;
}

void (*TTRReminderTextStorage.baseTextStyles.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_baseTextStyles;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D980398;
}

void (*TTRReminderTextStorage.uncommittedHashtagTextStyles.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_uncommittedHashtagTextStyles;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D980464;
}

void sub_21D98047C(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  if (a2)
  {
    v6 = sub_21DBF8E0C();
    a3(v6);
  }

  else
  {
    a3(v5);
  }

  free(v4);
}

void (*TTRReminderTextStorage.committedHashtagTextStyles.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_committedHashtagTextStyles;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D980594;
}

void (*TTRReminderTextStorage.foreignHashtagTextStyles.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_foreignHashtagTextStyles;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D980660;
}

void (*TTRReminderTextStorage.harvestedResultTextStyles.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_harvestedResultTextStyles;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D98072C;
}

double TTRReminderTextStorage.hashtagVisibility.getter@<D0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  *a1 = *(v1 + v3);
  sub_21DBF8E0C();
  return result;
}

double sub_21D98079C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_21DBF8E0C();
  v7 = v5;
  sub_21D980810(&v7);

  return result;
}

id sub_21D980810(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    if (v2)
    {
      swift_bridgeObjectRetain_n();
      sub_21DBF8E0C();
      v5 = sub_21D3220EC(v4, v2);

      result = swift_bridgeObjectRelease_n();
      if (v5)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if (!v2)
  {
    return swift_bridgeObjectRelease_n();
  }

LABEL_7:
  v7 = [v1 string];
  v8 = sub_21DBFA16C();
  v10 = v9;

  v11 = MEMORY[0x223D42B30](v8, v10);

  return [v1 edited:1 range:0 changeInLength:{v11, 0}];
}

void (*TTRReminderTextStorage.hashtagVisibility.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D9809C4;
}

void sub_21D9809C4(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 24);
  if (a2)
  {
    sub_21DBF8E0C();
    v6 = v5;
    sub_21D980810(&v6);
  }

  else
  {
    v6 = v5;
    sub_21D980810(&v6);
  }

  free(v2);
}

uint64_t TTRReminderTextStorage.showsAsTransparent.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_showsAsTransparent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*TTRReminderTextStorage.showsAsTransparent.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_showsAsTransparent;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D980B30;
}

void sub_21D980B4C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  v6 = sub_21DBF8E0C();
  sub_21D37135C(v6, v5);
  LOBYTE(v4) = v7;

  if ((v4 & 1) == 0)
  {
    v8 = [v2 string];
    v9 = sub_21DBFA16C();
    v11 = v10;

    v12 = MEMORY[0x223D42B30](v9, v11);

    [v2 edited:1 range:0 changeInLength:{v12, 0}];
  }
}

void (*TTRReminderTextStorage.debug_nonEditableTextStyles.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_nonEditableTextStyles;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D980CC4;
}

uint64_t TTRReminderTextStorage.debug_highlightNonEditableTexts.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_highlightNonEditableTexts;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D980D20(unsigned __int8 *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = v6[v7];
  v6[v7] = v5;
  if (v5 != v8)
  {
    v9 = [v6 string];
    v10 = sub_21DBFA16C();
    v12 = v11;

    v13 = MEMORY[0x223D42B30](v10, v12);

    [v6 edited:1 range:0 changeInLength:{v13, 0}];
  }
}

void sub_21D980DEC(char a1, uint64_t *a2)
{
  v4 = a1 & 1;
  v5 = *a2;
  swift_beginAccess();
  v6 = v2[v5];
  v2[v5] = a1;
  if (v6 != v4)
  {
    v7 = [v2 string];
    v8 = sub_21DBFA16C();
    v10 = v9;

    v11 = MEMORY[0x223D42B30](v8, v10);

    [v2 edited:1 range:0 changeInLength:{v11, 0}];
  }
}

uint64_t (*TTRReminderTextStorage.debug_highlightNonEditableTexts.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_highlightNonEditableTexts;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D985E84;
}

void sub_21D980F40(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    v6 = v1[3];
    v7 = [v6 string];
    v8 = sub_21DBFA16C();
    v10 = v9;

    v11 = MEMORY[0x223D42B30](v8, v10);

    [v6 edited:1 range:0 changeInLength:{v11, 0}];
  }

  free(v1);
}

id TTRReminderTextStorage.init(baseTextStyles:uncommittedHashtagTextStyles:committedHashtagTextStyles:foreignHashtagTextStyles:harvestedResultTextStyles:hashtagVisibility:debug_nonEditableTextStyles:debug_highlightNonEditableTexts:showsAsTransparent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, char a8, char a9)
{
  ObjectType = swift_getObjectType();
  v19 = *a6;
  *&v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_baseTextStyles] = a1;
  *&v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_uncommittedHashtagTextStyles] = a2;
  *&v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_committedHashtagTextStyles] = a3;
  *&v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_foreignHashtagTextStyles] = a4;
  *&v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_harvestedResultTextStyles] = a5;
  *&v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility] = v19;
  *&v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_nonEditableTextStyles] = a7;
  v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_highlightNonEditableTexts] = a8;
  v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_showsAsTransparent] = a9;
  v21.receiver = v9;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

void sub_21D98115C(uint64_t a1)
{
  v3 = [v1 string];
  v4 = sub_21DBFA16C();
  v6 = v5;

  v37 = MEMORY[0x223D42B30](v4, v6);

  [v1 beginEditing];
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v35 = v1;
LABEL_5:
  v38 = v7;
  v15 = *(&unk_282EA6390 + v8 + 32);
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  sub_21DBF8E0C();
  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    do
    {
      if (!v18)
      {
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_40;
          }

          if (v22 >= v19)
          {
            break;
          }

          v18 = *(a1 + 56 + 8 * v22);
          ++v20;
          if (v18)
          {
            v20 = v22;
            goto LABEL_14;
          }
        }

        if (v15)
        {
          v10 = &qword_280D0C268;
          v11 = v38;
          if (qword_280D0C260 != -1)
          {
            swift_once();
            v10 = &qword_280D0C268;
          }
        }

        else
        {
          v10 = &qword_280D177C0;
          v11 = v38;
          if (qword_280D177B8 != -1)
          {
            swift_once();
            v10 = &qword_280D177C0;
          }
        }

        v12 = *v10;
        v39[3] = MEMORY[0x277D839B0];
        v7 = 1;
        LOBYTE(v39[0]) = 1;
        v14 = sub_21D98257C(v21, v12, v39, v13);

        __swift_destroy_boxed_opaque_existential_0(v39);
        v9 |= v14;
        v8 = 1u;
        if (v11)
        {
          [v1 endEditing];
          return;
        }

        goto LABEL_5;
      }

LABEL_14:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = *(a1 + 48) + 24 * (v23 | (v20 << 6));
    }

    while (v15 != *(v24 + 16));
    v26 = *v24;
    v25 = *(v24 + 8);
    v27 = __OFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      break;
    }

    if (v26 <= 0 && v28 > 0)
    {
      v26 = 0;
      if (v37 < v28)
      {
        v28 = v37;
      }

      goto LABEL_30;
    }

    if ((v26 & 0x8000000000000000) == 0 && v26 < v37)
    {
      if (v37 < v28)
      {
        v28 = v37;
      }

      v27 = __OFSUB__(v28, v26);
      v28 -= v26;
      if (v27)
      {
        goto LABEL_41;
      }

LABEL_30:
      v36 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_21D211158(0, *(v21 + 2) + 1, 1, v21);
      }

      v31 = *(v21 + 2);
      v30 = *(v21 + 3);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v34 = sub_21D211158((v30 > 1), v31 + 1, 1, v21);
        v32 = v31 + 1;
        v21 = v34;
      }

      *(v21 + 2) = v32;
      v33 = &v21[16 * v31];
      v1 = v35;
      *(v33 + 4) = v26;
      *(v33 + 5) = v36;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

Swift::Void __swiftcall TTRReminderTextStorage.processEditing()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 editedRange];
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21D985B48;
  *(v7 + 24) = v6;
  aBlock[4] = sub_21D301E58;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D472CC4;
  aBlock[3] = &block_descriptor_121;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 enumerateAttributesInRange:v3 options:v5 usingBlock:{0, v8}];
  _Block_release(v8);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v10.receiver = v9;
    v10.super_class = ObjectType;
    objc_msgSendSuper2(&v10, sel_processEditing);
  }
}

void sub_21D981660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_21D981750(a1);
  sub_21D1891E8(v8);

  type metadata accessor for Key(0);
  sub_21D985D5C(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
  v9 = sub_21DBF9E5C();

  [a5 addAttributes:v9 range:{a2, a3}];
}

uint64_t sub_21D981750(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_baseTextStyles;
  swift_beginAccess();
  v92 = *(v1 + v4);
  v5 = qword_280D177B8;
  sub_21DBF8E0C();
  if (v5 == -1)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_6;
    }
  }

  else
  {
    swift_once();
    if (!*(a1 + 16))
    {
      goto LABEL_6;
    }
  }

  v6 = sub_21D10FE34(qword_280D177C0);
  if (v7)
  {
    sub_21D0CEB98(*(a1 + 56) + 32 * v6, &v90);
    sub_21D0CF7E0(&v90, &qword_27CE5C690, &unk_21DC11AB0);
    swift_beginAccess();
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058, &unk_21DC22E88);
    sub_21DBF9EBC();

    goto LABEL_7;
  }

LABEL_6:
  v90 = 0u;
  v91 = 0u;
  sub_21D0CF7E0(&v90, &qword_27CE5C690, &unk_21DC11AB0);
LABEL_7:
  if (qword_280D0C260 == -1)
  {
    if (!*(a1 + 16))
    {
LABEL_12:
      v90 = 0u;
      v91 = 0u;
      sub_21D0CF7E0(&v90, &qword_27CE5C690, &unk_21DC11AB0);
      goto LABEL_13;
    }
  }

  else
  {
    swift_once();
    if (!*(a1 + 16))
    {
      goto LABEL_12;
    }
  }

  v8 = sub_21D10FE34(qword_280D0C268);
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_21D0CEB98(*(a1 + 56) + 32 * v8, &v90);
  sub_21D0CF7E0(&v90, &qword_27CE5C690, &unk_21DC11AB0);
  swift_beginAccess();
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058, &unk_21DC22E88);
  sub_21DBF9EBC();

LABEL_13:
  v10 = objc_opt_self();
  v11 = [v10 attributeName];
  v12 = v11;
  v13 = &qword_27CE64000;
  if (!*(a1 + 16) || (v14 = sub_21D10FE34(v11), (v15 & 1) == 0))
  {

    goto LABEL_27;
  }

  sub_21D0CEB98(*(a1 + 56) + 32 * v14, v89);

  sub_21D0CF2E8(v89, &v90);
  v16 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (!v17)
  {
    v19 = sub_21D177570(MEMORY[0x277D84F90]);
    *&v89[0] = v19;
    goto LABEL_22;
  }

  v18 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_committedHashtagTextStyles;
  swift_beginAccess();
  v19 = *(v2 + v18);
  *&v89[0] = v19;
  if (!*(v17 + 16))
  {
    sub_21DBF8E0C();
    if (!*(v19 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v20 = sub_21DBFC62C();
  v21 = sub_21DBFAA9C();

  v22 = [v10 attributeValue:v20 hasEqualHashtagObjectIdentifierIn:v21];
  swift_unknownObjectRelease();

  if (!v22)
  {
LABEL_22:
    if (!*(v19 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  swift_beginAccess();
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058, &unk_21DC22E88);
  sub_21DBF9EBC();

  if (!*(*&v89[0] + 16))
  {
LABEL_23:
    v23 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_highlightNonEditableTexts;
    swift_beginAccess();
    if (*(v2 + v23) == 1)
    {

      swift_beginAccess();
      sub_21DBF8E0C();
    }
  }

LABEL_26:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058, &unk_21DC22E88);
  sub_21DBF9EBC();

  __swift_destroy_boxed_opaque_existential_0(&v90);
LABEL_27:
  v24 = objc_opt_self();
  v25 = [v24 attributeNameForStyle_];
  v26 = v25;
  if (*(a1 + 16) && (v27 = sub_21D10FE34(v25), (v28 & 1) != 0))
  {
    sub_21D0CEB98(*(a1 + 56) + 32 * v27, &v90);

    if (swift_dynamicCast())
    {
      v29 = *&v89[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530, &qword_21DC0FE40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21DC08D00;
      v31 = *MEMORY[0x277D741F0];
      *(inited + 32) = *MEMORY[0x277D741F0];
      v32 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v33 = v31;
      *(inited + 40) = [v32 initWithInteger_];
      sub_21D177570(inited);
      swift_setDeallocating();
      sub_21D0CF7E0(inited + 32, &unk_27CE5F310, &unk_21DC0FE30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058, &unk_21DC22E88);
      sub_21DBF9EBC();
    }
  }

  else
  {
  }

  v34 = [v24 attributeNameForStyle_];
  v35 = v34;
  if (*(a1 + 16) && (v36 = sub_21D10FE34(v34), (v37 & 1) != 0))
  {
    sub_21D0CEB98(*(a1 + 56) + 32 * v36, &v90);

    if (swift_dynamicCast())
    {
      v38 = v92;
      if (*(v92 + 16))
      {
        v39 = v89[0];
        v40 = *MEMORY[0x277D740A8];
        v41 = sub_21D10FE34(*MEMORY[0x277D740A8]);
        if (v42)
        {
          v43 = *(*(v38 + 56) + 8 * v41);
          objc_opt_self();
          v44 = swift_dynamicCastObjCClass();
          if (v44)
          {
            v45 = v44;
            v88 = v2;
            if ((v39 & 3) != 0)
            {
              v87 = v43;
              v86 = v43;
              v46 = [v45 fontDescriptor];
              v47 = [v46 symbolicTraits];

              if ((v39 & 2) != 0)
              {
                v47 |= 1u;
                v48 = [v45 fontDescriptor];
                v49 = [v48 fontDescriptorWithDesign_];

                if (v49)
                {
                  v45 = [objc_opt_self() fontWithDescriptor:v49 size:0.0];
                }
              }

              v50 = [v45 fontDescriptor];
              v51 = [v50 fontDescriptorWithSymbolicTraits_];

              if (v51)
              {
                v52 = [objc_opt_self() fontWithDescriptor:v51 size:0.0];

                v45 = v52;
              }

              v43 = v87;
            }

            else
            {
              v82 = v43;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530, &qword_21DC0FE40);
            v83 = swift_initStackObject();
            *(v83 + 16) = xmmword_21DC08D00;
            *(v83 + 32) = v40;
            *(v83 + 40) = v45;
            v84 = v40;
            v85 = v45;
            sub_21D177570(v83);
            swift_setDeallocating();
            sub_21D0CF7E0(v83 + 32, &unk_27CE5F310, &unk_21DC0FE30);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058, &unk_21DC22E88);
            sub_21DBF9EBC();

            v2 = v88;
            v13 = &qword_27CE64000;
          }
        }
      }
    }
  }

  else
  {
  }

  v53 = [v24 attributeNameForStyle_];
  v54 = v53;
  if (*(a1 + 16) && (v55 = sub_21D10FE34(v53), (v56 & 1) != 0))
  {
    sub_21D0CEB98(*(a1 + 56) + 32 * v55, v89);

    sub_21D0CF2E8(v89, &v90);
    v57 = objc_allocWithZone(MEMORY[0x277D44888]);
    __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
    v58 = [v57 initWithContents_];
    swift_unknownObjectRelease();
    if (v58)
    {
      __swift_destroy_boxed_opaque_existential_0(&v90);
    }

    else
    {
      if (qword_280D0F488 != -1)
      {
        swift_once();
      }

      v77 = sub_21DBF84BC();
      __swift_project_value_buffer(v77, qword_280D0F490);
      v78 = sub_21DBF84AC();
      v79 = sub_21DBFAEBC();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_21D0C9000, v78, v79, "TTRReminderTextStorage: attempted to construct REMTTParagraphStyle(contents: ttParagraphStyle) and returned nil. attributes[REMTTStyle.attributeName(forStyle: .paragraphStyle)] value is not of type TTParagraphStyle", v80, 2u);
        MEMORY[0x223D46520](v80, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_0(&v90);
    }
  }

  else
  {
  }

  v59 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_showsAsTransparent;
  swift_beginAccess();
  if (*(v2 + v59) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530, &qword_21DC0FE40);
    v60 = swift_initStackObject();
    *(v60 + 16) = xmmword_21DC08D00;
    v61 = *MEMORY[0x277D740C0];
    *(v60 + 32) = *MEMORY[0x277D740C0];
    v62 = objc_opt_self();
    v63 = v61;
    *(v60 + 40) = [v62 clearColor];
    sub_21D177570(v60);
    swift_setDeallocating();
    sub_21D0CF7E0(v60 + 32, &unk_27CE5F310, &unk_21DC0FE30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058, &unk_21DC22E88);
    sub_21DBF9EBC();
  }

  v64 = v13[132];
  swift_beginAccess();
  if (*(v2 + v64) != 1)
  {
    return v92;
  }

  if (qword_27CE56EC8 != -1)
  {
LABEL_80:
    swift_once();
  }

  v65 = off_27CE643E0;
  v66 = off_27CE643E0 + 56;
  v67 = 1 << *(off_27CE643E0 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(off_27CE643E0 + 7);
  v70 = (v67 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v71 = 0;
  while (!v69)
  {
    do
    {
      v75 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        __break(1u);
        goto LABEL_80;
      }

      if (v75 >= v70)
      {

        goto LABEL_69;
      }

      v69 = *&v66[8 * v75];
      ++v71;
    }

    while (!v69);
    v71 = v75;
    if (*(a1 + 16))
    {
      goto LABEL_61;
    }

LABEL_58:
    v69 &= v69 - 1;
    v90 = 0u;
    v91 = 0u;
    sub_21D0CF7E0(&v90, &qword_27CE5C690, &unk_21DC11AB0);
  }

  if (!*(a1 + 16))
  {
    goto LABEL_58;
  }

LABEL_61:
  v72 = *(v65[6] + ((v71 << 9) | (8 * __clz(__rbit64(v69)))));
  v73 = sub_21D10FE34(v72);
  if ((v74 & 1) == 0)
  {

    goto LABEL_58;
  }

  v81 = v73;

  sub_21D0CEB98(*(a1 + 56) + 32 * v81, &v90);

  sub_21D0CF7E0(&v90, &qword_27CE5C690, &unk_21DC11AB0);

  swift_beginAccess();
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058, &unk_21DC22E88);
  sub_21DBF9EBC();
LABEL_69:

  return v92;
}

void sub_21D9824BC()
{
  v0 = [objc_opt_self() nonEditableAttributes];
  type metadata accessor for Key(0);
  v1 = sub_21DBFA5EC();

  v2 = sub_21D19F9A0(v1);

  v5 = v2;
  v3 = [objc_opt_self() attributeName];
  v4 = sub_21D1ABC08(v3);

  off_27CE643E0 = v5;
}

uint64_t sub_21D98257C(char *a1, uint64_t a2, void *a3, __n128 a4)
{
  v5 = v4;
  v87 = a1;
  v84 = sub_21DBF5B4C();
  v89 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF5B9C();
  v93 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v86 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = v75 - v12;
  MEMORY[0x28223BE20](v13);
  v80 = v75 - v14;
  MEMORY[0x28223BE20](v15);
  v82 = v75 - v16;
  MEMORY[0x28223BE20](v17);
  v88 = v75 - v18;
  MEMORY[0x28223BE20](v19);
  v85 = v75 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = v75 - v22;
  MEMORY[0x28223BE20](v24);
  v91 = v75 - v25;
  *&v27 = MEMORY[0x28223BE20](v26).n128_u64[0];
  v29 = v75 - v28;
  v30 = [v5 string];
  v31 = sub_21DBFA16C();
  v33 = v32;

  v34 = MEMORY[0x223D42B30](v31, v33);

  sub_21DBF5B8C();
  v35 = swift_allocObject();
  v35[2] = sub_21D13C354;
  v35[3] = 0;
  v92 = v29;
  v35[4] = v29;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_21D985D50;
  *(v36 + 24) = v35;
  v98 = sub_21D24B3B4;
  v99 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v95 = 1107296256;
  v96 = sub_21D1A6068;
  v97 = &block_descriptor_46_1;
  v37 = _Block_copy(&aBlock);

  [v5 enumerateAttribute:a2 inRange:0 options:v34 usingBlock:{0, v37}];
  _Block_release(v37);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v90 = v9;
  sub_21DBF5B8C();
  v39 = *(v87 + 2);
  v40 = v92;
  v41 = v91;
  if (v39)
  {
    v42 = v87 + 40;
    while (1)
    {
      result = *(v42 - 1);
      if (*v42 + result < result)
      {
        break;
      }

      v42 += 2;
      sub_21DBF5ADC();
      if (!--v39)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_6:
  v43 = v93;
  v44 = v90;
  (*(v93 + 32))(v41, v23, v90);
  sub_21D985D5C(&qword_280D17178, MEMORY[0x277CC9A28], MEMORY[0x277CC9A40]);
  v45 = sub_21DBFA10C();
  v46 = v45;
  if (v45)
  {
    v47 = *(v43 + 8);
    v47(v41, v44);
    v47(v40, v44);
  }

  else
  {
    v76 = a3;
    v79 = v45;
    v48 = *(v43 + 16);
    v48(v88, v40, v44);
    v48(v80, v40, v44);
    v78 = v43 + 16;
    v77 = v48;
    v48(v81, v41, v44);
    v49 = sub_21D985D5C(&qword_280D1B818, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
    v50 = v82;
    sub_21DBFBC5C();
    v75[4] = v49;
    sub_21DBFBC3C();
    v51 = *(v43 + 8);
    v93 = v43 + 8;
    v87 = v51;
    (v51)(v50, v44);
    v75[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A150, &unk_21DC0E6E0);
    v52 = swift_allocBox();
    v53 = v83;
    sub_21DBF5B6C();
    sub_21DBF5B3C();
    v54 = *(v89 + 8);
    v89 += 8;
    v54(v53, v84);
    v75[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A158, &unk_21DC289D0);
    inited = swift_initStackObject();
    *(inited + 16) = sub_21D24B41C;
    *(inited + 24) = v52;
    v75[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A160, &unk_21DC0E6F0);
    *(swift_initStackObject() + 16) = inited;

    v57 = *(inited + 16);
    v57(&aBlock, v56);
    if ((v96 & 1) == 0)
    {
      v58 = aBlock;
      v59 = v95;
      do
      {
        v57(&aBlock, [v5 removeAttribute:a2 range:{v58, v59}]);
        v58 = aBlock;
        v59 = v95;
      }

      while (v96 != 1);
    }

    v60 = v91;
    v61 = v90;
    v62 = v77;
    v77(v88, v91, v90);
    v62(v80, v60, v61);
    v62(v81, v92, v61);
    v63 = v82;
    sub_21DBFBC5C();
    sub_21DBFBC3C();
    (v87)(v63, v61);
    v64 = swift_allocBox();
    v65 = v83;
    sub_21DBF5B6C();
    sub_21DBF5B3C();
    v54(v65, v84);
    v66 = swift_initStackObject();
    *(v66 + 16) = sub_21D985E88;
    *(v66 + 24) = v64;
    *(swift_initStackObject() + 16) = v66;

    v68 = *(v66 + 16);
    v68(&aBlock, v67);
    v69 = v76;
    if ((v96 & 1) == 0)
    {
      v70 = aBlock;
      v71 = v95;
      do
      {
        __swift_project_boxed_opaque_existential_1(v69, v69[3]);
        [v5 addAttribute:a2 value:sub_21DBFC62C() range:{v70, v71}];
        v72 = swift_unknownObjectRelease();
        v68(&aBlock, v72);
        v70 = aBlock;
        v71 = v95;
      }

      while (v96 != 1);
    }

    v73 = v90;
    v74 = v87;
    (v87)(v86, v90);
    (v74)(v85, v73);
    (v74)(v91, v73);
    (v74)(v92, v73);
    v46 = v79;
  }

  return (v46 & 1) == 0;
}

id TTRReminderTextStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRReminderTextStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D983118()
{
  result = sub_21DBFA12C();
  qword_280D0C268 = result;
  return result;
}

double sub_21D983190@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21D10FE34(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D2206D8();
      v9 = v11;
    }

    sub_21D0CF2E8((*(v9 + 56) + 32 * v7), a2);
    sub_21D4B3A3C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21D983230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_21D17E2AC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v22 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D220CA4(v9);
      v10 = v22;
    }

    v11 = *(v10 + 48);
    v12 = type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
    sub_21D107350(v11 + *(*(v12 - 8) + 72) * v7, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    v13 = *(v10 + 56);
    v14 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
    v21 = *(v14 - 8);
    sub_21D985E14(v13 + *(v21 + 72) * v7, a2, type metadata accessor for TTRSECreateRemindersViewModel.Item);
    sub_21D4B3C04(v7, v10);
    *v3 = v10;
    v15 = *(v21 + 56);
    v16 = a2;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a2;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

double sub_21D9833C8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21D17E2D8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D220F90();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_21DBFC1BC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_21D0CF2E8((*(v9 + 56) + 32 * v7), a2);
    sub_21D4B41E4(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21D9834A4(void *a1, void (*a2)(uint64_t, uint64_t), unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = v4;
  v7 = *v4;
  if ((*v4 & 0xC000000000000001) == 0)
  {
    v14 = a3;
    v18 = sub_21D17E07C(a1);
    if (v19)
    {
      v7 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v22 = *v4;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v17 = *(*(v13 + 56) + 8 * v7);
        a2(v7, v13);
        goto LABEL_11;
      }

LABEL_15:
      (v14)();
      v13 = v22;
      goto LABEL_10;
    }

    return 0;
  }

  if (v7 < 0)
  {
    v9 = *v4;
  }

  else
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v10 = a1;
  v11 = sub_21DBFC2CC();

  if (!v11)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  sub_21DBF8E0C();
  v12 = sub_21DBFBD7C();
  v13 = a4(v9, v12);

  v14 = sub_21D17E07C(v10);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = *(*(v13 + 56) + 8 * v14);
  a2(v14, v13);

LABEL_11:
  *v6 = v13;
  return v17;
}

double sub_21D983614@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_21D0CEF70(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D22163C();
      v10 = v12;
    }

    sub_21D0CF2E8((*(v10 + 56) + 32 * v8), a3);
    sub_21D4B4498(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_21D983730@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v10 = v5;
  v12 = sub_21D181E00();
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v5;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v16 = v29;
    }

    v17 = *(v16 + 48);
    v18 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    v19 = v14;
    sub_21D107350(v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v20 = *(v16 + 56);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    v28 = *(v21 - 8);
    sub_21D0D523C(v20 + *(v28 + 72) * v19, a5, a1, a2);
    a3(v19, v16);
    *v10 = v16;
    v22 = *(v28 + 56);
    v23 = a5;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a5;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

uint64_t sub_21D983930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_21D17E07C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v20 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D223698(v9);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail(0);
    v19 = *(v12 - 8);
    sub_21D985E14(v11 + *(v19 + 72) * v7, a2, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
    sub_21D4B5098(v7, v10);
    *v3 = v10;
    v13 = *(v19 + 56);
    v14 = a2;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_21D983A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = sub_21D17EC6C(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    v22 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D223B08();
      v12 = v22;
    }

    v13 = *(v12 + 56);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8, &unk_21DC09250);
    v21 = *(v14 - 8);
    sub_21D0D523C(v13 + *(v21 + 72) * v10, a5, &qword_27CE583A8, &unk_21DC09250);
    sub_21D4B5260(v10, v12);
    *v6 = v12;
    v15 = *(v21 + 56);
    v16 = a5;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8, &unk_21DC09250);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a5;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_21D983C6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21D0CEF70(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21D224E44();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_21D4B5A2C(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_21D983D04(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21D17E780(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21D226980();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_21D4B62F4(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_21D983D98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582F0, &unk_21DC090D0);
    v2 = sub_21DBFC3FC();
    v19 = v2;
    sub_21DBFC21C();
    v3 = sub_21DBFC2DC();
    if (v3)
    {
      v4 = v3;
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_21D215CA0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_21DBFB62C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_21DBFC2DC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_21D983FE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58300, &unk_21DC090E0);
    v2 = sub_21DBFC3FC();
    v19 = v2;
    sub_21DBFC21C();
    v3 = sub_21DBFC2DC();
    if (v3)
    {
      v4 = v3;
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_21D0D8CF0(0, &qword_280D0C320, 0x277D447F8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_21D215CB4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_21DBFB62C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_21DBFC2DC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_21D984230(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582F8, &qword_21DC250B0);
    v2 = sub_21DBFC3FC();
    v19 = v2;
    sub_21DBFC21C();
    v3 = sub_21DBFC2DC();
    if (v3)
    {
      v4 = v3;
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_21D217A94(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_21DBFB62C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_21DBFC2DC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_21D98447C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582C0, &qword_21DC09090);
    v2 = sub_21DBFC3FC();
    v19 = v2;
    sub_21DBFC21C();
    v3 = sub_21DBFC2DC();
    if (v3)
    {
      v4 = v3;
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_21D0D8CF0(0, &qword_27CE58DB8, 0x277CBC218);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_21D217AA8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_21DBFB62C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_21DBFC2DC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_21D9846C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581B0, &qword_21DC08F60);
    v2 = sub_21DBFC3FC();
    v19 = v2;
    sub_21DBFC21C();
    v3 = sub_21DBFC2DC();
    if (v3)
    {
      v4 = v3;
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_21D0D8CF0(0, &qword_27CE58DA8, 0x277CC34B8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_21D21AB08(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_21DBFB62C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_21DBFC2DC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_21D984914(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581A8, &unk_21DC0CA80);
    v2 = sub_21DBFC3FC();
    v19 = v2;
    sub_21DBFC21C();
    v3 = sub_21DBFC2DC();
    if (v3)
    {
      v4 = v3;
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_21D21BEE4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_21DBFB62C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_21DBFC2DC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_21D984B60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B30, &qword_21DC0CD78);
    v2 = sub_21DBFC3FC();
    v19 = v2;
    sub_21DBFC21C();
    v3 = sub_21DBFC2DC();
    if (v3)
    {
      v4 = v3;
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for TTRAccountEditor();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_21D21D6F0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_21DBFB62C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_21DBFC2DC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

void *sub_21D984D94(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_21D984F6C(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_21D984E0C(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_21D984D94(v7, v4, v2);
      MEMORY[0x223D46520](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_21D984F6C(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_21D984F6C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v30 = 0;
  v3 = 0;
  v28 = a3 + 64;
  v4 = 1 << *(a3 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a3 + 64);
  v7 = (v4 + 63) >> 6;
  v31 = v7;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_14:
    v11 = v8 | (v3 << 6);
    v12 = *(*(a3 + 48) + 8 * v11);
    sub_21D0CEB98(*(a3 + 56) + 32 * v11, v35);
    v33 = v12;
    sub_21D0CEB98(v35, &v34);
    v13 = qword_27CE56EC0;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = off_27CE643D8;
    if (!*(off_27CE643D8 + 2))
    {
      goto LABEL_26;
    }

    v36 = v6;
    sub_21DBFA16C();
    sub_21DBFC7DC();
    sub_21DBF8E0C();
    sub_21DBFA27C();
    v16 = sub_21DBFC82C();

    v17 = -1 << v15[32];
    v18 = v16 & ~v17;
    if ((*&v15[((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v18))
    {
      v19 = ~v17;
      while (1)
      {
        v20 = sub_21DBFA16C();
        v22 = v21;
        if (v20 == sub_21DBFA16C() && v22 == v23)
        {
          break;
        }

        v25 = sub_21DBFC64C();

        if (v25)
        {
          goto LABEL_6;
        }

        v18 = (v18 + 1) & v19;
        if (((*&v15[((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v18) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

LABEL_6:

      v7 = v31;
      sub_21D0CF7E0(&v33, &qword_27CE5C898, &unk_21DC33810);
      __swift_destroy_boxed_opaque_existential_0(v35);

      v6 = v36;
    }

    else
    {
LABEL_25:

      v7 = v31;
      v6 = v36;
LABEL_26:
      sub_21D0CF7E0(&v33, &qword_27CE5C898, &unk_21DC33810);
      __swift_destroy_boxed_opaque_existential_0(v35);

      *(a1 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v30++, 1))
      {
        goto LABEL_32;
      }
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      sub_21D9856A4(a1, a2, v30, a3);
      return;
    }

    v10 = *(v28 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_21D9852A0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = &v40 - v11;
  v12 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v47 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v42 = &v40 - v15;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C0, &unk_21DC08F70);
  result = sub_21DBFC40C();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v20 = result + 64;
  v41 = a4;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v46 = (v18 - 1) & v18;
LABEL_16:
    v24 = v21 | (v19 << 6);
    v25 = v42;
    v26 = *(v43 + 72);
    sub_21D371AB0(a4[6] + v26 * v24, v42);
    v27 = a4[7];
    v28 = *(v45 + 72);
    v29 = v27 + v28 * v24;
    v30 = v44;
    sub_21D985DA4(v29, v44);
    sub_21D985E14(v25, v47, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D0D523C(v30, v48, &qword_27CE5CDA0, &unk_21DC09B90);
    sub_21DBFC7DC();
    TTRRemindersListViewModel.ItemID.hash(into:)(v49);
    result = sub_21DBFC82C();
    v31 = -1 << *(v17 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v20 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v20 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    sub_21D985E14(v47, *(v17 + 48) + v34 * v26, type metadata accessor for TTRRemindersListViewModel.ItemID);
    result = sub_21D0D523C(v48, *(v17 + 56) + v34 * v28, &qword_27CE5CDA0, &unk_21DC09B90);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v41;
    v18 = v46;
    if (!a3)
    {
      return v17;
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v23 = a1[v19];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v46 = (v23 - 1) & v23;
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

void sub_21D9856A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58280, &qword_21DC09A00);
      v8 = sub_21DBFC40C();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 64;
      v29 = v4;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v30 = (v10 - 1) & v10;
LABEL_16:
        v16 = v13 | (v11 << 6);
        v17 = *(*(v4 + 48) + 8 * v16);
        sub_21D0CEB98(*(v4 + 56) + 32 * v16, v32);
        sub_21D0CF2E8(v32, v31);
        sub_21DBFA16C();
        sub_21DBFC7DC();
        v18 = v17;
        sub_21DBFA27C();
        v19 = sub_21DBFC82C();

        v20 = -1 << *(v9 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
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
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        *(*(v9 + 48) + 8 * v23) = v18;
        sub_21D0CF2E8(v31, (*(v9 + 56) + 32 * v23));
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        v4 = v29;
        v10 = v30;
        if (!v5)
        {
          return;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          return;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v30 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

uint64_t sub_21D985914(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE599C0, &unk_21DC0CBA0);
  result = sub_21DBFC40C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = sub_21DBFC7CC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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