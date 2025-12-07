uint64_t sub_21D641CD4(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  type metadata accessor for TTRSECreateRemindersPresentationTreeTransaction(0);
  swift_allocObject();
  v7 = sub_21DABA99C(v3, v2, v4, v5, v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = (v7 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
  v10 = *(v7 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
  v11 = *(v7 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost + 8);
  *v9 = sub_21D64CA98;
  v9[1] = v8;

  sub_21D24A7C4(v2, v4, v5, v6);

  sub_21D0D0E88(v10, v11);

  a1[20] = v7;

  return v7;
}

void *sub_21D641DF4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    result[2] = a1[2];
    v4 = result;

    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = a1[7];
    v9 = v4[3];
    v10 = v4[4];
    v4[3] = v5;
    v4[4] = v6;
    v4[5] = v7;
    v4[6] = v8;
    sub_21D24A7C4(v5, v6, v7, v8);
    sub_21D24A814(v9, v10);
  }

  return result;
}

uint64_t sub_21D641EA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 + 104);
  v8 = *(v6 + 112);

  v9 = sub_21D25E9D8(v7, v8);

  LOBYTE(v6) = sub_21D641FBC(v9, a1, v3);
  *(a2 + 16) = v9;

  *(a2 + 24) = (*(a2 + 24) | v6) & 1;
  v10 = *(a2 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
  if (v10)
  {
    v11 = *(a2 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost + 8);

    v10(a2);

    return sub_21D0D0E88(v10, v11);
  }

  else
  {
  }
}

BOOL sub_21D641FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B8, &unk_21DC0F3F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v50 - v12;
  v59 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v59);
  v60 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v61 = &v50 - v16;
  MEMORY[0x28223BE20](v17);
  v52 = &v50 - v18;
  MEMORY[0x28223BE20](v19);
  v53 = &v50 - v20;
  MEMORY[0x28223BE20](v21);
  v24 = &v50 - v23;
  v25 = *(a2 + 16);
  v55 = a2;
  if (v25)
  {
    v57 = v7;
    v51 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v26 = a2 + v51;
    v27 = *(v22 + 72);
    v58 = MEMORY[0x277D84F90];
    v56 = a1;
    while (1)
    {
      sub_21D10521C(v26, v24, type metadata accessor for TTRRemindersListViewModel.Item);
      v29 = *(a1 + 80);

      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
      swift_beginAccess();
      if (*(*(v29 + 24) + 16) && (sub_21D181E00(), (v30 & 1) != 0))
      {
        swift_endAccess();

        sub_21D30D8FC(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
        Strong = swift_weakLoadStrong();

        if (Strong)
        {
          v32 = *(*Strong + 120);
          swift_beginAccess();
          v33 = Strong + v32;
          v34 = v61;
          sub_21D10521C(v33, v61, type metadata accessor for TTRRemindersListViewModel.Item);

          sub_21D10521C(v34, v60, type metadata accessor for TTRRemindersListViewModel.Item);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload <= 3)
          {
            if (EnumCaseMultiPayload >= 2)
            {
              goto LABEL_27;
            }
          }

          else if ((EnumCaseMultiPayload - 5) >= 4)
          {
            if ((EnumCaseMultiPayload - 9) >= 2)
            {
LABEL_27:
              sub_21D105834(v60, v13, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            }

LABEL_16:
            v36 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
            swift_storeEnumTagMultiPayload();
            sub_21D30D8FC(v61, type metadata accessor for TTRRemindersListViewModel.Item);
            (*(*(v36 - 8) + 56))(v13, 0, 1, v36);
            if (swift_getEnumCaseMultiPayload() >= 3)
            {
              sub_21D30D8FC(v24, type metadata accessor for TTRRemindersListViewModel.Item);
            }

            else
            {
              sub_21D30D8FC(v13, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
              v37 = *(a1 + 80);

              v38 = v57;
              TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v57);
              swift_beginAccess();
              if (*(*(v37 + 24) + 16) && (sub_21D181E00(), (v39 & 1) != 0))
              {
                swift_endAccess();

                sub_21D30D8FC(v38, type metadata accessor for TTRRemindersListViewModel.ItemID);
                v40 = swift_weakLoadStrong();

                sub_21D30D8FC(v24, type metadata accessor for TTRRemindersListViewModel.Item);

                if (v40)
                {
                  v41 = *(*v40 + 120);
                  swift_beginAccess();
                  v42 = v52;
                  sub_21D10521C(v40 + v41, v52, type metadata accessor for TTRRemindersListViewModel.Item);

                  sub_21D105834(v42, v53, type metadata accessor for TTRRemindersListViewModel.Item);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  a1 = v56;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v58 = sub_21D211A80(0, v58[2] + 1, 1, v58);
                  }

                  v45 = v58[2];
                  v44 = v58[3];
                  if (v45 >= v44 >> 1)
                  {
                    v58 = sub_21D211A80((v44 > 1), v45 + 1, 1, v58);
                  }

                  v46 = v58;
                  v58[2] = v45 + 1;
                  sub_21D105834(v53, v46 + v51 + v45 * v27, type metadata accessor for TTRRemindersListViewModel.Item);
                }

                else
                {
                  a1 = v56;
                }
              }

              else
              {
                swift_endAccess();
                sub_21D30D8FC(v38, type metadata accessor for TTRRemindersListViewModel.ItemID);
                sub_21D30D8FC(v24, type metadata accessor for TTRRemindersListViewModel.Item);

                a1 = v56;
              }
            }

            goto LABEL_5;
          }

          sub_21D30D8FC(v60, type metadata accessor for TTRRemindersListViewModel.Item);
          goto LABEL_16;
        }

        sub_21D30D8FC(v24, type metadata accessor for TTRRemindersListViewModel.Item);
      }

      else
      {
        swift_endAccess();
        sub_21D30D8FC(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D30D8FC(v24, type metadata accessor for TTRRemindersListViewModel.Item);
      }

      v28 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
      (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
LABEL_5:
      v26 += v27;
      if (!--v25)
      {
        goto LABEL_30;
      }
    }
  }

  v58 = MEMORY[0x277D84F90];
LABEL_30:
  v62[0] = 1;
  sub_21D897284(v62, v58);

  v47 = sub_21D26C578(v55);

  v48 = *(v47 + 2);

  return v48 != 0;
}

uint64_t sub_21D642814(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0, &qword_21DC1C330);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  if (a2)
  {
    v17 = *(a1 + 16);
    if (v17)
    {
      v18 = v17 - 1;
      v19 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
      sub_21D10521C(a1 + ((*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80)) + *(*(v19 - 8) + 72) * v18 + *(v19 + 20), v13, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D105834(v13, v16, type metadata accessor for TTRRemindersListViewModel.Item);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0, &unk_21DC207E0);
      v21 = *(v20 + 48);
      sub_21D105834(v16, v10, type metadata accessor for TTRRemindersListViewModel.Item);
      v10[v21] = 0;
      (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
      v22 = OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_itemToStartEditing;
      swift_beginAccess();
      sub_21D0F02F4(v10, a3 + v22, &qword_27CE5E4C0, &qword_21DC1C330);
      swift_endAccess();
    }
  }

  v23 = *(a3 + 16);
  v24 = *(v23 + 104);
  v25 = *(v23 + 112);

  v26 = sub_21D25E9D8(v24, v25);

  LOBYTE(v23) = sub_21D642B24(v26, a1, v4);
  *(a3 + 16) = v26;

  *(a3 + 24) = (*(a3 + 24) | v23) & 1;
  v27 = *(a3 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
  if (!v27)
  {
  }

  v28 = *(a3 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost + 8);

  v27(a3);

  return sub_21D0D0E88(v27, v28);
}

uint64_t sub_21D642B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v109 = a1;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v89 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B8, &unk_21DC0F3F0);
  MEMORY[0x28223BE20](v11 - 8);
  v96 = v89 - v12;
  v105 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v13 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v95 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v97 = v89 - v16;
  MEMORY[0x28223BE20](v17);
  v93 = v89 - v18;
  MEMORY[0x28223BE20](v19);
  v94 = v89 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A410, &unk_21DC0F460);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v89 - v22;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8, &qword_21DC0F408);
  MEMORY[0x28223BE20](v104);
  v103 = v89 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v25 - 8);
  v102 = v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v101 = v89 - v28;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
  MEMORY[0x28223BE20](v107);
  v30 = v89 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F590, &qword_21DC207B0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = v89 - v32;
  v34 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  MEMORY[0x28223BE20](v34);
  v114 = v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v108 = v89 - v39;
  v113 = *(a2 + 16);
  if (!v113)
  {
    v87 = 0;
    v63 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v90 = v10;
  v91 = v7;
  v92 = a3;
  v112 = 0;
  v40 = a2 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v89[0] = v13;
  v99 = (v13 + 56);
  v89[1] = v37;
  v41 = *(v37 + 24);
  v106 = *(v37 + 20);
  v111 = *(v38 + 72);
  v115 = v40;
  v42 = v113;
  v100 = v30;
  v98 = v41;
  do
  {
    v110 = v42;
    v47 = v108;
    sub_21D10521C(v40, v108, type metadata accessor for TTRRemindersListUncommittedReminder);
    v48 = *(v47 + v41);
    sub_21D105834(v47 + v106, v30, type metadata accessor for TTRRemindersListViewModel.Item);
    v49 = v107;
    sub_21D0D523C(v47, &v30[*(v107 + 56)], &qword_27CE5A3A0, qword_21DC0F3A0);
    v50 = &v30[*(v49 + 52)];
    *v50 = v48;
    *(v50 + 1) = 0;
    v50[16] = 1;

    sub_21D272718(v30, v23);

    sub_21D0CF7E0(v30, &qword_27CE5CDA0, &unk_21DC09B90);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A538, &qword_21DC0FA30);
    if ((*(*(v51 - 8) + 48))(v23, 1, v51) == 1)
    {
      sub_21D0CF7E0(v23, &qword_27CE5A410, &unk_21DC0F460);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
      (*(*(v43 - 8) + 56))(v33, 1, 1, v43);
    }

    else
    {
      v52 = *&v23[*(v51 + 48)];
      v53 = v104;
      v54 = *(v104 + 48);
      v55 = v33;
      v56 = v103;
      sub_21D0D523C(v23, v103, &unk_27CE5CD80, &qword_21DC0CE80);
      *(v56 + v54) = v52;
      v30 = v100;
      v57 = *(v56 + *(v53 + 48));
      v58 = v56;
      v33 = v55;
      v41 = v98;
      v59 = v101;
      sub_21D0D523C(v58, v101, &unk_27CE5CD80, &qword_21DC0CE80);
      v60 = v59;
      v61 = v102;
      sub_21D0D523C(v60, v102, &unk_27CE5CD80, &qword_21DC0CE80);
      (*v99)(v33, 1, 1, v105);
      sub_21D0F02F4(v61, v33, &unk_27CE5CD80, &qword_21DC0CE80);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
      *&v33[*(v62 + 36)] = v57;
      (*(*(v62 - 8) + 56))(v33, 0, 1, v62);
    }

    v44 = v110;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
    v46 = (*(*(v45 - 8) + 48))(v33, 1, v45) != 1;
    sub_21D0CF7E0(v33, &qword_27CE5F590, &qword_21DC207B0);
    v112 |= v46;
    v40 += v111;
    v42 = v44 - 1;
  }

  while (v42);
  v63 = MEMORY[0x277D84F90];
  v64 = v109;
  v65 = v91;
  v66 = v90;
  v67 = v96;
  do
  {
    sub_21D10521C(v115, v114, type metadata accessor for TTRRemindersListUncommittedReminder);
    v69 = *(v64 + 80);

    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v66);
    swift_beginAccess();
    if (!*(*(v69 + 24) + 16) || (sub_21D181E00(), (v70 & 1) == 0))
    {
      swift_endAccess();
      sub_21D30D8FC(v66, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D30D8FC(v114, type metadata accessor for TTRRemindersListUncommittedReminder);

LABEL_9:
      v68 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
      (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
      goto LABEL_10;
    }

    swift_endAccess();

    sub_21D30D8FC(v66, type metadata accessor for TTRRemindersListViewModel.ItemID);
    Strong = swift_weakLoadStrong();

    if (!Strong)
    {
      sub_21D30D8FC(v114, type metadata accessor for TTRRemindersListUncommittedReminder);
      v67 = v96;
      goto LABEL_9;
    }

    v72 = *(*Strong + 120);
    swift_beginAccess();
    v73 = Strong + v72;
    v74 = v97;
    sub_21D10521C(v73, v97, type metadata accessor for TTRRemindersListViewModel.Item);

    sub_21D10521C(v74, v95, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      v67 = v96;
      if (EnumCaseMultiPayload < 2)
      {
LABEL_20:
        sub_21D30D8FC(v95, type metadata accessor for TTRRemindersListViewModel.Item);
        goto LABEL_21;
      }
    }

    else
    {
      v67 = v96;
      if ((EnumCaseMultiPayload - 5) < 4)
      {
        goto LABEL_20;
      }

      if ((EnumCaseMultiPayload - 9) < 2)
      {
        goto LABEL_21;
      }
    }

    sub_21D105834(v95, v96, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_21:
    v76 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
    swift_storeEnumTagMultiPayload();
    sub_21D30D8FC(v97, type metadata accessor for TTRRemindersListViewModel.Item);
    (*(*(v76 - 8) + 56))(v67, 0, 1, v76);
    if (swift_getEnumCaseMultiPayload() >= 3)
    {
      sub_21D30D8FC(v114, type metadata accessor for TTRRemindersListUncommittedReminder);
    }

    else
    {
      sub_21D30D8FC(v67, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      v77 = *(v64 + 80);

      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v65);
      swift_beginAccess();
      if (*(*(v77 + 24) + 16) && (sub_21D181E00(), (v78 & 1) != 0))
      {
        swift_endAccess();

        sub_21D30D8FC(v65, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v79 = swift_weakLoadStrong();

        sub_21D30D8FC(v114, type metadata accessor for TTRRemindersListUncommittedReminder);

        if (v79)
        {
          v80 = *(*v79 + 120);
          swift_beginAccess();
          v81 = v79 + v80;
          v82 = v93;
          sub_21D10521C(v81, v93, type metadata accessor for TTRRemindersListViewModel.Item);

          sub_21D105834(v82, v94, type metadata accessor for TTRRemindersListViewModel.Item);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_21D211A80(0, v63[2] + 1, 1, v63);
          }

          v67 = v96;
          v84 = v63[2];
          v83 = v63[3];
          v85 = v89[0];
          if (v84 >= v83 >> 1)
          {
            v86 = sub_21D211A80((v83 > 1), v84 + 1, 1, v63);
            v85 = v89[0];
            v63 = v86;
          }

          v63[2] = v84 + 1;
          sub_21D105834(v94, v63 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v84, type metadata accessor for TTRRemindersListViewModel.Item);
        }

        else
        {
          v67 = v96;
        }
      }

      else
      {
        swift_endAccess();
        sub_21D30D8FC(v65, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D30D8FC(v114, type metadata accessor for TTRRemindersListUncommittedReminder);
      }
    }

LABEL_10:
    v115 += v111;
    --v113;
  }

  while (v113);
  v87 = v112;
LABEL_36:
  v116 = 1;
  sub_21D897284(&v116, v63);

  return v87 & 1;
}

uint64_t sub_21D6439C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21D0D3954(a1, &v10, &unk_27CE60D80, &unk_21DC093F0);
  if (!v11)
  {
    return sub_21D0CF7E0(&v10, &unk_27CE60D80, &unk_21DC093F0);
  }

  sub_21D0D0FD0(&v10, v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  *&v10 = MEMORY[0x277D84F90];
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;

  TTRUndoContext.registerUndo(forEditing:action:)(&v10, sub_21D64B350, v8, v5, v6);

  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_21D643B18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_21D643B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a1;
  sub_21D0D3954(a6, &v18, &unk_27CE60D80, &unk_21DC093F0);
  if (v19)
  {
    sub_21D0D0FD0(&v18, v20);
    v13 = v21;
    v17 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    *&v18 = MEMORY[0x277D84F90];
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = sub_21D64CAC0;
    v15[4] = v12;
    sub_21D64CAB0(a2, a3, a4, a5);

    TTRUndoContext.registerUndo(forEditing:action:)(&v18, sub_21D64DD78, v15, v13, v17);

    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    sub_21D64CAB0(a2, a3, a4, a5);

    return sub_21D0CF7E0(&v18, &unk_27CE60D80, &unk_21DC093F0);
  }
}

uint64_t sub_21D643D84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1[2];
  v14 = *(v13 + 104);
  v15 = *(v13 + 112);

  v22 = sub_21D25E9D8(v14, v15);

  if (a4 == 1)
  {
    v16 = 1;
    v17 = a3;
    v18 = a5;
    v19 = a6;
  }

  else
  {
    v17 = a1[3];
    v16 = a1[4];
    v18 = a1[5];
    v19 = a1[6];
    sub_21D24A7C4(v17, v16, v18, v19);
  }

  sub_21D64CAB0(a3, a4, a5, a6);
  sub_21D64CAD8(a1, a7, a3, a4, a5, a6);
  sub_21D301F20(a3, a4);

  sub_21D0D32E4(a2, v23);
  sub_21D643B9C(v22, v17, v16, v18, v19, v23);

  sub_21D301F20(v17, v16);
  return sub_21D0CF7E0(v23, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t sub_21D643F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v78 = a6;
  v77 = a5;
  v76 = a4;
  v75 = a3;
  v74 = a2;
  v73 = a1;
  v7 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  v71 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F598, &qword_21DC207B8);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v70 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v72 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v79 = &v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v70 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v70 - v23;
  v25 = type metadata accessor for TTRRemindersListReminderCreationLocation(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56B18 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v29 = __swift_project_value_buffer(v28, qword_27CE5F558);
  sub_21D10521C(v29, v27, type metadata accessor for TTRRemindersListViewModel.SectionID);
  swift_storeEnumTagMultiPayload();
  v83 = v6;
  sub_21D644AD4(v27, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_21D0CF7E0(v17, &unk_27CE5CD80, &qword_21DC0CE80);
  }

  else
  {
    sub_21D30D8FC(v27, type metadata accessor for TTRRemindersListReminderCreationLocation);
    sub_21D105834(v17, v24, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D105834(v24, v27, type metadata accessor for TTRRemindersListViewModel.Item);
    swift_storeEnumTagMultiPayload();
  }

  v30 = v83;

  v31 = v81;
  TTRRemindersListTreeViewModel.resolve(_:)(v27, v81);

  if ((*(v80 + 48))(v31, 1, v82) == 1)
  {
    sub_21D0CF7E0(v31, &qword_27CE5F598, &qword_21DC207B8);
    if (qword_27CE56B10 != -1)
    {
      swift_once();
    }

    v32 = sub_21DBF84BC();
    __swift_project_value_buffer(v32, qword_27CE5F540);
    v33 = sub_21DBF84AC();
    v34 = sub_21DBFAECC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_21D0C9000, v33, v34, "TTRSECreateRemindersViewModelSource: unable to resolve tree location for adding uncommitted reminder", v35, 2u);
      MEMORY[0x223D46520](v35, -1, -1);
    }

    sub_21D30D8FC(v27, type metadata accessor for TTRRemindersListReminderCreationLocation);
    return MEMORY[0x277D84F90];
  }

  v37 = v31;
  v38 = v79;
  sub_21D0D523C(v37, v79, &qword_27CE5A3A0, qword_21DC0F3A0);
  v39 = v72;
  sub_21D0D3954(v38, v72, &qword_27CE5A3A0, qword_21DC0F3A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v70 = v27;
  if (EnumCaseMultiPayload == 1)
  {
    v41 = sub_21DBF8E0C();
    v42 = sub_21D1E3EAC(v41);
    v43 = sub_21D0CF7E0(v39, &unk_27CE5CD80, &qword_21DC0CE80);
  }

  else
  {
    sub_21D0CF7E0(v39, &unk_27CE5CD80, &qword_21DC0CE80);
    v42 = v73;
    v43 = sub_21DBF8E0C();
  }

  MEMORY[0x28223BE20](v43);
  v69 = v38;
  v44 = sub_21D4E72CC(sub_21D64DCF4, (&v70 - 4), v42);

  v45 = v30[3];
  v46 = v30[4];
  v47 = v30[5];
  v48 = v30[6];
  v81 = v47;
  v82 = v48;
  v49 = v44[2];
  v80 = v46;
  v73 = v45;
  if (v49)
  {
    sub_21D24A7C4(v45, v46, v47, v82);
    *&aBlock = MEMORY[0x277D84F90];
    sub_21D18EBA4(0, v49, 0);
    v36 = aBlock;
    v50 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v72 = v44;
    v51 = v44 + v50;
    v52 = *(v71 + 72);
    do
    {
      sub_21D10521C(v51, v9, type metadata accessor for TTRRemindersListUncommittedReminder);
      sub_21D10521C(&v9[*(v7 + 20)], v21, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D30D8FC(v9, type metadata accessor for TTRRemindersListUncommittedReminder);
      *&aBlock = v36;
      v54 = *(v36 + 16);
      v53 = *(v36 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_21D18EBA4((v53 > 1), v54 + 1, 1);
        v36 = aBlock;
      }

      *(v36 + 16) = v54 + 1;
      sub_21D105834(v21, v36 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v54, type metadata accessor for TTRRemindersListViewModel.Item);
      v51 += v52;
      --v49;
    }

    while (v49);
    v38 = v79;
    v30 = v83;
    v44 = v72;
  }

  else
  {
    sub_21D24A7C4(v45, v46, v47, v82);
    v36 = MEMORY[0x277D84F90];
  }

  sub_21DBF8E0C();
  v55 = v74;
  v56 = v75;
  v57 = v44;
  v58 = v76;
  v59 = v77;
  sub_21D24A7C4(v74, v75, v76, v77);
  sub_21D64CFBC(v30, v30, v57, v55, v56, v58, v59);
  sub_21D24A814(v55, v56);

  swift_bridgeObjectRelease_n();
  sub_21D0D3954(v78, &aBlock, &unk_27CE60D80, &unk_21DC093F0);
  if (!v86)
  {
    sub_21D30D8FC(v70, type metadata accessor for TTRRemindersListReminderCreationLocation);
    sub_21D24A814(v73, v80);
    sub_21D0CF7E0(&aBlock, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0CF7E0(v38, &qword_27CE5A3A0, qword_21DC0F3A0);
    return v36;
  }

  sub_21D0D0FD0(&aBlock, v90);
  v60 = objc_opt_self();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v69 = 0x800000021DC4F4C0;
  sub_21DBF516C();
  v61 = sub_21DBFA12C();

  sub_21D0D32E4(v90, v89);
  v62 = swift_allocObject();
  v62[2] = v83;
  sub_21D0D0FD0(v89, (v62 + 3));
  v63 = v73;
  v62[8] = v36;
  v62[9] = v63;
  v64 = v81;
  v62[10] = v80;
  v62[11] = v64;
  v62[12] = v82;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_21D64DD10;
  *(v65 + 24) = v62;
  v87 = sub_21D0E622C;
  v88 = v65;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v85 = sub_21D0E6204;
  v86 = &block_descriptor_76;
  v66 = _Block_copy(&aBlock);

  sub_21DBF8E0C();

  [v60 withActionName:v61 block:v66];
  _Block_release(v66);

  __swift_destroy_boxed_opaque_existential_0(v90);
  sub_21D30D8FC(v70, type metadata accessor for TTRRemindersListReminderCreationLocation);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    sub_21D0CF7E0(v38, &qword_27CE5A3A0, qword_21DC0F3A0);

    return v36;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D644AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v26 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v26);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v25 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F598, &qword_21DC207B8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;

  TTRRemindersListTreeViewModel.resolve(_:)(a1, v13);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21D0CF7E0(v13, &qword_27CE5F598, &qword_21DC207B8);
  }

  else
  {
    sub_21D0D523C(v13, v17, &qword_27CE5A3A0, qword_21DC0F3A0);

    TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(at:)(v17, v7);

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_21D0CF7E0(v17, &qword_27CE5A3A0, qword_21DC0F3A0);
      sub_21D0CF7E0(v7, &unk_27CE5CD80, &qword_21DC0CE80);
    }

    else
    {
      v18 = v25;
      sub_21D105834(v7, v25, type metadata accessor for TTRRemindersListViewModel.Item);
      v19 = v27;
      TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v27);
      sub_21D0CF7E0(v17, &qword_27CE5A3A0, qword_21DC0F3A0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v23 = v28;
          sub_21D105834(v18, v28, type metadata accessor for TTRRemindersListViewModel.Item);
          (*(v9 + 56))(v23, 0, 1, v8);
          return sub_21D30D8FC(v19, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
        }

        v21 = type metadata accessor for TTRRemindersListViewModel.Item;
        v22 = v18;
      }

      else
      {
        sub_21D30D8FC(v18, type metadata accessor for TTRRemindersListViewModel.Item);
        v21 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem;
        v22 = v19;
      }

      sub_21D30D8FC(v22, v21);
    }
  }

  return (*(v9 + 56))(v28, 1, 1, v8);
}

uint64_t sub_21D644F3C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v24 - v13;
  v15 = *a1;
  v16 = [v15 objectID];
  v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
  *v14 = v16;
  swift_storeEnumTagMultiPayload();
  sub_21D10521C(v14, v10, type metadata accessor for TTRRemindersListViewModel.Item);
  type metadata accessor for TTRRemindersListEditingSessionState(0);
  swift_allocObject();
  v19 = TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)(v10, v15);
  v20 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_registeredUndoForAddingReminder;
  swift_beginAccess();
  *(v19 + v20) = 1;
  sub_21D0D3954(v24, v7, &qword_27CE5A3A0, qword_21DC0F3A0);
  sub_21D10521C(v14, v10, type metadata accessor for TTRRemindersListViewModel.Item);
  v21 = v15;
  TTRRemindersListUncommittedReminder.init(location:item:editingSessionState:)(v7, v10, v19, a3);
  sub_21D30D8FC(v14, type metadata accessor for TTRRemindersListViewModel.Item);
  v22 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  return (*(*(v22 - 8) + 56))(a3, 0, 1, v22);
}

uint64_t sub_21D6451E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_21D0D32E4(a2, v23);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a7;
  sub_21D0D3954(v23, &v18, &unk_27CE60D80, &unk_21DC093F0);
  if (v19)
  {
    sub_21D0D0FD0(&v18, v20);
    v13 = v21;
    v17 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    *&v18 = MEMORY[0x277D84F90];
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = sub_21D64DD28;
    v15[4] = v12;
    sub_21DBF8E0C();
    sub_21D24A7C4(a4, a5, a6, a7);

    TTRUndoContext.registerUndo(forEditing:action:)(&v18, sub_21D64DD78, v15, v13, v17);

    sub_21D0CF7E0(v23, &unk_27CE60D80, &unk_21DC093F0);

    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    sub_21DBF8E0C();
    sub_21D24A7C4(a4, a5, a6, a7);

    sub_21D0CF7E0(v23, &unk_27CE60D80, &unk_21DC093F0);
    return sub_21D0CF7E0(&v18, &unk_27CE60D80, &unk_21DC093F0);
  }
}

uint64_t sub_21D64540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_21D0D32E4(a2, v13);
  sub_21D6454A0(a3, a4, a5, a6, a7, v13);
  return sub_21D0CF7E0(v13, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t sub_21D6454A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v112 = a6;
  v116 = a4;
  v123 = a3;
  v115 = a2;
  v130 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v130);
  v121 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v129 = &v110 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v14);
  v114 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v124 = &v110 - v17;
  MEMORY[0x28223BE20](v18);
  v126 = &v110 - v19;
  MEMORY[0x28223BE20](v20);
  v113 = &v110 - v21;
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v132 = &v110 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v110 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v110 - v29;
  v35 = MEMORY[0x28223BE20](v31);
  v36 = &v110 - v33;
  v148 = MEMORY[0x277D84F90];
  v37 = *(a1 + 16);
  v117 = a5;
  if (v37)
  {
    v120 = v34;
    v127 = 0;
    v119 = *(v32 + 80);
    v125 = (v119 + 32) & ~v119;
    v38 = a1 + v125;
    v131 = MEMORY[0x277D84F90];
    v139 = *(v32 + 72);
    v35.n128_u64[0] = 136315138;
    v133 = v35;
    v118 = xmmword_21DC08D00;
    v134 = v11;
    v136 = v14;
    v137 = v13;
    v122 = v27;
    v135 = v30;
    v138 = &v110 - v33;
    while (1)
    {
      sub_21D10521C(v38, v36, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D10521C(v36, v30, type metadata accessor for TTRRemindersListViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v140 = v38;
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload < 2)
        {
LABEL_11:
          sub_21D30D8FC(v30, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_12:
          swift_storeEnumTagMultiPayload();
LABEL_13:
          v40 = v37;
          if (qword_27CE56B10 != -1)
          {
            swift_once();
          }

          v41 = sub_21DBF84BC();
          __swift_project_value_buffer(v41, qword_27CE5F540);
          sub_21D10521C(v36, v27, type metadata accessor for TTRRemindersListViewModel.Item);
          v42 = sub_21DBF84AC();
          v43 = sub_21DBFAECC();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = v27;
            v46 = swift_slowAlloc();
            v147 = v46;
            *v44 = v133.n128_u32[0];
            sub_21D10521C(v45, v132, type metadata accessor for TTRRemindersListViewModel.Item);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A380, &unk_21DC0F0C0);
            if (swift_dynamicCast())
            {
              sub_21D0D0FD0(&v141, &v144);
              __swift_project_boxed_opaque_existential_1(&v144, v146);
              v47 = sub_21DBFC5BC();
              v49 = v48;
              __swift_destroy_boxed_opaque_existential_0(&v144);
            }

            else
            {
              v143 = 0;
              v141 = 0u;
              v142 = 0u;
              sub_21D0CF7E0(&v141, &qword_27CE5A388, &unk_21DC0F450);
              v144 = 0;
              v145 = 0xE000000000000000;
              v50 = v129;
              TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v129);
              sub_21DBFC14C();
              sub_21D30D8FC(v50, type metadata accessor for TTRRemindersListViewModel.ItemID);
              v47 = v144;
              v49 = v145;
            }

            sub_21D30D8FC(v45, type metadata accessor for TTRRemindersListViewModel.Item);
            v51 = sub_21D0CDFB4(v47, v49, &v147);

            *(v44 + 4) = v51;
            _os_log_impl(&dword_21D0C9000, v42, v43, "TTRSECreateRemindersViewModelSource: unexpected item type to discard {item: %s}", v44, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v46);
            MEMORY[0x223D46520](v46, -1, -1);
            MEMORY[0x223D46520](v44, -1, -1);

            v36 = v138;
            sub_21D30D8FC(v138, type metadata accessor for TTRRemindersListViewModel.Item);
            v13 = v137;
            v27 = v45;
            v30 = v135;
          }

          else
          {

            sub_21D30D8FC(v27, type metadata accessor for TTRRemindersListViewModel.Item);
            sub_21D30D8FC(v36, type metadata accessor for TTRRemindersListViewModel.Item);
          }

          v37 = v40;
          v38 = v140;
          goto LABEL_5;
        }
      }

      else
      {
        if ((EnumCaseMultiPayload - 5) < 4)
        {
          goto LABEL_11;
        }

        if ((EnumCaseMultiPayload - 9) < 2)
        {
          goto LABEL_12;
        }
      }

      sub_21D105834(v30, v13, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      swift_storeEnumTagMultiPayload();
      v52 = swift_getEnumCaseMultiPayload();
      if (v52 > 1)
      {
        if (v52 != 2)
        {
          goto LABEL_13;
        }

        if (qword_27CE56B10 != -1)
        {
          swift_once();
        }

        v53 = sub_21DBF84BC();
        __swift_project_value_buffer(v53, qword_27CE5F540);
        v54 = v124;
        sub_21D10521C(v36, v124, type metadata accessor for TTRRemindersListViewModel.Item);
        v55 = sub_21DBF84AC();
        v56 = sub_21DBFAE9C();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v147 = v58;
          *v57 = v133.n128_u32[0];
          sub_21D10521C(v54, v114, type metadata accessor for TTRRemindersListViewModel.Item);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A380, &unk_21DC0F0C0);
          if (swift_dynamicCast())
          {
            sub_21D0D0FD0(&v141, &v144);
            __swift_project_boxed_opaque_existential_1(&v144, v146);
            v59 = sub_21DBFC5BC();
            v61 = v60;
            __swift_destroy_boxed_opaque_existential_0(&v144);
          }

          else
          {
            v143 = 0;
            v141 = 0u;
            v142 = 0u;
            sub_21D0CF7E0(&v141, &qword_27CE5A388, &unk_21DC0F450);
            v144 = 0;
            v145 = 0xE000000000000000;
            v73 = v129;
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v129);
            sub_21DBFC14C();
            v74 = v73;
            v54 = v124;
            sub_21D30D8FC(v74, type metadata accessor for TTRRemindersListViewModel.ItemID);
            v59 = v144;
            v61 = v145;
          }

          sub_21D30D8FC(v54, type metadata accessor for TTRRemindersListViewModel.Item);
          v75 = sub_21D0CDFB4(v59, v61, &v147);

          *(v57 + 4) = v75;
          _os_log_impl(&dword_21D0C9000, v55, v56, "TTRSECreateRemindersViewModelSource: discarding placeholderReminder {item: %s}", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v58);
          MEMORY[0x223D46520](v58, -1, -1);
          MEMORY[0x223D46520](v57, -1, -1);

          v71 = v121;
        }

        else
        {

          sub_21D30D8FC(v54, type metadata accessor for TTRRemindersListViewModel.Item);
          v71 = v121;
        }

        v76 = *(v128[2] + 80);

        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v71);
        swift_beginAccess();
        v77 = *(v76 + 24);
        if (*(v77 + 16) && (v78 = sub_21D181E00(), (v79 & 1) != 0))
        {
          v80 = *(*(v77 + 56) + 8 * v78);
          swift_endAccess();

          sub_21D30D8FC(v71, type metadata accessor for TTRRemindersListViewModel.ItemID);

          v81 = *(*v80 + 128);
          swift_beginAccess();
          *(v80 + v81) = 0;
        }

        else
        {
          swift_endAccess();

          sub_21D30D8FC(v71, type metadata accessor for TTRRemindersListViewModel.ItemID);
        }

        v82 = v128;
        v144 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928, &qword_21DC09B80);
        v83 = v125;
        v84 = swift_allocObject();
        *(v84 + 16) = v118;
        v85 = v138;
        sub_21D10521C(v138, v84 + v83, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D897284(&v144, v84);
        swift_setDeallocating();
        sub_21D30D8FC(v84 + v83, type metadata accessor for TTRRemindersListViewModel.Item);
        swift_deallocClassInstance();
        v86 = v82[17];
        v87 = v82[18];
        __swift_project_boxed_opaque_existential_1(v82 + 14, v86);
        (*(v87 + 8))(v85, v86, v87);
        v36 = v85;
        sub_21D30D8FC(v85, type metadata accessor for TTRRemindersListViewModel.Item);
        v13 = v137;
        v27 = v122;
        v30 = v135;
        v38 = v140;
      }

      else
      {
        if (!v52)
        {
          sub_21D30D8FC(v13, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
          goto LABEL_13;
        }

        if (qword_27CE56B10 != -1)
        {
          swift_once();
        }

        v62 = sub_21DBF84BC();
        __swift_project_value_buffer(v62, qword_27CE5F540);
        v63 = v36;
        v64 = v120;
        sub_21D10521C(v63, v120, type metadata accessor for TTRRemindersListViewModel.Item);
        v65 = sub_21DBF84AC();
        v66 = sub_21DBFAE9C();
        if (os_log_type_enabled(v65, v66))
        {
          v111 = v66;
          v67 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v147 = v110;
          *v67 = v133.n128_u32[0];
          sub_21D10521C(v64, v113, type metadata accessor for TTRRemindersListViewModel.Item);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A380, &unk_21DC0F0C0);
          if (swift_dynamicCast())
          {
            sub_21D0D0FD0(&v141, &v144);
            __swift_project_boxed_opaque_existential_1(&v144, v146);
            v68 = sub_21DBFC5BC();
            v70 = v69;
            __swift_destroy_boxed_opaque_existential_0(&v144);
          }

          else
          {
            v143 = 0;
            v141 = 0u;
            v142 = 0u;
            sub_21D0CF7E0(&v141, &qword_27CE5A388, &unk_21DC0F450);
            v144 = 0;
            v145 = 0xE000000000000000;
            v88 = v129;
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v129);
            sub_21DBFC14C();
            v89 = v88;
            v30 = v135;
            v13 = v137;
            sub_21D30D8FC(v89, type metadata accessor for TTRRemindersListViewModel.ItemID);
            v68 = v144;
            v70 = v145;
          }

          sub_21D30D8FC(v64, type metadata accessor for TTRRemindersListViewModel.Item);
          v90 = sub_21D0CDFB4(v68, v70, &v147);

          *(v67 + 4) = v90;
          _os_log_impl(&dword_21D0C9000, v65, v111, "TTRSECreateRemindersViewModelSource: discarding uncommittedReminder {item: %s}", v67, 0xCu);
          v91 = v110;
          __swift_destroy_boxed_opaque_existential_0(v110);
          MEMORY[0x223D46520](v91, -1, -1);
          MEMORY[0x223D46520](v67, -1, -1);

          v72 = v131;
          v27 = v122;
        }

        else
        {

          sub_21D30D8FC(v64, type metadata accessor for TTRRemindersListViewModel.Item);
          v72 = v131;
        }

        v36 = v138;
        sub_21D10521C(v138, v126, type metadata accessor for TTRRemindersListViewModel.Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_21D211A80(0, v72[2] + 1, 1, v72);
        }

        v131 = v72;
        v93 = v72[2];
        v92 = v72[3];
        if (v93 >= v92 >> 1)
        {
          v131 = sub_21D211A80((v92 > 1), v93 + 1, 1, v131);
        }

        sub_21D30D8FC(v36, type metadata accessor for TTRRemindersListViewModel.Item);
        v94 = v131;
        v131[2] = v93 + 1;
        v95 = v94;
        result = sub_21D105834(v126, v94 + v125 + v93 * v139, type metadata accessor for TTRRemindersListViewModel.Item);
        v148 = v95;
        if (__OFADD__(v127, 1))
        {
          __break(1u);
          return result;
        }

        ++v127;
      }

      sub_21D30D8FC(v13, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
LABEL_5:
      v38 += v139;
      if (!--v37)
      {
        goto LABEL_54;
      }
    }
  }

  v131 = MEMORY[0x277D84F90];
  v127 = 0;
LABEL_54:
  v97 = v128;
  v98 = v128[2];
  v99 = *(v98 + 104);
  v100 = *(v98 + 112);

  v101 = sub_21D25E9D8(v99, v100);

  if (v123 == 1)
  {
    v102 = 1;
    v103 = v115;
    v104 = v115;
    v105 = v116;
    v106 = v116;
    v107 = v117;
    v108 = v117;
  }

  else
  {
    v104 = v97[3];
    v102 = v97[4];
    v106 = v97[5];
    v108 = v97[6];
    sub_21D24A7C4(v104, v102, v106, v108);
    v107 = v117;
    v105 = v116;
    v103 = v115;
  }

  v109 = v123;
  sub_21D64CAB0(v103, v123, v105, v107);
  sub_21D64C18C(v97, v97, &v148, v103, v109, v105, v107);
  sub_21D301F20(v103, v109);

  if (v131[2])
  {
    sub_21D643B9C(v101, v104, v102, v106, v108, v112);
  }

  sub_21D301F20(v104, v102);

  return v127;
}

void sub_21D646688(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v100 = a4;
  v111 = a3;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
  MEMORY[0x28223BE20](v110);
  v109 = &v92[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F590, &qword_21DC207B0);
  MEMORY[0x28223BE20](v7 - 8);
  v108 = &v92[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v107 = &v92[-v10];
  v106 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  MEMORY[0x28223BE20](v106);
  v112 = &v92[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v117 = type metadata accessor for TTRRemindersListReminderCreationLocation(0);
  MEMORY[0x28223BE20](v117);
  v116 = &v92[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F598, &qword_21DC207B8);
  MEMORY[0x28223BE20](v13 - 8);
  v121 = &v92[-v14];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
  v15 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v105 = &v92[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v113 = &v92[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v92[-v20];
  v129 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v22 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v101 = &v92[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v103 = &v92[-v25];
  MEMORY[0x28223BE20](v26);
  v119 = &v92[-v27];
  MEMORY[0x28223BE20](v28);
  v122 = &v92[-v29];
  v30 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v126 = *(v30 - 8);
  MEMORY[0x28223BE20](v30 - 8);
  v120 = &v92[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32);
  v125 = &v92[-v33];
  v34 = a2 + 56;
  v35 = 1 << *(a2 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(a2 + 56);
  v38 = (v35 + 63) >> 6;
  v104 = v22;
  v124 = (v22 + 48);
  v114 = (v15 + 48);
  v130 = a2;
  sub_21DBF8E0C();
  v118 = 0;
  v39 = 0;
  v102 = xmmword_21DC08D00;
  v127 = v38;
  v128 = v34;
  v123 = a1;
  while (v37)
  {
    v40 = v21;
LABEL_12:
    v42 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v43 = v125;
    sub_21D10521C(*(v130 + 48) + *(v126 + 72) * (v42 | (v39 << 6)), v125, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v45 = *(a1 + 24);
    v44 = *(a1 + 32);
    ObjectType = swift_getObjectType();
    v131 = v45;
    v47 = *(v44 + 8);
    v48 = *(v47 + 40);
    swift_unknownObjectRetain();
    v48(v43, ObjectType, v47);
    v21 = v40;
    sub_21D30D8FC(v43, type metadata accessor for TTRRemindersListViewModel.ItemID);
    swift_unknownObjectRelease();
    if ((*v124)(v40, 1, v129) == 1)
    {
      sub_21D0CF7E0(v40, &unk_27CE5CD80, &qword_21DC0CE80);
      a1 = v123;
      goto LABEL_5;
    }

    v49 = v40;
    v50 = v122;
    sub_21D105834(v49, v122, type metadata accessor for TTRRemindersListViewModel.Item);
    a1 = v123;
    v51 = *(v123 + 80);

    v52 = v120;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v120);
    swift_beginAccess();
    v53 = *(v51 + 24);
    v54 = v121;
    if (!*(v53 + 16) || (v55 = sub_21D181E00(), v56 = v119, (v57 & 1) == 0))
    {
      swift_endAccess();
      sub_21D30D8FC(v52, type metadata accessor for TTRRemindersListViewModel.ItemID);

LABEL_19:
      sub_21D30D8FC(v50, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_5;
    }

    v58 = *(*(v53 + 56) + 8 * v55);
    swift_endAccess();

    sub_21D30D8FC(v52, type metadata accessor for TTRRemindersListViewModel.ItemID);

    v59 = *(*v58 + 128);
    swift_beginAccess();
    v60 = *(v58 + v59);

    if (!v60)
    {
      goto LABEL_19;
    }

    v61 = v116;
    sub_21D10521C(v50, v116, type metadata accessor for TTRRemindersListViewModel.Item);
    swift_storeEnumTagMultiPayload();
    TTRRemindersListTreeViewModel.resolve(_:)(v61, v54);
    sub_21D30D8FC(v61, type metadata accessor for TTRRemindersListReminderCreationLocation);
    if ((*v114)(v54, 1, v115) == 1)
    {

      sub_21D30D8FC(v50, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v54, &qword_27CE5F598, &qword_21DC207B8);
    }

    else
    {
      sub_21D0D523C(v54, v113, &qword_27CE5A3A0, qword_21DC0F3A0);
      v62 = TTRRemindersListEditingSessionState.isForNewReminder.getter();
      v99 = v21;
      LODWORD(v96) = (v62 & 1) != 0 && (v63 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_registeredUndoForAddingReminder, swift_beginAccess(), *(v60 + v63) == 1);
      v64 = *(v60 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);
      v65 = [v64 objectID];
      v66 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v67 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      (*(*(v67 - 8) + 56))(&v56[v66], 1, 1, v67);
      *v56 = v65;
      swift_storeEnumTagMultiPayload();
      v68 = v103;
      sub_21D10521C(v56, v103, type metadata accessor for TTRRemindersListViewModel.Item);
      type metadata accessor for TTRRemindersListEditingSessionState(0);
      swift_allocObject();
      v69 = TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)(v68, v64);
      v70 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_registeredUndoForAddingReminder;
      swift_beginAccess();
      *(v69 + v70) = 1;
      v71 = v105;
      sub_21D0D3954(v113, v105, &qword_27CE5A3A0, qword_21DC0F3A0);
      sub_21D10521C(v56, v68, type metadata accessor for TTRRemindersListViewModel.Item);
      v97 = v64;

      v98 = v69;
      TTRRemindersListUncommittedReminder.init(location:item:editingSessionState:)(v71, v68, v69, v112);
      v131 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928, &qword_21DC09B80);
      v72 = *(v104 + 72);
      v73 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v74 = swift_allocObject();
      *(v74 + 16) = v102;
      sub_21D10521C(v122, v74 + v73, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D897284(&v131, v74);
      swift_setDeallocating();
      sub_21D30D8FC(v74 + v73, type metadata accessor for TTRRemindersListViewModel.Item);
      swift_deallocClassInstance();
      if ((v96 & 1) == 0)
      {
        v75 = v72;
        sub_21D10521C(v56, v101, type metadata accessor for TTRRemindersListViewModel.Item);
        v76 = v100;
        v77 = *v100;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v76 = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v77 = sub_21D211A80(0, v77[2] + 1, 1, v77);
          *v100 = v77;
        }

        v80 = v77[2];
        v79 = v77[3];
        if (v80 >= v79 >> 1)
        {
          v77 = sub_21D211A80((v79 > 1), v80 + 1, 1, v77);
          *v100 = v77;
        }

        v77[2] = v80 + 1;
        sub_21D105834(v101, v77 + v73 + v80 * v75, type metadata accessor for TTRRemindersListViewModel.Item);
      }

      v81 = v107;
      v82 = v122;
      TTRRemindersListTreeViewModel.delete(_:)(v122, v107);
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
      v83 = *(v95 - 8);
      v94 = *(v83 + 48);
      v96 = v83 + 48;
      v93 = v94(v81, 1, v95);
      sub_21D0CF7E0(v81, &qword_27CE5F590, &qword_21DC207B0);
      v84 = v112;
      v85 = *&v112[*(v106 + 24)];
      v86 = v109;
      sub_21D10521C(&v112[*(v106 + 20)], v109, type metadata accessor for TTRRemindersListViewModel.Item);
      v87 = v110;
      sub_21D0D3954(v84, &v86[*(v110 + 56)], &qword_27CE5A3A0, qword_21DC0F3A0);
      v88 = &v86[*(v87 + 52)];
      *v88 = v85;
      *(v88 + 1) = 0;
      v88[16] = 1;

      v89 = v108;
      sub_21D271278(v86, v108);

      sub_21D0CF7E0(v86, &qword_27CE5CDA0, &unk_21DC09B90);
      sub_21D30D8FC(v84, type metadata accessor for TTRRemindersListUncommittedReminder);
      sub_21D30D8FC(v119, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v113, &qword_27CE5A3A0, qword_21DC0F3A0);
      sub_21D30D8FC(v82, type metadata accessor for TTRRemindersListViewModel.Item);
      if (v94(v89, 1, v95) == 1)
      {
        v90 = v93 != 1;
        sub_21D0CF7E0(v89, &qword_27CE5F590, &qword_21DC207B0);
        v91 = v118 | v90;
      }

      else
      {
        sub_21D0CF7E0(v89, &qword_27CE5F590, &qword_21DC207B0);
        v91 = 1;
      }

      v118 = v91;
      v21 = v99;
    }

LABEL_5:
    v38 = v127;
    v34 = v128;
  }

  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v38)
    {

      return;
    }

    v37 = *(v34 + 8 * v41);
    ++v39;
    if (v37)
    {
      v40 = v21;
      v39 = v41;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_21D647530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_21D0D3954(*(a1 + 80) + OBJC_IVAR____TtC15RemindersUICore19UndoContextProvider_undoContext, &v10 - v5, &qword_27CE59370, &unk_21DC0B390);
  v7 = type metadata accessor for TTRRemindersListUndoContext(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE59370, &unk_21DC0B390);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  else
  {
    *(&v11 + 1) = v7;
    v12 = &protocol witness table for TTRRemindersListUndoContext;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v10);
    sub_21D105834(v6, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListUndoContext);
  }

  sub_21D6439C8(&v10, sub_21D64CA90, a2);

  return sub_21D0CF7E0(&v10, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t sub_21D6476D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_21D0D32E4(a2, v6);
  v4 = sub_21DBF8E0C();
  sub_21D6454A0(v4, 0, 1, 0, 0, v6);

  return sub_21D0CF7E0(v6, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t *sub_21D647770()
{

  sub_21D24A814(v0[3], v0[4]);
  sub_21D157444((v0 + 7));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);

  return v0;
}

uint64_t sub_21D6477CC()
{
  sub_21D647770();

  return swift_deallocClassInstance();
}

unint64_t sub_21D647838()
{
  result = qword_27CE5F570;
  if (!qword_27CE5F570)
  {
    result = swift_getWitnessTable(byte_21DC20720, &type metadata for TTRSECreateRemindersDisplayMode, v0, v1);
    atomic_store(result, &qword_27CE5F570);
  }

  return result;
}

id sub_21D64788C()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  v3 = sub_21D291698(v2);

  sub_21D30D8FC(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (!v3)
  {
    return 0;
  }

  v4 = *(*v3 + 128);
  swift_beginAccess();
  v5 = *(v3 + v4);

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);

  return v6;
}

uint64_t sub_21D6479D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D644AD4(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_21D105834(v9, v13, type metadata accessor for TTRRemindersListViewModel.Item);

    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v6);
    v14 = sub_21D291698(v6);

    sub_21D30D8FC(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (v14)
    {
      v15 = *(*v14 + 128);
      swift_beginAccess();
      v16 = *(v14 + v15);

      if (v16)
      {

        sub_21D30D8FC(v13, type metadata accessor for TTRRemindersListViewModel.Item);
        goto LABEL_6;
      }
    }

    sub_21D105834(v13, a2, type metadata accessor for TTRRemindersListViewModel.Item);
    v17 = 0;
    return (*(v11 + 56))(a2, v17, 1, v10);
  }

  sub_21D0CF7E0(v9, &unk_27CE5CD80, &qword_21DC0CE80);
LABEL_6:
  v17 = 1;
  return (*(v11 + 56))(a2, v17, 1, v10);
}

uint64_t sub_21D647CA8@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v97 = a6;
  v98 = a5;
  v87 = a2;
  v88 = a3;
  v96 = a1;
  v89 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  MEMORY[0x28223BE20](v89);
  v90 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for TTRRemindersListReminderCreationLocation(0);
  MEMORY[0x28223BE20](v83);
  v84 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v77 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A8, &qword_21DC0F3E8);
  MEMORY[0x28223BE20](v12 - 8);
  v93 = &v77 - v13;
  v14 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v91 = *(v14 - 8);
  v92 = v14;
  MEMORY[0x28223BE20](v14);
  v82 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v86 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v77 - v20;
  MEMORY[0x28223BE20](v22);
  v94 = &v77 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F598, &qword_21DC207B8);
  MEMORY[0x28223BE20](v24 - 8);
  v81 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v77 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v85 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v95 = &v77 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v77 - v35;

  TTRRemindersListTreeViewModel.resolve(_:)(v96, v28);

  v37 = *(v30 + 48);
  if (v37(v28, 1, v29) == 1)
  {
    sub_21D0CF7E0(v28, &qword_27CE5F598, &qword_21DC207B8);
    (*(v17 + 56))(v97, 1, 1, v16);
  }

  v78 = v37;
  sub_21D0D523C(v28, v36, &qword_27CE5A3A0, qword_21DC0F3A0);
  v38 = [objc_opt_self() newObjectID];
  v79 = a4;
  v80 = v38;

  TTRRemindersListTreeViewModel.sectionForlocationIfLastChild(_:)(v36, v11);

  v96 = v17;
  v39 = v16;
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_21D0CF7E0(v11, &unk_27CE5CD80, &qword_21DC0CE80);
    v40 = v93;
    (*(v91 + 56))(v93, 1, 1, v92);
    v41 = v94;
  }

  else
  {
    sub_21D10521C(v11, v21, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v43 = v91;
    v40 = v93;
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D105834(v21, v93, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v44 = 0;
    }

    else
    {
      sub_21D30D8FC(v21, type metadata accessor for TTRRemindersListViewModel.Item);
      v44 = 1;
    }

    v45 = v92;
    (*(v43 + 56))(v40, v44, 1, v92);
    sub_21D30D8FC(v11, type metadata accessor for TTRRemindersListViewModel.Item);
    v46 = (*(v43 + 48))(v40, 1, v45);
    v41 = v94;
    if (v46 != 1)
    {
      v72 = v82;
      sub_21D105834(v40, v82, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v73 = v84;
      sub_21D10521C(v72, v84, type metadata accessor for TTRRemindersListViewModel.SectionID);
      swift_storeEnumTagMultiPayload();

      v74 = v81;
      TTRRemindersListTreeViewModel.resolve(_:)(v73, v81);

      sub_21D30D8FC(v73, type metadata accessor for TTRRemindersListReminderCreationLocation);
      sub_21D30D8FC(v72, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      if (v78(v74, 1, v29) == 1)
      {
        sub_21D0CF7E0(v36, &qword_27CE5A3A0, qword_21DC0F3A0);

        sub_21D0CF7E0(v74, &qword_27CE5F598, &qword_21DC207B8);
        (*(v96 + 56))(v97, 1, 1, v39);
      }

      v93 = v36;
      sub_21D0D523C(v74, v95, &qword_27CE5A3A0, qword_21DC0F3A0);
      v75 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v76 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      (*(*(v76 - 8) + 56))(&v41[v75], 1, 1, v76);
      v49 = v80;
      *v41 = v80;
      swift_storeEnumTagMultiPayload();
      goto LABEL_10;
    }
  }

  sub_21D0CF7E0(v40, &qword_27CE5A3A8, &qword_21DC0F3E8);
  v47 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v48 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v48 - 8) + 56))(&v41[v47], 1, 1, v48);
  v49 = v80;
  *v41 = v80;
  swift_storeEnumTagMultiPayload();
  v93 = v36;
  sub_21D0D3954(v36, v95, &qword_27CE5A3A0, qword_21DC0F3A0);
LABEL_10:
  v50 = *(v98 + 32);
  v51 = v49;
  if (v50() && (v53 = v52, ObjectType = swift_getObjectType(), v55 = (*(v53 + 8))(v51, ObjectType, v53), swift_unknownObjectRelease(), v55))
  {
    v98 = v39;
    v56 = v86;
    sub_21D10521C(v41, v86, type metadata accessor for TTRRemindersListViewModel.Item);
    type metadata accessor for TTRRemindersListEditingSessionState(0);
    swift_allocObject();
    v57 = TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)(v56, v55);
    v58 = v95;
    v59 = v85;
    sub_21D0D3954(v95, v85, &qword_27CE5A3A0, qword_21DC0F3A0);
    sub_21D10521C(v41, v56, type metadata accessor for TTRRemindersListViewModel.Item);
    v60 = v55;

    v61 = v90;
    v62 = TTRRemindersListUncommittedReminder.init(location:item:editingSessionState:)(v59, v56, v57, v90);
    MEMORY[0x28223BE20](v62);
    *(&v77 - 4) = v79;
    *(&v77 - 3) = v61;
    *(&v77 - 16) = v87 & 1;
    *(&v77 - 15) = v88 & 1;
    sub_21D6418B8(sub_21D64CAA0);

    sub_21D0CF7E0(v58, &qword_27CE5A3A0, qword_21DC0F3A0);
    sub_21D30D8FC(v41, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v93, &qword_27CE5A3A0, qword_21DC0F3A0);
    v63 = v97;
    sub_21D10521C(v61 + *(v89 + 20), v97, type metadata accessor for TTRRemindersListViewModel.Item);
    (*(v96 + 56))(v63, 0, 1, v98);
    sub_21D30D8FC(v61, type metadata accessor for TTRRemindersListUncommittedReminder);
  }

  else
  {
    if (qword_27CE56B10 != -1)
    {
      swift_once();
    }

    v64 = sub_21DBF84BC();
    __swift_project_value_buffer(v64, qword_27CE5F540);
    v65 = sub_21DBF84AC();
    v66 = sub_21DBFAEBC();
    v67 = os_log_type_enabled(v65, v66);
    v69 = v96;
    v68 = v97;
    if (v67)
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_21D0C9000, v65, v66, "TTRSECreateRemindersViewModelSource: cannot create reminderChangeItem, createReminderChangeItem returns nil.", v70, 2u);
      MEMORY[0x223D46520](v70, -1, -1);
    }

    sub_21D0CF7E0(v95, &qword_27CE5A3A0, qword_21DC0F3A0);
    sub_21D30D8FC(v41, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v93, &qword_27CE5A3A0, qword_21DC0F3A0);
    (*(v69 + 56))(v68, 1, 1, v39);
  }
}

uint64_t sub_21D6488A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58938, &unk_21DC207D0);
  v9 = *(type metadata accessor for TTRRemindersListUncommittedReminder(0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21DC08D00;
  sub_21D10521C(a3, v11 + v10, type metadata accessor for TTRRemindersListUncommittedReminder);
  sub_21D642814(v11, a4, a1);
  swift_setDeallocating();
  sub_21D30D8FC(v11 + v10, type metadata accessor for TTRRemindersListUncommittedReminder);
  result = swift_deallocClassInstance();
  if ((a5 & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_prefersNoAnimation) = 1;
  }

  return result;
}

uint64_t sub_21D6489F4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v73 = *(v10 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v74 = &v71 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v71 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v71 - v22;
  sub_21D10521C(a1 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_item, &v71 - v22, type metadata accessor for TTRRemindersListViewModel.Item);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_9;
    }

    if (qword_27CE56B10 != -1)
    {
      swift_once();
    }

    v72 = v9;
    v25 = sub_21DBF84BC();
    __swift_project_value_buffer(v25, qword_27CE5F540);
    sub_21D10521C(v23, v12, type metadata accessor for TTRRemindersListViewModel.Item);
    v26 = sub_21DBF84AC();
    v27 = sub_21DBFAE9C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136315138;
      v30 = sub_21D25D250();
      v32 = v31;
      sub_21D30D8FC(v12, type metadata accessor for TTRRemindersListViewModel.Item);
      v33 = sub_21D0CDFB4(v30, v32, aBlock);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_21D0C9000, v26, v27, "TTRSECreateRemindersViewModelSource: commit placeholderReminder {item: %s}", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x223D46520](v29, -1, -1);
      MEMORY[0x223D46520](v28, -1, -1);
    }

    else
    {

      sub_21D30D8FC(v12, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    sub_21D64149C();
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v6);
    sub_21D64116C(v6);

    sub_21D30D8FC(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_27:
    sub_21D30D8FC(v23, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_21D30D8FC(v9, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
LABEL_9:
    if (qword_27CE56B10 != -1)
    {
      swift_once();
    }

    v34 = sub_21DBF84BC();
    __swift_project_value_buffer(v34, qword_27CE5F540);
    sub_21D10521C(v23, v20, type metadata accessor for TTRRemindersListViewModel.Item);
    v35 = sub_21DBF84AC();
    v36 = sub_21DBFAECC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      v39 = sub_21D25D250();
      v41 = v40;
      sub_21D30D8FC(v20, type metadata accessor for TTRRemindersListViewModel.Item);
      v42 = sub_21D0CDFB4(v39, v41, aBlock);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_21D0C9000, v35, v36, "TTRSECreateRemindersViewModelSource: unexpected item type to commit {item: %s}", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x223D46520](v38, -1, -1);
      MEMORY[0x223D46520](v37, -1, -1);
    }

    else
    {

      sub_21D30D8FC(v20, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    v43 = v23;
    v44 = type metadata accessor for TTRRemindersListViewModel.Item;
    return sub_21D30D8FC(v43, v44);
  }

  if (qword_27CE56B10 != -1)
  {
    swift_once();
  }

  v72 = v9;
  v45 = sub_21DBF84BC();
  __swift_project_value_buffer(v45, qword_27CE5F540);
  sub_21D10521C(v23, v17, type metadata accessor for TTRRemindersListViewModel.Item);
  v46 = sub_21DBF84AC();
  v47 = sub_21DBFAE9C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71 = v2;
    v50 = v49;
    aBlock[0] = v49;
    *v48 = 136315138;
    v51 = sub_21D25D250();
    v53 = v52;
    sub_21D30D8FC(v17, type metadata accessor for TTRRemindersListViewModel.Item);
    v54 = sub_21D0CDFB4(v51, v53, aBlock);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_21D0C9000, v46, v47, "TTRSECreateRemindersViewModelSource: commit uncommittedReminder {item: %s}", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    v55 = v50;
    v2 = v71;
    MEMORY[0x223D46520](v55, -1, -1);
    MEMORY[0x223D46520](v48, -1, -1);
  }

  else
  {

    sub_21D30D8FC(v17, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  v56 = v2;

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v6);
  v57 = sub_21D291698(v6);

  sub_21D30D8FC(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (!v57)
  {
    goto LABEL_27;
  }

  v58 = *(*v57 + 128);
  swift_beginAccess();
  v59 = *(v57 + v58);

  if (!v59)
  {
    goto LABEL_27;
  }

  if (TTRRemindersListEditingSessionState.isForNewReminder.getter())
  {
    v60 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_registeredUndoForAddingReminder;
    swift_beginAccess();
    if (*(v59 + v60) == 1)
    {
      sub_21D30D8FC(v23, type metadata accessor for TTRRemindersListViewModel.Item);

LABEL_28:
      v44 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem;
      v43 = v72;
      return sub_21D30D8FC(v43, v44);
    }
  }

  v62 = objc_opt_self();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v63 = sub_21DBFA12C();

  v64 = v74;
  sub_21D10521C(v23, v74, type metadata accessor for TTRRemindersListViewModel.Item);
  v65 = (*(v73 + 80) + 24) & ~*(v73 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = v56;
  sub_21D105834(v64, v66 + v65, type metadata accessor for TTRRemindersListViewModel.Item);
  v67 = swift_allocObject();
  *(v67 + 16) = sub_21D64B26C;
  *(v67 + 24) = v66;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v67;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_70;
  v68 = _Block_copy(aBlock);

  [v62 withActionName:v63 block:v68];

  _Block_release(v68);
  sub_21D30D8FC(v23, type metadata accessor for TTRRemindersListViewModel.Item);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v70 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_registeredUndoForAddingReminder;
    swift_beginAccess();
    *(v59 + v70) = 1;

    sub_21D30D8FC(v72, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  }

  return result;
}

uint64_t sub_21D649510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_21D0D3954(*(a1 + 80) + OBJC_IVAR____TtC15RemindersUICore19UndoContextProvider_undoContext, &v15 - v8, &qword_27CE59370, &unk_21DC0B390);
  v10 = type metadata accessor for TTRRemindersListUndoContext(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE59370, &unk_21DC0B390);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  else
  {
    *(&v16 + 1) = v10;
    v17 = &protocol witness table for TTRRemindersListUndoContext;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
    sub_21D105834(v9, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListUndoContext);
  }

  sub_21D10521C(a2, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRRemindersListViewModel.Item);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_21D105834(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D6439C8(&v15, sub_21D64B2D0, v13);

  return sub_21D0CF7E0(&v15, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t sub_21D649784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928, &qword_21DC09B80);
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21DC08D00;
  sub_21D10521C(a3, v7 + v6, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D32E4(a2, v9);
  sub_21D6454A0(v7, 0, 1, 0, 0, v9);
  swift_setDeallocating();
  sub_21D30D8FC(v7 + v6, type metadata accessor for TTRRemindersListViewModel.Item);
  swift_deallocClassInstance();
  return sub_21D0CF7E0(v9, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t sub_21D6498E4(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v5 = sub_21DBFA12C();

  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21D64DD58;
  *(v7 + 24) = v6;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_94_0;
  v8 = _Block_copy(aBlock);

  v9 = a1;

  [v4 withActionName:v5 block:{v8, 0x800000021DC4F4C0}];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D649B24(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_21D0D3954(*(a1 + 80) + OBJC_IVAR____TtC15RemindersUICore19UndoContextProvider_undoContext, &v12 - v5, &qword_27CE59370, &unk_21DC0B390);
  v7 = type metadata accessor for TTRRemindersListUndoContext(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE59370, &unk_21DC0B390);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  else
  {
    *(&v13 + 1) = v7;
    v14 = &protocol witness table for TTRRemindersListUndoContext;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
    sub_21D105834(v6, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListUndoContext);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = a2;
  sub_21D6439C8(&v12, sub_21D64DD60, v9);

  return sub_21D0CF7E0(&v12, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t sub_21D649CDC(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(v8 - 8);
  v45 = v8;
  v46 = v9;
  MEMORY[0x28223BE20](v8);
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56B10 != -1)
  {
    swift_once();
  }

  v14 = sub_21DBF84BC();
  v15 = __swift_project_value_buffer(v14, qword_27CE5F540);
  v16 = a3;
  v42 = v15;
  v17 = sub_21DBF84AC();
  v18 = sub_21DBFAEDC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&dword_21D0C9000, v17, v18, "TTRSECreateRemindersViewModelSource: undo adding new reminder {objectID: %@}", v19, 0xCu);
    sub_21D0CF7E0(v20, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v20, -1, -1);
    MEMORY[0x223D46520](v19, -1, -1);
  }

  v22 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v23 - 8) + 56))(&v13[v22], 1, 1, v23);
  *v13 = v16;
  swift_storeEnumTagMultiPayload();
  v24 = *(a1 + 16);
  v25 = *(v24 + 24);
  v26 = *(v24 + 32);
  ObjectType = swift_getObjectType();
  v47[0] = v25;
  v28 = *(v26 + 8);
  v29 = *(v28 + 40);
  v30 = v16;
  v29(v13, ObjectType, v28);
  v31 = v46;
  if ((*(v46 + 48))(v7, 1, v45) == 1)
  {
    sub_21D0CF7E0(v7, &unk_27CE5CD80, &qword_21DC0CE80);
    v32 = v30;
    v33 = sub_21DBF84AC();
    v34 = sub_21DBFAEDC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&dword_21D0C9000, v33, v34, "TTRSECreateRemindersViewModelSource: item not found {objectID: %@}", v35, 0xCu);
      sub_21D0CF7E0(v36, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v36, -1, -1);
      MEMORY[0x223D46520](v35, -1, -1);
    }
  }

  else
  {
    v38 = v44;
    sub_21D105834(v7, v44, type metadata accessor for TTRRemindersListViewModel.Item);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928, &qword_21DC09B80);
    v39 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_21DC08D00;
    sub_21D10521C(v38, v40 + v39, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0D32E4(v43, v47);
    sub_21D6454A0(v40, 0, 1, 0, 0, v47);
    swift_setDeallocating();
    sub_21D30D8FC(v40 + v39, type metadata accessor for TTRRemindersListViewModel.Item);
    swift_deallocClassInstance();
    sub_21D0CF7E0(v47, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D30D8FC(v38, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  return sub_21D30D8FC(v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
}

uint64_t sub_21D64A230(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = v1;
    v3 = result;
    v4 = *(v1 + 16);
    v5 = *(v4 + 104);
    v6 = *(v4 + 112);

    v7 = sub_21D25E9D8(v5, v6);

    sub_21DBF8E0C();

    sub_21D64D450(v8, v3, v2);

    v9 = objc_opt_self();
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v10 = sub_21DBFA12C();

    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    *(v11 + 24) = v7;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_21D64D870;
    *(v12 + 24) = v11;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_66_1;
    v13 = _Block_copy(aBlock);

    [v9 withActionName:v10 block:{v13, 0x800000021DC50380}];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D64A4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(v6 + 104);
  v8 = *(v6 + 112);

  v9 = sub_21D25E9D8(v7, v8);

  sub_21D64A5F0(v9, a2, a3);
  LOBYTE(v6) = v10;
  *(a1 + 16) = v9;

  *(a1 + 24) = (*(a1 + 24) | v6) & 1;
  v11 = *(a1 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
  if (v11)
  {
    v12 = *(a1 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost + 8);

    v11(a1);

    return sub_21D0D0E88(v11, v12);
  }

  else
  {
  }
}

void sub_21D64A5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62[1] = a3;
  v66 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38, &qword_21DC0D020);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v80 = v62 - v13;
  v81 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v14 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v75 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v74 = v62 - v17;
  MEMORY[0x28223BE20](v18);
  v73 = v62 - v19;
  MEMORY[0x28223BE20](v20);
  v72 = v62 - v21;
  MEMORY[0x28223BE20](v22);
  v79 = v62 - v23;
  MEMORY[0x28223BE20](v24);
  v78 = v62 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F5A0, &unk_21DC207F0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v62 - v30;
  v82 = 0;
  v32 = *(a2 + 16);
  v65 = v14;
  v63 = a2;
  v64 = v14 + 48;
  v83 = MEMORY[0x277D84F90];
  v67 = v8;
  v76 = v11;
  v70 = v62 - v30;
  v71 = v28;
  v69 = v32;
  while (1)
  {
    if (v82 == v32)
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D08, &qword_21DC0CFD0);
      (*(*(v33 - 8) + 56))(v28, 1, 1, v33);
      v82 = v32;
      goto LABEL_8;
    }

    if (v82 >= v32)
    {
      break;
    }

    v34 = v11;
    v35 = v8;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D08, &qword_21DC0CFD0);
    v37 = *(v36 - 8);
    v38 = v82;
    sub_21D0D3954(v63 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v82, v28, &qword_27CE59D08, &qword_21DC0CFD0);
    v82 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_24;
    }

    (*(v37 + 56))(v28, 0, 1, v36);
    v8 = v35;
    v11 = v34;
LABEL_8:
    sub_21D0D523C(v28, v31, &qword_27CE5F5A0, &unk_21DC207F0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D08, &qword_21DC0CFD0);
    if ((*(*(v39 - 8) + 48))(v31, 1, v39) == 1)
    {
      v84 = 1;
      sub_21D897284(&v84, v83);

      return;
    }

    v40 = *(v39 + 48);
    v41 = *(v39 + 64);
    v42 = v78;
    sub_21D105834(v31, v78, type metadata accessor for TTRRemindersListViewModel.Item);
    v43 = &v31[v40];
    v44 = v80;
    sub_21D0D523C(v43, v80, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D0D523C(&v31[v41], v11, &qword_27CE59D38, &qword_21DC0D020);
    TTRRemindersListTreeViewModel.moveItem(from:to:)(v44, v11);
    sub_21D10521C(v42, v79, type metadata accessor for TTRRemindersListViewModel.Item);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v83 = sub_21D211A80(0, v83[2] + 1, 1, v83);
    }

    v46 = v83[2];
    v45 = v83[3];
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      v83 = sub_21D211A80((v45 > 1), v46 + 1, 1, v83);
    }

    v48 = v83;
    v83[2] = v47;
    v49 = v65;
    v77 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v50 = *(v65 + 72);
    sub_21D105834(v79, v48 + v77 + v50 * v46, type metadata accessor for TTRRemindersListViewModel.Item);
    v51 = v8;
    sub_21D0D3954(v44, v8, &unk_27CE5CD80, &qword_21DC0CE80);
    v52 = *(v49 + 48);
    if (v52(v51, 1, v81) == 1)
    {
      sub_21D0CF7E0(v51, &unk_27CE5CD80, &qword_21DC0CE80);
    }

    else
    {
      v53 = v72;
      sub_21D105834(v51, v72, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D10521C(v53, v73, type metadata accessor for TTRRemindersListViewModel.Item);
      v54 = v83[3];
      v55 = v46 + 2;
      if (v55 > (v54 >> 1))
      {
        v83 = sub_21D211A80((v54 > 1), v55, 1, v83);
      }

      sub_21D30D8FC(v72, type metadata accessor for TTRRemindersListViewModel.Item);
      v56 = v83;
      v83[2] = v55;
      sub_21D105834(v73, v56 + v77 + v50 * v47, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    v11 = v76;
    v57 = v68;
    sub_21D0D3954(v76, v68, &unk_27CE5CD80, &qword_21DC0CE80);
    if (v52(v57, 1, v81) == 1)
    {
      sub_21D0CF7E0(v11, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D0CF7E0(v80, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D30D8FC(v78, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v57, &unk_27CE5CD80, &qword_21DC0CE80);
      v8 = v67;
      v31 = v70;
      v28 = v71;
      v32 = v69;
    }

    else
    {
      v58 = v74;
      sub_21D105834(v57, v74, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D10521C(v58, v75, type metadata accessor for TTRRemindersListViewModel.Item);
      v60 = v83[2];
      v59 = v83[3];
      if (v60 >= v59 >> 1)
      {
        v83 = sub_21D211A80((v59 > 1), v60 + 1, 1, v83);
      }

      v8 = v67;
      sub_21D30D8FC(v74, type metadata accessor for TTRRemindersListViewModel.Item);
      v11 = v76;
      sub_21D0CF7E0(v76, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D0CF7E0(v80, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D30D8FC(v78, type metadata accessor for TTRRemindersListViewModel.Item);
      v61 = v83;
      v83[2] = v60 + 1;
      sub_21D105834(v75, v61 + v77 + v60 * v50, type metadata accessor for TTRRemindersListViewModel.Item);
      v31 = v70;
      v28 = v71;
      v32 = v69;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_21D64AF10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_21D0D3954(*(a1 + 80) + OBJC_IVAR____TtC15RemindersUICore19UndoContextProvider_undoContext, &v10 - v5, &qword_27CE59370, &unk_21DC0B390);
  v7 = type metadata accessor for TTRRemindersListUndoContext(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE59370, &unk_21DC0B390);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  else
  {
    *(&v11 + 1) = v7;
    v12 = &protocol witness table for TTRRemindersListUndoContext;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v10);
    sub_21D105834(v6, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListUndoContext);
  }

  sub_21D643B9C(a2, 0, 1, 0, 0, &v10);
  return sub_21D0CF7E0(&v10, &unk_27CE60D80, &unk_21DC093F0);
}

double sub_21D64B09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  sub_21D0D3954(*(v5 + 80) + OBJC_IVAR____TtC15RemindersUICore19UndoContextProvider_undoContext, &v18 - v12, &qword_27CE59370, &unk_21DC0B390);
  v14 = type metadata accessor for TTRRemindersListUndoContext(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    sub_21D0CF7E0(v13, &qword_27CE59370, &unk_21DC0B390);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
  }

  else
  {
    *(&v19 + 1) = v14;
    v20 = &protocol witness table for TTRRemindersListUndoContext;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
    sub_21D105834(v13, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListUndoContext);
  }

  v16 = sub_21D643F10(a1, a2, a3, a4, a5, &v18);
  sub_21D0CF7E0(&v18, &unk_27CE60D80, &unk_21DC093F0);
  *&v18 = 1;
  sub_21D897284(&v18, v16);

  return result;
}

uint64_t sub_21D64B26C()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_21D649510(v2, v3);
}

uint64_t sub_21D64B2D0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21D649784(a1, a2, v6);
}

BOOL sub_21D64B378(uint64_t a1)
{
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
  MEMORY[0x28223BE20](v96);
  v97 = v92 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F590, &qword_21DC207B0);
  MEMORY[0x28223BE20](v3 - 8);
  v100 = v92 - v4;
  v95 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  MEMORY[0x28223BE20](v95);
  v106 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for TTRRemindersListReminderCreationLocation(0);
  MEMORY[0x28223BE20](v102);
  v103 = v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F598, &qword_21DC207B8);
  MEMORY[0x28223BE20](v7 - 8);
  v108 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v112 = v92 - v10;
  v98 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v98);
  v99 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
  v101 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v92 - v14;
  v16 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v16 - 8);
  v94 = v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v92 - v19;
  MEMORY[0x28223BE20](v21);
  v111 = v92 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v110 = v92 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = v92 - v29;
  v31 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v104 = (v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v36 = v92 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = v92 - v38;
  v109 = a1;
  TTRRemindersListTreeViewModel.primarySectionItem.getter(v30);
  v40 = v31;
  v41 = *(v32 + 48);
  if (v41(v30, 1, v40) == 1)
  {
    sub_21D0CF7E0(v30, &unk_27CE5CD80, &qword_21DC0CE80);
    return 0;
  }

  sub_21D105834(v30, v39, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D10521C(v39, v36, type metadata accessor for TTRRemindersListViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D30D8FC(v39, type metadata accessor for TTRRemindersListViewModel.Item);
    v49 = v36;
    v50 = type metadata accessor for TTRRemindersListViewModel.Item;
LABEL_24:
    sub_21D30D8FC(v49, v50);
    return 0;
  }

  sub_21D105834(v36, v20, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  v43 = v20;
  v44 = v111;
  sub_21D105834(v43, v111, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  v93 = v39;
  sub_21D10521C(v39, v15, type metadata accessor for TTRRemindersListViewModel.Item);
  (*(v32 + 56))(v15, 0, 1, v40);
  v45 = v107;
  swift_storeEnumTagMultiPayload();
  v46 = v110;
  TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(at:)(v15, v110);
  sub_21D0CF7E0(v15, &qword_27CE5A3A0, qword_21DC0F3A0);
  sub_21D0D3954(v46, v25, &unk_27CE5CD80, &qword_21DC0CE80);
  v92[1] = v40;
  if (v41(v25, 1, v40) == 1)
  {
    sub_21D0CF7E0(v25, &unk_27CE5CD80, &qword_21DC0CE80);
    v47 = v112;
    v48 = v108;
    goto LABEL_11;
  }

  v51 = v99;
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v99);
  sub_21D30D8FC(v25, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v47 = v112;
  v48 = v108;
  if (EnumCaseMultiPayload <= 1)
  {
    sub_21D30D8FC(v51, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_21D0CF7E0(v46, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D30D8FC(v44, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D30D8FC(v93, type metadata accessor for TTRRemindersListViewModel.Item);
    v50 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem;
    v49 = v51;
    goto LABEL_24;
  }

LABEL_11:
  v53 = v103;
  sub_21D10521C(v44, v103, type metadata accessor for TTRRemindersListViewModel.SectionID);
  swift_storeEnumTagMultiPayload();
  TTRRemindersListTreeViewModel.resolve(_:)(v53, v47);
  sub_21D30D8FC(v53, type metadata accessor for TTRRemindersListReminderCreationLocation);
  sub_21D0D3954(v47, v48, &qword_27CE5F598, &qword_21DC207B8);
  if ((*(v101 + 48))(v48, 1, v45) == 1)
  {
    sub_21D0CF7E0(v48, &qword_27CE5F598, &qword_21DC207B8);
    if (qword_27CE56B10 != -1)
    {
      swift_once();
    }

    v54 = sub_21DBF84BC();
    __swift_project_value_buffer(v54, qword_27CE5F540);
    v55 = v94;
    sub_21D10521C(v44, v94, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v56 = sub_21DBF84AC();
    v57 = sub_21DBFAEBC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v113 = v59;
      *v58 = 136315138;
      v60 = TTRRemindersListViewModel.SectionID.description.getter();
      v61 = v55;
      v62 = v44;
      v64 = v63;
      sub_21D30D8FC(v61, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v65 = sub_21D0CDFB4(v60, v64, &v113);

      *(v58 + 4) = v65;
      _os_log_impl(&dword_21D0C9000, v56, v57, "TTRSECreateRemindersViewModelSource: unable to resolve ReminderCreationLocation endOfSection for id %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x223D46520](v59, -1, -1);
      MEMORY[0x223D46520](v58, -1, -1);

      sub_21D0CF7E0(v47, &qword_27CE5F598, &qword_21DC207B8);
      sub_21D0CF7E0(v46, &unk_27CE5CD80, &qword_21DC0CE80);
      v66 = v62;
    }

    else
    {

      sub_21D30D8FC(v55, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      sub_21D0CF7E0(v47, &qword_27CE5F598, &qword_21DC207B8);
      sub_21D0CF7E0(v46, &unk_27CE5CD80, &qword_21DC0CE80);
      v66 = v44;
    }

    sub_21D30D8FC(v66, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v50 = type metadata accessor for TTRRemindersListViewModel.Item;
    v49 = v93;
    goto LABEL_24;
  }

  v67 = v105;
  sub_21D0D523C(v48, v105, &qword_27CE5A3A0, qword_21DC0F3A0);
  v68 = [objc_opt_self() newObjectID];
  v69 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v70 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v71 = v104;
  (*(*(v70 - 8) + 56))(v104 + v69, 1, 1, v70);
  *v71 = v68;
  swift_storeEnumTagMultiPayload();
  v72 = v95;
  v73 = *(v95 + 20);
  v74 = v106;
  sub_21D10521C(v71, v106 + v73, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D3954(v67, v74, &qword_27CE5A3A0, qword_21DC0F3A0);
  *(v74 + *(v72 + 24)) = 0;
  v75 = v74 + v73;
  v76 = v97;
  sub_21D10521C(v75, v97, type metadata accessor for TTRRemindersListViewModel.Item);
  v77 = v96;
  sub_21D0D3954(v74, v76 + *(v96 + 56), &qword_27CE5A3A0, qword_21DC0F3A0);
  v78 = v76 + *(v77 + 52);
  *v78 = 0;
  *(v78 + 8) = 0;
  *(v78 + 16) = 1;
  v79 = v68;
  v80 = v100;
  sub_21D271278(v76, v100);
  sub_21D0CF7E0(v76, &qword_27CE5CDA0, &unk_21DC09B90);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
  v82 = *(*(v81 - 8) + 48);
  if (v82(v80, 1, v81) == 1)
  {
    v83 = v110;
    if (qword_27CE56B10 != -1)
    {
      swift_once();
    }

    v84 = sub_21DBF84BC();
    __swift_project_value_buffer(v84, qword_27CE5F540);
    v85 = sub_21DBF84AC();
    v86 = sub_21DBFAEBC();
    v87 = os_log_type_enabled(v85, v86);
    v88 = v112;
    if (v87)
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_21D0C9000, v85, v86, "TTRSECreateRemindersViewModelSource: failed to insert placeholderReminder", v89, 2u);
      v90 = v89;
      v80 = v100;
      MEMORY[0x223D46520](v90, -1, -1);
    }
  }

  else
  {
    v85 = v79;
    v83 = v110;
    v88 = v112;
  }

  sub_21D30D8FC(v106, type metadata accessor for TTRRemindersListUncommittedReminder);
  sub_21D30D8FC(v104, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(v105, &qword_27CE5A3A0, qword_21DC0F3A0);
  sub_21D0CF7E0(v88, &qword_27CE5F598, &qword_21DC207B8);
  sub_21D0CF7E0(v83, &unk_27CE5CD80, &qword_21DC0CE80);
  sub_21D30D8FC(v111, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  sub_21D30D8FC(v93, type metadata accessor for TTRRemindersListViewModel.Item);
  v91 = v82(v80, 1, v81) != 1;
  sub_21D0CF7E0(v80, &qword_27CE5F590, &qword_21DC207B0);
  return v91;
}

uint64_t sub_21D64C18C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a4;
  v48 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F588, &unk_21DC207A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - v12;
  updated = type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext(0);
  v45 = *(updated - 8);
  v46 = updated;
  MEMORY[0x28223BE20](updated);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 160);
  if (v17)
  {
    v18 = *(a1 + 160);
  }

  else
  {
    v18 = sub_21D641CD4(a1);
  }

  v19 = *a3;
  sub_21DBF8E0C();

  sub_21D641EA8(v19, v18);

  if (a5 != 1)
  {
    v20 = *(v18 + 32);
    v21 = *(v18 + 40);
    v44 = v13;
    v22 = a1;
    v23 = v16;
    v24 = a7;
    v26 = *(v18 + 48);
    v25 = *(v18 + 56);
    v27 = v47;
    v28 = v48;
    *(v18 + 32) = v47;
    *(v18 + 40) = a5;
    *(v18 + 48) = v28;
    *(v18 + 56) = v24;
    sub_21D24A7C4(v27, a5, v28, v24);
    sub_21DABA780(v20, v21, v26, v25);
    v16 = v23;
    a1 = v22;
    v13 = v44;
    sub_21D24A814(v20, v21);
  }

  if (v17)
  {
  }

  else
  {
    if (*(a1 + 72))
    {
      if (qword_27CE56B10 != -1)
      {
        swift_once();
      }

      v30 = sub_21DBF84BC();
      __swift_project_value_buffer(v30, qword_27CE5F540);
      v31 = sub_21DBF84AC();
      v32 = sub_21DBFAE9C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_21D0C9000, v31, v32, "TTRSECreateRemindersViewModelSource: not adding placeholder cell", v33, 2u);
        MEMORY[0x223D46520](v33, -1, -1);
      }
    }

    else
    {
      v34 = *(v18 + 16);
      v35 = *(v34 + 104);
      v36 = *(v34 + 112);

      v37 = sub_21D25E9D8(v35, v36);

      LOBYTE(v34) = sub_21D64B378(v37);
      *(v18 + 16) = v37;

      *(v18 + 24) = (*(v18 + 24) | v34) & 1;
      v38 = *(v18 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
      if (v38)
      {
        v39 = *(v18 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost + 8);

        v38(v18);

        sub_21D0D0E88(v38, v39);
      }

      else
      {
      }
    }

    *(a1 + 160) = 0;

    sub_21DABA628(v13);
    if ((*(v45 + 48))(v13, 1, v46) == 1)
    {

      return sub_21D0CF7E0(v13, &qword_27CE5F588, &unk_21DC207A0);
    }

    else
    {
      sub_21D105834(v13, v16, type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v41 = Strong;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v42 = *(v41 + 24);
          ObjectType = swift_getObjectType();
          (*(v42 + 8))(v41, v16, ObjectType, v42);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return sub_21D30D8FC(v16, type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext);
    }
  }
}

uint64_t sub_21D64C634(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F588, &unk_21DC207A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  updated = type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext(0);
  v12 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v32 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 160);
  if (v14)
  {
    v15 = *(a1 + 160);
  }

  else
  {
    v15 = sub_21D641CD4(a1);
  }

  sub_21DBF8E0C();

  sub_21DABAC2C(v15, a2, a3, a4);

  if (v14)
  {
  }

  else
  {
    if (*(a1 + 72))
    {
      if (qword_27CE56B10 != -1)
      {
        swift_once();
      }

      v17 = sub_21DBF84BC();
      __swift_project_value_buffer(v17, qword_27CE5F540);
      v18 = sub_21DBF84AC();
      v19 = sub_21DBFAE9C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_21D0C9000, v18, v19, "TTRSECreateRemindersViewModelSource: not adding placeholder cell", v20, 2u);
        MEMORY[0x223D46520](v20, -1, -1);
      }
    }

    else
    {
      v21 = *(v15 + 16);
      v22 = *(v21 + 104);
      v23 = *(v21 + 112);

      v24 = sub_21D25E9D8(v22, v23);

      LOBYTE(v21) = sub_21D64B378(v24);
      *(v15 + 16) = v24;

      *(v15 + 24) = (*(v15 + 24) | v21) & 1;
      v25 = *(v15 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
      if (v25)
      {
        v26 = *(v15 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost + 8);

        v25(v15);

        sub_21D0D0E88(v25, v26);
      }

      else
      {
      }
    }

    *(a1 + 160) = 0;

    sub_21DABA628(v10);
    if ((*(v12 + 48))(v10, 1, updated) == 1)
    {

      return sub_21D0CF7E0(v10, &qword_27CE5F588, &unk_21DC207A0);
    }

    else
    {
      v27 = v32;
      sub_21D105834(v10, v32, type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v29 = Strong;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v30 = *(v29 + 24);
          ObjectType = swift_getObjectType();
          (*(v30 + 8))(v29, v27, ObjectType, v30);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return sub_21D30D8FC(v27, type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext);
    }
  }
}

double sub_21D64CAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    return sub_21D24A7C4(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_21D64CAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a3;
  v49 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F588, &unk_21DC207A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  updated = type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext(0);
  v45 = *(updated - 8);
  v46 = updated;
  MEMORY[0x28223BE20](updated);
  v47 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 160);
  if (v15)
  {
    v16 = *(a1 + 160);
  }

  else
  {
    v16 = sub_21D641CD4(a1);
  }

  *(v16 + 16) = a2;
  swift_retain_n();

  *(v16 + 24) = 1;
  v17 = v16 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost;
  v18 = *(v16 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
  if (v18)
  {
    v19 = *(v17 + 8);

    v18(v16);

    sub_21D0D0E88(v18, v19);
    if (a4 == 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a4 != 1)
  {
LABEL_6:
    v20 = a4;
    v21 = *(v16 + 32);
    v22 = *(v16 + 40);
    v44 = v12;
    v23 = a6;
    v25 = *(v16 + 48);
    v24 = *(v16 + 56);
    v26 = v48;
    v27 = v49;
    *(v16 + 32) = v48;
    *(v16 + 40) = v20;
    *(v16 + 48) = v27;
    *(v16 + 56) = v23;
    sub_21D24A7C4(v26, v20, v27, v23);
    sub_21DABA780(v21, v22, v25, v24);
    v12 = v44;
    sub_21D24A814(v21, v22);
  }

LABEL_7:
  if (v15)
  {
  }

  else
  {
    if (*(a1 + 72))
    {
      if (qword_27CE56B10 != -1)
      {
        swift_once();
      }

      v29 = sub_21DBF84BC();
      __swift_project_value_buffer(v29, qword_27CE5F540);
      v30 = sub_21DBF84AC();
      v31 = sub_21DBFAE9C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_21D0C9000, v30, v31, "TTRSECreateRemindersViewModelSource: not adding placeholder cell", v32, 2u);
        MEMORY[0x223D46520](v32, -1, -1);
      }
    }

    else
    {
      v33 = *(v16 + 16);
      v34 = *(v33 + 104);
      v35 = *(v33 + 112);

      v36 = sub_21D25E9D8(v34, v35);

      LOBYTE(v33) = sub_21D64B378(v36);
      *(v16 + 16) = v36;

      *(v16 + 24) = (*(v16 + 24) | v33) & 1;
      v37 = *v17;
      if (*v17)
      {
        v38 = *(v17 + 8);

        v37(v16);

        sub_21D0D0E88(v37, v38);
      }

      else
      {
      }
    }

    *(a1 + 160) = 0;

    sub_21DABA628(v12);
    if ((*(v45 + 48))(v12, 1, v46) == 1)
    {

      return sub_21D0CF7E0(v12, &qword_27CE5F588, &unk_21DC207A0);
    }

    else
    {
      sub_21D105834(v12, v47, type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v40 = Strong;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v41 = *(v40 + 24);
          ObjectType = swift_getObjectType();
          (*(v41 + 8))(v40, v47, ObjectType, v41);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return sub_21D30D8FC(v47, type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext);
    }
  }
}

uint64_t sub_21D64CFBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F588, &unk_21DC207A0);
  MEMORY[0x28223BE20](v12 - 8);
  v44 = &v41 - v13;
  updated = type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext(0);
  v42 = *(updated - 8);
  v43 = updated;
  MEMORY[0x28223BE20](updated);
  v45 = a1;
  v46 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[20];
  if (v16)
  {
    v17 = a1[20];
  }

  else
  {
    v17 = sub_21D641CD4(a1);
  }

  sub_21D642814(a3, 0, v17);
  v18 = *(v17 + 32);
  v19 = *(v17 + 40);
  v21 = *(v17 + 48);
  v20 = *(v17 + 56);
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  v22 = v47;
  *(v17 + 48) = a6;
  *(v17 + 56) = v22;
  sub_21D24A7C4(a4, a5, a6, v22);
  sub_21DABA780(v18, v19, v21, v20);
  sub_21D24A814(v18, v19);
  if (v16)
  {
  }

  else
  {
    v24 = v45;
    if (v45[9])
    {
      v25 = v46;
      if (qword_27CE56B10 != -1)
      {
        swift_once();
      }

      v26 = sub_21DBF84BC();
      __swift_project_value_buffer(v26, qword_27CE5F540);
      v27 = sub_21DBF84AC();
      v28 = sub_21DBFAE9C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_21D0C9000, v27, v28, "TTRSECreateRemindersViewModelSource: not adding placeholder cell", v29, 2u);
        MEMORY[0x223D46520](v29, -1, -1);
      }
    }

    else
    {
      v30 = *(v17 + 16);
      v31 = *(v30 + 104);
      v32 = *(v30 + 112);

      v33 = sub_21D25E9D8(v31, v32);

      LOBYTE(v30) = sub_21D64B378(v33);
      *(v17 + 16) = v33;

      *(v17 + 24) = (*(v17 + 24) | v30) & 1;
      v34 = *(v17 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
      v25 = v46;
      if (v34)
      {
        v35 = *(v17 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost + 8);

        v34(v17);

        sub_21D0D0E88(v34, v35);
      }

      else
      {
      }
    }

    v24[20] = 0;

    v36 = v44;
    sub_21DABA628(v44);
    if ((*(v42 + 48))(v36, 1, v43) == 1)
    {

      return sub_21D0CF7E0(v36, &qword_27CE5F588, &unk_21DC207A0);
    }

    else
    {
      sub_21D105834(v36, v25, type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v38 = Strong;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v39 = *(v38 + 24);
          ObjectType = swift_getObjectType();
          (*(v39 + 8))(v38, v25, ObjectType, v39);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return sub_21D30D8FC(v25, type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext);
    }
  }
}

uint64_t sub_21D64D450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F588, &unk_21DC207A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  updated = type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext(0);
  v10 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 160);
  if (v13)
  {
    v14 = *(a1 + 160);
  }

  else
  {
    v14 = sub_21D641CD4(a1);
  }

  sub_21D64A4DC(v14, a2, a3);
  if (v13)
  {
  }

  else
  {
    if (*(a1 + 72))
    {
      if (qword_27CE56B10 != -1)
      {
        swift_once();
      }

      v16 = sub_21DBF84BC();
      __swift_project_value_buffer(v16, qword_27CE5F540);
      v17 = sub_21DBF84AC();
      v18 = sub_21DBFAE9C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_21D0C9000, v17, v18, "TTRSECreateRemindersViewModelSource: not adding placeholder cell", v19, 2u);
        MEMORY[0x223D46520](v19, -1, -1);
      }
    }

    else
    {
      v20 = *(v14 + 16);
      v21 = *(v20 + 104);
      v22 = *(v20 + 112);

      v23 = sub_21D25E9D8(v21, v22);

      LOBYTE(v20) = sub_21D64B378(v23);
      *(v14 + 16) = v23;

      *(v14 + 24) = (*(v14 + 24) | v20) & 1;
      v24 = *(v14 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
      if (v24)
      {
        v25 = *(v14 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost + 8);

        v24(v14);

        sub_21D0D0E88(v24, v25);
      }

      else
      {
      }
    }

    *(a1 + 160) = 0;

    sub_21DABA628(v8);
    if ((*(v10 + 48))(v8, 1, updated) == 1)
    {

      return sub_21D0CF7E0(v8, &qword_27CE5F588, &unk_21DC207A0);
    }

    else
    {
      sub_21D105834(v8, v12, type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v27 = Strong;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v28 = *(v27 + 24);
          ObjectType = swift_getObjectType();
          (*(v28 + 8))(v27, v12, ObjectType, v28);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return sub_21D30D8FC(v12, type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext);
    }
  }
}

uint64_t sub_21D64D878(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F588, &unk_21DC207A0);
  MEMORY[0x28223BE20](v10 - 8);
  v41 = &v39 - v11;
  updated = type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext(0);
  v39 = *(updated - 8);
  v40 = updated;
  MEMORY[0x28223BE20](updated);
  v14 = a1[20];
  v42 = a1;
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = sub_21D641CD4(a1);
  }

  v17 = *(v15 + 32);
  v16 = *(v15 + 40);
  v19 = *(v15 + 48);
  v18 = *(v15 + 56);
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;

  sub_21D24A7C4(a2, a3, a4, a5);
  sub_21DABA780(v17, v16, v19, v18);
  sub_21D24A814(v17, v16);
  if (v14)
  {
  }

  else
  {
    v21 = v42;
    if (v42[9])
    {
      if (qword_27CE56B10 != -1)
      {
        swift_once();
      }

      v22 = sub_21DBF84BC();
      __swift_project_value_buffer(v22, qword_27CE5F540);
      v23 = sub_21DBF84AC();
      v24 = sub_21DBFAE9C();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v43;
      if (v25)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_21D0C9000, v23, v24, "TTRSECreateRemindersViewModelSource: not adding placeholder cell", v27, 2u);
        MEMORY[0x223D46520](v27, -1, -1);
      }
    }

    else
    {
      v28 = *(v15 + 16);
      v29 = *(v28 + 104);
      v30 = *(v28 + 112);

      v31 = sub_21D25E9D8(v29, v30);

      LOBYTE(v29) = sub_21D64B378(v31);
      *(v15 + 16) = v31;

      *(v15 + 24) = (*(v15 + 24) | v29) & 1;
      v32 = *(v15 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
      if (v32)
      {
        v33 = *(v15 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost + 8);

        v32(v15);

        sub_21D0D0E88(v32, v33);
      }

      else
      {
      }

      v26 = v43;
    }

    v34 = v41;
    v21[20] = 0;

    sub_21DABA628(v34);
    if ((*(v39 + 48))(v34, 1, v40) == 1)
    {

      return sub_21D0CF7E0(v34, &qword_27CE5F588, &unk_21DC207A0);
    }

    else
    {
      sub_21D105834(v34, v26, type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v36 = Strong;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v37 = *(v36 + 24);
          ObjectType = swift_getObjectType();
          (*(v37 + 8))(v36, v26, ObjectType, v37);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return sub_21D30D8FC(v26, type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext);
    }
  }
}

uint64_t TTRRemoveTemplateLowLevelInteractorCapability.removeTemplate(_:fetchAccount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v5[29] = *v4;
  v6 = sub_21DBFAE0C();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = sub_21DBFA84C();
  v5[34] = sub_21DBFA83C();
  v8 = sub_21DBFA7CC();
  v5[35] = v8;
  v5[36] = v7;

  return MEMORY[0x2822009F8](sub_21D64DEC8, v8, v7);
}

uint64_t sub_21D64DEC8()
{
  v1 = *(v0 + 208);
  *(v0 + 296) = [*(v0 + 200) objectID];
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 304) = v2;
  *v2 = v0;
  v2[1] = sub_21D64DFCC;

  return v4();
}

uint64_t sub_21D64DFCC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v5 = *(v3 + 288);
  v6 = *(v3 + 280);
  if (v1)
  {
    v7 = sub_21D64E760;
  }

  else
  {
    v7 = sub_21D64E110;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21D64E110()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_21DBFAE1C();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D459D8])
  {
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
LABEL_3:
    v5 = *(v0 + 224);
    v6 = *(v0 + 200);
    v7 = sub_21DBFA83C();
    *(v0 + 328) = v7;
    v8 = swift_task_alloc();
    *(v0 + 336) = v8;
    *(v8 + 16) = v5;
    *(v8 + 24) = v6;
    v9 = swift_task_alloc();
    *(v0 + 344) = v9;
    v10 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    *v9 = v0;
    v9[1] = sub_21D64E3A0;
    v11 = MEMORY[0x277D85700];

    return MEMORY[0x2822008A0](v0 + 176, v7, v11, 0xD00000000000001FLL, 0x800000021DC64660, sub_21D64F55C, v8, v10);
  }

  if (v4 == *MEMORY[0x277D459C8])
  {
    v12 = *(v0 + 312);
    v13 = *(v0 + 296);
    v14 = *(v0 + 200);

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    v15 = v14;
    sub_21D9784B4(v12, v0 + 56, 0, 0, v15);

    sub_21D0CF7E0(v0 + 56, &unk_27CE60D80, &unk_21DC093F0);
    **(v0 + 192) = 0;

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    if (v4 == *MEMORY[0x277D459D0])
    {
      goto LABEL_3;
    }

    return sub_21DBFC63C();
  }
}

uint64_t sub_21D64E3A0()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_21D64EA0C;
  }

  else
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_21D64E4D8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D64E4D8()
{
  v23 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 200);

  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  v3 = v2;
  sub_21D9784B4(v1, v0 + 16, 0, 0, v3);

  sub_21D0CF7E0(v0 + 16, &unk_27CE60D80, &unk_21DC093F0);
  if (qword_27CE56B20 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 296);
  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE5F5A8);
  v6 = v4;
  v7 = sub_21DBF84AC();
  v8 = sub_21DBFAEDC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 312);
  v11 = *(v0 + 296);
  if (v9)
  {
    v12 = *(v0 + 232);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v13 = 136315394;
    *(v0 + 160) = v12;
    swift_getMetatypeMetadata();
    v16 = sub_21DBFA1AC();
    v18 = sub_21D0CDFB4(v16, v17, &v22);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v11;
    *v14 = v11;
    v19 = v11;
    _os_log_impl(&dword_21D0C9000, v7, v8, "%s: Deleted template after revoking template's public link {templateObjectID: %@}", v13, 0x16u);
    sub_21D0CF7E0(v14, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223D46520](v15, -1, -1);
    MEMORY[0x223D46520](v13, -1, -1);
  }

  else
  {
  }

  **(v0 + 192) = 0;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_21D64E760()
{
  v25 = v0;

  if (qword_27CE56B20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_27CE5F5A8);
  v4 = v2;
  v5 = v1;
  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAEBC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 320);
  v10 = *(v0 + 296);
  if (v8)
  {
    v11 = *(v0 + 232);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v12 = 136315650;
    *(v0 + 152) = v11;
    swift_getMetatypeMetadata();
    v15 = sub_21DBFA1AC();
    v17 = sub_21D0CDFB4(v15, v16, &v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v10;
    *v13 = v10;
    *(v12 + 22) = 2080;
    swift_getErrorValue();
    v18 = v10;
    v19 = sub_21DBFC75C();
    v21 = sub_21D0CDFB4(v19, v20, &v24);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_21D0C9000, v6, v7, "%s: Failed to fetch account {templateObjectID: %@, error: %s}", v12, 0x20u);
    sub_21D0CF7E0(v13, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v14, -1, -1);
    MEMORY[0x223D46520](v12, -1, -1);
  }

  else
  {
  }

  **(v0 + 192) = 1;

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_21D64EA0C()
{
  v26 = v0;

  if (qword_27CE56B20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = *(v0 + 296);
  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_27CE5F5A8);
  v4 = v2;
  v5 = v1;
  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAEBC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 352);
  v10 = *(v0 + 296);
  if (v8)
  {
    v11 = *(v0 + 232);
    v24 = *(v0 + 312);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 136315650;
    *(v0 + 144) = v11;
    swift_getMetatypeMetadata();
    v15 = sub_21DBFA1AC();
    v17 = sub_21D0CDFB4(v15, v16, &v25);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v10;
    *v13 = v10;
    *(v12 + 22) = 2080;
    swift_getErrorValue();
    v18 = v10;
    v19 = sub_21DBFC75C();
    v21 = sub_21D0CDFB4(v19, v20, &v25);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_21D0C9000, v6, v7, "%s: Failed to delete template due to failure to revoke template's public link {templateObjectID: %@, error: %s}", v12, 0x20u);
    sub_21D0CF7E0(v13, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v14, -1, -1);
    MEMORY[0x223D46520](v12, -1, -1);
  }

  else
  {
  }

  **(v0 + 192) = 2;

  v22 = *(v0 + 8);

  return v22();
}

uint64_t TTRRemoveTemplateLowLevelInteractorCapability.revokePublicLink(of:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = [a1 store];
  v9 = [a1 objectID];
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v10 = sub_21DBFB12C();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = v7;
  v12 = v9;
  sub_21D0D0E78(a2, a3);
  sub_21DBFB6CC();
}

uint64_t sub_21D64EE24()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5F5A8);
  v1 = __swift_project_value_buffer(v0, qword_27CE5F5A8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRTemplatesListTemplateDeletionResult.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D64EF74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3E8, &unk_21DC20930);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  TTRRemoveTemplateLowLevelInteractorCapability.revokePublicLink(of:completion:)(a3, sub_21D64F758, v11);
}

uint64_t sub_21D64F0C4(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3E8, &unk_21DC20930);
    return sub_21DBFA7DC();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3E8, &unk_21DC20930);
    return sub_21DBFA7EC();
  }
}

void sub_21D64F144(void *a1, char a2, void *a3, void (*a4)(void *, void), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (qword_27CE56B20 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE5F5A8);
    sub_21D64F74C(a1);
    v11 = a3;
    v12 = sub_21DBF84AC();
    v13 = sub_21DBFAEBC();

    sub_21D3A229C(a1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      v37 = a6;
      *v14 = 136315650;
      swift_getMetatypeMetadata();
      v15 = sub_21DBFA1AC();
      v17 = sub_21D0CDFB4(v15, v16, &v36);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v11;
      *v33 = v11;
      *(v14 + 22) = 2080;
      swift_getErrorValue();
      v18 = v11;
      v19 = sub_21DBFC75C();
      v21 = sub_21D0CDFB4(v19, v20, &v36);

      *(v14 + 24) = v21;
      _os_log_impl(&dword_21D0C9000, v12, v13, "%s: Failed to revoke template's public link {templateObjectID: %@, error: %s}", v14, 0x20u);
      sub_21D0CF7E0(v33, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v33, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v34, -1, -1);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    if (!a4)
    {
      return;
    }

LABEL_13:
    a4(a1, a2 & 1);
    return;
  }

  if (qword_27CE56B20 != -1)
  {
    swift_once();
  }

  v22 = sub_21DBF84BC();
  __swift_project_value_buffer(v22, qword_27CE5F5A8);
  v23 = a1;
  v24 = sub_21DBF84AC();
  v25 = sub_21DBFAEDC();
  sub_21D3A229C(a1);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = v28;
    v37 = a6;
    *v26 = 136315394;
    swift_getMetatypeMetadata();
    v29 = sub_21DBFA1AC();
    v31 = sub_21D0CDFB4(v29, v30, &v36);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2112;
    *(v26 + 14) = v23;
    *v27 = a1;
    v32 = v23;
    _os_log_impl(&dword_21D0C9000, v24, v25, "%s: Revoked template's public link {templateObjectID: %@}", v26, 0x16u);
    sub_21D0CF7E0(v27, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x223D46520](v28, -1, -1);
    MEMORY[0x223D46520](v26, -1, -1);
  }

  if (a4)
  {
    goto LABEL_13;
  }
}

unint64_t sub_21D64F578()
{
  result = qword_27CE5F5C0;
  if (!qword_27CE5F5C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplatesListTemplateDeletionResult, &type metadata for TTRTemplatesListTemplateDeletionResult, v0, v1);
    atomic_store(result, &qword_27CE5F5C0);
  }

  return result;
}

uint64_t dispatch thunk of TTRRemoveTemplateInteractorCapability.removeTemplate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D1B795C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_21D64F758(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3E8, &unk_21DC20930);

  return sub_21D64F0C4(a1, a2 & 1);
}

double sub_21D64F7E4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [v3 sortingStyle];
  v5 = sub_21DBFA16C();
  v7 = v6;
  if (v5 == sub_21DBFA16C() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_21DBFC64C();

    if ((v10 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59218, &unk_21DC0AFE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21DC0AFB0;
      *(inited + 32) = 0x657079547473696CLL;
      *(inited + 40) = 0xE800000000000000;
      *(inited + 48) = [v3 smartListType];
      *(inited + 56) = 0x6E6F73616572;
      *(inited + 64) = 0xE600000000000000;
      v13 = sub_21DBFA12C();

      *(inited + 72) = v13;
      *(inited + 80) = 0x6974726F53646C6FLL;
      *(inited + 88) = 0xEF656C797453676ELL;
      *(inited + 96) = [v3 sortingStyle];
      *(inited + 104) = 0x6974726F5377656ELL;
      *(inited + 112) = 0xEF656C797453676ELL;
      *(inited + 120) = a1;
      v14 = a1;
      v15 = sub_21D1777B4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59220, &qword_21DC0E700);
      swift_arrayDestroy();
      sub_21DBF835C();
      MEMORY[0x223D40B00](0xD00000000000001ALL, 0x800000021DC45C80, v15, 0, 1);

      [v3 setSortingStyle_];
    }
  }

  return result;
}

void TTRSmartListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *(v3 + 16);
  v13 = [v12 sectionsContextChangeItem];
  if (v13)
  {
    v14 = v13;
    v15 = v11;
    sub_21DBF560C();
    sub_21D0D8CF0(0, &qword_27CE59840, 0x277D44828);
    sub_21DBF815C();

    (*(v7 + 8))(v10, v6);
    if (a3)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      *(v16 + 24) = v11;
      v17 = v15;
      sub_21DBF8E0C();
      sub_21D182C44(sub_21D6538F8, v16);
    }
  }

  else
  {
    if (qword_27CE56B28 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE5F5C8);

    v25 = sub_21DBF84AC();
    v19 = sub_21DBFAECC();

    if (os_log_type_enabled(v25, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = [v12 objectID];
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&dword_21D0C9000, v25, v19, "Failed to update memberships of reminders in sections because list does not support sections {listID: %@}", v20, 0xCu);
      sub_21D0CF7E0(v21, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v21, -1, -1);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    v23 = v25;
  }
}

id TTRSmartListEditor.addNewSection(with:displayName:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_21DBF619C();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[2];
  v11 = [v10 sectionsContextChangeItem];
  if (v11)
  {
    v12 = v11;
    v35 = v4;
    v13 = [v10 saveRequest];
    v14 = sub_21DBFA12C();
    v36 = [v13 addSmartListSectionWithDisplayName:v14 toSmartListSectionContextChangeItem:v12 smartListSectionObjectID:a1];

    v34 = v12;
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    sub_21DBF62DC();
    sub_21DBF62CC();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8, &qword_21DC0AFC0);
    v16 = &v9[v15[12]];
    v17 = v15[16];
    v18 = &v9[v15[20]];
    v19 = *MEMORY[0x277D44E60];
    v20 = sub_21DBF613C();
    (*(*(v20 - 8) + 104))(v9, v19, v20);
    *v16 = TTRUserDefaults.activitySessionId.getter();
    v16[1] = v21;
    TTRUserDefaults.activitySessionBeginTime.getter(&v9[v17]);
    v37 = sub_21DBFC8EC();
    v38 = v22;
    MEMORY[0x223D42AA0](0x4C5343202D20, 0xE600000000000000);
    v23 = v38;
    *v18 = v37;
    v18[1] = v23;
    (*(v6 + 104))(v9, *MEMORY[0x277D44E98], v5);
    sub_21DBF62BC();

    (*(v6 + 8))(v9, v5);
    v24 = v36;
    v25 = [v36 objectID];
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = v25;
    sub_21D182C44(sub_21D653934, v26);

    return v24;
  }

  else
  {
    if (qword_27CE56B28 != -1)
    {
      swift_once();
    }

    v29 = sub_21DBF84BC();
    __swift_project_value_buffer(v29, qword_27CE5F5C8);
    v30 = sub_21DBF84AC();
    v31 = sub_21DBFAECC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_21D0C9000, v30, v31, "Attempted to set the add a section to a list that does not support it.", v32, 2u);
      MEMORY[0x223D46520](v32, -1, -1);
    }

    return 0;
  }
}

__n128 TTRSmartListEditor.__allocating_init(changeItem:undoContext:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v6;
  *(v4 + 56) = *(a2 + 32);
  *(v4 + 64) = 0;
  return result;
}

void TTRSmartListEditor.edit(filter:)(void *a1)
{
  v3 = [*(v1 + 16) customContext];
  if (!v3)
  {
    if (qword_27CE56B28 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE5F5C8);
    oslog = sub_21DBF84AC();
    v9 = sub_21DBFAECC();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v9, "Attempted to set the badge on a non custom smart list", v10, 2u);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    goto LABEL_16;
  }

  oslog = v3;
  v4 = sub_21DBFB53C();
  if (v4)
  {
    if (a1)
    {
      sub_21DBF801C();
      v5 = v4;
      v6 = a1;
      v7 = sub_21DBFB63C();

      if (v7)
      {

LABEL_16:

        return;
      }
    }
  }

  else if (!a1)
  {
    goto LABEL_16;
  }

  if (qword_27CE56B28 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_27CE5F5C8);
  v12 = a1;
  v13 = v4;
  v14 = sub_21DBF84AC();
  v15 = sub_21DBFAE9C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F5E0, &unk_21DC20940);
    v18 = sub_21DBFBA5C();
    v20 = sub_21D0CDFB4(v18, v19, &v28);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_21DBFBA5C();
    v23 = sub_21D0CDFB4(v21, v22, &v28);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_21D0C9000, v14, v15, "Changing smart list filter {from: %s, to: %s}", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v17, -1, -1);
    MEMORY[0x223D46520](v16, -1, -1);
  }

  v24 = v12;
  sub_21DBFB54C();
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  v26 = v13;
  sub_21D182C44(sub_21D653950, v25);
}

void TTRSmartListEditor.deleteSection(_:)(void *a1)
{
  v3 = [*(v1 + 16) saveRequest];
  v4 = [v3 updateSmartListSection_];

  [v4 removeFromSmartList];
  v5 = [a1 objectID];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = v5;
  sub_21D182C44(sub_21D3A4970, v6);
}

Swift::Void __swiftcall TTRSmartListEditor.updateOrderingOfSections(withSectionIDsOrdering:initialSectionIDsOrdering:)(Swift::OpaquePointer withSectionIDsOrdering, Swift::OpaquePointer_optional initialSectionIDsOrdering)
{
  rawValue = initialSectionIDsOrdering.value._rawValue;
  v5 = *(v2 + 16);
  v6 = [v5 sectionsContextChangeItem];
  if (v6)
  {
    oslog = v6;
    sub_21D0D8CF0(0, &qword_27CE59840, 0x277D44828);
    sub_21DBF80CC();
    if (rawValue)
    {
      v7 = swift_allocObject();
      v7[2]._rawValue = rawValue;
      v7[3]._rawValue = withSectionIDsOrdering._rawValue;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D182C44(sub_21D3A4A4C, v7);
    }
  }

  else
  {
    if (qword_27CE56B28 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE5F5C8);

    oslog = sub_21DBF84AC();
    v9 = sub_21DBFAECC();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = [v5 objectID];
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_21D0C9000, oslog, v9, "Failed to update ordering of sections in smart list because smart list does not support sections {smartListID: %@}", v10, 0xCu);
      sub_21D0CF7E0(v11, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);
    }
  }
}

uint64_t sub_21D6508F8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5F5C8);
  v1 = __swift_project_value_buffer(v0, qword_27CE5F5C8);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

__n128 TTRSmartListEditor.__allocating_init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  result = *a2;
  v8 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 40) = v8;
  *(v6 + 56) = *(a2 + 32);
  *(v6 + 64) = a3;
  return result;
}

uint64_t TTRSmartListEditor.init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  v4 = *(a2 + 16);
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 56) = *(a2 + 32);
  *(v3 + 64) = a3;
  return v3;
}

Swift::Void __swiftcall TTRSmartListEditor.edit(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = [*(v1 + 16) customContext];
  if (v4)
  {
    v20 = v4;
    v5 = [v4 name];
    v6 = sub_21DBFA16C();
    v8 = v7;

    v9 = v6 == countAndFlagsBits && v8 == object;
    if (v9 || (sub_21DBFC64C() & 1) != 0)
    {

      return;
    }

    if (qword_27CE56B28 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_27CE5F5C8);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_21D0CDFB4(v6, v8, &v21);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_21D0CDFB4(countAndFlagsBits, object, &v21);
      _os_log_impl(&dword_21D0C9000, v14, v15, "Changing smart list name {from: %s, to: %s}", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v17, -1, -1);
      MEMORY[0x223D46520](v16, -1, -1);
    }

    v18 = sub_21DBFA12C();
    [v20 setName:v18];

    v19 = swift_allocObject();
    *(v19 + 16) = v6;
    *(v19 + 24) = v8;
    sub_21D182C44(sub_21D65397C, v19);
  }

  else
  {
    if (qword_27CE56B28 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE5F5C8);
    v20 = sub_21DBF84AC();
    v11 = sub_21DBFAECC();
    if (os_log_type_enabled(v20, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21D0C9000, v20, v11, "Attempted to set the badge on a non custom smart list", v12, 2u);
      MEMORY[0x223D46520](v12, -1, -1);
    }
  }
}

void TTRSmartListEditor.edit(color:)(void *a1)
{
  v3 = [*(v1 + 16) customContext];
  if (!v3)
  {
    if (qword_27CE56B28 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE5F5C8);
    oslog = sub_21DBF84AC();
    v9 = sub_21DBFAECC();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v9, "Attempted to set the badge on a non custom smart list", v10, 2u);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    goto LABEL_16;
  }

  oslog = v3;
  v4 = [v3 color];
  if (v4)
  {
    if (a1)
    {
      sub_21D0D8CF0(0, &qword_27CE59200, 0x277D445D0);
      v5 = v4;
      v6 = a1;
      v7 = sub_21DBFB63C();

      if (v7)
      {

LABEL_16:

        return;
      }
    }
  }

  else if (!a1)
  {
    goto LABEL_16;
  }

  if (qword_27CE56B28 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_27CE5F5C8);
  v12 = a1;
  v13 = v4;
  v14 = sub_21DBF84AC();
  v15 = sub_21DBFAE9C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F5E8, &unk_21DC20950);
    v18 = sub_21DBFBA5C();
    v20 = v12;
    v21 = sub_21D0CDFB4(v18, v19, &v28);

    *(v16 + 4) = v21;
    v12 = v20;
    *(v16 + 12) = 2080;
    v22 = sub_21DBFBA5C();
    v24 = sub_21D0CDFB4(v22, v23, &v28);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_21D0C9000, v14, v15, "Changing smart list color {from: %s, to: %s}", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v17, -1, -1);
    MEMORY[0x223D46520](v16, -1, -1);
  }

  [oslog setColor:v12];
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  v26 = v13;
  sub_21D182C44(sub_21D6539A8, v25);
}

Swift::Void __swiftcall TTRSmartListEditor.edit(isPinned:isUndo:)(Swift::Bool isPinned, Swift::Bool isUndo)
{
  v5 = isPinned;
  v53[1] = *MEMORY[0x277D85DE8];
  v6 = *(v2 + 16);
  v7 = [v6 isPinned];
  if (v7 != v5)
  {
    v8 = v7;
    if (qword_27CE56B28 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_27CE5F5C8);

    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAE9C();

    if (os_log_type_enabled(v10, v11))
    {
      v51 = v8;
      v12 = swift_slowAlloc();
      v49 = isUndo;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v53[0] = v14;
      *v12 = 136315394;
      v15 = [v6 smartListType];
      v16 = sub_21DBFA16C();
      v17 = v6;
      v19 = v18;

      v20 = sub_21D0CDFB4(v16, v19, v53);
      v6 = v17;

      *(v12 + 4) = v20;
      *(v12 + 12) = 2112;
      v21 = [v17 objectID];
      *(v12 + 14) = v21;
      *v13 = v21;
      _os_log_impl(&dword_21D0C9000, v10, v11, "Updating smart list isPinned {smartListType: %s, smartListID: %@}", v12, 0x16u);
      sub_21D0CF7E0(v13, &unk_27CE60070, &unk_21DC09550);
      v22 = v13;
      isUndo = v49;
      MEMORY[0x223D46520](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223D46520](v14, -1, -1);
      v23 = v12;
      v8 = v51;
      MEMORY[0x223D46520](v23, -1, -1);
    }

    [v6 setIsPinned_];
    if (!isUndo && !isPinned)
    {
      v24 = [v6 saveRequest];
      v25 = [v24 store];

      v26 = [v6 accountID];
      v53[0] = 0;
      v27 = [v25 fetchAccountWithObjectID:v26 error:v53];

      if (v27)
      {
        v28 = v53[0];
        v29 = [v6 saveRequest];
        v30 = [v29 updateAccount_];

        [v30 insertSmartListChangeItem:v6 afterSmartListChangeItem:0];
      }

      else
      {
        v52 = v8;
        v31 = v53[0];
        v32 = sub_21DBF52DC();

        swift_willThrow();

        v33 = v32;
        v34 = sub_21DBF84AC();
        v35 = sub_21DBFAEBC();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v53[0] = v50;
          *v36 = 136315906;
          v38 = [v6 smartListType];
          v39 = sub_21DBFA16C();
          v41 = v40;

          v42 = sub_21D0CDFB4(v39, v41, v53);

          *(v36 + 4) = v42;
          *(v36 + 12) = 2112;
          v43 = [v6 objectID];
          *(v36 + 14) = v43;
          *v37 = v43;
          *(v36 + 22) = 2112;
          v44 = [v6 accountID];
          *(v36 + 24) = v44;
          v37[1] = v44;
          *(v36 + 32) = 2080;
          swift_getErrorValue();
          v45 = sub_21DBFC75C();
          v47 = sub_21D0CDFB4(v45, v46, v53);

          *(v36 + 34) = v47;
          _os_log_impl(&dword_21D0C9000, v34, v35, "Failed to fetch account of unpinned smart list {smartListType: %s, smartListID: %@, accountID: %@, error: %s}", v36, 0x2Au);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
          swift_arrayDestroy();
          MEMORY[0x223D46520](v37, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x223D46520](v50, -1, -1);
          MEMORY[0x223D46520](v36, -1, -1);
        }

        else
        {
        }

        v8 = v52;
      }
    }

    v48 = swift_allocObject();
    *(v48 + 16) = v8;
    sub_21D182C44(sub_21D6539D4, v48);
  }
}

id TTRSmartListEditor.store.getter()
{
  v1 = [*(v0 + 16) saveRequest];
  v2 = [v1 store];

  return v2;
}

Swift::Void __swiftcall TTRSmartListEditor.edit(badgeEmblem:)(__C::REMListBadgeEmblem badgeEmblem)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithEmblem_];
  TTRSmartListEditor.edit(badge:)(v1);
}

void TTRSmartListEditor.edit(badge:)(void *a1)
{
  v3 = [*(v1 + 16) customContext];
  if (!v3)
  {
    if (qword_27CE56B28 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE5F5C8);
    oslog = sub_21DBF84AC();
    v9 = sub_21DBFAECC();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v9, "Attempted to set the badge on a non custom smart list", v10, 2u);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    goto LABEL_16;
  }

  oslog = v3;
  v4 = [v3 badge];
  if (v4)
  {
    if (a1)
    {
      sub_21D0D8CF0(0, &qword_27CE59210, 0x277D44678);
      v5 = v4;
      v6 = a1;
      v7 = sub_21DBFB63C();

      if (v7)
      {

LABEL_16:

        return;
      }
    }
  }

  else if (!a1)
  {
    goto LABEL_16;
  }

  if (qword_27CE56B28 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_27CE5F5C8);
  v12 = a1;
  v13 = v4;
  v14 = sub_21DBF84AC();
  v15 = sub_21DBFAE9C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59208, &qword_21DC0AFC8);
    v18 = sub_21DBFBA5C();
    v20 = v12;
    v21 = sub_21D0CDFB4(v18, v19, &v28);

    *(v16 + 4) = v21;
    v12 = v20;
    *(v16 + 12) = 2080;
    v22 = sub_21DBFBA5C();
    v24 = sub_21D0CDFB4(v22, v23, &v28);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_21D0C9000, v14, v15, "Changing smart list badge {from: %s, to: %s}", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v17, -1, -1);
    MEMORY[0x223D46520](v16, -1, -1);
  }

  [oslog setBadge:v12];
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  v26 = v13;
  sub_21D182C44(sub_21D653A04, v25);
}

Swift::Void __swiftcall TTRSmartListEditor.edit(badgeEmoji:)(Swift::String badgeEmoji)
{
  v1 = objc_allocWithZone(MEMORY[0x277D44678]);
  v2 = sub_21DBFA12C();
  v3 = [v1 initWithEmoji_];

  TTRSmartListEditor.edit(badge:)(v3);
}

Swift::Void __swiftcall TTRSmartListEditor.edit(showingLargeAttachments:)(Swift::Bool showingLargeAttachments)
{
  v3 = *(v1 + 16);
  if ([v3 showingLargeAttachments] != showingLargeAttachments)
  {
    if (qword_27CE56B28 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5F5C8);

    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAE9C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315394;
      v9 = [v3 showingLargeAttachments];
      v10 = v9 == 0;
      if (v9)
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (v10)
      {
        v12 = 0xE500000000000000;
      }

      else
      {
        v12 = 0xE400000000000000;
      }

      v13 = sub_21D0CDFB4(v11, v12, &v17);

      *(v7 + 4) = v13;
      *(v7 + 12) = 2080;
      if (showingLargeAttachments)
      {
        v14 = 1702195828;
      }

      else
      {
        v14 = 0x65736C6166;
      }

      if (showingLargeAttachments)
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      v16 = sub_21D0CDFB4(v14, v15, &v17);

      *(v7 + 14) = v16;
      _os_log_impl(&dword_21D0C9000, v5, v6, "Changing showing large attachments {from: %s, to: %s}", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v8, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    [v3 setShowingLargeAttachments_];
  }
}

void sub_21D651EFC(uint64_t a1)
{
  v56[4] = *MEMORY[0x277D85DE8];
  v51 = *(v1 + 16);
  v4 = [v51 saveRequest];
  v5 = [v4 store];

  sub_21D198698(a1);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v6 = sub_21DBFA5DC();

  v56[0] = 0;
  v7 = [v5 fetchSmartListSectionsWithObjectIDs:v6 error:v56];

  v8 = v56[0];
  if (v7)
  {
    sub_21D0D8CF0(0, &qword_27CE584A8, 0x277D44818);
    sub_21D183A0C();
    v9 = sub_21DBF9E6C();
    v10 = v8;

    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = sub_21DBFC21C();
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v9 = v11 | 0x8000000000000000;
    }

    else
    {
      v28 = -1 << *(v9 + 32);
      v12 = v9 + 64;
      v13 = ~v28;
      v29 = -v28;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      else
      {
        v30 = -1;
      }

      v14 = v30 & *(v9 + 64);
    }

    v31 = 0;
    v32 = (v13 + 64) >> 6;
    if (v9 < 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v33 = v31;
      v34 = v14;
      v35 = v31;
      if (!v14)
      {
        break;
      }

LABEL_16:
      v36 = (v34 - 1) & v34;
      v37 = (v35 << 9) | (8 * __clz(__rbit64(v34)));
      v38 = *(*(v9 + 56) + v37);
      v39 = *(*(v9 + 48) + v37);
      v40 = v38;
      if (!v39)
      {
LABEL_22:
        sub_21D0CFAF8(v9);
        return;
      }

      while (1)
      {

        v44 = [v51 saveRequest];
        v2 = [v44 updateSmartListSection_];

        [v2 removeFromSmartList];
        v45 = [v40 objectID];
        v53 = v36;
        v46 = swift_allocObject();
        *(v46 + 16) = v45;
        v56[3] = &type metadata for TTRSmartListEditor.ID;
        v52 = v45;
        v47 = [v51 smartListType];
        v48 = [v51 objectID];
        v56[0] = v47;
        v56[1] = v48;
        v49 = sub_21D0D8CF0(0, &qword_280D0C320, 0x277D447F8);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E0, &unk_21DC094F0);
        *&v54 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_21DC08D00;
        sub_21D0CEB98(v56, v50 + 32);
        sub_21D0CF2E8(&v54, (v50 + 64));
        __swift_destroy_boxed_opaque_existential_0(v56);
        sub_21D1C498C(v50, sub_21D3A4B64, v46);

        v31 = v35;
        v14 = v53;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        v41 = sub_21DBFC2DC();
        if (v41)
        {
          v43 = v42;
          *&v54 = v41;
          swift_dynamicCast();
          v39 = v56[0];
          *&v54 = v43;
          swift_dynamicCast();
          v40 = v56[0];
          v35 = v31;
          v36 = v14;
          if (v39)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v35 >= v32)
      {
        goto LABEL_22;
      }

      v34 = *(v12 + 8 * v35);
      ++v33;
      if (v34)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v56[0];
    v2 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56B28 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v16 = sub_21DBF84BC();
  __swift_project_value_buffer(v16, qword_27CE5F5C8);
  sub_21DBF8E0C();
  v17 = v2;
  v18 = sub_21DBF84AC();
  v19 = sub_21DBFAEBC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v56[0] = v21;
    *v20 = 136446466;
    sub_21D183A0C();
    v22 = sub_21DBFAABC();
    v24 = sub_21D0CDFB4(v22, v23, v56);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    swift_getErrorValue();
    v25 = sub_21DBFC75C();
    v27 = sub_21D0CDFB4(v25, v26, v56);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_21D0C9000, v18, v19, "Failed to delete sections {sectionIDs: %{public}s, error: %{public}s}", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v21, -1, -1);
    MEMORY[0x223D46520](v20, -1, -1);
  }

  else
  {
  }
}

void sub_21D652540(uint64_t a1, void *a2)
{
  v3 = [*(*a1 + 16) sectionsContextChangeItem];
  if (v3)
  {
    v6 = v3;
    [v3 undeleteSectionWithID_];
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v5 = a2;
    sub_21D182C44(sub_21D65429C, v4);
  }
}

void sub_21D652610(uint64_t a1, void **a2)
{
  v3 = v2;
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *(v3 + 16);
  v13 = [v12 sectionsContextChangeItem];
  if (v13)
  {
    v14 = v13;
    sub_21DBF560C();
    sub_21D1E44B4(a1, v10);
    (*(v7 + 8))(v10, v6);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = v11;
    v16 = v11;
    sub_21DBF8E0C();
    sub_21D182C44(sub_21D654294, v15);
  }

  else
  {
    if (qword_27CE56B28 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_27CE5F5C8);

    v24 = sub_21DBF84AC();
    v18 = sub_21DBFAECC();

    if (os_log_type_enabled(v24, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = [v12 objectID];
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&dword_21D0C9000, v24, v18, "Failed to update memberships of reminders in sections because list does not support sections {listID: %@}", v19, 0xCu);
      sub_21D0CF7E0(v20, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v20, -1, -1);
      MEMORY[0x223D46520](v19, -1, -1);
    }

    v22 = v24;
  }
}

double sub_21D6528D8(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59330, &qword_21DC0B350);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  sub_21D1D1E74();
  sub_21D183A0C();
  v5 = sub_21DBFA49C();
  v7 = a3;
  TTRSmartListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v5, &v7, a2);

  return result;
}

double sub_21D6529B8(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = a2;
  v4 = a2;
  v5 = sub_21D19ED08(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_21D651EFC(v5);

  return result;
}

uint64_t TTRSmartListEditor.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + 24, &unk_27CE60D80, &unk_21DC093F0);

  return swift_deallocClassInstance();
}

id static TTRSmartListEditor.store(for:)(void *a1)
{
  v1 = [a1 store];

  return v1;
}

__n128 TTRSmartListEditor.__allocating_init(item:saveRequest:undoContext:unitTest_oneShotSyncSaveForUndo:)(void *a1, id a2, uint64_t a3, char a4)
{
  v8 = [a2 updateSmartList_];

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  result = *a3;
  v11 = *(a3 + 16);
  *(v9 + 24) = *a3;
  *(v9 + 40) = v11;
  *(v9 + 56) = *(a3 + 32);
  *(v9 + 64) = a4;
  return result;
}

__n128 sub_21D652BAC@<Q0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v10 = [a1 updateSmartList_];

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  result = *a3;
  v13 = *(a3 + 16);
  *(v11 + 24) = *a3;
  *(v11 + 40) = v13;
  *(v11 + 56) = *(a3 + 32);
  *(v11 + 64) = a4;
  *a5 = v11;
  return result;
}

uint64_t static TTRSmartListEditor.ID.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = sub_21DBFA16C();
  v4 = v3;
  if (v2 == sub_21DBFA16C() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_21DBFC64C();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  return sub_21DBFB63C() & 1;
}

uint64_t TTRSmartListEditor.ID.hash(into:)(uint64_t a1)
{
  sub_21DBFA16C();
  sub_21DBFA27C();

  return sub_21DBFB64C();
}

uint64_t TTRSmartListEditor.ID.hashValue.getter()
{
  sub_21DBFC7DC();
  sub_21DBFA16C();
  sub_21DBFA27C();

  sub_21DBFB64C();
  return sub_21DBFC82C();
}

uint64_t sub_21D652DE4()
{
  sub_21DBFC7DC();
  sub_21DBFA16C();
  sub_21DBFA27C();

  sub_21DBFB64C();
  return sub_21DBFC82C();
}

uint64_t sub_21D652E50(uint64_t a1)
{
  sub_21DBFA16C();
  sub_21DBFA27C();

  return sub_21DBFB64C();
}

uint64_t sub_21D652EA8(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBFA16C();
  sub_21DBFA27C();

  sub_21DBFB64C();
  return sub_21DBFC82C();
}

uint64_t sub_21D652F10(void *a1, uint64_t *a2)
{
  v2 = sub_21DBFA16C();
  v4 = v3;
  if (v2 == sub_21DBFA16C() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_21DBFC64C();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  return sub_21DBFB63C() & 1;
}

id static TTRSmartListEditor.changeItem(with:in:)(uint64_t a1, id a2)
{
  v2 = [a2 _trackedSmartListChangeItemForObjectID_];

  return v2;
}

{
  v2 = [a2 updateSmartList_];

  return v2;
}

id static TTRSmartListEditor.id(for:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 smartListType];
  result = [a1 objectID];
  *a2 = v4;
  a2[1] = result;
  return result;
}

id TTRSmartListEditor.id.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = [v3 smartListType];
  result = [v3 objectID];
  *a1 = v4;
  a1[1] = result;
  return result;
}

id sub_21D653140@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_21D653A30(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_21D65316C(uint64_t a1, id a2)
{
  v2 = [a2 _trackedSmartListChangeItemForObjectID_];

  return v2;
}

id sub_21D6531AC(void *a1, id a2)
{
  v2 = [a2 updateSmartList_];

  return v2;
}

id sub_21D6531EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 smartListType];
  result = [a1 objectID];
  *a2 = v4;
  a2[1] = result;
  return result;
}

id sub_21D65324C@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = [v3 smartListType];
  result = [v3 objectID];
  *a1 = v4;
  a1[1] = result;
  return result;
}

id sub_21D6532B4(id a1)
{
  v2 = v1;
  if (qword_27CE56B28 != -1)
  {
LABEL_27:
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE5F5C8);
  a1 = a1;

  v5 = sub_21DBF84AC();
  LOBYTE(v6) = sub_21DBFAE9C();

  v7 = &off_278331000;
  v8 = &selRef_setQueryFragment_;
  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_7;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v39 = v11;
  *v9 = 138412802;
  v12 = *(v2 + 16);
  v13 = [v12 remObjectID];
  *(v9 + 4) = v13;
  *v10 = v13;
  *(v9 + 12) = 2080;
  [v12 smartListType];
  type metadata accessor for REMSmartListType(0);
  v14 = sub_21DBFA1AC();
  v16 = sub_21D0CDFB4(v14, v15, &v39);

  *(v9 + 14) = v16;
  *(v9 + 22) = 2048;
  v17 = [a1 topLevelElementIDs];
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v18 = sub_21DBFA5EC();

  if (v18 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {

    *(v9 + 24) = i;

    _os_log_impl(&dword_21D0C9000, v5, v6, "Changing manual ordering {smart list: %@, smart list type: %s, top-level elements count: %ld}", v9, 0x20u);
    sub_21D0CF7E0(v10, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223D46520](v11, -1, -1);
    MEMORY[0x223D46520](v9, -1, -1);

    v7 = 0x1FB081000;
    v8 = &selRef_setQueryFragment_;
LABEL_7:
    v20 = [a1 v8[494]];
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v21 = sub_21DBFA5EC();

    if (v21 >> 62)
    {
      v22 = sub_21DBFBD7C();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = [a1 secondaryLevelElementIDsByTopLevelElementID];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858, &unk_21DC09AA0);
    sub_21D183A0C();
    v24 = sub_21DBF9E6C();

    v25 = v24;
    v11 = 0;
    v9 = 0;
    v6 = v25 + 64;
    v26 = 1 << *(v25 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v25 + 64);
    v10 = ((v26 + 63) >> 6);
    while (v28)
    {
LABEL_17:
      v30 = *(*(v25 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v28)))));
      if (v30 >> 62)
      {
        v33 = v25;
        v31 = sub_21DBFBD7C();
        v25 = v33;
        v7 = 0x1FB081000;
      }

      else
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 &= v28 - 1;
      v32 = __OFADD__(v9, v31);
      v9 += v31;
      if (v32)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    while (1)
    {
      v29 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v29 >= v10)
      {
        break;
      }

      v28 = *(v6 + 8 * v29);
      ++v11;
      if (v28)
      {
        v11 = v29;
        goto LABEL_17;
      }
    }

    v32 = __OFADD__(v22, v9);
    v5 = (v22 + v9);
    if (!v32)
    {
      break;
    }

    __break(1u);
LABEL_30:
    ;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59218, &unk_21DC0AFE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D10;
  *(inited + 32) = 0x657079547473696CLL;
  *(inited + 40) = 0xE800000000000000;
  v35 = *(v2 + 16);
  *(inited + 48) = [v35 (v7 + 79)];
  *(inited + 56) = 0x6E6F73616572;
  *(inited + 64) = 0xE600000000000000;
  v36 = sub_21DBFA12C();

  *(inited + 72) = v36;
  *(inited + 80) = 0x657A6953746E6968;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21DBFABEC();
  v37 = sub_21D1777B4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59220, &qword_21DC0E700);
  swift_arrayDestroy();
  sub_21DBF835C();
  MEMORY[0x223D40B00](0xD000000000000022, 0x800000021DC647A0, v37, 0, 1);

  return [v35 setManualOrdering_];
}

void sub_21D6538F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21D652610(v1, &v2);
}

id sub_21D653A30(uint64_t a1, void *a2)
{
  v63 = a2;
  v66 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60D50, &unk_21DC20AB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v61 - v5;
  v7 = sub_21DBFAE6C();
  v62 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = sub_21DBFA16C();
  v14 = v13;
  if (v12 == sub_21DBFA16C() && v14 == v15)
  {

    goto LABEL_8;
  }

  v61 = v9;
  v17 = sub_21DBFC64C();
  v18 = v10;

  if (v17)
  {

LABEL_8:
    v64 = 0;
    v19 = [v63 fetchCustomSmartListWithObjectID:v11 error:&v64];
    if (v19)
    {
      v20 = v19;
      v21 = v64;
      return v20;
    }

    v20 = v64;
    sub_21DBF52DC();

LABEL_22:
    swift_willThrow();
    return v20;
  }

  v22 = sub_21DBFA16C();
  v24 = v23;
  if (v22 == sub_21DBFA16C() && v24 == v25)
  {

    v28 = v2;
    goto LABEL_18;
  }

  v27 = sub_21DBFC64C();

  v28 = v2;
  if (v27)
  {

LABEL_18:
    v29 = v61;
    goto LABEL_19;
  }

  v38 = sub_21DBFA16C();
  v40 = v39;
  v41 = sub_21DBFA16C();
  v29 = v61;
  if (v38 == v41 && v40 == v42)
  {
    goto LABEL_29;
  }

  v43 = sub_21DBFC64C();

  if ((v43 & 1) == 0)
  {
    v44 = sub_21DBFA16C();
    v46 = v45;
    if (v44 == sub_21DBFA16C() && v46 == v47)
    {
      goto LABEL_29;
    }

    v48 = sub_21DBFC64C();

    if (v48)
    {
      goto LABEL_31;
    }

    v49 = sub_21DBFA16C();
    v51 = v50;
    if (v49 == sub_21DBFA16C() && v51 == v52)
    {
LABEL_29:

      goto LABEL_19;
    }

    v53 = sub_21DBFC64C();

    if (v53)
    {
      goto LABEL_31;
    }

    v54 = sub_21DBFA16C();
    v56 = v55;
    if (v54 == sub_21DBFA16C() && v56 == v57)
    {
    }

    else
    {
      v58 = sub_21DBFC64C();

      if (v58)
      {

LABEL_45:
        v59 = objc_opt_self();
        v64 = 0;
        v65 = 0xE000000000000000;
        sub_21DBFBEEC();
        MEMORY[0x223D42AA0](0xD000000000000042, 0x800000021DC64700);
        v60 = sub_21DBFA16C();
        MEMORY[0x223D42AA0](v60);

        MEMORY[0x223D42AA0](125, 0xE100000000000000);
        v20 = v65;
        v34 = sub_21DBFA12C();

        v35 = [v59 invalidParameterErrorWithDescription_];
        goto LABEL_21;
      }

      sub_21DBFA16C();
      sub_21DBFA16C();
    }

    goto LABEL_45;
  }

LABEL_31:

LABEL_19:
  v30 = v18;
  sub_21DBFAE5C();
  v31 = v62;
  if ((*(v62 + 48))(v6, 1, v7) == 1)
  {
    sub_21D0CF7E0(v6, &unk_27CE60D50, &unk_21DC20AB0);
    v32 = objc_opt_self();
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD00000000000004DLL, 0x800000021DC64750);
    v33 = sub_21DBFA16C();
    MEMORY[0x223D42AA0](v33);

    MEMORY[0x223D42AA0](125, 0xE100000000000000);
    v20 = v65;
    v34 = sub_21DBFA12C();

    v35 = [v32 invalidParameterErrorWithDescription_];
LABEL_21:
    v35;

    goto LABEL_22;
  }

  (*(v31 + 32))(v29, v6, v7);
  v20 = v63;
  v37 = sub_21DBFB6FC();
  if (!v28)
  {
    v20 = v37;
  }

  (*(v31 + 8))(v29, v7);
  return v20;
}

unint64_t sub_21D65410C()
{
  result = qword_27CE5F5F0;
  if (!qword_27CE5F5F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRSmartListEditor.ID, &type metadata for TTRSmartListEditor.ID, v0, v1);
    atomic_store(result, &qword_27CE5F5F0);
  }

  return result;
}

unint64_t sub_21D654160(uint64_t a1)
{
  result = sub_21D654188();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_21D654188()
{
  result = qword_27CE5F5F8;
  if (!qword_27CE5F5F8)
  {
    v3 = type metadata accessor for TTRSmartListEditor();
    result = swift_getWitnessTable(protocol conformance descriptor for TTRSmartListEditor, v3, v0, v1);
    atomic_store(result, &qword_27CE5F5F8);
  }

  return result;
}

unint64_t sub_21D654204()
{
  result = qword_27CE5F600;
  if (!qword_27CE5F600)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRSmartListEditor.ID, &type metadata for TTRSmartListEditor.ID, v0, v1);
    atomic_store(result, &qword_27CE5F600);
  }

  return result;
}

uint64_t TTRReminderStandaloneEditingSession.__allocating_init(item:acquirerName:reminderChangeItem:attributeEditor:pendingMoveTargetListValue:setPendingMoveTargetList:sharedPropertiesWrapper:setNeedsDisplayHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = swift_allocObject();
  sub_21DBF56AC();
  sub_21D24BDFC(a1, v19 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_item);
  v20 = (v19 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_acquirerName);
  *v20 = a2;
  v20[1] = a3;
  *(v19 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_reminderChangeItem) = a4;
  sub_21D0D0FD0(a5, v19 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_attributeEditor);
  v21 = (v19 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_pendingMoveTargetListValue);
  *v21 = a6;
  v21[1] = a7;
  v22 = (v19 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setPendingMoveTargetList);
  *v22 = a8;
  v22[1] = a9;
  *(v19 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_sharedPropertiesWrapper) = a10;
  v23 = (v19 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setNeedsDisplayHandler);
  *v23 = a11;
  v23[1] = a12;
  return v19;
}

uint64_t TTRReminderStandaloneEditingSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_id;
  v4 = sub_21DBF56BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRReminderStandaloneEditingSession.acquirerName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_acquirerName);
  sub_21DBF8E0C();
  return v1;
}

void TTRReminderStandaloneEditingSession.pendingMoveTargetList.setter(void *a1)
{
  (*(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setPendingMoveTargetList))();
}

void (*TTRReminderStandaloneEditingSession.pendingMoveTargetList.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = (*(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_pendingMoveTargetListValue))();
  return sub_21D654598;
}

void sub_21D654598(uint64_t a1, char a2)
{
  v2 = *(*(a1 + 8) + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setPendingMoveTargetList);
  v5 = *a1;
  if (a2)
  {
    v3 = v5;
    v2(v5);

    v4 = v3;
  }

  else
  {
    v2(v5);
    v4 = v5;
  }
}

double TTRReminderStandaloneEditingSession.sharedProperties.getter@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *a1 = *(v3 + 16);
  sub_21DBF8E0C();
  return result;
}

double sub_21D654678(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *(v3 + 16) = v2;
  sub_21DBF8E0C();

  return result;
}

double TTRReminderStandaloneEditingSession.sharedProperties.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

void (*TTRReminderStandaloneEditingSession.sharedProperties.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_sharedPropertiesWrapper);
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 16);
  sub_21DBF8E0C();
  return sub_21D6547D8;
}

void sub_21D6547D8(uint64_t a1, char a2)
{
  v2 = *a1;
  *(*(*a1 + 32) + 16) = *(*a1 + 24);
  if (a2)
  {
    sub_21DBF8E0C();
  }

  free(v2);
}

id TTRReminderStandaloneEditingSession.reminder.getter@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_reminderChangeItem);
  a1[3] = sub_21D306CD8();
  a1[4] = &protocol witness table for REMReminderChangeItem;
  *a1 = v4;

  return v4;
}

uint64_t TTRReminderStandaloneEditingSession.init(item:acquirerName:reminderChangeItem:attributeEditor:pendingMoveTargetListValue:setPendingMoveTargetList:sharedPropertiesWrapper:setNeedsDisplayHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_21DBF56AC();
  sub_21D24BDFC(a1, v12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_item);
  v20 = (v12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_acquirerName);
  *v20 = a2;
  v20[1] = a3;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_reminderChangeItem) = a4;
  sub_21D0D0FD0(a5, v12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_attributeEditor);
  v21 = (v12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_pendingMoveTargetListValue);
  *v21 = a6;
  v21[1] = a7;
  v22 = (v12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setPendingMoveTargetList);
  *v22 = a8;
  v22[1] = a9;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_sharedPropertiesWrapper) = a10;
  v23 = (v12 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setNeedsDisplayHandler);
  *v23 = a11;
  v23[1] = a12;
  return v12;
}

Swift::Void __swiftcall TTRReminderStandaloneEditingSession.setNeedsDisplay(_:)(RemindersUICore::TTRRemindersListEditingSessionDisplayTargets a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setNeedsDisplayHandler);
  v3 = *a1.rawValue;
  v2(&v3);
}

Swift::Void __swiftcall TTRReminderStandaloneEditingSession.finish(options:)(RemindersUICore::TTRRemindersListEditingSessionFinishingOption options)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setNeedsDisplayHandler);
  v3 = 1;
  v2(&v3);
}

uint64_t TTRReminderStandaloneEditingSession.finishAndForceSave()(_BYTE *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setNeedsDisplayHandler);
  v5 = 1;
  v3(&v5);
  *a1 = 0;
  return 0;
}

uint64_t TTRReminderStandaloneEditingSession.finishAndForceSaveAsync()(_BYTE *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setNeedsDisplayHandler);
  v5 = 1;
  v3(&v5);
  *a1 = 0;
  return 0;
}

uint64_t TTRReminderStandaloneEditingSession.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_id;
  v2 = sub_21DBF56BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21D24B040(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_item);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_attributeEditor));

  return v0;
}

uint64_t TTRReminderStandaloneEditingSession.__deallocating_deinit()
{
  TTRReminderStandaloneEditingSession.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D654C44@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_id;
  v4 = sub_21DBF56BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21D654CD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_acquirerName);
  sub_21DBF8E0C();
  return v1;
}

id sub_21D654D0C@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_reminderChangeItem);
  a1[3] = sub_21D306CD8();
  a1[4] = &protocol witness table for REMReminderChangeItem;
  *a1 = v4;

  return v4;
}

void sub_21D654DB4(void *a1)
{
  (*(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setPendingMoveTargetList))();
}

void (*sub_21D654E08(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRReminderStandaloneEditingSession.pendingMoveTargetList.modify(v2);
  return sub_21D4C30A8;
}

double sub_21D654E8C@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *a1 = *(v3 + 16);
  sub_21DBF8E0C();
  return result;
}

double sub_21D654EE0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

void (*sub_21D654F34(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRReminderStandaloneEditingSession.sharedProperties.modify(v2);
  return sub_21D4C3D30;
}

uint64_t sub_21D654FA4(uint64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setNeedsDisplayHandler);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_21D654FEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setNeedsDisplayHandler);
  v3 = 1;
  return v1(&v3);
}

uint64_t sub_21D655034(_BYTE *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setNeedsDisplayHandler);
  v5 = 1;
  v3(&v5);
  *a1 = 0;
  return 0;
}

uint64_t sub_21D655088(_BYTE *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setNeedsDisplayHandler);
  v5 = 1;
  v3(&v5);
  *a1 = 0;
  return 0;
}

uint64_t type metadata accessor for TTRReminderStandaloneEditingSession(uint64_t a1)
{
  result = qword_27CE5F628;
  if (!qword_27CE5F628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D655134(uint64_t a1)
{
  result = sub_21DBF56BC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.Item(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_21D655280()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5F638);
  v1 = __swift_project_value_buffer(v0, qword_27CE5F638);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D655398(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D655404(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

uint64_t sub_21D6554A4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0, &unk_21DC15DC0);
  MEMORY[0x28223BE20](v3);
  v5 = &v16[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298, &qword_21DC196B0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  v9 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = *(*v10 + 96);
  swift_beginAccess();
  sub_21D0D3954(v10 + v11, v8, &qword_27CE5C298, &qword_21DC196B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE5C298, &qword_21DC196B0);
LABEL_4:
    v12 = sub_21DBF773C();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  sub_21D6556F0(v8, v5);

  v14 = sub_21DBF773C();
  v15 = *(v14 - 8);
  (*(v15 + 32))(a1, v5, v14);
  return (*(v15 + 56))(a1, 0, 1, v14);
}

uint64_t sub_21D6556F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0, &unk_21DC15DC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTRShowRecentlyDeletedDataModelSource.__allocating_init(store:account:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_dataViewMonitor) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_store) = a1;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_account) = a2;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  v7 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v8 = sub_21DBF70DC();
  (*(*(v8 - 8) + 32))(v6 + v7, a3, v8);
  *(v6 + 16) = 0;
  return v6;
}

uint64_t TTRShowRecentlyDeletedDataModelSource.init(store:account:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_dataViewMonitor) = 0;
  *(v3 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_store) = a1;
  *(v3 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_account) = a2;
  *(v3 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  v7 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v8 = sub_21DBF70DC();
  (*(*(v8 - 8) + 32))(v3 + v7, a3, v8);
  *(v3 + 16) = 0;
  return v3;
}

uint64_t sub_21D65591C()
{
  if (qword_27CE56B30 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_27CE5F638);
  v1 = sub_21DBF84AC();
  v2 = sub_21DBFAEDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21D0C9000, v1, v2, "TTRShowRecentlyDeletedDataModelSource start asynchronously", v3, 2u);
    MEMORY[0x223D46520](v3, -1, -1);
  }

  v5 = 10;
  return sub_21D655A64(&v5);
}

uint64_t sub_21D655A64(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378, &qword_21DC19530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0, &unk_21DC15DC0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v37[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B0, qword_21DC20CC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37[-v15];
  v17 = *a1;
  v18 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  if (*(v2 + v18))
  {
    v38 = v17;
    v19 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      v39[0] = v38;
      (*(*(v20 + 8) + 16))(v39, ObjectType);
      swift_unknownObjectRelease();
    }

    v22 = *(v2 + v18);
    if (v22)
    {
      v23 = *(*v22 + 104);
      swift_beginAccess();
      sub_21D0D3954(v22 + v23, v16, &qword_27CE5C2B0, qword_21DC20CC0);
      if ((*(v8 + 48))(v16, 1, v7) == 1)
      {
        sub_21D0CF7E0(v16, &qword_27CE5C2B0, qword_21DC20CC0);
        v24 = 0;
      }

      else
      {
        v24 = *&v16[*(v7 + 48)];
        v25 = sub_21DBF773C();
        (*(*(v25 - 8) + 8))(v16, v25);
      }
    }

    else
    {
      v24 = 0;
    }

    LOBYTE(v17) = v38;
  }

  else
  {
    v24 = 0;
  }

  v26 = *(v7 + 48);
  v27 = sub_21DBF72DC();
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  MEMORY[0x223D3FED0](MEMORY[0x277D84F90], v6, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  *&v13[v26] = v24;
  v28 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_store);
  v29 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_account);
  v30 = v24;
  v31 = v28;
  v32 = [v29 objectID];
  type metadata accessor for TTRShowRecentlyDeletedMonitorableDataView();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v32;
  v34 = *(v7 + 48);
  v35 = sub_21DBF773C();
  (*(*(v35 - 8) + 16))(v10, v13, v35);
  *&v10[v34] = v24;
  swift_beginAccess();
  sub_21D501C24((v2 + v18), v10, v33, v2, v17);
  sub_21D0CF7E0(v10, &qword_27CE5C2A0, &unk_21DC15DC0);
  swift_endAccess();

  return sub_21D0CF7E0(v13, &qword_27CE5C2A0, &unk_21DC15DC0);
}

uint64_t TTRShowRecentlyDeletedMonitorableDataView.__allocating_init(store:accountID:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_21D655F44()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_delegate);
}

uint64_t TTRShowRecentlyDeletedDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_delegate);

  return v0;
}

uint64_t TTRShowRecentlyDeletedDataModelSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_delegate;

  sub_21D157444(v0 + v3);

  return swift_deallocClassInstance();
}

uint64_t TTRShowRecentlyDeletedDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowRecentlyDeletedDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0, &unk_21DC15DC0);
  MEMORY[0x28223BE20](v9);
  v63 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  v14 = sub_21DBF773C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a2, v14);
  *&v13[*(v9 + 48)] = a3;
  v16 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v64 = v4;
  v17 = *(v4 + v16);
  if (!v17)
  {
    v29 = a3;
    return sub_21D0CF7E0(v13, &qword_27CE5C2A0, &unk_21DC15DC0);
  }

  v18 = a3;
  if (v17 != a1)
  {
    return sub_21D0CF7E0(v13, &qword_27CE5C2A0, &unk_21DC15DC0);
  }

  v19 = a4;
  v20 = v18;
  v62 = v19;
  v21 = sub_21DBF6E3C();
  sub_21D4F5F28(v21);
  v23 = v22;

  v61 = v13;
  if (a3)
  {
    v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    v25 = v64;
    swift_beginAccess();
    v26 = v15;
    if (*(v25 + v24))
    {
      v27 = v20;

      sub_21D4F9F64(v27, v23);

      v28 = v64;
    }

    else
    {
      v30 = *(v25 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_store);
      v31 = objc_opt_self();
      v32 = v20;
      v33 = [v31 fetchOptionsIncludingConcealed];
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v34 = sub_21DBFB12C();
      v35 = swift_allocObject();
      *(v35 + 16) = v33;
      v36 = sub_21D87E81C(v30, sub_21D1947D8, v35, v32, v34);
      *(v64 + v24) = v36;

      v28 = v64;

      swift_beginAccess();
      v36[3] = &protocol witness table for TTRShowRecentlyDeletedDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    v13 = v61;
  }

  else
  {

    v28 = v64;
    v26 = v15;
  }

  v37 = v63;
  sub_21D0D3954(v13, v63, &qword_27CE5C2A0, &unk_21DC15DC0);

  v38 = sub_21DBF716C();
  (*(v26 + 8))(v37, v14);
  v39 = v62;
  if (!(v38 >> 62))
  {
    v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
      goto LABEL_12;
    }

LABEL_30:

LABEL_31:
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_21DBFBEEC();
    v65 = *v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB08, &unk_21DC1A8A0);
    v56 = sub_21DBFA1AC();
    v58 = v57;

    v65 = v56;
    v66 = v58;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v59 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v59);
    *(&v61 - 4) = v28;
    *(&v61 - 3) = v13;
    *(&v61 - 2) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();

    return sub_21D0CF7E0(v13, &qword_27CE5C2A0, &unk_21DC15DC0);
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_30;
  }

  v40 = sub_21DBFBD7C();
  if (!v40)
  {

    v42 = MEMORY[0x277D84F90];
LABEL_21:
    v13 = v61;
    v39 = v62;
    v28 = v64;
    if (*(v42 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
      v50 = sub_21DBFC40C();
    }

    else
    {
      v50 = MEMORY[0x277D84F98];
    }

    v67[0] = v50;
    v51 = sub_21DBF8E0C();
    sub_21D1931C0(v51, 1, v67);

    v52 = v67[0];
    v53 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v28 + v53))
    {

      sub_21D188810(v52);
      v55 = v54;

      TTRBatchFetchManager<A>.override(objects:)(v55);
    }

    else
    {
    }

    goto LABEL_31;
  }

LABEL_12:
  v67[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v40 & ~(v40 >> 63), 0);
  if ((v40 & 0x8000000000000000) == 0)
  {
    v41 = 0;
    v42 = v67[0];
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x223D44740](v41, v38);
      }

      else
      {
        v43 = *(v38 + 8 * v41 + 32);
      }

      v44 = v43;
      v45 = [v43 objectID];
      v67[0] = v42;
      v47 = *(v42 + 16);
      v46 = *(v42 + 24);
      if (v47 >= v46 >> 1)
      {
        v49 = v45;
        sub_21D18E6B8((v46 > 1), v47 + 1, 1);
        v45 = v49;
        v42 = v67[0];
      }

      ++v41;
      *(v42 + 16) = v47 + 1;
      v48 = v42 + 16 * v47;
      *(v48 + 32) = v45;
      *(v48 + 40) = v44;
    }

    while (v40 != v41);

    goto LABEL_21;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21D6568E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v9 = result;
  if (result)
  {
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(a2, a3, ObjectType, v10);
    result = swift_unknownObjectRelease();
  }

  *a4 = v9 == 0;
  return result;
}

uint64_t sub_21D6569B0()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D656A2C(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0, &unk_21DC15DC0) + 48));

  return TTRShowRecentlyDeletedDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowRecentlyDeletedDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB08, &unk_21DC1A8A0);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();
}

uint64_t sub_21D656BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void TTRShowRecentlyDeletedDataModelSource.update(error:)(void *a1)
{
  if (qword_27CE56B30 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5F638);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21D0CDFB4(0x796C746E65636572, 0xEF646574656C6544, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowRecentlyDeletedDataModelSource update error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRShowRecentlyDeletedMonitorableDataView.init(store:accountID:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t TTRShowRecentlyDeletedMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v32 = a1;
  v33 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A8, &unk_21DC2FD00);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = sub_21DBF734C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE597E0, &unk_21DC15DD0);
  v30 = *(v16 - 8);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v30 - v18;
  v20 = *(v5 + 16);
  if (a4)
  {
    v21 = v20;
  }

  else
  {
    v21 = [v20 nonUserInteractiveStore];
  }

  v22 = v21;
  (*(v13 + 104))(v15, *MEMORY[0x277D45500], v12);
  v23 = v34;
  sub_21DBF748C();
  if (v23)
  {
    v25 = *(v13 + 8);
    v24 = v13 + 8;
    v25(v15, v12);
  }

  else
  {
    (*(v13 + 8))(v15, v12);
    v26 = v31;
    v27 = *(v31 + 48);
    sub_21DBF76DC();
    *&v11[v27] = sub_21DBF76BC();
    sub_21D0D3954(v11, v8, &qword_27CE5C2A8, &unk_21DC2FD00);
    v24 = *&v8[*(v26 + 48)];
    v28 = sub_21DBF773C();
    (*(*(v28 - 8) + 32))(v32, v8, v28);
    sub_21DBF76CC();

    sub_21D0CF7E0(v11, &qword_27CE5C2A8, &unk_21DC2FD00);
    (*(v30 + 8))(v19, v16);
  }

  return v24;
}

uint64_t TTRShowRecentlyDeletedMonitorableDataView.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D65723C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = TTRShowRecentlyDeletedMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0, &unk_21DC15DC0);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

void sub_21D657298(uint64_t a1)
{
  v34 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298, &qword_21DC196B0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B0, qword_21DC20CC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v36 = sub_21DBF773C();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v35 = v1;
  v17 = *(v1 + v16);
  if (v17)
  {
    v32 = v3;
    v33 = v2;
    v18 = *(*v17 + 96);
    swift_beginAccess();
    sub_21D0D3954(v17 + v18, v7, &qword_27CE5C298, &qword_21DC196B0);
    sub_21DBFC83C();
    sub_21D0CF7E0(v7, &qword_27CE5C298, &qword_21DC196B0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0, &unk_21DC15DC0);
    if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
    {
      sub_21D0CF7E0(v10, &qword_27CE5C2B0, qword_21DC20CC0);
    }

    else
    {

      v20 = *(v38 + 32);
      v21 = v36;
      v20(v12, v10, v36);
      v20(v15, v12, v21);
      v41[0] = v34;
      swift_getKeyPath("Xc%_");
      swift_getKeyPath("0c%_");
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80, &qword_21DC09CB0);
      sub_21D5DE94C();
      sub_21D183A0C();
      v22 = sub_21DBFA46C();

      v23 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v24 = v35;
      swift_beginAccess();
      if (*(v24 + v23))
      {

        TTRBatchFetchManager<A>.override(objects:)(v22);
      }

      sub_21D183AA0(v22);
      v26 = v25;

      sub_21D19ED38(v26);

      if (MEMORY[0x277D84F90] >> 62)
      {
        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }
      }

      v27 = v37;
      sub_21DBF767C();
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_21DBFBEEC();
      v39 = *v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB08, &unk_21DC1A8A0);
      v28 = sub_21DBFA1AC();
      v30 = v29;

      v39 = v28;
      v40 = v30;
      MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
      v31 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v31);
      *(&v32 - 4) = v24;
      *(&v32 - 3) = v15;
      *(&v32 - 2) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      sub_21DBF625C();

      (*(v32 + 8))(v27, v33);
      (*(v38 + 8))(v15, v21);
    }
  }
}

void sub_21D6578EC(void *a1)
{
  if (qword_27CE56B30 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5F638);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    type metadata accessor for TTRShowRecentlyDeletedDataModelSource(0);

    v10 = sub_21DBFA1AC();
    v12 = sub_21D0CDFB4(v10, v11, &v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowRecentlyDeletedDataModelSource did hit error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t type metadata accessor for TTRShowRecentlyDeletedDataModelSource(uint64_t a1)
{
  result = qword_27CE5F660;
  if (!qword_27CE5F660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D657DE4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5F670);
  v1 = __swift_project_value_buffer(v0, qword_27CE5F670);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_21D657EAC()
{
  if (qword_27CE56B48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

id sub_21D657F24(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_21D6589DC(v3, v4, v1, v2);
}

id sub_21D657F64(void *a1)
{
  if (a1)
  {
    v1 = [a1 emblem];
    if (v1)
    {
      v2 = v1;
      if (qword_27CE56B40 != -1)
      {
        swift_once();
      }

      sub_21DBF8E0C();
      v4 = sub_21D22D5B4(v3);

      if (v4)
      {
        return v2;
      }
    }
  }

  v6 = *MEMORY[0x277D44960];

  return v6;
}

void sub_21D658038()
{
  if (qword_27CE56B48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = sub_21DBF8E0C();
  v1 = sub_21D19F11C(v0);

  qword_27CE5F688 = v1;
}

id sub_21D6580E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F698, &qword_21DC20D68);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC20D20;
  v1 = *MEMORY[0x277D44960];
  v143 = *MEMORY[0x277D44928];
  v2 = *MEMORY[0x277D44928];
  *(v0 + 32) = *MEMORY[0x277D44960];
  *(v0 + 40) = v2;
  v140 = *MEMORY[0x277D44930];
  v3 = *MEMORY[0x277D44938];
  v146 = *MEMORY[0x277D44938];
  *(v0 + 48) = *MEMORY[0x277D44930];
  *(v0 + 56) = v3;
  v142 = *MEMORY[0x277D44940];
  v4 = *MEMORY[0x277D44968];
  v149 = *MEMORY[0x277D44968];
  *(v0 + 64) = *MEMORY[0x277D44940];
  *(v0 + 72) = v4;
  v141 = *MEMORY[0x277D44970];
  v5 = *MEMORY[0x277D44978];
  v148 = *MEMORY[0x277D44978];
  *(v0 + 80) = *MEMORY[0x277D44970];
  *(v0 + 88) = v5;
  v144 = *MEMORY[0x277D44980];
  v6 = *MEMORY[0x277D44988];
  v152 = *MEMORY[0x277D44988];
  *(v0 + 96) = *MEMORY[0x277D44980];
  *(v0 + 104) = v6;
  v147 = *MEMORY[0x277D44990];
  v7 = *MEMORY[0x277D44998];
  v155 = *MEMORY[0x277D44998];
  *(v0 + 112) = *MEMORY[0x277D44990];
  *(v0 + 120) = v7;
  v145 = *MEMORY[0x277D449A0];
  v8 = *MEMORY[0x277D449A8];
  v154 = *MEMORY[0x277D449A8];
  *(v0 + 128) = *MEMORY[0x277D449A0];
  *(v0 + 136) = v8;
  v150 = *MEMORY[0x277D44AA0];
  v9 = *MEMORY[0x277D449B0];
  v158 = *MEMORY[0x277D449B0];
  *(v0 + 144) = *MEMORY[0x277D44AA0];
  *(v0 + 152) = v9;
  v153 = *MEMORY[0x277D44B30];
  v10 = *MEMORY[0x277D449B8];
  v161 = *MEMORY[0x277D449B8];
  *(v0 + 160) = *MEMORY[0x277D44B30];
  *(v0 + 168) = v10;
  v151 = *MEMORY[0x277D449C0];
  v160 = *MEMORY[0x277D449C8];
  *(v0 + 176) = *MEMORY[0x277D449C0];
  *(v0 + 184) = v160;
  v156 = *MEMORY[0x277D449D0];
  v11 = *MEMORY[0x277D449D8];
  v163 = *MEMORY[0x277D449D8];
  *(v0 + 192) = *MEMORY[0x277D449D0];
  *(v0 + 200) = v11;
  v159 = *MEMORY[0x277D449E0];
  v12 = *MEMORY[0x277D449E8];
  v165 = *MEMORY[0x277D449E8];
  *(v0 + 208) = *MEMORY[0x277D449E0];
  *(v0 + 216) = v12;
  v157 = *MEMORY[0x277D449F0];
  v164 = *MEMORY[0x277D449F8];
  *(v0 + 224) = *MEMORY[0x277D449F0];
  *(v0 + 232) = v164;
  v162 = *MEMORY[0x277D44A00];
  v13 = *MEMORY[0x277D44A08];
  v166 = *MEMORY[0x277D44A08];
  *(v0 + 240) = *MEMORY[0x277D44A00];
  *(v0 + 248) = v13;
  qword_27CE5F690 = v0;
  v14 = *MEMORY[0x277D44A10];
  v15 = *MEMORY[0x277D44A18];
  *(v0 + 256) = *MEMORY[0x277D44A10];
  *(v0 + 264) = v15;
  v16 = *MEMORY[0x277D44A20];
  v17 = *MEMORY[0x277D44A28];
  *(v0 + 272) = *MEMORY[0x277D44A20];
  *(v0 + 280) = v17;
  v18 = *MEMORY[0x277D44A30];
  v19 = *MEMORY[0x277D44A38];
  *(v0 + 288) = *MEMORY[0x277D44A30];
  *(v0 + 296) = v19;
  v20 = *MEMORY[0x277D44A40];
  v21 = *MEMORY[0x277D44A48];
  *(v0 + 304) = *MEMORY[0x277D44A40];
  *(v0 + 312) = v21;
  v22 = *MEMORY[0x277D44A50];
  v107 = *MEMORY[0x277D44A58];
  v23 = *MEMORY[0x277D44A58];
  *(v0 + 320) = *MEMORY[0x277D44A50];
  *(v0 + 328) = v23;
  v24 = *MEMORY[0x277D44A60];
  v109 = *MEMORY[0x277D44A68];
  v25 = *MEMORY[0x277D44A68];
  *(v0 + 336) = *MEMORY[0x277D44A60];
  *(v0 + 344) = v25;
  v108 = *MEMORY[0x277D44A70];
  v111 = *MEMORY[0x277D44A78];
  v26 = *MEMORY[0x277D44A78];
  *(v0 + 352) = *MEMORY[0x277D44A70];
  *(v0 + 360) = v26;
  v110 = *MEMORY[0x277D44A80];
  v113 = *MEMORY[0x277D44A88];
  v27 = *MEMORY[0x277D44A88];
  *(v0 + 368) = *MEMORY[0x277D44A80];
  *(v0 + 376) = v27;
  v112 = *MEMORY[0x277D44A90];
  v115 = *MEMORY[0x277D44A98];
  v28 = *MEMORY[0x277D44A98];
  *(v0 + 384) = *MEMORY[0x277D44A90];
  *(v0 + 392) = v28;
  v114 = *MEMORY[0x277D44AE0];
  v117 = *MEMORY[0x277D44AE8];
  v29 = *MEMORY[0x277D44AE8];
  *(v0 + 400) = *MEMORY[0x277D44AE0];
  *(v0 + 408) = v29;
  v116 = *MEMORY[0x277D44AF0];
  v119 = *MEMORY[0x277D44AF8];
  v30 = *MEMORY[0x277D44AF8];
  *(v0 + 416) = *MEMORY[0x277D44AF0];
  *(v0 + 424) = v30;
  v118 = *MEMORY[0x277D44B00];
  v121 = *MEMORY[0x277D44B10];
  v31 = *MEMORY[0x277D44B10];
  *(v0 + 432) = *MEMORY[0x277D44B00];
  *(v0 + 440) = v31;
  v120 = *MEMORY[0x277D44B08];
  v123 = *MEMORY[0x277D44B18];
  v32 = *MEMORY[0x277D44B18];
  *(v0 + 448) = *MEMORY[0x277D44B08];
  *(v0 + 456) = v32;
  v122 = *MEMORY[0x277D44B20];
  v125 = *MEMORY[0x277D44B28];
  v33 = *MEMORY[0x277D44B28];
  *(v0 + 464) = *MEMORY[0x277D44B20];
  *(v0 + 472) = v33;
  v124 = *MEMORY[0x277D44B38];
  v127 = *MEMORY[0x277D44B40];
  v34 = *MEMORY[0x277D44B40];
  *(v0 + 480) = *MEMORY[0x277D44B38];
  *(v0 + 488) = v34;
  v126 = *MEMORY[0x277D44B48];
  v128 = *MEMORY[0x277D44B50];
  v35 = *MEMORY[0x277D44B50];
  *(v0 + 496) = *MEMORY[0x277D44B48];
  *(v0 + 504) = v35;
  v129 = *MEMORY[0x277D44B58];
  *(v0 + 512) = *MEMORY[0x277D44B58];
  v130 = *MEMORY[0x277D44948];
  *(v0 + 520) = *MEMORY[0x277D44948];
  v131 = *MEMORY[0x277D44950];
  *(v0 + 528) = *MEMORY[0x277D44950];
  v132 = *MEMORY[0x277D44958];
  *(v0 + 536) = *MEMORY[0x277D44958];
  v133 = *MEMORY[0x277D44AD8];
  *(v0 + 544) = *MEMORY[0x277D44AD8];
  v134 = *MEMORY[0x277D44AC0];
  *(v0 + 552) = *MEMORY[0x277D44AC0];
  v135 = *MEMORY[0x277D44AB8];
  *(v0 + 560) = *MEMORY[0x277D44AB8];
  v136 = *MEMORY[0x277D44AB0];
  *(v0 + 568) = *MEMORY[0x277D44AB0];
  v137 = *MEMORY[0x277D44AC8];
  *(v0 + 576) = *MEMORY[0x277D44AC8];
  v139 = *MEMORY[0x277D44AD0];
  *(v0 + 584) = *MEMORY[0x277D44AD0];
  v138 = *MEMORY[0x277D44AA8];
  *(v0 + 592) = *MEMORY[0x277D44AA8];
  v36 = v1;
  v37 = v143;
  v38 = v140;
  v39 = v146;
  v40 = v142;
  v41 = v149;
  v42 = v141;
  v43 = v148;
  v44 = v144;
  v45 = v152;
  v46 = v147;
  v47 = v155;
  v48 = v145;
  v49 = v154;
  v50 = v150;
  v51 = v158;
  v52 = v153;
  v53 = v161;
  v54 = v151;
  v55 = v160;
  v56 = v156;
  v57 = v163;
  v58 = v159;
  v59 = v165;
  v60 = v157;
  v61 = v164;
  v62 = v162;
  v63 = v166;
  v64 = v14;
  v65 = v15;
  v66 = v16;
  v67 = v17;
  v68 = v18;
  v69 = v19;
  v70 = v20;
  v71 = v21;
  v72 = v22;
  v73 = v107;
  v74 = v24;
  v75 = v109;
  v76 = v108;
  v77 = v111;
  v78 = v110;
  v79 = v113;
  v80 = v112;
  v81 = v115;
  v82 = v114;
  v83 = v117;
  v84 = v116;
  v85 = v119;
  v86 = v118;
  v87 = v121;
  v88 = v120;
  v89 = v123;
  v90 = v122;
  v91 = v125;
  v92 = v124;
  v93 = v127;
  v94 = v126;
  v95 = v128;
  v96 = v129;
  v97 = v130;
  v98 = v131;
  v99 = v132;
  v100 = v133;
  v101 = v134;
  v102 = v135;
  v103 = v136;
  v104 = v137;
  v105 = v139;

  return v138;
}

double static REMListBadgeEmblem.all.getter()
{
  if (qword_27CE56B48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

double static REMListBadgeEmblem.all.setter(uint64_t a1)
{
  if (qword_27CE56B48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27CE5F690 = a1;

  return result;
}

uint64_t (*static REMListBadgeEmblem.all.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27CE56B48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_21D6589DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  v10 = (*(a4 + 48))(a3, a4);
  v11 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  v12 = [v10 emblem];
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  if (qword_27CE56B40 != -1)
  {
    swift_once();
  }

  sub_21DBF8E0C();
  v15 = sub_21D22D5B4(v14);

  if ((v15 & 1) == 0)
  {

LABEL_7:
    v13 = *MEMORY[0x277D44960];
  }

  (*(v6 + 8))(v9, a3);
  return v13;
}

uint64_t dispatch thunk of static TTRListBadgeEmblem.badgeEmblem(for:)()
{
  return (*(v0 + 88))();
}

{
  return (*(v0 + 96))();
}

uint64_t TTRTemplateSharingInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRTemplateSharingInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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

id TTRTemplateSharingInteractor.template.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void *TTRTemplateSharingInteractor.__allocating_init(template:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRRemoveTemplateLowLevelInteractorCapability();
  v3 = swift_allocObject();
  v2[4] = a1;
  v2[5] = v3;
  return v2;
}

void *TTRTemplateSharingInteractor.init(template:)(uint64_t a1)
{
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRRemoveTemplateLowLevelInteractorCapability();
  v3 = swift_allocObject();
  v1[4] = a1;
  v1[5] = v3;
  return v1;
}

uint64_t TTRTemplateSharingInteractor.createOrUpdatePublicLink(with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_21DBFA84C();
  v3[6] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_21D658EB4, v5, v4);
}

uint64_t sub_21D658EB4(uint64_t a1)
{
  v9 = *(v1 + 24);
  v2 = sub_21DBFA83C();
  *(v1 + 72) = v2;
  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  v3[1] = vextq_s8(v9, v9, 8uLL);
  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  v5 = sub_21DBF54CC();
  *v4 = v1;
  v4[1] = sub_21D658FD8;
  v6 = *(v1 + 16);
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v6, v2, v7, 0xD00000000000001FLL, 0x800000021DC65E00, sub_21D65939C, v3, v5);
}

uint64_t sub_21D658FD8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_21D659160;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_21D6590FC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D6590FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D659160()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21D6591D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F6A8, &unk_21DC20E80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  swift_beginAccess();
  v9 = [*(a2 + 32) store];
  v10 = *(a2 + 32);
  sub_21D0CE468();
  v11 = v10;
  v12 = sub_21DBFB12C();
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v8, v5);
  sub_21DBFB71C();
}

uint64_t sub_21D6593A4(void *a1, char a2, uint64_t a3)
{
  v27 = a3;
  v5 = sub_21DBF54CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A2F8, &qword_21DC0EA68);
  MEMORY[0x28223BE20](v9);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v27 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = (&v27 - v16);
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = &v27 - v20;
  if (a2)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    sub_21D65A950(v14, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *v11;
      v22 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F6A8, &unk_21DC20E80);
      sub_21DBFA7DC();
    }

    else
    {
      (*(v6 + 32))(v8, v11, v5);
      v24 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F6A8, &unk_21DC20E80);
      sub_21DBFA7EC();
    }

    v25 = v14;
  }

  else
  {
    v23 = [a1 url];
    sub_21DBF546C();

    swift_storeEnumTagMultiPayload();
    sub_21D65A950(v21, v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F6A8, &unk_21DC20E80);
      sub_21DBFA7DC();
    }

    else
    {
      (*(v6 + 32))(v8, v17, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F6A8, &unk_21DC20E80);
      sub_21DBFA7EC();
    }

    v25 = v21;
  }

  return sub_21D65A9C0(v25);
}

uint64_t TTRTemplateSharingInteractor.fetchTemplateContentAttributes()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_21DBFA84C();
  v2[5] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_21D659750, v4, v3);
}

uint64_t sub_21D659750(uint64_t a1)
{
  v2 = sub_21DBFA83C();
  v1[8] = v2;
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  v3[1] = sub_21D659838;
  v4 = v1[2];
  v5 = v1[3];
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v4, v2, v6, 0xD000000000000020, 0x800000021DC65E20, sub_21D659BE4, v5, &type metadata for TTRTemplateSharingTemplateContentAttributes);
}

uint64_t sub_21D659838()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21D6599B8;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21D659954;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D659954()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D6599B8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21D659A28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F6A0, &qword_21DC20E78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  swift_beginAccess();
  v8 = [*(a2 + 32) store];
  v9 = *(a2 + 32);
  sub_21D0CE468();
  v10 = v9;
  v11 = sub_21DBFB12C();
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v7, v4);
  sub_21DBFB6EC();
}

uint64_t sub_21D659BEC(void *a1, char a2)
{
  if (a2)
  {
    v4 = a1;
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F6A0, &qword_21DC20E78);
    return sub_21DBFA7DC();
  }

  else
  {
    TTRTemplateSharingTemplateContentAttributes.init(remTemplateContentAttributes:)(a1, &v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F6A0, &qword_21DC20E78);
    return sub_21DBFA7EC();
  }
}

uint64_t TTRTemplateSharingInteractor.stopSharing()()
{
  v1[2] = v0;
  v1[3] = sub_21DBFA84C();
  v1[4] = sub_21DBFA83C();
  v3 = sub_21DBFA7CC();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_21D659D0C, v3, v2);
}

uint64_t sub_21D659D0C(uint64_t a1)
{
  v2 = sub_21DBFA83C();
  v1[7] = v2;
  v3 = swift_task_alloc();
  v1[8] = v3;
  *v3 = v1;
  v3[1] = sub_21D659DFC;
  v4 = v1[2];
  v5 = MEMORY[0x277D85700];
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, v2, v5, 0x72616853706F7473, 0xED00002928676E69, sub_21D65A160, v4, v6);
}

uint64_t sub_21D659DFC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_21D659F7C;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_21D659F18;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D659F18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D659F7C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21D659FEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA0, &qword_21DC20E70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  swift_beginAccess();
  v8 = *(a2 + 32);
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  v11 = v8;
  TTRRemoveTemplateLowLevelInteractorCapability.revokePublicLink(of:completion:)(v11, sub_21D65A840, v10);
}

uint64_t sub_21D65A168(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA0, &qword_21DC20E70);
    return sub_21DBFA7DC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA0, &qword_21DC20E70);
    return sub_21DBFA7EC();
  }
}

uint64_t TTRTemplateSharingInteractor.deinit()
{
  sub_21D157444(v0 + 16);

  return v0;
}

uint64_t TTRTemplateSharingInteractor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_21D65A254()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_21D65A298(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D0F00D0;

  return TTRTemplateSharingInteractor.fetchTemplateContentAttributes()(a1);
}

uint64_t sub_21D65A330(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return TTRTemplateSharingInteractor.createOrUpdatePublicLink(with:)(a1, a2);
}

uint64_t sub_21D65A3D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D1B795C;

  return TTRTemplateSharingInteractor.stopSharing()();
}

uint64_t dispatch thunk of TTRTemplateSharingInteractorType.fetchTemplateContentAttributes()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0F00D0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TTRTemplateSharingInteractorType.createOrUpdatePublicLink(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D0F00D0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTRTemplateSharingInteractorType.stopSharing()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1B795C;

  return v7(a1, a2);
}

uint64_t sub_21D65A8B8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, void, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2 & 1, v9);
}

uint64_t sub_21D65A950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A2F8, &qword_21DC0EA68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D65A9C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A2F8, &qword_21DC0EA68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D65AA80(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v8, a2);
  v9 = __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v8, a4);
  v11 = *(*(v8 - 8) + 16);

  return v11(v9, v10, v8);
}

uint64_t TTRShowSearchResultDataModelSourceDeleteCompletedContext.listForBatchDelete.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore56TTRShowSearchResultDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = sub_21DBF806C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRShowSearchResultDataModelSourceDeleteCompletedContext.__allocating_init(reminderIDs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC15RemindersUICore56TTRShowSearchResultDataModelSourceDeleteCompletedContext_listForBatchDelete;
  *(v2 + OBJC_IVAR____TtC15RemindersUICore56TTRShowSearchResultDataModelSourceDeleteCompletedContext_listForBatchDelete) = a1;
  v4 = *MEMORY[0x277D45960];
  v5 = sub_21DBF806C();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  return v2;
}

uint64_t TTRShowSearchResultDataModelSourceDeleteCompletedContext.init(reminderIDs:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore56TTRShowSearchResultDataModelSourceDeleteCompletedContext_listForBatchDelete;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore56TTRShowSearchResultDataModelSourceDeleteCompletedContext_listForBatchDelete) = a1;
  v3 = *MEMORY[0x277D45960];
  v4 = sub_21DBF806C();
  (*(*(v4 - 8) + 104))(v1 + v2, v3, v4);
  return v1;
}

uint64_t TTRShowSearchResultDataModelSourceDeleteCompletedContext.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore56TTRShowSearchResultDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v2 = sub_21DBF806C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRShowSearchResultDataModelSourceDeleteCompletedContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore56TTRShowSearchResultDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v2 = sub_21DBF806C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21D65ADCC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore56TTRShowSearchResultDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = sub_21DBF806C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_21D65AE44(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_delegate;
  swift_beginAccess();
  *(v3 + 1) = v2;
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB00, &unk_21DC20E90);
  sub_21DBFA1AC();
  MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();

  return result;
}

double sub_21D65AFBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v3 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB00, &unk_21DC20E90);
  sub_21DBFA1AC();
  MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();
  swift_unknownObjectRelease();

  return result;
}

void (*sub_21D65B0F8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D65B198;
}

void sub_21D65B198(uint64_t a1, char a2)
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
    *v3 = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB00, &unk_21DC20E90);
    sub_21DBFA1AC();
    MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
    sub_21DBFAEDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();
  }

  free(v3);
}

double sub_21D65B2F8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_searchTerm);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v3;
  v4[1] = v2;
  sub_21DBF8E0C();
  sub_21D65B378(v5, v6);

  return result;
}

void sub_21D65B378(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_searchTerm);
  swift_beginAccess();
  v6 = v5[1];
  if (!v6)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!a2 || (*v5 == a1 ? (v7 = v6 == a2) : (v7 = 0), !v7 && (sub_21DBFC64C() & 1) == 0))
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB00, &unk_21DC20E90);
    v12 = sub_21DBFA1AC();
    v13 = v8;
    v9 = v2;
    MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
    sub_21DBFAEDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();

    v10 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_itemsByID;
    swift_beginAccess();
    *(v9 + v10) = MEMORY[0x277D84F98];

    v11 = 6;
    sub_21D65BE2C(&v11);
    sub_21D65D2C4();
  }
}

uint64_t sub_21D65B514@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = a1 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = result;
  if (result)
  {
    v7 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v9 = (a1 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_searchTerm);
    swift_beginAccess();
    v10 = *v9;
    v11 = v9[1];
    v12 = *(v7 + 16);
    sub_21DBF8E0C();
    v12(v10, v11, ObjectType, v7);

    result = swift_unknownObjectRelease();
  }

  *a2 = v6 == 0;
  return result;
}

uint64_t sub_21D65B60C()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_searchTerm);
  swift_beginAccess();
  v2 = *v1;
  sub_21DBF8E0C();
  return v2;
}

double sub_21D65B664(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_searchTerm);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_21D65B378(v6, v7);

  return result;
}

void (*sub_21D65B6D8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_searchTerm;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  sub_21DBF8E0C();
  return sub_21D65B778;
}

void sub_21D65B778(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {
    sub_21DBF8E0C();
    sub_21D65B378(v9, v8);
  }

  else
  {
    sub_21D65B378(v9, v8);
  }

  free(v2);
}

uint64_t TTRShowSearchResultDataModelSource.__allocating_init(store:searchTerm:countCompleted:sortingStyle:canChangeSortingStyle:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = (v12 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_searchTerm);
  *v13 = 0;
  v13[1] = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_dataViewMonitor) = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_queryPerformer) = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_store) = a1;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_countCompleted) = a4;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_itemsByID) = MEMORY[0x277D84F98];
  v14 = qword_280D1AA10;
  v15 = a1;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v17 = swift_allocObject();
  v18 = sub_21D193548(3, 2, v16, v17);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_showCompletedContextInstance) = v18;
  v19 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v20 = sub_21DBF70DC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v12 + v19, a5, v20);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v12 + 16) = a6 & 1;
  swift_beginAccess();
  v18[3] = &protocol witness table for TTRShowSearchResultDataModelSource;
  swift_unknownObjectWeakAssign();
  v24[0] = 10;

  sub_21D65BE2C(v24);
  v22 = (v12 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_searchTerm);
  swift_beginAccess();
  *v22 = a2;
  v22[1] = a3;

  sub_21D65D2C4();

  (*(v21 + 8))(a5, v20);
  return v12;
}

uint64_t TTRShowSearchResultDataModelSource.init(store:searchTerm:countCompleted:sortingStyle:canChangeSortingStyle:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = (v6 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_searchTerm);
  *v13 = 0;
  v13[1] = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_dataViewMonitor) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_queryPerformer) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_store) = a1;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_countCompleted) = a4;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_itemsByID) = MEMORY[0x277D84F98];
  v14 = qword_280D1AA10;
  v15 = a1;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v17 = swift_allocObject();
  v18 = sub_21D193548(3, 2, v16, v17);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_showCompletedContextInstance) = v18;
  v19 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v20 = sub_21DBF70DC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v6 + v19, a5, v20);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v6 + 16) = a6 & 1;
  swift_beginAccess();
  v18[3] = &protocol witness table for TTRShowSearchResultDataModelSource;
  swift_unknownObjectWeakAssign();
  v24[0] = 10;

  sub_21D65BE2C(v24);
  v22 = (v6 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_searchTerm);
  swift_beginAccess();
  *v22 = a2;
  v22[1] = a3;

  sub_21D65D2C4();

  (*(v21 + 8))(a5, v20);
  return v6;
}

uint64_t sub_21D65BD10()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_itemsByID;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (*(v2 + 16))
    {
      goto LABEL_3;
    }

    return 0;
  }

  sub_21DBF8E0C();
  v3 = sub_21DBFBD7C();

  if (!v3)
  {
    return 0;
  }

LABEL_3:
  sub_21DBF8E0C();
  v4 = sub_21D19FC34();
  type metadata accessor for TTRShowSearchResultDataModelSourceDeleteCompletedContext(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC15RemindersUICore56TTRShowSearchResultDataModelSourceDeleteCompletedContext_listForBatchDelete;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore56TTRShowSearchResultDataModelSourceDeleteCompletedContext_listForBatchDelete) = v4;
  v7 = *MEMORY[0x277D45960];
  v8 = sub_21DBF806C();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  return v5;
}

uint64_t sub_21D65BE2C(char *a1)
{
  v2 = v1;
  v115 = sub_21DBF76AC();
  v114 = *(v115 - 1);
  MEMORY[0x28223BE20](v115);
  v113 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_21DBFB11C();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v108);
  v109 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v7 - 8);
  v106 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_21DBF71BC();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v10 = (&v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = sub_21DBF70DC();
  v117 = *(v118 - 1);
  MEMORY[0x28223BE20](v118);
  v116 = (&v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C378, &unk_21DC15EA0);
  v121 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v107 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v119 = &v101 - v15;
  MEMORY[0x28223BE20](v16);
  v102 = &v101 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v101 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C388, &unk_21DC1A890);
  MEMORY[0x28223BE20](v21 - 8);
  v105 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v101 - v24;
  v123 = sub_21DBF6F2C();
  v26 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v28 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_dataViewMonitor;
  v30 = *(v2 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_dataViewMonitor);
  v122 = v28;
  if (v30)
  {
    v31 = v26;
    v32 = v20;
    v33 = *a1;
    v34 = v2 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v35 = *(v34 + 1);
      ObjectType = swift_getObjectType();
      v127[0] = v33;
      (*(*(v35 + 8) + 16))(v127, ObjectType);
      swift_unknownObjectRelease();
    }

    v20 = v32;
    v26 = v31;
    v28 = v122;
    if (*(v2 + v29))
    {

      sub_21D737DE0();
    }
  }

  sub_21DBF6E9C();
  v120 = v29;
  v37 = *(v2 + v29);
  if (v37)
  {
    v38 = *(*v37 + 104);
    swift_beginAccess();
    sub_21D0D3954(v37 + v38, v25, &qword_27CE5C388, &unk_21DC1A890);
    if ((*(v121 + 48))(v25, 1, v12) != 1)
    {
      v37 = *&v25[*(v12 + 48)];
      v40 = v25;
      v39 = v123;
      v26[1](v40, v123);
      goto LABEL_11;
    }

    sub_21D0CF7E0(v25, &qword_27CE5C388, &unk_21DC1A890);
    v37 = 0;
  }

  v39 = v123;
LABEL_11:
  v41 = *(v12 + 48);
  (v26[2])(v20, v28, v39);
  *&v20[v41] = v37;
  v42 = (v2 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_searchTerm);
  swift_beginAccess();
  v43 = v42[1];
  if (v43 && ((v43 & 0x2000000000000000) != 0 ? (v44 = HIBYTE(v43) & 0xF) : (v44 = *v42 & 0xFFFFFFFFFFFFLL), v44))
  {
    v115 = v20;
    v45 = *(v2 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_store);
    swift_beginAccess();
    v46 = v45;
    sub_21DBF8E0C();
    v47 = sub_21D19FC34();
    v48 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
    swift_beginAccess();
    (v117)[2](v116, v2 + v48, v118);
    v49 = *(v2 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_showCompletedContextInstance);
    if (*(v49 + 40) == 1)
    {
      v50 = v103;
      v51 = v104;
      (*(v103 + 13))(v10, *MEMORY[0x277D45468], v104);
    }

    else
    {
      swift_beginAccess();
      *v10 = *(v49 + 48);
      v58 = v103;
      v51 = v104;
      (*(v103 + 13))(v10, *MEMORY[0x277D45480], v104);
      v50 = v58;
      sub_21DBF8E0C();
    }

    v59 = *(v2 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_countCompleted);
    type metadata accessor for TTRShowSearchResultMonitorableDataView(0);
    v60 = swift_allocObject();
    *(v60 + 16) = v46;
    *(v60 + 24) = v47;
    v61 = v60;
    (v117)[4](v60 + OBJC_IVAR____TtC15RemindersUICore38TTRShowSearchResultMonitorableDataView_sortingStyle, v116, v118);
    v50[4](v61 + OBJC_IVAR____TtC15RemindersUICore38TTRShowSearchResultMonitorableDataView_showCompleted, v10, v51);
    *(v61 + OBJC_IVAR____TtC15RemindersUICore38TTRShowSearchResultMonitorableDataView_countCompleted) = v59;
    v114 = v61;
    v62 = v102;
    sub_21D0D3954(v115, v102, &qword_27CE5C378, &unk_21DC15EA0);
    v63 = *(v12 + 48);
    v64 = *&v62[v63];
    v65 = v119;
    (v26[4])(v119, v62, v123);
    *(v65 + v63) = v64;
    v104 = sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);

    v66 = sub_21DBFB12C();
    v116 = v26;
    v67 = v66;
    v103 = v66;
    sub_21DBF60DC();
    v113 = sub_21DBF60BC();
    v68 = sub_21DBF60AC();
    v102 = v68;
    v118 = *MEMORY[0x277D76648];
    v117 = *MEMORY[0x277D76768];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F758, &unk_21DC210B8);
    v69 = swift_allocObject();
    v70 = *(*v69 + 104);
    v71 = *(v121 + 56);
    v71(v69 + v70, 1, 1, v12);
    v72 = (v69 + *(*v69 + 136));
    *v72 = 0;
    v72[1] = 0;
    *(v69 + *(*v69 + 112)) = v67;
    *(v69 + *(*v69 + 120)) = v68;
    sub_21D0D3954(v65, v69 + *(*v69 + 96), &qword_27CE5C378, &unk_21DC15EA0);
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C370, &qword_21DC15E98);
    swift_storeEnumTagMultiPayload();
    v73 = v105;
    sub_21D0D3954(v65, v105, &qword_27CE5C378, &unk_21DC15EA0);
    v71(v73, 0, 1, v12);
    swift_beginAccess();
    v74 = v118;
    v75 = v117;
    v103 = v103;
    v102 = v102;
    sub_21D6627BC(v73, v69 + v70);
    swift_endAccess();
    sub_21DBF9D4C();
    v124 = MEMORY[0x277D84F90];
    sub_21D66282C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00, &unk_21DC0D9A0);
    sub_21D0DED40();
    sub_21DBFBCBC();
    (*(v111 + 104))(v110, *MEMORY[0x277D85260], v112);
    v76 = sub_21DBFB14C();
    v77 = v119;
    v78 = v107;
    sub_21D0D3954(v119, v107, &qword_27CE5C378, &unk_21DC15EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F760, &qword_21DC210C8);
    v79 = swift_allocObject();
    *(v79 + 72) = 0u;
    *(v79 + 88) = 0u;
    *(v79 + 104) = 0;
    *(v79 + 108) = -1;
    *(v79 + 120) = 0;
    *(v79 + 128) = 1;
    v80 = *(*v79 + 216);
    v81 = swift_slowAlloc();
    *(v79 + v80) = v81;
    *(v79 + *(*v79 + 224)) = 0;
    v82 = v113;
    *(v79 + 16) = v76;
    *(v79 + 24) = v82;
    v83 = v114;
    *(v79 + 32) = v102;
    *(v79 + 40) = v83;
    sub_21D0D3954(v78, v79 + *(*v79 + 208), &qword_27CE5C378, &unk_21DC15EA0);
    swift_storeEnumTagMultiPayload();
    *v81 = 0;

    sub_21D0CF7E0(v78, &qword_27CE5C378, &unk_21DC15EA0);
    sub_21D0CF7E0(v77, &qword_27CE5C378, &unk_21DC15EA0);
    v84 = v117;
    *(v79 + 48) = v118;
    *(v79 + 56) = v84;
    *(v79 + 64) = 1;
    *(v69 + *(*v69 + 128)) = v79;
    v85 = swift_allocObject();
    swift_weakInit();
    v86 = swift_allocObject();
    swift_weakInit();
    v87 = swift_allocObject();
    *(v87 + 16) = v85;
    *(v87 + 24) = v86;
    v88 = *(v79 + 72);
    v89 = *(v79 + 80);
    *(v79 + 72) = sub_21D662884;
    *(v79 + 80) = v87;

    sub_21D0D0E88(v88, v89);

    v90 = *(v69 + *(*v69 + 128));
    v91 = swift_allocObject();
    swift_weakInit();
    v92 = *(v90 + 88);
    v93 = *(v90 + 96);
    *(v90 + 88) = sub_21D66288C;
    *(v90 + 96) = v91;

    sub_21D0D0E88(v92, v93);

    v94 = swift_allocObject();
    swift_weakInit();
    v95 = swift_allocObject();
    swift_weakInit();
    v96 = swift_allocObject();
    *(v96 + 16) = v94;
    *(v96 + 24) = v95;
    v97 = (v69 + *(*v69 + 136));
    v98 = *v97;
    v99 = v97[1];
    *v97 = sub_21D662894;
    v97[1] = v96;

    sub_21D0D0E88(v98, v99);

    *(v2 + v120) = v69;

    sub_21D400AEC(1);

    v20 = v115;

    v116[1](v122, v123);
  }

  else
  {
    if (MEMORY[0x277D84F90] >> 62)
    {
      if (sub_21DBFBD7C())
      {
        sub_21D1CDECC(MEMORY[0x277D84F90]);
      }

      if (sub_21DBFBD7C())
      {
        sub_21D1CDECC(MEMORY[0x277D84F90]);
      }

      v52 = v26;
      if (sub_21DBFBD7C())
      {
        sub_21D1CDECC(MEMORY[0x277D84F90]);
      }

      if (sub_21DBFBD7C())
      {
        sub_21D1CDECC(MEMORY[0x277D84F90]);
      }
    }

    else
    {
      v52 = v26;
    }

    v53 = v113;
    sub_21DBF767C();
    v125 = 0;
    v126 = 0xE000000000000000;
    sub_21DBFBEEC();
    v125 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB00, &unk_21DC20E90);
    v54 = sub_21DBFA1AC();
    v56 = v55;

    v125 = v54;
    v126 = v56;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v57 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v57);
    *(&v101 - 4) = v2;
    *(&v101 - 3) = v20;
    *(&v101 - 2) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();

    v52[1](v122, v39);
    *(v2 + v120) = 0;

    (*(v114 + 8))(v53, v115);
  }

  return sub_21D0CF7E0(v20, &qword_27CE5C378, &unk_21DC15EA0);
}

uint64_t TTRShowSearchResultMonitorableDataView.__allocating_init(store:objectIDs:sortingStyle:showCompleted:countCompleted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = OBJC_IVAR____TtC15RemindersUICore38TTRShowSearchResultMonitorableDataView_sortingStyle;
  v12 = sub_21DBF70DC();
  (*(*(v12 - 8) + 32))(v10 + v11, a3, v12);
  v13 = OBJC_IVAR____TtC15RemindersUICore38TTRShowSearchResultMonitorableDataView_showCompleted;
  v14 = sub_21DBF71BC();
  (*(*(v14 - 8) + 32))(v10 + v13, a4, v14);
  *(v10 + OBJC_IVAR____TtC15RemindersUICore38TTRShowSearchResultMonitorableDataView_countCompleted) = a5;
  return v10;
}

uint64_t sub_21D65D204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v9 = result;
  if (result)
  {
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 24))(a2, a3, ObjectType, v10);
    result = swift_unknownObjectRelease();
  }

  *a4 = v9 == 0;
  return result;
}

void sub_21D65D2C4()
{
  v1 = v0;
  v2 = sub_21DBF624C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF672C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v54 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_queryPerformer;
  v10 = *(v0 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_queryPerformer);
  if (v10)
  {
    v11 = v10;
    TTRSearchQueryPerformer.cancel()();

    v10 = *(v1 + v9);
  }

  *(v1 + v9) = 0;

  v12 = (v1 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_searchTerm);
  swift_beginAccess();
  v13 = v12[1];
  if (v13)
  {
    v14 = *v12;
    v15 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v15 = *v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v51 = v2;
      v52 = v5;
      v50 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE20, &unk_21DC31990);
      v16 = sub_21DBF659C();
      v53 = v7;
      v17 = v16;
      v18 = *(v16 - 8);
      v19 = v6;
      v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_21DC08D00;
      v22 = v21 + v20;
      v23 = v19;
      v24 = v53;
      (*(v18 + 104))(v22, *MEMORY[0x277D45058], v17);
      v25 = v54;
      (*(v24 + 104))(v54, *MEMORY[0x277D45270], v23);
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      sub_21DBF8E0C();
      v26 = sub_21DBFB12C();
      if (*(v21 + 16))
      {
        v27 = objc_allocWithZone(type metadata accessor for TTRSearchQueryPerformer());
        v49 = v26;
        v28 = sub_21D46C3B0(&unk_282EA7470, v21, v26);
        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE08, &unk_21DC14FF0) + 48);
        v30 = v52;
        *v52 = v14;
        *(v30 + 1) = v13;
        (*(v24 + 16))(&v30[v29], v25, v23);
        v31 = v50;
        v32 = v30;
        v33 = v51;
        (*(v50 + 104))(v32, *MEMORY[0x277D44F10], v51);
        v34 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_criteria;
        swift_beginAccess();
        v35 = *&v28[v34];
        v36 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v28[v34] = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_21D21303C(0, v35[2] + 1, 1, v35);
          *&v28[v34] = v35;
        }

        v39 = v35[2];
        v38 = v35[3];
        v40 = v39 + 1;
        if (v39 >= v38 >> 1)
        {
          v48 = v39 + 1;
          v46 = sub_21D21303C((v38 > 1), v39 + 1, 1, v35);
          v40 = v48;
          v35 = v46;
        }

        v35[2] = v40;
        (*(v31 + 32))(v35 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v39, v52, v33);
        *&v28[v34] = v35;
        swift_endAccess();

        (*(v53 + 8))(v54, v23);
      }

      else
      {
        (*(v24 + 8))(v25, v23);

        v36 = 0;
      }

      v41 = *(v1 + v9);
      *(v1 + v9) = v36;
      v42 = v36;

      if (v36)
      {
        v43 = &v42[OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_delegate];
        swift_beginAccess();
        *(v43 + 1) = &protocol witness table for TTRShowSearchResultDataModelSource;
        swift_unknownObjectWeakAssign();
      }

      v44 = *(v1 + v9);
      if (v44)
      {
        v45 = v44;
        TTRSearchQueryPerformer.start()();
      }
    }
  }
}

uint64_t sub_21D65D7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_21DBF6F1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v35 = v25 - v11;
  v25[1] = a1;
  v12 = sub_21DBF6E3C();
  v13 = *(v12 + 16);
  if (v13)
  {
    v25[0] = a2;
    v38 = MEMORY[0x277D84F90];
    v14 = v12;
    sub_21D18F374(0, v13, 0);
    v15 = v14;
    v16 = 0;
    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v36 = v38;
    v29 = v14 + v17;
    v30 = v17;
    v27 = (v7 + 8);
    v28 = v7 + 16;
    v26 = (v7 + 32);
    v33 = v7;
    v34 = v3;
    v31 = v13;
    v32 = v14;
    while (v16 < *(v15 + 16))
    {
      v18 = *(v7 + 72);
      (*(v7 + 16))(v9, v29 + v18 * v16, v6);
      v37 = sub_21DBF6F0C();

      sub_21DBF8E0C();
      sub_21D661E14(&v37, v3, v19);

      sub_21DBF6EDC();
      sub_21DBF6EEC();
      sub_21DBF6EFC();
      v20 = v35;
      sub_21DBF6ECC();
      (*v27)(v9, v6);
      v21 = v36;
      v38 = v36;
      v23 = *(v36 + 16);
      v22 = *(v36 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_21D18F374((v22 > 1), v23 + 1, 1);
        v20 = v35;
        v21 = v38;
      }

      ++v16;
      *(v21 + 16) = v23 + 1;
      v36 = v21;
      (*v26)(v21 + v30 + v23 * v18, v20, v6);
      v15 = v32;
      v7 = v33;
      v3 = v34;
      if (v31 == v16)
      {
        goto LABEL_7;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_7:

    sub_21DBF6E8C();
    sub_21DBF6DEC();
    return sub_21DBF6E9C();
  }

  return result;
}

uint64_t sub_21D65DB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21DBF6D5C();
  v5 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_itemsByID;
  swift_beginAccess();
  v6 = *(a3 + v5);
  sub_21DBF8E0C();
  v7 = sub_21D1AA290(v4, v6);

  if (v7 && (v8 = [v7 title], v7, v8))
  {
    v9 = sub_21DBFA16C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = sub_21DBF6D5C();
  v13 = *(a3 + v5);
  sub_21DBF8E0C();
  v14 = sub_21D1AA290(v12, v13);

  if (v14 && (v15 = [v14 title], v14, v15))
  {
    v16 = sub_21DBFA16C();
    v18 = v17;

    if (v9 != v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0xE000000000000000;
    if (v9)
    {
LABEL_12:
      v19 = sub_21DBFC64C();
      goto LABEL_13;
    }
  }

  if (v11 != v18)
  {
    goto LABEL_12;
  }

  v19 = 0;
LABEL_13:

  return v19 & 1;
}

void sub_21D65DCEC()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_queryPerformer);
}

uint64_t TTRShowSearchResultDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_delegate);

  return v0;
}

uint64_t TTRShowSearchResultDataModelSource.__deallocating_deinit()
{
  TTRShowSearchResultDataModelSource.deinit();

  return swift_deallocClassInstance();
}

void (*sub_21D65DEC4(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_21D65B6D8(v2);
  return sub_21D25A3E8;
}

uint64_t TTRShowSearchResultDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowSearchResultDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C378, &unk_21DC15EA0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = sub_21DBF6F2C();
  (*(*(v14 - 8) + 16))(v13, a2, v14);
  *&v13[*(v11 + 56)] = a3;
  v15 = *(v5 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_dataViewMonitor);
  if (v15)
  {
    v16 = a3;
    if (v15 == a1)
    {
      v17 = v16;
      v18 = sub_21DBF6E3C();
      sub_21D4F5F28(v18);
      v20 = v19;

      if (a3)
      {
        v21 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        swift_beginAccess();
        if (*(v5 + v21))
        {
          v22 = v17;

          sub_21D4F9F64(v22, v20);
        }

        else
        {
          v24 = *(v5 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_store);
          sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
          v25 = v17;
          v26 = sub_21DBFB12C();
          v27 = swift_allocObject();
          *(v27 + 16) = 0;
          v28 = sub_21D87E81C(v24, sub_21D1947D8, v27, v25, v26);
          *(v5 + v21) = v28;

          swift_beginAccess();
          v28[3] = &protocol witness table for TTRShowSearchResultDataModelSource;
          swift_unknownObjectWeakAssign();
        }
      }

      else
      {
      }

      v35 = 0;
      v36 = 0xE000000000000000;
      sub_21DBFBEEC();
      v35 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB00, &unk_21DC20E90);
      v29 = sub_21DBFA1AC();
      v31 = v30;

      v35 = v29;
      v36 = v31;
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
      v32 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v32);
      *(&v34 - 4) = v5;
      *(&v34 - 3) = v13;
      *(&v34 - 2) = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      sub_21DBF625C();
    }
  }

  else
  {
    v23 = a3;
  }

  return sub_21D0CF7E0(v13, &qword_27CE5C378, &unk_21DC15EA0);
}