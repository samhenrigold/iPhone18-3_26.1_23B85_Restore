IMDScheduledMessageCoordinator *sub_22B7BB4EC(void *a1, IMDScheduledMessageCoordinator *a2)
{
  v129[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22B7B8550();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 viewContext];

    if (v6)
    {
      v7 = sub_22B7BD078(a1, a2);
      type metadata accessor for PersistedCollaborationNotice();
      v31 = sub_22B7DBEE8();

      v39 = v31;
      if (v31 >> 62)
      {
        v40 = sub_22B7DC1C8();
        if (v40)
        {
LABEL_16:
          v124 = a1;
          v41 = 0;
          v42 = v31 & 0xC000000000000001;
          v128 = v31 & 0xFFFFFFFFFFFFFF8;
          v43 = MEMORY[0x277D84F90];
          v127 = v31 & 0xC000000000000001;
          v125 = v31;
          do
          {
            v44 = v41;
            while (1)
            {
              if (v42)
              {
                v45 = MEMORY[0x231895C80](v44, v39);
              }

              else
              {
                if (v44 >= *(v128 + 16))
                {
                  goto LABEL_47;
                }

                v45 = *&v39->queue[8 * v44];
              }

              v46 = v45;
              v41 = v44 + 1;
              if (__OFADD__(v44, 1))
              {
                __break(1u);
LABEL_47:
                __break(1u);
                goto LABEL_48;
              }

              v47 = [v45 guidString];
              if (v47)
              {
                break;
              }

              ++v44;
              if (v41 == v40)
              {
                goto LABEL_32;
              }
            }

            v48 = v40;
            v49 = v47;
            v50 = sub_22B7DB6A8();
            v52 = v51;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v43 = sub_22B71BD80(0, *v43->messageStore + 1, 1, v43, v53, v54, v55, v56);
            }

            v58 = *v43->messageStore;
            v57 = *v43->chatRegistry;
            v59 = v43;
            if (v58 >= v57 >> 1)
            {
              v59 = sub_22B71BD80((v57 > 1), v58 + 1, 1, v43, v53, v54, v55, v56);
            }

            v43 = v59;
            *v59->messageStore = v58 + 1;
            v60 = v59 + 16 * v58;
            *(v60 + 4) = v50;
            *(v60 + 5) = v52;
            v40 = v48;
            v61 = v41 == v48;
            v39 = v125;
            v42 = v127;
          }

          while (!v61);
LABEL_32:
          v126 = v40;
          v120 = v43;
          v62 = 0;
          v63 = &selRef_updatedPriorityForChatsWithGUIDsAndProperties_chatsAndMessageGUIDs_;
          v64 = &qword_28141F000;
          while (1)
          {
            if (v42)
            {
              v72 = MEMORY[0x231895C80](v62, v39);
            }

            else
            {
              if (v62 >= *(v128 + 16))
              {
                goto LABEL_49;
              }

              v72 = *&v39->queue[8 * v62];
            }

            v73 = v72;
            v74 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              break;
            }

            [v6 v63[156]];
            if (v64[114] != -1)
            {
              swift_once();
            }

            v75 = sub_22B7DB2B8();
            sub_22B4CFA74(v75, qword_281422668);

            v76 = v73;
            v77 = sub_22B7DB298();
            v78 = sub_22B7DBCB8();

            a2, v79, v80, v81, v82, v83, v84, v85, v115, v120;
            if (os_log_type_enabled(v77, v78))
            {
              v86 = swift_slowAlloc();
              v87 = v6;
              v88 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              v129[0] = v89;
              *v86 = 136315394;
              *(v86 + 4) = sub_22B4CFAAC(v124, a2, v129);
              *(v86 + 12) = 2112;
              *(v86 + 14) = v76;
              *v88 = v76;
              v76 = v76;
              _os_log_impl(&dword_22B4CC000, v77, v78, "Successfully deleted notice with collaborationIdentifier: %s, %@", v86, 0x16u);
              sub_22B4D0D64(v88, &unk_27D8CEC60, &qword_22B7F9E20);
              v90 = v88;
              v6 = v87;
              v64 = &qword_28141F000;
              MEMORY[0x231898D60](v90, -1, -1);
              sub_22B4CFB78(v89);
              v91 = v89;
              v63 = &selRef_updatedPriorityForChatsWithGUIDsAndProperties_chatsAndMessageGUIDs_;
              MEMORY[0x231898D60](v91, -1, -1);
              v92 = v86;
              v39 = v125;
              MEMORY[0x231898D60](v92, -1, -1);
            }

            ++v62;
            v42 = v127;
            if (v74 == v126)
            {
              v39, v65, v66, v67, v68, v69, v70, v71, v115, v120;
              v129[0] = 0;
              if ([v6 save_])
              {
                v93 = v129[0];

                return v121;
              }

              v94 = v129[0];
              v121, v95, v96, v97, v98, v99, v100, v101, v116, v121;
              v102 = sub_22B7DA6F8();

              swift_willThrow();
              if (qword_28141F390 != -1)
              {
                swift_once();
              }

              v8 = sub_22B7DB2B8();
              sub_22B4CFA74(v8, qword_281422668);
              v9 = v102;
              v10 = sub_22B7DB298();
              v11 = sub_22B7DBC98();

              if (os_log_type_enabled(v10, v11))
              {
                v12 = swift_slowAlloc();
                v13 = swift_slowAlloc();
                v129[0] = v13;
                *v12 = 136315138;
                v14 = v102;
                sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
                v15 = sub_22B7DB6C8();
                v17 = v16;
                v18 = sub_22B4CFAAC(v15, v16, v129);
                v17, v19, v20, v21, v22, v23, v24, v25, v117, v122;
                *(v12 + 4) = v18;
                _os_log_impl(&dword_22B4CC000, v10, v11, "Failed to delete notices, error: %s", v12, 0xCu);
                sub_22B4CFB78(v13);
                MEMORY[0x231898D60](v13, -1, -1);
                MEMORY[0x231898D60](v12, -1, -1);
              }

              return MEMORY[0x277D84F90];
            }
          }

LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      else
      {
        v40 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v40)
        {
          goto LABEL_16;
        }
      }

      v31, v32, v33, v34, v35, v36, v37, v38, v115, v119;
      if (qword_28141F390 != -1)
      {
        swift_once();
      }

      v103 = sub_22B7DB2B8();
      sub_22B4CFA74(v103, qword_281422668);

      v104 = sub_22B7DB298();
      v105 = sub_22B7DBCB8();
      a2, v106, v107, v108, v109, v110, v111, v112, v118, v123;
      if (os_log_type_enabled(v104, v105))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v129[0] = v114;
        *v113 = 136315138;
        *(v113 + 4) = sub_22B4CFAAC(a1, a2, v129);
        _os_log_impl(&dword_22B4CC000, v104, v105, "No notices to delete for collaborationIdentifier: %s", v113, 0xCu);
        sub_22B4CFB78(v114);
        MEMORY[0x231898D60](v114, -1, -1);
        MEMORY[0x231898D60](v113, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }
  }

  if (qword_28141F390 != -1)
  {
LABEL_50:
    swift_once();
  }

  v26 = sub_22B7DB2B8();
  sub_22B4CFA74(v26, qword_281422668);
  v27 = sub_22B7DB298();
  v28 = sub_22B7DBC98();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_22B4CC000, v27, v28, "Unable to delete notices, can't retrieve object context", v29, 2u);
    MEMORY[0x231898D60](v29, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

void sub_22B7BBD60(uint64_t a1)
{
  v98[1] = *MEMORY[0x277D85DE8];
  v96 = sub_22B7DA828();
  v3 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v92 = v1;
    v98[0] = MEMORY[0x277D84F90];
    sub_22B7AB6B4(0, v6, 0);
    v7 = v98[0];
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v94 = *(v8 + 56);
    v95 = v9;
    v93 = (v8 - 8);
    do
    {
      v11 = v96;
      v12 = v8;
      v95(v5, v10, v96);
      v13 = sub_22B7DA748();
      v15 = v14;
      (*v93)(v5, v11);
      v98[0] = v7;
      v17 = *v7->messageStore;
      v16 = *v7->chatRegistry;
      if (v17 >= v16 >> 1)
      {
        sub_22B7AB6B4((v16 > 1), v17 + 1, 1);
        v7 = v98[0];
      }

      *v7->messageStore = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      v10 += v94;
      --v6;
      v8 = v12;
    }

    while (v6);
  }

  v19 = sub_22B7B8550();
  if (!v19 || (v27 = v19, v28 = [v19 viewContext], v27, !v28))
  {
    v7, v20, v21, v22, v23, v24, v25, v26, v91, v92;
    if (qword_28141F390 != -1)
    {
LABEL_35:
      swift_once();
    }

    v55 = sub_22B7DB2B8();
    sub_22B4CFA74(v55, qword_281422668);
    v28 = sub_22B7DB298();
    v56 = sub_22B7DBC98();
    if (os_log_type_enabled(v28, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_22B4CC000, v28, v56, "Unable to delete notices, can't retrieve object context", v57, 2u);
      MEMORY[0x231898D60](v57, -1, -1);
    }

    goto LABEL_43;
  }

  v29 = sub_22B7BCD18(v7);
  v7, v30, v31, v32, v33, v34, v35, v36, v91, v92;
  type metadata accessor for PersistedCollaborationNotice();
  v58 = sub_22B7DBEE8();

  if (v58 >> 62)
  {
    v66 = sub_22B7DC1C8();
    if (v66)
    {
      goto LABEL_18;
    }

LABEL_37:
    v58, v59, v60, v61, v62, v63, v64, v65, v91, v92;
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v88 = sub_22B7DB2B8();
    sub_22B4CFA74(v88, qword_281422668);
    v82 = sub_22B7DB298();
    v89 = sub_22B7DBCB8();
    if (os_log_type_enabled(v82, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_22B4CC000, v82, v89, "No notices to delete", v90, 2u);
      v85 = v90;
LABEL_41:
      MEMORY[0x231898D60](v85, -1, -1);
    }

    goto LABEL_42;
  }

  v66 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v66)
  {
    goto LABEL_37;
  }

LABEL_18:
  v67 = 0;
  do
  {
    if ((v58 & 0xC000000000000001) != 0)
    {
      v68 = MEMORY[0x231895C80](v67, v58);
    }

    else
    {
      if (v67 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v68 = *(v58 + 8 * v67 + 32);
    }

    v69 = v68;
    v70 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    [v28 deleteObject:v68];

    ++v67;
  }

  while (v70 != v66);
  v58, v71, v72, v73, v74, v75, v76, v77, v91, v92;
  v98[0] = 0;
  if ([v28 save:v98])
  {
    v79 = qword_28141F390;
    v80 = v98[0];
    if (v79 != -1)
    {
      swift_once();
    }

    v81 = sub_22B7DB2B8();
    sub_22B4CFA74(v81, qword_281422668);
    v82 = sub_22B7DB298();
    v83 = sub_22B7DBCB8();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 134217984;
      *(v84 + 4) = v66;
      _os_log_impl(&dword_22B4CC000, v82, v83, "Successfully deleted %ld notices", v84, 0xCu);
      v85 = v84;
      goto LABEL_41;
    }

LABEL_42:

LABEL_43:
    return;
  }

  v86 = v98[0];
  v87 = sub_22B7DA6F8();

  swift_willThrow();
  if (qword_28141F390 != -1)
  {
    swift_once();
  }

  v37 = sub_22B7DB2B8();
  sub_22B4CFA74(v37, qword_281422668);
  v38 = v87;
  v39 = sub_22B7DB298();
  v40 = sub_22B7DBC98();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v98[0] = v42;
    *v41 = 136315138;
    v97 = v87;
    v43 = v87;
    sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
    v44 = sub_22B7DB6C8();
    v46 = v45;
    v47 = sub_22B4CFAAC(v44, v45, v98);
    v46, v48, v49, v50, v51, v52, v53, v54, v91, v92;
    *(v41 + 4) = v47;
    _os_log_impl(&dword_22B4CC000, v39, v40, "Failed to delete notices, error: %s", v41, 0xCu);
    sub_22B4CFB78(v42);
    MEMORY[0x231898D60](v42, -1, -1);
    MEMORY[0x231898D60](v41, -1, -1);
  }

  else
  {
  }
}

id CollaborationNoticeStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CollaborationNoticeStore.init()()
{
  *&v0[OBJC_IVAR___IMDCollaborationNoticeStore____lazy_storage___persistenceContainer] = 1;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollaborationNoticeStore();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CollaborationNoticeStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollaborationNoticeStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22B7BC5AC(void *a1)
{
  v1 = a1;
  IMCollaborationNotice.description.getter();
  v3 = v2;

  v4 = sub_22B7DB678();
  v3, v5, v6, v7, v8, v9, v10, v11, v13, v14;

  return v4;
}

id IMCollaborationNotice.description.getter()
{
  v1 = v0;
  v2 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  MEMORY[0x28223BE20](v2);
  v4 = &v68 - v3;
  v5 = sub_22B7DA968();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_22B7DC2E8();
  MEMORY[0x231895140](0x6972745364697567, 0xEC000000203A676ELL);
  v9 = [v0 guidString];
  v10 = sub_22B7DB6A8();
  v12 = v11;

  MEMORY[0x231895140](v10, v12);
  v12, v13, v14, v15, v16, v17, v18, v19, v68, v69;
  MEMORY[0x231895140](0x7265646E6573202CLL, 0xEA0000000000203ALL);
  v20 = [v1 senderHandle];
  v21 = sub_22B7DB6A8();
  v23 = v22;

  MEMORY[0x231895140](v21, v23);
  v23, v24, v25, v26, v27, v28, v29, v30, v68, v69;
  MEMORY[0x231895140](0x203A65746164202CLL, 0xE800000000000000);
  v31 = [v1 date];
  sub_22B7DA928();

  sub_22B7BD3A4(&qword_27D8CD8D0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v32 = sub_22B7DC4E8();
  v34 = v33;
  MEMORY[0x231895140](v32);
  v34, v35, v36, v37, v38, v39, v40, v41, v68, v69;
  (*(v6 + 8))(v8, v5);
  MEMORY[0x231895140](0x695665746164202CLL, 0xEE00203A64657765);
  v42 = [v1 dateViewed];
  if (v42)
  {
    v43 = v42;
    sub_22B7DA928();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  (*(v6 + 56))(v4, v44, 1, v5);
  v45 = sub_22B7DB6C8();
  v47 = v46;
  MEMORY[0x231895140](v45);
  v47, v48, v49, v50, v51, v52, v53, v54, v68, v69;
  MEMORY[0x231895140](0x61646174656D202CLL, 0xEC000000203A6174);
  v55 = [v1 metadata];
  v56 = [v55 description];

  v57 = sub_22B7DB6A8();
  v59 = v58;

  MEMORY[0x231895140](v57, v59);
  v59, v60, v61, v62, v63, v64, v65, v66, v68, v69;
  return v68;
}

void sub_22B7BC9D8(unint64_t a1, uint64_t a2, void *a3, void *a4, IMDScheduledMessageCoordinator *a5)
{
  v49 = a4;
  v51 = a2;
  v8 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v44 - v10;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B7DC1C8())
  {
    v12 = 0;
    v53 = a1 & 0xFFFFFFFFFFFFFF8;
    v54 = a1 & 0xC000000000000001;
    *&v9 = 136315394;
    v46 = v9;
    v47 = a1;
    v48 = a3;
    v52 = i;
    while (1)
    {
      if (v54)
      {
        v13 = MEMORY[0x231895C80](v12, a1);
      }

      else
      {
        if (v12 >= *(v53 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = [v13 url];
      if (v16)
      {
        v17 = v16;
        sub_22B7DB6A8();
        v19 = v18;

        v20 = v50;
        sub_22B7DA808();
        v19, v21, v22, v23, v24, v25, v26, v27, v44, v45;
        sub_22B7BD324(v20, v51);
      }

      [a3 deleteObject_];
      if (qword_28141F390 != -1)
      {
        swift_once();
      }

      v28 = sub_22B7DB2B8();
      sub_22B4CFA74(v28, qword_281422668);

      v29 = v14;
      v30 = sub_22B7DB298();
      v31 = sub_22B7DBCB8();

      a5, v32, v33, v34, v35, v36, v37, v38, v44, v45;
      if (os_log_type_enabled(v30, v31))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v55 = v41;
        *v39 = v46;
        *(v39 + 4) = sub_22B4CFAAC(v49, a5, &v55);
        *(v39 + 12) = 2112;
        *(v39 + 14) = v29;
        *v40 = v29;
        v29 = v29;
        _os_log_impl(&dword_22B4CC000, v30, v31, "Successfully deleted notice with guidString: %s, %@", v39, 0x16u);
        sub_22B4D0D64(v40, &unk_27D8CEC60, &qword_22B7F9E20);
        v42 = v40;
        a3 = v48;
        MEMORY[0x231898D60](v42, -1, -1);
        sub_22B4CFB78(v41);
        v43 = v41;
        a1 = v47;
        MEMORY[0x231898D60](v43, -1, -1);
        MEMORY[0x231898D60](v39, -1, -1);
      }

      ++v12;
      if (v15 == v52)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

id sub_22B7BCD18(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_22B4D01A0(0, &unk_27D8CEED0, 0x277CCAC30);
    v4 = (a1 + 40);
    v5 = MEMORY[0x277D837D0];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      sub_22B6F0AD4(&qword_27D8CD660, &unk_22B7F9760);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_22B7F93B0;
      *(v8 + 56) = v5;
      *(v8 + 64) = sub_22B704A5C();
      *(v8 + 32) = v7;
      *(v8 + 40) = v6;
      swift_bridgeObjectRetain_n();
      sub_22B7DBC58();
      MEMORY[0x231895260]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B7DB938();
      }

      sub_22B7DB968();
      v1 = v31;
      v6, v9, v10, v11, v12, v13, v14, v15, v29, v30;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  v16 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v17 = sub_22B7DB678();
  v18 = [v16 initWithEntityName_];

  sub_22B4D01A0(0, &unk_27D8CEED0, 0x277CCAC30);
  v19 = sub_22B7DB8F8();
  v20 = [objc_opt_self() orPredicateWithSubpredicates_];

  [v18 setPredicate_];
  v1, v21, v22, v23, v24, v25, v26, v27, v29, v30;

  return v18;
}

id sub_22B7BCF50(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_22B7DB678();
  v6 = [v4 initWithEntityName_];

  sub_22B4D01A0(0, &unk_27D8CEED0, 0x277CCAC30);
  sub_22B6F0AD4(&qword_27D8CD660, &unk_22B7F9760);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22B7F93B0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_22B704A5C();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_22B7DBC58();
  [v6 setPredicate_];

  return v6;
}

id sub_22B7BD078(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_22B7DB678();
  v6 = [v4 initWithEntityName_];

  sub_22B4D01A0(0, &unk_27D8CEED0, 0x277CCAC30);
  sub_22B6F0AD4(&qword_27D8CD660, &unk_22B7F9760);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22B7F93B0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_22B704A5C();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_22B7DBC58();
  [v6 setPredicate_];

  return v6;
}

void sub_22B7BD314(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_22B7BD324(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_22B7BD394(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_22B7BD3A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B7BD3EC()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_2814226C8);
  sub_22B4CFA74(v0, qword_2814226C8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

void sub_22B7BD458()
{
  v1 = objc_opt_self();
  if ([v1 reindexSchedulingInProgress])
  {
    sub_22B7BE250(0xD000000000000028, 0x800000022B812670);
  }

  else
  {
    v2 = v0;
    sub_22B7BE564(0xD000000000000028, 0x800000022B812670);
  }

  if ([v1 reindexSchedulingInProgress])
  {
    v6 = v0;
    sub_22B7BE9F0(0xD000000000000034, 0x800000022B8126A0);
  }

  else
  {
    v3 = [objc_opt_self() sharedScheduler];
    v4 = sub_22B7DB678();
    v5 = [v3 taskRequestForIdentifier_];

    if (v5)
    {

      sub_22B7BE250(0xD000000000000034, 0x800000022B8126A0);
    }
  }
}

void sub_22B7BD5F0()
{
  v1 = [objc_allocWithZone(IMDSpotlightDaemonClient) init];
  v2 = *(v0 + OBJC_IVAR___IMDaemonModernCoreSpotlightManager_indexingDelegate);
  *(v0 + OBJC_IVAR___IMDaemonModernCoreSpotlightManager_indexingDelegate) = v1;
  v3 = v1;

  v4 = sub_22B7DB678();
  SpotlightDaemonClientRegister();

  if (qword_28141F3D8 != -1)
  {
    swift_once();
  }

  v5 = sub_22B7DB2B8();
  sub_22B4CFA74(v5, qword_2814226C8);
  oslog = sub_22B7DB298();
  v6 = sub_22B7DBC78();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, oslog, v6, "Initialized Spotlight daemon client", v7, 2u);
    MEMORY[0x231898D60](v7, -1, -1);
    v8 = v3;
  }

  else
  {
    v8 = oslog;
    oslog = v3;
  }
}

Swift::Void __swiftcall IMDaemonModernCoreSpotlightManager.registerForCoreSpotlightIndexing()()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedScheduler];
  v3 = sub_22B7DB678();
  v4 = objc_opt_self();
  v5 = [v4 spotlightIndexQueue];
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v19 = sub_22B7BD9E0;
  v20 = v6;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_22B74C9E0;
  v18 = &unk_283F20890;
  v7 = _Block_copy(&v15);
  v8 = v0;

  [v2 registerForMessagesDeletionAwareTaskWithIdentifier:v3 usingQueue:v5 launchHandler:v7];
  _Block_release(v7);

  sub_22B7BD5F0();
  v9 = [v1 sharedScheduler];
  v10 = sub_22B7DB678();
  v11 = [v4 spotlightIndexQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  v19 = sub_22B7BDAC0;
  v20 = v12;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_22B74C9E0;
  v18 = &unk_283F208E0;
  v13 = _Block_copy(&v15);
  v14 = v8;

  [v9 registerForMessagesDeletionAwareTaskWithIdentifier:v10 usingQueue:v11 launchHandler:v13];
  _Block_release(v13);

  sub_22B7BD458();
}

void sub_22B7BDA14(void *a1, void *a2, char a3, void (*a4)(uint64_t, id))
{
  type metadata accessor for IMDReindexManagementTask();
  swift_allocObject();
  v8 = a1;
  v9 = sub_22B78B8D0(v8, a3);

  v10 = a2;
  a4(v9, v10);
}

id sub_22B7BDB3C(void *a1, id a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_28141F3D8 != -1)
    {
      swift_once();
    }

    v5 = sub_22B7DB2B8();
    sub_22B4CFA74(v5, qword_2814226C8);
    v6 = a1;
    v7 = sub_22B7DB298();
    v8 = sub_22B7DBC98();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_22B4CC000, v7, v8, "Failed to clear index state due to restore from backup: %@", v9, 0xCu);
      sub_22B708A24(v10);
      MEMORY[0x231898D60](v10, -1, -1);
      MEMORY[0x231898D60](v9, -1, -1);
    }

    else
    {
    }
  }

  return [a2 setTaskCompleted];
}

Swift::Void __swiftcall IMDaemonModernCoreSpotlightManager.registerForCoreSpotlightMigration()()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = [v1 sharedScheduler];
  v3 = sub_22B7DB678();
  v4 = swift_allocObject();
  v4[2] = v0;
  aBlock[4] = sub_22B7BE130;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B74C9E0;
  aBlock[3] = &unk_283F20930;
  v5 = _Block_copy(aBlock);
  v6 = v0;

  [v2 registerForMessagesDeletionAwareTaskWithIdentifier:v3 usingQueue:0 launchHandler:v5];
  _Block_release(v5);

  v7 = [v1 sharedScheduler];
  v8 = sub_22B7BEF0C();
  aBlock[0] = 0;
  LODWORD(v2) = [v7 submitTaskRequest:v8 error:aBlock];

  v9 = aBlock[0];
  if (v2)
  {

    v10 = v9;
  }

  else
  {
    v11 = aBlock[0];
    v12 = sub_22B7DA6F8();

    swift_willThrow();
    if (qword_28141F3D8 != -1)
    {
      swift_once();
    }

    v13 = sub_22B7DB2B8();
    sub_22B4CFA74(v13, qword_2814226C8);
    v14 = v12;
    v15 = sub_22B7DB298();
    v16 = sub_22B7DBCA8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v17 = 136315394;
      *(v17 + 4) = sub_22B4CFAAC(0xD00000000000002CLL, 0x800000022B8126E0, aBlock);
      *(v17 + 12) = 2112;
      v20 = v12;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v21;
      *v18 = v21;
      _os_log_impl(&dword_22B4CC000, v15, v16, "Failed to submit task request for %s with error: %@", v17, 0x16u);
      sub_22B708A24(v18);
      MEMORY[0x231898D60](v18, -1, -1);
      sub_22B4CFB78(v19);
      MEMORY[0x231898D60](v19, -1, -1);
      MEMORY[0x231898D60](v17, -1, -1);
    }

    else
    {
    }
  }
}

void sub_22B7BE048(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_22B7BF06C;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_22B78B014;
  v6[3] = &unk_283F20980;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 stageIndexingDeletionForMigrationIfNeededWithCompletion_];
  _Block_release(v4);
}

void __swiftcall IMDaemonModernCoreSpotlightManager.init()(IMDaemonModernCoreSpotlightManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id IMDaemonModernCoreSpotlightManager.init()()
{
  *(v0 + OBJC_IVAR___IMDaemonModernCoreSpotlightManager_indexingDelegate) = 0;
  v2.super_class = IMDaemonModernCoreSpotlightManager;
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_22B7BE250(void *a1, IMDScheduledMessageCoordinator *a2)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  v5 = [v4 sharedScheduler];
  v6 = sub_22B7DB678();
  v7 = [v5 taskRequestForIdentifier_];

  if (v7)
  {

    v8 = [v4 sharedScheduler];
    v9 = sub_22B7DB678();
    v33[0] = 0;
    v10 = [v8 cancelTaskRequestWithIdentifier:v9 error:v33];

    v11 = v33[0];
    if (v10)
    {

      v12 = v11;
    }

    else
    {
      v31 = v33[0];
      v13 = v33[0];
      v14 = sub_22B7DA6F8();

      swift_willThrow();
      if (qword_28141F3D8 != -1)
      {
        swift_once();
      }

      v15 = sub_22B7DB2B8();
      sub_22B4CFA74(v15, qword_2814226C8);

      v16 = v14;
      v17 = sub_22B7DB298();
      v18 = sub_22B7DBC98();
      a2, v19, v20, v21, v22, v23, v24, v25, v31, v32;

      if (os_log_type_enabled(v17, v18))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v33[0] = v28;
        *v26 = 136315394;
        *(v26 + 4) = sub_22B4CFAAC(a1, a2, v33);
        *(v26 + 12) = 2112;
        v29 = v14;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 14) = v30;
        *v27 = v30;
        _os_log_impl(&dword_22B4CC000, v17, v18, "Failed to cancel task request for %s with error: %@", v26, 0x16u);
        sub_22B708A24(v27);
        MEMORY[0x231898D60](v27, -1, -1);
        sub_22B4CFB78(v28);
        MEMORY[0x231898D60](v28, -1, -1);
        MEMORY[0x231898D60](v26, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_22B7BE564(void *a1, IMDScheduledMessageCoordinator *a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  v5 = [v4 sharedScheduler];
  v6 = sub_22B7DB678();
  v33 = [v5 taskRequestForIdentifier_];

  if (v33)
  {
  }

  else
  {
    v7 = [v4 sharedScheduler];
    v8 = objc_allocWithZone(MEMORY[0x277CF07D8]);
    v9 = sub_22B7DB678();
    v10 = [v8 initWithIdentifier_];

    [v10 setInterval_];
    v11 = v10;
    [v11 setRequiresNetworkConnectivity_];
    [v11 setRequiresUserInactivity_];
    [v11 setRequiresExternalPower_];
    [v11 setRequiresProtectionClass_];
    [v11 setPriority_];
    v12 = sub_22B7DB678();
    [v11 setGroupName_];

    [v11 setGroupConcurrencyLimit_];
    [v11 setResources_];

    v36[0] = 0;
    LOBYTE(v12) = [v7 submitTaskRequest:v11 error:v36];

    v13 = v36[0];
    if (v12)
    {

      v14 = v13;
    }

    else
    {
      v34 = v36[0];
      v15 = v36[0];
      v16 = sub_22B7DA6F8();

      swift_willThrow();
      if (qword_28141F3D8 != -1)
      {
        swift_once();
      }

      v17 = sub_22B7DB2B8();
      sub_22B4CFA74(v17, qword_2814226C8);

      v18 = v16;
      v19 = sub_22B7DB298();
      v20 = sub_22B7DBCA8();
      a2, v21, v22, v23, v24, v25, v26, v27, v34, v35;

      if (os_log_type_enabled(v19, v20))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v36[0] = v30;
        *v28 = 136315394;
        *(v28 + 4) = sub_22B4CFAAC(a1, a2, v36);
        *(v28 + 12) = 2112;
        v31 = v16;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 14) = v32;
        *v29 = v32;
        _os_log_impl(&dword_22B4CC000, v19, v20, "Failed to submit task request for %s with error: %@", v28, 0x16u);
        sub_22B708A24(v29);
        MEMORY[0x231898D60](v29, -1, -1);
        sub_22B4CFB78(v30);
        MEMORY[0x231898D60](v30, -1, -1);
        MEMORY[0x231898D60](v28, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_22B7BE9F0(void *a1, IMDScheduledMessageCoordinator *a2)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  v5 = [v4 sharedScheduler];
  v6 = sub_22B7DB678();
  v48 = [v5 taskRequestForIdentifier_];

  if (v48)
  {
  }

  else
  {
    v7 = [v4 sharedScheduler];
    v8 = objc_allocWithZone(MEMORY[0x277CF07C8]);
    v9 = sub_22B7DB678();
    v10 = [v8 initWithIdentifier_];

    v11 = v10;
    [v11 setRequiresNetworkConnectivity_];
    [v11 setRequiresProtectionClass_];
    [v11 setRequiresUserInactivity_];
    [v11 setRequiresExternalPower_];
    v12 = sub_22B7DB8F8();
    [v11 setInvolvedProcesses_];

    v13 = IMSharedHelperMessagesApplicationName();
    if (v13)
    {
      v14 = v13;
      v15 = sub_22B7DB6A8();
      v17 = v16;

      sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_22B7F93B0;
      *(v18 + 32) = v15;
      *(v18 + 40) = v17;
      v19 = sub_22B7DB8F8();
      v18, v20, v21, v22, v23, v24, v25, v26, 0, v50;
      [v11 setRelatedApplications_];
    }

    [v11 setPriority_];
    v27 = sub_22B7DB678();
    [v11 setGroupName_];

    [v11 setGroupConcurrencyLimit_];
    [v11 setResources_];

    v51[0] = 0;
    LOBYTE(v27) = [v7 submitTaskRequest:v11 error:v51];

    v28 = v51[0];
    if (v27)
    {

      v29 = v28;
    }

    else
    {
      v49 = v51[0];
      v30 = v51[0];
      v31 = sub_22B7DA6F8();

      swift_willThrow();
      if (qword_28141F3D8 != -1)
      {
        swift_once();
      }

      v32 = sub_22B7DB2B8();
      sub_22B4CFA74(v32, qword_2814226C8);

      v33 = v31;
      v34 = sub_22B7DB298();
      v35 = sub_22B7DBCA8();
      a2, v36, v37, v38, v39, v40, v41, v42, v49, v50;

      if (os_log_type_enabled(v34, v35))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v51[0] = v45;
        *v43 = 136315394;
        *(v43 + 4) = sub_22B4CFAAC(a1, a2, v51);
        *(v43 + 12) = 2112;
        v46 = v31;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 14) = v47;
        *v44 = v47;
        _os_log_impl(&dword_22B4CC000, v34, v35, "Failed to submit task request for %s with error: %@", v43, 0x16u);
        sub_22B708A24(v44);
        MEMORY[0x231898D60](v44, -1, -1);
        sub_22B4CFB78(v45);
        MEMORY[0x231898D60](v45, -1, -1);
        MEMORY[0x231898D60](v43, -1, -1);
      }

      else
      {
      }
    }
  }
}

id sub_22B7BEF0C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CF07C8]);
  v1 = sub_22B7DB678();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setRequiresNetworkConnectivity_];
  [v3 setPostInstall_];
  [v3 setRequiresProtectionClass_];
  v4 = sub_22B7DB678();
  [v3 setGroupName_];

  [v3 setGroupConcurrencyLimit_];
  [v3 setPriority_];

  return v3;
}

unint64_t type metadata accessor for IMDaemonModernCoreSpotlightManager()
{
  result = qword_27D8CFB40;
  if (!qword_27D8CFB40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8CFB40);
  }

  return result;
}

uint64_t ClientConnection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ClientConnection.supportedServices.getter()
{
  sub_22B6F0AD4(&qword_27D8CEF00, &qword_22B7FBAD0);
  sub_22B7DACB8();
  return v1;
}

double sub_22B7BF2A0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 64);

  return result;
}

void (*ClientConnection.supportedServices.modify(void *a1))(IMDScheduledMessageCoordinator **a1, char a2)
{
  a1[1] = *(v1 + 16);
  sub_22B6F0AD4(&qword_27D8CEF00, &qword_22B7FBAD0);
  sub_22B7DACB8();
  return sub_22B7BF328;
}

void sub_22B7BF328(IMDScheduledMessageCoordinator **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    sub_22B7DACB8();
    v2, v3, v4, v5, v6, v7, v8, v9, v17, v18;
  }

  else
  {
    sub_22B7DACB8();
  }

  v2, v10, v11, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_22B7BF478@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  sub_22B4D2BCC(a1, v7);
  result = (*(v8 + 16))(a2, a3, v7, v8);
  *a4 = result & 1;
  return result;
}

uint64_t sub_22B7BF4F0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1[3];
  v7 = a1[4];
  sub_22B4D2BCC(a1, v6);
  result = (*(v7 + 16))(v5, v4, v6, v7);
  *a2 = result & 1;
  return result;
}

uint64_t sub_22B7BF568@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = result;
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  if (v5 && (result = sub_22B4D90D4(v2[3], v5, *(result + 64)), (result & 1) == 0))
  {
    v9 = 0;
  }

  else
  {
    v8 = *(v3 + 40);
    v9 = (v6 & ~v8) == 0 && (v8 & v7) == 0;
  }

  *a2 = v9;
  return result;
}

void *sub_22B7BF5D8@<X0>(void *a1@<X8>)
{
  result = sub_22B7DACB8();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_22B7BF650(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B7BF698(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22B7BF6FC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 64);

  v4, v5, v6, v7, v8, v9, v10, v11, v12, v13;
  *(a1 + 64) = v3;
}

void sub_22B7BF744(unsigned __int8 a1)
{
  v2 = a1;
  v3 = [v1 string];
  v4 = sub_22B7DB6A8();
  v6 = v5;

  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (((v6 >> 60) & ((v4 & 0x800000000000000) == 0)) != 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = 7;
  }

  v9 = 4 * v7;
  v62 = v1;
  v10 = 15;
  if ((v2 | 2) == 2 && v7)
  {
    do
    {
      sub_22B7DB878();
      v12 = v11;
      v13 = sub_22B7DB5C8();
      v12, v14, v15, v16, v17, v18, v19, v20, v61, v62;
      if ((v13 & 1) == 0)
      {
        v21 = sub_22B7DB878();
        v23 = v22;
        v24 = sub_22B7C1414(v21, v22);
        if ((v24 & 0x100000000) != 0)
        {
          goto LABEL_31;
        }

        v32 = v24;
        v23, v25, v26, v27, v28, v29, v30, v31, v61, v62;
        if ((v32 - 14) <= 0xFFFFFFFB && (v32 - 8232) >= 2 && v32 != 133)
        {
          break;
        }
      }

      v10 = sub_22B7DB778();
    }

    while (v9 > v10 >> 14);
  }

  v33 = v8 | (v7 << 16);
  v34 = v10 >> 14;
  if ((v2 - 1) <= 1 && v34 < v9)
  {
    do
    {
      sub_22B7DB788();
      sub_22B7DB878();
      v36 = v35;
      v37 = sub_22B7DB5C8();
      v36, v38, v39, v40, v41, v42, v43, v44, v61, v62;
      if ((v37 & 1) == 0)
      {
        sub_22B7DB788();
        v45 = sub_22B7DB878();
        v47 = v46;
        v48 = sub_22B7C1414(v45, v46);
        if ((v48 & 0x100000000) != 0)
        {
          goto LABEL_30;
        }

        v56 = v48;
        v47, v49, v50, v51, v52, v53, v54, v55, v61, v62;
        if ((v56 - 14) <= 0xFFFFFFFB && (v56 - 8232) >= 2 && v56 != 133)
        {
          break;
        }
      }

      v33 = sub_22B7DB788();
    }

    while (v34 < v33 >> 14);
  }

  if (v34 > v33 >> 14)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CFB50, &qword_22B7FE2A0);
    sub_22B7C5C4C();
    sub_22B704B70();
    v57 = sub_22B7DC008();
    v59 = [v62 attributedSubstringFromRange_];

    v60 = v59;
  }
}

uint64_t IMMessagePartDescriptor.canBeTranslated.getter()
{
  if (IMMessagePartDescriptor.hasAttachment.getter())
  {
    v1 = 0;
  }

  else
  {
    sub_22B7DAC78();
    sub_22B7DAC58();
    v2 = [v0 messagePartBody];
    v3 = [v2 string];

    sub_22B7DB6A8();
    v5 = v4;

    LOBYTE(v2) = sub_22B7DAC18();

    v5, v6, v7, v8, v9, v10, v11, v12, v14, v15;
    v1 = v2 ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_22B7BFBD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7BFC6C, 0, 0);
}

uint64_t sub_22B7BFC6C()
{
  v1 = *(v0 + 24);
  v2 = sub_22B7DBA58();
  v3 = *(*(v2 - 8) + 56);
  v3(v1, 1, 1, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_22B7C0068(v1, &unk_22B7FE2B8, v4);
  sub_22B4D0D64(v1, &qword_27D8CD5C0, &qword_22B7F8CF0);
  v3(v1, 1, 1, v2);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_22B7C0068(v1, &unk_22B7FE2C8, v5);
  sub_22B4D0D64(v1, &qword_27D8CD5C0, &qword_22B7F8CF0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22B7BFE04()
{
  v0[2] = sub_22B7DAE28();
  sub_22B7DAE18();
  sub_22B7DADF8();

  v0[3] = sub_22B7DAE18();
  v3 = (*MEMORY[0x277D19610] + MEMORY[0x277D19610]);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_22B7BFEE0;

  return v3();
}

uint64_t sub_22B7BFEE0()
{

  return MEMORY[0x2822009F8](sub_22B7BFFF8, 0, 0);
}

uint64_t sub_22B7BFFF8(uint64_t a1)
{
  sub_22B7DAE18();
  sub_22B7DADE8();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_22B7C0068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_22B724CA8(a1, v20 - v9);
  v11 = sub_22B7DBA58();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22B4D0D64(v10, &qword_27D8CD5C0, &qword_22B7F8CF0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_22B7DB9C8();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22B7DBA48();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_22B7C028C(uint64_t a1, uint64_t a2)
{
  sub_22B7DAC78();
  sub_22B7DAC48();
  v3 = *(v2 + 8);

  return v3();
}

id IMMessagePartDescriptor.shouldSkipTranslationDueToExistingTranslation(messageItem:chat:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_22B7DAA08();
  v7 = *(v6 - 1);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v114 - v11;
  v13 = [a1 translationsForMessagePart_];
  sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
  v14 = sub_22B7DB918();

  if (!*v14->messageStore)
  {
    v14, v15, v16, v17, v18, v19, v20, v21, v114, v115;
    v79 = 0;
    return (v79 & 1);
  }

  v115 = v10;
  v116 = v7;
  v22 = *v14->queue;
  v23 = objc_allocWithZone(MEMORY[0x277D1ACB0]);

  v24 = sub_22B7DB568();
  v25 = [v23 initWithDictionaryRepresentation_];

  v26 = [v25 translationLanguage];
  v27 = sub_22B7DB6A8();
  v29 = v28;

  v117 = a2;
  v30 = [a2 userTranslationLanguageIdentifier];
  if (v30)
  {
    v38 = v30;
    v114 = v6;
    v39 = sub_22B7DB6A8();
    v41 = v40;

    if (v27 == v39 && v29 == v41)
    {
      v22, v42, v43, v44, v45, v46, v47, v48, v114, v115;

      v29, v100, v101, v102, v103, v104, v105, v106, v114, v115;
      v41, v107, v108, v109, v110, v111, v112, v113, v114, v115;
      goto LABEL_14;
    }

    v50 = sub_22B7DC518();
    v29, v51, v52, v53, v54, v55, v56, v57, v114, v115;
    v41, v58, v59, v60, v61, v62, v63, v64, v114, v115;
    v6 = v114;
    if (v50)
    {
      v22, v65, v66, v67, v68, v69, v70, v71, v114, v115;

LABEL_14:
      v14, v72, v73, v74, v75, v76, v77, v78, v114, v115;
      v79 = 1;
      return (v79 & 1);
    }
  }

  else
  {
    v29, v31, v32, v33, v34, v35, v36, v37, v114, v115;
  }

  v80 = [v25 sourceLanguage];
  sub_22B7DB6A8();

  sub_22B7DA9B8();
  result = [v117 translationLanguageIdentifier];
  if (result)
  {
    v89 = result;
    v22, v82, v83, v84, v85, v86, v87, v88, v114, v115;
    v14, v90, v91, v92, v93, v94, v95, v96, v114, v115;
    sub_22B7DB6A8();

    v97 = v115;
    sub_22B7DA9B8();
    v98 = sub_22B7DA9D8();

    v99 = *(v116 + 8);
    v99(v97, v6);
    v99(v12, v6);
    v79 = v98 ^ 1;
    return (v79 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_22B7C0810(uint64_t a1, void *a2, uint64_t a3, void *aBlock)
{
  v4[2] = a2;
  v4[3] = _Block_copy(aBlock);
  sub_22B4D01A0(0, &qword_28141F288, 0x277D1AA70);
  v7 = sub_22B7DB918();
  v4[4] = v7;
  v8 = a2;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_22B7C091C;

  return sub_22B7C2DD4(v7, v8, a3);
}

uint64_t sub_22B7C091C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;

  v2, v6, v7, v8, v9, v10, v11, v12, v16, v17;

  if (v3)
  {
    v13 = *(v1 + 24);
    v13[2](v13);
    _Block_release(v13);
  }

  v14 = *(v5 + 8);

  return v14();
}

IMDMessageTranslator __swiftcall IMDMessageTranslator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

BOOL IMMessagePartDescriptor.hasAttachment.getter()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [v0 messagePartBody];
  v2 = [v1 length];

  v3 = [v0 messagePartBody];
  v4 = [v3 attribute:*MEMORY[0x277D19100] atIndex:0 effectiveRange:&v7];

  if (v4)
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  v5 = *(&v9 + 1) != 0;
  sub_22B4D0D64(v10, &unk_27D8CCDC0, &qword_22B7F9580);
  return v5;
}

uint64_t sub_22B7C0C64()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B6F12E8;

  return sub_22B7C0810(v2, v3, v4, v5);
}

uint64_t sub_22B7C0D2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_22B6F12E8;

  return v6();
}

uint64_t sub_22B7C0E14(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_22B6F0D94;

  return v7();
}

uint64_t sub_22B7C0EFC(uint64_t a1, IMDScheduledMessageCoordinator *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  sub_22B724CA8(a3, &v30 - v10);
  v12 = sub_22B7DBA58();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_22B4D0D64(v11, &qword_27D8CD5C0, &qword_22B7F8CF0);
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

  sub_22B7DBA48();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_22B7DB9C8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_22B7DB6F8() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v34[0] = 0;
      v34[1] = 0;
      v19 = v34;
      v34[2] = v14;
      v34[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v31 = 7;
    v32 = v19;
    v33 = v17;
    v21 = swift_task_create();

    sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);
    a2, v22, v23, v24, v25, v26, v27, v28, v30, v31;

    return v21;
  }

LABEL_8:
  sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v34[4] = 0;
    v34[5] = 0;
    v34[6] = v14;
    v34[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_22B7C11E8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B7C5EC0;

  return v6(a1);
}

uint64_t sub_22B7C12E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F12E8;

  return sub_22B7C11E8(a1, v4);
}

unint64_t sub_22B7C1398(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22B7DB838();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x231895180](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_22B7C1414(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_22B7C1564(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_22B7DC2D8();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_22B7DC328() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_22B7C1564(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_22B7C15FC(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_22B7C1670(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_22B7C15FC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_22B7C1398(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22B7C1670(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_22B7DC328();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_22B7C1794(unint64_t a1)
{
  v1 = a1;
  v71 = *MEMORY[0x277D85DE8];
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      v4 = v1 & 0xC000000000000001;
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
      v6 = v1 + 32;
      v65 = *MEMORY[0x277D19100];
      v7 = &selRef__unsignedIntegerFromString_;
      v8 = &selRef_handleNotifyRecipientCommandWithPipeline_input_completionBlock_;
      v60 = v1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v4)
        {
          v9 = MEMORY[0x231895C80](v3, v1);
        }

        else
        {
          if (v3 >= *(v5 + 16))
          {
            goto LABEL_42;
          }

          v9 = *(v6 + 8 * v3);
        }

        v10 = v9;
        if (__OFADD__(v3++, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (![v9 v7[362]] && (objc_msgSend(v10, v8[434]) & 1) == 0 && (objc_msgSend(v10, sel_isSystemMessage) & 1) == 0 && !objc_msgSend(v10, sel_isLocatingMessage) && (objc_msgSend(v10, sel_isSticker) & 1) == 0)
        {
          v12 = [v10 balloonBundleID];
          if (!v12)
          {
            goto LABEL_19;
          }

          v13 = v12;
          v14 = sub_22B7DB6A8();
          v16 = v15;

          v8 = &selRef_handleNotifyRecipientCommandWithPipeline_input_completionBlock_;
          v16, v17, v18, v19, v20, v21, v22, v23, v57, v58;
          v24 = (v16 >> 56) & 0xF;
          v25 = v14 & 0xFFFFFFFFFFFFLL;
          v5 = v60;
          if ((v16 & 0x2000000000000000) == 0)
          {
            v24 = v25;
          }

          if (!v24)
          {
LABEL_19:
            if (([v10 isTypingMessage] & 1) == 0)
            {
              break;
            }
          }
        }

LABEL_5:

        if (v3 == v2)
        {
          return 0;
        }
      }

      v26 = [v10 messageParts];
      if (!v26)
      {
LABEL_40:

        return 1;
      }

      v27 = v26;
      sub_22B4D01A0(0, &qword_28141F130, 0x277D1AA80);
      v28 = sub_22B7DB918();

      v64 = v28;
      v58 = v4;
      v59 = v1;
      if (!(v28 >> 62))
      {
        break;
      }

      v1 = sub_22B7DC1C8();
      v8 = &selRef_handleNotifyRecipientCommandWithPipeline_input_completionBlock_;
      if (!v1)
      {
        goto LABEL_4;
      }

LABEL_23:
      v36 = 0;
      v62 = v28 & 0xFFFFFFFFFFFFFF8;
      v63 = v28 & 0xC000000000000001;
      v61 = v1;
      while (1)
      {
        if (v63)
        {
          v37 = MEMORY[0x231895C80](v36, v28);
        }

        else
        {
          if (v36 >= *(v62 + 16))
          {
            goto LABEL_44;
          }

          v37 = *(v28 + 8 * v36 + 32);
        }

        v38 = v37;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        v66 = v36 + 1;
        v39 = [v37 messagePartBody];
        v40 = [v39 length];

        v67[0] = 0;
        v67[1] = v40;
        v41 = [v38 messagePartBody];
        v42 = [v41 attribute:v65 atIndex:0 effectiveRange:v67];

        if (v42)
        {
          sub_22B7DC118();
          swift_unknownObjectRelease();
        }

        else
        {
          v68 = 0u;
          v69 = 0u;
        }

        v70[0] = v68;
        v70[1] = v69;
        v43 = *(&v69 + 1);
        sub_22B4D0D64(v70, &unk_27D8CCDC0, &qword_22B7F9580);
        if (v43)
        {
        }

        else
        {
          sub_22B7DAC78();
          sub_22B7DAC58();
          v44 = [v38 messagePartBody];
          v45 = [v44 string];

          sub_22B7DB6A8();
          v47 = v46;

          LOBYTE(v44) = sub_22B7DAC18();

          v48 = v47;
          v5 = v60;
          v48, v49, v50, v51, v52, v53, v54, v55, v57, v58;

          if ((v44 & 1) == 0)
          {
            v64, v29, v30, v31, v32, v33, v34, v35, v57, v58;
            goto LABEL_40;
          }
        }

        ++v36;
        v1 = v61;
        v7 = &selRef__unsignedIntegerFromString_;
        v8 = &selRef_handleNotifyRecipientCommandWithPipeline_input_completionBlock_;
        v28 = v64;
        if (v66 == v61)
        {
          goto LABEL_4;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      v2 = sub_22B7DC1C8();
      if (!v2)
      {
        return 0;
      }
    }

    v1 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = &selRef_handleNotifyRecipientCommandWithPipeline_input_completionBlock_;
    if (v1)
    {
      goto LABEL_23;
    }

LABEL_4:
    v28, v29, v30, v31, v32, v33, v34, v35, v57, v58;
    v4 = v58;
    v1 = v59;
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_22B7C1BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 264) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_22B7DB2B8();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  sub_22B6F0AD4(&qword_27D8CFB60, &qword_22B7FE2A8);
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  v8 = sub_22B7DAA08();
  *(v6 + 104) = v8;
  *(v6 + 112) = *(v8 - 8);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7C1DD4, 0, 0);
}

uint64_t sub_22B7C1DD4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 264);

  sub_22B7DA9B8();

  sub_22B7DA9B8();
  sub_22B7DAC78();
  *(v0 + 192) = sub_22B7DAC58();
  v4 = *(v1 + 16);
  v1 += 16;
  v3 = v4;
  v5 = (v1 + 40);
  *(v0 + 200) = v4;
  *(v0 + 208) = v1 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6 = *(v0 + 176);
  v7 = *(v0 + 104);
  if (v2 == 1)
  {
    v8 = *(v0 + 96);
    v3(v8, v6, *(v0 + 104));
    (*v5)(v8, 0, 1, v7);
    v24 = (*MEMORY[0x277D19590] + MEMORY[0x277D19590]);
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    *v9 = v0;
    v9[1] = sub_22B7C2040;
    v10 = *(v0 + 184);
    v11 = *(v0 + 160);
    v12 = *(v0 + 96);
    v13 = *(v0 + 16);

    return v24(v11, v13, v10, v12);
  }

  else
  {
    v15 = *(v0 + 88);
    v3(v15, v6, *(v0 + 104));
    (*v5)(v15, 0, 1, v7);
    v16 = sub_22B7DAC68();
    v18 = v17;
    v25 = (*MEMORY[0x277D19588] + MEMORY[0x277D19588]);
    v19 = swift_task_alloc();
    *(v0 + 240) = v19;
    *v19 = v0;
    v19[1] = sub_22B7C25BC;
    v20 = *(v0 + 184);
    v21 = *(v0 + 136);
    v22 = *(v0 + 88);
    v23 = *(v0 + 16);

    return v25(v21, v23, v20, v22, v16, v18);
  }
}

uint64_t sub_22B7C2040(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  sub_22B4D0D64(v4, &qword_27D8CFB60, &qword_22B7FE2A8);
  if (v1)
  {
    v5 = sub_22B7C2B3C;
  }

  else
  {
    v5 = sub_22B7C2184;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B7C2184()
{
  v83 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 104);
  (*(*(v0 + 112) + 32))(v3, *(v0 + 160), v6);
  sub_22B7DB288();
  sub_22B7DB2A8();
  v1(v4, v2, v6);
  v1(v5, v3, v6);
  v7 = sub_22B7DB298();
  v8 = sub_22B7DBC88();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v14 = *(v0 + 80);
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  if (v9)
  {
    v77 = v8;
    v17 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v82 = v78;
    *v17 = 136315394;
    log = v7;
    v18 = sub_22B7DA9C8();
    v79 = v15;
    v20 = v19;
    v21 = *(v12 + 8);
    v21(v10, v13);
    v22 = sub_22B4CFAAC(v18, v20, &v82);
    v20, v23, v24, v25, v26, v27, v28, v29, v70, v73;
    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v30 = sub_22B7DA9C8();
    v32 = v31;
    v81 = v21;
    v21(v11, v13);
    v33 = sub_22B4CFAAC(v30, v32, &v82);
    v32, v34, v35, v36, v37, v38, v39, v40, v71, v74;
    *(v17 + 14) = v33;
    _os_log_impl(&dword_22B4CC000, log, v77, "Incoming message was translated from %s to %s.", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v78, -1, -1);
    MEMORY[0x231898D60](v17, -1, -1);

    (*(v16 + 8))(v14, v79);
  }

  else
  {

    v41 = *(v12 + 8);
    v41(v11, v13);
    v81 = v41;
    v41(v10, v13);
    (*(v16 + 8))(v14, v15);
  }

  v42 = *(v0 + 224);
  sub_22B7DA9C8();
  v44 = v43;
  sub_22B7DA9C8();
  v46 = v45;
  v47 = objc_allocWithZone(MEMORY[0x277D1ACB0]);
  v48 = sub_22B7DB678();
  v44, v49, v50, v51, v52, v53, v54, v55, v70, v73;
  v56 = sub_22B7DB678();
  v46, v57, v58, v59, v60, v61, v62, v63, v72, v75;
  v80 = [v47 initWithSourceLanguage:v48 translationLanguage:v56 translatedText:v42];

  v65 = *(v0 + 176);
  v64 = *(v0 + 184);
  v66 = *(v0 + 168);
  v67 = *(v0 + 104);

  v81(v66, v67);
  v81(v65, v67);
  v81(v64, v67);

  v68 = *(v0 + 8);

  return v68(v80);
}

uint64_t sub_22B7C25BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  sub_22B4D0D64(v4, &qword_27D8CFB60, &qword_22B7FE2A8);
  if (v1)
  {
    v5 = sub_22B7C2C88;
  }

  else
  {
    v5 = sub_22B7C2700;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B7C2700()
{
  v83 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 128);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  (*(*(v0 + 112) + 32))(v3, *(v0 + 136), v6);
  sub_22B7DB288();
  sub_22B7DB2A8();
  v1(v4, v3, v6);
  v1(v5, v2, v6);
  v7 = sub_22B7DB298();
  v8 = sub_22B7DBC88();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  v16 = *(v0 + 56);
  if (v9)
  {
    v77 = v8;
    v17 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v82 = v78;
    *v17 = 136315394;
    log = v7;
    v18 = sub_22B7DA9C8();
    v79 = v16;
    v20 = v19;
    v21 = *(v12 + 8);
    v21(v10, v13);
    v22 = sub_22B4CFAAC(v18, v20, &v82);
    v20, v23, v24, v25, v26, v27, v28, v29, v70, v73;
    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v30 = sub_22B7DA9C8();
    v32 = v31;
    v81 = v21;
    v21(v11, v13);
    v33 = sub_22B4CFAAC(v30, v32, &v82);
    v32, v34, v35, v36, v37, v38, v39, v40, v71, v74;
    *(v17 + 14) = v33;
    _os_log_impl(&dword_22B4CC000, log, v77, "Outgoing message was translated from %s to %s.", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v78, -1, -1);
    MEMORY[0x231898D60](v17, -1, -1);

    (*(v15 + 8))(v14, v79);
  }

  else
  {

    v41 = *(v12 + 8);
    v41(v11, v13);
    v81 = v41;
    v41(v10, v13);
    (*(v15 + 8))(v14, v16);
  }

  v42 = *(v0 + 248);
  sub_22B7DA9C8();
  v44 = v43;
  sub_22B7DA9C8();
  v46 = v45;
  v47 = objc_allocWithZone(MEMORY[0x277D1ACB0]);
  v48 = sub_22B7DB678();
  v44, v49, v50, v51, v52, v53, v54, v55, v70, v73;
  v56 = sub_22B7DB678();
  v46, v57, v58, v59, v60, v61, v62, v63, v72, v75;
  v80 = [v47 initWithSourceLanguage:v48 translationLanguage:v56 translatedText:v42];

  v65 = *(v0 + 176);
  v64 = *(v0 + 184);
  v66 = *(v0 + 168);
  v67 = *(v0 + 104);

  v81(v66, v67);
  v81(v65, v67);
  v81(v64, v67);

  v68 = *(v0 + 8);

  return v68(v80);
}

uint64_t sub_22B7C2B3C()
{
  v1 = v0[23];
  v2 = v0[22];
  v4 = v0[13];
  v3 = v0[14];

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22B7C2C88()
{
  v1 = v0[23];
  v2 = v0[22];
  v4 = v0[13];
  v3 = v0[14];

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22B7C2DD4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 368) = a3;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  v4 = sub_22B7DAA08();
  *(v3 + 128) = v4;
  *(v3 + 136) = *(v4 - 8);
  *(v3 + 144) = swift_task_alloc();
  v5 = sub_22B7DB2B8();
  *(v3 + 152) = v5;
  *(v3 + 160) = *(v5 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7C2F50, 0, 0);
}

uint64_t sub_22B7C2F50(uint64_t a1)
{
  v83 = v1;
  v82[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 112);
  sub_22B7DB288();
  sub_22B7DB2A8();

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  v2, v5, v6, v7, v8, v9, v10, v11, v71, v74;
  if (os_log_type_enabled(v3, v4))
  {
    v12 = *(v1 + 112);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v82[0] = v14;
    *v13 = 136315138;
    if (v12 >> 62)
    {
      v15 = sub_22B7DC1C8();
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = MEMORY[0x277D84F90];
    v79 = v4;
    v77 = v14;
    buf = v13;
    if (v15)
    {
      v81 = MEMORY[0x277D84F90];
      sub_22B7AB8E4(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        __break(1u);
      }

      v75 = v3;
      v17 = 0;
      v16 = v81;
      v80 = *(v1 + 112) + 32;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x231895C80](v17, *(v1 + 112));
        }

        else
        {
          v18 = *(v80 + 8 * v17);
        }

        v19 = v18;
        v20 = [v18 guid];
        if (v20)
        {
          v21 = v20;
          v22 = sub_22B7DB6A8();
          v24 = v23;
        }

        else
        {

          v22 = 0;
          v24 = 0;
        }

        v26 = *(v81 + 16);
        v25 = *(v81 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_22B7AB8E4((v25 > 1), v26 + 1, 1);
        }

        ++v17;
        *(v81 + 16) = v26 + 1;
        v27 = v81 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
      }

      while (v15 != v17);
    }

    v32 = *(v1 + 200);
    v34 = *(v1 + 152);
    v33 = *(v1 + 160);
    v35 = sub_22B6F0AD4(&qword_27D8CD7B0, &qword_22B7FBB10);
    v36 = MEMORY[0x2318952A0](v16, v35);
    v38 = v37;
    v16, v37, v39, v40, v41, v42, v43, v44, v72, v75;
    v45 = sub_22B4CFAAC(v36, v38, v82);
    v38, v46, v47, v48, v49, v50, v51, v52, v73, v76;
    *(buf + 4) = v45;
    _os_log_impl(&dword_22B4CC000, v3, v79, "Kicking off translation for message items: %s", buf, 0xCu);
    sub_22B4CFB78(v77);
    MEMORY[0x231898D60](v77, -1, -1);
    MEMORY[0x231898D60](buf, -1, -1);

    v31 = *(v33 + 8);
    v31(v32, v34);
  }

  else
  {
    v28 = *(v1 + 200);
    v30 = *(v1 + 152);
    v29 = *(v1 + 160);

    v31 = *(v29 + 8);
    v31(v28, v30);
  }

  *(v1 + 208) = v31;
  v53 = [*(v1 + 120) translationLanguageIdentifier];
  if (v53)
  {
    v54 = *(v1 + 120);
    v55 = v53;
    v56 = sub_22B7DB6A8();
    v58 = v57;

    *(v1 + 216) = v56;
    *(v1 + 224) = v58;
    v59 = [v54 userTranslationLanguageIdentifier];
    if (v59)
    {
      v60 = v59;
      v61 = sub_22B7DB6A8();
      v63 = v62;
    }

    else
    {
      v67 = *(v1 + 136);
      v66 = *(v1 + 144);
      v68 = *(v1 + 128);
      sub_22B7DAC78();
      sub_22B7DAC28();
      v61 = sub_22B7DA9C8();
      v63 = v69;
      (*(v67 + 8))(v66, v68);
    }

    *(v1 + 232) = v63;
    *(v1 + 240) = v61;
    v70 = swift_task_alloc();
    *(v1 + 248) = v70;
    *v70 = v1;
    v70[1] = sub_22B7C345C;
    v85 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200600]();
  }

  else
  {

    v64 = *(v1 + 8);

    return v64();
  }
}

uint64_t sub_22B7C345C()
{

  return MEMORY[0x2822009F8](sub_22B7C3584, 0, 0);
}

void sub_22B7C3584(uint64_t a1)
{
  sub_22B7DB288();
  sub_22B7DB2A8();
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Translation observation complete. Starting translation... ", v5, 2u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v6 = v1[26];
  v7 = v1[24];
  v8 = v1[19];
  v9 = v1[14];

  (v6)(v7, v8);
  if (v9 >> 62)
  {
    goto LABEL_101;
  }

  v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v1[32] = v17;
  if (!v17)
  {
LABEL_102:
    v149 = v1[29];
    v1[28], v10, v11, v12, v13, v14, v15, v16, v158, v160;
    v149, v150, v151, v152, v153, v154, v155, v156, v159, v162;

    v157 = v1[1];

    v157();
    return;
  }

LABEL_5:
  v18 = 0;
  v1[33] = *MEMORY[0x277D19100];
  v169 = v1;
  while (1)
  {
    v20 = v1[14];
    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x231895C80](v18);
    }

    else
    {
      if (v18 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_57:
        v104 = 0;
        goto LABEL_60;
      }

      v21 = *(v20 + 8 * v18 + 32);
    }

    v22 = v21;
    v1[34] = v21;
    v1[35] = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if ([v21 associatedMessageType] || (objc_msgSend(v22, sel_isAudioMessage) & 1) != 0 || (objc_msgSend(v22, sel_isSystemMessage) & 1) != 0 || (objc_msgSend(v22, sel_isLocatingMessage) & 1) != 0 || (objc_msgSend(v22, sel_isSticker) & 1) != 0)
    {
      goto LABEL_23;
    }

    v23 = [v22 balloonBundleID];
    if (v23)
    {
      v24 = v23;
      v8 = sub_22B7DB6A8();
      v6 = v25;

      v6, v26, v27, v28, v29, v30, v31, v32, v158, v160;
      v33 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v33 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v33)
      {
        goto LABEL_23;
      }
    }

    if ([v22 isTypingMessage])
    {
LABEL_23:
      sub_22B7DB288();
      sub_22B7DB2A8();
      v34 = v22;
      v35 = sub_22B7DB298();
      v6 = sub_22B7DBCB8();
      if (os_log_type_enabled(v35, v6))
      {
        v8 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v1[12] = v36;
        *v8 = 136315138;
        v37 = [v34 guid];
        if (!v37)
        {
          goto LABEL_106;
        }

        v38 = v37;
        v39 = v1[20];
        v165 = v1[21];
        loga = v1[26];
        v163 = v1[19];

        v2 = (v39 + 8);
        v40 = sub_22B7DB6A8();
        v42 = v41;

        v43 = sub_22B4CFAAC(v40, v42, v169 + 12);
        v42, v44, v45, v46, v47, v48, v49, v50, v158, v160;
        *(v8 + 4) = v43;
        v1 = v169;
        _os_log_impl(&dword_22B4CC000, v35, v6, "Message item %s should not be translated.", v8, 0xCu);
        sub_22B4CFB78(v36);
        MEMORY[0x231898D60](v36, -1, -1);
        MEMORY[0x231898D60](v8, -1, -1);

        (loga)(v165, v163);
      }

      else
      {
        v6 = v1[26];
        v19 = v1[21];
        v8 = v1[19];

        (v6)(v19, v8);
      }
    }

    else
    {
      v51 = [v22 messageParts];
      if (v51)
      {
        v34 = v51;
        sub_22B4D01A0(0, &qword_28141F130, 0x277D1AA80);
        v52 = sub_22B7DB918();
        v1[36] = v52;

        if (v52 >> 62)
        {
          v103 = sub_22B7DC1C8();
          if (v103 < 0)
          {
            __break(1u);
LABEL_106:

            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
          }

          v1 = v169;
          v169[37] = v103;
          if (v103)
          {
LABEL_29:
            v18 = 0;
            do
            {
              v61 = v1[36];
              if ((v61 & 0xC000000000000001) != 0)
              {
                v62 = MEMORY[0x231895C80](v18);
              }

              else
              {
                if (v18 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
LABEL_99:
                  __break(1u);
LABEL_100:
                  __break(1u);
LABEL_101:
                  v148 = sub_22B7DC1C8();
                  v1[32] = v148;
                  if (!v148)
                  {
                    goto LABEL_102;
                  }

                  goto LABEL_5;
                }

                v62 = *(v61 + 8 * v18 + 32);
              }

              v2 = v62;
              v8 = v18 + 1;
              v1[38] = v62;
              v1[39] = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                goto LABEL_99;
              }

              if (v18 >= v1[37])
              {
                goto LABEL_100;
              }

              v63 = v1[33];
              v64 = [v62 messagePartBody];
              v65 = [v64 length];

              v1[10] = 0;
              v1[11] = v65;
              v6 = [v2 messagePartBody];
              v66 = [v6 attribute:v63 atIndex:0 effectiveRange:v1 + 10];

              if (v66)
              {
                sub_22B7DC118();
                swift_unknownObjectRelease();
              }

              else
              {
                *(v1 + 3) = 0u;
                *(v1 + 4) = 0u;
              }

              v67 = *(v1 + 4);
              *(v1 + 1) = *(v1 + 3);
              *(v1 + 2) = v67;
              v68 = v1[5];
              sub_22B4D0D64((v1 + 2), &unk_27D8CCDC0, &qword_22B7F9580);
              if (v68 || (sub_22B7DAC78(), sub_22B7DAC58(), v69 = [v2 messagePartBody], v70 = objc_msgSend(v69, sel_string), v69, sub_22B7DB6A8(), v72 = v71, v70, v6 = sub_22B7DAC18(), v72, v73, v74, v75, v76, v77, v78, v79, v158, v160, , (v6 & 1) != 0))
              {
              }

              else
              {
                if ((IMMessagePartDescriptor.shouldSkipTranslationDueToExistingTranslation(messageItem:chat:)(v1[34], v1[15]) & 1) == 0)
                {
                  goto LABEL_53;
                }

                v80 = v1[34];
                sub_22B7DB288();
                sub_22B7DB2A8();
                v81 = v80;
                v82 = sub_22B7DB298();
                v83 = sub_22B7DBC88();
                v84 = os_log_type_enabled(v82, v83);
                v85 = v1[34];
                if (v84)
                {
                  log = v82;
                  v86 = swift_slowAlloc();
                  v87 = swift_slowAlloc();
                  v1[13] = v87;
                  *v86 = 136315138;
                  v88 = [v85 guid];
                  v89 = v1[34];
                  if (!v88)
                  {
                    goto LABEL_111;
                  }

                  v90 = v88;
                  v164 = v1[23];
                  v166 = v1[26];
                  v161 = v1[19];

                  v91 = sub_22B7DB6A8();
                  v6 = v92;

                  v93 = sub_22B4CFAAC(v91, v6, v169 + 13);
                  v6, v94, v95, v96, v97, v98, v99, v100, v158, v161;
                  *(v86 + 4) = v93;
                  _os_log_impl(&dword_22B4CC000, log, v83, "Skip translation for message item %s, because translation already exists and configurations match", v86, 0xCu);
                  sub_22B4CFB78(v87);
                  MEMORY[0x231898D60](v87, -1, -1);
                  MEMORY[0x231898D60](v86, -1, -1);

                  v166(v164, v160);
                  v1 = v169;
                }

                else
                {
                  v101 = v1[26];
                  v6 = v1[23];
                  v102 = v169[19];

                  v1 = v169;
                  v101(v6, v102);
                }
              }

              ++v18;
            }

            while (v8 != v1[37]);
          }
        }

        else
        {
          v60 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v1[37] = v60;
          if (v60)
          {
            goto LABEL_29;
          }
        }

        v22 = v1[34];
        v1[36], v53, v54, v55, v56, v57, v58, v59, v158, v160;
      }
    }

    v18 = v1[35];
    if (v18 == v1[32])
    {
      goto LABEL_102;
    }
  }

  __break(1u);
LABEL_53:
  v6 = v1[36];
  if (v18 < 1)
  {
    goto LABEL_57;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v104 = MEMORY[0x231895C80](v18 - 1, v1[36]);
    v6 = v1[36];
  }

  else
  {
    if (v18 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_108;
    }

    v104 = *(v6 + 8 * v18 + 24);
  }

LABEL_60:
  v1[40] = v104;
  if (v6 >> 62)
  {
    v105 = sub_22B7DC1C8();
  }

  else
  {
    v105 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v89 = (v105 - 1);
  if (__OFSUB__(v105, 1))
  {
    goto LABEL_107;
  }

  if (v18 >= v89)
  {
    v108 = 0;
    goto LABEL_72;
  }

  v106 = v1[36];
  if ((v106 & 0xC000000000000001) != 0)
  {
    v107 = MEMORY[0x231895C80](v8);
    goto LABEL_71;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:

    __break(1u);
    return;
  }

  v89 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 >= v89)
  {
    goto LABEL_110;
  }

  v107 = *(v106 + 8 * v8 + 32);
LABEL_71:
  v108 = v107;
LABEL_72:
  v1[41] = v108;
  if (v104)
  {
    v109 = v104;
    if (IMMessagePartDescriptor.hasAttachment.getter())
    {

      v110 = 0;
    }

    else
    {
      sub_22B7DAC58();
      v112 = [v109 messagePartBody];
      v113 = [v112 string];

      sub_22B7DB6A8();
      v115 = v114;

      LOBYTE(v112) = sub_22B7DAC18();
      v1 = v169;
      v115, v116, v117, v118, v119, v120, v121, v122, v158, v160;

      v110 = v112 ^ 1;
    }

    v111 = v110 & 1;
  }

  else
  {
    v111 = 2;
  }

  if (v108)
  {
    v123 = v108;
    if (IMMessagePartDescriptor.hasAttachment.getter())
    {

      v124 = 0;
    }

    else
    {
      sub_22B7DAC58();
      v126 = [v123 messagePartBody];
      v127 = [v126 string];

      sub_22B7DB6A8();
      v129 = v128;

      LOBYTE(v126) = sub_22B7DAC18();
      v129, v130, v131, v132, v133, v134, v135, v136, v158, v160;

      v124 = v126 ^ 1;
    }

    v125 = v124 & 1;
  }

  else
  {
    v125 = 2;
  }

  if (v111 == 2 || (v111 & 1) == 0)
  {
    if (v125 != 2 && (v125 & 1) != 0)
    {
      v137 = [v2 messagePartBody];
      v138 = 1;
      goto LABEL_94;
    }

    v139 = [v2 messagePartBody];
  }

  else
  {
    if (v125 == 2 || (v125 & 1) == 0)
    {
      v137 = [v2 messagePartBody];
      v138 = 0;
    }

    else
    {
      v137 = [v2 messagePartBody];
      v138 = 2;
    }

LABEL_94:
    sub_22B7BF744(v138);
    v139 = v140;
  }

  v1[42] = v139;
  v141 = v139;
  v142 = swift_task_alloc();
  v1[43] = v142;
  *v142 = v1;
  v142[1] = sub_22B7C421C;
  v144 = v1[29];
  v143 = v1[30];
  v145 = v1[27];
  v146 = v1[28];
  v147 = *(v1 + 368);

  sub_22B7C1BFC(v141, v145, v146, v143, v144, v147);
}

uint64_t sub_22B7C421C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = sub_22B7C4F54;
  }

  else
  {

    *(v4 + 360) = a1;
    v5 = sub_22B7C4374;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B7C4374()
{
  v1 = *(v0 + 360);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 320);
  v5 = *(v0 + 304);
  [*(v0 + 272) addTranslation:v1 forMessagePart:{objc_msgSend(v5, sel_messagePartIndex)}];

  v13 = *(v0 + 312);
  if (v13 == *(v0 + 296))
  {
LABEL_21:
    while (1)
    {
      v62 = *(v0 + 272);
      *(v0 + 288), v6, v7, v8, v9, v10, v11, v12, v157, v160;
      do
      {

        while (1)
        {
          v13 = *(v0 + 280);
          if (v13 == *(v0 + 256))
          {
            goto LABEL_50;
          }

          v66 = *(v0 + 112);
          if ((v66 & 0xC000000000000001) != 0)
          {
            v67 = MEMORY[0x231895C80](*(v0 + 280));
          }

          else
          {
            if (v13 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }

            v67 = *(v66 + 8 * v13 + 32);
          }

          v62 = v67;
          *(v0 + 272) = v67;
          *(v0 + 280) = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
            goto LABEL_98;
          }

          if (![v67 associatedMessageType] && (objc_msgSend(v62, sel_isAudioMessage) & 1) == 0 && (objc_msgSend(v62, sel_isSystemMessage) & 1) == 0 && (objc_msgSend(v62, sel_isLocatingMessage) & 1) == 0 && (objc_msgSend(v62, sel_isSticker) & 1) == 0)
          {
            v68 = [v62 balloonBundleID];
            if (!v68)
            {
              goto LABEL_39;
            }

            v69 = v68;
            v70 = sub_22B7DB6A8();
            v72 = v71;

            v72, v73, v74, v75, v76, v77, v78, v79, v157, v160;
            v80 = (v72 >> 56) & 0xF;
            if ((v72 & 0x2000000000000000) == 0)
            {
              v80 = v70 & 0xFFFFFFFFFFFFLL;
            }

            if (!v80)
            {
LABEL_39:
              if (([v62 isTypingMessage] & 1) == 0)
              {
                break;
              }
            }
          }

          sub_22B7DB288();
          sub_22B7DB2A8();
          v13 = v62;
          v81 = sub_22B7DB298();
          v82 = sub_22B7DBCB8();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            *(v0 + 96) = v84;
            *v83 = 136315138;
            v85 = [v13 guid];
            if (!v85)
            {
              goto LABEL_101;
            }

            v86 = v85;
            v166 = *(v0 + 168);
            loga = *(v0 + 208);
            v164 = *(v0 + 152);

            v87 = sub_22B7DB6A8();
            v89 = v88;

            v90 = sub_22B4CFAAC(v87, v89, (v0 + 96));
            v89, v91, v92, v93, v94, v95, v96, v97, v157, v160;
            *(v83 + 4) = v90;
            _os_log_impl(&dword_22B4CC000, v81, v82, "Message item %s should not be translated.", v83, 0xCu);
            sub_22B4CFB78(v84);
            MEMORY[0x231898D60](v84, -1, -1);
            MEMORY[0x231898D60](v83, -1, -1);

            (loga)(v166, v164);
          }

          else
          {
            v63 = *(v0 + 208);
            v64 = *(v0 + 168);
            v65 = *(v0 + 152);

            v63(v64, v65);
          }
        }

        v98 = [v62 messageParts];
      }

      while (!v98);
      v99 = v98;
      sub_22B4D01A0(0, &qword_28141F130, 0x277D1AA80);
      v100 = sub_22B7DB918();
      *(v0 + 288) = v100;

      if (v100 >> 62)
      {
        break;
      }

      v101 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_46:
      v13 = 0;
      *(v0 + 296) = v101;
      if (v101)
      {
        goto LABEL_5;
      }
    }

    v101 = sub_22B7DC1C8();
    if ((v101 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

    __break(1u);
LABEL_50:
    v102 = *(v0 + 232);
    *(v0 + 224), v6, v7, v8, v9, v10, v11, v12, v157, v160;
    v102, v103, v104, v105, v106, v107, v108, v109, v159, v162;

    v110 = *(v0 + 8);

    return v110();
  }

  while (1)
  {
LABEL_5:
    v14 = *(v0 + 288);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x231895C80](v13);
    }

    else
    {
      if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v15 = *(v14 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v13 + 1;
    *(v0 + 304) = v15;
    *(v0 + 312) = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_96;
    }

    if (v13 >= *(v0 + 296))
    {
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v18 = *(v0 + 264);
    v19 = [v15 messagePartBody];
    v20 = [v19 length];

    *(v0 + 80) = 0;
    *(v0 + 88) = v20;
    v21 = [v16 messagePartBody];
    v22 = [v21 attribute:v18 atIndex:0 effectiveRange:v0 + 80];

    if (v22)
    {
      sub_22B7DC118();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
    }

    v23 = *(v0 + 64);
    *(v0 + 16) = *(v0 + 48);
    *(v0 + 32) = v23;
    v24 = *(v0 + 40);
    sub_22B4D0D64(v0 + 16, &unk_27D8CCDC0, &qword_22B7F9580);
    if (v24 || (sub_22B7DAC78(), sub_22B7DAC58(), v25 = [v16 messagePartBody], v26 = objc_msgSend(v25, sel_string), v25, sub_22B7DB6A8(), v28 = v27, v26, LOBYTE(v25) = sub_22B7DAC18(), v28, v29, v30, v31, v32, v33, v34, v35, v157, v160, , (v25 & 1) != 0))
    {

      goto LABEL_4;
    }

    if ((IMMessagePartDescriptor.shouldSkipTranslationDueToExistingTranslation(messageItem:chat:)(*(v0 + 272), *(v0 + 120)) & 1) == 0)
    {
      break;
    }

    v36 = *(v0 + 272);
    sub_22B7DB288();
    sub_22B7DB2A8();
    v37 = v36;
    v38 = sub_22B7DB298();
    v39 = sub_22B7DBC88();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 272);
    if (v40)
    {
      log = v38;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *(v0 + 104) = v43;
      *v42 = 136315138;
      v44 = [v41 guid];
      v45 = *(v0 + 272);
      if (!v44)
      {
        goto LABEL_105;
      }

      v46 = v44;
      v163 = *(v0 + 184);
      v165 = *(v0 + 208);
      v47 = *(v0 + 160);
      v161 = *(v0 + 152);

      v158 = (v47 + 8);
      v48 = sub_22B7DB6A8();
      v50 = v49;

      v51 = sub_22B4CFAAC(v48, v50, (v0 + 104));
      v50, v52, v53, v54, v55, v56, v57, v58, v158, v161;
      *(v42 + 4) = v51;
      _os_log_impl(&dword_22B4CC000, log, v39, "Skip translation for message item %s, because translation already exists and configurations match", v42, 0xCu);
      sub_22B4CFB78(v43);
      MEMORY[0x231898D60](v43, -1, -1);
      MEMORY[0x231898D60](v42, -1, -1);

      v165(v163, v160);
    }

    else
    {
      v59 = *(v0 + 208);
      v60 = *(v0 + 184);
      v61 = *(v0 + 152);

      v59(v60, v61);
    }

LABEL_4:
    ++v13;
    if (v17 == *(v0 + 296))
    {
      goto LABEL_21;
    }
  }

  v112 = *(v0 + 288);
  if (v13 < 1)
  {
    v113 = 0;
    goto LABEL_59;
  }

  if ((v112 & 0xC000000000000001) != 0)
  {
    v113 = MEMORY[0x231895C80](v13 - 1, *(v0 + 288));
    v112 = *(v0 + 288);
    goto LABEL_59;
  }

  v45 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13 > v45)
  {
    goto LABEL_102;
  }

  v113 = *(v112 + 8 * v13 + 24);
LABEL_59:
  *(v0 + 320) = v113;
  if (v112 >> 62)
  {
    v114 = sub_22B7DC1C8();
  }

  else
  {
    v114 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = (v114 - 1);
  if (__OFSUB__(v114, 1))
  {
LABEL_100:
    __break(1u);
LABEL_101:

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (v13 >= v45)
  {
    v117 = 0;
    *(v0 + 328) = 0;
    if (!v113)
    {
      goto LABEL_80;
    }

    goto LABEL_67;
  }

  v115 = *(v0 + 288);
  if ((v115 & 0xC000000000000001) != 0)
  {
    v116 = MEMORY[0x231895C80](v13 + 1);
    goto LABEL_79;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_103;
  }

  v45 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17 >= v45)
  {
LABEL_104:
    __break(1u);
LABEL_105:

    __break(1u);
  }

  v116 = *(v115 + 8 * v17 + 32);
LABEL_79:
  v117 = v116;
  *(v0 + 328) = v116;
  if (!v113)
  {
LABEL_80:
    v131 = 2;
    if (!v117)
    {
      goto LABEL_81;
    }

LABEL_71:
    v132 = v117;
    if (IMMessagePartDescriptor.hasAttachment.getter())
    {

      v133 = 0;
    }

    else
    {
      sub_22B7DAC58();
      v134 = [v132 messagePartBody];
      v135 = [v134 string];

      sub_22B7DB6A8();
      v137 = v136;

      LOBYTE(v134) = sub_22B7DAC18();
      v137, v138, v139, v140, v141, v142, v143, v144, v157, v160;

      v133 = v134 ^ 1;
    }

    v145 = v133 & 1;
    if (v131 == 2)
    {
      goto LABEL_86;
    }

LABEL_82:
    if ((v131 & 1) == 0)
    {
      goto LABEL_86;
    }

    if (v145 == 2 || (v145 & 1) == 0)
    {
      v146 = [v16 messagePartBody];
      v147 = 0;
    }

    else
    {
      v146 = [v16 messagePartBody];
      v147 = 2;
    }

LABEL_91:
    sub_22B7BF744(v147);
    v148 = v149;

    goto LABEL_92;
  }

LABEL_67:
  v118 = v113;
  if (IMMessagePartDescriptor.hasAttachment.getter())
  {

    v119 = 0;
  }

  else
  {
    sub_22B7DAC58();
    v120 = [v118 messagePartBody];
    v121 = [v120 string];

    sub_22B7DB6A8();
    v123 = v122;

    LOBYTE(v120) = sub_22B7DAC18();
    v123, v124, v125, v126, v127, v128, v129, v130, v157, v160;

    v119 = v120 ^ 1;
  }

  v131 = v119 & 1;
  if (v117)
  {
    goto LABEL_71;
  }

LABEL_81:
  v145 = 2;
  if (v131 != 2)
  {
    goto LABEL_82;
  }

LABEL_86:
  if (v145 != 2 && (v145 & 1) != 0)
  {
    v146 = [v16 messagePartBody];
    v147 = 1;
    goto LABEL_91;
  }

  v148 = [v16 messagePartBody];
LABEL_92:
  *(v0 + 336) = v148;
  v150 = v148;
  v151 = swift_task_alloc();
  *(v0 + 344) = v151;
  *v151 = v0;
  v151[1] = sub_22B7C421C;
  v153 = *(v0 + 232);
  v152 = *(v0 + 240);
  v154 = *(v0 + 216);
  v155 = *(v0 + 224);
  v156 = *(v0 + 368);

  return sub_22B7C1BFC(v150, v154, v155, v152, v153, v156);
}

uint64_t sub_22B7C4F54()
{
  v1 = *(v0 + 352);

  sub_22B7DB288();
  sub_22B7DB2A8();
  v2 = v1;
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC78();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 352);
  v7 = *(v0 + 328);
  v8 = *(v0 + 336);
  v9 = *(v0 + 320);
  v10 = *(v0 + 304);
  if (v5)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Message was not translated: %@", v11, 0xCu);
    sub_22B4D0D64(v12, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v12, -1, -1);
    MEMORY[0x231898D60](v11, -1, -1);

    v3 = v9;
  }

  else
  {
  }

  v15 = *(v0 + 208);
  v16 = *(v0 + 176);
  v17 = *(v0 + 152);

  v15(v16, v17);
  v25 = *(v0 + 312);
  if (v25 == *(v0 + 296))
  {
LABEL_24:
    while (1)
    {
      v74 = *(v0 + 272);
      *(v0 + 288), v18, v19, v20, v21, v22, v23, v24, v169, v172;
      do
      {

        while (1)
        {
          v25 = *(v0 + 280);
          if (v25 == *(v0 + 256))
          {
            goto LABEL_53;
          }

          v78 = *(v0 + 112);
          if ((v78 & 0xC000000000000001) != 0)
          {
            v79 = MEMORY[0x231895C80](*(v0 + 280));
          }

          else
          {
            if (v25 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_102;
            }

            v79 = *(v78 + 8 * v25 + 32);
          }

          v74 = v79;
          *(v0 + 272) = v79;
          *(v0 + 280) = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

          if (![v79 associatedMessageType] && (objc_msgSend(v74, sel_isAudioMessage) & 1) == 0 && (objc_msgSend(v74, sel_isSystemMessage) & 1) == 0 && (objc_msgSend(v74, sel_isLocatingMessage) & 1) == 0 && (objc_msgSend(v74, sel_isSticker) & 1) == 0)
          {
            v80 = [v74 balloonBundleID];
            if (!v80)
            {
              goto LABEL_42;
            }

            v81 = v80;
            v82 = sub_22B7DB6A8();
            v84 = v83;

            v84, v85, v86, v87, v88, v89, v90, v91, v169, v172;
            v92 = (v84 >> 56) & 0xF;
            if ((v84 & 0x2000000000000000) == 0)
            {
              v92 = v82 & 0xFFFFFFFFFFFFLL;
            }

            if (!v92)
            {
LABEL_42:
              if (([v74 isTypingMessage] & 1) == 0)
              {
                break;
              }
            }
          }

          sub_22B7DB288();
          sub_22B7DB2A8();
          v25 = v74;
          v93 = sub_22B7DB298();
          v94 = sub_22B7DBCB8();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            *(v0 + 96) = v96;
            *v95 = 136315138;
            v97 = [v25 guid];
            if (!v97)
            {
              goto LABEL_104;
            }

            v98 = v97;
            v178 = *(v0 + 168);
            loga = *(v0 + 208);
            v176 = *(v0 + 152);

            v99 = sub_22B7DB6A8();
            v101 = v100;

            v102 = sub_22B4CFAAC(v99, v101, (v0 + 96));
            v101, v103, v104, v105, v106, v107, v108, v109, v169, v172;
            *(v95 + 4) = v102;
            _os_log_impl(&dword_22B4CC000, v93, v94, "Message item %s should not be translated.", v95, 0xCu);
            sub_22B4CFB78(v96);
            MEMORY[0x231898D60](v96, -1, -1);
            MEMORY[0x231898D60](v95, -1, -1);

            (loga)(v178, v176);
          }

          else
          {
            v75 = *(v0 + 208);
            v76 = *(v0 + 168);
            v77 = *(v0 + 152);

            v75(v76, v77);
          }
        }

        v110 = [v74 messageParts];
      }

      while (!v110);
      v111 = v110;
      sub_22B4D01A0(0, &qword_28141F130, 0x277D1AA80);
      v112 = sub_22B7DB918();
      *(v0 + 288) = v112;

      if (v112 >> 62)
      {
        break;
      }

      v113 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_49:
      v25 = 0;
      *(v0 + 296) = v113;
      if (v113)
      {
        goto LABEL_8;
      }
    }

    v113 = sub_22B7DC1C8();
    if ((v113 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    __break(1u);
LABEL_53:
    v114 = *(v0 + 232);
    *(v0 + 224), v18, v19, v20, v21, v22, v23, v24, v169, v172;
    v114, v115, v116, v117, v118, v119, v120, v121, v171, v174;

    v122 = *(v0 + 8);

    return v122();
  }

  while (1)
  {
LABEL_8:
    v26 = *(v0 + 288);
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x231895C80](v25);
    }

    else
    {
      if (v25 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }

      v27 = *(v26 + 8 * v25 + 32);
    }

    v28 = v27;
    v29 = v25 + 1;
    *(v0 + 304) = v27;
    *(v0 + 312) = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_99;
    }

    if (v25 >= *(v0 + 296))
    {
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v30 = *(v0 + 264);
    v31 = [v27 messagePartBody];
    v32 = [v31 length];

    *(v0 + 80) = 0;
    *(v0 + 88) = v32;
    v33 = [v28 messagePartBody];
    v34 = [v33 attribute:v30 atIndex:0 effectiveRange:v0 + 80];

    if (v34)
    {
      sub_22B7DC118();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
    }

    v35 = *(v0 + 64);
    *(v0 + 16) = *(v0 + 48);
    *(v0 + 32) = v35;
    v36 = *(v0 + 40);
    sub_22B4D0D64(v0 + 16, &unk_27D8CCDC0, &qword_22B7F9580);
    if (v36 || (sub_22B7DAC78(), sub_22B7DAC58(), v37 = [v28 messagePartBody], v38 = objc_msgSend(v37, sel_string), v37, sub_22B7DB6A8(), v40 = v39, v38, LOBYTE(v37) = sub_22B7DAC18(), v40, v41, v42, v43, v44, v45, v46, v47, v169, v172, , (v37 & 1) != 0))
    {

      goto LABEL_7;
    }

    if ((IMMessagePartDescriptor.shouldSkipTranslationDueToExistingTranslation(messageItem:chat:)(*(v0 + 272), *(v0 + 120)) & 1) == 0)
    {
      break;
    }

    v48 = *(v0 + 272);
    sub_22B7DB288();
    sub_22B7DB2A8();
    v49 = v48;
    v50 = sub_22B7DB298();
    v51 = sub_22B7DBC88();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 272);
    if (v52)
    {
      log = v50;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *(v0 + 104) = v55;
      *v54 = 136315138;
      v56 = [v53 guid];
      v57 = *(v0 + 272);
      if (!v56)
      {
        goto LABEL_108;
      }

      v58 = v56;
      v175 = *(v0 + 184);
      v177 = *(v0 + 208);
      v59 = *(v0 + 160);
      v173 = *(v0 + 152);

      v170 = (v59 + 8);
      v60 = sub_22B7DB6A8();
      v62 = v61;

      v63 = sub_22B4CFAAC(v60, v62, (v0 + 104));
      v62, v64, v65, v66, v67, v68, v69, v70, v170, v173;
      *(v54 + 4) = v63;
      _os_log_impl(&dword_22B4CC000, log, v51, "Skip translation for message item %s, because translation already exists and configurations match", v54, 0xCu);
      sub_22B4CFB78(v55);
      MEMORY[0x231898D60](v55, -1, -1);
      MEMORY[0x231898D60](v54, -1, -1);

      v177(v175, v172);
    }

    else
    {
      v71 = *(v0 + 208);
      v72 = *(v0 + 184);
      v73 = *(v0 + 152);

      v71(v72, v73);
    }

LABEL_7:
    ++v25;
    if (v29 == *(v0 + 296))
    {
      goto LABEL_24;
    }
  }

  v124 = *(v0 + 288);
  if (v25 < 1)
  {
    v125 = 0;
    goto LABEL_62;
  }

  if ((v124 & 0xC000000000000001) != 0)
  {
    v125 = MEMORY[0x231895C80](v25 - 1, *(v0 + 288));
    v124 = *(v0 + 288);
    goto LABEL_62;
  }

  v57 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25 > v57)
  {
    goto LABEL_105;
  }

  v125 = *(v124 + 8 * v25 + 24);
LABEL_62:
  *(v0 + 320) = v125;
  if (v124 >> 62)
  {
    v126 = sub_22B7DC1C8();
  }

  else
  {
    v126 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = (v126 - 1);
  if (__OFSUB__(v126, 1))
  {
LABEL_103:
    __break(1u);
LABEL_104:

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v25 >= v57)
  {
    v129 = 0;
    *(v0 + 328) = 0;
    if (!v125)
    {
      goto LABEL_83;
    }

    goto LABEL_70;
  }

  v127 = *(v0 + 288);
  if ((v127 & 0xC000000000000001) != 0)
  {
    v128 = MEMORY[0x231895C80](v25 + 1);
    goto LABEL_82;
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_106;
  }

  v57 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29 >= v57)
  {
LABEL_107:
    __break(1u);
LABEL_108:

    __break(1u);
  }

  v128 = *(v127 + 8 * v29 + 32);
LABEL_82:
  v129 = v128;
  *(v0 + 328) = v128;
  if (!v125)
  {
LABEL_83:
    v143 = 2;
    if (!v129)
    {
      goto LABEL_84;
    }

LABEL_74:
    v144 = v129;
    if (IMMessagePartDescriptor.hasAttachment.getter())
    {

      v145 = 0;
    }

    else
    {
      sub_22B7DAC58();
      v146 = [v144 messagePartBody];
      v147 = [v146 string];

      sub_22B7DB6A8();
      v149 = v148;

      LOBYTE(v146) = sub_22B7DAC18();
      v149, v150, v151, v152, v153, v154, v155, v156, v169, v172;

      v145 = v146 ^ 1;
    }

    v157 = v145 & 1;
    if (v143 == 2)
    {
      goto LABEL_89;
    }

LABEL_85:
    if ((v143 & 1) == 0)
    {
      goto LABEL_89;
    }

    if (v157 == 2 || (v157 & 1) == 0)
    {
      v158 = [v28 messagePartBody];
      v159 = 0;
    }

    else
    {
      v158 = [v28 messagePartBody];
      v159 = 2;
    }

LABEL_94:
    sub_22B7BF744(v159);
    v160 = v161;

    goto LABEL_95;
  }

LABEL_70:
  v130 = v125;
  if (IMMessagePartDescriptor.hasAttachment.getter())
  {

    v131 = 0;
  }

  else
  {
    sub_22B7DAC58();
    v132 = [v130 messagePartBody];
    v133 = [v132 string];

    sub_22B7DB6A8();
    v135 = v134;

    LOBYTE(v132) = sub_22B7DAC18();
    v135, v136, v137, v138, v139, v140, v141, v142, v169, v172;

    v131 = v132 ^ 1;
  }

  v143 = v131 & 1;
  if (v129)
  {
    goto LABEL_74;
  }

LABEL_84:
  v157 = 2;
  if (v143 != 2)
  {
    goto LABEL_85;
  }

LABEL_89:
  if (v157 != 2 && (v157 & 1) != 0)
  {
    v158 = [v28 messagePartBody];
    v159 = 1;
    goto LABEL_94;
  }

  v160 = [v28 messagePartBody];
LABEL_95:
  *(v0 + 336) = v160;
  v162 = v160;
  v163 = swift_task_alloc();
  *(v0 + 344) = v163;
  *v163 = v0;
  v163[1] = sub_22B7C421C;
  v165 = *(v0 + 232);
  v164 = *(v0 + 240);
  v166 = *(v0 + 216);
  v167 = *(v0 + 224);
  v168 = *(v0 + 368);

  return sub_22B7C1BFC(v162, v166, v167, v164, v165, v168);
}

unint64_t sub_22B7C5C4C()
{
  result = qword_27D8CFB58;
  if (!qword_27D8CFB58)
  {
    sub_22B6FB8C4(&qword_27D8CFB50, &qword_22B7FE2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CFB58);
  }

  return result;
}

uint64_t sub_22B7C5CB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F12E8;

  return sub_22B7BFDE8();
}

uint64_t sub_22B7C5D5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F12E8;

  return sub_22B7C0270();
}

uint64_t sub_22B7C5E08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F0D94;

  return sub_22B782EC0(a1, v4);
}

uint64_t sub_22B7C5EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B6F0AD4(&qword_27D8CFB68, &qword_22B7FE2E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_22B7DBA58();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  v14 = sub_22B7C6A80();
  v15 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = v14;
  *(v16 + 4) = a2;
  *(v16 + 5) = a3;
  (*(v7 + 32))(&v16[v15], v9, v6);
  swift_retain_n();
  *(a2 + 208) = sub_22B77E3D4(0, 0, v12, &unk_22B7FE2F0, v16);
}

uint64_t sub_22B7C60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x2822009F8](sub_22B7C60F8, a4, 0);
}

uint64_t sub_22B7C60F8()
{
  v1 = *(v0[6] + 200);
  v0[9] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_22B7C6350;
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];

    return MEMORY[0x282200440](v0 + 2, v1, &_s11BatchResultVN, v3, v4);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[11] = Strong;
    if (Strong)
    {
      v6 = *(v0[6] + 184);
      ObjectType = swift_getObjectType();
      v13 = (*(v6 + 72) + **(v6 + 72));
      v8 = swift_task_alloc();
      v0[12] = v8;
      *v8 = v0;
      v8[1] = sub_22B7C6618;
      v9 = v0[6];

      return v13(v9, ObjectType, v6);
    }

    else
    {
      v10 = swift_task_alloc();
      v0[13] = v10;
      *v10 = v0;
      v10[1] = sub_22B7C678C;
      v11 = v0[7];

      return sub_22B726D90(v11);
    }
  }
}

uint64_t sub_22B7C6350()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_22B7C6460, v1, 0);
}

uint64_t sub_22B7C6460()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = *(v0[6] + 184);
    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 72) + **(v2 + 72));
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_22B7C6618;
    v5 = v0[6];

    return v9(v5, ObjectType, v2);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_22B7C678C;
    v8 = v0[7];

    return sub_22B726D90(v8);
  }
}

uint64_t sub_22B7C6618()
{
  v1 = *v0;
  v2 = *v0;

  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  *(v1 + 104) = v3;
  *v3 = v2;
  v3[1] = sub_22B7C678C;
  v4 = *(v1 + 56);

  return sub_22B726D90(v4);
}

uint64_t sub_22B7C678C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  *(v5 + 112) = a1;

  v7 = swift_task_alloc();
  *(v5 + 120) = v7;
  *v7 = v6;
  v7[1] = sub_22B7C68E8;

  return sub_22B7266A4(a1, a2);
}

uint64_t sub_22B7C68E8()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_22B7C69F8, v1, 0);
}

uint64_t sub_22B7C69F8()
{
  v0[5] = v0[14];
  sub_22B6F0AD4(&qword_27D8CFB68, &qword_22B7FE2E0);
  sub_22B7DB9E8();
  v1 = v0[1];

  return v1();
}

unint64_t sub_22B7C6A80()
{
  result = qword_27D8CEC80;
  if (!qword_27D8CEC80)
  {
    type metadata accessor for IMDPersistentTaskExecutor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEC80);
  }

  return result;
}

uint64_t sub_22B7C6AD8(uint64_t a1)
{
  v4 = *(sub_22B6F0AD4(&qword_27D8CFB68, &qword_22B7FE2E0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22B6F0D94;

  return sub_22B7C60D4(a1, v6, v7, v8, v9, v1 + v5);
}

id sub_22B7C6BE8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_22B7DB678();
  v5 = [v3 taskRequestForIdentifier_];

  return v5;
}

id sub_22B7C6C88(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22B7DB678();
  v7[0] = 0;
  v4 = [v2 cancelTaskRequestWithIdentifier:v3 error:v7];

  if (v4)
  {
    return v7[0];
  }

  v6 = v7[0];
  sub_22B7DA6F8();

  return swift_willThrow();
}

id sub_22B7C6D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = sub_22B7DB678();
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_22B74C9E0;
  v14[3] = &unk_283F20C48;
  v11 = _Block_copy(v14);

  v12 = [v9 registerForMessagesDeletionAwareTaskWithIdentifier:v10 usingQueue:a3 launchHandler:v11];

  _Block_release(v11);

  return v12;
}

id sub_22B7C6E54(uint64_t a1, SEL *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if ([v2 *a2])
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_22B7DA6F8();

  return swift_willThrow();
}

uint64_t sub_22B7C6EFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F0D94;

  return sub_22B73B5B4();
}

uint64_t sub_22B7C6F8C()
{
  sub_22B4CFB78((v0 + 136));
  sub_22B71CBE8(v0 + 176);

  sub_22B740788(*(v0 + 224), *(v0 + 232), *(v0 + 240), v1, v2, v3, v4, v5, vars0, vars8);
  *(v0 + 256), v6, v7, v8, v9, v10, v11, v12, vars0a, vars8a;
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22B7C6FF0()
{
  sub_22B7C6F8C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B7C7040()
{
  v1 = *v0;
  sub_22B7DC668();
  MEMORY[0x231895FF0](*(v1 + 120));
  MEMORY[0x231895FF0](*(v1 + 112));
  return sub_22B7DC6B8();
}

uint64_t sub_22B7C7094()
{
  v1 = *v0;
  MEMORY[0x231895FF0](*(*v0 + 120));
  return MEMORY[0x231895FF0](*(v1 + 112));
}

uint64_t sub_22B7C70D4(uint64_t a1)
{
  v2 = *v1;
  sub_22B7DC668();
  MEMORY[0x231895FF0](*(v2 + 120));
  MEMORY[0x231895FF0](*(v2 + 112));
  return sub_22B7DC6B8();
}

unint64_t sub_22B7C715C()
{
  result = qword_27D8CFB70;
  if (!qword_27D8CFB70)
  {
    type metadata accessor for IMDPersistentTaskExecutor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CFB70);
  }

  return result;
}

uint64_t sub_22B7C71B0(uint64_t a1, uint64_t a2)
{
  sub_22B7DC2E8();
  0xE000000000000000, v2, v3, v4, v5, v6, v7, v8, 0, 0xE000000000000000;
  v9 = sub_22B7DBF38();
  v11 = v10;
  MEMORY[0x231895140](v9);
  v11, v12, v13, v14, v15, v16, v17, v18, 0xD000000000000026, 0x800000022B810290;
  MEMORY[0x231895140](46, 0xE100000000000000);
  v19 = sub_22B7DBE78();
  v21 = v20;
  MEMORY[0x231895140](v19);
  v21, v22, v23, v24, v25, v26, v27, v28, v30, v32;
  return v31;
}

uint64_t dispatch thunk of ClientConnectionManaging.startAcceptingIncomingConnections()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F0D94;

  return v7(a1, a2);
}

uint64_t sub_22B7C7394()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_281422710);
  sub_22B4CFA74(v0, qword_281422710);
  return sub_22B7DB2A8();
}

uint64_t IntentClientConnectionRouteProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id IMDServiceReachabilityBaseDelegate.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_22B7C7C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_22B7DB678();
  v9 = sub_22B7DB678();
  v10 = [v6 isSMSEnabledForContext_];
  if ([a5 conversationWasDowngraded])
  {
    goto LABEL_10;
  }

  v11 = [a5 serviceOfLastMessage];
  if (!v11)
  {
    v24 = 0;
    goto LABEL_11;
  }

  v12 = v11;
  v13 = sub_22B7DB6A8();
  v15 = v14;

  if (v13 == 5459283 && v15 == 0xE300000000000000)
  {
    v15, v16, v17, v18, v19, v20, v21, v22, v34, v35;
LABEL_10:
    v24 = 1;
    goto LABEL_11;
  }

  v24 = sub_22B7DC518();
  v15, v25, v26, v27, v28, v29, v30, v31, v34, v35;
LABEL_11:
  v32 = [objc_opt_self() shouldDowngradeToRecipient:v8 fromSender:v9 ifCapableOfSMS:v10 withConversationDowngradeState:v24 & 1 andConversationHistoryState:{objc_msgSend(a5, sel_hasConversationHistory)}];

  return v32;
}

void sub_22B7C7E44(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 ctSubscriptionInfo];

  if (v3 && (v4 = sub_22B7DB678(), v5 = [v3 __im_subscriptionContextForForSimID_], v3, v4, v5) && (v6 = objc_msgSend(v5, sel_phoneNumber), v5, v6))
  {
    sub_22B7DB6A8();
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x277D18778]);
    v8 = sub_22B7DB678();
    v9 = [v7 initWithService_];

    if (v9)
    {
      v10 = sub_22B7DB678();
      v11 = [v9 accountMatchingSimIdentifier_];

      if (v11)
      {
        v12 = [v11 aliasStrings];

        if (v12)
        {
          v13 = sub_22B7DB918();

          if (*v13->messageStore)
          {

            v13, v21, v22, v23, v24, v25, v26, v27, v28, v29;
          }

          else
          {
            v13, v14, v15, v16, v17, v18, v19, v20, v28, v29;
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_22B7C8040()
{
  v0 = [objc_opt_self() sharedController];
  v1 = sub_22B7DB678();
  v2 = [v0 serviceWithName_];

  if (v2)
  {
    v3 = [objc_opt_self() sharedAccountController];
    if (!v3)
    {
LABEL_26:
      __break(1u);
      return;
    }

    v4 = v3;
    v5 = [v3 accountsForService_];

    if (v5)
    {
      sub_22B4D01A0(0, &qword_28141F298, off_2786FF850);
      v6 = sub_22B7DB918();

      if (!(v6 >> 62))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_5:
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          goto LABEL_6;
        }

        goto LABEL_23;
      }
    }

    v7 = sub_22B7DC1C8();
    if (v7)
    {
LABEL_6:
      v36 = v2;
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x231895C80](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v12 = [v9 accountDefaults];
        v13 = sub_22B7DB588();

        v38 = sub_22B7DB6A8();
        sub_22B7DC248();
        if (*(v13 + 16) && (v21 = sub_22B4D7EC0(v39), (v14 & 1) != 0))
        {
          sub_22B4D1F68(*(v13 + 56) + 32 * v21, v40);

          sub_22B4DA138(v39);
          v13, v22, v23, v24, v25, v26, v27, v28, v36, v38;
          if (swift_dynamicCast() & 1) != 0 && (v37)
          {
LABEL_20:
            v2 = v36;
            goto LABEL_23;
          }
        }

        else
        {
          v13, v14, v15, v16, v17, v18, v19, v20, v36, v38;

          sub_22B4DA138(v39);
        }

        ++v8;
        if (v11 == v7)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_23:

    v6, v29, v30, v31, v32, v33, v34, v35, v36, v37;
  }
}

uint64_t sub_22B7C8328(uint64_t a1, uint64_t a2)
{
  v3 = sub_22B7DA688();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_22B7DA658();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22B7C841C()
{
  v1 = OBJC_IVAR____TtC12IMDaemonCore35ScheduledMessageBlocklistController____lazy_storage___blockedHandles;
  if (*(v0 + OBJC_IVAR____TtC12IMDaemonCore35ScheduledMessageBlocklistController____lazy_storage___blockedHandles))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12IMDaemonCore35ScheduledMessageBlocklistController____lazy_storage___blockedHandles);
  }

  else
  {
    v3 = v0;
    sub_22B6F0AD4(&qword_27D8CEF30, &qword_22B7FBAF0);
    swift_allocObject();
    v2 = sub_22B7DB308();
    *(v3 + v1) = v2;
  }

  return v2;
}

char *sub_22B7C84C0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC12IMDaemonCore35ScheduledMessageBlocklistController____lazy_storage___blockedHandles] = 0;
  *&v1[OBJC_IVAR____TtC12IMDaemonCore35ScheduledMessageBlocklistController_cancellables] = MEMORY[0x277D84FA0];
  v46.receiver = v1;
  v46.super_class = type metadata accessor for ScheduledMessageBlocklistController();
  v2 = objc_msgSendSuper2(&v46, sel_init);
  sub_22B7C841C();
  v3 = sub_22B7CCC70();
  v11 = v3;
  v12 = *v3->messageStore;
  if (v12)
  {
    v42 = v2;
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22B7AB6B4(0, v12, 0);
    v13 = aBlock[0];
    membershipObserver = v11->membershipObserver;
    do
    {
      v16 = *(membershipObserver - 1);
      v15 = *membershipObserver;
      aBlock[0] = v13;
      v17 = *v13->messageStore;
      v18 = *v13->chatRegistry;

      if (v17 >= v18 >> 1)
      {
        sub_22B7AB6B4((v18 > 1), v17 + 1, 1);
        v13 = aBlock[0];
      }

      *v13->messageStore = v17 + 1;
      v26 = v13 + 16 * v17;
      *(v26 + 4) = v16;
      *(v26 + 5) = v15;
      membershipObserver += 16;
      --v12;
    }

    while (v12);
    v11, v19, v20, v21, v22, v23, v24, v25, v42, v44;
    v2 = v43;
  }

  else
  {
    v3, v4, v5, v6, v7, v8, v9, v10, v41, v44;
    v13 = MEMORY[0x277D84F90];
  }

  aBlock[0] = v13;
  sub_22B7DB2F8();
  v13, v27, v28, v29, v30, v31, v32, v33, v43, v44;

  result = [objc_opt_self() defaultCenter];
  v35 = *MEMORY[0x277CFB9B8];
  if (*MEMORY[0x277CFB9B8])
  {
    v36 = result;
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_22B7CCEF8;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B7C8328;
    aBlock[3] = &unk_283F20CC8;
    v38 = _Block_copy(aBlock);

    v39 = [v36 addObserverForName:v35 object:0 queue:0 usingBlock:v38];
    _Block_release(v38);

    *(swift_allocObject() + 16) = v39;
    sub_22B7DB2D8();
    swift_allocObject();
    swift_unknownObjectRetain();
    v40 = sub_22B7DB2E8();
    swift_beginAccess();
    sub_22B7C9568(&v44, v40);
    swift_endAccess();
    swift_unknownObjectRelease();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_22B7C87DC(uint64_t a1, uint64_t a2)
{
  if (qword_27D8CCC60 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_27D8D48A0);
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Received signal that blocklist updated", v5, 2u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_22B7CCC70();
    v9 = sub_22B7DB298();
    v10 = sub_22B7DBCB8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v58 = v12;
      *v11 = 136315138;
      v13 = MEMORY[0x2318952A0](v8, &type metadata for ScheduledMessageBlocklistController.BlockedItem);
      v15 = v14;
      v16 = sub_22B4CFAAC(v13, v14, &v58);
      v15, v17, v18, v19, v20, v21, v22, v23, v53, v55;
      *(v11 + 4) = v16;
      _os_log_impl(&dword_22B4CC000, v9, v10, "BlockedItems: %s", v11, 0xCu);
      sub_22B4CFB78(v12);
      MEMORY[0x231898D60](v12, -1, -1);
      MEMORY[0x231898D60](v11, -1, -1);
    }

    sub_22B7C841C();
    v31 = *v8->messageStore;
    if (v31)
    {
      v58 = MEMORY[0x277D84F90];
      sub_22B7AB6B4(0, v31, 0);
      v32 = v58;
      v56 = v8;
      membershipObserver = v8->membershipObserver;
      do
      {
        v35 = *(membershipObserver - 1);
        v34 = *membershipObserver;
        v58 = v32;
        v37 = *v32->messageStore;
        v36 = *v32->chatRegistry;

        if (v37 >= v36 >> 1)
        {
          sub_22B7AB6B4((v36 > 1), v37 + 1, 1);
          v32 = v58;
        }

        *v32->messageStore = v37 + 1;
        v45 = v32 + 16 * v37;
        *(v45 + 4) = v35;
        *(v45 + 5) = v34;
        membershipObserver += 16;
        --v31;
      }

      while (v31);
      v56, v38, v39, v40, v41, v42, v43, v44, v53, v56;
    }

    else
    {
      v8, v24, v25, v26, v27, v28, v29, v30, v53, v55;
      v32 = MEMORY[0x277D84F90];
    }

    v58 = v32;
    sub_22B7DB2F8();
    v32, v46, v47, v48, v49, v50, v51, v52, v54, v57;
  }

  return result;
}

void sub_22B7C8AAC(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];
}

id sub_22B7C8B40(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScheduledMessageBlocklistController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22B7C8BE4(_WORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x231895FC0](*(*v2 + 40), a2, 2);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 2 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_22B7CAD44(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22B7C8CCC(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_22B7DC658();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_22B7CAE68(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22B7C8DF4(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_22B7DC1D8();

    if (v17)
    {
      v14, v18, v19, v20, v21, v22, v23, v24, v46, v48;

      sub_22B4D01A0(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v52;
    }

    else
    {
      result = sub_22B7DC1C8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v34 = sub_22B7C9804(v15, result + 1, a5, a6, a3, a4);
        v35 = *(v34 + 16);
        if (*(v34 + 24) <= v35)
        {
          sub_22B7CA74C(v35 + 1, a5, a6);
        }

        v36 = v16;
        sub_22B7CABEC(v36, v34);
        v14, v37, v38, v39, v40, v41, v42, v43, v46, v48;
        *v11 = v34;
        *a1 = v36;
        return 1;
      }
    }
  }

  else
  {
    sub_22B4D01A0(0, a3, a4);
    v26 = sub_22B7DBFC8();
    v27 = -1 << *(v14 + 32);
    v28 = v26 & ~v27;
    if ((*(v14 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
    {
      v29 = ~v27;
      while (1)
      {
        v30 = *(*(v14 + 48) + 8 * v28);
        v31 = sub_22B7DBFD8();

        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v14 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v44 = *(*(v14 + 48) + 8 * v28);
      *a1 = v44;
      v45 = v44;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = *v11;
      v33 = a2;
      sub_22B7CAF88(v33, v28, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v53;
      *a1 = v33;
      return 1;
    }
  }

  return result;
}

uint64_t sub_22B7C9068(void *a1, uint64_t a2, IMDScheduledMessageCoordinator *a3)
{
  v7 = *v3;
  sub_22B7DC668();
  sub_22B7DB758();
  v8 = sub_22B7DC6B8();
  v15 = -1 << *(v7 + 32);
  v16 = v8 & ~v15;
  if ((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = (*(v7 + 48) + 16 * v16);
      v19 = v18[1];
      v20 = *v18 == a2 && v19 == a3;
      if (v20 || (sub_22B7DC518() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    a3, v19, v9, v10, v11, v12, v13, v14, v25, v26;
    v23 = (*(v7 + 48) + 16 * v16);
    v24 = v23[1];
    *a1 = *v23;
    a1[1] = v24;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;

    sub_22B7CB118(a2, a3, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v27;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22B7C91B8(void *a1, uint64_t a2, IMDScheduledMessageCoordinator *a3)
{
  v7 = *v3;
  sub_22B7DC668();
  sub_22B7DC688();
  if (a3)
  {
    sub_22B7DB758();
  }

  v8 = sub_22B7DC6B8();
  v15 = -1 << *(v7 + 32);
  v16 = v8 & ~v15;
  if (((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;

    sub_22B7CB298(a2, a3, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v17 = ~v15;
  v18 = *(v7 + 48);
  while (1)
  {
    v19 = (v18 + 16 * v16);
    v20 = v19[1];
    if (v20)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v16 = (v16 + 1) & v17;
    if (((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v21 = *v19 == a2 && v20 == a3;
  if (!v21 && (sub_22B7DC518() & 1) == 0)
  {
    goto LABEL_6;
  }

  a3, v20, v9, v10, v11, v12, v13, v14, v24, v25;
LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v16);

  return 0;
}

uint64_t sub_22B7C9340(IMDScheduledMessageCoordinator **a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22B7DC1D8();

    if (v9)
    {
      v6, v10, v11, v12, v13, v14, v15, v16, v37, v38;

      sub_22B7DBEF8();
      swift_dynamicCast();
      result = 0;
      *a1 = v39;
      return result;
    }

    result = sub_22B7DC1C8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v26 = sub_22B7C9A04(v7, result + 1);
    v27 = *v26->messageStore;
    if (*v26->chatRegistry <= v27)
    {
      sub_22B7CA74C(v27 + 1, &qword_27D8CFC68, &qword_22B7FE538);
    }

    v25 = v8;
    sub_22B7CABEC(v25, v26);
    v6, v28, v29, v30, v31, v32, v33, v34, v37, v26;
    *v3 = v26;
    goto LABEL_16;
  }

  sub_22B7DBEF8();
  v18 = sub_22B7DBFC8();
  v19 = -1 << *(v6 + 32);
  v20 = v18 & ~v19;
  if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v3;
    v25 = a2;
    sub_22B7CB454(v25, v20, isUniquelyReferenced_nonNull_native);
    *v3 = v40;
LABEL_16:
    *a1 = v25;
    return 1;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v20);
    v23 = sub_22B7DBFD8();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v35 = *(*(v6 + 48) + 8 * v20);
  *a1 = v35;
  v36 = v35;
  return 0;
}

uint64_t sub_22B7C9568(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_22B7DC1D8();

    if (v8)
    {
      v6, v9, v10, v11, v12, v13, v14, v15, v33, v34;

      sub_22B7DB2D8();
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
      return result;
    }

    result = sub_22B7DC1C8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v23 = sub_22B7C9C04(v7, result + 1);
    v24 = *(v23 + 16);
    if (*(v23 + 24) <= v24)
    {
      sub_22B7CA96C(v24 + 1);
    }

    sub_22B7CAC70(v25, v23);
    v6, v26, v27, v28, v29, v30, v31, v32, v33, v34;
    *v3 = v23;
    goto LABEL_16;
  }

  sub_22B7DB2D8();
  sub_22B7CCF08(&unk_28141F358, MEMORY[0x277CBCDB0]);
  v17 = sub_22B7DB5A8();
  v18 = -1 << *(v6 + 32);
  v19 = v17 & ~v18;
  if (((*(v6 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v2;

    sub_22B7CB5E4(v22, v19, isUniquelyReferenced_nonNull_native);
    *v2 = v36;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v20 = ~v18;
  sub_22B7CCF08(&qword_27D8CFC58, MEMORY[0x277CBCDB8]);
  while ((sub_22B7DB658() & 1) == 0)
  {
    v19 = (v19 + 1) & v20;
    if (((*(v6 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v19);

  return 0;
}

uint64_t sub_22B7C9804(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    sub_22B6F0AD4(a3, a4);
    v10 = sub_22B7DC288();
    v23 = v10;
    sub_22B7DC188();
    if (sub_22B7DC1F8())
    {
      sub_22B4D01A0(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_22B7CA74C(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_22B7DBFC8();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_22B7DC1F8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_22B7C9A04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_22B6F0AD4(&qword_27D8CFC68, &qword_22B7FE538);
    v2 = sub_22B7DC288();
    v15 = v2;
    sub_22B7DC188();
    if (sub_22B7DC1F8())
    {
      sub_22B7DBEF8();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_22B7CA74C(v9 + 1, &qword_27D8CFC68, &qword_22B7FE538);
        }

        v2 = v15;
        result = sub_22B7DBFC8();
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

      while (sub_22B7DC1F8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_22B7C9C04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_22B6F0AD4(&qword_27D8CFC60, &qword_22B7FE528);
    v2 = sub_22B7DC288();
    v15 = v2;
    sub_22B7DC188();
    if (sub_22B7DC1F8())
    {
      sub_22B7DB2D8();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_22B7CA96C(v9 + 1);
        }

        v2 = v15;
        sub_22B7CCF08(&unk_28141F358, MEMORY[0x277CBCDB0]);
        result = sub_22B7DB5A8();
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

      while (sub_22B7DC1F8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_22B7C9E24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22B6F0AD4(&qword_27D8CFC78, &unk_22B7FE548);
  result = sub_22B7DC278();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 2 * (v14 | (v6 << 6)));
      result = MEMORY[0x231895FC0](*(v5 + 40), v17, 2);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 2 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22B7CA04C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22B6F0AD4(&qword_27D8CFC70, &qword_22B7FE540);
  result = sub_22B7DC278();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_22B7DC658();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22B7CA270(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22B6F0AD4(&qword_27D8CD818, &qword_22B7FE530);
  result = sub_22B7DC278();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22B7DC668();
      sub_22B7DB758();
      result = sub_22B7DC6B8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22B7CA4D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22B6F0AD4(&qword_27D8CFC80, &unk_22B7FE558);
  result = sub_22B7DC278();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      sub_22B7DC668();
      sub_22B7DC688();
      if (v19)
      {
        sub_22B7DB758();
      }

      result = sub_22B7DC6B8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22B7CA74C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_22B6F0AD4(a2, a3);
  result = sub_22B7DC278();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_22B7DBFC8();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_22B7CA96C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22B6F0AD4(&qword_27D8CFC60, &qword_22B7FE528);
  result = sub_22B7DC278();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_22B7DB2D8();
      sub_22B7CCF08(&unk_28141F358, MEMORY[0x277CBCDB0]);
      result = sub_22B7DB5A8();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22B7CABEC(uint64_t a1, uint64_t a2)
{
  sub_22B7DBFC8();
  result = sub_22B7DC168();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_22B7CAC70(uint64_t a1, uint64_t a2)
{
  sub_22B7DB2D8();
  sub_22B7CCF08(&unk_28141F358, MEMORY[0x277CBCDB0]);
  sub_22B7DB5A8();
  result = sub_22B7DC168();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22B7CAD44(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B7C9E24(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22B7CB7A4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22B7CBF90(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x231895FC0](*(*v3 + 40), v4, 2);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 2 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 2 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22B7DC568();
  __break(1u);
  return result;
}

uint64_t sub_22B7CAE68(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B7CA04C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22B7CB8E4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22B7CC184(v5 + 1);
  }

  v8 = *v3;
  result = sub_22B7DC658();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22B7DC568();
  __break(1u);
  return result;
}

void sub_22B7CAF88(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_22B7CA74C(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22B7CBD00(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_22B7CC800(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_22B7DBFC8();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_22B4D01A0(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_22B7DBFD8();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22B7DC568();
  __break(1u);
}

void sub_22B7CB118(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22B7CA270(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_22B7CBA38();
      goto LABEL_16;
    }

    sub_22B7CC374(v8 + 1);
  }

  v10 = *v4;
  sub_22B7DC668();
  sub_22B7DB758();
  v11 = sub_22B7DC6B8();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_22B7DC518() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_22B7DC568();
  __break(1u);
}

void sub_22B7CB298(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_22B7CA4D0(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_22B7CBB94();
      goto LABEL_22;
    }

    sub_22B7CC5AC(v9 + 1);
  }

  v11 = *v4;
  sub_22B7DC668();
  sub_22B7DC688();
  if (a2)
  {
    sub_22B7DB758();
  }

  v12 = sub_22B7DC6B8();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = v12 & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == result && v18 == a2;
          if (v19 || (sub_22B7DC518() & 1) != 0)
          {
LABEL_21:
            sub_22B6F0AD4(&qword_27D8CD7B0, &qword_22B7FBB10);
            sub_22B7DC568();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = result;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

void sub_22B7CB454(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B7CA74C(v6 + 1, &qword_27D8CFC68, &qword_22B7FE538);
  }

  else
  {
    if (v7 > v6)
    {
      sub_22B7CBD00(&qword_27D8CFC68, &qword_22B7FE538);
      goto LABEL_12;
    }

    sub_22B7CC800(v6 + 1, &qword_27D8CFC68, &qword_22B7FE538);
  }

  v8 = *v3;
  v9 = sub_22B7DBFC8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_22B7DBEF8();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_22B7DBFD8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22B7DC568();
  __break(1u);
}

void sub_22B7CB5E4(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B7CA96C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_22B7CBE40();
      goto LABEL_12;
    }

    sub_22B7CCA0C(v6 + 1);
  }

  v8 = *v3;
  sub_22B7DB2D8();
  sub_22B7CCF08(&unk_28141F358, MEMORY[0x277CBCDB0]);
  v9 = sub_22B7DB5A8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_22B7CCF08(&qword_27D8CFC58, MEMORY[0x277CBCDB8]);
    while ((sub_22B7DB658() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22B7DC568();
  __break(1u);
}

void *sub_22B7CB7A4()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CFC78, &unk_22B7FE548);
  v2 = *v0;
  v3 = sub_22B7DC268();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22B7CB8E4()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CFC70, &qword_22B7FE540);
  v2 = *v0;
  v3 = sub_22B7DC268();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_22B7CBA38()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CD818, &qword_22B7FE530);
  v2 = *v0;
  v3 = sub_22B7DC268();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_22B7CBB94()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CFC80, &unk_22B7FE558);
  v2 = *v0;
  v3 = sub_22B7DC268();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

id sub_22B7CBD00(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_22B6F0AD4(a1, a2);
  v4 = *v2;
  v5 = sub_22B7DC268();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_22B7CBE40()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CFC60, &qword_22B7FE528);
  v2 = *v0;
  v3 = sub_22B7DC268();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_22B7CBF90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22B6F0AD4(&qword_27D8CFC78, &unk_22B7FE548);
  result = sub_22B7DC278();
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 2 * (v13 | (v6 << 6)));
      result = MEMORY[0x231895FC0](*(v5 + 40), v16, 2);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 2 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_22B7CC184(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22B6F0AD4(&qword_27D8CFC70, &qword_22B7FE540);
  result = sub_22B7DC278();
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_22B7DC658();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_22B7CC374(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22B6F0AD4(&qword_27D8CD818, &qword_22B7FE530);
  result = sub_22B7DC278();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22B7DC668();

      sub_22B7DB758();
      result = sub_22B7DC6B8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22B7CC5AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22B6F0AD4(&qword_27D8CFC80, &unk_22B7FE558);
  result = sub_22B7DC278();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_22B7DC668();
      sub_22B7DC688();
      if (v18)
      {

        sub_22B7DB758();
      }

      result = sub_22B7DC6B8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22B7CC800(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_22B6F0AD4(a2, a3);
  result = sub_22B7DC278();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_22B7DBFC8();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_22B7CCA0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22B6F0AD4(&qword_27D8CFC60, &qword_22B7FE528);
  result = sub_22B7DC278();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_22B7DB2D8();
      sub_22B7CCF08(&unk_28141F358, MEMORY[0x277CBCDB0]);

      result = sub_22B7DB5A8();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22B7CCF08(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22B7DB2D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B7CCF4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22B7CCF94(uint64_t result, int a2, int a3)
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

id PostDeliveryReceiptProcessingComponent.runIndividually(withInput:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22B7DB2B8();
  v96 = *(v4 - 8);
  v97 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v91 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v91 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v91 - v15;
  MEMORY[0x28223BE20](v14);
  v92 = &v91 - v17;
  v18 = sub_22B7DA828();
  v93 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v91 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v91 - v25;
  MEMORY[0x28223BE20](v24);
  v94 = &v91 - v27;
  v98 = &unk_283F85B68;
  v28 = swift_dynamicCastObjCProtocolConditional();
  if (v28)
  {
    v29 = v28;
    v95 = a1;
    swift_unknownObjectRetain();
    result = [v29 messageItems];
    if (!result)
    {
      goto LABEL_40;
    }

    v31 = result;
    sub_22B4D01A0(0, &qword_28141F288, 0x277D1AA70);
    v32 = sub_22B7DB918();

    if (v32 >> 62)
    {
      result = sub_22B7DC1C8();
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_5:
        if ((v32 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x231895C80](0, v32);
LABEL_8:
          v48 = v40;
          v32, v41, v42, v43, v44, v45, v46, v47, v91, v92;
          v49 = [v48 balloonBundleID];
          v50 = [v2 validBundleID_];

          if (v50)
          {
            v51 = [v48 payloadData];
            if (v51)
            {
              v52 = v51;
              v53 = sub_22B7DA848();
              v55 = v54;

              v56 = sub_22B7DA838();
              sub_22B705E98(v53, v55);
            }

            else
            {
              v56 = 0;
            }

            v63 = IMDictionaryFromPayloadData();

            if (v63)
            {
              v64 = sub_22B7DB588();

              v65 = sub_22B7DB568();
              v64, v66, v67, v68, v69, v70, v71, v72, v91, v92;
            }

            else
            {
              v65 = 0;
            }

            v74 = v93;
            v73 = v94;
            v75 = IMSanitizedURLForIMExtensionPayloadURLKey();

            if (v75)
            {
              sub_22B7DA7D8();

              v76 = 0;
            }

            else
            {
              v76 = 1;
            }

            (*(v74 + 56))(v26, v76, 1, v18);
            sub_22B7AA5D4(v26, v73);
            sub_22B7AA644(v73, v23);
            if ((*(v74 + 48))(v23, 1, v18) == 1)
            {
              sub_22B7CDAE0(v23);
              sub_22B7DB288();
              sub_22B7DB2A8();
              v77 = sub_22B7DB298();
              v78 = sub_22B7DBCB8();
              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                *v79 = 0;
                _os_log_impl(&dword_22B4CC000, v77, v78, "Unable to get payload URL. Bailing and passing input to next pipeline", v79, 2u);
                MEMORY[0x231898D60](v79, -1, -1);
              }

              (*(v96 + 8))(v16, v97);
              v80 = objc_allocWithZone(MEMORY[0x277D18E08]);
              v81 = [v80 initWithValue_];

              swift_unknownObjectRelease();
              sub_22B7CDAE0(v73);
              return v81;
            }

            v82 = v91;
            (*(v74 + 32))(v91, v23, v18);
            sub_22B7DB548();
            swift_allocObject();
            sub_22B7DB538();
            sub_22B7DB528();

            sub_22B7DB288();
            v83 = v92;
            sub_22B7DB2A8();
            v84 = sub_22B7DB298();
            v85 = sub_22B7DBCB8();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              *v86 = 0;
              _os_log_impl(&dword_22B4CC000, v84, v85, "Sending message received receipt to AskTo", v86, 2u);
              MEMORY[0x231898D60](v86, -1, -1);
            }

            (*(v96 + 8))(v83, v97);
            (*(v74 + 8))(v82, v18);
            sub_22B7CDAE0(v73);
          }

          else
          {
            sub_22B7DB288();
            sub_22B7DB2A8();
            v60 = sub_22B7DB298();
            v61 = sub_22B7DBCB8();
            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              *v62 = 0;
              _os_log_impl(&dword_22B4CC000, v60, v61, "Not a screentime message request", v62, 2u);
              MEMORY[0x231898D60](v62, -1, -1);
            }

            (*(v96 + 8))(v13, v97);
          }

          v81 = [objc_allocWithZone(MEMORY[0x277D18E08]) initWithValue_];
          swift_unknownObjectRelease();

          return v81;
        }

        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v40 = *(v32 + 32);
          goto LABEL_8;
        }

        __break(1u);
LABEL_40:
        __break(1u);
        return result;
      }
    }

    v32, v33, v34, v35, v36, v37, v38, v39, v91, v92;
    sub_22B7DB288();
    sub_22B7DB2A8();
    v87 = sub_22B7DB298();
    v88 = sub_22B7DBC98();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_22B4CC000, v87, v88, "Message item does not exist. Bailing and passing input to next pipeline", v89, 2u);
      MEMORY[0x231898D60](v89, -1, -1);
    }

    (*(v96 + 8))(v10, v97);
    v90 = objc_allocWithZone(MEMORY[0x277D18E08]);
    v81 = [v90 initWithValue_];
    swift_unknownObjectRelease();
    return v81;
  }

  sub_22B7DB288();
  sub_22B7DB2A8();
  v57 = sub_22B7DB298();
  v58 = sub_22B7DBC98();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_22B4CC000, v57, v58, "Unable to convert input into PostDeliveryReceiptProcessingParameter. Bailing and passing input to next pipeline", v59, 2u);
    MEMORY[0x231898D60](v59, -1, -1);
  }

  (*(v96 + 8))(v7, v97);
  return [objc_allocWithZone(MEMORY[0x277D18E08]) initWithValue_];
}

PostDeliveryReceiptProcessingComponent __swiftcall PostDeliveryReceiptProcessingComponent.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.super._nextComponent = v2;
  result.super.super.isa = v1;
  return result;
}

uint64_t sub_22B7CDAE0(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_22B7CDB5C(uint64_t a1, IMDScheduledMessageCoordinator *a2)
{
  v4 = IMBalloonExtensionIDWithSuffix();
  if (v4)
  {
    v5 = v4;
    v6 = sub_22B7DB6A8();
    v8 = v7;

    if (a2)
    {
      if (v6 == a1 && v8 == a2)
      {
        goto LABEL_20;
      }

      v17 = sub_22B7DC518();
      v8, v18, v19, v20, v21, v22, v23, v24, v39, v40;
      if (v17)
      {
        return 1;
      }
    }

    else
    {
      v8, v9, v10, v11, v12, v13, v14, v15, v39, v40;
    }
  }

  else if (!a2)
  {
    return 1;
  }

  v25 = IMBalloonExtensionIDWithSuffix();
  if (v25)
  {
    v26 = v25;
    v27 = sub_22B7DB6A8();
    v8 = v28;

    if (a2)
    {
      if (v27 != a1 || v8 != a2)
      {
        v30 = sub_22B7DC518();
        v8, v31, v32, v33, v34, v35, v36, v37, v39, v40;
        return (v30 & 1) != 0;
      }

LABEL_20:
      v8, v9, v10, v11, v12, v13, v14, v15, v39, v40;
      return 1;
    }

    v8, v9, v10, v11, v12, v13, v14, v15, v39, v40;
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_22B7CDCB0(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7, IMDScheduledMessageCoordinator **a8)
{
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  v33 = 4 * v8;
  v31 = a3 >> 14;
  if (a3 >> 14 != 4 * v8)
  {
    v11 = a3;
    v13 = result;
    for (i = 0; ; ++i)
    {
      sub_22B7C1564(v11, v13, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_22B7DC2D8();
      }

      else if ((a2 & 0x2000000000000000) == 0 && (v13 & 0x1000000000000000) == 0)
      {
        sub_22B7DC328();
      }

      sub_22B7DC6C8();
      MEMORY[0x231895FF0](a4);
      sub_22B7DC698();
      a4 = sub_22B7DC6A8();
      sub_22B7DC6C8();
      MEMORY[0x231895FF0](a4);
      MEMORY[0x231895FF0](0);
      v15 = sub_22B7DC6A8();
      v16 = sub_22B7C1564(v11, v13, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_22B7DB718();
        v11 = result;
      }

      else
      {
        v17 = v16 >> 16;
        result = sub_22B7DC2C8();
        v11 = ((result + v17) << 16) | 5;
      }

      if ((a7 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (!a7)
      {
        goto LABEL_38;
      }

      result = sub_22B7DB1C8();
      if (result)
      {
        if (v31 > v11 >> 14)
        {
          goto LABEL_39;
        }

        v18 = *a8;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a8 = v18;
        if ((result & 1) == 0)
        {
          result = sub_22B71B8E0(0, *v18->messageStore + 1, 1, v18, v19, v20, v21, v22);
          v18 = result;
          *a8 = result;
        }

        v24 = *v18->messageStore;
        v23 = *v18->chatRegistry;
        if (v24 >= v23 >> 1)
        {
          result = sub_22B71B8E0((v23 > 1), v24 + 1, 1, v18, v19, v20, v21, v22);
          v18 = result;
          *a8 = result;
        }

        *v18->messageStore = v24 + 1;
        *&v18->queue[8 * v24] = v15;
      }

      v25 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_37;
      }

      if ((a5 & 1) == 0)
      {
        goto LABEL_33;
      }

      if (v25 < 0xFFFFFFFF80000000)
      {
        goto LABEL_40;
      }

      if (v25 > 0x7FFFFFFF)
      {
        goto LABEL_41;
      }

      if (__OFSUB__(v25, 1))
      {
        goto LABEL_42;
      }

      v26 = i | (i >> 1) | ((i | (i >> 1)) >> 2);
      v27 = v26 | (v26 >> 4) | ((v26 | (v26 >> 4)) >> 8);
      v28 = v27 | (v27 >> 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_43;
      }

      if (v30 != v25)
      {
        if (v33 == v11 >> 14)
        {
          return result;
        }
      }

      else
      {
LABEL_33:
        result = sub_22B7DB1C8();
        if ((result & 1) == 0 || v11 >> 14 == v33)
        {
          return result;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

unint64_t sub_22B7CE088(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7, IMDScheduledMessageCoordinator **a8)
{
  v39 = a5;
  if (a3 < 0x4000)
  {
    return result;
  }

  v10 = a3;
  v12 = result;
  result = sub_22B7030EC(a3, result, a2);
  if (result >= 0x4000)
  {
    v13 = 0;
    v37 = v10 >> 14;
    while ((a2 & 0x1000000000000000) != 0)
    {
      v20 = sub_22B7DB728();
      sub_22B7C1564(v20, v12, a2);
      sub_22B7DC2D8();
LABEL_26:
      sub_22B7DC6C8();
      MEMORY[0x231895FF0](a4);
      sub_22B7DC698();
      v52 = v42;
      v53 = v43;
      v54 = v44;
      v50 = v40;
      v51 = v41;
      a4 = sub_22B7DC6A8();
      sub_22B7DC6C8();
      MEMORY[0x231895FF0](a4);
      MEMORY[0x231895FF0](0);
      v47 = v42;
      v48 = v43;
      v49 = v44;
      v45 = v40;
      v46 = v41;
      v23 = sub_22B7DC6A8();
      result = sub_22B74AED0(v10, v12, a2);
      if ((a7 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (!a7)
      {
        goto LABEL_48;
      }

      v10 = result;
      result = sub_22B7DB1C8();
      if (result)
      {
        if (v37 < v10 >> 14)
        {
          goto LABEL_49;
        }

        v24 = *a8;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a8 = v24;
        if ((result & 1) == 0)
        {
          result = sub_22B71B8E0(0, *v24->messageStore + 1, 1, v24, v25, v26, v27, v28);
          v24 = result;
          *a8 = result;
        }

        v30 = *v24->messageStore;
        v29 = *v24->chatRegistry;
        if (v30 >= v29 >> 1)
        {
          result = sub_22B71B8E0((v29 > 1), v30 + 1, 1, v24, v25, v26, v27, v28);
          v24 = result;
          *a8 = result;
        }

        *v24->messageStore = v30 + 1;
        *&v24->queue[8 * v30] = v23;
      }

      v31 = __OFADD__(v13++, 1);
      if (v31)
      {
        goto LABEL_47;
      }

      if ((v39 & 1) == 0)
      {
        goto LABEL_42;
      }

      if (v13 < 0xFFFFFFFF80000000)
      {
        goto LABEL_50;
      }

      if (v13 > 0x7FFFFFFF)
      {
        goto LABEL_51;
      }

      if (__OFSUB__(v13, 1))
      {
        goto LABEL_52;
      }

      v32 = (v13 - 1) | ((v13 - 1) >> 1) | (((v13 - 1) | ((v13 - 1) >> 1)) >> 2);
      v33 = v32 | (v32 >> 4) | ((v32 | (v32 >> 4)) >> 8);
      v34 = v33 | (v33 >> 16);
      v31 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v31)
      {
        goto LABEL_53;
      }

      if (v35 != v13)
      {
        if (v10 < 0x4000)
        {
          return result;
        }
      }

      else
      {
LABEL_42:
        result = sub_22B7DB1C8();
        if ((result & 1) == 0 || !(v10 >> 14))
        {
          return result;
        }
      }

      result = sub_22B7030EC(v10, v12, a2);
      if (result < 0x4000)
      {
        goto LABEL_45;
      }
    }

    v14 = result >> 16;
    if ((a2 & 0x2000000000000000) != 0)
    {
      *&v40 = v12;
      *(&v40 + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v39 + v14 + 3) & 0xC0) == 0x80)
      {
        v21 = -2;
        do
        {
          v22 = *(&v40 + v14 + v21--) & 0xC0;
        }

        while (v22 == 128);
        v19 = v21 + 1;
LABEL_21:
        sub_22B7C1564((result + (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5, v12, a2);
        if ((a2 & 0x2000000000000000) != 0)
        {
          *&v40 = v12;
          *(&v40 + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
        }

        else if ((v12 & 0x1000000000000000) == 0)
        {
          sub_22B7DC328();
        }

        goto LABEL_26;
      }
    }

    else
    {
      v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v36 = result;
        v15 = sub_22B7DC328();
        result = v36;
      }

      v16 = v15 + v14;
      if ((*(v16 - 1) & 0xC0) == 0x80)
      {
        v17 = -2;
        do
        {
          v18 = *(v16 + v17--) & 0xC0;
        }

        while (v18 == 128);
        v19 = v17 + 1;
        goto LABEL_21;
      }
    }

    v19 = -1;
    goto LABEL_21;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_22B7CE50C(uint64_t a1, uint64_t *a2, IMDScheduledMessageCoordinator **a3)
{
  v5 = *a2;
  if (*(*a2 + 16) && (result = sub_22B7DC658(), v7 = -1 << *(v5 + 32), v8 = result & ~v7, ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v10 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_22B71B8E0(0, *v10->messageStore + 1, 1, v10, v12, v13, v14, v15);
      *a3 = v10;
    }

    v17 = *v10->messageStore;
    v16 = *v10->chatRegistry;
    if (v17 >= v16 >> 1)
    {
      v10 = sub_22B71B8E0((v16 > 1), v17 + 1, 1, v10, v12, v13, v14, v15);
      *a3 = v10;
    }

    *v10->messageStore = v17 + 1;
    *&v10->queue[8 * v17] = a1;
    return sub_22B7C8CCC(&v18, a1);
  }

  return result;
}

unint64_t sub_22B7CE640(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7, uint64_t *a8, IMDScheduledMessageCoordinator **a9)
{
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = result & 0xFFFFFFFFFFFFLL;
  }

  v27 = 4 * v9;
  v26 = a3 >> 14;
  if (a3 >> 14 != 4 * v9)
  {
    v12 = a3;
    v14 = result;
    for (i = 0; ; ++i)
    {
      sub_22B7C1564(v12, v14, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_22B7DC2D8();
      }

      else if ((a2 & 0x2000000000000000) == 0 && (v14 & 0x1000000000000000) == 0)
      {
        sub_22B7DC328();
      }

      sub_22B7DC6C8();
      MEMORY[0x231895FF0](a4);
      sub_22B7DC698();
      a4 = sub_22B7DC6A8();
      sub_22B7DC6C8();
      MEMORY[0x231895FF0](a4);
      MEMORY[0x231895FF0](0);
      v16 = sub_22B7DC6A8();
      v17 = sub_22B7C1564(v12, v14, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_22B7DB718();
        v12 = result;
      }

      else
      {
        v18 = v17 >> 16;
        result = sub_22B7DC2C8();
        v12 = ((result + v18) << 16) | 5;
      }

      if ((a7 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (!a7)
      {
        goto LABEL_34;
      }

      result = sub_22B7DB1C8();
      if (result)
      {
        if (v26 > v12 >> 14)
        {
          goto LABEL_35;
        }

        result = sub_22B7CE50C(v16, a8, a9);
      }

      v19 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_33;
      }

      if ((a5 & 1) == 0)
      {
        goto LABEL_29;
      }

      if (v19 < 0xFFFFFFFF80000000)
      {
        goto LABEL_36;
      }

      if (v19 > 0x7FFFFFFF)
      {
        goto LABEL_37;
      }

      if (__OFSUB__(v19, 1))
      {
        goto LABEL_38;
      }

      v20 = i | (i >> 1) | ((i | (i >> 1)) >> 2);
      v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
      v22 = v21 | (v21 >> 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_39;
      }

      if (v24 != v19)
      {
        if (v27 == v12 >> 14)
        {
          return result;
        }
      }

      else
      {
LABEL_29:
        result = sub_22B7DB1C8();
        if ((result & 1) == 0 || v12 >> 14 == v27)
        {
          return result;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  return result;
}

unint64_t sub_22B7CE9A0(unint64_t result, unint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, uint64_t *a7, IMDScheduledMessageCoordinator **a8)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return result;
  }

  v14 = result;
  v15 = 4 * v8;
  v16 = (result >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v16) = 1;
  }

  v17 = 4 << v16;
  v23 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v24 = a2 & 0xFFFFFFFFFFFFFFLL;
  v18 = 15;
  while (1)
  {
    while (1)
    {
      result = sub_22B7CE640(v14, a2, v18, a3, a4 & 1, a5, a6, a7, a8);
      if ((v18 & 0xC) == v17 || (v18 & 1) == 0)
      {
        break;
      }

      if (v8 <= v18 >> 16)
      {
        goto LABEL_32;
      }

LABEL_16:
      if ((a2 & 0x1000000000000000) != 0)
      {
        goto LABEL_8;
      }

LABEL_17:
      v19 = v18 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v27[0] = v14;
        v27[1] = v24;
        v20 = *(v27 + v19);
      }

      else
      {
        result = v23;
        if ((v14 & 0x1000000000000000) == 0)
        {
          result = sub_22B7DC328();
        }

        v20 = *(result + v19);
      }

      v21 = v20;
      v22 = __clz(v20 ^ 0xFF) - 24;
      if (v21 >= 0)
      {
        LOBYTE(v22) = 1;
      }

      v18 = ((v19 + v22) << 16) | 5;
      if (v15 == v18 >> 14)
      {
        return result;
      }
    }

    if ((v18 & 0xC) == v17)
    {
      break;
    }

    if (v8 <= v18 >> 16)
    {
      goto LABEL_31;
    }

LABEL_15:
    if (v18)
    {
      goto LABEL_16;
    }

    result = sub_22B7C1670(v18, v14, a2);
    v18 = v18 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_8:
    result = sub_22B7DB718();
    v18 = result;
    if (v15 == result >> 14)
    {
      return result;
    }
  }

  result = sub_22B7C1398(v18, v14, a2);
  v18 = result;
  if (v8 > result >> 16)
  {
    goto LABEL_15;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}