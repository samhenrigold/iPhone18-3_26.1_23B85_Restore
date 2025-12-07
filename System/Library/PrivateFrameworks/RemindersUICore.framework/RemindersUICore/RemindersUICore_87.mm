void sub_21D907890(__n128 a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedList;
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedList);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 groceryContextChangeItem];
    if (v6 && (v31 = v6, v7 = sub_21D0D8CF0(0, &qword_280D0C220, 0x277D44690), v8 = sub_21D0FB9CC(v7, &protocol witness table for REMListGroceryContextChangeItem), v31, (v8 & 1) != 0))
    {
      v9 = sub_21D906F60();

      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v33 = sub_21D905F9C(0, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B60, &unk_21DC3FC80);
  sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
  sub_21D0D0F1C(&qword_27CE63CA0, &qword_27CE61B60, &unk_21DC3FC80, MEMORY[0x277D83970]);
  sub_21DBFA48C();

  v9 = v31;
  if (!v31)
  {
    if (*(v2 + v3) || (v23 = *(v2 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_groceryListCreationContext), v24 = *(v2 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_groceryListCreationContext + 8), v25 = *(v2 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_groceryListCreationContext + 16), v26 = v23, sub_21DBF8E0C(), v27 = v25, v28 = sub_21D9055B8(v23, v24, v27), v27, , v26, !v28) || (v29 = *(v2 + v3), *(v2 + v3) = v28, v30 = v28, v29, v9 = sub_21D906F60(), v30, !v9))
    {
      if (qword_27CE56E68 != -1)
      {
        swift_once();
      }

      v19 = sub_21DBF84BC();
      __swift_project_value_buffer(v19, qword_27CE63C48);
      v20 = sub_21DBF84AC();
      v21 = sub_21DBFAEDC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_21D0C9000, v20, v21, "TTRSECreateRemindersPresenterCapability: grocery list not found", v22, 2u);
        MEMORY[0x223D46520](v22, -1, -1);
      }

      return;
    }
  }

LABEL_8:
  v10 = v9;
  if (qword_27CE56E68 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_27CE63C48);
  v12 = v10;
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAEDC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = [v12 objectID];
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&dword_21D0C9000, v13, v14, "TTRSECreateRemindersInteractor: switching to grocery list {listID: %@}", v15, 0xCu);
    sub_21D0CF7E0(v16, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v31 = v12;
  v32 = 0;
  v18 = v12;
  sub_21D907454(&v31);
}

void sub_21D907CA8(void *a1@<X8>)
{
  v2 = sub_21DBF649C();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D44740](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 groceryContext];
      if (v9)
      {
        v12 = v9;
        v10 = sub_21D0D8CF0(0, &unk_280D0C250, 0x277D44688);
        v11 = sub_21D0FB9CC(v10, &protocol witness table for REMListGroceryContext);

        if (v11)
        {

          goto LABEL_17;
        }
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v7 = 0;
LABEL_17:
  *a1 = v7;
}

uint64_t sub_21D907E0C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedList);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 groceryContextChangeItem];
    if (v4)
    {
      v10 = v4;
      v5 = sub_21D0D8CF0(0, &qword_280D0C220, 0x277D44690);
      v6 = sub_21D0FB9CC(v5, &protocol witness table for REMListGroceryContextChangeItem);

      if (v6)
      {
        sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
        v7 = [v3 objectID];
        v8 = sub_21DBFB63C();

        return v8 & 1;
      }
    }
  }

  return 0;
}

void sub_21D907F04(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedReminderByID;
    swift_beginAccess();
    v5 = *(v1 + v4);
    v6 = a1;
    v7 = sub_21D1AA268(v6, v5);
    swift_endAccess();
    if (v7)
    {

      v8 = [*(v2 + 48) trackedReminderChangeItems];
      [v8 removeObjectForKey_];

      swift_beginAccess();
      v9 = sub_21D983C2C(v6);
      swift_endAccess();

      v6 = v9;
    }
  }

  v10 = *(v2 + 48);
  v11 = sub_21DBFA12C();
  v12 = [v10 addReminderWithTitle:v11 toListChangeItem:*(v2 + 64) reminderObjectID:a1];

  if (*(v2 + 40))
  {

    TTRReminderDetailPendingMoveInteractorCapability.reflectPendingMoveState(in:)(v12);

    v13 = [v12 objectID];
    v14 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedReminderByID;
    swift_beginAccess();
    v15 = *(v2 + v14);
    if ((v15 & 0xC000000000000001) == 0)
    {
      v19 = v12;
      goto LABEL_13;
    }

    if (v15 < 0)
    {
      v16 = *(v2 + v14);
    }

    else
    {
      v16 = v15 & 0xFFFFFFFFFFFFFF8;
    }

    v17 = v12;
    v18 = sub_21DBFBD7C();
    if (!__OFADD__(v18, 1))
    {
      *(v2 + v14) = sub_21D984914(v16, v18 + 1);
LABEL_13:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v2 + v14);
      sub_21D47857C(v12, v13, isUniquelyReferenced_nonNull_native);
      *(v2 + v14) = v21;

      swift_endAccess();
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21D908118(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 392) = a4;
  *(v5 + 264) = a3;
  *(v5 + 272) = v4;
  *(v5 + 248) = a1;
  *(v5 + 256) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0, &qword_21DC1ED40);
  *(v5 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  *(v5 + 288) = swift_task_alloc();
  v6 = sub_21DBF56BC();
  *(v5 + 296) = v6;
  *(v5 + 304) = *(v6 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  sub_21DBFA84C();
  *(v5 + 328) = sub_21DBFA83C();
  v8 = sub_21DBFA7CC();
  *(v5 + 336) = v8;
  *(v5 + 344) = v7;

  return MEMORY[0x2822009F8](sub_21D908290, v8, v7);
}

uint64_t sub_21D908290()
{
  v175 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = swift_allocObject();
  *(v0 + 352) = v3;
  v4 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedReminderByID;
  swift_beginAccess();
  v153 = v4;
  v154 = v1;
  v161 = v3;
  *(v3 + 16) = *(v1 + v4);
  v155 = (v3 + 16);
  v5 = v1 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_extractorResult;
  v6 = type metadata accessor for TTRExtensionContextExtractorResult(0);
  sub_21D0D3954(v5 + *(v6 + 60), v2, &qword_27CE5EDE0, &qword_21DC1ED40);
  v7 = type metadata accessor for TTRSERecipeCard(0);
  v8 = (*(*(v7 - 8) + 48))(v2, 1, v7);
  v9 = *(v0 + 296);
  v10 = *(v0 + 304);
  v12 = *(v0 + 280);
  v11 = *(v0 + 288);
  if (v8 == 1)
  {
    sub_21DBF8E0C();
    sub_21D0CF7E0(v12, &qword_27CE5EDE0, &qword_21DC1ED40);
    (*(v10 + 56))(v11, 1, 1, v9);
LABEL_4:
    sub_21D0CF7E0(*(v0 + 288), &qword_27CE58370, &unk_21DC091F0);
    sub_21DBF56AC();
    goto LABEL_6;
  }

  sub_21D0D3954(v12 + *(v7 + 24), *(v0 + 288), &qword_27CE58370, &unk_21DC091F0);
  sub_21DBF8E0C();
  sub_21D90BAE8(v12, type metadata accessor for TTRSERecipeCard);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  v13 = *(v0 + 312);
  v14 = *(v0 + 320);
  v15 = *(v0 + 296);
  v16 = *(*(v0 + 304) + 32);
  v16(v13, *(v0 + 288), v15);
  v16(v14, v13, v15);
LABEL_6:
  v17 = v155;
  v18 = *(v5 + *(v6 + 40));
  if (v18)
  {
    if (*(v0 + 392) == 1)
    {
      v18 = [v18 userActivityWithFlags_];
    }

    else
    {
      v19 = v18;
    }
  }

  *(v0 + 360) = v18;
  v20 = *(v0 + 248);
  if (v20 >> 62)
  {
    goto LABEL_151;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v158 = v0;
  if (v21)
  {
    v22 = 0;
    v165 = *(v0 + 256);
    v167 = v20 & 0xC000000000000001;
    v156 = *(v0 + 248) + 32;
    v157 = v20 & 0xFFFFFFFFFFFFFF8;
    v160 = *(v0 + 272);
    v159 = v18;
    v162 = v21;
    do
    {
      if (v167)
      {
        v23 = MEMORY[0x223D44740](v22, *(v0 + 248));
      }

      else
      {
        if (v22 >= *(v157 + 16))
        {
          goto LABEL_149;
        }

        v23 = *(v156 + 8 * v22);
      }

      v24 = v23;
      if (__OFADD__(v22++, 1))
      {
        goto LABEL_148;
      }

      swift_beginAccess();
      v26 = sub_21D983C2C(v24);
      swift_endAccess();
      if (!v26)
      {
        if (qword_27CE56E68 != -1)
        {
          swift_once();
        }

        v28 = sub_21DBF84BC();
        __swift_project_value_buffer(v28, qword_27CE63C48);
        v29 = v24;
        v30 = sub_21DBF84AC();
        v20 = sub_21DBFAEBC();

        if (os_log_type_enabled(v30, v20))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *v31 = 138412290;
          *(v31 + 4) = v29;
          *v32 = v29;
          v29 = v29;
          _os_log_impl(&dword_21D0C9000, v30, v20, "TTRSECreateRemindersInteractor: REMReminderChangeItem not found {objectID: %@}", v31, 0xCu);
          sub_21D0CF7E0(v32, &unk_27CE60070, &unk_21DC09550);
          v33 = v32;
          v21 = v162;
          MEMORY[0x223D46520](v33, -1, -1);
          MEMORY[0x223D46520](v31, -1, -1);
        }

        goto LABEL_14;
      }

      v27 = [v26 userActivity];
      if (v27)
      {
      }

      else if (v18)
      {
        [v26 setUserActivity_];
      }

      v34 = sub_21DBF566C();
      [v26 setBatchCreationID_];

      v35 = *(v165 + 16);
      v36 = v26;
      v169 = v24;
      if (v35 && (v37 = sub_21D17E07C(v24), (v38 & 1) != 0))
      {
        v39 = *(*(v165 + 56) + 8 * v37);
        sub_21DBF8E0C();
      }

      else
      {
        v39 = MEMORY[0x277D84F90];
      }

      v40 = *(v0 + 320);
      v41 = swift_task_alloc();
      v41[2] = v161;
      v41[3] = v18;
      v41[4] = v40;
      v20 = sub_21D4E7B44(sub_21D90B5E4, v41, v39);

      v42 = [v36 listChangeItem];

      [v42 addReminderChangeItem_];
      if (v20 >> 62)
      {
        v43 = sub_21DBFBD7C();
        if (v43)
        {
LABEL_35:
          v44 = [v36 subtaskContext];
          if (v44)
          {
            if (v43 < 1)
            {
              goto LABEL_150;
            }

            v45 = v44;
            v46 = 0;
            v47 = 0;
            do
            {
              if ((v20 & 0xC000000000000001) != 0)
              {
                v48 = MEMORY[0x223D44740](v47, v20);
              }

              else
              {
                v48 = *(v20 + 8 * v47 + 32);
              }

              v49 = v48;
              ++v47;
              [v45 insertReminderChangeItem:v48 afterReminderChangeItem:v46];

              v46 = v49;
            }

            while (v43 != v47);

            v0 = v158;
            v17 = v155;
          }
        }
      }

      else
      {
        v43 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43)
        {
          goto LABEL_35;
        }
      }

      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      sub_21D0D3954(v0 + 56, v0 + 96, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRReminderEditor();
      v50 = swift_allocObject();
      *(v50 + 72) = 0;
      *(v50 + 16) = v36;
      sub_21D0D3954(v0 + 96, v50 + 24, &unk_27CE60D80, &unk_21DC093F0);
      *(v50 + 64) = 0;
      v30 = v36;
      v51 = [v30 fetchedCurrentDueDateDeltaAlert];
      sub_21D0CF7E0(v0 + 56, &unk_27CE60D80, &unk_21DC093F0);
      v52 = sub_21D0CF7E0(v0 + 96, &unk_27CE60D80, &unk_21DC093F0);
      *(v50 + 72) = v51;
      v53 = *(v160 + 40);
      if (!v53)
      {
        __break(1u);
LABEL_157:
        __break(1u);
        return MEMORY[0x2821A7AD0](v52);
      }

      sub_21DBF8E0C();

      v29 = sub_21DB4F3C8(v50, v53, v20);
      swift_bridgeObjectRelease_n();

      v18 = v159;
      v21 = v162;
LABEL_14:
    }

    while (v22 != v21);
  }

  v161 = (v0 + 208);
  swift_beginAccess();
  v20 = *v17;
  if ((*v17 & 0xC000000000000001) != 0)
  {
    v54 = sub_21DBFC21C();
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = v54 | 0x8000000000000000;
  }

  else
  {
    v59 = -1 << *(v20 + 32);
    v56 = ~v59;
    v55 = v20 + 64;
    v60 = -v59;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    else
    {
      v61 = -1;
    }

    v57 = v61 & *(v20 + 64);
    v58 = *v17;
  }

  v0 = (v56 + 64) >> 6;
  sub_21DBF8E0C();
  v18 = 0;
  v17 = &selRef__setContentViewMarginType_;
  if ((v58 & 0x8000000000000000) == 0)
  {
    goto LABEL_57;
  }

  while (sub_21DBFC2DC())
  {
    v63 = v62;
    swift_unknownObjectRelease();
    v158[30] = v63;
    sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
    swift_dynamicCast();
    v20 = v158[29];
    v64 = v18;
    v65 = v57;
    if (!v20)
    {
      break;
    }

    while (1)
    {
      [v20 removeFromList];

      v18 = v64;
      v57 = v65;
      if ((v58 & 0x8000000000000000) != 0)
      {
        break;
      }

LABEL_57:
      v66 = v18;
      v67 = v57;
      v64 = v18;
      if (!v57)
      {
        while (1)
        {
          v64 = (v66 + 1);
          if (__OFADD__(v66, 1))
          {
            break;
          }

          if (v64 >= v0)
          {
            goto LABEL_64;
          }

          v67 = *(v55 + 8 * v64);
          ++v66;
          if (v67)
          {
            goto LABEL_61;
          }
        }

        __break(1u);
        goto LABEL_147;
      }

LABEL_61:
      v65 = (v67 - 1) & v67;
      v20 = *(*(v58 + 56) + ((v64 << 9) | (8 * __clz(__rbit64(v67)))));
      if (!v20)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_64:
  sub_21D199874(v58);
  v68 = *(v154 + v153);
  v171 = MEMORY[0x277D84F90];
  if ((v68 & 0xC000000000000001) != 0)
  {
    v69 = sub_21DBFC21C();
    v70 = 0;
    v71 = 0;
    v0 = 0;
    v72 = v69 | 0x8000000000000000;
  }

  else
  {
    v73 = -1 << *(v68 + 32);
    v71 = ~v73;
    v70 = v68 + 64;
    v74 = -v73;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    else
    {
      v75 = -1;
    }

    v0 = v75 & *(v68 + 64);
    v72 = *(v154 + v153);
  }

  v170 = v158[34];
  v76 = (v71 + 64) >> 6;
  v163 = v158[33] & 0xFFFFFFFFFFFFFF8;
  v166 = v158[33];
  sub_21DBF8E0C();
  v17 = 0;
LABEL_71:
  v20 = 0x278332000;
  while (1)
  {
    v18 = v0;
    if ((v72 & 0x8000000000000000) != 0)
    {
      break;
    }

    v77 = v17;
    v78 = v0;
    if (!v0)
    {
      while (1)
      {
        v17 = (v77 + 1);
        if (__OFADD__(v77, 1))
        {
          break;
        }

        if (v17 >= v76)
        {
          goto LABEL_94;
        }

        v78 = *(v70 + 8 * v17);
        v77 = (v77 + 1);
        if (v78)
        {
          goto LABEL_77;
        }
      }

LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      v21 = sub_21DBFBD7C();
      goto LABEL_12;
    }

LABEL_77:
    v0 = (v78 - 1) & v78;
    v79 = *(*(v72 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v78)))));
    if (!v79)
    {
      goto LABEL_94;
    }

LABEL_81:
    v81 = [*(v170 + 48) *(v20 + 872)];
    if (v81)
    {
      if (!v166)
      {
        goto LABEL_88;
      }

      if (v166 >> 62)
      {
        v87 = v81;
        v88 = sub_21DBFBD7C();
        v81 = v87;
        if (!v88)
        {
          goto LABEL_88;
        }
      }

      else if (!*(v163 + 16))
      {
        goto LABEL_88;
      }

      v82 = v81;
      *v161 = v79;
      v83 = swift_task_alloc();
      *(v83 + 16) = v161;
      v84 = sub_21D17B954(sub_21D90B57C, v83, v166);

      if ((v84 & 1) == 0)
      {

LABEL_91:
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        goto LABEL_71;
      }

      v81 = v82;
LABEL_88:
      v85 = v81;
      v86 = [v81 listID];

      if (v86)
      {

        goto LABEL_71;
      }

      goto LABEL_91;
    }
  }

  v80 = sub_21DBFC2EC();
  if (v80)
  {
    v158[28] = v80;
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    swift_dynamicCast();
    v79 = v158[27];
    v20 = &selRef__setContentViewMarginType_;
    if (v79)
    {
      goto LABEL_81;
    }
  }

LABEL_94:
  v52 = sub_21D199874(v72);
  v89 = v171;
  v90 = v171 < 0 || (v171 & 0x4000000000000000) != 0;
  if (v90)
  {
    v52 = sub_21DBFBD7C();
    v91 = v158;
    if (!v52)
    {
      goto LABEL_117;
    }

LABEL_99:
    if (qword_27CE56E68 != -1)
    {
      swift_once();
    }

    v92 = sub_21DBF84BC();
    __swift_project_value_buffer(v92, qword_27CE63C48);

    v93 = sub_21DBF84AC();
    v94 = sub_21DBFAEDC();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v174 = v168;
      *v95 = 136315138;
      if (v90)
      {
        v96 = sub_21DBFBD7C();
      }

      else
      {
        v96 = *(v171 + 16);
      }

      v97 = MEMORY[0x277D84F90];
      if (v96)
      {
        v164 = v94;
        v172 = MEMORY[0x277D84F90];
        sub_21D18E678(0, v96 & ~(v96 >> 63), 0);
        if (v96 < 0)
        {
          __break(1u);
          goto LABEL_155;
        }

        v98 = 0;
        v97 = v172;
        do
        {
          if ((v89 & 0xC000000000000001) != 0)
          {
            v99 = MEMORY[0x223D44740](v98, v89);
          }

          else
          {
            v99 = *(v89 + 8 * v98 + 32);
          }

          v100 = v99;
          v101 = [v99 description];
          v102 = sub_21DBFA16C();
          v104 = v103;

          v106 = *(v172 + 16);
          v105 = *(v172 + 24);
          if (v106 >= v105 >> 1)
          {
            sub_21D18E678((v105 > 1), v106 + 1, 1);
          }

          ++v98;
          *(v172 + 16) = v106 + 1;
          v107 = v172 + 16 * v106;
          *(v107 + 32) = v102;
          *(v107 + 40) = v104;
        }

        while (v96 != v98);
        v91 = v158;
        LOBYTE(v94) = v164;
      }

      v108 = MEMORY[0x223D42DB0](v97, MEMORY[0x277D837D0]);
      v110 = v109;

      v111 = sub_21D0CDFB4(v108, v110, &v174);

      *(v95 + 4) = v111;
      _os_log_impl(&dword_21D0C9000, v93, v94, "TTRSECreateRemindersInteractor: remove reminders from saveRequest {objectIDs: %s}", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v168);
      MEMORY[0x223D46520](v168, -1, -1);
      MEMORY[0x223D46520](v95, -1, -1);
    }

    v112 = [*(v170 + 48) trackedReminderChangeItems];
    sub_21D7F6738(v89);
    v113 = sub_21DBFA5DC();

    [v112 removeObjectsForKeys_];

    goto LABEL_117;
  }

  v91 = v158;
  if (*(v171 + 16))
  {
    goto LABEL_99;
  }

LABEL_117:
  v114 = v91[34];
  v115 = *(v114 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedList);
  if (!v115)
  {

    goto LABEL_143;
  }

  v116 = *(v114 + 40);
  if (!v116)
  {
    goto LABEL_157;
  }

  v93 = v115;

  v117 = *(v116 + 160);
  v118 = *(v116 + 112);
  v119 = *(v116 + 64);
  v120 = v117;
  v121 = v118;

  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter(v91 + 2);

  v122 = v91[5];
  if (!v122)
  {

    sub_21D0CF7E0((v91 + 2), &qword_27CE59DC0, &qword_21DC0FBF0);
    goto LABEL_143;
  }

  v123 = v91[6];
  __swift_project_boxed_opaque_existential_1(v91 + 2, v91[5]);
  v89 = (*(v123 + 8))(v122, v123);
  __swift_destroy_boxed_opaque_existential_0(v91 + 2);
  v94 = [v93 objectID];
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  if (sub_21DBFB63C())
  {
    v124 = [v93 groceryContextChangeItem];
    if (v124)
    {
      v173 = v124;
      v125 = sub_21D0D8CF0(0, &qword_280D0C220, 0x277D44690);
      v126 = sub_21D0FB9CC(v125, &protocol witness table for REMListGroceryContextChangeItem);
    }

    else
    {
      v126 = 0;
    }

    if (qword_27CE56E68 != -1)
    {
      swift_once();
    }

    v136 = sub_21DBF84BC();
    __swift_project_value_buffer(v136, qword_27CE63C48);
    v137 = v94;
    v138 = sub_21DBF84AC();
    v139 = sub_21DBFAEDC();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      *v140 = 138412546;
      *(v140 + 4) = v137;
      *v141 = v137;
      *(v140 + 12) = 1024;
      *(v140 + 14) = v126 & 1;
      v142 = v137;
      _os_log_impl(&dword_21D0C9000, v138, v139, "TTRSECreateRemindersInteractor: will save new list {objectID: %@, isGroceryList: %{BOOL}d}", v140, 0x12u);
      sub_21D0CF7E0(v141, &unk_27CE60070, &unk_21DC09550);
      v143 = v141;
      v91 = v158;
      MEMORY[0x223D46520](v143, -1, -1);
      MEMORY[0x223D46520](v140, -1, -1);
    }

    if (v126)
    {
      v144 = sub_21DBF84AC();
      v145 = sub_21DBFAEDC();
      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        *v146 = 0;
        _os_log_impl(&dword_21D0C9000, v144, v145, "TTRSECreateRemindersInteractor: TTRUserDefault#hasCreatedGroceryList set to true after creating a new grocery list", v146, 2u);
        MEMORY[0x223D46520](v146, -1, -1);
      }

      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      v147 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
      if (v147)
      {
        v148 = sub_21DBFA12C();
        [v147 setBool:1 forKey:v148];
      }

      v149 = [objc_opt_self() daemonUserDefaults];
      [v149 setHasCreatedGroceryList_];
    }

    goto LABEL_143;
  }

  if (qword_27CE56E68 != -1)
  {
LABEL_155:
    swift_once();
  }

  v127 = sub_21DBF84BC();
  __swift_project_value_buffer(v127, qword_27CE63C48);
  v128 = v94;
  v129 = sub_21DBF84AC();
  v130 = sub_21DBFAEDC();

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *v131 = 138412290;
    *(v131 + 4) = v128;
    *v132 = v128;
    v133 = v128;
    _os_log_impl(&dword_21D0C9000, v129, v130, "TTRSECreateRemindersInteractor: remove unused uncommitted list from saveRequest {objectID: %@}", v131, 0xCu);
    sub_21D0CF7E0(v132, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v132, -1, -1);
    MEMORY[0x223D46520](v131, -1, -1);
  }

  [v93 removeFromParent];
  v134 = [*(v170 + 48) trackedListChangeItems];
  v135 = v128;
  [v134 removeObjectForKey_];

LABEL_143:
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v150 = sub_21DBFB12C();
  v91[46] = v150;
  v151 = swift_task_alloc();
  v91[47] = v151;
  *v151 = v91;
  v151[1] = sub_21D909744;
  v52 = v150;

  return MEMORY[0x2821A7AD0](v52);
}

uint64_t sub_21D909744()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_21D909930;
  }

  else
  {

    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_21D909860;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D909860()
{
  v1 = v0[45];
  v2 = v0[40];
  v3 = v0[38];
  v4 = v0[37];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_21D909930()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[40];
  v4 = v0[38];
  v5 = v0[37];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

void *sub_21D909A10(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = sub_21D983C2C(a1);
  swift_endAccess();
  if (v5)
  {
    v6 = [v5 userActivity];
    if (v6)
    {
    }

    else if (a3)
    {
      [v5 setUserActivity_];
    }

    v9 = sub_21DBF566C();
    [v5 setBatchCreationID_];
  }

  else
  {
    if (qword_27CE56E68 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE63C48);
    v8 = a1;
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEBC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_21D0C9000, v9, v10, "TTRSECreateRemindersInteractor: REMReminderChangeItem not found {objectID: %@}", v11, 0xCu);
      sub_21D0CF7E0(v12, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v12, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);
    }
  }

  return v5;
}

uint64_t sub_21D909C10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D1B795C;

  return sub_21D908118(a1, a2, a3, a4);
}

uint64_t sub_21D909CD4()
{
  v1[2] = v0;
  sub_21DBFA84C();
  v1[3] = sub_21DBFA83C();
  v3 = sub_21DBFA7CC();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_21D909D6C, v3, v2);
}

uint64_t sub_21D909D6C()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_21D909E08;

  return MEMORY[0x2821A7C88](v1);
}

uint64_t sub_21D909E08(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_21D909F98;
  }

  else
  {
    v4[8] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_21D909F30;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21D909F30()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_21D909F98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D909FFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D203124;

  return sub_21D90B620();
}

id sub_21D90A088()
{
  v1 = [v0 parentAccountID];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 saveRequest];
    v4 = [v3 _trackedAccountChangeItemForObjectID_];

    if (v4)
    {
      v5 = [v0 saveRequest];
      v6 = [v5 store];

      v7 = [v4 storage];
      v8 = [objc_allocWithZone(MEMORY[0x277D44548]) initWithStore:v6 storage:v7];

      return v8;
    }
  }

  if (qword_27CE56E68 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE63C48);
  v11 = v0;
  v12 = sub_21DBF84AC();
  v13 = sub_21DBFAEDC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = [v11 objectID];
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&dword_21D0C9000, v12, v13, "TTRSECreateRemindersInteractor#remListRepresentation: no account {objectID: %@}", v14, 0xCu);
    sub_21D0CF7E0(v15, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v15, -1, -1);
    MEMORY[0x223D46520](v14, -1, -1);
  }

  return 0;
}

uint64_t sub_21D90A2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_21DBFC0AC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_21D90A3CC, 0, 0);
}

uint64_t sub_21D90A3CC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_21DBFC0CC();
  v5 = sub_21D90BAA0(&qword_27CE63CC0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_21DBFC71C();
  sub_21D90BAA0(&qword_27CE63CC8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_21DBFC0DC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21D90A55C;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_21D90A55C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21D90A718, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_21D90A718()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_21D90A7E8()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v2 + 24);

    if (v3)
    {
      ObjectType = swift_getObjectType();
      v6 = 0;
      (*(v4 + 16))(&v6, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

char *sub_21D90A888(uint64_t a1)
{
  v1 = sub_21DBF6AEC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF6AFC();
  (*(v2 + 104))(v4, *MEMORY[0x277D45328], v1);
  v5 = sub_21DBF6ADC();
  (*(v2 + 8))(v4, v1);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v6 = sub_21DBFBD7C();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_3:
  v20 = MEMORY[0x277D84F90];
  result = sub_21D18E678(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v20;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223D44740](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 name];
      v13 = sub_21DBFA16C();
      v15 = v14;

      v20 = v9;
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21D18E678((v16 > 1), v17 + 1, 1);
        v9 = v20;
      }

      ++v8;
      *(v9 + 16) = v17 + 1;
      v18 = v9 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v6 != v8);

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D90AC24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D1B795C;

  return sub_21D9054FC(a1, v4, v5, v6);
}

unint64_t sub_21D90ACE8()
{
  result = qword_27CE63C60;
  if (!qword_27CE63C60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRSECreateRemindersModelChangeDetails, &type metadata for TTRSECreateRemindersModelChangeDetails, v0, v1);
    atomic_store(result, &qword_27CE63C60);
  }

  return result;
}

uint64_t dispatch thunk of TTRSECreateRemindersInteractorType.fetchAllHashtagLabelsAsync()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1237C4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of TTRSECreateRemindersInteractorActionContext.save(topLevelReminderIDs:subtaskIDByParentID:selectedReminderIDs:prefersUserActivityHiddenInRemindersList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 80) + **(a6 + 80));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_21D1B795C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of TTRSECreateRemindersInteractorSuggestionContext.fetchSuggestions()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D22C140;

  return v7(a1, a2);
}

void **assignWithCopy for TTRSECreateRemindersTerminationReason(void **a1, id *a2)
{
  v3 = *a2;
  v4 = *a2;
  v5 = *a1;
  *a1 = v3;

  return a1;
}

void **assignWithTake for TTRSECreateRemindersTerminationReason(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t type metadata accessor for ActionContext(uint64_t a1)
{
  result = qword_27CE63C90;
  if (!qword_27CE63C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D90B2F4(uint64_t a1)
{
  result = type metadata accessor for TTRExtensionContextExtractorResult(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void destroy for GroceryListCreationContext(uint64_t a1)
{

  v2 = *(a1 + 16);
}

void *sub_21D90B460(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 16);
  a1[2] = v5;
  v6 = v3;
  sub_21DBF8E0C();
  v7 = v5;
  return a1;
}

uint64_t assignWithCopy for GroceryListCreationContext(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v7 = *(a2 + 16);
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for GroceryListCreationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void *sub_21D90B5E4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_21D909A10(*a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_21D90B620()
{
  v1 = sub_21DBFC0CC();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_21DBFA84C();
  v0[5] = sub_21DBFA83C();
  v3 = sub_21DBFA7CC();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x2822009F8](sub_21D90B710, v3, v2);
}

uint64_t sub_21D90B710()
{
  sub_21DBFC73C();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_21D90B7DC;

  return sub_21D90A2CC(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_21D90B7DC()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 56);
  v7 = *(v2 + 48);
  if (v0)
  {
    v8 = sub_21D90B974;
  }

  else
  {
    v8 = sub_21D90B9E0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21D90B974()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D90B9E0()
{

  v1 = objc_allocWithZone(MEMORY[0x277D44790]);
  v2 = sub_21DBFA5DC();
  v3 = [v1 initWithSuggestedTitles:v2 isClassifiedAsRecipe:0];

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_21D90BAA0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D90BAE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D90BB5C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63CD0);
  v1 = __swift_project_value_buffer(v0, qword_27CE63CD0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double TTRSECreateRemindersPresenterCapability.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*TTRSECreateRemindersPresenterCapability.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRSECreateRemindersPresenterCapability.suggestionSectionItems.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  v2 = *(v1 + 32);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 24);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D97A914(v5 & 1, v2, v4, v3);
  v7 = v6;

  return v7;
}

uint64_t TTRSECreateRemindersPresenterCapability.isSuggestionFeedbackButtonVisible.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  v2 = *(v1 + 32);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 24);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D97AD40(v5 & 1, v2, v4, v3);
  v7 = v6;

  return v7 & 1;
}

uint64_t TTRSECreateRemindersPresenterCapability.editingState.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingPresenter);
  v4 = OBJC_IVAR____TtC15RemindersUICore36TTRSECreateRemindersEditingPresenter_state;
  swift_beginAccess();
  a1[3] = type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState(0);
  a1[4] = &off_282ED2D00;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_21D90BFC8(v3 + v4, boxed_opaque_existential_0, type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState);
}

uint64_t sub_21D90BFC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t TTRSECreateRemindersPresenterCapability.__allocating_init(interactor:attachmentThumbnailsManager:urlMetadataInteractor:contactsProvider:userActivityMetadataInterator:avatarProvider:geoService:undoManager:reminderEditingComponents:cellEditModeState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  v69 = a8;
  v78 = a7;
  v82 = a6;
  v68 = a5;
  v77 = a4;
  v76 = a3;
  v80 = a10;
  v81 = a9;
  v79 = a13;
  v67 = a12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v63 - v17;
  v19 = type metadata accessor for TTRRemindersListUndoContext(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = v13;
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  swift_unknownObjectWeakInit();
  v24 = OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_moduleState;
  type metadata accessor for TTRModuleState();
  swift_allocObject();
  v25 = sub_21D0D852C(0x6552657461657243, 0xEF737265646E696DLL);
  v73 = v23;
  *(v23 + v24) = v25;
  *(v23 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_isShowingRecipeCardIngredients) = 0;
  *(v23 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_pendingMoveTargetListChangedByUser) = 0;
  *(v23 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_cellsToUpdateCancellable) = 0;
  v26 = (v23 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor);
  *v26 = a1;
  v26[1] = a2;
  v27 = *(v19 + 20);
  v28 = type metadata accessor for TTRListType(0);
  v29 = *(*(v28 - 8) + 56);
  v71 = v22;
  v29(v22 + v27, 1, 1, v28);
  *v22 = a11;
  v70 = type metadata accessor for TTRRemindersListUndoContext;
  sub_21D90BFC8(v22, v18, type metadata accessor for TTRRemindersListUndoContext);
  (*(v20 + 56))(v18, 0, 1, v19);
  type metadata accessor for UndoContextProvider(0);
  v30 = swift_allocObject();
  sub_21D0D523C(v18, v30 + OBJC_IVAR____TtC15RemindersUICore19UndoContextProvider_undoContext, &qword_27CE59370, &unk_21DC0B390);
  type metadata accessor for TTRSECreateRemindersItemDisplayUpdater();
  v31 = swift_allocObject();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D18, &qword_21DC316B8);
  swift_allocObject();
  swift_unknownObjectRetain();
  v31[2] = sub_21DBF907C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D20, &qword_21DC316C0);
  swift_allocObject();
  v31[3] = sub_21DBF907C();
  v31[4] = 0;
  sub_21D0D32E4(v79, &v87);

  v32 = sub_21D91B008(v30, v31, &v87, 0);
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *(v33 + 24) = a2;
  v34 = a1;
  swift_unknownObjectRetain();

  v35 = v32;
  v36 = v32;
  v37 = v30;
  v38 = sub_21D91B27C(sub_21D91B548, v33, v35, v30, v31);
  v39 = swift_allocObject();
  *(v39 + 16) = v34;
  *(v39 + 24) = a2;
  v65 = v34;
  type metadata accessor for TTRSECreateRemindersEditingPresenter(0);
  v40 = swift_allocObject();
  *(v40 + 3) = 0;
  swift_unknownObjectWeakInit();
  v41 = OBJC_IVAR____TtC15RemindersUICore36TTRSECreateRemindersEditingPresenter_state;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0, &qword_21DC1D4B0);
  (*(*(v42 - 8) + 56))(&v40[v41], 1, 1, v42);
  *(v40 + 4) = sub_21D91B550;
  *(v40 + 5) = v39;
  *(v40 + 6) = v36;
  *(v40 + 7) = &off_282EC9F30;
  v66 = v37;
  *(v40 + 8) = v37;
  *(v40 + 9) = &off_282EDB578;
  v64 = v31;
  *(v40 + 10) = v31;
  *(v40 + 11) = &off_282ED8AE8;
  v63 = v38;
  *(v40 + 12) = v38;
  *(v40 + 13) = &off_282EC7FF0;
  type metadata accessor for TTRInCellEditingPresenterManagingHelper(0);
  swift_allocObject();
  swift_unknownObjectRetain();

  v75 = v36;

  v43 = sub_21DBCEC2C(v67);

  *(v40 + 14) = v43;
  swift_beginAccess();
  *(v43 + 3) = &off_282ED2CE8;
  swift_unknownObjectWeakAssign();
  sub_21D0D32E4(v82, &v87);
  sub_21D0D32E4(v81, v86);
  sub_21D0D32E4(v80, v83);
  type metadata accessor for TTRRemindersListPresenterCapabilityCore();
  v44 = swift_allocObject();
  v44[3] = 0;
  swift_unknownObjectWeakInit();
  v44[4] = v36;
  v44[5] = &off_282EC9F18;
  v45 = v77;
  v44[6] = v76;
  v44[7] = v45;
  v44[8] = v68;
  sub_21D0D32E4(&v87, (v44 + 9));
  v46 = v69;
  v44[14] = v78;
  v44[15] = v46;
  v44[16] = v40;
  v44[17] = &off_282ED2CD8;
  sub_21D0D32E4(v86, (v44 + 18));
  sub_21D0D32E4(v83, (v44 + 23));
  v47 = v84;
  v48 = v85;
  __swift_project_boxed_opaque_existential_1(v83, v84);
  v49 = *(v48 + 96);
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();

  v50 = v49(v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E720, &qword_21DC1CC70);
  v51 = swift_allocObject();
  *(v51 + 16) = 2;
  *(v51 + 40) = 0u;
  *(v51 + 56) = 0u;
  *(v51 + 24) = 0;
  *(v51 + 32) = v50;
  swift_beginAccess();
  *(v51 + 16) = 0;
  v44[28] = v51;
  v52 = swift_allocObject();
  swift_weakInit();
  sub_21D59F07C(sub_21D5BB894, 0, sub_21D72E84C, v52);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v86);
  __swift_destroy_boxed_opaque_existential_0(&v87);
  __swift_destroy_boxed_opaque_existential_0(v83);
  v53 = v73;
  *(v73 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_core) = v44;
  v54 = v71;
  sub_21D90BFC8(v71, v53 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_undoContext, v70);
  v55 = (v53 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  v56 = v75;
  *v55 = v75;
  v55[1] = &off_282EC9EB0;
  v57 = (v53 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_displayUpdater);
  v58 = v64;
  *v57 = v64;
  v57[1] = &off_282ED8AD0;
  v59 = (v53 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingSessionProvider);
  *v59 = v63;
  v59[1] = &off_282EC7FD8;
  v60 = (v53 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingPresenter);
  *v60 = v40;
  v60[1] = &off_282ED2C98;
  *(v56 + 64) = &off_282EDB548;
  swift_unknownObjectWeakAssign();
  *(v40 + 3) = &off_282EDB558;
  swift_unknownObjectWeakAssign();
  v87 = v58[2];
  sub_21D0D0F1C(&qword_27CE63D40, &qword_27CE63D18, &qword_21DC316B8, MEMORY[0x277CBCE20]);

  v87 = sub_21DBF920C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D48, &qword_21DC316C8);
  sub_21D0D0F1C(&qword_27CE63D50, &qword_27CE63D48, &qword_21DC316C8, MEMORY[0x277CBCD90]);
  v61 = sub_21DBF91AC();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v79);
  __swift_destroy_boxed_opaque_existential_0(v80);
  __swift_destroy_boxed_opaque_existential_0(v81);
  __swift_destroy_boxed_opaque_existential_0(v82);

  sub_21D91BA78(v54, type metadata accessor for TTRRemindersListUndoContext);
  *(v53 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_cellsToUpdateCancellable) = v61;

  return v53;
}

void *TTRSECreateRemindersPresenterCapability.init(interactor:attachmentThumbnailsManager:urlMetadataInteractor:contactsProvider:userActivityMetadataInterator:avatarProvider:geoService:undoManager:reminderEditingComponents:cellEditModeState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  v68 = a8;
  v77 = a7;
  v81 = a6;
  v67 = a5;
  v76 = a4;
  v75 = a3;
  v79 = a10;
  v80 = a9;
  v78 = a13;
  v66 = a12;
  v73 = *v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v62 - v17;
  v19 = type metadata accessor for TTRRemindersListUndoContext(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13[3] = 0;
  swift_unknownObjectWeakInit();
  v23 = OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_moduleState;
  type metadata accessor for TTRModuleState();
  swift_allocObject();
  v24 = sub_21D0D852C(0x6552657461657243, 0xEF737265646E696DLL);
  v72 = v13;
  *(v13 + v23) = v24;
  *(v13 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_isShowingRecipeCardIngredients) = 0;
  *(v13 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_pendingMoveTargetListChangedByUser) = 0;
  *(v13 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_cellsToUpdateCancellable) = 0;
  v25 = (v13 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor);
  *v25 = a1;
  v25[1] = a2;
  v26 = *(v19 + 20);
  v27 = type metadata accessor for TTRListType(0);
  v28 = *(*(v27 - 8) + 56);
  v70 = v22;
  v28(v22 + v26, 1, 1, v27);
  *v22 = a11;
  v69 = type metadata accessor for TTRRemindersListUndoContext;
  sub_21D90BFC8(v22, v18, type metadata accessor for TTRRemindersListUndoContext);
  (*(v20 + 56))(v18, 0, 1, v19);
  type metadata accessor for UndoContextProvider(0);
  v29 = swift_allocObject();
  sub_21D0D523C(v18, v29 + OBJC_IVAR____TtC15RemindersUICore19UndoContextProvider_undoContext, &qword_27CE59370, &unk_21DC0B390);
  type metadata accessor for TTRSECreateRemindersItemDisplayUpdater();
  v30 = swift_allocObject();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D18, &qword_21DC316B8);
  swift_allocObject();
  swift_unknownObjectRetain();
  v30[2] = sub_21DBF907C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D20, &qword_21DC316C0);
  swift_allocObject();
  v30[3] = sub_21DBF907C();
  v30[4] = 0;
  sub_21D0D32E4(v78, &v86);

  v31 = sub_21D91B008(v29, v30, &v86, 0);
  v32 = swift_allocObject();
  v33 = a1;
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  swift_unknownObjectRetain();

  v34 = v31;
  v35 = v31;
  v36 = v29;
  v37 = sub_21D91B27C(sub_21D92C400, v32, v34, v29, v30);
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  *(v38 + 24) = a2;
  v64 = v33;
  type metadata accessor for TTRSECreateRemindersEditingPresenter(0);
  v39 = swift_allocObject();
  *(v39 + 3) = 0;
  swift_unknownObjectWeakInit();
  v40 = OBJC_IVAR____TtC15RemindersUICore36TTRSECreateRemindersEditingPresenter_state;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0, &qword_21DC1D4B0);
  (*(*(v41 - 8) + 56))(&v39[v40], 1, 1, v41);
  *(v39 + 4) = sub_21D92C404;
  *(v39 + 5) = v38;
  *(v39 + 6) = v35;
  *(v39 + 7) = &off_282EC9F30;
  v65 = v36;
  *(v39 + 8) = v36;
  *(v39 + 9) = &off_282EDB578;
  v63 = v30;
  *(v39 + 10) = v30;
  *(v39 + 11) = &off_282ED8AE8;
  v62 = v37;
  *(v39 + 12) = v37;
  *(v39 + 13) = &off_282EC7FF0;
  type metadata accessor for TTRInCellEditingPresenterManagingHelper(0);
  swift_allocObject();
  swift_unknownObjectRetain();

  v74 = v35;

  v42 = sub_21DBCEC2C(v66);

  *(v39 + 14) = v42;
  swift_beginAccess();
  *(v42 + 3) = &off_282ED2CE8;
  swift_unknownObjectWeakAssign();
  sub_21D0D32E4(v81, &v86);
  sub_21D0D32E4(v80, v85);
  sub_21D0D32E4(v79, v82);
  type metadata accessor for TTRRemindersListPresenterCapabilityCore();
  v43 = swift_allocObject();
  v43[3] = 0;
  swift_unknownObjectWeakInit();
  v43[4] = v35;
  v43[5] = &off_282EC9F18;
  v44 = v76;
  v43[6] = v75;
  v43[7] = v44;
  v43[8] = v67;
  sub_21D0D32E4(&v86, (v43 + 9));
  v45 = v68;
  v43[14] = v77;
  v43[15] = v45;
  v43[16] = v39;
  v43[17] = &off_282ED2CD8;
  sub_21D0D32E4(v85, (v43 + 18));
  sub_21D0D32E4(v82, (v43 + 23));
  v46 = v83;
  v47 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v48 = *(v47 + 96);
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();

  v49 = v48(v46, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E720, &qword_21DC1CC70);
  v50 = swift_allocObject();
  *(v50 + 16) = 2;
  *(v50 + 40) = 0u;
  *(v50 + 56) = 0u;
  *(v50 + 24) = 0;
  *(v50 + 32) = v49;
  swift_beginAccess();
  *(v50 + 16) = 0;
  v43[28] = v50;
  v51 = swift_allocObject();
  swift_weakInit();
  sub_21D59F07C(sub_21D5BB894, 0, sub_21D92C408, v51);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v85);
  __swift_destroy_boxed_opaque_existential_0(&v86);
  __swift_destroy_boxed_opaque_existential_0(v82);
  v52 = v72;
  *(v72 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_core) = v43;
  v53 = v70;
  sub_21D90BFC8(v70, v52 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_undoContext, v69);
  v54 = (v52 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  v55 = v74;
  *v54 = v74;
  v54[1] = &off_282EC9EB0;
  v56 = (v52 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_displayUpdater);
  v57 = v63;
  *v56 = v63;
  v56[1] = &off_282ED8AD0;
  v58 = (v52 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingSessionProvider);
  *v58 = v62;
  v58[1] = &off_282EC7FD8;
  v59 = (v52 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingPresenter);
  *v59 = v39;
  v59[1] = &off_282ED2C98;
  *(v55 + 64) = &off_282EDB548;
  swift_unknownObjectWeakAssign();
  *(v39 + 3) = &off_282EDB558;
  swift_unknownObjectWeakAssign();
  v86 = v57[2];
  sub_21D0D0F1C(&qword_27CE63D40, &qword_27CE63D18, &qword_21DC316B8, MEMORY[0x277CBCE20]);

  v86 = sub_21DBF920C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D48, &qword_21DC316C8);
  sub_21D0D0F1C(&qword_27CE63D50, &qword_27CE63D48, &qword_21DC316C8, MEMORY[0x277CBCD90]);
  v60 = sub_21DBF91AC();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v78);
  __swift_destroy_boxed_opaque_existential_0(v79);
  __swift_destroy_boxed_opaque_existential_0(v80);
  __swift_destroy_boxed_opaque_existential_0(v81);

  sub_21D91BA78(v53, type metadata accessor for TTRRemindersListUndoContext);
  *(v52 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_cellsToUpdateCancellable) = v60;

  return v52;
}

double sub_21D90D5F4(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63DE8, &qword_21DC318D8);
  type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  sub_21D0D0F1C(&qword_27CE63DF0, &qword_27CE63DE8, &qword_21DC318D8, MEMORY[0x277D83970]);
  sub_21D92C334(&qword_27CE63DF8, type metadata accessor for TTRSECreateRemindersViewModel.ItemID, protocol conformance descriptor for TTRSECreateRemindersViewModel.ItemID);
  v3 = sub_21DBFA49C();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(a1, v3, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

uint64_t sub_21D90D764@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D90BFC8(a1, v7, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if ((EnumCaseMultiPayload - 1) >= 3)
    {
      *a2 = *v7;
    }

    else
    {
      sub_21D91BAD8(v7, v10, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D91BAD8(v10, a2, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    }
  }

  type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  return swift_storeEnumTagMultiPayload();
}

Swift::Void __swiftcall TTRSECreateRemindersPresenterCapability.setUp(withInitialReminders:recipeCardIngredients:)(Swift::OpaquePointer withInitialReminders, Swift::OpaquePointer_optional recipeCardIngredients)
{
  v3 = v2;
  rawValue = recipeCardIngredients.value._rawValue;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
  ObjectType = swift_getObjectType();
  if ((*(v9 + 8))(ObjectType, v9))
  {
    v12 = v11;
    v13 = swift_getObjectType();
    v14 = (*(v12 + 40))(v13, v12);
    v16 = v15;
    swift_unknownObjectRelease();
    if (!rawValue)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (!rawValue)
    {
      goto LABEL_7;
    }
  }

  if (rawValue[2])
  {
    v17 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
LABEL_8:
  *(*(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 72) = v17;
  *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_isShowingRecipeCardIngredients) = v17;
  if (v14)
  {
    v18 = sub_21D97B494(0, MEMORY[0x277D84F90], 0);
    v20 = v19;
    v21 = v18 & 0x101;
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_21D643F10(withInitialReminders._rawValue, v21, v19, v22, v23, &v28);

    sub_21D24A814(v21, v20);
    sub_21D0CF7E0(&v28, &unk_27CE60D80, &unk_21DC093F0);
    v24 = sub_21DBFA89C();
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    sub_21DBFA84C();

    swift_unknownObjectRetain();
    v25 = sub_21DBFA83C();
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D85700];
    v26[2] = v25;
    v26[3] = v27;
    v26[4] = v3;
    v26[5] = v14;
    v26[6] = v16;
    sub_21D1B5178(0, 0, v8, &unk_21DC316D8, v26);

    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_21D643F10(withInitialReminders._rawValue, 0, 0, 0, 0, &v28);

    sub_21D24A814(0, 0);
    sub_21D0CF7E0(&v28, &unk_27CE60D80, &unk_21DC093F0);
  }
}

uint64_t sub_21D90DC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_21DBFA84C();
  v6[3] = sub_21DBFA83C();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_21D0EF998;

  return sub_21D90DCE4(a5, a6);
}

uint64_t sub_21D90DCE4(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = sub_21DBFA84C();
  v3[18] = sub_21DBFA83C();
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 8) + **(a2 + 8));
  v6 = swift_task_alloc();
  v3[19] = v6;
  *v6 = v3;
  v6[1] = sub_21D90DE30;

  return v8(ObjectType, a2);
}

uint64_t sub_21D90DE30(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  v5 = sub_21DBFA7CC();
  if (v1)
  {
    v6 = sub_21D90E488;
  }

  else
  {
    v6 = sub_21D90DF90;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21D90DF90()
{
  v62 = v0;
  v1 = *(v0 + 160);

  v2 = &selRef_setDisplayText_;
  v3 = [v1 suggestedTitles];
  v4 = sub_21DBFA5EC();

  v5 = *(v4 + 16);
  if (v5)
  {
    v55 = v0;
    v59 = MEMORY[0x277D84F90];
    sub_21D18F60C(0, v5, 0);
    v6 = v59;
    v7 = objc_opt_self();
    v8 = (v4 + 40);
    v9 = &selRef_keyboardType;
    do
    {
      v10 = *(v8 - 1);
      v11 = *v8;
      sub_21DBF8E0C();
      v12 = [v7 v9[419]];
      v59 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v12;
        sub_21D18F60C((v13 > 1), v14 + 1, 1);
        v9 = &selRef_keyboardType;
        v12 = v16;
        v6 = v59;
      }

      *(v6 + 16) = v14 + 1;
      v15 = (v6 + 24 * v14);
      v15[4] = v12;
      v15[5] = v10;
      v15[6] = v11;
      v8 += 2;
      --v5;
    }

    while (v5);

    v0 = v55;
    v2 = &selRef_setDisplayText_;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v17 = *(v0 + 160);
  v18 = sub_21D97B494(1, v6, [v17 isClassifiedAsRecipe]);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [v17 isClassifiedAsRecipe];
  v26 = *(v0 + 160);
  if (v25)
  {
    v27 = [*(v0 + 160) v2[366]];
    v28 = sub_21DBFA5EC();

    v29 = *(v28 + 16);

    v30 = v29 != 0;
  }

  else
  {

    v30 = 0;
  }

  v31 = *(*(v0 + 128) + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  sub_21D24A7C4(v18 & 0x101, v20, v22, v24);
  sub_21D64D878(v31, v18 & 0x101, v20, v22, v24);
  sub_21D24A814(v18 & 0x101, v20);
  v32.n128_f64[0] = sub_21D24A814(v18 & 0x101, v20);
  if (v30)
  {
    v33 = *(*(v0 + 128) + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
    ObjectType = swift_getObjectType();
    if ((*(v33 + 8))(ObjectType, v33))
    {
      v36 = v35;
      v37 = swift_getObjectType();
      (*(v36 + 24))(&v56, v37, v36);
      v39 = v56;
      v38 = v57;
      v40 = v58;
      v59 = v56;
      v60 = v57;
      v61 = v58;
      TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter((v0 + 56));

      v41 = *(v0 + 80);
      if (v41)
      {
        v42 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        (*(v42 + 112))(v41, v42);
        v43 = *(v0 + 40);
        if (v43)
        {
          v44 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
          v45 = (*(v44 + 16))(v43, v44);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          __swift_destroy_boxed_opaque_existential_0((v0 + 56));
          if (v45)
          {
LABEL_26:
            swift_unknownObjectRelease();
            goto LABEL_27;
          }

LABEL_20:
          if ((*(*(v0 + 128) + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_pendingMoveTargetListChangedByUser) & 1) == 0)
          {
            if (qword_27CE56E70 != -1)
            {
              swift_once();
            }

            v49 = sub_21DBF84BC();
            __swift_project_value_buffer(v49, qword_27CE63CD0);
            v50 = sub_21DBF84AC();
            v51 = sub_21DBFAEDC();
            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              *v52 = 0;
              _os_log_impl(&dword_21D0C9000, v50, v51, "TTRSECreateRemindersPresenterCapability: input is classified as recipe with suggested ingredients, switch to a grocery list if available", v52, 2u);
              MEMORY[0x223D46520](v52, -1, -1);
            }

            (*(v36 + 64))(v37, v36);
          }

          goto LABEL_26;
        }

        __swift_destroy_boxed_opaque_existential_0((v0 + 56));
        v46 = &qword_27CE5A6E8;
        v47 = &unk_21DC187C0;
        v48 = v0 + 16;
      }

      else
      {
        v46 = &qword_27CE59DC0;
        v47 = &qword_21DC0FBF0;
        v48 = v0 + 56;
      }

      sub_21D0CF7E0(v48, v46, v47);
      goto LABEL_20;
    }
  }

LABEL_27:
  v53 = *(v0 + 8);

  return v53(v32);
}

uint64_t sub_21D90E488()
{
  v18 = v0;

  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE63CD0);
  v3 = v1;
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
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
    _os_log_impl(&dword_21D0C9000, v4, v5, "TTRSECreateRemindersPresenterCapability: failed to fetch suggestions {error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0[16] + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  sub_21D24A7C4(0, 0, 0, 0);
  sub_21D64D878(v13, 0, 0, 0, 0);
  sub_21D24A814(0, 0);
  v14.n128_f64[0] = sub_21D24A814(0, 0);
  v15 = v0[1];

  return v15(v14);
}

Swift::Void __swiftcall TTRSECreateRemindersPresenterCapability.handleInteractorChanges(details:)(RemindersUICore::TTRSECreateRemindersModelChangeDetails details)
{
  if (*details)
  {
    v2 = *(*(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 16);
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A60, &unk_21DC316E0);
    v8 = *(type metadata accessor for TTRSECreateRemindersViewModel.Item(0) - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21DC08D00;
    swift_storeEnumTagMultiPayload();
    sub_21D8977FC(v10);
    swift_setDeallocating();
    sub_21D91BA78(v10 + v9, type metadata accessor for TTRSECreateRemindersViewModel.Item);
    swift_deallocClassInstance();
    v11 = *(*(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 16);
    v3 = *(v11 + 24);
    v4 = *(v11 + 32);
  }

  ObjectType = swift_getObjectType();
  v12 = v3;
  v6 = *(v4 + 8);

  TTRTreeContentsQueryable.allItems.getter(ObjectType, v6);
  v7 = sub_21DBFC12C();

  v12 = 1;
  sub_21D897284(&v12, v7);
}

uint64_t TTRSECreateRemindersPresenterCapability.reminderViewModel(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRSECreateRemindersViewModel.Item.CasesForItemCells(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D90BFC8(a1, v12, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21D91BAD8(v12, v15, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_21D91BAD8(v12, v15, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  }

  swift_storeEnumTagMultiPayload();
  v17 = swift_getEnumCaseMultiPayload();
  if ((v17 - 2) >= 4)
  {
    if (v17)
    {
      sub_21D91BAD8(v15, v9, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRSECreateRemindersPresenterCapability.reminderViewModel(forRemindersListItem:)(v9, a2);
      v20 = type metadata accessor for TTRRemindersListViewModel.Item;
      v21 = v9;
    }

    else
    {
      sub_21D91BAD8(v15, v6, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D90F59C(v6, a2);
      v20 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
      v21 = v6;
    }

    return sub_21D91BA78(v21, v20);
  }

  else
  {
    v18 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }
}

uint64_t TTRSECreateRemindersPresenterCapability.reminderViewModel(forRemindersListItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49[-v5];
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v49[-v11];
  v13 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v19 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v49[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D90BFC8(a1, v12, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 5) >= 4)
    {
      if ((EnumCaseMultiPayload - 9) >= 2)
      {
        v52 = a1;
        v22 = a2;
        goto LABEL_10;
      }

LABEL_7:
      swift_storeEnumTagMultiPayload();
      return (*(v19 + 56))(a2, 1, 1, v56);
    }

LABEL_6:
    sub_21D91BA78(v12, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload < 2)
  {
    goto LABEL_6;
  }

  v52 = a1;
  v22 = a2;
LABEL_10:
  sub_21D91BAD8(v12, v15, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();
  a2 = v22;
  if (swift_getEnumCaseMultiPayload() >= 3)
  {
    return (*(v19 + 56))(a2, 1, 1, v56);
  }

  sub_21D91BAD8(v15, v18, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v24 = v52;
  sub_21D9181C4(&v57);
  if (*(&v58 + 1))
  {
    sub_21D91BA78(v18, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v60[0] = v57;
    v60[1] = v58;
    v60[2] = v59;
    v25 = v54;
    sub_21D918358(v60, v24, v54);
    sub_21D4ECC40(v60);
  }

  else
  {
    sub_21D0CF7E0(&v57, &qword_27CE5D168, &qword_21DC316F0);
    sub_21D90BFC8(v24, v6, type metadata accessor for TTRRemindersListViewModel.Item);
    (*(v53 + 56))(v6, 0, 1, v7);
    v26 = *v18;
    sub_21D91BA78(v18, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v25 = v54;
    TTRRemindersListViewModel.Reminder.init(item:objectID:)(v6, v26, v54);
  }

  sub_21D90BFC8(v24, v9, type metadata accessor for TTRRemindersListViewModel.Item);
  v27 = swift_getEnumCaseMultiPayload();
  sub_21D91BA78(v9, type metadata accessor for TTRRemindersListViewModel.Item);
  v51 = a2;
  if (v27 == 4)
  {
    if (qword_280D15960 != -1)
    {
      swift_once();
    }

    v28 = word_280D15968;
    v29 = HIBYTE(word_280D15968);
    v30 = byte_280D1596A;
    LODWORD(v53) = word_280D15980;
    v50 = HIBYTE(word_280D15980);
    v31 = qword_280D1BAA8;
    sub_21DBF8E0C();
    if (v31 != -1)
    {
      swift_once();
    }

    v32 = sub_21DBF516C();
    v34 = v33;

    v35 = v56;
    v25 = v54;
    v36 = &v54[*(v56 + 24)];
    sub_21DBF8E0C();

    *v36 = v28;
    v36[1] = v29;
    v36[2] = v30;
    *(v36 + 1) = v32;
    *(v36 + 2) = v34;
    v36[24] = v53;
    v36[25] = v50;
  }

  else
  {
    if (qword_27CE569D8 != -1)
    {
      swift_once();
    }

    v37 = word_27CE5DB98;
    v38 = HIBYTE(word_27CE5DB98);
    v39 = byte_27CE5DB9A;
    v41 = qword_27CE5DBA0;
    v40 = unk_27CE5DBA8;
    LODWORD(v54) = word_27CE5DBB0;
    LODWORD(v53) = HIBYTE(word_27CE5DBB0);
    v35 = v56;
    v42 = &v25[*(v56 + 24)];
    sub_21DBF8E0C();

    *v42 = v37;
    v42[1] = v38;
    v42[2] = v39;
    *(v42 + 1) = v41;
    *(v42 + 2) = v40;
    v42[24] = v54;
    v42[25] = v53;
  }

  v43 = &v25[*(v35 + 52)];
  if (*(v43 + 3))
  {
    v44 = *(*(v55 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_core) + 224);
    swift_beginAccess();
    v43[48] = *(v44 + 16) & 1;
  }

  v45 = v52;
  sub_21D918568(v25, v52, sub_21D92C40C, TTRRemindersListPresenterCapabilityCore.decorateWithImageAttachments(_:for:viewScale:thumbnailDidLoad:));
  v46 = swift_allocObject();
  swift_weakInit();

  TTRRemindersListPresenterCapabilityCore.decorateWithLinkAttachments(_:for:linkDidLoad:)(v25, v45, sub_21D92C40C, v46);

  v47 = swift_allocObject();
  swift_weakInit();

  TTRRemindersListPresenterCapabilityCore.decorateWithPerson(_:for:personDidLoad:)(v25, v45, sub_21D91BB40, v47);

  sub_21D918568(v25, v45, sub_21D92C40C, TTRRemindersListPresenterCapabilityCore.decorateWithAppLink(_:for:viewScale:appLinkDidLoad:));
  sub_21D918694(v25, v45);
  v48 = v51;
  sub_21D90BFC8(v25, v51, type metadata accessor for TTRRemindersListViewModel.Reminder);
  (*(v19 + 56))(v48, 0, 1, v35);
  return sub_21D91BA78(v25, type metadata accessor for TTRRemindersListViewModel.Reminder);
}

uint64_t sub_21D90F59C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v42 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  if (*(v17 + 32))
  {
    v18 = *(v17 + 48);
    if (*(v18 + 16))
    {
      v44 = v13;
      v45 = a2;
      v19 = *a1;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v20 = sub_21D17E07C(v19);
      if (v21)
      {
        v22 = *(v18 + 56) + 24 * v20;
        v23 = *v22;
        v24 = *(v22 + 8);
        v42[0] = v19;
        v42[1] = v24;
        v25 = *(v22 + 16);
        v43 = v23;
        sub_21DBF8E0C();

        sub_21D90BFC8(a1, v16, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v26 = v44;
        swift_storeEnumTagMultiPayload();
        sub_21D90BFC8(v16, v7, type metadata accessor for TTRRemindersListViewModel.Item);
        (*(v12 + 56))(v7, 0, 1, v26);
        TTRRemindersListViewModel.Reminder.init(item:objectID:)(v7, v42[0], v10);
        v27 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v44 = v25;
        v28 = sub_21DBFA12C();
        v29 = [v27 initWithString_];

        v30 = *(v8 + 28);
        *&v10[v30] = v29;
        if (qword_27CE569E0 != -1)
        {
          swift_once();
        }

        v31 = word_27CE5DBB8;
        v32 = HIBYTE(word_27CE5DBB8);
        v33 = byte_27CE5DBBA;
        v35 = qword_27CE5DBC0;
        v34 = unk_27CE5DBC8;
        v36 = word_27CE5DBD0;
        v37 = HIBYTE(word_27CE5DBD0);
        sub_21DBF8E0C();

        sub_21D91BA78(v16, type metadata accessor for TTRRemindersListViewModel.Item);
        v38 = &v10[*(v8 + 24)];

        *v38 = v31;
        v38[1] = v32;
        v38[2] = v33;
        *(v38 + 1) = v35;
        *(v38 + 2) = v34;
        v38[24] = v36;
        v38[25] = v37;
        v39 = v45;
        sub_21D90BFC8(v10, v45, type metadata accessor for TTRRemindersListViewModel.Reminder);
        (*(v46 + 56))(v39, 0, 1, v8);
        return sub_21D91BA78(v10, type metadata accessor for TTRRemindersListViewModel.Reminder);
      }

      a2 = v45;
    }
  }

  v41 = *(v46 + 56);

  return v41(a2, 1, 1, v8, v14);
}

uint64_t TTRSECreateRemindersPresenterCapability.reminderChangeItem(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource + 8);
  ObjectType = swift_getObjectType();
  return (*(*(v3 + 8) + 16))(a1, ObjectType);
}

void TTRSECreateRemindersPresenterCapability.requestSetPendingMoveTargetList(_:)(char **a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v4 - 8);
  v82 = v76 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A8, &qword_21DC0F3E8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v76 - v10;
  v91 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v12 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v14 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v86 = v76 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v76 - v18;
  v20 = *a1;
  v87 = *(a1 + 8);
  if (qword_27CE56E70 != -1)
  {
LABEL_61:
    swift_once();
  }

  v21 = sub_21DBF84BC();
  v22 = __swift_project_value_buffer(v21, qword_27CE63CD0);
  v23 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Create Reminders Set Target List", 32, 2, v23);

  v24 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
  ObjectType = swift_getObjectType();
  v26 = (*(v24 + 8))(ObjectType, v24);
  v89 = v27;
  v90 = v26;
  if (v26)
  {
    v80 = v22;
    v81 = v14;
    v85 = v20;
    v28 = *(*(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingPresenter) + 112);
    swift_beginAccess();
    if (*(v28 + 40))
    {
      v29 = *(v28 + 48);
      v30 = swift_getObjectType();
      v31 = *(v29 + 24);
      swift_unknownObjectRetain();
      v31(v30, v29);
      swift_unknownObjectRelease();
    }

    _s15RemindersUICore17TTRDeferredActionC5drain6reasonySS_tF_0();
    v32 = swift_getObjectType();
    v33 = *(v89 + 24);
    v84 = v32;
    v33(&v98);
    v35 = v98;
    v34 = v99;
    v36 = v100;
    v95 = v98;
    v96 = v99;
    v97 = v100;
    TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter(&v93);
    if (!v94)
    {
      sub_21D0CF7E0(&v93, &qword_27CE59DC0, &qword_21DC0FBF0);

LABEL_18:
      v47 = v85;
LABEL_19:
      v101 = v47;
      v102 = v87;
      (*(v89 + 56))(&v101, v84);
      swift_unknownObjectRelease();
      *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_pendingMoveTargetListChangedByUser) = 1;
      return;
    }

    sub_21D0D0FD0(&v93, &v101);

    v37 = v103;
    v38 = v104;
    __swift_project_boxed_opaque_existential_1(&v101, v103);
    v39 = (*(v38 + 72))(v37, v38);
    v40 = [v39 supportsSubtasks];

    if (!v40)
    {
      goto LABEL_17;
    }

    if (v87)
    {
      v41 = [v85 accountCapabilities];
    }

    else
    {
      v45 = [v85 account];
      v41 = [v45 capabilities];
    }

    v46 = [v41 supportsSubtasks];

    if (v46)
    {
LABEL_17:
      __swift_destroy_boxed_opaque_existential_0(&v101);
      goto LABEL_18;
    }

    v78 = v2;
    v77 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);

    TTRRemindersListTreeViewModel.remindersWithSubtasks.getter();
    v2 = *(v48 + 16);
    if (v2)
    {
      v49 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v76[1] = v48;
      v83 = v49;
      v50 = v48 + v49;
      v92 = v12[9];
      v79 = (v12 + 7);
      v12 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_21D90BFC8(v50, v19, type metadata accessor for TTRRemindersListViewModel.Item);
        v51 = *(v88 + 80);

        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
        swift_beginAccess();
        if (!*(*(v51 + 24) + 16))
        {
          break;
        }

        sub_21D181E00();
        if ((v52 & 1) == 0)
        {
          break;
        }

        swift_endAccess();

        sub_21D91BA78(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
        Strong = swift_weakLoadStrong();

        if (!Strong)
        {
          goto LABEL_30;
        }

        v54 = *(*Strong + 120);
        swift_beginAccess();
        v55 = Strong + v54;
        v56 = v86;
        sub_21D90BFC8(v55, v86, type metadata accessor for TTRRemindersListViewModel.Item);

        v57 = v81;
        sub_21D90BFC8(v56, v81, type metadata accessor for TTRRemindersListViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21D91BAD8(v57, v11, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          v58 = 0;
        }

        else
        {
          sub_21D91BA78(v57, type metadata accessor for TTRRemindersListViewModel.Item);
          v58 = 1;
        }

        v67 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v68 = *(v67 - 8);
        (*(v68 + 56))(v11, v58, 1, v67);
        sub_21D91BA78(v86, type metadata accessor for TTRRemindersListViewModel.Item);
        if ((*(v68 + 48))(v11, 1, v67) == 1)
        {
          goto LABEL_31;
        }

        sub_21D0CF7E0(v11, &qword_27CE5A3A8, &qword_21DC0F3E8);
        v69 = v82;
        sub_21D90BFC8(v19, v82, type metadata accessor for TTRRemindersListViewModel.Item);
        (*v79)(v69, 0, 1, v91);

        v60 = sub_21D263398(v69);

        sub_21D0CF7E0(v69, &unk_27CE5CD80, &qword_21DC0CE80);
LABEL_32:
        v20 = *(v60 + 16);
        v61 = v12[2];
        v14 = &v20[v61];
        if (__OFADD__(v61, v20))
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v14 <= v12[3] >> 1)
        {
          if (!*(v60 + 16))
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v61 <= v14)
          {
            v63 = &v20[v61];
          }

          else
          {
            v63 = v61;
          }

          v12 = sub_21D211A80(isUniquelyReferenced_nonNull_native, v63, 1, v12);
          if (!*(v60 + 16))
          {
LABEL_22:

            if (v20)
            {
              goto LABEL_59;
            }

            goto LABEL_23;
          }
        }

        if ((v12[3] >> 1) - v12[2] < v20)
        {
          goto LABEL_60;
        }

        swift_arrayInitWithCopy();

        if (v20)
        {
          v64 = v12[2];
          v65 = __OFADD__(v64, v20);
          v66 = &v20[v64];
          if (v65)
          {
            __break(1u);
            return;
          }

          v12[2] = v66;
        }

LABEL_23:
        sub_21D91BA78(v19, type metadata accessor for TTRRemindersListViewModel.Item);
        v50 += v92;
        if (!--v2)
        {

          goto LABEL_50;
        }
      }

      swift_endAccess();
      sub_21D91BA78(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);

LABEL_30:
      v59 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      (*(*(v59 - 8) + 56))(v11, 1, 1, v59);
LABEL_31:
      sub_21D0CF7E0(v11, &qword_27CE5A3A8, &qword_21DC0F3E8);
      v60 = MEMORY[0x277D84F90];
      goto LABEL_32;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_50:
    v2 = v78;
    v47 = v85;
    v70 = v77;
    if (v12[2])
    {
      sub_21DBF8E0C();
      v71 = sub_21DBF84AC();
      v72 = sub_21DBFAEDC();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 134217984;
        *(v73 + 4) = v12[2];

        _os_log_impl(&dword_21D0C9000, v71, v72, "TTRSECreateRemindersPresenterCapability: outdent subtasks before changing list {count: %ld}", v73, 0xCu);
        MEMORY[0x223D46520](v73, -1, -1);
      }

      else
      {
      }

      v74 = *(v70 + 16);

      v75 = sub_21D285D24(v12, 1, v74);

      v47 = v85;
      if (!v75)
      {
        goto LABEL_57;
      }

      sub_21D64A230(v75);
    }

LABEL_57:

    __swift_destroy_boxed_opaque_existential_0(&v101);
    goto LABEL_19;
  }

  v92 = sub_21DBF84AC();
  v42 = sub_21DBFAEBC();
  if (os_log_type_enabled(v92, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_21D0C9000, v92, v42, "TTRSECreateRemindersPresenterCapability: cannot set list; missing actionContext", v43, 2u);
    MEMORY[0x223D46520](v43, -1, -1);
  }

  v44 = v92;
}

uint64_t TTRSECreateRemindersPresenterCapability.requestSave(selectedItemIDs:)(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  v3 = sub_21DBF619C();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v4 = sub_21DBF613C();
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v2[36] = swift_task_alloc();
  type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v2[37] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D58, &qword_21DC31700);
  v2[38] = v5;
  v2[39] = *(v5 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D60, &qword_21DC31708);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D68, &unk_21DC31710);
  v2[54] = v6;
  v2[55] = *(v6 - 8);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v2[70] = v7;
  v2[71] = *(v7 - 8);
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  sub_21DBFA84C();
  v2[76] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();
  v2[77] = v9;
  v2[78] = v8;

  return MEMORY[0x2822009F8](sub_21D910B98, v9, v8);
}

uint64_t sub_21D910B98()
{
  v216 = v0;
  if (qword_27CE56E70 != -1)
  {
    goto LABEL_124;
  }

  while (1)
  {
    v1 = v0[25];
    v2 = sub_21DBF84BC();
    v0[79] = __swift_project_value_buffer(v2, qword_27CE63CD0);
    v3 = MEMORY[0x277D84F90];
    v4 = sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC("Create Reminders Save", 21, 2, v4);

    v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 8))(ObjectType, v5);
    v0[80] = v7;
    if (!v7)
    {

      v23 = sub_21DBF84AC();
      v24 = sub_21DBFAEBC();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_21D0C9000, v23, v24, "TTRSECreateRemindersPresenterCapability: cannot save; missing actionContext", v25, 2u);
        MEMORY[0x223D46520](v25, -1, -1);
      }

      goto LABEL_12;
    }

    v189 = v8;
    v9 = *(*(v0[25] + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingPresenter) + 112);
    swift_beginAccess();
    if (*(v9 + 40))
    {
      v10 = *(v9 + 48);
      v11 = swift_getObjectType();
      v12 = *(v10 + 24);
      swift_unknownObjectRetain();
      v12(v11, v10);
      swift_unknownObjectRelease();
    }

    v13 = v0[71];
    v14 = v0[70];
    v15 = v0[69];
    v16 = v0[25];
    _s15RemindersUICore17TTRDeferredActionC5drain6reasonySS_tF_0();
    v0[20] = v3;
    v17 = *(v16 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);

    TTRRemindersListTreeViewModel.primarySectionItem.getter(v15);

    v18 = *(v13 + 48);
    if (v18(v15, 1, v14) == 1)
    {
      v19 = v0[69];

      sub_21D0CF7E0(v19, &unk_27CE5CD80, &qword_21DC0CE80);
      v20 = sub_21DBF84AC();
      v21 = sub_21DBFAEBC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_21D0C9000, v20, v21, "TTRSECreateRemindersPresenterCapability: cannot save; missing primarySectionItem", v22, 2u);
        MEMORY[0x223D46520](v22, -1, -1);
      }

      swift_unknownObjectRelease();
LABEL_12:

      v26 = v0[1];

      return v26();
    }

    v28 = v0[75];
    v29 = v0[71];
    v30 = v0[70];
    v31 = v0[68];
    v32 = v0[55];
    v33 = v0[39];
    v199 = v0[38];
    sub_21D91BAD8(v0[69], v28, type metadata accessor for TTRRemindersListViewModel.Item);
    v191 = v17;
    v34 = *(v17 + 16);
    v201 = v18;
    v35 = *(v34 + 24);
    v36 = *(v34 + 32);
    v212 = swift_getObjectType();
    v0[21] = v35;
    sub_21D90BFC8(v28, v31, type metadata accessor for TTRRemindersListViewModel.Item);
    v208 = *(v29 + 56);
    v208(v31, 0, 1, v30);
    v37 = *(v36 + 8);
    v38 = v201;

    swift_unknownObjectRetain();
    v39 = TTRTreeContentsQueryable.childrenCollection(of:)(v31, v212, v37);
    v190 = v40;
    v193 = v41;
    sub_21D0CF7E0(v31, &unk_27CE5CD80, &qword_21DC0CE80);
    swift_unknownObjectRelease();
    v205 = (v33 + 56);
    v211 = (v32 + 48);
    v213 = (v32 + 56);
    v42 = (v33 + 48);
    v195 = v34;

    v43 = 0;
    v44 = MEMORY[0x277D84F90];
    v45 = MEMORY[0x277D84F98];
    v46 = &qword_21DC31708;
    v194 = v39;
    v196 = (v33 + 48);
LABEL_17:
    v192 = v44;
    v0[83] = v44;
    v200 = v45;
    v0[82] = v45;
    v198 = v43;
    v0[81] = v43;
    v48 = v191;
    if (v39 == v190)
    {
      break;
    }

LABEL_18:
    if (v190 < v194)
    {
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    if (v39 < v194)
    {
      goto LABEL_122;
    }

    if (v39 < v190)
    {
      v49 = v0[70];
      v50 = v0[67];
      v215[0] = v39;
      v193(v215);
      v208(v50, 0, 1, v49);
      v197 = v39 + 1;
      v42 = v196;
      goto LABEL_23;
    }

LABEL_123:
    __break(1u);
LABEL_124:
    swift_once();
  }

  while (1)
  {
    v208(v0[67], 1, 1, v0[70]);
    v197 = v190;
LABEL_23:
    v51 = v0[70];
    v52 = v0[66];
    sub_21D0D523C(v0[67], v52, &unk_27CE5CD80, &qword_21DC0CE80);
    v53 = 1;
    if (v38(v52, 1, v51) != 1)
    {
      v54 = v0[47];
      sub_21D91BAD8(v0[66], v0[74], type metadata accessor for TTRRemindersListViewModel.Item);
      v55 = *(v195 + 80);

      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v54);
      swift_beginAccess();
      v56 = *(v55 + 24);
      if (*(v56 + 16) && (v57 = sub_21D181E00(), (v58 & 1) != 0))
      {
        v59 = v0[47];
        v60 = *(*(v56 + 56) + 8 * v57);
        swift_endAccess();

        sub_21D91BA78(v59, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v61 = *(*v60 + 128);
        swift_beginAccess();
        v62 = *(v60 + v61);

        if (v62)
        {
          v63 = v0[52];
          v64 = *(v199 + 48);
          sub_21D90BFC8(v0[74], v63, type metadata accessor for TTRRemindersListViewModel.Item);
          v65 = [*(v62 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem) objectID];

          v66 = 0;
          *(v63 + v64) = v65;
        }

        else
        {
          v66 = 1;
        }

        v42 = v196;
      }

      else
      {
        swift_endAccess();
        v67 = v0[47];

        sub_21D91BA78(v67, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v66 = 1;
      }

      v68 = v0[74];
      (*v205)(v0[52], v66, 1, v0[38]);
      sub_21D91BA78(v68, type metadata accessor for TTRRemindersListViewModel.Item);
      v53 = 0;
    }

    v69 = v0[54];
    v70 = v0[52];
    v210 = *v213;
    (*v213)(v70, v53, 1, v69);
    v209 = *v211;
    if ((*v211)(v70, 1, v69) == 1)
    {
      v75 = v0[53];
      v76 = v0[54];
      sub_21D0CF7E0(v0[52], &qword_27CE63D60, v46);
      v210(v75, 1, 1, v76);
      goto LABEL_38;
    }

    v71 = v0[62];
    v72 = v0[38];
    sub_21D0D523C(v0[52], v71, &qword_27CE63D68, &unk_21DC31710);
    v73 = (*v42)(v71, 1, v72);
    v74 = v0[62];
    if (v73 != 1)
    {
      break;
    }

    sub_21D0CF7E0(v74, &qword_27CE63D68, &unk_21DC31710);
    v39 = v197;
    if (v197 != v190)
    {
      goto LABEL_18;
    }
  }

  v77 = v0[53];
  v78 = v0[54];
  sub_21D0D523C(v74, v77, &qword_27CE63D68, &unk_21DC31710);
  v210(v77, 0, 1, v78);
LABEL_38:
  v79 = v0[54];
  v80 = v0[51];
  sub_21D0D523C(v0[53], v80, &qword_27CE63D60, v46);
  if (v209(v80, 1, v79) == 1)
  {
    v204 = *v205;
    (*v205)(v0[63], 1, 1, v0[38]);
    v81 = *v42;
  }

  else
  {
    v82 = v0[60];
    v83 = v0[61];
    v84 = v0[38];
    sub_21D0D523C(v0[51], v83, &qword_27CE63D68, &unk_21DC31710);
    sub_21D0D3954(v83, v82, &qword_27CE63D68, &unk_21DC31710);
    v85 = *v42;
    result = (*v42)(v82, 1, v84);
    if (result == 1)
    {
LABEL_126:
      __break(1u);
      return result;
    }

    v81 = v85;
    v86 = v0[63];
    v87 = v0[61];
    v88 = v0[38];
    sub_21D0D523C(v0[60], v86, &qword_27CE63D58, &qword_21DC31700);
    sub_21D0CF7E0(v87, &qword_27CE63D68, &unk_21DC31710);
    v204 = *v205;
    (*v205)(v86, 0, 1, v88);
  }

  v89 = v0[63];
  if (v81(v89, 1, v0[38]) == 1)
  {
    goto LABEL_113;
  }

  v207 = v81;
  v91 = v0[43];
  v90 = v0[44];
  v92 = *(v199 + 48);
  v93 = *(v89 + v92);
  sub_21D91BAD8(v89, v90, type metadata accessor for TTRRemindersListViewModel.Item);
  *(v90 + v92) = v93;
  v94 = sub_21D0D3954(v90, v91, &qword_27CE63D58, &qword_21DC31700);
  MEMORY[0x223D42D80](v94);
  if (*((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21DBFA63C();
  }

  v95 = v0[70];
  v96 = v0[68];
  v98 = v0[43];
  v97 = v0[44];
  sub_21DBFA6CC();
  v192 = v0[20];
  sub_21D91BA78(v98, type metadata accessor for TTRRemindersListViewModel.Item);
  v99 = *(v191 + 16);
  v101 = *(v99 + 24);
  v100 = *(v99 + 32);
  v102 = swift_getObjectType();
  v0[23] = v101;
  sub_21D90BFC8(v97, v96, type metadata accessor for TTRRemindersListViewModel.Item);
  v208(v96, 0, 1, v95);
  v103 = *(v100 + 8);

  swift_unknownObjectRetain();
  v104 = TTRTreeContentsQueryable.childrenCollection(of:)(v96, v102, v103);
  v48 = v105;
  v202 = v106;
  sub_21D0CF7E0(v96, &unk_27CE5CD80, &qword_21DC0CE80);
  swift_unknownObjectRelease();
  v203 = v99;

  v107 = v104;
  v206 = v104;
  if (v104 == v48)
  {
    while (1)
    {
      v208(v0[65], 1, 1, v0[70]);
      v107 = v48;
LABEL_51:
      v110 = v0[70];
      v111 = v0[64];
      sub_21D0D523C(v0[65], v111, &unk_27CE5CD80, &qword_21DC0CE80);
      v112 = 1;
      if (v38(v111, 1, v110) != 1)
      {
        break;
      }

LABEL_82:
      v143 = v0[54];
      v144 = v0[49];
      v210(v144, v112, 1, v143);
      if (v209(v144, 1, v143) == 1)
      {
        v149 = v46;
        sub_21D0CF7E0(v0[49], &qword_27CE63D60, v46);
        v150 = 1;
        goto LABEL_89;
      }

      v145 = v0[58];
      v146 = v0[38];
      sub_21D0D523C(v0[49], v145, &qword_27CE63D68, &unk_21DC31710);
      v147 = v207(v145, 1, v146);
      v148 = v0[58];
      if (v147 != 1)
      {
        sub_21D0D523C(v148, v0[50], &qword_27CE63D68, &unk_21DC31710);
        v150 = 0;
        v149 = v46;
LABEL_89:
        v151 = v0[54];
        v152 = v0[50];
        v153 = v0[48];
        v154 = 1;
        v210(v152, v150, 1, v151);
        sub_21D0D523C(v152, v153, &qword_27CE63D60, v149);
        v46 = v149;
        if (v209(v153, 1, v151) != 1)
        {
          v155 = v0[56];
          v156 = v0[57];
          v157 = v0[38];
          sub_21D0D523C(v0[48], v156, &qword_27CE63D68, &unk_21DC31710);
          sub_21D0D3954(v156, v155, &qword_27CE63D68, &unk_21DC31710);
          result = v207(v155, 1, v157);
          if (result == 1)
          {
            __break(1u);
            goto LABEL_126;
          }

          v158 = v0[57];
          sub_21D0D523C(v0[56], v0[59], &qword_27CE63D58, &qword_21DC31700);
          sub_21D0CF7E0(v158, &qword_27CE63D68, &unk_21DC31710);
          v154 = 0;
        }

        v159 = v0[59];
        v160 = v0[38];
        v204(v159, v154, 1, v160);
        if (v207(v159, 1, v160) == 1)
        {
          v47 = v0[44];

          sub_21D0CF7E0(v47, &qword_27CE63D58, &qword_21DC31700);

          v45 = v200;
          v42 = v196;
          v39 = v197;
          v44 = v192;
          v43 = v198;
          goto LABEL_17;
        }

        v161 = v0[59];
        v162 = v0[44];
        v163 = v0[41];
        v164 = v0[42];
        v165 = v0[40];
        v166 = *(v199 + 48);
        v167 = *(v161 + v166);
        sub_21D91BAD8(v161, v164, type metadata accessor for TTRRemindersListViewModel.Item);
        *(v164 + v166) = v167;
        sub_21D0D3954(v162, v163, &qword_27CE63D58, &qword_21DC31700);
        v168 = *(v163 + *(v199 + 48));
        sub_21D0D3954(v164, v165, &qword_27CE63D58, &qword_21DC31700);
        sub_21D0D0E88(v198, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v215[0] = v200;
        v171 = sub_21D17E07C(v168);
        v172 = v200[2];
        v173 = (v170 & 1) == 0;
        v174 = v172 + v173;
        if (__OFADD__(v172, v173))
        {
          __break(1u);
          goto LABEL_121;
        }

        v175 = v170;
        if (v200[3] >= v174)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v170 & 1) == 0)
            {
              goto LABEL_100;
            }
          }

          else
          {
            sub_21D221214();
            v200 = v215[0];
            if ((v175 & 1) == 0)
            {
              goto LABEL_100;
            }
          }
        }

        else
        {
          sub_21D217430(v174, isUniquelyReferenced_nonNull_native);
          sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
          v200 = v215[0];
          v176 = sub_21D17E07C(v168);
          if ((v175 & 1) != (v177 & 1))
          {

            return sub_21DBFC70C();
          }

          v171 = v176;
          if (v175)
          {
            goto LABEL_101;
          }

LABEL_100:
          sub_21D33572C();
          v178 = v168;
        }

LABEL_101:
        v179 = (v200[7] + 8 * v171);
        MEMORY[0x223D42D80]();
        if (*((*v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        v181 = v0[41];
        v180 = v0[42];
        v182 = v0[40];
        sub_21DBFA6CC();

        sub_21D0CF7E0(v180, &qword_27CE63D58, &qword_21DC31700);
        sub_21D91BA78(v182, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D91BA78(v181, type metadata accessor for TTRRemindersListViewModel.Item);
        v198 = sub_21D15779C;
        v38 = v201;
        v46 = &qword_21DC31708;
        goto LABEL_85;
      }

      sub_21D0CF7E0(v148, &qword_27CE63D68, &unk_21DC31710);
LABEL_85:
      v104 = v206;
      if (v107 != v48)
      {
        goto LABEL_46;
      }
    }

    v113 = v0[73];
    v114 = v0[72];
    sub_21D91BAD8(v0[64], v113, type metadata accessor for TTRRemindersListViewModel.Item);
    v115 = *(v203 + 80);
    sub_21D90BFC8(v113, v114, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload <= 7)
      {
        v124 = v0[72];
        if (EnumCaseMultiPayload == 6)
        {
          v125 = v0[46];
          v126 = 1;
        }

        else
        {
          v125 = v0[46];
          v126 = 2;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 8)
        {
          if (EnumCaseMultiPayload == 9)
          {
            v119 = v0[46];
            v120 = 3;
          }

          else
          {
            v119 = v0[46];
            v120 = 5;
          }

          *v119 = v120;
          goto LABEL_68;
        }

        v124 = v0[72];
        v125 = v0[46];
        v126 = 4;
      }

      *v125 = v126;
      swift_storeEnumTagMultiPayload();

      sub_21D91BA78(v124, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_75;
    }

    if ((EnumCaseMultiPayload - 2) < 3)
    {
      v117 = v0[46];
      v118 = v0[36];
      sub_21D91BAD8(v0[72], v118, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v38 = v201;
      sub_21D91BAD8(v118, v117, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_68:
      swift_storeEnumTagMultiPayload();

LABEL_75:
      swift_beginAccess();
      v130 = *(v115 + 24);
      if (*(v130 + 16) && (v131 = sub_21D181E00(), (v132 & 1) != 0))
      {
        v133 = v0[46];
        v134 = *(*(v130 + 56) + 8 * v131);
        swift_endAccess();

        sub_21D91BA78(v133, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v135 = *(*v134 + 128);
        swift_beginAccess();
        v136 = *(v134 + v135);

        if (v136)
        {
          v137 = v0[49];
          v138 = *(v199 + 48);
          sub_21D90BFC8(v0[73], v137, type metadata accessor for TTRRemindersListViewModel.Item);
          v139 = [*(v136 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem) objectID];

          v140 = 0;
          *(v137 + v138) = v139;
LABEL_81:
          v142 = v0[73];
          v204(v0[49], v140, 1, v0[38]);
          sub_21D91BA78(v142, type metadata accessor for TTRRemindersListViewModel.Item);
          v112 = 0;
          goto LABEL_82;
        }
      }

      else
      {
        swift_endAccess();
        v141 = v0[46];

        sub_21D91BA78(v141, type metadata accessor for TTRRemindersListViewModel.ItemID);
      }

      v140 = 1;
      goto LABEL_81;
    }

    if (EnumCaseMultiPayload >= 2)
    {
      v127 = v0[72];
      v128 = v0[46];

      sub_21D91BA78(v127, type metadata accessor for TTRRemindersListViewModel.Item);
      *v128 = 0;
LABEL_74:
      swift_storeEnumTagMultiPayload();
      goto LABEL_75;
    }

    v121 = v0[37];
    v122 = v0[34];
    sub_21D91BAD8(v0[72], v121, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D90BFC8(v121, v122, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v123 = swift_getEnumCaseMultiPayload();

    if (((1 << v123) & 0x17E) != 0)
    {
      sub_21D91BA78(v0[34], type metadata accessor for TTRRemindersListViewModel.SectionID);
    }

    else if (((1 << v123) & 0x81) == 0)
    {
      v184 = v0[34];
      v183 = v0[35];
      sub_21D91BA78(v0[37], type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      *v183 = *v184;
      swift_storeEnumTagMultiPayload();
      goto LABEL_73;
    }

    v129 = v0[37];
    sub_21D90BFC8(v129, v0[35], type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D91BA78(v129, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
LABEL_73:
    sub_21D91BAD8(v0[35], v0[46], type metadata accessor for TTRRemindersListViewModel.SectionID);
    goto LABEL_74;
  }

LABEL_46:
  if (v48 < v104)
  {
    __break(1u);
    goto LABEL_111;
  }

  if (v107 < v104)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v107 < v48)
  {
    v108 = v0[70];
    v109 = v0[65];
    v215[0] = v107;
    v202(v215);
    v208(v109, 0, 1, v108);
    ++v107;
    goto LABEL_51;
  }

LABEL_112:
  __break(1u);
LABEL_113:

  if (*(v48 + 32) && (*(v48 + 25) & 1) != 0)
  {
    v185 = 1;
  }

  else
  {
    v185 = *(v0[25] + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_isShowingRecipeCardIngredients);
  }

  v186 = swift_getObjectType();
  v214 = (*(v189 + 80) + **(v189 + 80));
  v187 = swift_task_alloc();
  v0[84] = v187;
  *v187 = v0;
  v187[1] = sub_21D912510;
  v188 = v0[24];

  return v214(v192, v200, v188, v185, v186, v189);
}

uint64_t sub_21D912510()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v3 = *(v2 + 624);
    v4 = *(v2 + 616);
    v5 = sub_21D912A30;
  }

  else
  {

    v3 = *(v2 + 624);
    v4 = *(v2 + 616);
    v5 = sub_21D912640;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D912640()
{

  (*(v0[31] + 104))(v0[32], *MEMORY[0x277D44E70], v0[30]);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v15 = v0[75];
  v16 = v0[81];
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[28];
  v14 = v0[27];
  v13 = v0[30];
  sub_21DBF62DC();
  sub_21DBF62CC();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8, &qword_21DC0AFC0);
  v6 = (v3 + v5[12]);
  v7 = v5[16];
  v8 = (v3 + v5[20]);
  (*(v1 + 16))(v3, v2, v13);
  *v6 = TTRUserDefaults.activitySessionId.getter();
  v6[1] = v9;
  TTRUserDefaults.activitySessionBeginTime.getter(v3 + v7);
  *v8 = sub_21DBFC8EC();
  v8[1] = v10;
  (*(v4 + 104))(v3, *MEMORY[0x277D44E98], v14);
  sub_21DBF62BC();

  (*(v4 + 8))(v3, v14);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v2, v13);
  sub_21D91BA78(v15, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D0E88(v16, 0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_21D912A30()
{
  v29 = v0;
  v1 = v0[85];

  v2 = v1;
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[85];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_21DBFC75C();
    v10 = sub_21D0CDFB4(v8, v9, &v28);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_21D0C9000, v3, v4, "TTRSECreateRemindersPresenterCapability: failed to save {error: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223D46520](v7, -1, -1);
    MEMORY[0x223D46520](v6, -1, -1);
  }

  else
  {
    v11 = v0[85];
  }

  (*(v0[31] + 104))(v0[32], *MEMORY[0x277D44E70], v0[30]);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v26 = v0[75];
  v27 = v0[81];
  v12 = v0[31];
  v13 = v0[32];
  v14 = v0[29];
  v24 = v0[30];
  v15 = v0[28];
  v25 = v0[27];
  sub_21DBF62DC();
  sub_21DBF62CC();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8, &qword_21DC0AFC0);
  v17 = (v14 + v16[12]);
  v18 = v16[16];
  v19 = (v14 + v16[20]);
  (*(v12 + 16))(v14, v13, v24);
  *v17 = TTRUserDefaults.activitySessionId.getter();
  v17[1] = v20;
  TTRUserDefaults.activitySessionBeginTime.getter(v14 + v18);
  *v19 = sub_21DBFC8EC();
  v19[1] = v21;
  (*(v15 + 104))(v14, *MEMORY[0x277D44E98], v25);
  sub_21DBF62BC();

  (*(v15 + 8))(v14, v25);
  swift_unknownObjectRelease();
  (*(v12 + 8))(v13, v24);
  sub_21D91BA78(v26, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D0E88(v27, 0);

  v22 = v0[1];

  return v22();
}

uint64_t TTRSECreateRemindersPresenterCapability.edit(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  return (*(*(v7 + 16) + 8))(a1, a2, a3, ObjectType);
}

Swift::Void __swiftcall TTRSECreateRemindersPresenterCapability.requestEndEditing()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingPresenter) + 112);
  swift_beginAccess();
  if (*(v1 + 40))
  {
    v2 = *(v1 + 48);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 24);
    swift_unknownObjectRetain();
    v4(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

BOOL TTRSECreateRemindersPresenterCapability.canCollapse(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRSECreateRemindersViewModel.Item.CasesForItemCells(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D90BFC8(a1, v11, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21D91BAD8(v11, v14, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_21D91BAD8(v11, v14, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  }

  swift_storeEnumTagMultiPayload();
  v16 = swift_getEnumCaseMultiPayload();
  if ((v16 - 2) < 4)
  {
    return 0;
  }

  if (v16)
  {
    sub_21D91BAD8(v14, v8, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D90BFC8(v8, v4, type metadata accessor for TTRRemindersListViewModel.Item);
    (*(v6 + 56))(v4, 0, 1, v5);

    v18 = sub_21D261568(v4);

    sub_21D0CF7E0(v4, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D91BA78(v8, type metadata accessor for TTRRemindersListViewModel.Item);
    return v18 > 0;
  }

  else
  {
    sub_21D91BA78(v14, type metadata accessor for TTRSECreateRemindersViewModel.Item.CasesForItemCells);
    return 0;
  }
}

uint64_t TTRSECreateRemindersPresenterCapability.leadingSwipeActions(for:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  if (*(v9 + 72))
  {
    return MEMORY[0x277D84F90];
  }

  TTRRemindersListViewModel.Item.reminderCasesOnly.getter(&v28 - v7);
  sub_21D90BFC8(v8, v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21D91BA78(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    }

    sub_21D91BA78(v8, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    return MEMORY[0x277D84F90];
  }

  sub_21D91BA78(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D70, &unk_21DC31720);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_21DC08D20;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928, &qword_21DC09B80);
  v12 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v29 = v11;
  v14 = swift_allocObject();
  v28 = xmmword_21DC08D00;
  *(v14 + 16) = xmmword_21DC08D00;
  sub_21D90BFC8(a1, v14 + v13, type metadata accessor for TTRRemindersListViewModel.Item);
  v15 = sub_21D914938(v14);
  v17 = v16;

  if (v15 && (, , v17 > 0))
  {
    v18 = 4;
  }

  else
  {
    v18 = 12;
  }

  v20 = v30;
  *(v30 + 32) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = v28;
  sub_21D90BFC8(a1, v21 + v13, type metadata accessor for TTRRemindersListViewModel.Item);
  v22 = *(v9 + 16);

  v23 = sub_21D285D24(v21, 1, v22);
  v25 = v24;

  if (v23 && (, , v25 > 0))
  {
    v26 = 5;
  }

  else
  {
    v26 = 12;
  }

  *(v20 + 33) = v26;
  v31 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D78, &qword_21DC31730);
  sub_21D0D0F1C(&qword_27CE63D80, &qword_27CE63D78, &qword_21DC31730, MEMORY[0x277D83970]);
  v27 = sub_21DBFA41C();

  sub_21D91BA78(v8, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  return v27;
}

Swift::Bool __swiftcall TTRSECreateRemindersPresenterCapability.canIndent(_:)(Swift::OpaquePointer a1)
{
  v1 = sub_21D914938(a1._rawValue);
  if (v1)
  {
    v3 = v2;

    LOBYTE(v1) = v3 > 0;
  }

  return v1;
}

Swift::Bool __swiftcall TTRSECreateRemindersPresenterCapability.canOutdent(_:)(Swift::OpaquePointer a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 16);

  v4 = sub_21D285D24(a1._rawValue, 1, v3);
  v6 = v5;

  if (!v4)
  {
    return 0;
  }

  return v6 > 0;
}

char *TTRSECreateRemindersPresenterCapability.trailingSwipeActions(for:)(uint64_t a1)
{
  if (*(*(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 72))
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928, &qword_21DC09B80);
  v4 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21DC08D00;
  sub_21D90BFC8(a1, v6 + v5, type metadata accessor for TTRRemindersListViewModel.Item);
  v7 = sub_21D914178(v6);
  swift_setDeallocating();
  sub_21D91BA78(v6 + v5, type metadata accessor for TTRRemindersListViewModel.Item);
  swift_deallocClassInstance();
  if (v7)
  {

    v2 = sub_21D2150A4(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v2 + 2);
    v8 = *(v2 + 3);
    if (v9 >= v8 >> 1)
    {
      v2 = sub_21D2150A4((v8 > 1), v9 + 1, 1, v2);
    }

    *(v2 + 2) = v9 + 1;
    v2[v9 + 32] = 0;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D00;
  sub_21D90BFC8(a1, v10 + v5, type metadata accessor for TTRRemindersListViewModel.Item);
  TTRRemindersListPresenterCapabilityCore.paramsForBatchFlag(_:)(v10, &v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v11 = v24;
  if (v24 != 2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v11)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v2 = sub_21D2150A4(0, *(v2 + 2) + 1, 1, v2);
      }

      v14 = *(v2 + 2);
      v13 = *(v2 + 3);
      if (v14 >= v13 >> 1)
      {
        v2 = sub_21D2150A4((v13 > 1), v14 + 1, 1, v2);
      }

      *(v2 + 2) = v14 + 1;
      v15 = &v2[v14];
      v16 = 2;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v2 = sub_21D2150A4(0, *(v2 + 2) + 1, 1, v2);
      }

      v18 = *(v2 + 2);
      v17 = *(v2 + 3);
      if (v18 >= v17 >> 1)
      {
        v2 = sub_21D2150A4((v17 > 1), v18 + 1, 1, v2);
      }

      *(v2 + 2) = v18 + 1;
      v15 = &v2[v18];
      v16 = 3;
    }

    v15[32] = v16;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;
  sub_21D90BFC8(a1, v19 + v5, type metadata accessor for TTRRemindersListViewModel.Item);
  v20 = _s15RemindersUICore011TTRSECreateA19PresenterCapabilityC13canShowDetail3forSbSayAA25TTRRemindersListViewModelC4ItemOG_tF_0(v19);
  swift_setDeallocating();
  sub_21D91BA78(v19 + v5, type metadata accessor for TTRRemindersListViewModel.Item);
  swift_deallocClassInstance();
  if (v20)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21D2150A4(0, *(v2 + 2) + 1, 1, v2);
    }

    v22 = *(v2 + 2);
    v21 = *(v2 + 3);
    if (v22 >= v21 >> 1)
    {
      v2 = sub_21D2150A4((v21 > 1), v22 + 1, 1, v2);
    }

    *(v2 + 2) = v22 + 1;
    v2[v22 + 32] = 1;
  }

  return v2;
}

Swift::Bool __swiftcall TTRSECreateRemindersPresenterCapability.canBatchDelete(_:)(Swift::OpaquePointer a1)
{
  v1 = sub_21D914178(a1._rawValue);
  if (v1)
  {
  }

  return v1 != 0;
}

Swift::Int __swiftcall TTRSECreateRemindersPresenterCapability.requestSetFlagged(_:for:)(Swift::Bool _, Swift::OpaquePointer a2)
{
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE63CD0);
  v5 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Create Reminders Set Flagged", 28, 2, v5);

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v13 = 0x800000021DC4F950;
  v6 = sub_21DBF516C();
  v8 = v7;
  MEMORY[0x28223BE20](v6);
  LOBYTE(v13) = _;
  v10 = sub_21D723218(a2._rawValue, v9, v8, sub_21D91BC74, &v12);

  return v10;
}

double TTRSECreateRemindersPresenterCapability.requestSetPriorityLevel(_:for:)(uint64_t a1, uint64_t a2)
{
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE63CD0);
  v5 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Create Reminders Set Priority", 29, 2, v5);

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF516C();
  v8 = v7;
  MEMORY[0x28223BE20](v6);
  v11[2] = a1;
  sub_21D723218(a2, v9, v8, sub_21D91BC7C, v11);

  return result;
}

uint64_t sub_21D914178(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v6);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v15 = *(a1 + 16);
  v39 = v1;
  if (v15)
  {
    v43 = v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource;
    v40 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v16 = a1 + v40;
    v17 = *(v12 + 72);
    v18 = MEMORY[0x277D84F90];
    v41 = v6;
    v42 = v17;
    while (1)
    {
      sub_21D90BFC8(v16, v14, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D90BFC8(v14, v10, type metadata accessor for TTRRemindersListViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload < 2)
        {
LABEL_10:
          sub_21D91BA78(v10, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_11:
          swift_storeEnumTagMultiPayload();
          goto LABEL_12;
        }
      }

      else
      {
        if ((EnumCaseMultiPayload - 5) < 4)
        {
          goto LABEL_10;
        }

        if ((EnumCaseMultiPayload - 9) < 2)
        {
          goto LABEL_11;
        }
      }

      sub_21D91BAD8(v10, v5, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      swift_storeEnumTagMultiPayload();
      v22 = swift_getEnumCaseMultiPayload();
      if ((v22 - 1) < 2)
      {
        sub_21D91BA78(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
        v23 = *(v43 + 8);
        ObjectType = swift_getObjectType();
        v25 = (*(*(v23 + 8) + 16))(v14, ObjectType);
        if (v25)
        {

          sub_21D91BAD8(v14, v44, type metadata accessor for TTRRemindersListViewModel.Item);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21D18EBA4(0, *(v18 + 16) + 1, 1);
            v18 = v46;
          }

          v17 = v42;
          v28 = *(v18 + 16);
          v27 = *(v18 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_21D18EBA4((v27 > 1), v28 + 1, 1);
            v18 = v46;
          }

          *(v18 + 16) = v28 + 1;
          sub_21D91BAD8(v44, v18 + v40 + v28 * v17, type metadata accessor for TTRRemindersListViewModel.Item);
        }

        else
        {
          sub_21D91BA78(v14, type metadata accessor for TTRRemindersListViewModel.Item);
          v17 = v42;
        }

        goto LABEL_4;
      }

      if (!v22)
      {
        sub_21D91BA78(v14, type metadata accessor for TTRRemindersListViewModel.Item);
        v20 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem;
        v21 = v5;
        goto LABEL_3;
      }

LABEL_12:
      v20 = type metadata accessor for TTRRemindersListViewModel.Item;
      v21 = v14;
LABEL_3:
      sub_21D91BA78(v21, v20);
LABEL_4:
      v16 += v17;
      if (!--v15)
      {
        goto LABEL_24;
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_24:
  v45 = v18;
  v46 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0, &qword_21DC1A330);
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0, &qword_21DC1A330, MEMORY[0x277D83970]);
  sub_21D92C334(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID, protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  v29 = sub_21DBFA49C();

  v30 = v39;

  sub_21DBF8E0C();
  result = sub_21D91AB28(&v46, v30, v29);
  v32 = v46;
  v33 = v46[2];
  if (result > v33)
  {
    __break(1u);
    goto LABEL_37;
  }

  v34 = result;
  if (result < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v35 = result;
  if (__OFADD__(v33, result - v33))
  {
LABEL_38:
    __break(1u);
    return result;
  }

  v36 = swift_isUniquelyReferenced_nonNull_native();
  if (!v36 || v35 > v32[3] >> 1)
  {
    if (v33 <= v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = v33;
    }

    v32 = sub_21D211A80(v36, v37, 1, v32);
    v46 = v32;
  }

  sub_21D506ACC(v34, v33, 0);

  if (!v32[2])
  {

    return 0;
  }

  return v32;
}

Swift::Bool __swiftcall TTRSECreateRemindersPresenterCapability.requestDelete(_:)(Swift::OpaquePointer a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_21D914178(a1._rawValue);
  if (v6)
  {
    v7 = v6;
    sub_21D7CD128(v6);
    sub_21D0D3954(*(*(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 80) + OBJC_IVAR____TtC15RemindersUICore19UndoContextProvider_undoContext, v5, &qword_27CE59370, &unk_21DC0B390);
    v8 = type metadata accessor for TTRRemindersListUndoContext(0);
    if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
    {
      sub_21D0CF7E0(v5, &qword_27CE59370, &unk_21DC0B390);
      v12 = 0u;
      v13 = 0u;
      v14 = 0;
    }

    else
    {
      *(&v13 + 1) = v8;
      v14 = &protocol witness table for TTRRemindersListUndoContext;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
      sub_21D91BAD8(v5, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListUndoContext);
    }

    v10 = sub_21D6454A0(v7, 0, 1, 0, 0, &v12);

    sub_21D0CF7E0(&v12, &unk_27CE60D80, &unk_21DC093F0);
    LOBYTE(v6) = v10 > 0;
  }

  return v6;
}

Swift::Int __swiftcall TTRSECreateRemindersPresenterCapability.numberOfTopLevelRemindersIndented(byIndenting:)(Swift::OpaquePointer byIndenting)
{
  if (!sub_21D914938(byIndenting._rawValue))
  {
    return 0;
  }

  v2 = v1;

  return v2;
}

uint64_t sub_21D914938(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
  ObjectType = swift_getObjectType();
  if (!(*(v4 + 8))(ObjectType, v4))
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = swift_getObjectType();
  (*(v7 + 24))(v22, v8, v7);
  swift_unknownObjectRelease();
  v9 = v22[0];
  v10 = v22[1];
  v11 = v22[2];
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter(&v19);

  if (!*(&v20 + 1))
  {
LABEL_6:
    sub_21D0CF7E0(&v19, &qword_27CE59DC0, &qword_21DC0FBF0);
    return 0;
  }

  sub_21D0D0FD0(&v19, v22);
  v12 = v23;
  v13 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v14 = (*(v13 + 72))(v12, v13);
  LODWORD(v12) = [v14 supportsSubtasks];

  if (v12)
  {
    v15 = *(*(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 16);

    sub_21D27D10C(a1, 1, v15);
    v17 = v16;

    __swift_destroy_boxed_opaque_existential_0(v22);
    return v17;
  }

  __swift_destroy_boxed_opaque_existential_0(v22);
  return 0;
}

Swift::Bool __swiftcall TTRSECreateRemindersPresenterCapability.requestIndent(_:)(Swift::OpaquePointer a1)
{
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE63CD0);
  v3 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Create Reminders Indent Items", 29, 2, v3);

  v4 = sub_21D914938(a1._rawValue);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;

  v6 = *(v5 + 16);
  v7 = v6 != 0;
  if (v6)
  {
    sub_21D64A230(v5);
  }

  return v7;
}

Swift::Int __swiftcall TTRSECreateRemindersPresenterCapability.numberOfSubtasksOutdented(byOutdenting:)(Swift::OpaquePointer byOutdenting)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 16);

  v4 = sub_21D285D24(byOutdenting._rawValue, 1, v3);
  v6 = v5;

  if (!v4)
  {
    return 0;
  }

  return v6;
}

Swift::Bool __swiftcall TTRSECreateRemindersPresenterCapability.requestOutdent(_:)(Swift::OpaquePointer a1)
{
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_27CE63CD0);
  v4 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Create Reminders Outdent Items", 30, 2, v4);

  v5 = *(*(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 16);

  v6 = sub_21D285D24(a1._rawValue, 1, v5);

  if (!v6)
  {
    return 0;
  }

  v7 = v6[2];
  v8 = v7 != 0;
  if (v7)
  {
    sub_21D64A230(v6);
  }

  return v8;
}

uint64_t TTRSECreateRemindersPresenterCapability.requestSetUpTextInputPrimaryLanguageObserving(with:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingPresenter) + 112);
  ObjectType = swift_getObjectType();

  return sub_21DBCE8FC(a1, v5, ObjectType, a2);
}

uint64_t TTRSECreateRemindersPresenterCapability.canMove(_:into:atUnadjustedIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  if ((*(*(v3 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 72) & 1) == 0)
  {
    sub_21D914F50(a1, a2, a3, 0, &v14 - v11);
    sub_21D91BAD8(v12, v9, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88, &qword_21DC31738);

      sub_21D91BA78(v9, type metadata accessor for TTRRemindersListViewModel.Item);
      return 1;
    }

    sub_21D0CF7E0(v9, &qword_27CE63D90, &unk_21DC31740);
  }

  return 0;
}

uint64_t sub_21D914F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v80 = a4;
  v79 = a3;
  v89 = a5;
  v90 = a2;
  v81 = a1;
  v92 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v92);
  v87 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v8 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v83 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v10 - 8);
  v82 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v77 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58380, &qword_21DC09228);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v77 - v16;
  valid = type metadata accessor for TTRSECreateRemindersViewModel.Item.CasesForValidDropParents(0);
  MEMORY[0x28223BE20](valid - 8);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v84 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v91 = &v77 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v77 - v26;
  MEMORY[0x28223BE20](v28);
  v85 = &v77 - v29;
  v30 = v6 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource;
  v31 = *(v6 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  v77 = *(v30 + 8);
  ObjectType = swift_getObjectType();
  v32 = *(v31 + 16);
  sub_21D0D3954(v90, v17, &qword_27CE58380, &qword_21DC09228);
  v33 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  if ((*(*(v33 - 8) + 48))(v17, 1, v33) == 1)
  {
    sub_21D0CF7E0(v17, &qword_27CE58380, &qword_21DC09228);
LABEL_14:
    v46 = v89;
    v47 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
    (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
    goto LABEL_15;
  }

  sub_21D956F18(v20);
  sub_21D91BA78(v17, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  v34 = (*(v8 + 48))(v20, 2, v86);
  v35 = v32;
  if (v34)
  {
    v36 = v88;
    if (v34 != 1)
    {

      goto LABEL_14;
    }

    TTRRemindersListTreeViewModel.primarySectionItem.getter(v14);
    if ((*(v84 + 48))(v14, 1, v36) == 1)
    {

      sub_21D0CF7E0(v14, &unk_27CE5CD80, &qword_21DC0CE80);
      v37 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
      (*(*(v37 - 8) + 56))(v89, 1, 1, v37);
LABEL_15:
      type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving(0);
      return swift_storeEnumTagMultiPayload();
    }

    v40 = v32;
    sub_21D91BAD8(v14, v27, type metadata accessor for TTRRemindersListViewModel.Item);
    v39 = v85;
    sub_21D91BAD8(v27, v85, type metadata accessor for TTRRemindersListViewModel.Item);
    LODWORD(v86) = 0;
    goto LABEL_17;
  }

  v38 = v83;
  sub_21D91BAD8(v20, v83, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v39 = v85;
  sub_21D90BFC8(v38, v85, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v36 = v88;
  swift_storeEnumTagMultiPayload();
  if ((TTRRemindersListTreeViewModel.isTopLevelReminder(_:)() & 1) == 0 || (v40 = v35, (v80 & 1) == 0) && (v41 = v82, sub_21D90BFC8(v39, v82, type metadata accessor for TTRRemindersListViewModel.Item), (*(v84 + 56))(v41, 0, 1, v36), , v42 = sub_21D261568(v41), , sub_21D0CF7E0(v41, &unk_27CE5CD80, &qword_21DC0CE80), !v42) || (v43 = (*(*(v77 + 8) + 16))(v39, ObjectType)) == 0)
  {
    sub_21D91BA78(v38, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    goto LABEL_38;
  }

  v44 = v43;
  v45 = [v43 subtaskContext];

  sub_21D91BA78(v38, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  if (!v45)
  {
LABEL_38:

    v71 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
    (*(*(v71 - 8) + 56))(v89, 1, 1, v71);
    type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving(0);
    swift_storeEnumTagMultiPayload();
    v72 = v39;
    return sub_21D91BA78(v72, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  LODWORD(v86) = 1;
LABEL_17:
  v49 = v40;
  v50 = *(v40 + 24);
  v90 = v49;
  v51 = *(v49 + 32);
  v52 = swift_getObjectType();
  v93 = v50;
  v53 = v82;
  sub_21D90BFC8(v39, v82, type metadata accessor for TTRRemindersListViewModel.Item);
  (*(v84 + 56))(v53, 0, 1, v36);
  v54 = *(v51 + 8);
  swift_unknownObjectRetain();
  v55 = TTRTreeContentsQueryable.childrenCollection(of:)(v53, v52, v54);
  v57 = v56;
  v59 = v58;
  sub_21D0CF7E0(v53, &unk_27CE5CD80, &qword_21DC0CE80);
  result = swift_unknownObjectRelease();
  if (v55 == v57)
  {
LABEL_35:
    MEMORY[0x28223BE20](result);
    v65 = v85;
    *(&v77 - 4) = v85;
    *(&v77 - 24) = v86;
    *(&v77 - 2) = v90;
    v66 = sub_21D4E7CF0(sub_21D92C310, (&v77 - 6), v81);

    if (v66[2])
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88, &qword_21DC31738);
      v68 = *(v67 + 48);
      v69 = *(v67 + 64);
      v70 = v89;
      sub_21D90BFC8(v65, v89, type metadata accessor for TTRRemindersListViewModel.Item);
      *(v70 + v68) = v79;
      *(v70 + v69) = v66;
    }

    else
    {

      v73 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
      (*(*(v73 - 8) + 56))(v89, 1, 1, v73);
    }

    type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving(0);
    swift_storeEnumTagMultiPayload();
    v72 = v65;
    return sub_21D91BA78(v72, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  if (v55 <= v57)
  {
    v60 = v57;
  }

  else
  {
    v60 = v55;
  }

  v61 = v55;
  while (1)
  {
    v93 = v61;
    v62 = v91;
    v59(&v93);
    sub_21D91BAD8(v62, v22, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload < 2)
      {
LABEL_27:
        sub_21D91BA78(v22, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_28:
        result = swift_storeEnumTagMultiPayload();
        goto LABEL_32;
      }
    }

    else
    {
      if ((EnumCaseMultiPayload - 5) < 4)
      {
        goto LABEL_27;
      }

      if ((EnumCaseMultiPayload - 9) < 2)
      {
        goto LABEL_28;
      }
    }

    v64 = v87;
    sub_21D91BAD8(v22, v87, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    result = swift_getEnumCaseMultiPayload();
    if (result <= 1)
    {
      result = sub_21D91BA78(v64, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      goto LABEL_32;
    }

    if (result != 3)
    {
      break;
    }

LABEL_32:
    if (v57 < v55)
    {
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    if (v60 == v61)
    {
      goto LABEL_45;
    }

    if (v57 == ++v61)
    {
      goto LABEL_35;
    }
  }

  result = sub_21D91BA78(v64, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  if (v61 >= v79)
  {
    goto LABEL_35;
  }

  v74 = v85;
  v75 = v89;
  sub_21D90BFC8(v85, v89, type metadata accessor for TTRRemindersListViewModel.Item);
  v76 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
  *(v75 + *(v76 + 20)) = v61;
  (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
  type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving(0);
  swift_storeEnumTagMultiPayload();
  v72 = v74;
  return sub_21D91BA78(v72, type metadata accessor for TTRRemindersListViewModel.Item);
}

uint64_t TTRSECreateRemindersPresenterCapability.fixUpDestinationForMoving(_:into:atUnadjustedIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v58 = a4;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58380, &qword_21DC09228);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v48 - v9;
  v54 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v10 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
  v55 = *(v12 - 8);
  v56 = v12;
  MEMORY[0x28223BE20](v12);
  v51 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D90, &unk_21DC31740);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A60, &unk_21DC316E0);
  v53 = v10;
  v26 = *(v10 + 80);
  v27 = v57;
  v28 = (v26 + 32) & ~v26;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21DC08D00;
  sub_21D90BFC8(a1, v29 + v28, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  v30 = a2;
  sub_21D914F50(v29, a2, v27, 0, v25);
  swift_setDeallocating();
  sub_21D91BA78(v29 + v28, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  swift_deallocClassInstance();
  sub_21D90BFC8(v25, v22, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D91BA78(v25, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88, &qword_21DC31738);

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D98, &unk_21DC31750);
    v32 = *(v31 + 48);
    v33 = v58;
    sub_21D0D3954(v30, v58, &qword_27CE58380, &qword_21DC09228);
    *(v33 + v32) = v27;
    (*(*(v31 - 8) + 56))(v33, 0, 1, v31);
    return sub_21D91BA78(v22, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  v35 = v58;
  sub_21D0D523C(v22, v19, &qword_27CE63D90, &unk_21DC31740);
  sub_21D0D3954(v19, v16, &qword_27CE63D90, &unk_21DC31740);
  v36 = v56;
  if ((*(v55 + 48))(v16, 1, v56) == 1)
  {
    sub_21D0CF7E0(v19, &qword_27CE63D90, &unk_21DC31740);
    sub_21D91BA78(v25, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving);
    sub_21D0CF7E0(v16, &qword_27CE63D90, &unk_21DC31740);
    v37 = v35;
LABEL_7:
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D98, &unk_21DC31750);
    return (*(*(v43 - 8) + 56))(v37, 1, 1, v43);
  }

  v38 = v51;
  sub_21D91BAD8(v16, v51, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination);
  v39 = v50;
  sub_21D90BFC8(v38, v50, type metadata accessor for TTRRemindersListViewModel.Item);
  v40 = v52;
  TTRSECreateRemindersViewModel.Item.init(remindersListItem:)(v39, v52);
  sub_21D0CF7E0(v19, &qword_27CE63D90, &unk_21DC31740);
  sub_21D91BA78(v25, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving);
  v42 = v53;
  v41 = v54;
  v37 = v35;
  if ((*(v53 + 48))(v40, 1, v54) == 1)
  {
    sub_21D91BA78(v38, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination);
    sub_21D0CF7E0(v40, &qword_27CE58380, &qword_21DC09228);
    goto LABEL_7;
  }

  v44 = v49;
  sub_21D91BAD8(v40, v49, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D98, &unk_21DC31750);
  v46 = *(v45 + 48);
  sub_21D91BAD8(v44, v37, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  (*(v42 + 56))(v37, 0, 1, v41);
  v47 = *(v38 + *(v36 + 20));
  sub_21D91BA78(v38, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination);
  *(v37 + v46) = v47;
  return (*(*(v45 - 8) + 56))(v37, 0, 1, v45);
}

uint64_t TTRSECreateRemindersPresenterCapability.requestMove(_:into:atUnadjustedIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38, &qword_21DC0D020);
  MEMORY[0x28223BE20](v24);
  v9 = &v24 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D914F50(a1, a2, v25, 1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88, &qword_21DC31738);
    v18 = *&v16[*(v17 + 48)];
    v19 = *&v16[*(v17 + 64)];
    sub_21D91BAD8(v16, v13, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D90BFC8(v13, v7, type metadata accessor for TTRRemindersListViewModel.Item);
    v20 = *(v11 + 56);
    v20(v7, 0, 1, v10);
    v20(v9, 1, 1, v10);

    sub_21D60E768(v7, v9);
    *&v9[*(v24 + 36)] = v18;
    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0, &qword_21DC1A330);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D48, &qword_21DC0D030);
    sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0, &qword_21DC1A330, MEMORY[0x277D83970]);
    v21 = sub_21DBFA43C();

    if (v21)
    {
      v22 = sub_21D270494(v21, v9);

      sub_21D0CF7E0(v9, &qword_27CE59D38, &qword_21DC0D020);
      if (v22)
      {
        sub_21D64A230(v22);

        sub_21D91BA78(v13, type metadata accessor for TTRRemindersListViewModel.Item);
        return 1;
      }
    }

    else
    {

      sub_21D0CF7E0(v9, &qword_27CE59D38, &qword_21DC0D020);
    }

    sub_21D91BA78(v13, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  else
  {
    sub_21D0CF7E0(v16, &qword_27CE63D90, &unk_21DC31740);
  }

  return 0;
}

uint64_t TTRSECreateRemindersPresenterCapability.canDrop(_:into:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58380, &qword_21DC09228);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 72) & 1) == 0)
  {
    sub_21D90BFC8(a2, v7, type metadata accessor for TTRSECreateRemindersViewModel.Item);
    v11 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    sub_21D914F50(a1, v7, 0, 1, v10);
    sub_21D0CF7E0(v7, &qword_27CE58380, &qword_21DC09228);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88, &qword_21DC31738);

      sub_21D91BA78(v10, type metadata accessor for TTRRemindersListViewModel.Item);
      return 1;
    }

    sub_21D0CF7E0(v10, &qword_27CE63D90, &unk_21DC31740);
  }

  return 0;
}

uint64_t TTRSECreateRemindersPresenterCapability.requestDrop(_:into:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58380, &qword_21DC09228);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_21D90BFC8(a2, &v10 - v5, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  v7 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = TTRSECreateRemindersPresenterCapability.requestMove(_:into:atUnadjustedIndex:)(a1, v6, 0);
  sub_21D0CF7E0(v6, &qword_27CE58380, &qword_21DC09228);
  return v8 & 1;
}

Swift::tuple_isEnabled_Bool_newValue_UIMenuElementState __swiftcall TTRSECreateRemindersPresenterCapability.optionsForPostponing(items:to:)(Swift::OpaquePointer items, RemindersUICore::TTRRemindersListPostponeType to)
{
  v5 = *to;
  v3 = TTRRemindersListPresenterCapabilityCore.optionsForPostponing(items:to:)(items, &v5);
  newValue = v3.newValue;
  isEnabled = v3.isEnabled;
  result.newValue = newValue;
  result.isEnabled = isEnabled;
  return result;
}

Swift::Int __swiftcall TTRSECreateRemindersPresenterCapability.requestPostpone(_:to:)(Swift::OpaquePointer _, RemindersUICore::TTRRemindersListPostponeType to)
{
  v3 = *to;
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE63CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  strcpy((inited + 32), "postponeType");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v6 = sub_21DBFA1AC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
  sub_21DAEACDC("Create Reminders Postpone {postponeType: %@}", 44, 2, v8);

  v13 = v3;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v9._countAndFlagsBits = sub_21DBF516C();
  v9._object = v10;
  v11 = TTRRemindersListPresenterCapabilityCore.request(postpone:to:undoActionName:)(_, &v13, v9);

  return v11;
}

uint64_t TTRSECreateRemindersPresenterCapability.paramsForBatchAddHashtag(_:fetchesAllHashtagLabels:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    v4 = a1;
    v5 = a3;
    swift_retain_n();
    a3 = v5;
    a1 = v4;
    v6 = sub_21D91BCC4;
    v7 = v3;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  TTRRemindersListPresenterCapabilityCore.paramsForBatchAddHashtag(_:fetchAllHashtagLabels:)(a1, v6, v7, a3);
  sub_21D0D0E88(v6, v7);

  return sub_21D0D0E88(v6, v7);
}

double TTRSECreateRemindersPresenterCapability.requestUpdateHashtagsToMatch(_:for:)(uint64_t a1, uint64_t a2)
{
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE63CD0);
  v5 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Create Reminders Update Hashtags", 32, 2, v5);

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF516C();
  v8 = v7;
  MEMORY[0x28223BE20](v6);
  v11[2] = a1;
  sub_21D723218(a2, v9, v8, sub_21D91BD10, v11);

  return result;
}

double sub_21D916E94(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_27CE63CD0);
  v13 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC(a4, a5, 2, v13);

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v14 = sub_21DBF516C();
  v16 = v15;
  MEMORY[0x28223BE20](v14);
  v19[2] = a1;
  v19[3] = a2;
  sub_21D723218(a3, v17, v16, a6, v19);

  return result;
}

void TTRSECreateRemindersPresenterCapability.assignment(for:)(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_21D9170D0();
  TTRRemindersListPresenterCapabilityCore.assignment(for:pendingMoveTargetListForHostingReminder:)(a1, v4, a2);
}

id sub_21D9170D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
  ObjectType = swift_getObjectType();
  if (!(*(v1 + 8))(ObjectType, v1))
  {
    return 0;
  }

  v4 = v3;
  v5 = swift_getObjectType();
  (*(*(v4 + 16) + 8))(&v14, v5);
  swift_unknownObjectRelease();
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v11 = v19;
  if (v15 == 255)
  {
    sub_21D157864(v14, 255);
    sub_21D575DF4(v8, v9, v10, v11);
    return 0;
  }

  v12 = v14;
  sub_21D157864(v6, v7);
  sub_21D575DF4(v8, v9, v10, v11);
  if (v7)
  {
    sub_21D157864(v6, v7);
    return 0;
  }

  return v6;
}

char *TTRSECreateRemindersPresenterCapability.assigneeCandidates(for:)(uint64_t a1)
{
  v2 = sub_21D9170D0();
  v3 = TTRRemindersListPresenterCapabilityCore.assigneeCandidates(for:pendingMoveTargetListForHostingReminder:)(a1, v2);

  return v3;
}

uint64_t TTRSECreateRemindersPresenterCapability.loadAssignment(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21DBFA84C();
  v3[5] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_21D9172E8, v5, v4);
}

uint64_t sub_21D9172E8()
{
  v1 = sub_21D9170D0();
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_21D9173A4;
  v3 = v0[2];
  v4 = v0[3];

  return TTRRemindersListPresenterCapabilityCore.loadAssignment(for:pendingMoveTargetListForHostingReminder:)(v3, v4, v1);
}

uint64_t sub_21D9173A4()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21D2016E4, v4, v3);
}

void TTRSECreateRemindersPresenterCapability.paramsForBatchAssign(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21D9170D0();
  TTRRemindersListPresenterCapabilityCore.paramsForBatchAssign(_:pendingMoveTargetListForHostingReminder:)(a1, v4, a2);
}

void TTRSECreateRemindersPresenterCapability.updateAssigneeCandidateAvatarImages(for:configuration:completion:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 24);
  v6 = *a2;
  v7 = v4;
  v8 = v5;
  TTRRemindersListPresenterCapabilityCore.updateAssigneeCandidateAvatarImages(for:configuration:completion:)(a1, &v6, a3, a4);
}

void TTRSECreateRemindersPresenterCapability.requestSetAssignee(_:for:)(__int128 *a1, uint64_t a2)
{
  v3 = a1[5];
  v18 = a1[4];
  v19 = v3;
  v20 = a1[6];
  v4 = a1[1];
  v14 = *a1;
  v15 = v4;
  v5 = a1[3];
  v16 = a1[2];
  v17 = v5;
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF84BC();
  __swift_project_value_buffer(v6, qword_27CE63CD0);
  v7 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Create Reminders Set Assignee", 29, 2, v7, v14, v15, v16, v17, v18, v19, v20);

  v8 = sub_21D9170D0();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v9 = sub_21DBF516C();
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  v13[2] = &v14;
  v13[3] = v8;
  sub_21D723218(a2, v12, v11, sub_21D72D3C0, v13);
}

Swift::Void __swiftcall TTRSECreateRemindersPresenterCapability.requestAcceptSuggestedReminders(for:)(Swift::OpaquePointer a1)
{
  v21[1] = *v1;
  v3 = sub_21DBF619C();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF613C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE63CD0);
  v11 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Create Reminders Accept Suggested Reminder(s)", 45, 2, v11);

  rawValue = a1._rawValue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0, &qword_21DC1A330);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0, &qword_21DC1A330, MEMORY[0x277D83970]);
  sub_21D183A0C();
  v12 = sub_21DBFA42C();
  sub_21D91BD18(v1, v12);

  (*(v7 + 104))(v9, *MEMORY[0x277D44E78], v6);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  sub_21DBF62DC();
  sub_21DBF62CC();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8, &qword_21DC0AFC0);
  v14 = &v5[v13[12]];
  v15 = v13[16];
  v16 = &v5[v13[20]];
  (*(v7 + 16))(v5, v9, v6);
  *v14 = TTRUserDefaults.activitySessionId.getter();
  v14[1] = v17;
  TTRUserDefaults.activitySessionBeginTime.getter(&v5[v15]);
  *v16 = sub_21DBFC8EC();
  v16[1] = v18;
  v20 = v22;
  v19 = v23;
  (*(v22 + 104))(v5, *MEMORY[0x277D44E98], v23);
  sub_21DBF62BC();

  (*(v20 + 8))(v5, v19);
  (*(v7 + 8))(v9, v6);
}

id sub_21D917B94@<X0>(uint64_t *a2@<X8>)
{
  result = TTRRemindersListViewModel.Item.reminderObjectID.getter();
  *a2 = result;
  return result;
}

void sub_21D917BD0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  v2 = *(v1 + 32);
  if (!v2)
  {
    return;
  }

  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v32 = *(v1 + 24) & 0x101;
  v33 = v2;
  v34 = v3;
  v35 = v4;
  v5 = *(a1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v8 = v7(ObjectType, v5);
  if (!v8)
  {

LABEL_17:

    return;
  }

  v10 = v8;
  v11 = v9;
  sub_21D97B164(&v32);
  v13 = v12;
  v14 = *(v1 + 16);
  v15 = *(v14 + 24);
  v16 = *(v14 + 32);
  v17 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v18 = *(v13 + 16);
  v28 = v15;
  swift_unknownObjectRetain();
  if (!v18)
  {
    v27 = v17;
LABEL_14:

    v25 = 256;
    if (!HIBYTE(v32))
    {
      v25 = 0;
    }

    sub_21D64B09C(v27, v25 | v32, v33, v34, v35);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_17;
  }

  v19 = 0;
  v20 = (v13 + 48);
  v27 = MEMORY[0x277D84F90];
  while (v19 < *(v13 + 16))
  {
    v21 = *(v20 - 1);
    v22 = *v20;
    v30[0] = *(v20 - 2);
    v30[1] = v21;
    v30[2] = v22;
    v23 = v30[0];
    sub_21DBF8E0C();
    sub_21D91A4AC(v30, v28, v16, v10, v11, &v29);
    v24 = v30[0];

    if (v29)
    {
      MEMORY[0x223D42D80]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v27 = v31;
    }

    ++v19;
    v20 += 3;
    if (v18 == v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);

  v26 = v30[0];

  __break(1u);
}

Swift::Void __swiftcall TTRSECreateRemindersPresenterCapability.requestAcceptAllSuggestedReminders()()
{
  v18[1] = *v0;
  v1 = sub_21DBF619C();
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF613C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE63CD0);
  v9 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Create Reminders Accept All Suggested Reminders", 47, 2, v9);

  sub_21D917BD0(v0);
  (*(v5 + 104))(v7, *MEMORY[0x277D44E80], v4);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  sub_21DBF62DC();
  sub_21DBF62CC();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8, &qword_21DC0AFC0);
  v11 = &v3[v10[12]];
  v12 = v10[16];
  v13 = &v3[v10[20]];
  (*(v5 + 16))(v3, v7, v4);
  *v11 = TTRUserDefaults.activitySessionId.getter();
  v11[1] = v14;
  TTRUserDefaults.activitySessionBeginTime.getter(&v3[v12]);
  *v13 = sub_21DBFC8EC();
  v13[1] = v15;
  v17 = v19;
  v16 = v20;
  (*(v19 + 104))(v3, *MEMORY[0x277D44E98], v20);
  sub_21DBF62BC();

  (*(v17 + 8))(v3, v16);
  (*(v5 + 8))(v7, v4);
}

double sub_21D9181C4@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v4);
  v5 = sub_21D291698(v4);

  sub_21D91BA78(v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v5 && (v6 = *(*v5 + 128), swift_beginAccess(), v7 = *(v5 + v6), , , v7))
  {
    v8 = *(v7 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);
    *(a1 + 24) = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
    *(a1 + 32) = &protocol witness table for REMReminderChangeItem;
    *a1 = v8;
    v9 = v8;
    v10 = sub_21D9170D0();

    *(a1 + 40) = v10;
  }

  else
  {
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_21D918358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  sub_21D90BFC8(a2, v16 - v7, type metadata accessor for TTRRemindersListViewModel.Item);
  v9 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  sub_21D4D55B8(a1, v18);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  TTRRemindersListViewModel.Reminder.init(item:reminderAndList:precomputedProperties:overrides:)(v8, v18, v16, MEMORY[0x277D84F90], a3);
  v11 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v12 = a3 + v11[31];

  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  sub_21D90BFC8(a2, v8, type metadata accessor for TTRRemindersListViewModel.Item);
  v10(v8, 0, 1, v9);

  v13 = sub_21D261568(v8);

  result = sub_21D0CF7E0(v8, &unk_27CE5CD80, &qword_21DC0CE80);
  v15 = a3 + v11[23];
  *v15 = v13 & ~(v13 >> 63);
  *(v15 + 8) = v13 < 1;
  *(a3 + v11[24]) = 1;
  return result;
}

uint64_t sub_21D918568(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 48))(v4, ObjectType, v9);
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 1;
  }

  v14 = swift_allocObject();
  swift_weakInit();

  a4(a1, a2, v11, v13 & 1, a3, v14);
}

__n128 sub_21D918694(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_core);
  v10 = sub_21D9170D0();
  v11 = swift_allocObject();
  swift_weakInit();
  sub_21D90BFC8(a2, v8, type metadata accessor for TTRRemindersListViewModel.Item);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_21D91BAD8(v8, v13 + v12, type metadata accessor for TTRRemindersListViewModel.Item);

  TTRRemindersListPresenterCapabilityCore.assignment(for:pendingMoveTargetListForHostingReminder:)(a2, v10, &v79);
  v103 = v89;
  v104 = v90;
  v105 = v91;
  v106 = v92;
  v99 = v85;
  v100 = v86;
  v101 = v87;
  v102 = v88;
  v95 = v81;
  v96 = v82;
  v97 = v83;
  v98 = v84;
  v93 = v79;
  v94 = v80;
  if (sub_21D157494(&v93) == 1)
  {
  }

  else
  {
    v75 = v103;
    v76 = v104;
    v77 = v105;
    v78 = v106;
    v72 = v100;
    v73 = v101;
    v74 = v102;
    v67 = v95;
    v68 = v96;
    v69 = v97;
    v70 = v98;
    v71 = v99;
    v65 = v93;
    v66 = v94;
    v15 = v9[12];
    v16 = v9[13];
    __swift_project_boxed_opaque_existential_1(v9 + 9, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21DC09CF0;
    v18 = objc_opt_self();
    v33[10] = v89;
    v33[11] = v90;
    v33[12] = v91;
    v33[13] = v92;
    v33[6] = v85;
    v33[7] = v86;
    v33[8] = v87;
    v33[9] = v88;
    v33[2] = v81;
    v33[3] = v82;
    v33[4] = v83;
    v33[5] = v84;
    v33[0] = v79;
    v33[1] = v80;
    sub_21D72DCB4(v33, v63);
    *(v17 + 32) = [v18 descriptorForRequiredKeysWithThreeDTouchEnabled_];
    REMContactsProviderType.loadContact(for:keys:updateHandler:)(&v65, v17, sub_21D92C37C, v13, v15, v16);

    sub_21D0CF7E0(&v79, &qword_27CE608E0, &qword_21DC25DE8);

    v44 = v75;
    v45 = v76;
    v46 = v77;
    v47 = v78;
    v40 = v71;
    v41 = v72;
    v42 = v73;
    v43 = v74;
    v36 = v67;
    v37 = v68;
    v38 = v69;
    v39 = v70;
    v34 = v65;
    v35 = v66;
    nullsub_1();
    v58 = v44;
    v59 = v45;
    v60 = v46;
    v61 = v47;
    v54 = v40;
    v55 = v41;
    v56 = v42;
    v57 = v43;
    v50 = v36;
    v51 = v37;
    v52 = v38;
    v53 = v39;
    v48 = v34;
    v49 = v35;
    v62 = 1;
    nullsub_1();
    v19 = a1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 136);
    v20 = *(v19 + 208);
    v63[12] = *(v19 + 192);
    v63[13] = v20;
    v64 = *(v19 + 224);
    v21 = *(v19 + 144);
    v63[8] = *(v19 + 128);
    v63[9] = v21;
    v22 = *(v19 + 176);
    v63[10] = *(v19 + 160);
    v63[11] = v22;
    v23 = *(v19 + 80);
    v63[4] = *(v19 + 64);
    v63[5] = v23;
    v24 = *(v19 + 112);
    v63[6] = *(v19 + 96);
    v63[7] = v24;
    v25 = *(v19 + 16);
    v63[0] = *v19;
    v63[1] = v25;
    v26 = *(v19 + 48);
    v63[2] = *(v19 + 32);
    v63[3] = v26;
    sub_21D0CF7E0(v63, &unk_27CE5FB50, &qword_21DC1FAE0);

    v27 = v61;
    *(v19 + 192) = v60;
    *(v19 + 208) = v27;
    *(v19 + 224) = v62;
    v28 = v57;
    *(v19 + 128) = v56;
    *(v19 + 144) = v28;
    v29 = v59;
    *(v19 + 160) = v58;
    *(v19 + 176) = v29;
    v30 = v53;
    *(v19 + 64) = v52;
    *(v19 + 80) = v30;
    v31 = v55;
    *(v19 + 96) = v54;
    *(v19 + 112) = v31;
    v32 = v49;
    *v19 = v48;
    *(v19 + 16) = v32;
    result = v51;
    *(v19 + 32) = v50;
    *(v19 + 48) = result;
  }

  return result;
}

uint64_t sub_21D918B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v120 = a3;
  v125 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v94 - v5;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388, &unk_21DC0F470);
  MEMORY[0x28223BE20](v104);
  v105 = &v94 - v7;
  v103 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v103);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v124 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v96 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v94 - v12;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0, &qword_21DC0A050);
  MEMORY[0x28223BE20](v123);
  v14 = &v94 - v13;
  v122 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v101 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v118 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v117 = (&v94 - v17);
  MEMORY[0x28223BE20](v18);
  v119 = &v94 - v19;
  MEMORY[0x28223BE20](v20);
  v116 = &v94 - v21;
  MEMORY[0x28223BE20](v22);
  v130 = &v94 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v94 - v25;
  v114 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v27 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v29 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v94 - v31;
  v33 = *(*(a2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 16);
  v35 = *(v33 + 24);
  v34 = *(v33 + 32);
  ObjectType = swift_getObjectType();
  v127 = v35;
  v37 = *(v34 + 8);
  v38 = v9;
  v39 = v29;
  v99 = TTRTreeContentsQueryable.ancestors(of:)(v125, ObjectType, v37);
  v113 = sub_21DBFC10C();
  sub_21DBFC42C();
  v40 = *(v27 + 48);
  v112 = v27 + 48;
  v111 = v40;
  v41 = v40(v32, 1, v114);
  v42 = v120;
  if (v41 == 1)
  {
LABEL_2:

    return 0;
  }

  v125 = v120 + 56;
  v98 = 0x800000021DC43E30;
  v97 = 0x800000021DC43E00;
  v107 = 0x800000021DC43DE0;
  v100 = (v124 + 48);
  v44 = &unk_27CE5CD70;
  v126 = v26;
  v109 = v39;
  v106 = v32;
  v115 = v38;
  v95 = v6;
  while (1)
  {
    sub_21D91BAD8(v32, v39, type metadata accessor for TTRRemindersListViewModel.Item);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v26);
    if (*(v42 + 16))
    {
      sub_21DBFC7DC();
      TTRRemindersListViewModel.ItemID.hash(into:)(&v127);
      v45 = sub_21DBFC82C();
      v46 = -1 << *(v42 + 32);
      v47 = v45 & ~v46;
      if ((*(v125 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
      {
        break;
      }
    }

LABEL_4:
    v26 = v126;
    sub_21D91BA78(v126, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v39 = v109;
    sub_21D91BA78(v109, type metadata accessor for TTRRemindersListViewModel.Item);
    v32 = v106;
    sub_21DBFC42C();
    if (v111(v32, 1, v114) == 1)
    {
      goto LABEL_2;
    }
  }

  v121 = ~v46;
  v124 = *(v101 + 72);
  while (1)
  {
    v50 = v44;
    v51 = v6;
    v52 = v130;
    sub_21D90BFC8(*(v42 + 48) + v124 * v47, v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v53 = *(v123 + 48);
    sub_21D90BFC8(v52, v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D90BFC8(v126, &v14[v53], type metadata accessor for TTRRemindersListViewModel.ItemID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v56 = v117;
        sub_21D90BFC8(v14, v117, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v57 = *v56;
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);

          v42 = v120;
          goto LABEL_10;
        }

        v58 = *&v14[v53];
        sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
        v59 = sub_21DBFB63C();

        sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
        if (v59)
        {

          goto LABEL_81;
        }

        goto LABEL_74;
      }

      v72 = v118;
      sub_21D90BFC8(v14, v118, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v48 = type metadata accessor for TTRRemindersListViewModel.ItemID;
        v49 = v130;
        goto LABEL_9;
      }

      v73 = *v72;
      if (v73 > 2)
      {
        if (v73 == 3)
        {
          v76 = 0xD00000000000001FLL;
          v81 = &v128;
        }

        else
        {
          if (v73 == 4)
          {
            v77 = 0xE700000000000000;
            v76 = 0x6D657449706974;
            goto LABEL_53;
          }

          v76 = 0xD00000000000001DLL;
          v81 = &v129;
        }

        v77 = *(v81 - 32);
      }

      else
      {
        v74 = 0xD000000000000012;
        if (v73 == 1)
        {
          v74 = 0x7367617468736168;
        }

        v75 = 0xEC0000006D657449;
        if (v73 != 1)
        {
          v75 = v107;
        }

        if (*v72)
        {
          v76 = v74;
        }

        else
        {
          v76 = 0x6574656C706D6F63;
        }

        if (*v72)
        {
          v77 = v75;
        }

        else
        {
          v77 = 0xED00006D65744964;
        }
      }

LABEL_53:
      v82 = v14[v53];
      if (v82 <= 2)
      {
        if (v14[v53])
        {
          if (v82 == 1)
          {
            v83 = 0x7367617468736168;
          }

          else
          {
            v83 = 0xD000000000000012;
          }

          if (v82 == 1)
          {
            v84 = 0xEC0000006D657449;
          }

          else
          {
            v84 = v107;
          }

          if (v76 != v83)
          {
LABEL_73:
            v87 = sub_21DBFC64C();

            sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (v87)
            {
              goto LABEL_78;
            }

LABEL_74:
            sub_21D91BA78(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
            v42 = v120;
            goto LABEL_11;
          }
        }

        else
        {
          v84 = 0xED00006D65744964;
          if (v76 != 0x6574656C706D6F63)
          {
            goto LABEL_73;
          }
        }

LABEL_72:
        if (v77 == v84)
        {

          sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_78:

          sub_21D91BA78(v126, type metadata accessor for TTRRemindersListViewModel.ItemID);
          sub_21D91BA78(v109, type metadata accessor for TTRRemindersListViewModel.Item);
          sub_21D91BA78(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
          return 1;
        }

        goto LABEL_73;
      }

      if (v82 == 3)
      {
        v85 = 0xD00000000000001FLL;
        v86 = &v128;
      }

      else
      {
        if (v82 == 4)
        {
          v84 = 0xE700000000000000;
          if (v76 != 0x6D657449706974)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }

        v85 = 0xD00000000000001DLL;
        v86 = &v129;
      }

      v84 = *(v86 - 32);
      if (v76 != v85)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    if (EnumCaseMultiPayload)
    {
      break;
    }

    v55 = v116;
    sub_21D90BFC8(v14, v116, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v48 = type metadata accessor for TTRRemindersListViewModel.SectionID;
      v49 = v55;
LABEL_9:
      sub_21D91BA78(v49, v48);
LABEL_10:
      sub_21D0CF7E0(v14, &qword_27CE58AD0, &qword_21DC0A050);
LABEL_11:
      v6 = v51;
      v44 = v50;
      goto LABEL_12;
    }

    v78 = v108;
    sub_21D91BAD8(&v14[v53], v108, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v79 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v55, v78);
    sub_21D91BA78(v78, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v42 = v120;
    sub_21D91BA78(v55, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D91BA78(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v6 = v51;
    v44 = v50;
    if (v79)
    {

      goto LABEL_82;
    }

LABEL_12:
    v47 = (v47 + 1) & v121;
    if (((*(v125 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v60 = v119;
  sub_21D90BFC8(v14, v119, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D91BA78(v60, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v42 = v120;
    goto LABEL_10;
  }

  v61 = v115;
  sub_21D91BAD8(&v14[v53], v115, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v6 = v51;
    v44 = v50;
    goto LABEL_76;
  }

  v62 = *(v103 + 20);
  v63 = *(v104 + 48);
  v64 = v105;
  sub_21D0D3954(v60 + v62, v105, v50, &unk_21DC09230);
  v65 = v61 + v62;
  v66 = v64;
  v110 = v63;
  sub_21D0D3954(v65, v64 + v63, v50, &unk_21DC09230);
  v67 = *v100;
  v68 = v64;
  v69 = v102;
  if ((*v100)(v68, 1, v102) == 1)
  {
    sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v70 = v67(v66 + v110, 1, v69) == 1;
    v6 = v51;
    v71 = v66;
    v61 = v115;
    v44 = v50;
    if (v70)
    {
      v92 = v71;

      sub_21D0CF7E0(v92, &unk_27CE5CD70, &unk_21DC09230);
      v60 = v119;
      goto LABEL_80;
    }

LABEL_49:
    sub_21D0CF7E0(v71, &qword_27CE58388, &unk_21DC0F470);
    v60 = v119;
    goto LABEL_76;
  }

  v80 = v51;
  v44 = v50;
  sub_21D0D3954(v66, v80, v50, &unk_21DC09230);
  if (v67(v66 + v110, 1, v69) == 1)
  {
    sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v6 = v95;
    sub_21D91BA78(v95, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v71 = v66;
    v61 = v115;
    goto LABEL_49;
  }

  v88 = v96;
  sub_21D91BAD8(v66 + v110, v96, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v89 = v95;
  v90 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v95, v88);
  v91 = v88;
  v44 = v50;
  sub_21D91BA78(v91, type metadata accessor for TTRRemindersListViewModel.SectionID);
  sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D91BA78(v89, type metadata accessor for TTRRemindersListViewModel.SectionID);
  sub_21D0CF7E0(v66, v50, &unk_21DC09230);
  v6 = v89;
  v61 = v115;
  v60 = v119;
  if ((v90 & 1) == 0)
  {
LABEL_76:
    sub_21D91BA78(v61, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D91BA78(v60, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D91BA78(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v42 = v120;
    goto LABEL_12;
  }

LABEL_80:
  sub_21D91BA78(v61, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D91BA78(v60, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_81:
  sub_21D91BA78(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_82:
  v93 = v109;
  sub_21D91BA78(v126, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D91BA78(v93, type metadata accessor for TTRRemindersListViewModel.Item);
  return 1;
}

uint64_t sub_21D919C90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    v7 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928, &qword_21DC09B80);
    v4 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21DC08D00;
    sub_21D90BFC8(a1, v6 + v5, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D897284(&v7, v6);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    sub_21D91BA78(v6 + v5, type metadata accessor for TTRRemindersListViewModel.Item);
    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_21D919E00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    v7 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928, &qword_21DC09B80);
    v4 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21DC08D00;
    sub_21D90BFC8(a2, v6 + v5, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D897284(&v7, v6);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    sub_21D91BA78(v6 + v5, type metadata accessor for TTRRemindersListViewModel.Item);
    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_21D919F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v38 = a3;
  v39 = a2;
  v41 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v36 - v7;
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v40 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v36 - v24;
  sub_21D90BFC8(a1, v19, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  v26 = 1 << swift_getEnumCaseMultiPayload();
  if ((v26 & 0x71) != 0)
  {
    return (*(v15 + 56))(v41, 1, 1, v14);
  }

  if ((v26 & 0xC) != 0)
  {
    sub_21D91BA78(v19, type metadata accessor for TTRSECreateRemindersViewModel.Item);
    return (*(v15 + 56))(v41, 1, 1, v14);
  }

  sub_21D91BAD8(v19, v25, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D91BAD8(v25, v22, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v28 = v40;
  sub_21D90BFC8(v22, v40, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v29 = v14;
  swift_storeEnumTagMultiPayload();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v13);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
  v30 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v13, v10);
  sub_21D91BA78(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D91BA78(v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v30)
  {
    sub_21D91BA78(v28, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D91BA78(v22, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    return (*(v15 + 56))(v41, 1, 1, v14);
  }

  if (v38)
  {
    v31 = v37;
    sub_21D90BFC8(v28, v37, type metadata accessor for TTRRemindersListViewModel.Item);
    v32 = v28;
    v33 = *(v15 + 56);
    v33(v31, 0, 1, v29);

    v34 = sub_21D261568(v31);

    sub_21D0CF7E0(v31, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D91BA78(v22, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    if (v34 >= 1)
    {
      sub_21D91BA78(v32, type metadata accessor for TTRRemindersListViewModel.Item);
      return v33(v41, 1, 1, v29);
    }
  }

  else
  {
    sub_21D91BA78(v22, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v32 = v28;
  }

  v35 = v41;
  sub_21D91BAD8(v32, v41, type metadata accessor for TTRRemindersListViewModel.Item);
  return (*(v15 + 56))(v35, 0, 1, v29);
}

void sub_21D91A4AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v40 = a5;
  v41 = a4;
  v42 = a6;
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v39 - v13;
  v16 = *a1;
  v15 = *(a1 + 8);
  v39[0] = *(a1 + 16);
  v39[1] = v15;
  ObjectType = swift_getObjectType();
  *&v44[0] = a2;
  v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v19 - 8) + 56))(&v11[v18], 1, 1, v19);
  *v11 = v16;
  swift_storeEnumTagMultiPayload();
  v20 = *(a3 + 8);
  v21 = *(v20 + 40);
  v22 = v16;
  v21(v11, ObjectType, v20);
  sub_21D91BA78(v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v23 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  LODWORD(a3) = (*(*(v23 - 8) + 48))(v14, 1, v23);
  sub_21D0CF7E0(v14, &unk_27CE5CD80, &qword_21DC0CE80);
  if (a3 != 1)
  {
    if (qword_27CE56E70 != -1)
    {
      swift_once();
    }

    v34 = sub_21DBF84BC();
    __swift_project_value_buffer(v34, qword_27CE63CD0);
    v31 = sub_21DBF84AC();
    v35 = sub_21DBFAECC();
    if (!os_log_type_enabled(v31, v35))
    {
      goto LABEL_15;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "TTRSECreateRemindersPresenterCapability: unexpected: item for suggested reminder to be accepted already exists in tree";
    goto LABEL_14;
  }

  v24 = swift_getObjectType();
  v25 = (*(*(v40 + 16) + 16))(v22, v24);
  if (!v25)
  {
    if (qword_27CE56E70 != -1)
    {
      swift_once();
    }

    v38 = sub_21DBF84BC();
    __swift_project_value_buffer(v38, qword_27CE63CD0);
    v31 = sub_21DBF84AC();
    v35 = sub_21DBFAEBC();
    if (!os_log_type_enabled(v31, v35))
    {
      goto LABEL_15;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "TTRSECreateRemindersPresenterCapability: Cannot create REMReminderChangeItem for suggested reminder.";
LABEL_14:
    _os_log_impl(&dword_21D0C9000, v31, v35, v37, v36, 2u);
    MEMORY[0x223D46520](v36, -1, -1);
LABEL_15:
    v26 = 0;
    goto LABEL_16;
  }

  v26 = v25;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  sub_21D0D3954(v44, v43, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRReminderEditor();
  v27 = swift_allocObject();
  *(v27 + 72) = 0;
  *(v27 + 16) = v26;
  sub_21D0D3954(v43, v27 + 24, &unk_27CE60D80, &unk_21DC093F0);
  *(v27 + 64) = 0;
  v28 = [v26 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(v44, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0CF7E0(v43, &unk_27CE60D80, &unk_21DC093F0);
  *(v27 + 72) = v28;
  v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v30 = sub_21DBFA12C();
  v31 = [v29 initWithString_];

  v32 = sub_21D9CA3E0(v31, 0, 1);
  if (v32)
  {
    v33 = v32;
    swift_retain_n();
    sub_21D182E74(sub_21D23298C, v33);
  }

LABEL_16:

  *v42 = v26;
}

uint64_t TTRSECreateRemindersPresenterCapability.deinit()
{
  sub_21D157444(v0 + 16);
  sub_21D91BA78(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_undoContext, type metadata accessor for TTRRemindersListUndoContext);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t TTRSECreateRemindersPresenterCapability.__deallocating_deinit()
{
  TTRSECreateRemindersPresenterCapability.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D91AAB4()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore19UndoContextProvider_undoContext, &qword_27CE59370, &unk_21DC0B390);

  return swift_deallocClassInstance();
}

uint64_t sub_21D91AB28(size_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = *a1;
  result = sub_21D91B438(*a1, a2, a3);
  if (v3)
  {
LABEL_2:
  }

  if (v19)
  {
    v47 = *(v17 + 16);

LABEL_8:

    return v47;
  }

  v44 = v16;
  v40 = v13;
  v41 = v10;
  v39 = a1;
  v48 = 0;
  v47 = result;
  v20 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v22 = (v17 + 16);
    v21 = *(v17 + 16);
    if (v20 == v21)
    {
LABEL_7:

      goto LABEL_8;
    }

    v23 = v17;
    v42 = v8;
    v43 = a2;
    while (v20 < v21)
    {
      v24 = v23;
      v45 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v25 = v23 + v45;
      v26 = *(v8 + 72);
      v46 = v26 * v20;
      v27 = v23 + v45 + v26 * v20;
      v28 = v44;
      sub_21D90BFC8(v27, v44, type metadata accessor for TTRRemindersListViewModel.Item);
      v29 = a2;
      v30 = a3;
      v31 = v48;
      v32 = sub_21D918B84(v28, v29, a3);
      result = sub_21D91BA78(v28, type metadata accessor for TTRRemindersListViewModel.Item);
      v48 = v31;
      if (v31)
      {
        goto LABEL_2;
      }

      if (v32)
      {
        a3 = v30;
        v8 = v42;
        a2 = v43;
        v23 = v24;
      }

      else
      {
        v33 = v47;
        if (v20 == v47)
        {
          a3 = v30;
          v8 = v42;
          a2 = v43;
          v23 = v24;
        }

        else
        {
          if ((v47 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          v34 = *v22;
          if (v47 >= *v22)
          {
            goto LABEL_28;
          }

          v35 = v26 * v47;
          result = sub_21D90BFC8(&v25[v26 * v47], v40, type metadata accessor for TTRRemindersListViewModel.Item);
          if (v20 >= v34)
          {
            goto LABEL_29;
          }

          v36 = v46;
          sub_21D90BFC8(&v25[v46], v41, type metadata accessor for TTRRemindersListViewModel.Item);
          v23 = v24;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_21D256DA8(v24);
          }

          a3 = v30;
          v8 = v42;
          v37 = v23 + v45;
          result = sub_21D45E4C8(v41, v23 + v45 + v35);
          a2 = v43;
          if (v20 >= v23[2])
          {
            goto LABEL_30;
          }

          result = sub_21D45E4C8(v40, &v37[v36]);
          *v39 = v23;
          v33 = v47;
        }

        v47 = v33 + 1;
      }

      ++v20;
      v22 = v23 + 2;
      v21 = v23[2];
      if (v20 == v21)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21D91AF00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CE90, &qword_21DC336F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_21D0D3954(a1, &v8 - v5, &qword_27CE5CE90, &qword_21DC336F0);
  v7 = type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_21D91BAD8(v6, a2, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
  }
}

uint64_t sub_21D91B008(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  type metadata accessor for TTRSECreateRemindersViewModelSource();
  v8 = swift_allocObject();
  *(v8 + 64) = 0;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  swift_unknownObjectWeakInit();
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 80) = a1;
  *(v8 + 88) = &off_282EDB578;
  *(v8 + 96) = a2;
  *(v8 + 104) = &off_282ED8AC0;
  sub_21D0D32E4(a3, v8 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A78, &qword_21DC0CC80);
  v9 = type metadata accessor for TTRRemindersListTreeViewModel.Section(0);
  v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21DC08D00;
  if (qword_27CE56B18 != -1)
  {
    swift_once();
  }

  v12 = v11 + v10;
  v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v14 = __swift_project_value_buffer(v13, qword_27CE5F558);
  sub_21D90BFC8(v14, v12, type metadata accessor for TTRRemindersListViewModel.SectionID);
  sub_21D6EEF24(v24);
  v15 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v16 = (v12 + v15[5]);
  v17 = v24[5];
  v16[4] = v24[4];
  v16[5] = v17;
  v16[6] = v25[0];
  *(v16 + 106) = *(v25 + 10);
  v18 = v24[1];
  *v16 = v24[0];
  v16[1] = v18;
  v19 = v24[3];
  v16[2] = v24[2];
  v16[3] = v19;
  *(v12 + v15[6]) = 0;
  *(v12 + v15[7]) = 0;
  *(v12 + v15[8]) = 0;
  *(v12 + v15[9]) = 0;
  *(v12 + v15[10]) = 0;
  *(v12 + v15[11]) = 0;
  v20 = MEMORY[0x277D84F90];
  *(v12 + *(v9 + 20)) = MEMORY[0x277D84F90];
  *(v12 + *(v9 + 24)) = 0;
  type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  v21 = swift_allocObject();
  v22 = sub_21D91B620(v11, 0, v21, v20, 0, 0);
  __swift_destroy_boxed_opaque_existential_0(a3);
  *(v8 + 16) = v22;
  *(v8 + 72) = a4 & 1;
  return v8;
}

void *sub_21D91B27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TTRSECreateRemindersEditingSessionProvider();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = &off_282EC9E88;
  v10[6] = a4;
  v10[7] = &off_282EDB578;
  v10[8] = a5;
  v10[9] = &off_282ED8AC0;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();

  v11 = TTRRemindersListEditingSessionProviderCapability.init()();
  v10[10] = v11;
  v12 = swift_allocObject();
  *(v12 + 24) = &off_282EC9E88;
  swift_unknownObjectWeakInit();

  swift_beginAccess();
  v13 = v11[2];
  v14 = v11[3];
  v11[2] = sub_21D92C3E0;
  v11[3] = v12;

  sub_21D0D0E88(v13, v14);

  v15 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v16 = v11[4];
  v17 = v11[5];
  v11[4] = sub_21D92C3E8;
  v11[5] = v15;

  sub_21D0D0E88(v16, v17);

  return v10;
}

uint64_t sub_21D91B438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = sub_21D918B84(v10, a2, a3);
    if (v3 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v4 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_21D91B558(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21D1B795C;

  return sub_21D90DC20(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21D91B620(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v40 = a6;
  v39 = a4;
  v47[3] = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  v47[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
  v47[0] = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84F98];
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  *(v12 + 16) = MEMORY[0x277D84F90];
  v14 = (v12 + 16);
  v43 = v10;
  v42 = v11;
  v41 = v12;
  if (a2)
  {
    MEMORY[0x28223BE20](v12);
    v35 = v15;
    v36 = v10;
    v37 = v47;
    v38 = v11;
    v16 = sub_21D173ED4(sub_21D2F8AE4, v34, a1);
  }

  else
  {
    swift_beginAccess();
    v17 = sub_21DBF8E0C();
    sub_21D5624A0(v17);
    v18 = swift_endAccess();
    MEMORY[0x28223BE20](v18);
    v35 = v10 + 16;
    v36 = v47;
    v37 = (v11 + 16);
    v16 = sub_21D4E6184(sub_21D2F89B8, v34, a1);
  }

  v19 = v16;

  v20 = sub_21D177CD4(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A588, &unk_21DC0FAE0);
  v21 = swift_allocObject();
  *&v44[0] = v13;
  v46[0] = MEMORY[0x277D84F98];
  sub_21DB8503C(v19, v44, v46);

  v22 = v46[0];
  v21[2] = *&v44[0];
  v21[3] = v22;
  v21[4] = v20;
  sub_21D2A0FC0(v39, v21);

  swift_beginAccess();
  v23 = *v14;
  sub_21DBF8E0C();
  sub_21D2A21B4(v21, v23);

  if (a5)
  {
    v24 = swift_allocObject();
    v25 = v40;
    *(v24 + 16) = a5;
    *(v24 + 24) = v25;
    v26 = sub_21D92C3F8;
    v27 = v42;
  }

  else
  {
    v26 = sub_21D2F8BEC;
    v24 = 0;
    v27 = v42;
    v25 = v40;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v24;
  v45 = v21;
  sub_21D0D0E78(a5, v25);

  v26(v44, &v45);

  v40 = v44[0];
  swift_beginAccess();
  v29 = *(v27 + 16);
  sub_21DBF8E0C();
  sub_21D0D0E88(a5, v25);
  swift_beginAccess();
  v30 = *(v43 + 16);
  sub_21D0D32E4(v47, v44);
  type metadata accessor for TTRRemindersListTreeViewModel();
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D84FA0];
  *(v31 + 88) = MEMORY[0x277D84FA0];
  *(v31 + 80) = v21;
  *(v31 + 24) = v40;
  *(v31 + 96) = v29;
  *(v31 + 104) = sub_21D92C3F0;
  *(v31 + 112) = v28;
  swift_beginAccess();
  *(v31 + 88) = v32;
  *(v31 + 16) = v30;
  sub_21D0D0FD0(v44, v31 + 40);

  __swift_destroy_boxed_opaque_existential_0(v47);
  return v31;
}

uint64_t sub_21D91BA78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D91BAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15RemindersUICore011TTRSECreateA19PresenterCapabilityC13canShowDetail3forSbSayAA25TTRRemindersListViewModelC4ItemOG_tF_0(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  type metadata accessor for TTRRemindersListViewModel.Item(0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = EnumCaseMultiPayload == 2;
  if (EnumCaseMultiPayload < 2)
  {
    v7 = 1;
LABEL_7:
    sub_21D91BA78(v4, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    return v7;
  }

  v7 = 0;
  result = 0;
  if (v6)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21D91BCC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

void sub_21D91BD18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  v3 = *(v2 + 32);
  if (!v3)
  {
    return;
  }

  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v31 = *(v2 + 24) & 0x101;
  v32 = v3;
  v33 = v5;
  v34 = v6;
  v7 = *(a1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 8);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v27 = v9(ObjectType, v7);
  if (!v27)
  {

LABEL_16:

    return;
  }

  v11 = v10;
  sub_21DBF8E0C();
  sub_21D97B794(&v31, a2);
  v13 = v12;

  v14 = *(v2 + 16);
  v15 = *(v14 + 24);
  v16 = *(v14 + 32);
  v17 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  v18 = *(v13 + 16);
  swift_unknownObjectRetain();
  if (!v18)
  {
LABEL_11:

    v25 = 256;
    if (!HIBYTE(v31))
    {
      v25 = 0;
    }

    sub_21D64B09C(v17, v25 | v31, v32, v33, v34);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  v19 = 0;
  v20 = (v13 + 48);
  while (v19 < *(v13 + 16))
  {
    v21 = *(v20 - 1);
    v22 = *v20;
    v29[0] = *(v20 - 2);
    v29[1] = v21;
    v29[2] = v22;
    v23 = v29[0];
    sub_21DBF8E0C();
    sub_21D91A4AC(v29, v15, v16, v27, v11, &v28);
    v24 = v29[0];

    if (v28)
    {
      MEMORY[0x223D42D80]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v17 = v30;
    }

    ++v19;
    v20 += 3;
    if (v18 == v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);

  v26 = v29[0];

  __break(1u);
}

uint64_t sub_21D91C0D4(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListUndoContext(319);
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

void sub_21D91C1F4(uint64_t a1)
{
  sub_21D92C2BC(319, qword_280D13488, type metadata accessor for TTRRemindersListUndoContext);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void **sub_21D91C2A0(void **a1, void **a2, uint64_t a3)
{
  v4 = a2;
  if (a1 != a2)
  {
    sub_21D91BA78(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v27 = *(v26 - 8);
            if ((*(v27 + 48))(v4, 1, v26))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, v4, *(*(v28 - 8) + 64));
            }

            else
            {
              *a1 = *v4;
              v37 = *(v26 + 20);
              v38 = sub_21DBF6C1C();
              v108 = *(*(v38 - 8) + 16);
              sub_21DBF8E0C();
              v108(a1 + v37, v4 + v37, v38);
              (*(v27 + 56))(a1, 0, 1, v26);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = (a1 + v39);
            v41 = (v4 + v39);
            if (v41[1])
            {
              *v40 = *v41;
              v40[1] = v41[1];
              v42 = v41[2];
              v40[2] = v42;
              sub_21DBF8E0C();
              v43 = v42;
            }

            else
            {
              v44 = *v41;
              v40[2] = v41[2];
              *v40 = v44;
            }

            goto LABEL_128;
          case 7:
            v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v33 = *(v32 - 8);
            if ((*(v33 + 48))(v4, 1, v32))
            {
              v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v4, *(*(v34 - 8) + 64));
            }

            else
            {
              v46 = sub_21DBF563C();
              (*(*(v46 - 8) + 16))(a1, v4, v46);
              *(a1 + *(v32 + 20)) = *(v4 + *(v32 + 20));
              (*(v33 + 56))(a1, 0, 1, v32);
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v47 + 20)) = *(v4 + *(v47 + 20));
            goto LABEL_128;
          case 8:
            *a1 = *v4;
            v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v9 = sub_21DBF8D7C();
            (*(*(v9 - 8) + 16))(a1 + v8, v4 + v8, v9);
LABEL_128:
            swift_storeEnumTagMultiPayload();
            goto LABEL_129;
        }

        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *v4;
        *(a1 + 8) = *(v4 + 8);
        *(a1 + 9) = *(v4 + 9);
        *(a1 + 10) = *(v4 + 10);
        v18 = v4[2];
        a1[2] = v18;
        v19 = v18;
        goto LABEL_128;
      }

      v29 = *v4;
      *a1 = *v4;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      v30 = *(v15 + 48);
      v31 = v29;
      if (v30(v4 + v13, 1, v14))
      {
LABEL_27:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v13, v4 + v13, *(*(v25 - 8) + 64));
        goto LABEL_128;
      }

      v45 = swift_getEnumCaseMultiPayload();
      if (v45 > 4)
      {
        if (v45 <= 7)
        {
          if (v45 == 5 || v45 == 6)
          {
            goto LABEL_113;
          }

          goto LABEL_126;
        }

        if (v45 != 8 && v45 != 9)
        {
          goto LABEL_126;
        }

LABEL_112:
        v100 = *(v4 + v13);
        *(a1 + v13) = v100;
        v101 = v100;
        swift_storeEnumTagMultiPayload();
LABEL_127:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_128;
      }

      if (v45 <= 2)
      {
        if (v45 != 1)
        {
          if (v45 == 2)
          {
            goto LABEL_113;
          }

LABEL_126:
          memcpy(a1 + v13, v4 + v13, *(v15 + 64));
          goto LABEL_127;
        }

        goto LABEL_112;
      }

LABEL_113:
      v102 = sub_21DBF563C();
      (*(*(v102 - 8) + 16))(a1 + v13, v4 + v13, v102);
      swift_storeEnumTagMultiPayload();
      goto LABEL_127;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *v4;
        *a1 = *v4;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(v4 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v36 > 2)
        {
          goto LABEL_113;
        }

        if (v36 == 1)
        {
          goto LABEL_112;
        }

        if (v36 != 2)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v12 = *v4;
        *a1 = *v4;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(v4 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v35 > 2)
        {
          goto LABEL_113;
        }

        if (v35 == 1)
        {
          goto LABEL_112;
        }

        if (v35 != 2)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_113;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_34:
        memcpy(a1, v4, *(*(v6 - 8) + 64));
        goto LABEL_129;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v111 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, v4, v48);
          swift_storeEnumTagMultiPayload();
          goto LABEL_91;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

LABEL_67:
        v49 = *v4;
        *a1 = *v4;
        v50 = v49;
        swift_storeEnumTagMultiPayload();
        goto LABEL_91;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_67;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_64;
      }

LABEL_90:
      memcpy(a1, v4, *(*(v10 - 8) + 64));
LABEL_91:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = v4 + v55;
      if (*(v4 + v55 + 8))
      {
        v109 = v4;
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = *(v57 + 2);
        v59 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v63 = *(v57 + 6);
        v62 = *(v57 + 7);
        v104 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v58, v59, v60, v61, v63, v62, v104);
        *(v56 + 2) = v58;
        *(v56 + 3) = v59;
        *(v56 + 4) = v60;
        *(v56 + 5) = v61;
        *(v56 + 6) = v63;
        *(v56 + 7) = v62;
        v56[64] = v104;
        v56[65] = v57[65];
        v56[66] = v57[66];
        v56[67] = v57[67];
        v56[68] = v57[68];
        v64 = v57[120];
        if (v64 == 255)
        {
          v77 = *(v57 + 72);
          v78 = *(v57 + 88);
          v79 = *(v57 + 104);
          v56[120] = v57[120];
          *(v56 + 104) = v79;
          *(v56 + 88) = v78;
          *(v56 + 72) = v77;
        }

        else
        {
          v65 = *(v57 + 9);
          v105 = *(v57 + 10);
          v66 = *(v57 + 11);
          v67 = *(v57 + 12);
          v68 = *(v57 + 13);
          v69 = *(v57 + 14);
          v70 = v64 & 1;
          sub_21D0FB960(v65, v105, v66, v67, v68, v69, v64 & 1);
          *(v56 + 9) = v65;
          *(v56 + 10) = v105;
          *(v56 + 11) = v66;
          *(v56 + 12) = v67;
          *(v56 + 13) = v68;
          *(v56 + 14) = v69;
          v56[120] = v70;
        }

        a3 = v111;
        v56[121] = v57[121];
        v4 = v109;
        goto LABEL_97;
      }

LABEL_94:
      v71 = *v57;
      v72 = *(v57 + 1);
      v73 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v73;
      *v56 = v71;
      *(v56 + 1) = v72;
      v74 = *(v57 + 4);
      v75 = *(v57 + 5);
      v76 = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      *(v56 + 5) = v75;
      *(v56 + 6) = v76;
      *(v56 + 4) = v74;
      a3 = v111;
LABEL_97:
      *(a1 + v54[6]) = *(v4 + v54[6]);
      *(a1 + v54[7]) = *(v4 + v54[7]);
      *(a1 + v54[8]) = *(v4 + v54[8]);
      *(a1 + v54[9]) = *(v4 + v54[9]);
      *(a1 + v54[10]) = *(v4 + v54[10]);
      v80 = v54[11];
      v81 = *(v4 + v80);
      *(a1 + v80) = v81;
      v82 = v81;
      goto LABEL_128;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v111 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, v4, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_99;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

LABEL_71:
      v52 = *v4;
      *a1 = *v4;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_99;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_71;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_68;
    }

LABEL_98:
    memcpy(a1, v4, *(*(v20 - 8) + 64));
LABEL_99:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v83 = v54[5];
    v56 = a1 + v83;
    v57 = v4 + v83;
    if (*(v4 + v83 + 8))
    {
      v110 = v4;
      *v56 = *v57;
      *(v56 + 1) = *(v57 + 1);
      v84 = *(v57 + 2);
      v85 = *(v57 + 3);
      v86 = *(v57 + 4);
      v87 = *(v57 + 5);
      v88 = *(v57 + 6);
      v89 = *(v57 + 7);
      v106 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v84, v85, v86, v87, v88, v89, v106);
      *(v56 + 2) = v84;
      *(v56 + 3) = v85;
      *(v56 + 4) = v86;
      *(v56 + 5) = v87;
      *(v56 + 6) = v88;
      *(v56 + 7) = v89;
      v56[64] = v106;
      v56[65] = v57[65];
      v56[66] = v57[66];
      v56[67] = v57[67];
      v56[68] = v57[68];
      v90 = v57[120];
      if (v90 == 255)
      {
        v97 = *(v57 + 72);
        v98 = *(v57 + 88);
        v99 = *(v57 + 104);
        v56[120] = v57[120];
        *(v56 + 104) = v99;
        *(v56 + 88) = v98;
        *(v56 + 72) = v97;
      }

      else
      {
        v91 = *(v57 + 9);
        v107 = *(v57 + 10);
        v92 = *(v57 + 11);
        v93 = *(v57 + 12);
        v94 = *(v57 + 13);
        v95 = *(v57 + 14);
        v96 = v90 & 1;
        sub_21D0FB960(v91, v107, v92, v93, v94, v95, v90 & 1);
        *(v56 + 9) = v91;
        *(v56 + 10) = v107;
        *(v56 + 11) = v92;
        *(v56 + 12) = v93;
        *(v56 + 13) = v94;
        *(v56 + 14) = v95;
        v56[120] = v96;
      }

      a3 = v111;
      v56[121] = v57[121];
      v4 = v110;
      goto LABEL_97;
    }

    goto LABEL_94;
  }

LABEL_129:
  *(a1 + *(a3 + 20)) = *(v4 + *(a3 + 20));
  return a1;
}

void *sub_21D91D938(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D91BA78(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v9 = swift_getEnumCaseMultiPayload();
          if (v9 <= 3)
          {
            if (v9 == 2 || v9 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v9 == 4 || v9 == 5 || v9 == 6)
          {
LABEL_10:
            v10 = sub_21DBF563C();
            (*(*(v10 - 8) + 32))(a1, a2, v10);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v36 = v35[5];
            v37 = (a1 + v36);
            v38 = (a2 + v36);
            v39 = v38[3];
            v37[2] = v38[2];
            v37[3] = v39;
            v40 = v38[1];
            *v37 = *v38;
            v37[1] = v40;
            *(v37 + 106) = *(v38 + 106);
            v41 = v38[6];
            v37[5] = v38[5];
            v37[6] = v41;
            v37[4] = v38[4];
            *(a1 + v35[6]) = *(a2 + v35[6]);
            *(a1 + v35[7]) = *(a2 + v35[7]);
            *(a1 + v35[8]) = *(a2 + v35[8]);
            *(a1 + v35[9]) = *(a2 + v35[9]);
            *(a1 + v35[10]) = *(a2 + v35[10]);
            *(a1 + v35[11]) = *(a2 + v35[11]);
            goto LABEL_88;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_66;
        }

        goto LABEL_33;
      }

      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
LABEL_30:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
          goto LABEL_88;
        }

        v25 = swift_getEnumCaseMultiPayload();
        if (v25 <= 3)
        {
          if (v25 == 2 || v25 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v25 == 4 || v25 == 5 || v25 == 6)
        {
          goto LABEL_58;
        }
      }

      else
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
LABEL_58:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 32))(a1 + v14, a2 + v14, v34);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v16 + 56))(a1 + v14, 0, 1, v15);
          goto LABEL_88;
        }
      }

LABEL_86:
      memcpy(a1 + v14, a2 + v14, *(v16 + 64));
      goto LABEL_87;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(a1 + *(v27 + 20)) = *(a2 + *(v27 + 20));
        goto LABEL_88;
      }

      if (EnumCaseMultiPayload == 8)
      {
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v24 = swift_getEnumCaseMultiPayload();
        if (v24 <= 3)
        {
          if (v24 == 2 || v24 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v24 == 4 || v24 == 5 || v24 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(a1 + v28, a2 + v28, v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = a1 + v30;
        v32 = a2 + v30;
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_88;
      }
    }

LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_89:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void **sub_21D91EA58(void **a1, void **a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if (EnumCaseMultiPayload > 5)
        {
          switch(EnumCaseMultiPayload)
          {
            case 6:
              v36 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v37 = *(v36 - 8);
              if ((*(v37 + 48))(v3, 1, v36))
              {
                v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
                memcpy(a1, v3, *(*(v38 - 8) + 64));
              }

              else
              {
                *a1 = *v3;
                v67 = *(v36 + 20);
                v68 = sub_21DBF6C1C();
                v223 = *(*(v68 - 8) + 16);
                sub_21DBF8E0C();
                v223(a1 + v67, v3 + v67, v68);
                (*(v37 + 56))(a1, 0, 1, v36);
              }

              v69 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v70 = (a1 + v69);
              v71 = (v3 + v69);
              v72 = v71[1];
              if (v72)
              {
                *v70 = *v71;
                v70[1] = v72;
                v73 = v71[2];
                v70[2] = v73;
                sub_21DBF8E0C();
                v74 = v73;
              }

              else
              {
                *v70 = *v71;
                v70[2] = v71[2];
              }

              goto LABEL_237;
            case 7:
              v42 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v43 = *(v42 - 8);
              if ((*(v43 + 48))(v3, 1, v42))
              {
                v44 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(a1, v3, *(*(v44 - 8) + 64));
              }

              else
              {
                v83 = sub_21DBF563C();
                (*(*(v83 - 8) + 16))(a1, v3, v83);
                *(a1 + *(v42 + 20)) = *(v3 + *(v42 + 20));
                (*(v43 + 56))(a1, 0, 1, v42);
              }

              v84 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(a1 + *(v84 + 20)) = *(v3 + *(v84 + 20));
              goto LABEL_237;
            case 8:
              *a1 = *v3;
              v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v9 = sub_21DBF8D7C();
              (*(*(v9 - 8) + 16))(a1 + v8, v3 + v8, v9);
LABEL_237:
              swift_storeEnumTagMultiPayload();
              goto LABEL_238;
          }

LABEL_52:
          memcpy(a1, v3, *(*(v6 - 8) + 64));
LABEL_238:
          v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88, &qword_21DC31738);
          *(a1 + *(v195 + 48)) = *(v3 + *(v195 + 48));
          *(a1 + *(v195 + 64)) = *(v3 + *(v195 + 64));
          sub_21DBF8E0C();
          goto LABEL_266;
        }

        if (EnumCaseMultiPayload != 4)
        {
          *a1 = *v3;
          *(a1 + 8) = *(v3 + 8);
          *(a1 + 9) = *(v3 + 9);
          v26 = v3[2];
          a1[2] = v26;
          v27 = v26;
          goto LABEL_237;
        }

        v39 = *v3;
        *a1 = *v3;
        v21 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v23 = *(v22 - 8);
        v40 = *(v23 + 48);
        v41 = v39;
        if (v40(v3 + v21, 1, v22))
        {
LABEL_45:
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(a1 + v21, v3 + v21, *(*(v35 - 8) + 64));
          goto LABEL_237;
        }

        v75 = swift_getEnumCaseMultiPayload();
        if (v75 > 4)
        {
          if (v75 <= 7)
          {
            if (v75 == 5 || v75 == 6)
            {
              goto LABEL_187;
            }

            goto LABEL_235;
          }

          if (v75 != 8 && v75 != 9)
          {
            goto LABEL_235;
          }

LABEL_186:
          v150 = *(v3 + v21);
          *(a1 + v21) = v150;
          v151 = v150;
          swift_storeEnumTagMultiPayload();
LABEL_236:
          (*(v23 + 56))(a1 + v21, 0, 1, v22);
          goto LABEL_237;
        }

        if (v75 <= 2)
        {
          if (v75 != 1)
          {
            if (v75 == 2)
            {
              goto LABEL_187;
            }

LABEL_235:
            memcpy(a1 + v21, v3 + v21, *(v23 + 64));
            goto LABEL_236;
          }

          goto LABEL_186;
        }

LABEL_187:
        v152 = sub_21DBF563C();
        (*(*(v152 - 8) + 16))(a1 + v21, v3 + v21, v152);
        swift_storeEnumTagMultiPayload();
        goto LABEL_236;
      }

      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v32 = *v3;
          *a1 = *v3;
          v21 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v23 = *(v22 - 8);
          v33 = *(v23 + 48);
          v34 = v32;
          if (v33(v3 + v21, 1, v22))
          {
            goto LABEL_45;
          }

          v57 = swift_getEnumCaseMultiPayload();
          if (v57 > 4)
          {
            if (v57 <= 7)
            {
              if (v57 == 5 || v57 == 6)
              {
                goto LABEL_187;
              }

              goto LABEL_235;
            }

            if (v57 != 8 && v57 != 9)
            {
              goto LABEL_235;
            }

            goto LABEL_186;
          }

          if (v57 > 2)
          {
            goto LABEL_187;
          }

          if (v57 == 1)
          {
            goto LABEL_186;
          }

          if (v57 != 2)
          {
            goto LABEL_235;
          }
        }

        else
        {
          v20 = *v3;
          *a1 = *v3;
          v21 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v23 = *(v22 - 8);
          v24 = *(v23 + 48);
          v25 = v20;
          if (v24(v3 + v21, 1, v22))
          {
            goto LABEL_45;
          }

          v54 = swift_getEnumCaseMultiPayload();
          if (v54 > 4)
          {
            if (v54 <= 7)
            {
              if (v54 == 5 || v54 == 6)
              {
                goto LABEL_187;
              }

              goto LABEL_235;
            }

            if (v54 != 8 && v54 != 9)
            {
              goto LABEL_235;
            }

            goto LABEL_186;
          }

          if (v54 > 2)
          {
            goto LABEL_187;
          }

          if (v54 == 1)
          {
            goto LABEL_186;
          }

          if (v54 != 2)
          {
            goto LABEL_235;
          }
        }

        goto LABEL_187;
      }

      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_52;
        }

        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = swift_getEnumCaseMultiPayload();
        if (v15 <= 4)
        {
          if (v15 > 2)
          {
LABEL_101:
            v85 = sub_21DBF563C();
            (*(*(v85 - 8) + 16))(a1, v3, v85);
            swift_storeEnumTagMultiPayload();
            goto LABEL_157;
          }

          if (v15 != 1)
          {
            if (v15 == 2)
            {
              goto LABEL_101;
            }

            goto LABEL_156;
          }

LABEL_104:
          v86 = *v3;
          *a1 = *v3;
          v87 = v86;
          swift_storeEnumTagMultiPayload();
          goto LABEL_157;
        }

        if (v15 > 7)
        {
          if (v15 == 8 || v15 == 9)
          {
            goto LABEL_104;
          }
        }

        else if (v15 == 5 || v15 == 6)
        {
          goto LABEL_101;
        }

LABEL_156:
        memcpy(a1, v3, *(*(v14 - 8) + 64));
LABEL_157:
        v105 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v106 = v105[5];
        v107 = a1 + v106;
        v108 = v3 + v106;
        v109 = *(v3 + v106 + 8);
        if (v109)
        {
          v224 = v3;
          *v107 = *v108;
          *(v107 + 1) = v109;
          v110 = *(v108 + 2);
          v111 = *(v108 + 3);
          v112 = *(v108 + 4);
          v113 = *(v108 + 5);
          v115 = *(v108 + 6);
          v114 = *(v108 + 7);
          v215 = v108[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v110, v111, v112, v113, v115, v114, v215);
          *(v107 + 2) = v110;
          *(v107 + 3) = v111;
          *(v107 + 4) = v112;
          *(v107 + 5) = v113;
          *(v107 + 6) = v115;
          *(v107 + 7) = v114;
          v107[64] = v215;
          *(v107 + 65) = *(v108 + 65);
          v116 = v108[120];
          if (v116 == 255)
          {
            *(v107 + 72) = *(v108 + 72);
            *(v107 + 88) = *(v108 + 88);
            *(v107 + 104) = *(v108 + 104);
            v107[120] = v108[120];
          }

          else
          {
            v117 = *(v108 + 9);
            v216 = *(v108 + 10);
            v118 = *(v108 + 11);
            v119 = *(v108 + 12);
            v120 = *(v108 + 13);
            v121 = *(v108 + 14);
            v122 = v116 & 1;
            sub_21D0FB960(v117, v216, v118, v119, v120, v121, v116 & 1);
            *(v107 + 9) = v117;
            *(v107 + 10) = v216;
            *(v107 + 11) = v118;
            *(v107 + 12) = v119;
            *(v107 + 13) = v120;
            *(v107 + 14) = v121;
            v107[120] = v122;
          }

          v107[121] = v108[121];
          v3 = v224;
          goto LABEL_163;
        }

LABEL_160:
        v123 = *(v108 + 5);
        *(v107 + 4) = *(v108 + 4);
        *(v107 + 5) = v123;
        *(v107 + 6) = *(v108 + 6);
        *(v107 + 106) = *(v108 + 106);
        v124 = *(v108 + 1);
        *v107 = *v108;
        *(v107 + 1) = v124;
        v125 = *(v108 + 3);
        *(v107 + 2) = *(v108 + 2);
        *(v107 + 3) = v125;
LABEL_163:
        *(a1 + v105[6]) = *(v3 + v105[6]);
        *(a1 + v105[7]) = *(v3 + v105[7]);
        *(a1 + v105[8]) = *(v3 + v105[8]);
        *(a1 + v105[9]) = *(v3 + v105[9]);
        *(a1 + v105[10]) = *(v3 + v105[10]);
        v126 = v105[11];
        v127 = *(v3 + v126);
        *(a1 + v126) = v127;
        v128 = v127;
        goto LABEL_237;
      }

      v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v31 = swift_getEnumCaseMultiPayload();
      if (v31 <= 4)
      {
        if (v31 > 2)
        {
LABEL_105:
          v88 = sub_21DBF563C();
          (*(*(v88 - 8) + 16))(a1, v3, v88);
          swift_storeEnumTagMultiPayload();
          goto LABEL_165;
        }

        if (v31 != 1)
        {
          if (v31 == 2)
          {
            goto LABEL_105;
          }

          goto LABEL_164;
        }

LABEL_108:
        v89 = *v3;
        *a1 = *v3;
        v90 = v89;
        swift_storeEnumTagMultiPayload();
        goto LABEL_165;
      }

      if (v31 > 7)
      {
        if (v31 == 8 || v31 == 9)
        {
          goto LABEL_108;
        }
      }

      else if (v31 == 5 || v31 == 6)
      {
        goto LABEL_105;
      }

LABEL_164:
      memcpy(a1, v3, *(*(v30 - 8) + 64));
LABEL_165:
      v105 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v129 = v105[5];
      v107 = a1 + v129;
      v108 = v3 + v129;
      v130 = *(v3 + v129 + 8);
      if (v130)
      {
        v225 = v3;
        *v107 = *v108;
        *(v107 + 1) = v130;
        v131 = *(v108 + 2);
        v132 = *(v108 + 3);
        v133 = *(v108 + 4);
        v134 = *(v108 + 5);
        v135 = *(v108 + 6);
        v136 = *(v108 + 7);
        v217 = v108[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v131, v132, v133, v134, v135, v136, v217);
        *(v107 + 2) = v131;
        *(v107 + 3) = v132;
        *(v107 + 4) = v133;
        *(v107 + 5) = v134;
        *(v107 + 6) = v135;
        *(v107 + 7) = v136;
        v107[64] = v217;
        *(v107 + 65) = *(v108 + 65);
        v137 = v108[120];
        if (v137 == 255)
        {
          *(v107 + 72) = *(v108 + 72);
          *(v107 + 88) = *(v108 + 88);
          *(v107 + 104) = *(v108 + 104);
          v107[120] = v108[120];
        }

        else
        {
          v138 = *(v108 + 9);
          v218 = *(v108 + 10);
          v139 = *(v108 + 11);
          v140 = *(v108 + 12);
          v141 = *(v108 + 13);
          v142 = *(v108 + 14);
          v143 = v137 & 1;
          sub_21D0FB960(v138, v218, v139, v140, v141, v142, v137 & 1);
          *(v107 + 9) = v138;
          *(v107 + 10) = v218;
          *(v107 + 11) = v139;
          *(v107 + 12) = v140;
          *(v107 + 13) = v141;
          *(v107 + 14) = v142;
          v107[120] = v143;
        }

        v107[121] = v108[121];
        v3 = v225;
        goto LABEL_163;
      }

      goto LABEL_160;
    }

    v11 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v3, 1, v11))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D90, &unk_21DC31740);
      memcpy(a1, v3, *(*(v13 - 8) + 64));
LABEL_266:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v16 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v17 = swift_getEnumCaseMultiPayload();
    if (v17 > 3)
    {
      if (v17 > 5)
      {
        switch(v17)
        {
          case 6:
            v64 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v65 = *(v64 - 8);
            if ((*(v65 + 48))(v3, 1, v64))
            {
              v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, v3, *(*(v66 - 8) + 64));
            }

            else
            {
              *a1 = *v3;
              v94 = *(v64 + 20);
              v95 = sub_21DBF6C1C();
              v209 = *(*(v95 - 8) + 16);
              sub_21DBF8E0C();
              v209(a1 + v94, v3 + v94, v95);
              (*(v65 + 56))(a1, 0, 1, v64);
            }

            v96 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v97 = (a1 + v96);
            v98 = (v3 + v96);
            v99 = v98[1];
            if (v99)
            {
              *v97 = *v98;
              v97[1] = v99;
              v100 = v98[2];
              v97[2] = v100;
              sub_21DBF8E0C();
              v101 = v100;
            }

            else
            {
              *v97 = *v98;
              v97[2] = v98[2];
            }

            goto LABEL_264;
          case 7:
            v80 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v81 = *(v80 - 8);
            if ((*(v81 + 48))(v3, 1, v80))
            {
              v82 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v3, *(*(v82 - 8) + 64));
            }

            else
            {
              v103 = sub_21DBF563C();
              (*(*(v103 - 8) + 16))(a1, v3, v103);
              *(a1 + *(v80 + 20)) = *(v3 + *(v80 + 20));
              (*(v81 + 56))(a1, 0, 1, v80);
            }

            v104 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v104 + 20)) = *(v3 + *(v104 + 20));
            goto LABEL_264;
          case 8:
            *a1 = *v3;
            v18 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v19 = sub_21DBF8D7C();
            (*(*(v19 - 8) + 16))(a1 + v18, v3 + v18, v19);
LABEL_264:
            swift_storeEnumTagMultiPayload();
            goto LABEL_265;
        }

LABEL_100:
        memcpy(a1, v3, *(*(v16 - 8) + 64));
LABEL_265:
        *(a1 + *(v11 + 20)) = *(v3 + *(v11 + 20));
        (*(v12 + 56))(a1, 0, 1, v11);
        goto LABEL_266;
      }

      if (v17 != 4)
      {
        *a1 = *v3;
        *(a1 + 8) = *(v3 + 8);
        *(a1 + 9) = *(v3 + 9);
        v52 = v3[2];
        a1[2] = v52;
        v53 = v52;
        goto LABEL_264;
      }

      v222 = v12;
      v76 = *v3;
      *a1 = *v3;
      v59 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v60 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v61 = *(v60 - 8);
      v77 = *(v61 + 48);
      v78 = v76;
      if (v77(v3 + v59, 1, v60))
      {
LABEL_95:
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v59, v3 + v59, *(*(v79 - 8) + 64));
        v12 = v222;
        goto LABEL_264;
      }

      v102 = swift_getEnumCaseMultiPayload();
      v12 = v222;
      if (v102 > 4)
      {
        if (v102 <= 7)
        {
          if (v102 == 5 || v102 == 6)
          {
            goto LABEL_247;
          }

          goto LABEL_262;
        }

        if (v102 != 8 && v102 != 9)
        {
          goto LABEL_262;
        }

LABEL_250:
        v200 = *(v3 + v59);
        *(a1 + v59) = v200;
        v201 = v200;
        swift_storeEnumTagMultiPayload();
        goto LABEL_263;
      }

      if (v102 <= 2)
      {
        if (v102 != 1)
        {
          if (v102 == 2)
          {
            goto LABEL_247;
          }

LABEL_262:
          memcpy(a1 + v59, v3 + v59, *(v61 + 64));
          goto LABEL_263;
        }

        goto LABEL_250;
      }

LABEL_247:
      v199 = sub_21DBF563C();
      (*(*(v199 - 8) + 16))(a1 + v59, v3 + v59, v199);
      swift_storeEnumTagMultiPayload();
LABEL_263:
      (*(v61 + 56))(a1 + v59, 0, 1, v60);
      goto LABEL_264;
    }

    if (v17 <= 1)
    {
      if (v17)
      {
        if (v17 != 1)
        {
          goto LABEL_100;
        }

        v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v29 = swift_getEnumCaseMultiPayload();
        v214 = v11;
        v219 = v12;
        if (v29 > 4)
        {
          if (v29 <= 7)
          {
            if (v29 == 5 || v29 == 6)
            {
              goto LABEL_171;
            }

            goto LABEL_218;
          }

          if (v29 != 8 && v29 != 9)
          {
            goto LABEL_218;
          }
        }

        else
        {
          if (v29 > 2)
          {
LABEL_171:
            v144 = sub_21DBF563C();
            (*(*(v144 - 8) + 16))(a1, v3, v144);
            swift_storeEnumTagMultiPayload();
LABEL_219:
            v153 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v154 = v153[5];
            v155 = a1 + v154;
            v156 = v3 + v154;
            v157 = *(v3 + v154 + 8);
            if (v157)
            {
              *v155 = *v156;
              *(v155 + 1) = v157;
              v158 = *(v156 + 2);
              v159 = *(v156 + 3);
              v160 = *(v156 + 4);
              v161 = *(v156 + 5);
              v162 = *(v156 + 6);
              v205 = *(v156 + 7);
              v210 = v156[64];
              sub_21DBF8E0C();
              sub_21D2A7DB4(v158, v159, v160, v161, v162, v205, v210);
              *(v155 + 2) = v158;
              *(v155 + 3) = v159;
              *(v155 + 4) = v160;
              *(v155 + 5) = v161;
              *(v155 + 6) = v162;
              *(v155 + 7) = v205;
              v155[64] = v210;
              *(v155 + 65) = *(v156 + 65);
              v163 = v156[120];
              if (v163 == 255)
              {
                *(v155 + 72) = *(v156 + 72);
                *(v155 + 88) = *(v156 + 88);
                *(v155 + 104) = *(v156 + 104);
                v155[120] = v156[120];
              }

              else
              {
                v164 = *(v156 + 9);
                v165 = *(v156 + 11);
                v166 = *(v156 + 12);
                v167 = *(v156 + 13);
                v206 = *(v156 + 14);
                v211 = *(v156 + 10);
                v168 = v163 & 1;
                sub_21D0FB960(v164, v211, v165, v166, v167, v206, v163 & 1);
                *(v155 + 9) = v164;
                *(v155 + 10) = v211;
                *(v155 + 11) = v165;
                *(v155 + 12) = v166;
                *(v155 + 13) = v167;
                *(v155 + 14) = v206;
                v155[120] = v168;
              }

              v11 = v214;
              v12 = v219;
              v155[121] = v156[121];
            }

            else
            {
              v169 = *(v156 + 5);
              *(v155 + 4) = *(v156 + 4);
              *(v155 + 5) = v169;
              *(v155 + 6) = *(v156 + 6);
              *(v155 + 106) = *(v156 + 106);
              v170 = *(v156 + 1);
              *v155 = *v156;
              *(v155 + 1) = v170;
              v171 = *(v156 + 3);
              *(v155 + 2) = *(v156 + 2);
              *(v155 + 3) = v171;
            }

            *(a1 + v153[6]) = *(v3 + v153[6]);
            *(a1 + v153[7]) = *(v3 + v153[7]);
            *(a1 + v153[8]) = *(v3 + v153[8]);
            *(a1 + v153[9]) = *(v3 + v153[9]);
            *(a1 + v153[10]) = *(v3 + v153[10]);
            v172 = v153[11];
            v173 = *(v3 + v172);
            *(a1 + v172) = v173;
            v174 = v173;
            goto LABEL_264;
          }

          if (v29 != 1)
          {
            if (v29 == 2)
            {
              goto LABEL_171;
            }

LABEL_218:
            memcpy(a1, v3, *(*(v28 - 8) + 64));
            goto LABEL_219;
          }
        }

        v145 = *v3;
        *a1 = *v3;
        v146 = v145;
        swift_storeEnumTagMultiPayload();
        goto LABEL_219;
      }

      v55 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v56 = swift_getEnumCaseMultiPayload();
      v221 = v12;
      if (v56 > 4)
      {
        if (v56 <= 7)
        {
          if (v56 == 5 || v56 == 6)
          {
            goto LABEL_179;
          }

          goto LABEL_227;
        }

        if (v56 != 8 && v56 != 9)
        {
          goto LABEL_227;
        }
      }

      else
      {
        if (v56 > 2)
        {
LABEL_179:
          v147 = sub_21DBF563C();
          (*(*(v147 - 8) + 16))(a1, v3, v147);
          swift_storeEnumTagMultiPayload();
LABEL_228:
          v175 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v176 = v175[5];
          v177 = a1 + v176;
          v178 = v3 + v176;
          v179 = *(v3 + v176 + 8);
          if (v179)
          {
            *v177 = *v178;
            *(v177 + 1) = v179;
            v180 = *(v178 + 2);
            v181 = *(v178 + 3);
            v183 = *(v178 + 4);
            v182 = *(v178 + 5);
            v212 = *(v178 + 6);
            v203 = *(v178 + 7);
            v207 = v178[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v180, v181, v183, v182, v212, v203, v207);
            *(v177 + 2) = v180;
            *(v177 + 3) = v181;
            *(v177 + 4) = v183;
            *(v177 + 5) = v182;
            *(v177 + 6) = v212;
            *(v177 + 7) = v203;
            v177[64] = v207;
            *(v177 + 65) = *(v178 + 65);
            v184 = v178[120];
            if (v184 == 255)
            {
              *(v177 + 72) = *(v178 + 72);
              *(v177 + 88) = *(v178 + 88);
              *(v177 + 104) = *(v178 + 104);
              v177[120] = v178[120];
            }

            else
            {
              v208 = *(v178 + 10);
              v213 = *(v178 + 9);
              v185 = *(v178 + 11);
              v186 = *(v178 + 12);
              v187 = *(v178 + 13);
              v204 = *(v178 + 14);
              v188 = v184 & 1;
              sub_21D0FB960(v213, v208, v185, v186, v187, v204, v184 & 1);
              *(v177 + 9) = v213;
              *(v177 + 10) = v208;
              *(v177 + 11) = v185;
              *(v177 + 12) = v186;
              *(v177 + 13) = v187;
              *(v177 + 14) = v204;
              v177[120] = v188;
            }

            v12 = v221;
            v177[121] = v178[121];
          }

          else
          {
            v189 = *(v178 + 5);
            *(v177 + 4) = *(v178 + 4);
            *(v177 + 5) = v189;
            *(v177 + 6) = *(v178 + 6);
            *(v177 + 106) = *(v178 + 106);
            v190 = *(v178 + 1);
            *v177 = *v178;
            *(v177 + 1) = v190;
            v191 = *(v178 + 3);
            *(v177 + 2) = *(v178 + 2);
            *(v177 + 3) = v191;
          }

          *(a1 + v175[6]) = *(v3 + v175[6]);
          *(a1 + v175[7]) = *(v3 + v175[7]);
          *(a1 + v175[8]) = *(v3 + v175[8]);
          *(a1 + v175[9]) = *(v3 + v175[9]);
          *(a1 + v175[10]) = *(v3 + v175[10]);
          v192 = v175[11];
          v193 = *(v3 + v192);
          *(a1 + v192) = v193;
          v194 = v193;
          goto LABEL_264;
        }

        if (v56 != 1)
        {
          if (v56 == 2)
          {
            goto LABEL_179;
          }

LABEL_227:
          memcpy(a1, v3, *(*(v55 - 8) + 64));
          goto LABEL_228;
        }
      }

      v148 = *v3;
      *a1 = *v3;
      v149 = v148;
      swift_storeEnumTagMultiPayload();
      goto LABEL_228;
    }

    if (v17 == 2)
    {
      v222 = v12;
      v58 = *v3;
      *a1 = *v3;
      v59 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v60 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v61 = *(v60 - 8);
      v62 = *(v61 + 48);
      v63 = v58;
      if (v62(v3 + v59, 1, v60))
      {
        goto LABEL_95;
      }

      v93 = swift_getEnumCaseMultiPayload();
      v12 = v222;
      if (v93 > 4)
      {
        if (v93 <= 7)
        {
          if (v93 == 5 || v93 == 6)
          {
            goto LABEL_247;
          }

          goto LABEL_262;
        }

        if (v93 != 8 && v93 != 9)
        {
          goto LABEL_262;
        }

        goto LABEL_250;
      }

      if (v93 > 2)
      {
        goto LABEL_247;
      }

      if (v93 == 1)
      {
        goto LABEL_250;
      }

      if (v93 != 2)
      {
        goto LABEL_262;
      }

      goto LABEL_247;
    }

    v220 = v12;
    v45 = *v3;
    *a1 = *v3;
    v46 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v47 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v48 = *(v47 - 8);
    v49 = *(v48 + 48);
    v50 = v45;
    if (v49(v3 + v46, 1, v47))
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v46, v3 + v46, *(*(v51 - 8) + 64));
      v12 = v220;
      goto LABEL_264;
    }

    v91 = swift_getEnumCaseMultiPayload();
    v92 = v47;
    if (v91 > 4)
    {
      v12 = v220;
      if (v91 <= 7)
      {
        if (v91 == 5 || v91 == 6)
        {
          goto LABEL_239;
        }

        goto LABEL_260;
      }

      if (v91 != 8 && v91 != 9)
      {
        goto LABEL_260;
      }
    }

    else
    {
      v12 = v220;
      if (v91 > 2)
      {
LABEL_239:
        v196 = sub_21DBF563C();
        (*(*(v196 - 8) + 16))(a1 + v46, v3 + v46, v196);
        swift_storeEnumTagMultiPayload();
LABEL_261:
        (*(v48 + 56))(a1 + v46, 0, 1, v92);
        goto LABEL_264;
      }

      if (v91 != 1)
      {
        if (v91 == 2)
        {
          goto LABEL_239;
        }

LABEL_260:
        memcpy(a1 + v46, v3 + v46, *(v48 + 64));
        goto LABEL_261;
      }
    }

    v197 = *(v3 + v46);
    *(a1 + v46) = v197;
    v198 = v197;
    swift_storeEnumTagMultiPayload();
    goto LABEL_261;
  }

  v10 = *a2;
  *a1 = *a2;
  a1 = &v10[(v5 + 16) & ~v5];

  return a1;
}

void sub_21D921830(id *a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v17 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            if (!(*(*(v17 - 8) + 48))(a1, 1, v17))
            {

              v18 = *(v17 + 20);
              v19 = sub_21DBF6C1C();
              (*(*(v19 - 8) + 8))(a1 + v18, v19);
            }

            v20 = (a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
            if (v20[1])
            {
            }

            break;
          case 7:
            v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            if (!(*(*(v21 - 8) + 48))(a1, 1, v21))
            {
              v22 = sub_21DBF563C();
              (*(*(v22 - 8) + 8))(a1, v22);
            }

            break;
          case 8:
            v4 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v5 = sub_21DBF8D7C();
            (*(*(v5 - 8) + 8))(a1 + v4, v5);
            break;
        }

        goto LABEL_81;
      }

      if (EnumCaseMultiPayload != 4)
      {

        goto LABEL_81;
      }

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload > 1)
    {
LABEL_26:

      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      if ((*(*(v14 - 8) + 48))(a1 + v13, 1, v14))
      {
        goto LABEL_81;
      }

      v15 = swift_getEnumCaseMultiPayload();
      if (v15 <= 4)
      {
        if (v15 <= 2)
        {
          if (v15 != 1)
          {
            if (v15 != 2)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          }

LABEL_86:

          goto LABEL_81;
        }

LABEL_80:
        v37 = sub_21DBF563C();
        (*(*(v37 - 8) + 8))(a1 + v13, v37);
        goto LABEL_81;
      }

      if (v15 > 7)
      {
        if (v15 == 8 || v15 == 9)
        {
          goto LABEL_86;
        }
      }

      else if (v15 == 5 || v15 == 6)
      {
        goto LABEL_80;
      }

LABEL_81:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88, &qword_21DC31738);

      return;
    }

    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_81;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 > 4)
    {
      if (v7 <= 7)
      {
        if (v7 != 5 && v7 != 6)
        {
          goto LABEL_66;
        }

        goto LABEL_62;
      }

      if (v7 != 8 && v7 != 9)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v7 > 2)
      {
        goto LABEL_62;
      }

      if (v7 != 1)
      {
        if (v7 != 2)
        {
LABEL_66:
          v28 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v29 = a1 + *(v28 + 20);
          if (*(v29 + 1))
          {

            sub_21D179EF0(*(v29 + 2), *(v29 + 3), *(v29 + 4), *(v29 + 5), *(v29 + 6), *(v29 + 7), v29[64]);
            v30 = v29[120];
            if (v30 != 255)
            {
              sub_21D1078C0(*(v29 + 9), *(v29 + 10), *(v29 + 11), *(v29 + 12), *(v29 + 13), *(v29 + 14), v30 & 1);
            }
          }

          goto LABEL_81;
        }

LABEL_62:
        v27 = sub_21DBF563C();
        (*(*(v27 - 8) + 8))(a1, v27);
        goto LABEL_66;
      }
    }

    goto LABEL_66;
  }

  v6 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
  if ((*(*(v6 - 8) + 48))(a1, 1, v6))
  {
    return;
  }

  type metadata accessor for TTRRemindersListViewModel.Item(0);
  v8 = swift_getEnumCaseMultiPayload();
  if (v8 <= 3)
  {
    if (v8 > 1)
    {
      goto LABEL_52;
    }

    if (v8 > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 > 4)
    {
      if (v16 <= 7)
      {
        if (v16 != 5 && v16 != 6)
        {
          goto LABEL_95;
        }

        goto LABEL_91;
      }

      if (v16 != 8 && v16 != 9)
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (v16 > 2)
      {
        goto LABEL_91;
      }

      if (v16 != 1)
      {
        if (v16 != 2)
        {
LABEL_95:
          v39 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v40 = a1 + *(v39 + 20);
          if (*(v40 + 1))
          {

            sub_21D179EF0(*(v40 + 2), *(v40 + 3), *(v40 + 4), *(v40 + 5), *(v40 + 6), *(v40 + 7), v40[64]);
            v41 = v40[120];
            if (v41 != 255)
            {
              sub_21D1078C0(*(v40 + 9), *(v40 + 10), *(v40 + 11), *(v40 + 12), *(v40 + 13), *(v40 + 14), v41 & 1);
            }
          }

          v23 = *(a1 + *(v39 + 44));
          goto LABEL_99;
        }

LABEL_91:
        v38 = sub_21DBF563C();
        (*(*(v38 - 8) + 8))(a1, v38);
        goto LABEL_95;
      }
    }

    goto LABEL_95;
  }

  if (v8 <= 5)
  {
    if (v8 != 4)
    {
      v23 = a1[2];
LABEL_99:

      return;
    }

LABEL_52:

    v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v25 - 8) + 48))(a1 + v24, 1, v25))
    {
      return;
    }

    v26 = swift_getEnumCaseMultiPayload();
    if (v26 > 4)
    {
      if (v26 <= 7)
      {
        if (v26 != 5 && v26 != 6)
        {
          return;
        }

        goto LABEL_102;
      }

      if (v26 != 8 && v26 != 9)
      {
        return;
      }
    }

    else
    {
      if (v26 > 2)
      {
LABEL_102:
        v10 = sub_21DBF563C();
        v11 = *(*(v10 - 8) + 8);
        v12 = (a1 + v24);
LABEL_103:

        v11(v12, v10);
        return;
      }

      if (v26 != 1)
      {
        if (v26 != 2)
        {
          return;
        }

        goto LABEL_102;
      }
    }

    v23 = *(a1 + v24);
    goto LABEL_99;
  }

  if (v8 != 6)
  {
    if (v8 == 7)
    {
      v35 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v35 - 8) + 48))(a1, 1, v35))
      {
        return;
      }

      v36 = sub_21DBF563C();
      v11 = *(*(v36 - 8) + 8);
      v10 = v36;
      v12 = a1;
    }

    else
    {
      if (v8 != 8)
      {
        return;
      }

      v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v10 = sub_21DBF8D7C();
      v11 = *(*(v10 - 8) + 8);
      v12 = (a1 + v9);
    }

    goto LABEL_103;
  }

  v31 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v31 - 8) + 48))(a1, 1, v31))
  {

    v32 = *(v31 + 20);
    v33 = sub_21DBF6C1C();
    (*(*(v33 - 8) + 8))(a1 + v32, v33);
  }

  v34 = a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v34 + 1))
  {

    v23 = *(v34 + 2);
    goto LABEL_99;
  }
}