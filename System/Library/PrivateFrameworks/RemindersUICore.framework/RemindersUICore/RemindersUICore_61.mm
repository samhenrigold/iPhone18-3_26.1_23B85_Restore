uint64_t keypath_get_91Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_21D0D3954(v8 + v9, a5, a3, a4);
}

uint64_t type metadata accessor for TTRIRemindersListReminderCell(uint64_t a1)
{
  result = qword_280D131C8;
  if (!qword_280D131C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D6A417C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D6A41CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D6A4234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D6A429C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21D6A444C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates;
  if (v2[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates])
  {
    if (qword_280D0F140 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_280D0F148);
    oslog = sub_21DBF84AC();
    v5 = sub_21DBFAECC();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v5, "performSubviewUpdates cannot be nested", v6, 2u);
      MEMORY[0x223D46520](v6, -1, -1);
    }
  }

  else
  {
    v2[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates] = 1;
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = v2;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_21D6A56C0;
    *(v10 + 24) = v9;
    aBlock[4] = sub_21D0E6070;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_74;
    v11 = _Block_copy(aBlock);
    v12 = v2;

    [v12 performBatchUpdates_];
    _Block_release(v11);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {
      v2[v3] = 0;
    }
  }
}

void sub_21D6A46B0(unsigned __int8 a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_6;
  }

  if (qword_280D0F140 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_280D0F148);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "makeHidden called outside of performSubviewUpdates", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }

LABEL_6:
    v8 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
    swift_beginAccess();
    v9 = *(v2 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v8) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_21D256D30(v9);
      *(v2 + v8) = v9;
    }

    if (v9[2] > a1)
    {
      break;
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

  v11 = &v9[4 * a1];
  v12 = v11[4];
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v2 + v8) = v9;
  swift_endAccess();
  sub_21D576B08(v12);
}

void sub_21D6A4844()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v12 = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  sub_21DBF8E0C();
  if (v3)
  {
    v4 = 0;
    v5 = -v3;
    do
    {
      v6 = *(v2 + 16);
      v7 = v6 >= v4;
      v8 = v6 - v4;
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = (v2 + 32 + 32 * v4++);
      while (1)
      {
        if (!v9)
        {
          __break(1u);
          return;
        }

        v11 = *v10;
        if (*v10)
        {
          type metadata accessor for TTRIRemindersListReminderCellLinkView();
          if (swift_dynamicCastClass())
          {
            break;
          }
        }

        --v9;
        v10 += 4;
        ++v4;
        if (v5 + v4 == 1)
        {
          goto LABEL_14;
        }
      }

      MEMORY[0x223D42D80](v11);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
    }

    while (v5 + v4);
  }

LABEL_14:
}

uint64_t sub_21D6A4994()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F148);
  v1 = __swift_project_value_buffer(v0, qword_280D0F148);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D6A4A5C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  swift_beginAccess();
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0.0;
  v7 = 0.0;
  do
  {
    v9 = *&v0[v1];
    if (v5 >= *(v9 + 16))
    {
      __break(1u);
      return;
    }

    v10 = (v9 + v2);
    v11 = *(v10 + 4);
    if (v11)
    {
      v12 = *(v10 + 5);
      v13 = v10[6];
      v14 = v10[7];
      v8 = v11;
      if ([v8 isHidden])
      {
        goto LABEL_3;
      }

      if (v4)
      {
        if (!v3)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v15 = v8;
        v4 = v11;
        v7 = v13;
        if (!v3)
        {
LABEL_2:
          [v0 setAlignment:v12 forView:v8 inAxis:0];
          v8 = v3;
          v3 = v11;
          v6 = v14;
LABEL_3:

          goto LABEL_4;
        }
      }

      [v0 setCustomSpacing:v3 afterView:v13];
      goto LABEL_2;
    }

LABEL_4:
    ++v5;
    v2 += 32;
  }

  while (v5 != 11);
  v16 = *MEMORY[0x277D75060];
  v17 = *(MEMORY[0x277D75060] + 16);
  if (v4)
  {
    if (v3)
    {
      v17 = v6 - *&v0[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_superviewBottomLayoutMarginToCompensate];
      v16 = v7;
    }
  }

  [v0 setDirectionalLayoutMargins_];
}

void sub_21D6A4BE0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
  v39 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  swift_beginAccess();
  swift_beginAccess();
  v3 = 0;
  v4 = 0;
  v5 = 7;
  __asm { FMOV            V0.2D, #-1.0 }

  v36 = _Q0;
  v37 = v2;
  v38 = v1;
  do
  {
    v11 = *&v1[v39];
    if (v4 >= *(v11 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v12 = *&v1[v2];
    if (v4 >= v12[2])
    {
      goto LABEL_50;
    }

    v40 = *(v11 + v5 * 8 - 24);
    v41 = *&v12[v5 - 1];
    v42 = *&v12[v5 - 3];
    swift_beginAccess();
    v13 = v40;
    v14 = v40;
    sub_21D15751C(v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v1[v2] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_21D256D30(v12);
      *&v1[v2] = v12;
    }

    if (v4 >= v12[2])
    {
      goto LABEL_51;
    }

    v16 = v3;
    v17 = &v12[v5];
    v18 = v12[v5 - 3];
    *(v17 - 3) = 1;
    *(v17 - 2) = 0;
    *(v17 - 1) = 0;
    *v17 = 0;
    *&v1[v2] = v12;
    swift_endAccess();
    sub_21D576B08(v18);
    if (v42)
    {
      if (v42 != 1)
      {
        v1 = v38;
        swift_beginAccess();
        v3 = *&v38[v39];
        sub_21D15751C(v42);
        v24 = v42;
        v25 = swift_isUniquelyReferenced_nonNull_native();
        *&v38[v39] = v3;
        if ((v25 & 1) == 0)
        {
          v3 = sub_21D256D58(v3);
          *&v38[v39] = v3;
        }

        if (v4 >= v3[2])
        {
          goto LABEL_52;
        }

        v26 = &v3[v5];
        v27 = v3[v5 - 3];
        *(v26 - 1) = v41;
        *(v26 - 3) = v42;
        *&v38[v39] = v3;
        swift_endAccess();

        if (v40)
        {
          v3 = v16;
          v2 = v37;
          if (v40 == v42)
          {
            [v14 setHidden_];
            sub_21D576B08(v40);

            goto LABEL_34;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_58;
          }

          [v38 ttr:v16 replaceArrangedSubviewAtIndex:v24 withView:?];
          [v14 removeFromSuperview];
          sub_21D576B08(v42);
        }

        else
        {
          v2 = v37;
          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_57;
          }

          v3 = v16;
          [v38 ttr:v24 insertArrangedSubview:v16 atIndex:?];
          sub_21D576B08(v42);
        }

        v13 = v42;
LABEL_34:
        sub_21D576B08(v13);
        _VF = __OFADD__(v3, 1);
        v3 = (v3 + 1);
        if (_VF)
        {
          goto LABEL_53;
        }

        goto LABEL_3;
      }

      v3 = v16;
      v1 = v38;
      if (!v40)
      {
        goto LABEL_2;
      }

      v3 = (v16 + 1);
      v2 = v37;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }
    }

    else
    {
      v3 = v16;
      if (v40)
      {
        v19 = v14;
        [v19 setHidden_];
        v1 = v38;
        swift_beginAccess();
        v20 = *&v38[v39];
        v21 = swift_isUniquelyReferenced_nonNull_native();
        *&v38[v39] = v20;
        if ((v21 & 1) == 0)
        {
          v20 = sub_21D256D58(v20);
          *&v38[v39] = v20;
        }

        if (v4 >= v20[2])
        {
          goto LABEL_54;
        }

        v22 = &v20[v5];
        v23 = v20[v5 - 3];
        *(v22 - 3) = v40;
        *(v22 - 1) = v36;
        *&v38[v39] = v20;
        swift_endAccess();

        sub_21D576B08(0);
        v3 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          goto LABEL_56;
        }

LABEL_2:
        v2 = v37;
        goto LABEL_3;
      }

      sub_21D576B08(0);
      v2 = v37;
      v1 = v38;
    }

LABEL_3:
    v5 += 4;
    ++v4;
  }

  while (v5 != 51);
  v28 = [v1 arrangedSubviews];
  if (v28)
  {
    v29 = v28;
    sub_21D114EC8();
    v30 = sub_21DBFA5EC();

    if (!(v30 >> 62))
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_40;
    }

LABEL_59:
    v31 = sub_21DBFBD7C();
LABEL_40:

    if (v3 == v31)
    {
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  if (!v3)
  {
    goto LABEL_48;
  }

LABEL_43:
  if (qword_280D0F140 != -1)
  {
    swift_once();
  }

  v32 = sub_21DBF84BC();
  __swift_project_value_buffer(v32, qword_280D0F148);
  v33 = sub_21DBF84AC();
  v34 = sub_21DBFAECC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_21D0C9000, v33, v34, "arrangedSubviews gets mutated unexpectedly", v35, 2u);
    MEMORY[0x223D46520](v35, -1, -1);
  }

LABEL_48:
  sub_21D6A4A5C();
}

id sub_21D6A529C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_superviewBottomLayoutMarginToCompensate] = 0;
  v4 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  *&v1[v4] = sub_21D442368(0, 0, 0, 0, 11);
  v5 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
  *&v1[v5] = sub_21D442424(1, 0, 0, 0, 11);
  v1[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates] = 0;
  if (a1)
  {
    sub_21D114EC8();
    v6 = sub_21DBFA5DC();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithArrangedSubviews_, v6);

  return v7;
}

id sub_21D6A53D0(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_superviewBottomLayoutMarginToCompensate] = 0;
  v4 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  *&v1[v4] = sub_21D442368(0, 0, 0, 0, 11);
  v5 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
  *&v1[v5] = sub_21D442424(1, 0, 0, 0, 11);
  v1[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

double sub_21D6A54C8()
{

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListCellContentStackView.SubviewUpdate(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListCellContentStackView.SubviewUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_21D6A5620(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[2] = 0;
    result[3] = 0;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_21D6A5654(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

unint64_t TTRIReminderTitleTextViewSuggestions.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  result = sub_21D177598(MEMORY[0x277D84F90]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

void TTRIReminderTitleTextViewSuggestions.init(textEditingSuggestions:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v21 = a2;
    v25 = MEMORY[0x277D84F90];
    v22 = v4;
    sub_21DBFC01C();
    v20 = a1;
    v12 = a1 + 32;
    v13 = (v5 + 16);
    v14 = (v5 + 8);
    v15 = MEMORY[0x277D84F98];
    do
    {
      sub_21DBF56AC();
      v16 = v22;
      (*v13)(v7, v10, v22);
      sub_21D1D9BE4(v12, v24);
      v17 = objc_allocWithZone(type metadata accessor for TTRIReminderTitleTextViewCustomTextSuggestion(0));
      TTRIReminderTitleTextViewCustomTextSuggestion.init(textEditingSuggestionUUID:suggestion:)(v7, v24);
      sub_21D1D9BE4(v12, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v15;
      sub_21D4789AC(v24, v10, isUniquelyReferenced_nonNull_native);
      v15 = v23;
      (*v14)(v10, v16);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v12 += 192;
      --v11;
    }

    while (v11);

    v19 = v25;
    a2 = v21;
  }

  else
  {

    v15 = MEMORY[0x277D84F98];
    v19 = MEMORY[0x277D84F90];
  }

  *a2 = v19;
  a2[1] = v15;
}

double TTRIReminderTitleTextViewSuggestions.textEditingSuggestion(for:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 8);
  type metadata accessor for TTRIReminderTitleTextViewCustomTextSuggestion(0);
  v6 = swift_dynamicCastClass();
  if (!v6 || !*(v5 + 16))
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = OBJC_IVAR___TTRIReminderTitleTextViewCustomTextSuggestion_textEditingSuggestionUUID;
  v12 = a1;
  v9 = sub_21D0F55D0(v7 + v8);
  if ((v10 & 1) == 0)
  {

LABEL_8:
    result = 0.0;
    a2[10] = 0u;
    a2[11] = 0u;
    a2[8] = 0u;
    a2[9] = 0u;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  sub_21D1D9BE4(*(v5 + 56) + 192 * v9, a2);

  return result;
}

uint64_t TTRIReminderTitleTextViewCustomTextSuggestion.textEditingSuggestionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___TTRIReminderTitleTextViewCustomTextSuggestion_textEditingSuggestionUUID;
  v4 = sub_21DBF56BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id TTRIReminderTitleTextViewCustomTextSuggestion.init(textEditingSuggestionUUID:suggestion:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___TTRIReminderTitleTextViewCustomTextSuggestion_textEditingSuggestionUUID;
  v7 = sub_21DBF56BC();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v27, sel_init);
  v10 = *(a2 + 32);
  v11 = v9;
  v10();
  v12 = sub_21DBFA12C();

  [v11 setHeaderText_];

  v13 = (*(a2 + 48))();
  v14 = [v13 string];

  if (!v14)
  {
    sub_21DBFA16C();
    v14 = sub_21DBFA12C();
  }

  [v11 setDisplayText_];

  (*(a2 + 80))(&v24);
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v21 = v24;
  v22 = v25;
  LOBYTE(v23) = v26;
  v18 = sub_21D6A5D54();
  if (v18)
  {
    v19 = v18;
    sub_21D19BAFC(v15, v16, v17);
    [v11 setImage_];

    (*(v8 + 8))(a1, v7);
    sub_21D1D9C40(a2);
  }

  else
  {
    (*(v8 + 8))(a1, v7);
    sub_21D1D9C40(a2);
    sub_21D19BAFC(v15, v16, v17);
  }

  return v11;
}

id sub_21D6A5D54()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 1)
  {
    if (*(v0 + 16))
    {
LABEL_11:
      v5 = sub_21DBFA12C();
      v1 = [objc_opt_self() _systemImageNamed_];

      return v1;
    }

    v3 = v1;
  }

  else
  {
    if (v2 == 2)
    {
      v4 = REMReminderPriorityLevelForPriority();
      if (v4 == 3 || v4 == 2 || v4 == 1)
      {
        goto LABEL_11;
      }
    }

    else if (v2 == 3)
    {
      goto LABEL_11;
    }

    return 0;
  }

  return v1;
}

id TTRIReminderTitleTextViewCustomTextSuggestion.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRIReminderTitleTextViewCustomTextSuggestion.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589B8, &qword_21DC09C18);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC08D00;
  *(v12 + 32) = sub_21D6A6600();
  sub_21DBFB5EC();

  sub_21D0DB414(v19, v17);
  if (!v18)
  {
    sub_21D0CF7E0(v19, &qword_27CE5C690, &unk_21DC11AB0);

    sub_21D0CF7E0(v17, &qword_27CE5C690, &unk_21DC11AB0);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_5;
  }

  v13 = swift_dynamicCast();
  (*(v9 + 56))(v7, v13 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21D0CF7E0(v19, &qword_27CE5C690, &unk_21DC11AB0);

LABEL_5:
    sub_21D0CF7E0(v7, &qword_27CE58370, &unk_21DC091F0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  (*(v9 + 16))(v2 + OBJC_IVAR___TTRIReminderTitleTextViewCustomTextSuggestion_textEditingSuggestionUUID, v11, v8);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1);

  (*(v9 + 8))(v11, v8);
  sub_21D0CF7E0(v19, &qword_27CE5C690, &unk_21DC11AB0);
  return v15;
}

Swift::Void __swiftcall TTRIReminderTitleTextViewCustomTextSuggestion.encode(with:)(NSCoder with)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_encodeWithCoder_, with.super.isa);
  v3 = sub_21DBF566C();
  v4 = sub_21DBFA12C();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

id TTRIReminderTitleTextViewCustomTextSuggestion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIReminderTitleTextViewCustomTextSuggestion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TTRIReminderTitleTextViewCustomTextSuggestion(uint64_t a1)
{
  result = qword_280D16EA8;
  if (!qword_280D16EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D6A6600()
{
  result = qword_27CE5FBB8;
  if (!qword_27CE5FBB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE5FBB8);
  }

  return result;
}

uint64_t sub_21D6A6664(uint64_t a1)
{
  result = sub_21DBF56BC();
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

id TTRIRemindersListLargeImageAttachmentsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t TTRIRemindersListLargeImageAttachmentsView.ViewModel.init(image:attachmentID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void TTRIRemindersListLargeImageAttachmentsView.viewModels.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = sub_21DBF8E0C();
  sub_21D1D86BC(v5, v4);
  LOBYTE(v3) = v6;

  if ((v3 & 1) == 0)
  {
    sub_21D6A6BE4();
    sub_21D6A6DA0();
  }
}

void TTRIRemindersListLargeImageAttachmentsView.fixedWidth.setter(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = &v2[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth];
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = *&a1;
  *(v6 + 8) = v5;
  if (a2)
  {
    if (v8)
    {
      return;
    }

LABEL_7:
    [v2 invalidateIntrinsicContentSize];
    return;
  }

  if (v7 != *&a1)
  {
    LOBYTE(v8) = 1;
  }

  if (v8)
  {
    goto LABEL_7;
  }
}

uint64_t sub_21D6A68B0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5FBC0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5FBC0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRIRemindersListLargeImageAttachmentsView.ViewModel.image.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRIRemindersListLargeImageAttachmentsView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIRemindersListLargeImageAttachmentsView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_delegate;
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

double TTRIRemindersListLargeImageAttachmentsView.viewModels.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

void sub_21D6A6B54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_bridgeObjectRetain_n();
  sub_21D1D86BC(v2, v5);
  LOBYTE(v4) = v6;

  if ((v4 & 1) == 0)
  {
    sub_21D6A6BE4();
    sub_21D6A6DA0();
  }
}

uint64_t sub_21D6A6BE4()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = *(v2 + 16);
  if (v3 >= 4)
  {
    v3 = 4;
  }

  v4 = (2 * v3) | 1;
  v5 = *&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_grid];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v2 + 32;
  v6[4] = 0;
  v6[5] = v4;
  v6[6] = v0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21D6A9F64;
  *(v7 + 24) = v6;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_75;
  v8 = _Block_copy(aBlock);
  swift_bridgeObjectRetain_n();
  v9 = v0;

  [v5 performBatchUpdates_];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21D6A6DA0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels;
  swift_beginAccess();
  v2 = &v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_totalCountViews];
  v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_totalCountViews];
  if (*(*&v0[v1] + 16) < 5uLL)
  {
    if (v3)
    {
      [v3 removeFromSuperview];
      v3 = *v2;
    }

    v5 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    sub_21D0D9834(v3, v5);
  }

  else
  {
    if (v3)
    {
      v4 = v2[1];
    }

    else
    {
      v6 = sub_21D6A8880(v0);
      v4 = v7;
    }

    v8 = *(*&v0[v1] + 16);
    v9 = qword_280D1BAA8;
    v10 = *&v4[OBJC_IVAR____TtC15RemindersUICoreP33_34792CABF8531B98D43671B0DD1043EB8BlurView_label];
    if (v9 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D83B88];
    *(v11 + 16) = xmmword_21DC08D00;
    v13 = MEMORY[0x277D83C10];
    *(v11 + 56) = v12;
    *(v11 + 64) = v13;
    *(v11 + 32) = v8;
    sub_21DBFA13C();

    v14 = sub_21DBFA12C();

    [v10 setText_];
  }
}

void (*TTRIRemindersListLargeImageAttachmentsView.viewModels.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D6A7058;
}

void sub_21D6A7058(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);
  v7 = sub_21DBF8E0C();
  if (a2)
  {
    v8 = sub_21DBF8E0C();
    sub_21D1D86BC(v8, v6);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      sub_21D6A6BE4();
      sub_21D6A6DA0();
    }
  }

  else
  {
    sub_21D1D86BC(v7, v6);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      sub_21D6A6BE4();
      sub_21D6A6DA0();
    }
  }

  free(v3);
}

uint64_t TTRIRemindersListLargeImageAttachmentsView.fixedWidth.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth;
  swift_beginAccess();
  return *v1;
}

void (*TTRIRemindersListLargeImageAttachmentsView.fixedWidth.modify(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_21D6A7214;
}

void sub_21D6A7214(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v3 = ((*a1)[6] + (*a1)[5]);
  v4 = *(*a1 + 32);
  v5 = *v3;
  v6 = *(v3 + 8);
  *v3 = v2;
  *(v3 + 8) = v4;
  if (v4)
  {
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v5 == v2)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  [v1[5] invalidateIntrinsicContentSize];
LABEL_9:

  free(v1);
}

double TTRIRemindersListLargeImageAttachmentsView.cornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D6A72DC(double *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  if ((sub_21D110D14(v5, 0.0000000149011612, v2) & 1) == 0)
  {
    sub_21D6A73B8();
  }
}

void TTRIRemindersListLargeImageAttachmentsView.cornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if ((sub_21D110D14(v4, 0.0000000149011612, a1) & 1) == 0)
  {
    sub_21D6A73B8();
  }
}

void sub_21D6A73B8()
{
  v6 = v0;
  v7 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_imageViews;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 <= 2)
    {
      goto LABEL_3;
    }

LABEL_17:
    if (v9 != 3)
    {
      if (v9 != 4)
      {
        return;
      }

      swift_beginAccess();
      v21 = *(v0 + v7);
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x223D44740](0);
      }

      else
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v22 = *(v21 + 32);
      }

      v23 = v22;
      swift_endAccess();
      v1 = &selRef_keyboardType;
      v24 = [v23 layer];
      v2 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
      swift_beginAccess();
      v3 = &selRef_setAttributedText_;
      [v24 setCornerRadius_];
      v4 = &selRef__setContentViewMarginType_;
      v5 = &selRef_setQueryFragment_;
      [v24 setMaskedCorners_];

      swift_beginAccess();
      v25 = *(v0 + v7);
      if ((v25 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x223D44740](1);
      }

      else
      {
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v26 = *(v25 + 40);
      }

      v27 = v26;
      swift_endAccess();
      v28 = [v27 layer];
      [v28 setCornerRadius_];
      [v28 setMaskedCorners_];

      swift_beginAccess();
      v29 = *(v0 + v7);
      if ((v29 & 0xC000000000000001) != 0)
      {
        goto LABEL_57;
      }

      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v30 = *(v29 + 48);
LABEL_28:
        v31 = v30;
        swift_endAccess();
        v32 = [v31 v1[387]];
        [v32 v3[18]];
        [v32 v5[250]];

        swift_beginAccess();
        v33 = *(v0 + v7);
        if ((v33 & 0xC000000000000001) != 0)
        {
LABEL_62:
          v34 = MEMORY[0x223D44740](3);
          goto LABEL_31;
        }

        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
        {
          v34 = *(v33 + 56);
LABEL_31:
          v16 = v34;
          swift_endAccess();
          v35 = [v16 v1[387]];
LABEL_42:
          v17 = v35;
          [v17 v3[18]];
          goto LABEL_43;
        }

LABEL_65:
        __break(1u);
        return;
      }

      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    swift_beginAccess();
    v36 = *(v0 + v7);
    if ((v36 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x223D44740](0);
    }

    else
    {
      if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_56:
        __break(1u);
LABEL_57:
        v30 = MEMORY[0x223D44740](2);
        goto LABEL_28;
      }

      v37 = *(v36 + 32);
    }

    v38 = v37;
    swift_endAccess();
    v1 = &selRef_keyboardType;
    v39 = [v38 layer];
    v2 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
    swift_beginAccess();
    v3 = &selRef_setAttributedText_;
    [v39 setCornerRadius_];
    v4 = &selRef__setContentViewMarginType_;
    v5 = &selRef_setQueryFragment_;
    [v39 setMaskedCorners_];

    swift_beginAccess();
    v40 = *(v0 + v7);
    if ((v40 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x223D44740](1);
    }

    else
    {
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v41 = *(v40 + 40);
    }

    v42 = v41;
    swift_endAccess();
    v43 = [v42 layer];
    [v43 setCornerRadius_];
    [v43 setMaskedCorners_];

    swift_beginAccess();
    v44 = *(v0 + v7);
    if ((v44 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x223D44740](2);
    }

    else
    {
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_64;
      }

      v45 = *(v44 + 48);
    }

    v16 = v45;
    swift_endAccess();
    v35 = [v16 layer];
    goto LABEL_42;
  }

  v9 = sub_21DBFBD7C();
  if (v9 > 2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v9 != 1)
  {
    if (v9 != 2)
    {
      return;
    }

    swift_beginAccess();
    v10 = *(v0 + v7);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x223D44740](0);
      goto LABEL_8;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 32);
LABEL_8:
      v12 = v11;
      swift_endAccess();
      v1 = &selRef_keyboardType;
      v13 = [v12 layer];
      v2 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
      swift_beginAccess();
      v3 = &selRef_setAttributedText_;
      [v13 setCornerRadius_];
      v4 = &selRef__setContentViewMarginType_;
      v5 = &selRef_setQueryFragment_;
      [v13 setMaskedCorners_];

      swift_beginAccess();
      v14 = *(v0 + v7);
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](1);
        goto LABEL_11;
      }

      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
      {
        v15 = *(v14 + 40);
LABEL_11:
        v16 = v15;
        swift_endAccess();
        v17 = [v16 layer];
        [v17 setCornerRadius_];
LABEL_43:
        [v17 v5[250]];
        goto LABEL_44;
      }

      __break(1u);
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_54;
  }

  swift_beginAccess();
  v18 = *(v0 + v7);
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x223D44740](0);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v19 = *(v18 + 32);
  }

  v16 = v19;
  swift_endAccess();
  v17 = [v16 layer];
  v20 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
  swift_beginAccess();
  [v17 setCornerRadius_];
  [v17 setMaskedCorners_];
LABEL_44:
}

void (*TTRIRemindersListLargeImageAttachmentsView.cornerRadius.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_21D6A7C10;
}

void sub_21D6A7C10(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if ((sub_21D110D14(v5, 0.0000000149011612, v2) & 1) == 0)
  {
    sub_21D6A73B8();
  }

  free(v1);
}

id TTRIRemindersListLargeImageAttachmentsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall TTRIRemindersListLargeImageAttachmentsView.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v3 = &v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth];
  swift_beginAccess();
  if (!*(v3 + 8))
  {
    v2 = *v3;
  }

  [*&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_grid] setFrame_];
  v4 = *&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_totalCountViews];
  if (v4)
  {
    [v4 setFrame_];
  }
}

CGSize __swiftcall TTRIRemindersListLargeImageAttachmentsView.sizeThatFits(_:)(CGSize a1)
{
  width = a1.width;
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth;
  swift_beginAccess();
  v4 = *v3;
  if (*(v3 + 8))
  {
    v4 = width;
  }

  v5 = 157.0;
  result.height = v5;
  result.width = v4;
  return result;
}

void sub_21D6A7F2C(void x0_0, void x1_0, uint64_t a1, unint64_t a2, unint64_t a3)
{
  v8 = a2 >> 1;
  v9 = (a2 >> 1) - a1;
  if (__OFSUB__(a2 >> 1, a1))
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v7 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_imageViews;
    swift_beginAccess();
    v10 = *&v7[v4];
    if (!(v10 >> 62))
    {
      if (v9 == *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      goto LABEL_4;
    }
  }

  if (v9 == sub_21DBFBD7C())
  {
    goto LABEL_65;
  }

LABEL_4:
  v11 = *&v7[v4];
  if (v11 >> 62)
  {
    v12 = sub_21DBFBD7C();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = *&v7[v4];
  v14 = v13 >> 62;
  if (v9 >= v12)
  {
    if (!v14)
    {
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9)
      {
        goto LABEL_30;
      }

LABEL_12:
      v17 = *&v7[v4];
      if (v17 >> 62)
      {
        v6 = sub_21DBFBD7C();
        v18 = v9 - v6;
        if (!__OFSUB__(v9, v6))
        {
LABEL_14:
          if ((v18 & 0x8000000000000000) == 0)
          {
            if (v18)
            {
              type metadata accessor for TTRIRemindersListImageAttachmentsHiddenByAlphaImageView();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v20 = *MEMORY[0x277CEC620];
              v21 = *(MEMORY[0x277CEC620] + 8);
              v22 = v6 + v5 - v8;
              v6 = *MEMORY[0x277CDA138];
              do
              {
                v23 = [objc_allocWithZone(ObjCClassFromMetadata) init];
                [v23 setContentMode_];
                [v23 setClipsToBounds_];
                v24 = [v23 layer];
                [v24 setCornerCurve_];

                [v23 setAccessibilityIgnoresInvertColors_];
                [v23 setLayoutSize:v20 withContentPriority:{v21, 0.0}];
                swift_beginAccess();
                v25 = v23;
                MEMORY[0x223D42D80]();
                if (*((*&v7[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v7[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_21DBFA63C();
                }

                sub_21DBFA6CC();
                swift_endAccess();
              }

              while (!__CFADD__(v22++, 1));
            }

            goto LABEL_30;
          }

LABEL_86:
          __break(1u);
          goto LABEL_87;
        }
      }

      else
      {
        v6 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v18 = v9 - v6;
        if (!__OFSUB__(v9, v6))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_86;
    }

LABEL_29:
    if (sub_21DBFBD7C() >= v9)
    {
      goto LABEL_30;
    }

    goto LABEL_12;
  }

  if (v14)
  {
    v27 = sub_21DBFBD7C();
    v16 = __OFSUB__(v27, v9);
    v9 = v27 - v9;
    if (!v16)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v16 = __OFSUB__(v15, v9);
  v9 = v15 - v9;
  if (v16)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_9:
  swift_beginAccess();
  sub_21D6BFF24(v9);
  swift_endAccess();
LABEL_30:
  v28 = *&v7[v4];
  if (v28 >> 62)
  {
    goto LABEL_82;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {
    if (i > 2)
    {
      if (i != 3)
      {
        if (i != 4)
        {
          goto LABEL_64;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0, &unk_21DC0CB10);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_21DC08D20;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_21DC0AA00;
        swift_beginAccess();
        v36 = *&v7[v4];
        if ((v36 & 0xC000000000000001) != 0)
        {
          *(v6 + 32) = MEMORY[0x223D44740](0, *&v7[v4]);
          v41 = MEMORY[0x223D44740](1, v36);
          goto LABEL_46;
        }

        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v37)
        {
          v38 = *(v36 + 32);
          *(v6 + 32) = v38;
          if (v37 == 1)
          {
            goto LABEL_99;
          }

          v39 = *(v36 + 40);
          v40 = v38;
          v41 = v39;
LABEL_46:
          *(v6 + 40) = v41;
          *(v9 + 32) = v6;
          v42 = swift_allocObject();
          v5 = v42;
          *(v42 + 16) = xmmword_21DC0AA00;
          v6 = *&v7[v4];
          if ((v6 & 0xC000000000000001) == 0)
          {
            v43 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v43 < 3)
            {
              goto LABEL_101;
            }

            v44 = *(v6 + 48);
            *(v42 + 32) = v44;
            if (v43 == 3)
            {
              goto LABEL_103;
            }

            v45 = *(v6 + 56);
LABEL_62:
            v57 = v44;
            v58 = v45;
LABEL_63:
            v59 = v58;
            swift_endAccess();
            *(v5 + 40) = v59;
            *(v9 + 40) = v5;
            goto LABEL_64;
          }

LABEL_95:
          *(v5 + 32) = MEMORY[0x223D44740](2, v6);
          v74 = 3;
LABEL_97:
          v58 = MEMORY[0x223D44740](v74, v6);
          goto LABEL_63;
        }

LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0, &unk_21DC0CB10);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_21DC08D20;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21DC0AA00;
      swift_beginAccess();
      v49 = *&v7[v4];
      if ((v49 & 0xC000000000000001) != 0)
      {
        *(v6 + 32) = MEMORY[0x223D44740](0, *&v7[v4]);
        v54 = MEMORY[0x223D44740](1, v49);
      }

      else
      {
        v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v50)
        {
          goto LABEL_94;
        }

        v51 = *(v49 + 32);
        *(v6 + 32) = v51;
        if (v50 == 1)
        {
          goto LABEL_100;
        }

        v52 = *(v49 + 40);
        v53 = v51;
        v54 = v52;
      }

      *(v6 + 40) = v54;
      *(v9 + 32) = v6;
      v55 = swift_allocObject();
      v5 = v55;
      *(v55 + 16) = xmmword_21DC0AA00;
      v6 = *&v7[v4];
      if ((v6 & 0xC000000000000001) == 0)
      {
        v56 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v56)
        {
          goto LABEL_102;
        }

        v44 = *(v6 + 32);
        *(v55 + 32) = v44;
        if (v56 < 3)
        {
          goto LABEL_104;
        }

        v45 = *(v6 + 48);
        goto LABEL_62;
      }

      *(v55 + 32) = MEMORY[0x223D44740](0, *&v7[v4]);
      v74 = 2;
      goto LABEL_97;
    }

    if (i != 1)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0, &unk_21DC0CB10);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21DC08D00;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21DC09CF0;
    swift_beginAccess();
    v46 = *&v7[v4];
    if ((v46 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x223D44740](0);
    }

    else
    {
      if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_93;
      }

      v47 = *(v46 + 32);
    }

    v48 = v47;
    swift_endAccess();
    *(v5 + 32) = v48;
    *(v9 + 32) = v5;
LABEL_64:
    sub_21D6A73B8();
    v60 = *(v4 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_grid);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100, &qword_21DC18230);
    v61 = sub_21DBFA5DC();

    [v60 setArrangedSubviewRows_];

LABEL_65:
    v62 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels;
    swift_beginAccess();
    v63 = *(v4 + v62);
    v4 = *&v7[v4];
    v64 = *(v63 + 16);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (!v64)
    {
LABEL_79:

      return;
    }

    v65 = 0;
    v66 = (v63 + 40);
    v6 = v4 >> 62;
    while (v65 < *(v63 + 16))
    {
      v67 = *(v66 - 1);
      v68 = *v66;
      if (v6)
      {
        if (v65 == sub_21DBFBD7C())
        {
LABEL_78:

          goto LABEL_79;
        }
      }

      else if (v65 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_78;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v70 = v67;
        v73 = v68;
        v72 = MEMORY[0x223D44740](v65, v4);
      }

      else
      {
        if (v65 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v69 = *(v4 + 8 * v65 + 32);
        v70 = v67;
        v71 = v68;
        v72 = v69;
      }

      v7 = v72;
      ++v65;
      [v72 setImage_];

      v66 += 2;
      if (v64 == v65)
      {
        goto LABEL_79;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    ;
  }

  if (i != 2)
  {
    goto LABEL_64;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0, &unk_21DC0CB10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21DC0AA00;
  swift_beginAccess();
  v6 = *&v7[v4];
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_87:
    *(v5 + 32) = MEMORY[0x223D44740](0, v6);
    v34 = MEMORY[0x223D44740](1, v6);
    goto LABEL_39;
  }

  v30 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    __break(1u);
    goto LABEL_92;
  }

  v31 = *(v6 + 32);
  *(v5 + 32) = v31;
  if (v30 != 1)
  {
    v32 = *(v6 + 40);
    v33 = v31;
    v34 = v32;
LABEL_39:
    v35 = v34;
    swift_endAccess();
    *(v5 + 40) = v35;
    *(v9 + 32) = v5;
    goto LABEL_64;
  }

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
  __break(1u);
LABEL_104:
  __break(1u);
}

id sub_21D6A8880(char *a1)
{
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(type metadata accessor for BlurView()) initWithEffect_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC09CF0;
  *(v4 + 32) = v3;
  v5 = objc_allocWithZone(MEMORY[0x277CEC628]);
  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v6 = v3;
  v7 = sub_21DBFA5DC();

  v8 = [v5 initWithArrangedSubviews_];

  v9 = v8;
  [v9 setDirectionalLayoutMargins_];
  [v9 setLayoutMarginsRelativeArrangement_];
  [v9 setPreservesSuperviewLayoutMargins_];

  [v9 setHorizontalAlignment_];
  [v9 setVerticalAlignment_];
  [a1 addSubview_];
  v10 = &a1[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_totalCountViews];
  v11 = *&a1[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_totalCountViews];
  v12 = *(v10 + 1);
  *v10 = v9;
  *(v10 + 1) = v6;
  v13 = v6;
  v14 = v9;
  sub_21D0D9834(v11, v12);
  return v14;
}

void sub_21D6A8A5C(void *a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_imageViews;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v18 = v1;
  if (v4 >> 62)
  {
LABEL_21:
    v5 = sub_21DBFBD7C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_21DBF8E0C();
  if (v5)
  {
    v6 = 0;
    v7 = 40;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      [a1 locationInView_];
      if ([v9 pointInside:0 withEvent:?])
      {
        break;
      }

      v7 += 16;
      ++v6;
      if (v10 == v5)
      {
        goto LABEL_13;
      }
    }

    v11 = v18 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v11 + 8);
      ObjectType = swift_getObjectType();
      v14 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels;
      swift_beginAccess();
      v15 = *(v18 + v14);
      if (v6 >= *(v15 + 16))
      {
        __break(1u);
      }

      else
      {
        v16 = *(v12 + 8);
        v17 = *(v15 + v7);
        v16(v18, v17, ObjectType, v12);

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  else
  {
LABEL_13:
  }
}

id sub_21D6A8D48(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = [objc_opt_self() whiteColor];
  [v5 setTextColor_];

  [v5 setAdjustsFontForContentSizeCategory_];
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v7 = sub_21D900614(6);
  [v5 setFont_];

  *&v2[OBJC_IVAR____TtC15RemindersUICoreP33_34792CABF8531B98D43671B0DD1043EB8BlurView_label] = v5;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v15, sel_initWithEffect_, a1);
  [v8 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview_];
  v10 = [v9 contentView];
  [v10 addSubview_];

  v11 = [v9 contentView];
  [v11 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview_];

  v12 = [v9 layer];
  [v12 setCornerRadius_];

  v13 = [v9 layer];
  [v13 setCornerCurve_];

  [v9 setClipsToBounds_];
  return v9;
}

void TTRIRemindersListLargeImageAttachmentsView.attachmentAndView(at:)(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_imageViews;
  swift_beginAccess();
  v6 = *&v2[v5];
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v23 = v5;
    sub_21DBF8E0C();
    v8 = 40;
    for (j = 4; ; ++j)
    {
      v5 = j - 4;
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223D44740](j - 4, v6);
      }

      else
      {
        if (v5 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v6 + 8 * j);
      }

      v11 = v10;
      v12 = [v10 image];
      if (!v12)
      {
        break;
      }

      [v2 convertPoint:v11 toCoordinateSpace:{a1, a2}];
      v13 = [v11 pointInside:0 withEvent:?];

      if (v13)
      {

        v15 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels;
        swift_beginAccess();
        v16 = *&v2[v15];
        if (v5 >= *(v16 + 16))
        {
          return;
        }

        v17 = *(v16 + v8);
        swift_beginAccess();
        v18 = *&v2[v23];
        if ((v18 & 0xC000000000000001) != 0)
        {
          v22 = v17;
          MEMORY[0x223D44740](j - 4, v18);
        }

        else
        {
          if (v5 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v19 = *(v18 + 8 * j);
          v20 = v17;
          v21 = v19;
        }

        swift_endAccess();
        return;
      }

      v14 = j - 3;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_21;
      }

LABEL_14:
      v8 += 16;
      if (v14 == i)
      {

        return;
      }
    }

    v14 = j - 3;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_14;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }
}

id sub_21D6A9438(void *a1)
{
  type metadata accessor for TTRIQuickLookImageAttachmentPreviewItem(0);
  if (!swift_dynamicCastClass())
  {
    if (qword_27CE56B88 != -1)
    {
LABEL_19:
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE5FBC0);
    swift_unknownObjectRetain();
    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAEBC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29[0] = v16;
      *v15 = 136315138;
      swift_getObjectType();
      v17 = sub_21DBFC8EC();
      v19 = sub_21D0CDFB4(v17, v18, v29);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21D0C9000, v13, v14, "TTRIRemindersListLargeImageAttachmentsView: unsupported QLPreviewItem type {type: %s}", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223D46520](v16, -1, -1);
      MEMORY[0x223D46520](v15, -1, -1);
    }

    return 0;
  }

  v2 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels;
  swift_beginAccess();
  v28 = v1;
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  if (!v4)
  {
LABEL_7:
    swift_unknownObjectRelease();

    return 0;
  }

  v5 = 0;
  v6 = (v3 + 40);
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v7 = *(v6 - 1);
    v8 = *v6;
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v9 = v7;
    v10 = v8;
    v11 = sub_21DBFB63C();

    if (v11)
    {
      break;
    }

    ++v5;
    v6 += 2;
    if (v4 == v5)
    {
      goto LABEL_7;
    }
  }

  v20 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_imageViews;
  v21 = v28;
  swift_beginAccess();
  v22 = *(v28 + v20);
  if (!(v22 >> 62))
  {
    if (v5 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      do
      {
        v23 = swift_beginAccess();
        v24 = *(v21 + v20);
        if ((v24 & 0xC000000000000001) != 0)
        {
          goto LABEL_22;
        }

        if (v5 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v25 = *(v24 + 8 * v5 + 32);
          goto LABEL_17;
        }

        __break(1u);
LABEL_24:
        v21 = v28;
      }

      while (v5 < v23);
    }

    swift_unknownObjectRelease();
    return 0;
  }

  v23 = sub_21DBFBD7C();
  if ((v23 & 0x8000000000000000) == 0)
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_22:
  v25 = MEMORY[0x223D44740](v5);
LABEL_17:
  v26 = v25;
  swift_endAccess();
  swift_unknownObjectRelease();
  return v26;
}

id sub_21D6A98FC(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

uint64_t _s15RemindersUICore42TTRIRemindersListLargeImageAttachmentsViewC0H5ModelV2eeoiySbAE_AEtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_21D0D8CF0(0, &qword_280D17688, 0x277D755B8);
      v4 = v3;
      v5 = v2;
      v6 = sub_21DBFB63C();

      if (v6)
      {
        goto LABEL_4;
      }
    }
  }

  else if (!v3)
  {
LABEL_4:
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    return sub_21DBFB63C() & 1;
  }

  return 0;
}

id _s15RemindersUICore42TTRIRemindersListLargeImageAttachmentsViewC5frameACSo6CGRectV_tcfc_0()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels] = MEMORY[0x277D84F90];
  v3 = &v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth];
  *v3 = 0;
  v3[8] = 1;
  *&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius] = 0x4028000000000000;
  *&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_imageViews] = v2;
  v4 = &v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_totalCountViews];
  v5 = type metadata accessor for CustomGrid();
  *v4 = 0;
  *(v4 + 1) = 0;
  v6 = objc_allocWithZone(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100, &qword_21DC18230);
  v7 = sub_21DBFA5DC();
  v8 = [v6 initWithArrangedSubviewRows_];

  v9 = v8;
  [v9 setColumnSpacing_];
  [v9 setRowSpacing_];
  [v9 setHorizontalAlignment_];
  [v9 setVerticalAlignment_];
  [v9 setHorizontalDistribution_];
  [v9 setVerticalDistribution_];
  *&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_grid] = v9;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 addSubview_];
  v11 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v10 action:sel_didTapImage_];
  [v10 addGestureRecognizer_];

  return v10;
}

void _s15RemindersUICore42TTRIRemindersListLargeImageAttachmentsViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels) = MEMORY[0x277D84F90];
  v2 = v0 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius) = 0x4028000000000000;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_imageViews) = v1;
  v3 = (v0 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_totalCountViews);
  *v3 = 0;
  v3[1] = 0;
  sub_21DBFC31C();
  __break(1u);
}

void *sub_21D6A9D20(void *a1, double *a2)
{
  v3 = sub_21D6A9438(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 image];
  if (v5)
  {
    v6 = v5;
    [v5 size];
    v8 = v7;
    v10 = v9;

    [v4 bounds];
    v15 = v13;
    v16 = v14;
    v17 = v13 / v8;
    v18 = v14 / v10;
    if (v13 / v8 >= v14 / v10)
    {
      v20 = v14;
      v19 = v13;
      if (v18 < v17)
      {
        v20 = v10 * v17;
        v19 = v13;
      }
    }

    else
    {
      v19 = v8 * v18;
      v20 = v14;
    }

    v22 = v11;
    v23 = v12;
    MidX = CGRectGetMidX(*&v11);
    v27.origin.x = v22;
    v27.origin.y = v23;
    v27.size.width = v15;
    v27.size.height = v16;
    MidY = CGRectGetMidY(v27);
    *a2 = MidX - v19 * 0.5;
    a2[1] = MidY - v20 * 0.5;
    a2[2] = v19;
    a2[3] = v20;
    v21 = v4;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t assignWithCopy for TTRIRemindersListLargeImageAttachmentsView.ViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

uint64_t TTRIRemindersListCellAutoCompleteSuggestionsStackView.leadingShiftForReminderTitleAlignment.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_leadingShiftForReminderTitleAlignment;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  result = sub_21D110D14(v4, 0.0000000149011612, a1);
  if ((result & 1) == 0)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void TTRIRemindersListCellAutoCompleteSuggestionsStackView.setExclusiveHighlighted(on:)(char *a1)
{
  sub_21D6AC05C();
  v3 = v2;
  if (v2 >> 62)
  {
    v4 = sub_21DBFBD7C();
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  v5 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223D44740](v5, v3);
    }

    else
    {
      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    if (a1)
    {
      v8 = v6 == a1;
    }

    else
    {
      v8 = 0;
    }

    v9 = !v8;
    [*&v6[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight] setHidden_];
  }

  while (v4 != v5);
LABEL_16:
}

uint64_t TTRIRemindersListCellAutoCompleteSuggestionsStackView.cachedView<A>(ofType:at:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*(v3 + OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_6;
  }

  if (qword_27CE56B90 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE5FD40);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAECC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "cachedView called outside of performSubviewUpdates", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }

LABEL_6:
    v10 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_subviewInfos;
    swift_beginAccess();
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_14;
    }

    v11 = *(v4 + v10);
    if (*(v11 + 16) > a2)
    {
      break;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
  }

  v12 = *(v11 + 32 * a2 + 32);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

id TTRIRemindersListCellAutoCompleteSuggestionsStackView.createRow()(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_listLayout);
  v3 = objc_allocWithZone(type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row());
  v4 = 0.0;
  if (v2)
  {
    v4 = 16.0;
  }

  v5 = sub_21D6ACE54(v4);
  swift_unknownObjectWeakAssign();
  return v5;
}

_OWORD *TTRIRemindersListCellAutoCompleteSuggestionsStackView.RowConfiguration.init(suggestion:query:isLast:leftInset:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = result[9];
  *(a5 + 128) = result[8];
  *(a5 + 144) = v6;
  v7 = result[11];
  *(a5 + 160) = result[10];
  *(a5 + 176) = v7;
  v8 = result[5];
  *(a5 + 64) = result[4];
  *(a5 + 80) = v8;
  v9 = result[7];
  *(a5 + 96) = result[6];
  *(a5 + 112) = v9;
  v10 = result[1];
  *a5 = *result;
  *(a5 + 16) = v10;
  v11 = result[3];
  *(a5 + 32) = result[2];
  *(a5 + 48) = v11;
  *(a5 + 192) = a2;
  *(a5 + 200) = a3;
  *(a5 + 208) = a4;
  *(a5 + 216) = a6;
  return result;
}

uint64_t TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_configuration;
  swift_beginAccess();
  sub_21D6AED74(a1, v1 + v3);
  swift_endAccess();
  sub_21D6ACB60();
  return sub_21D6AEDE4(a1);
}

void TTRIRemindersListCellAutoCompleteSuggestionsStackView.makeVisible(_:at:alignment:beforeSpacing:bottomMarginIfLast:)(id a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  if (*(v5 + OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_6;
  }

  if (qword_27CE56B90 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE5FD40);
    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAECC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21D0C9000, v13, v14, "makeVisible called outside of performSubviewUpdates", v15, 2u);
      MEMORY[0x223D46520](v15, -1, -1);
    }

LABEL_6:
    v16 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_subviewUpdates;
    swift_beginAccess();
    v17 = *(v6 + v16);
    a1 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + v16) = v17;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = sub_21D256D44(v17);
      *(v6 + v16) = v17;
      if ((a2 & 0x8000000000000000) != 0)
      {
LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    if (v17[2] > a2)
    {
      break;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
  }

  v19 = &v17[4 * a2];
  v20 = *(v19 + 4);
  *(v19 + 4) = a1;
  *(v19 + 5) = a3;
  v19[6] = a4;
  v19[7] = a5;
  *(v6 + v16) = v17;
  swift_endAccess();
  sub_21D576B08(v20);
}

Swift::Void __swiftcall TTRIRemindersListCellAutoCompleteSuggestionsStackView.makeHidden(at:)(Swift::Int at)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_6;
  }

  if (qword_27CE56B90 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5FD40);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "makeHidden called outside of performSubviewUpdates", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }

LABEL_6:
    v8 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_subviewUpdates;
    swift_beginAccess();
    v9 = *(v2 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v8) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (at < 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = sub_21D256D44(v9);
      *(v2 + v8) = v9;
      if (at < 0)
      {
LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    if (v9[2] > at)
    {
      break;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
  }

  v11 = &v9[4 * at];
  v12 = v11[4];
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v2 + v8) = v9;
  swift_endAccess();
  sub_21D576B08(v12);
}

void TTRIRemindersListCellAutoCompleteSuggestionsStackView.performSubviewUpdates(block:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_isPerformingSubviewUpdates;
  if (v2[OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_isPerformingSubviewUpdates])
  {
    if (qword_27CE56B90 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5FD40);
    oslog = sub_21DBF84AC();
    v5 = sub_21DBFAECC();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v5, "performSubviewUpdates cannot be nested", v6, 2u);
      MEMORY[0x223D46520](v6, -1, -1);
    }
  }

  else
  {
    v2[OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_isPerformingSubviewUpdates] = 1;
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = v2;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_21D6AEE4C;
    *(v10 + 24) = v9;
    aBlock[4] = sub_21D0E6070;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_76;
    v11 = _Block_copy(aBlock);
    v12 = v2;

    [v12 performBatchUpdates_];
    _Block_release(v11);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {
      v2[v3] = 0;
    }
  }
}

void TTRIRemindersListCellAutoCompleteSuggestionsStackView.handleIfNecessary(_:for:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &unk_27CE60080, 0x277D758B8);
    sub_21D6AEE84();
    sub_21DBFAB5C();
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
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
    sub_21DBF8E0C();
    v5 = 0;
  }

  v17 = v4;
  v10 = (v4 + 64) >> 6;
  while (v2 < 0)
  {
    if (!sub_21DBFBDBC() || (sub_21D0D8CF0(0, &unk_27CE60080, 0x277D758B8), swift_dynamicCast(), (v13 = v18) == 0))
    {
LABEL_20:
      sub_21D0CFAF8(v2);
      return;
    }

LABEL_18:
    v14 = [v13 key];
    if (v14)
    {
      v15 = v14;
      v16 = sub_21D6AC168(v14);

      if (v16)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  v11 = v5;
  v12 = v6;
  if (v6)
  {
LABEL_14:
    v6 = (v12 - 1) & v12;
    v13 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v5);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_21D6AAB7C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5FD40);
  v1 = __swift_project_value_buffer(v0, qword_27CE5FD40);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *TTRIRemindersListCellAutoCompleteSuggestionsStackView.backgroundView.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_backgroundView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TTRIRemindersListCellAutoCompleteSuggestionsStackView.backgroundView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_backgroundView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double TTRIRemindersListCellAutoCompleteSuggestionsStackView.leadingShiftForReminderTitleAlignment.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_leadingShiftForReminderTitleAlignment;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21D6AAD8C(double *a1, char **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_leadingShiftForReminderTitleAlignment;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  result = sub_21D110D14(v5, 0.0000000149011612, v2);
  if ((result & 1) == 0)
  {
    return [v3 setNeedsLayout];
  }

  return result;
}

void (*TTRIRemindersListCellAutoCompleteSuggestionsStackView.leadingShiftForReminderTitleAlignment.modify(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_leadingShiftForReminderTitleAlignment;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_21D6AAE9C;
}

void sub_21D6AAE9C(id **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  if ((sub_21D110D14(v5, 0.0000000149011612, *&v2) & 1) == 0)
  {
    [v1[4] setNeedsLayout];
  }

  free(v1);
}

char *TTRIRemindersListCellAutoCompleteSuggestionsStackView.init(listLayout:)(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  LOBYTE(a1) = *a1;
  *&v1[OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_backgroundView] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_leadingShiftForReminderTitleAlignment] = 0;
  v4 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_subviewInfos;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59BC0, &qword_21DC0CE38);
  v5 = sub_21DBFA69C();
  *(v5 + 16) = 3;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *&v1[v4] = v5;
  v6 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_subviewUpdates;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59BD0, &unk_21DC22620);
  v7 = sub_21DBFA69C();
  v7[2] = 3;
  v7[4] = 1;
  v7[5] = 0;
  v7[6] = 0;
  v7[7] = 0;
  v7[8] = 1;
  v7[9] = 0;
  v7[10] = 0;
  v7[11] = 0;
  v7[12] = 1;
  v7[13] = 0;
  v7[14] = 0;
  v7[15] = 0;
  *&v1[v6] = v7;
  v1[OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_isPerformingSubviewUpdates] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_superviewBottomLayoutMarginToCompensate] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_listLayout] = a1;
  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v8 = sub_21DBFA5DC();
  v34.receiver = v1;
  v34.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v34, sel_initWithArrangedSubviews_, v8);

  v10 = v9;
  [v10 setAxis_];
  [v10 setAlignment_];
  [v10 setDistribution_];
  [v10 setSpacing_];
  v11 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_listLayout;
  v12 = 8.0;
  if (v10[OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_listLayout])
  {
    v12 = 0.0;
  }

  [v10 setDirectionalLayoutMargins_];
  [v10 setLayoutMarginsRelativeArrangement_];
  [v10 setPreservesSuperviewLayoutMargins_];
  v13 = [objc_opt_self() quaternarySystemFillColor];
  v14 = [objc_opt_self() traitCollectionWithAccessibilityContrast_];
  v15 = [v13 resolvedColorWithTraitCollection_];

  v16 = objc_allocWithZone(type metadata accessor for TTRIBackgroundView());
  v17 = v15;
  v18 = [v16 initWithFrame_];
  v19 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_customCornerRadius;
  swift_beginAccess();
  *&v18[v19] = 0x4028000000000000;
  v20 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  swift_beginAccess();
  v21 = *&v18[v20];
  *&v18[v20] = v17;

  v22 = v18;
  [v22 setAutoresizingMask_];
  if (v10[v11])
  {
    v23 = 12;
  }

  else
  {
    v23 = 15;
  }

  v24 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_roundedCorners;
  swift_beginAccess();
  *&v22[v24] = v23;
  [v22 setNeedsLayout];
  [v10 insertSubview:v22 atIndex:0];
  v25 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_backgroundView;
  swift_beginAccess();
  v26 = *&v10[v25];
  *&v10[v25] = v22;

  v27 = qword_280D16808;
  v28 = v10;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_21DBFA12C();
  [v28 setAccessibilityLabel_];

  [v28 setAccessibilityContainerType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65630, &unk_21DC22100);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_21DC08D00;
  v31 = sub_21DBF8B3C();
  v32 = MEMORY[0x277D74CB8];
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  sub_21DBFB5CC();

  swift_unknownObjectRelease();

  return v28;
}

id TTRIRemindersListCellAutoCompleteSuggestionsStackView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall TTRIRemindersListCellAutoCompleteSuggestionsStackView.layoutSubviews()()
{
  v46.receiver = v0;
  v46.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v46, sel_layoutSubviews);
  if (v0[OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_listLayout])
  {
    return;
  }

  v1 = [v0 superview];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v1 bounds];
  Width = CGRectGetWidth(v47);
  [v2 directionalLayoutMargins];
  v5 = v4;
  [v2 directionalLayoutMargins];
  v7 = v6;
  v8 = [v0 subviews];
  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v9 = sub_21DBFA5EC();

  if (v9 >> 62)
  {
LABEL_37:
    v10 = sub_21DBFBD7C();
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_38:

    return;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_38;
  }

LABEL_5:
  v11 = Width - v5 - v7;
  v12 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_leadingShiftForReminderTitleAlignment;
  v13 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_backgroundView;
  v14 = v9 & 0xC000000000000001;
  swift_beginAccess();
  swift_beginAccess();
  v15 = 0;
  v37 = v9 + 32;
  v38 = v9 & 0xFFFFFFFFFFFFFF8;
  v44 = v2;
  v45 = v0;
  v42 = v10;
  v43 = v9;
  v40 = v13;
  v41 = v12;
  v39 = v9 & 0xC000000000000001;
  while (1)
  {
    if (v14)
    {
      v16 = MEMORY[0x223D44740](v15, v9);
    }

    else
    {
      if (v15 >= *(v38 + 16))
      {
        goto LABEL_36;
      }

      v16 = *(v37 + 8 * v15);
    }

    v17 = v16;
    if (__OFADD__(v15++, 1))
    {
      goto LABEL_35;
    }

    [v16 frame];
    v20 = v19;
    v7 = v21;
    v5 = *&v0[v12];
    Width = v11 - v5;
    v22 = *&v0[v13];
    if (v22 && v17 == v22)
    {
      v23 = [v0 arrangedSubviews];
      if (v23)
      {
        v24 = v23;
        v25 = sub_21DBFA5EC();

        if (!(v25 >> 62))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v25 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
LABEL_16:
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v26)
          {
            goto LABEL_17;
          }

LABEL_28:
          v7 = 0.0;
LABEL_29:
          v5 = v5 + -16.0;
          Width = Width + 16.0;

          v20 = 8.0;
          v2 = v44;
          v0 = v45;
          v10 = v42;
          v9 = v43;
          v13 = v40;
          v12 = v41;
          v14 = v39;
          goto LABEL_30;
        }
      }

      v26 = sub_21DBFBD7C();
      if (v26)
      {
LABEL_17:
        v27 = 0;
        v9 = v25 & 0xC000000000000001;
        v0 = (v25 & 0xFFFFFFFFFFFFFF8);
        v7 = 0.0;
        while (1)
        {
          if (v9)
          {
            v28 = MEMORY[0x223D44740](v27, v25);
          }

          else
          {
            if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_34;
            }

            v28 = *(v25 + 8 * v27 + 32);
          }

          v29 = v28;
          v2 = (v27 + 1);
          if (__OFADD__(v27, 1))
          {
            break;
          }

          Height = 0.0;
          if (([v28 isHidden] & 1) == 0)
          {
            [v29 frame];
            Height = CGRectGetHeight(v48);
          }

          v7 = v7 + Height;
          ++v27;
          if (v2 == v26)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      goto LABEL_28;
    }

LABEL_30:
    v31 = [v2 effectiveUserInterfaceLayoutDirection];
    if (v31)
    {
      break;
    }

LABEL_6:
    [v17 setFrame_];

    if (v15 == v10)
    {
      goto LABEL_38;
    }
  }

  if (v31 == 1)
  {
    v49.origin.x = v5;
    v49.origin.y = v20;
    v49.size.width = Width;
    v49.size.height = v7;
    v32 = v11 - CGRectGetMinX(v49);
    v50.origin.x = v5;
    v50.origin.y = v20;
    v50.size.width = Width;
    v50.size.height = v7;
    v5 = v32 - CGRectGetWidth(v50);
    goto LABEL_6;
  }

  if (qword_27CE56F38 != -1)
  {
    swift_once();
  }

  v33 = sub_21DBF84BC();
  __swift_project_value_buffer(v33, qword_27CE64930);
  v34 = MEMORY[0x277D84F90];
  v35 = sub_21D17716C(MEMORY[0x277D84F90]);
  v36 = sub_21D17716C(v34);
  sub_21DAEAB00("unknown language direction", 26, 2, v35, v36);
  __break(1u);
}

void sub_21D6AB900()
{
  v2 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_subviewUpdates;
  v61 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_subviewInfos;
  swift_beginAccess();
  swift_beginAccess();
  v3 = 0;
  v4 = 0;
  v5 = 3;
  __asm { FMOV            V0.2D, #-1.0 }

  v55 = _Q0;
  v59 = v2;
  do
  {
    v56 = v4;
    if (v3 > 3)
    {
      v5 = v3;
    }

    v60 = v5;
    v11 = 32 * v3 + 32;
    v12 = v3;
    while (1)
    {
      if (v60 == v12)
      {
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v13 = *&v1[v61];
      if (v12 >= *(v13 + 16) || (v14 = *&v1[v2], v12 >= v14[2]))
      {
LABEL_40:
        v4 = v56;
        goto LABEL_41;
      }

      v15 = v13 + v11;
      v16 = *v15;
      v0 = *(v15 + 8);
      v62 = *(v14 + v11 + 16);
      v63 = *(v14 + v11);
      swift_beginAccess();
      v58 = v16;
      sub_21D15751C(v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v1[v2] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_21D256D44(v14);
        *&v1[v2] = v14;
      }

      if (v12 >= v14[2])
      {
        goto LABEL_77;
      }

      v57 = v0;
      v18 = (v14 + v11);
      v19 = *(v14 + v11);
      v0 = *(v14 + v11 + 8);
      *v18 = 1;
      v18[1] = 0;
      v18[2] = 0;
      v18[3] = 0;
      *&v1[v2] = v14;
      swift_endAccess();
      sub_21D576B08(v19);
      if (v63)
      {
        break;
      }

      if (v16)
      {
        v26 = v58;
        [v26 setHidden_];
        [*&v26[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight] setHidden_];
        swift_beginAccess();
        v27 = *&v1[v61];
        v28 = swift_isUniquelyReferenced_nonNull_native();
        *&v1[v61] = v27;
        if ((v28 & 1) == 0)
        {
          v27 = sub_21D256D6C(v27);
          *&v1[v61] = v27;
        }

        if (v12 < v27[2])
        {
          v29 = v27 + v11;
          v0 = *(v27 + v11);
          *v29 = v16;
          *(v29 + 1) = v57;
          *(v29 + 1) = v55;
          *&v1[v61] = v27;
          swift_endAccess();

          sub_21D576B08(0);
          v4 = v56 + 1;
          if (!__OFADD__(v56, 1))
          {
            v2 = v59;
            goto LABEL_38;
          }

LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          return;
        }

LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      sub_21D576B08(0);
      v2 = v59;
LABEL_7:
      ++v12;
      v11 += 32;
      if (v12 == 3)
      {
        goto LABEL_40;
      }
    }

    if (v63 != 1)
    {
      swift_beginAccess();
      v20 = *&v1[v61];
      sub_21D15751C(v63);
      v21 = v63;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *&v1[v61] = v20;
      v2 = v59;
      if ((v22 & 1) == 0)
      {
        v20 = sub_21D256D6C(v20);
        *&v1[v61] = v20;
      }

      if (v12 >= v20[2])
      {
        __break(1u);
        goto LABEL_91;
      }

      v23 = (v20 + v11);
      v24 = *(v20 + v11);
      *v23 = v63;
      v23[1] = v62;
      *&v1[v61] = v20;
      swift_endAccess();

      if (v16)
      {
        v25 = v56;
        if (v16 == v63)
        {
          [v58 setHidden_];
          v0 = *(&v62 + 1);
          sub_21D576B08(v16);
          sub_21D576B08(v16);

          goto LABEL_37;
        }

        if (v56 < 0)
        {
          goto LABEL_96;
        }

        [v1 ttr:v56 replaceArrangedSubviewAtIndex:v21 withView:?];
        [v58 removeFromSuperview];
      }

      else
      {
        v25 = v56;
        if (v56 < 0)
        {
          goto LABEL_95;
        }

        [v1 ttr:v21 insertArrangedSubview:v56 atIndex:?];
      }

      v0 = *(&v62 + 1);
      sub_21D576B08(v63);
      sub_21D576B08(v63);
LABEL_37:
      _VF = __OFADD__(v25, 1);
      v4 = v25 + 1;
      if (!_VF)
      {
        goto LABEL_38;
      }

LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v2 = v59;
    if (!v16)
    {
      goto LABEL_7;
    }

    v4 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_92;
    }

LABEL_38:
    v3 = v12 + 1;
    v5 = 3;
  }

  while (v12 != 2);
LABEL_41:
  v30 = [v1 arrangedSubviews];
  if (!v30)
  {
    if (!v4)
    {
      goto LABEL_51;
    }

LABEL_47:
    if (qword_27CE56B90 == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_89;
  }

  v31 = v30;
  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v32 = sub_21DBFA5EC();

  if (v32 >> 62)
  {
    v33 = sub_21DBFBD7C();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 != v33)
  {
    goto LABEL_47;
  }

  while (1)
  {
LABEL_51:
    v38 = sub_21D6AE3AC();
    v0 = v38;
    if (v38 >> 62)
    {
LABEL_78:
      v39 = sub_21DBFBD7C();
      if (!v39)
      {
LABEL_79:
        v44 = 0;
        goto LABEL_80;
      }
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
        goto LABEL_79;
      }
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      break;
    }

    v40 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_85;
    }

    v41 = v39 - 1;
    v42 = __OFSUB__(v39, 1);
    v43 = *(v0 + 32);
    if (v42)
    {
      goto LABEL_84;
    }

    if ((v41 & 0x8000000000000000) != 0)
    {
      goto LABEL_86;
    }

    if (v41 < v40)
    {
      v44 = v43;
      v45 = *(v0 + 32 + 8 * v41);
      goto LABEL_62;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
LABEL_48:
    v34 = sub_21DBF84BC();
    __swift_project_value_buffer(v34, qword_27CE5FD40);
    v35 = sub_21DBF84AC();
    v36 = sub_21DBFAECC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_21D0C9000, v35, v36, "arrangedSubviews gets mutated unexpectedly", v37, 2u);
      MEMORY[0x223D46520](v37, -1, -1);
    }
  }

  v44 = MEMORY[0x223D44740](0, v0);
  if (__OFSUB__(v39, 1))
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v45 = MEMORY[0x223D44740](v39 - 1, v0);
LABEL_62:
  v46 = v45;
  if (v39 < 1)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v47 = 0;
  do
  {
    if ((v0 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x223D44740](v47, v0);
    }

    else
    {
      v48 = *(v0 + 8 * v47 + 32);
    }

    v49 = v48;
    ++v47;
    v50 = 12;
    if (v48 != v46)
    {
      v50 = 0;
    }

    v51 = 3;
    if (v48 == v46)
    {
      v51 = 15;
    }

    if (v48 == v44)
    {
      v52 = v51;
    }

    else
    {
      v52 = v50;
    }

    v53 = *&v48[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight];
    v54 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_roundedCorners;
    swift_beginAccess();
    *&v53[v54] = v52;
    [v53 setNeedsLayout];
  }

  while (v39 != v47);

LABEL_80:
}

void sub_21D6AC05C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_subviewInfos;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v8 = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  sub_21DBF8E0C();
  v4 = 0;
LABEL_2:
  v5 = 32 * v4 + 32;
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if (v4 >= *(v2 + 16))
    {
      break;
    }

    ++v4;
    v6 = *(v2 + v5);
    v5 += 32;
    if (v6)
    {
      v7 = v6;
      MEMORY[0x223D42D80]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_21D6AC168(void *a1)
{
  v2 = [a1 charactersIgnoringModifiers];
  v3 = sub_21DBFA16C();
  v5 = v4;

  if (sub_21DBFA16C() == v3 && v6 == v5)
  {

    goto LABEL_8;
  }

  v1 = sub_21DBFC64C();

  if ((v1 & 1) == 0)
  {
    if (sub_21DBFA16C() == v3 && v15 == v5)
    {

      goto LABEL_29;
    }

    v1 = sub_21DBFC64C();

    if (v1)
    {
LABEL_29:

      if (sub_21D6AE4F8())
      {
        v18 = 1;
        sub_21D6AE6C8(1);
        return v18;
      }

      return 0;
    }

    if (v3 == 13 && v5 == 0xE100000000000000)
    {
    }

    else
    {
      v19 = sub_21DBFC64C();

      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    v20 = sub_21D6AE3AC();
    v9 = v20;
    v45 = MEMORY[0x277D84F90];
    if (v20 >> 62)
    {
      goto LABEL_98;
    }

    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_37;
    }

LABEL_99:
    v26 = MEMORY[0x277D84F90];
LABEL_100:

    if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
    {
      if (sub_21DBFBD7C() <= 1)
      {
        result = sub_21DBFBD7C();
        if (result)
        {
LABEL_103:
          if ((v26 & 0xC000000000000001) != 0)
          {
            v42 = MEMORY[0x223D44740](0, v26);
          }

          else
          {
            if (!v26[2])
            {
              __break(1u);
              return result;
            }

            v42 = v26[4];
          }

          v43 = v42;

          v44 = v43;
          sub_21D6AE6C8(v43);

          return 1;
        }
      }
    }

    else
    {
      result = v26[2];
      if (result == 1)
      {
        goto LABEL_103;
      }
    }

LABEL_110:

    return 0;
  }

LABEL_8:

  if ((sub_21D6AE4F8() & 1) == 0)
  {
    return 0;
  }

  v8 = sub_21D6AE3AC();
  v9 = v8;
  v45 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_52;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_53;
  }

  while (2)
  {
    v11 = 0;
    v12 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223D44740](v11, v9);
      }

      else
      {
        if (v11 >= *(v12 + 16))
        {
          goto LABEL_49;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v1 = v13;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ([*&v13[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight] isHidden])
      {
      }

      else
      {
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v12 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      ++v11;
      if (v14 == v10)
      {
        v17 = v45;
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    v10 = sub_21DBFBD7C();
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_53:
  v17 = MEMORY[0x277D84F90];
LABEL_54:

  if ((v17 & 0x8000000000000000) == 0 && (v17 & 0x4000000000000000) == 0)
  {
    if (*(v17 + 16) == 1)
    {
      goto LABEL_57;
    }

    goto LABEL_110;
  }

  while (1)
  {
    if (sub_21DBFBD7C() > 1 || !sub_21DBFBD7C())
    {
      goto LABEL_110;
    }

LABEL_57:
    if ((v17 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223D44740](0, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = *(v17 + 16);

      if (!v27)
      {
        __break(1u);
        goto LABEL_95;
      }
    }

    v28 = sub_21D6AE3AC();
    v29 = v28;
    if (v28 >> 62)
    {
      break;
    }

    v9 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_78;
    }

LABEL_61:
    v30 = 0;
    v1 = 0;
    v17 = &qword_27CE5F000;
    while (1)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x223D44740](v30, v29);
      }

      else
      {
        if (v30 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_72;
        }

        v31 = *(v29 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (![*&v31[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight] isHidden])
      {
        goto LABEL_79;
      }

      ++v30;
      v1 = v32;
      if (v33 == v9)
      {
        v1 = 0;
        goto LABEL_79;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
  }

  v9 = sub_21DBFBD7C();
  if (v9)
  {
    goto LABEL_61;
  }

LABEL_78:
  v32 = 0;
  v1 = 0;
LABEL_79:

  sub_21D6AC05C();
  v27 = v34;
  if (!(v34 >> 62))
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_81;
    }

LABEL_96:

    return 1;
  }

LABEL_95:
  v35 = sub_21DBFBD7C();
  if (!v35)
  {
    goto LABEL_96;
  }

LABEL_81:
  if (v35 < 1)
  {
    __break(1u);
LABEL_98:
    v21 = sub_21DBFBD7C();
    if (!v21)
    {
      goto LABEL_99;
    }

LABEL_37:
    v22 = 0;
    v23 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x223D44740](v22, v9);
      }

      else
      {
        if (v22 >= *(v23 + 16))
        {
          goto LABEL_51;
        }

        v24 = *(v9 + 8 * v22 + 32);
      }

      v1 = v24;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_50;
      }

      if ([*&v24[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight] isHidden])
      {
      }

      else
      {
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v23 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      ++v22;
      if (v25 == v21)
      {
        v26 = v45;
        goto LABEL_100;
      }
    }
  }

  v36 = 0;
  do
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x223D44740](v36, v27);
    }

    else
    {
      v37 = *(v27 + 8 * v36 + 32);
    }

    v38 = v37;
    ++v36;
    if (v1)
    {
      v39 = v37 == v1;
    }

    else
    {
      v39 = 0;
    }

    v40 = !v39;
    [*&v37[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight] setHidden_];
  }

  while (v35 != v36);

  return 1;
}

uint64_t TTRIRemindersListCellAutoCompleteSuggestionsStackView.RowConfiguration.query.getter()
{
  v1 = *(v0 + 192);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.suggestionDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_suggestionDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.suggestionDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_suggestionDelegate;
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

uint64_t TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_configuration;
  swift_beginAccess();
  return sub_21D6AF108(v1 + v3, a1);
}

uint64_t sub_21D6ACAE8(uint64_t a1, uint64_t *a2, __n128 a3)
{
  sub_21D6AF108(a1, v7);
  v4 = *a2;
  v5 = OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_configuration;
  swift_beginAccess();
  sub_21D6AED74(v7, v4 + v5);
  swift_endAccess();
  sub_21D6ACB60();
  return sub_21D6AEDE4(v7);
}

id sub_21D6ACB60()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_configuration;
  swift_beginAccess();
  v3 = sub_21D6AF108(&v1[v2], &v17);
  if (*(&v18 + 1))
  {
    v36 = v27;
    v37 = v28;
    v38 = v29;
    v39 = v30;
    v32 = v23;
    v33 = v24;
    v34 = v25;
    v35 = v26;
    v31[2] = v19;
    v31[3] = v20;
    v31[4] = v21;
    v31[5] = v22;
    v31[0] = v17;
    v31[1] = v18;
    v4 = *&v1[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_titleLabel];
    v5 = (v20)(v3);
    [v4 setAttributedText_];

    (v32)();
    if (v6)
    {
      v7 = *&v1[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_secondaryLabel];
      v8 = sub_21DBFA12C();

      [v7 setText_];

      v9 = [v7 setHidden_];
    }

    else
    {
      v9 = [*&v1[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_secondaryLabel] setHidden_];
    }

    v11 = *&v1[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_imagesView];
    v12 = (v33)(v9);
    v13 = OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_images;
    swift_beginAccess();
    v14 = *(v11 + v13);
    *(v11 + v13) = v12;
    if (!v14 || (v15 = sub_21DBF8E0C(), v16 = sub_21D1D6D70(v15, v14), , (v16 & 1) == 0))
    {
      sub_21DAA13E4();
    }

    [*&v1[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_separator] setHidden_];
    [v1 setDirectionalLayoutMargins_];
    [v1 layoutIfNeeded];
    return sub_21D639514(v31);
  }

  else
  {
    sub_21D6AEDE4(&v17);
    return [v1 setHidden_];
  }
}

id (*TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.configuration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D6ACE20;
}

id sub_21D6ACE20(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_21D6ACB60();
  }

  return result;
}

id sub_21D6ACE54(double a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_suggestionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_configuration];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 11) = 0u;
  *(v4 + 12) = 0u;
  *(v4 + 13) = 0u;
  *&v1[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_leadingMargin] = a1;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v5 setNumberOfLines_];
  *&v2[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_titleLabel] = v5;
  v6 = objc_allocWithZone(MEMORY[0x277D756B8]);
  v7 = v5;
  v8 = [v6 init];
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v9 = sub_21D900614(4);
  [v8 setFont_];

  v10 = objc_opt_self();
  v11 = [v10 secondaryLabelColor];
  [v8 setTextColor_];

  [v8 setNumberOfLines_];
  *&v2[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_secondaryLabel] = v8;
  v61[0] = 32;
  v61[1] = 0x4018000000000000;
  v61[2] = 24;
  v61[3] = 0x4010000000000000;
  v61[4] = 2;
  v12 = objc_allocWithZone(type metadata accessor for TTRAutoCompleteReminderStackedImagesView());
  v13 = v8;
  v15 = TTRAutoCompleteReminderStackedImagesView.init(configuration:)(v61, v14);
  *&v2[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_imagesView] = v15;
  v16 = v7;
  v17 = v15;
  v57 = v16;
  v18 = [v16 traitCollection];
  [v18 displayScale];
  v20 = v19;

  if (v20 == 0.0)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 1.0 / v20;
  }

  v22 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v23 = [v10 separatorColor];
  [v22 setBackgroundColor_];

  [v22 setAutoresizingMask_];
  LODWORD(v24) = 1144750080;
  [v22 setContentHuggingPriority:1 forAxis:v24];
  *&v2[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_separator] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_21DC0AA00;
  *(v25 + 32) = v16;
  *(v25 + 40) = v13;
  v26 = objc_allocWithZone(MEMORY[0x277CEC638]);
  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v56 = v13;
  v27 = v22;
  v28 = sub_21DBFA5DC();

  v29 = [v26 initWithArrangedSubviews_];

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_21DC0AA00;
  *(v30 + 32) = v29;
  *(v30 + 40) = v17;
  v31 = objc_allocWithZone(MEMORY[0x277CEC638]);
  v55 = v17;
  v54 = v29;
  v32 = sub_21DBFA5DC();

  v33 = [v31 initWithArrangedSubviews_];

  v34 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:0.0 saturation:0.0 brightness:0.0 alpha:0.1];
  v35 = [objc_allocWithZone(type metadata accessor for TTRIBackgroundView()) initWithFrame_];
  v36 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_customCornerRadius;
  swift_beginAccess();
  *&v35[v36] = 0x4028000000000000;
  v37 = OBJC_IVAR____TtC15RemindersUICore18TTRIBackgroundView_backgroundFillColor;
  swift_beginAccess();
  v38 = *&v35[v37];
  *&v35[v37] = v34;
  v39 = v35;

  v40 = v39;
  [v40 setHidden_];
  [v40 setAutoresizingMask_];

  *&v2[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight] = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_21DC0AA00;
  *(v41 + 32) = v33;
  *(v41 + 40) = v27;
  v42 = v33;
  v59 = v27;
  v43 = v40;
  v44 = v42;
  v45 = sub_21DBFA5DC();

  v60.receiver = v2;
  v60.super_class = ObjectType;
  v46 = objc_msgSendSuper2(&v60, sel_initWithArrangedSubviews_, v45);

  v47 = v46;
  [v54 setAxis_];
  [v44 setDistribution_];
  [v44 setSpacing_];
  [v44 setLayoutMarginsRelativeArrangement_];
  [v44 setPreservesSuperviewLayoutMargins_];
  [v44 setDirectionalLayoutMargins_];

  [v47 setAxis_];
  v48 = v47;
  [v48 insertSubview:v43 atIndex:0];
  v49 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v50 = v48;
  v51 = [v49 initWithTarget:v50 action:sel_didTap_];
  [v50 addGestureRecognizer_];
  v52 = [objc_allocWithZone(MEMORY[0x277D755A0]) initWithTarget:v50 action:sel_didHover_];

  [v50 addGestureRecognizer_];
  [v50 setLayoutMarginsRelativeArrangement_];

  [v50 setPreservesSuperviewLayoutMargins_];
  [v50 setIsAccessibilityElement_];

  return v50;
}

void sub_21D6AD6E0(void *a1)
{
  v2 = [a1 state];
  if (v2 > 2 || !v2)
  {
LABEL_5:
    v3 = *&v1[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight];

    [v3 setHidden_];
    return;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      return;
    }

    goto LABEL_5;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = v1;
  sub_21D6AC05C();
  v8 = v7;
  if (v7 >> 62)
  {
    v9 = sub_21DBFBD7C();
    if (v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_11:
      if (v9 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v9; ++i)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x223D44740](i, v8);
        }

        else
        {
          v11 = *(v8 + 8 * i + 32);
        }

        v12 = v11;
        [*&v11[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight] setHidden_];
      }
    }
  }
}

uint64_t TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.accessibilityLabel.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_titleLabel) text];
  if (v1)
  {
    v2 = v1;
    sub_21DBFA16C();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v21[0] = v4;
  v5 = [*(v0 + OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_secondaryLabel) text];
  if (v5)
  {
    v6 = v5;
    v7 = sub_21DBFA16C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = 0;
  v21[1] = v7;
  v21[2] = v9;
  v11 = MEMORY[0x277D84F90];
LABEL_8:
  v12 = &v21[2 * v10];
  while (++v10 != 3)
  {
    v13 = v12 + 2;
    v14 = *v12;
    v12 += 2;
    if (v14)
    {
      v15 = *(v13 - 3);
      sub_21DBF8E0C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_21D210A84(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_21D210A84((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588A0, &qword_21DC09AF0);
  swift_arrayDestroy();
  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D1ADAA8();
  v19 = sub_21DBFA07C();

  return v19;
}

uint64_t (*TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.accessibilityLabel.modify(uint64_t *a1))(uint64_t a1)
{
  *a1 = TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.accessibilityLabel.getter();
  a1[1] = v2;
  return destroy for TTRRemindersBoardCellInfoButtonStates;
}

uint64_t TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.accessibilityUserInputLabels.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_titleLabel) text];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21DBFA16C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v25 = v3;
  v26 = v5;
  v6 = [*(v0 + OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_secondaryLabel) text];
  if (v6)
  {
    v7 = v6;
    v8 = sub_21DBFA16C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v27 = v8;
  v28 = v10;
  result = TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.accessibilityLabel.getter();
  v12 = 0;
  v29 = result;
  v30 = v13;
  v14 = MEMORY[0x277D84F90];
LABEL_8:
  if (v12 <= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = v12;
  }

  v16 = v15 + 1;
  v17 = 16 * v12 + 40;
  while (1)
  {
    if (v12 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588A0, &qword_21DC09AF0);
      swift_arrayDestroy();
      return v14;
    }

    if (v16 == ++v12)
    {
      break;
    }

    v18 = v17 + 16;
    v19 = *&v24[v17];
    v17 += 16;
    if (v19)
    {
      v20 = *&v24[v18 - 24];
      sub_21DBF8E0C();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21D210A84(0, *(v14 + 16) + 1, 1, v14);
        v14 = result;
      }

      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_21D210A84((v21 > 1), v22 + 1, 1, v14);
        v14 = result;
      }

      *(v14 + 16) = v22 + 1;
      v23 = v14 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.accessibilityElementDidBecomeFocused()()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_accessibilityElementDidBecomeFocused);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_21D6AC05C();
    v5 = v4;
    if (v4 >> 62)
    {
      v6 = sub_21DBFBD7C();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x223D44740](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          v9 = v8;
          [*&v8[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight] setHidden_];
        }
      }
    }
  }
}

Swift::Void __swiftcall TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.accessibilityElementDidLoseFocus()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_accessibilityElementDidLoseFocus);
  [*&v0[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight] setHidden_];
}

Swift::Void __swiftcall TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.layoutSubviews()()
{
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  v1 = [v0 superview];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_backgroundView;
      v5 = v3;
      swift_beginAccess();
      v6 = *(v5 + v4);
      if (v6)
      {
        v7 = v6;
        [v7 frame];
        v9 = v8;
        [v7 frame];
        v11 = v10;
        [v0 frame];
        v13 = v11 - v12;
        v14 = OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight;
        v15 = *&v0[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight];
        [v15 frame];
        v17 = v16;
        [*&v0[v14] frame];
        [v15 setFrame_];

        v2 = v15;
      }
    }
  }
}

uint64_t sub_21D6AE3AC()
{
  sub_21D6AC05C();
  v1 = v0;
  v9 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223D44740](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 isHidden])
      {
      }

      else
      {
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      ++v3;
      if (v6 == i)
      {
        v7 = v9;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_18:

  return v7;
}

uint64_t sub_21D6AE4F8()
{
  v1 = [v0 selectedTextRange];
  if (v1)
  {
    v2 = v1;
    if (![v1 isEmpty])
    {
      v10 = 0;
LABEL_11:

      return v10 & 1;
    }

    v3 = [v0 markedTextRange];
    if (v3)
    {
      v4 = v3;
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v5 = [v4 end];
      v6 = [v0 endOfDocument];
      v7 = sub_21DBFB63C();

      if (v7)
      {
        v8 = [v2 start];
        v9 = [v4 start];
        v10 = sub_21DBFB63C();

        v2 = v4;
LABEL_10:

        v2 = v9;
        goto LABEL_11;
      }
    }

    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v8 = [v2 start];
    v9 = [v0 endOfDocument];
    v10 = sub_21DBFB63C();
    goto LABEL_10;
  }

  v10 = 0;
  return v10 & 1;
}

void sub_21D6AE6C8(uint64_t a1)
{
  if (!a1)
  {
    v13 = sub_21D6AE3AC();
    v2 = v13;
    if (v13 >> 62)
    {
      v14 = sub_21DBFBD7C();
      if (v14)
      {
LABEL_19:
        v15 = 0;
        v41 = 0;
        v3 = &selRef__setContentViewMarginType_;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x223D44740](v15, v2);
          }

          else
          {
            if (v15 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_56;
            }

            v16 = *(v2 + 8 * v15 + 32);
          }

          v17 = v16;
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_55;
          }

          if (![*&v16[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight] isHidden])
          {
            break;
          }

          ++v15;
          v41 = v17;
          if (v18 == v14)
          {
            goto LABEL_60;
          }
        }

LABEL_61:

        sub_21D6AC05C();
        v28 = v33;
        if (v33 >> 62)
        {
          v34 = sub_21DBFBD7C();
          if (!v34)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v34)
          {
            goto LABEL_84;
          }
        }

        if (v34 < 1)
        {
          __break(1u);
          goto LABEL_82;
        }

        v35 = 0;
        do
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v36 = MEMORY[0x223D44740](v35, v28);
          }

          else
          {
            v36 = *(v28 + 8 * v35 + 32);
          }

          v37 = v36;
          ++v35;
          if (v41)
          {
            v38 = v36 == v41;
          }

          else
          {
            v38 = 0;
          }

          v39 = !v38;
          [*&v36[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight] setHidden_];
        }

        while (v34 != v35);

        goto LABEL_76;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_19;
      }
    }

    v17 = 0;
LABEL_60:
    v41 = 0;
    goto LABEL_61;
  }

  if (a1 != 1)
  {
    v20 = a1 + OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_suggestionDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v20 + 8);
      v22 = a1 + OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_configuration;
      swift_beginAccess();
      if (*(v22 + 24))
      {
        sub_21D1D9BE4(v22, v42);
        ObjectType = swift_getObjectType();
        (*(v21 + 8))(v42, ObjectType, v21);
        swift_unknownObjectRelease();
        sub_21D1D9C40(v42);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return;
  }

  v1 = sub_21D6AE3AC();
  v2 = v1;
  v3 = (v1 & 0xFFFFFFFFFFFFFF8);
  if (v1 >> 62)
  {
    goto LABEL_57;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v5 = 0;
  v6 = v2 & 0xC000000000000001;
  v40 = (v2 + 32);
  while (1)
  {
    if (v4 == v5)
    {
      if (v4)
      {
        if (v6)
        {
          goto LABEL_38;
        }

        if (v3[2])
        {
          v24 = *v40;
LABEL_44:
          v25 = v24;
          goto LABEL_45;
        }

        __break(1u);
        goto LABEL_91;
      }

LABEL_76:

      return;
    }

    if (v6)
    {
      v7 = MEMORY[0x223D44740](v5, v2);
    }

    else
    {
      if (v5 >= v3[2])
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        v4 = sub_21DBFBD7C();
        goto LABEL_5;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = *&v7[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight];
    v10 = [v9 isHidden];

    v11 = v5 + 1;
    v12 = __OFADD__(v5, 1);
    if ((v10 & 1) == 0)
    {
      break;
    }

    ++v5;
    if (v12)
    {
      goto LABEL_54;
    }
  }

  if (v12)
  {
    __break(1u);
    goto LABEL_88;
  }

  if (v11 >= v4)
  {
    goto LABEL_76;
  }

  if (!v6)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 < v3[2])
      {
        v24 = v40[v11];
        goto LABEL_44;
      }

LABEL_92:
      __break(1u);
      return;
    }

LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  while (1)
  {
LABEL_38:
    v25 = MEMORY[0x223D44740]();
LABEL_45:
    v26 = v25;

    v41 = v26;
    sub_21D6AC05C();
    v28 = v27;
    if (v27 >> 62)
    {
LABEL_82:
      v29 = sub_21DBFBD7C();
      if (!v29)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v29)
      {
        goto LABEL_83;
      }
    }

    if (v29 >= 1)
    {
      break;
    }

LABEL_88:
    __break(1u);
  }

  for (i = 0; i != v29; ++i)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x223D44740](i, v28);
    }

    else
    {
      v31 = *(v28 + 8 * i + 32);
    }

    v32 = v31;
    [*&v31[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight] setHidden_];
  }

LABEL_83:

LABEL_84:
}

id sub_21D6AEC0C(uint64_t a1)
{
  if (a1)
  {
    sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
    v2 = sub_21DBFA5DC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithArrangedSubviews_];

  return v3;
}

uint64_t sub_21D6AED74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F290, &qword_21DC20000);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D6AEDE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F290, &qword_21DC20000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21D6AEE84()
{
  result = qword_27CE5FD98;
  if (!qword_27CE5FD98)
  {
    v3 = sub_21D0D8CF0(255, &unk_27CE60080, 0x277D758B8);
    result = swift_getWitnessTable(MEMORY[0x277D85378], v3, v0, v1);
    atomic_store(result, &qword_27CE5FD98);
  }

  return result;
}

void sub_21D6AEEF0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_backgroundView;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 quaternarySystemFillColor];
    v7 = [objc_opt_self() traitCollectionWithAccessibilityContrast_];
    v8 = [v6 resolvedColorWithTraitCollection_];

    [v5 setBackgroundColor_];
  }
}

void _s15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_leadingShiftForReminderTitleAlignment) = 0;
  v1 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_subviewInfos;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59BC0, &qword_21DC0CE38);
  v2 = sub_21DBFA69C();
  *(v2 + 16) = 3;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_subviewUpdates;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59BD0, &unk_21DC22620);
  v4 = sub_21DBFA69C();
  v4[2] = 3;
  v4[4] = 1;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 1;
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v4[12] = 1;
  v4[13] = 0;
  v4[14] = 0;
  v4[15] = 0;
  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_isPerformingSubviewUpdates) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_superviewBottomLayoutMarginToCompensate) = 0;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t sub_21D6AF108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F290, &qword_21DC20000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double destroy for TTRIRemindersListCellAutoCompleteSuggestionsStackView.RowConfiguration(void *a1)
{
  __swift_destroy_boxed_opaque_existential_0(a1);

  return result;
}

uint64_t initializeWithCopy for TTRIRemindersListCellAutoCompleteSuggestionsStackView.RowConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  v5 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v5;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListCellAutoCompleteSuggestionsStackView.RowConfiguration(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_0(a1, a2);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  v6 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v6;

  v7 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;

  v8 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v8;

  v9 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v9;

  v10 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v10;

  v11 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v11;

  v12 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v12;

  v13 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v13;

  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  sub_21DBF8E0C();

  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  return a1;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t assignWithTake for TTRIRemindersListCellAutoCompleteSuggestionsStackView.RowConfiguration(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 160) = *(a2 + 160);

  *(a1 + 176) = *(a2 + 176);

  v5 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v5;

  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListCellAutoCompleteSuggestionsStackView.RowConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersListCellAutoCompleteSuggestionsStackView.RowConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21D6AF760()
{
  v1 = v0 + OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_suggestionDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    v4 = v0 + OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_configuration;
    swift_beginAccess();
    if (*(v4 + 24))
    {
      sub_21D1D9BE4(v4, v6);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v6, ObjectType, v3);
      swift_unknownObjectRelease();
      return sub_21D1D9C40(v6);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_21D6AF8E0(void *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  *&v5[OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_iconView] = 0;
  *&v5[OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_labelView] = 0;
  v5[OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_iconViewHidden] = 0;
  *&v5[OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_stackView] = 0;
  v11.receiver = v5;
  v11.super_class = type metadata accessor for TTRIRemindersListCellAttributePillView();
  v7 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_21D6B0018();
  }

  return v8;
}

void sub_21D6AFAB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = v3;
  v5 = sub_21D6AFDEC();
  isa = UIFont.withCustomWeight(_:)(*MEMORY[0x277D743F8]).super.isa;

  v7 = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
  *(inited + 64) = v7;
  *(inited + 40) = isa;
  sub_21D11274C(inited);
  swift_setDeallocating();
  sub_21D1BAED0(inited + 32);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_21DC08D00;
  *(v8 + 32) = v4;
  v9 = sub_21D6AFDEC();
  *(v8 + 64) = v7;
  *(v8 + 40) = v9;
  sub_21D11274C(v8);
  swift_setDeallocating();
  sub_21D1BAED0(v8 + 32);
  v10 = objc_allocWithZone(MEMORY[0x277CCAB68]);
  v11 = sub_21DBFA12C();
  v12 = [v10 initWithString_];

  v13 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v14 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21D112874();
  v15 = sub_21DBF9E5C();

  v16 = [v13 initWithString:v14 attributes:v15];

  v17 = v12;
  v18 = sub_21DBFA12C();
  v19 = [v17 rangeOfString_];
  v21 = v20;

  if (v19 == sub_21DBF4B4C())
  {
  }

  else
  {
    v22 = sub_21DBFA12C();
    [v17 replaceCharactersInRange:v19 withString:{v21, v22}];

    v23 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v24 = sub_21DBF9E5C();

    v25 = [v23 initWithString:v17 attributes:v24];

    [v25 insertAttributedString:v16 atIndex:v19];
    v16 = v25;
  }

  v26 = *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_labelView);
  if (v26)
  {
    [v26 setAttributedText_];
  }

  else
  {
    __break(1u);
  }
}

NSString *sub_21D6AFDEC()
{
  v1 = v0;
  v2 = *MEMORY[0x277D769D0];
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = *MEMORY[0x277D76818];
  if (UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D76818]) != NSOrderedDescending)
  {
    v12 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v2 compatibleWithTraitCollection:0];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 fontDescriptorWithDesign_];

      if (v14)
      {
        v15 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = [objc_opt_self() preferredFontForTextStyle_];
LABEL_10:
    v11 = v15;
    v8 = v4;
    v4 = v14;
    goto LABEL_11;
  }

  v6 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v7 = objc_opt_self();
  v8 = [v7 preferredFontForTextStyle:v2 compatibleWithTraitCollection:v6];

  v9 = [(NSString *)v8 fontDescriptor];
  v10 = [v9 fontDescriptorWithDesign_];

  if (v10)
  {
    v11 = [v7 fontWithDescriptor:v10 size:0.0];

LABEL_11:
    v8 = v11;
  }

  return v8;
}

void sub_21D6B0018()
{
  v1 = [objc_opt_self() tertiarySystemFillColor];
  [v0 setBackgroundColor_];

  v2 = [v0 _setContinuousCornerRadius_];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xA0))(v2);
  LODWORD(v4) = 1148846080;
  [v3 setLayoutSize:24.0 withContentPriority:{24.0, v4}];
  v5 = *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_iconView);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_iconView) = v3;
  v6 = v3;

  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v8 = sub_21D6AFDEC();
  [v7 setFont_];

  v9 = *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_labelView);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_labelView) = v7;
  v10 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21DC0AA00;
  *(v11 + 32) = v6;
  *(v11 + 40) = v10;
  v12 = objc_allocWithZone(MEMORY[0x277CEC638]);
  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v13 = v6;
  v14 = v10;
  v15 = sub_21DBFA5DC();

  v16 = [v12 initWithArrangedSubviews_];

  v17 = *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_stackView);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_stackView) = v16;
  v18 = v16;

  v19 = v18;
  [v19 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview_];
  [v19 setLayoutMarginsRelativeArrangement_];
  [v19 setPreservesSuperviewLayoutMargins_];
  [v19 setAxis_];
  [v19 setDistribution_];
  [v19 setAlignment_];
  [v19 setSpacing_];
  [v19 setMinimumLayoutSize_];

  sub_21D6B0314();
  [v0 addSubview_];
}

id sub_21D6B0314()
{
  result = *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_iconView);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_iconViewHidden;
  [result setHidden_];
  result = *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_stackView);
  if (*(v0 + v2) != 1)
  {
    if (result)
    {
      v5 = 12.0;
      v4 = 6.0;
      v3 = 6.0;
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    return result;
  }

  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = 12.0;
  v4 = 6.0;
  v5 = 12.0;
LABEL_7:

  return [result setDirectionalLayoutMargins_];
}

id sub_21D6B03BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIRemindersListCellAttributePillView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

RemindersUICore::TTRIRemindersListBackground __swiftcall TTRIRemindersListBackground.init(viewType:traitCollection:)(RemindersUICore::TTRIRemindersListBackground::ViewType viewType, UITraitCollection traitCollection)
{
  v4 = v2;
  v5 = *viewType;
  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_280D17220 == 1)
  {

    v7 = 2 * (v5 > 1);
  }

  else
  {
    v8 = [(objc_class *)traitCollection.super.isa horizontalSizeClass];

    if (v8 == 2)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    if (v5 <= 1)
    {
      v7 = v8 == 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t TTRIRemindersListBackground.backgroundConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v2 > 1u)
  {
    if (*v2 == 2)
    {
      if (qword_280D0C718 != -1)
      {
        swift_once();
      }

      v4 = qword_280D0C720;
    }

    else
    {
      if (qword_280D0C6F0 != -1)
      {
        swift_once();
      }

      v4 = qword_280D0C6F8;
    }
  }

  else if (*v2)
  {
    if (qword_280D0C740 != -1)
    {
      swift_once();
    }

    v4 = qword_280D0C748;
  }

  else
  {
    if (qword_280D0C768 != -1)
    {
      swift_once();
    }

    v4 = qword_280D0C770;
  }

  v5 = sub_21DBF88CC();
  v6 = __swift_project_value_buffer(v5, v4);
  v7 = *(*(v5 - 8) + 16);

  return v7(a1, v6, v5);
}

id TTRIRemindersListBackground.color.getter(__n128 a1)
{
  v2 = sub_21DBF88CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      if (qword_280D0C718 != -1)
      {
        swift_once();
      }

      v6 = qword_280D0C720;
    }

    else
    {
      if (qword_280D0C6F0 != -1)
      {
        swift_once();
      }

      v6 = qword_280D0C6F8;
    }
  }

  else if (*v1)
  {
    if (qword_280D0C740 != -1)
    {
      swift_once();
    }

    v6 = qword_280D0C748;
  }

  else
  {
    if (qword_280D0C768 != -1)
    {
      swift_once();
    }

    v6 = qword_280D0C770;
  }

  v7 = __swift_project_value_buffer(v2, v6);
  (*(v3 + 16))(v5, v7, v2);
  v8 = sub_21DBF882C();
  (*(v3 + 8))(v5, v2);
  if (v8)
  {
    return v8;
  }

  v10 = [objc_opt_self() systemBackgroundColor];

  return v10;
}

uint64_t sub_21D6B0984(__n128 a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = sub_21DBF88CC();
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4();
}

uint64_t sub_21D6B0A34(__n128 a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_21DBF88CC();
  __swift_allocate_value_buffer(v9, a3);
  __swift_project_value_buffer(v9, a3);
  sub_21DBF886C();
  if (*a4 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, a5);
  sub_21DBF882C();
  return sub_21DBF883C();
}

Swift::Void __swiftcall UITableViewCell.ttr_registerForRemindersListCellBackgroundConfiguration()()
{
  swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F000, &qword_21DC1F9E0);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v14 - v3;
  v5 = [v0 traitCollection];
  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_280D17220 == 1)
  {

LABEL_9:
    if (qword_280D0C768 != -1)
    {
      swift_once();
    }

    v7 = qword_280D0C770;
    goto LABEL_12;
  }

  v6 = [v5 horizontalSizeClass];

  if (v6 != 2)
  {
    goto LABEL_9;
  }

  if (qword_280D0C740 != -1)
  {
    swift_once();
  }

  v7 = qword_280D0C748;
LABEL_12:
  v8 = sub_21DBF88CC();
  v9 = __swift_project_value_buffer(v8, v7);
  v10 = *(v8 - 8);
  (*(v10 + 16))(v4, v9, v8);
  (*(v10 + 56))(v4, 0, 1, v8);
  MEMORY[0x223D437B0](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65630, &unk_21DC22100);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21DC08D00;
  v12 = sub_21DBF8A1C();
  v13 = MEMORY[0x277D74C50];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  sub_21DBFB5CC();
  swift_unknownObjectRelease();
}

unint64_t sub_21D6B0D88()
{
  result = qword_27CE5FE00;
  if (!qword_27CE5FE00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIRemindersListBackground.ViewType, &type metadata for TTRIRemindersListBackground.ViewType, v0, v1);
    atomic_store(result, &qword_27CE5FE00);
  }

  return result;
}

unint64_t sub_21D6B0DE0()
{
  result = qword_27CE5FE08;
  if (!qword_27CE5FE08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIRemindersListBackground, &type metadata for TTRIRemindersListBackground, v0, v1);
    atomic_store(result, &qword_27CE5FE08);
  }

  return result;
}

uint64_t sub_21D6B0E54(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F000, &qword_21DC1F9E0);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v13 - v4;
  v6 = [a1 traitCollection];
  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_280D17220 == 1)
  {

LABEL_9:
    if (qword_280D0C768 != -1)
    {
      swift_once();
    }

    v8 = qword_280D0C770;
    goto LABEL_12;
  }

  v7 = [v6 horizontalSizeClass];

  if (v7 != 2)
  {
    goto LABEL_9;
  }

  if (qword_280D0C740 != -1)
  {
    swift_once();
  }

  v8 = qword_280D0C748;
LABEL_12:
  v9 = sub_21DBF88CC();
  v10 = __swift_project_value_buffer(v9, v8);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v5, v10, v9);
  (*(v11 + 56))(v5, 0, 1, v9);
  return MEMORY[0x223D437B0](v5);
}

uint64_t static TTRICollectionViewPresentationTreeUpdateScope.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (v9 == 2)
      {
        sub_21D0E49BC(*a1, v5, 2u);
        sub_21D0E49BC(v7, v8, 2u);
        v11 = v7 ^ v4 ^ 1;
        return v11 & 1;
      }
    }

    else if (v9 == 3 && (v8 | v7) == 0)
    {
      sub_21D0E49BC(*a1, v5, 3u);
      sub_21D0E49BC(0, 0, 3u);
      v11 = 1;
      return v11 & 1;
    }

    goto LABEL_17;
  }

  if (*(a1 + 16))
  {
    if (v9 == 1)
    {
      sub_21D13F7C0(*a2, *(a2 + 8), 1u);
      sub_21D13F7C0(v4, v5, 1u);
      v12 = sub_21DBFAADC();
      sub_21D0E49BC(v4, v5, 1u);
      v13 = v7;
      v14 = v8;
      v15 = 1;
      goto LABEL_24;
    }

    goto LABEL_12;
  }

  if (*(a2 + 16))
  {
LABEL_12:
    sub_21DBF8E0C();
LABEL_17:
    sub_21D13F7C0(v7, v8, v9);
    sub_21D0E49BC(v4, v5, v6);
    v17 = v7;
    v18 = v8;
    v19 = v9;
LABEL_18:
    sub_21D0E49BC(v17, v18, v19);
    v11 = 0;
    return v11 & 1;
  }

  v10 = *a2;
  if (*a1 == 2)
  {
    if (v10 != 2)
    {
LABEL_25:
      sub_21D13F7C0(*a2, *(a2 + 8), 0);
      sub_21D13F7C0(v4, v5, 0);
      sub_21D0E49BC(v4, v5, 0);
      v17 = v7;
      v18 = v8;
      v19 = 0;
      goto LABEL_18;
    }
  }

  else if (v10 == 2 || ((v7 ^ v4) & 1) != 0)
  {
    goto LABEL_25;
  }

  sub_21D13F7C0(*a2, *(a2 + 8), 0);
  sub_21D13F7C0(v4, v5, 0);
  v12 = sub_21DBFAADC();
  sub_21D0E49BC(v4, v5, 0);
  v13 = v7;
  v14 = v8;
  v15 = 0;
LABEL_24:
  sub_21D0E49BC(v13, v14, v15);
  return v12 & 1;
}

double TTRICollectionViewPresentationTreeUpdates.scope.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_21D13F7C0(v2, v3, v4);
}

uint64_t TTRICollectionViewPresentationTreeUpdateScope.merging(with:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *result;
  v7 = *(result + 8);
  v8 = *(result + 16);
  v10 = *v3;
  v9 = *(v3 + 8);
  if (*(v3 + 16) > 1u)
  {
    if (*(v3 + 16) == 2)
    {
      if (v8 == 2)
      {
        *a3 = v10 & v6 & 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 2;
        return result;
      }
    }

    else if (v8 == 3 && (v7 | v6) == 0)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 3;
      return result;
    }

    goto LABEL_19;
  }

  if (*(v3 + 16))
  {
    if (v8 == 1)
    {
      sub_21D13F7C0(v10, v9, 1u);
      sub_21D13F7C0(v6, v7, 1u);
      v15 = sub_21DBFABAC();
      swift_getWitnessTable(MEMORY[0x277D83B68], v15);
      result = sub_21DBFAB0C();
      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
      return result;
    }

    goto LABEL_19;
  }

  if (*(result + 16))
  {
LABEL_19:
    v17 = sub_21D6B1654(a2);
    v18 = sub_21D6B1654(a2);
    v19 = 2;
    if ((v17 & 1) == 0 && (v18 & 1) == 0)
    {
      v20 = v18 >> 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FE10, &qword_21DC22880);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_21DC08D20;
      *(v21 + 32) = HIBYTE(v17);
      *(v21 + 33) = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FE18, &qword_21DC22888);
      sub_21D6B1704();
      v22 = sub_21DBFA41C();

      v23 = v22;
      v24 = *(v22 + 16);
      if (v24)
      {
        v25 = *(v22 + 32);
        v26 = *(v23 + 32 + v24 - 1);

        v19 = v25 & v26 & 1;
      }

      else
      {

        v19 = 0;
      }
    }

    v27 = sub_21DBFABAC();
    swift_getWitnessTable(MEMORY[0x277D83B68], v27);
    result = sub_21DBFAB0C();
    *a3 = v19;
    goto LABEL_26;
  }

  v11 = *v3;
  sub_21D13F7C0(v10, v9, 0);
  sub_21D13F7C0(v6, v7, 0);
  v12 = sub_21DBFABAC();
  swift_getWitnessTable(MEMORY[0x277D83B68], v12);
  result = sub_21DBFAB0C();
  v13 = v6 == 2 || v11 == 2;
  v14 = v10 & v6 & 1;
  if (v13)
  {
    v14 = 2;
  }

  *a3 = v14;
LABEL_26:
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_21D6B1654(uint64_t a1)
{
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) == 2)
    {
      sub_21D6B1BFC(*(a1 + 16), *(a1 + 24));
      v2 = 0;
      v3 = 1;
    }

    else
    {
      v4 = sub_21D6B1B84(*(a1 + 16), *(a1 + 24));
      v2 = v4;
      v3 = HIBYTE(v4);
    }
  }

  else if (*(v1 + 16))
  {
    sub_21DBF8E0C();
    v2 = 0;
    v3 = 2;
  }

  else
  {
    v2 = *v1 == 2;
    v3 = *v1 & 1;
    sub_21DBF8E0C();
  }

  return v2 | (v3 << 8);
}

unint64_t sub_21D6B1704()
{
  result = qword_27CE5FE20;
  if (!qword_27CE5FE20)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5FE18, &qword_21DC22888);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_27CE5FE20);
  }

  return result;
}

uint64_t sub_21D6B1778(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D13F7C0(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t sub_21D6B17C4(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D13F7C0(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_21D0E49BC(v6, v7, v8);
  return a1;
}

uint64_t sub_21D6B181C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D0E49BC(v4, v5, v6);
  return a1;
}

unint64_t sub_21D6B187C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-18 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    v14 = sub_21D13F7C0(*a2, v11, v12);
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    (*(v5 + 16))((a1 + v6 + 17) & ~v6, (a2 + v6 + 17) & ~v6, v4, v14);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  return a1;
}

uint64_t sub_21D6B19A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = sub_21D13F7C0(*a2, v7, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 16))((*(v10 + 80) + 17 + a1) & ~*(v10 + 80), (*(v10 + 80) + 17 + a2) & ~*(v10 + 80), v9);
  return a1;
}

uint64_t sub_21D6B1A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  sub_21D13F7C0(*a2, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v8;
  sub_21D0E49BC(v9, v10, v11);
  v12 = *(*(a3 + 16) - 8);
  (*(v12 + 24))((*(v12 + 80) + 17 + a1) & ~*(v12 + 80), (*(v12 + 80) + 17 + a2) & ~*(v12 + 80));
  return a1;
}

uint64_t sub_21D6B1AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = *a2;
  v9 = *(a1 + 16);
  *(a1 + 16) = v6;
  sub_21D0E49BC(v7, v8, v9);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 40))((*(v10 + 80) + 17 + a1) & ~*(v10 + 80), (*(v10 + 80) + 17 + a2) & ~*(v10 + 80));
  return a1;
}

uint64_t sub_21D6B1B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBFA68C();
  if (sub_21DBFA6DC())
  {
    sub_21D495A08(v4, a1, a2);
  }

  return 512;
}

uint64_t sub_21D6B1BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBFA68C();
  if (sub_21DBFA6DC())
  {
    v5 = sub_21D495A08(v4, a1, a2);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  return v5;
}

void sub_21D6B1C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  sub_21D6AFAB0();
  if (a5)
  {
    v8 = OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_labelView;
    v9 = *(v5 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_labelView);
    if (!v9)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v10 = [v9 attributedText];
    if (v10)
    {
      v11 = v10;
      v12 = [objc_opt_self() secondaryLabelColor];
      [v11 mutableCopy];
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
      sub_21D6B2564();
      if (swift_dynamicCast())
      {
        v13.value.super.isa = v12;
        NSMutableAttributedString.addStrikethrough(color:)(v13);
        v14 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

        if (v14)
        {
          v15 = *(v6 + v8);
          if (v15)
          {
            [v15 setAttributedText_];

            return;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }
}

void sub_21D6B1DD0()
{
  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_iconBackingView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageBackgroundColor];
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      v5 = [v0 traitCollection];
      if ([v5 accessibilityContrast] == 1)
      {
        v6 = sub_21DBFB24C();

        v5 = v6;
      }

      v8 = [v3 resolvedColorWithTraitCollection_];
    }

    else
    {
      v7 = v1;
      v8 = 0;
    }

    [v1 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

double sub_21D6B1EE8()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65630, &unk_21DC22100);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D00;
  v1 = sub_21DBF8B3C();
  v2 = MEMORY[0x277D74CB8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  sub_21DBFB5CC();
  swift_unknownObjectRelease();

  return result;
}

id sub_21D6B2024(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageBackgroundColor] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageView] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_iconBackingView] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_21D6B1EE8();
  }

  return v5;
}

void sub_21D6B20E0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v2 = OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageView;
  v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageView);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageView) = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  [v4 setContentMode_];

  v5 = *(v0 + v2);
  if (!v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 ttr_systemWhiteColor];
  [v7 setTintColor_];

  type metadata accessor for IconBackingView();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_iconBackingView;
  v11 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_iconBackingView);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_iconBackingView) = v9;
  v12 = v9;

  v13 = [v12 layer];
  [v13 setMasksToBounds_];

  v14 = *(v0 + v2);
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v14 setAutoresizingMask_];
  v15 = *(v0 + v2);
  if (!v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = *(v0 + v10);
  if (!v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v15;
  [v16 bounds];
  [v17 setFrame_];

  v18 = *(v0 + v10);
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!*(v0 + v2))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v18 addSubview_];
  v19 = *(v0 + v10);
  if (!v19)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v20 = v19;
}

void sub_21D6B22C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_iconBackingView);
}

unint64_t sub_21D6B2564()
{
  result = qword_27CE5FAF0;
  if (!qword_27CE5FAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE5FAF0);
  }

  return result;
}

void *TTRIRemindersListCellAssigneeView.contact.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_contact;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TTRIRemindersListCellAssigneeView.contact.setter(id a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_contact;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v4)
    {
      sub_21D0D8CF0(0, &qword_280D0C1A0, 0x277CBDA58);
      a1 = a1;
      v5 = v4;
      v6 = sub_21DBFB63C();

      if (v6)
      {

        v4 = v5;
LABEL_9:

        return;
      }
    }

    else
    {
      a1 = a1;
    }

LABEL_8:
    sub_21D6B26D8();

    goto LABEL_9;
  }

  if (v4)
  {
    goto LABEL_8;
  }
}

void sub_21D6B26D8()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_contact;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_avatarViewController);
    v4 = v2;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = sub_21D6B307C(v0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21DC09CF0;
    *(v9 + 32) = v2;
    sub_21D0D8CF0(0, &qword_280D0C1A0, 0x277CBDA58);
    v10 = v2;
    v11 = v3;
    v12 = sub_21DBFA5DC();

    [v5 setContacts_];
  }

  else
  {
    v6 = OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_avatarViewController;
    v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_avatarViewController);
    if (v7)
    {
      v8 = [v7 viewIfLoaded];
    }

    else
    {
      v8 = 0;
    }

    [v8 removeFromSuperview];

    v12 = *(v0 + v6);
    *(v0 + v6) = 0;
  }

  v13 = *(v0 + v1) == 0;
  v14 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_iconViewHidden);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_iconViewHidden) = v13;
  if (v13 != v14)
  {
    sub_21D6B2FE4();
  }
}

void (*TTRIRemindersListCellAssigneeView.contact.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_contact;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21D6B290C;
}

void sub_21D6B290C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (v3)
    {
      if (v8)
      {
        sub_21D0D8CF0(0, &qword_280D0C1A0, 0x277CBDA58);
        v5 = v3;
        v9 = v8;
        v10 = sub_21DBFB63C();

        if (v10)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v5 = 0;
    }

    sub_21D6B26D8();

    v5 = v8;
    goto LABEL_11;
  }

  v4 = v3;
  TTRIRemindersListCellAssigneeView.contact.setter(v3);
  v5 = v2[3];
LABEL_11:

LABEL_12:

  free(v2);
}

id TTRIRemindersListCellAssigneeView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_21D6B2A68()
{
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  [v0 _setContinuousCornerRadius_];
  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v2 = sub_21DBFA5DC();
  v3 = [objc_opt_self() containerBoxViewWithArrangedSubviews_];

  [v3 setHorizontalAlignment_];
  [v3 setVerticalAlignment_];
  LODWORD(v4) = 1148846080;
  [v3 setLayoutSize:24.0 withContentPriority:{24.0, v4}];
  v5 = *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_iconView];
  *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_iconView] = v3;
  v6 = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21DC09CF0;
  *(v7 + 32) = v6;
  v8 = objc_allocWithZone(MEMORY[0x277CEC638]);
  v9 = v6;
  v10 = sub_21DBFA5DC();

  v11 = [v8 initWithArrangedSubviews_];

  v12 = *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_stackView];
  *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_stackView] = v11;
  v13 = v11;

  v14 = v13;
  [v14 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview_];
  [v14 setLayoutMarginsRelativeArrangement_];
  [v14 setPreservesSuperviewLayoutMargins_];
  [v14 setAxis_];
  [v14 setDistribution_];
  [v14 setAlignment_];
  [v14 setSpacing_];
  [v14 setMinimumLayoutSize_];

  sub_21D6B2FE4();
  [v0 addSubview_];
  sub_21D6B26D8();
}

id TTRIRemindersListCellAssigneeView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRIRemindersListCellAssigneeView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_contact] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_iconView] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_iconViewHidden] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_avatarViewController] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_stackView] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_21D6B2A68();
  }

  return v5;
}

Swift::Void __swiftcall TTRIRemindersListCellAssigneeView.layoutSubviews()()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_stackView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];

    [v0 bounds];
    v5 = (44.0 - v4) * 0.5;
    v6 = -v5;
    if (v5 < 0.0)
    {
      v6 = -0.0;
    }

    v7 = (44.0 - v3) * 0.5;
    v8 = -v7;
    if (v7 < 0.0)
    {
      v8 = -0.0;
    }

    [v0 setHitTestInsets_];
  }

  else
  {
    __break(1u);
  }
}

CGSize __swiftcall TTRIRemindersListCellAssigneeView.sizeThatFits(_:)(CGSize result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_stackView);
  if (v2)
  {
    [v2 sizeThatFits_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21D6B2FE4()
{
  result = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_iconView);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_iconViewHidden;
  [result setHidden_];
  result = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_stackView);
  if (*(v0 + v2) != 1)
  {
LABEL_5:
    if (result)
    {
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:

  return [result setDirectionalLayoutMargins_];
}

id sub_21D6B307C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBDBF0]) init];
  [v2 setThreeDTouchEnabled_];
  v3 = *(a1 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_avatarViewController);
  *(a1 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_avatarViewController) = v2;
  v4 = v2;

  v5 = [v4 view];
  v6 = *(a1 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_iconView);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_21DC09CF0;
      *(v9 + 32) = v5;
      sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
      v10 = v6;
      v11 = v5;
      v12 = sub_21DBFA5DC();

      [v8 setArrangedSubviews_];
    }
  }

  return v4;
}

id TTRIRemindersListCellAssigneeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s15RemindersUICore33TTRIRemindersListCellAssigneeViewC5frameACSo6CGRectV_tcfc_0()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_contact] = 0;
  *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_iconView] = 0;
  v0[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_iconViewHidden] = 0;
  *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_avatarViewController] = 0;
  *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_stackView] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_21D6B2A68();

  return v2;
}

id TTRIRemindersListDescriptionAndTagsView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall TTRIRemindersListDescriptionAndTagsView.disableTextDragAndDrop()()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_textDragAndDropDisabled) = 1;
  v1 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 textDragInteraction];
    if (v4)
    {
      v5 = v4;
      [v4 setEnabled_];
      [v3 removeInteraction_];
    }

    [v3 setTextDropDelegate_];
  }
}

id TTRIRemindersListDescriptionAndTagsView.isEditingHashtags.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    return [result isEditing];
  }

  return result;
}

id TTRIWhitespaceSelectionAvoidingTextView.__allocating_init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5)
{
  v6 = a5;
  v10 = a1;
  v11 = objc_allocWithZone(v5);
  v13 = *a4;
  return TTRIReminderTitleTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)(v10, a2, a3 & 1, &v13, v6);
}

id TTRIRemindersListDescriptionAndTagsView.descriptionAttributedText.getter()
{
  result = *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_descriptionTextView);
  if (result)
  {
    return [result attributedText];
  }

  return result;
}

void TTRIRemindersListDescriptionAndTagsView.descriptionAttributedText.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_descriptionTextView;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_descriptionTextView);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_7;
  }

  v6 = [v5 attributedText];
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
      v17 = a1;
      v8 = sub_21DBFB63C();

      v9 = v17;
      if (v8)
      {
        goto LABEL_15;
      }

LABEL_8:
      v10 = [v9 string];
      v11 = sub_21DBFA16C();
      v13 = v12;

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        sub_21D6B46EC();
      }

      v15 = *(v2 + v4);
      if (!v15)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_7:
    v9 = a1;
    goto LABEL_8;
  }

  if (!v6)
  {
    return;
  }

  v15 = *(v1 + v4);
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_13:
  v16 = v15;
  [v16 setAttributedText_];

LABEL_14:
  v9 = a1;
LABEL_15:
}

void TTRIRemindersListDescriptionAndTagsView.needsUpdate.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_needsUpdate;
  swift_beginAccess();
  v4 = v1[v3];
  v1[v3] = a1;
  if (v4 & 1) == 0 && (a1)
  {
    [v1 setNeedsLayout];
    [v1 invalidateIntrinsicContentSize];
  }
}

id TTRIRemindersListDescriptionAndTagsView.hashtagsAttributedText.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    return [result attributedText];
  }

  return result;
}

Swift::Void __swiftcall TTRIRemindersListDescriptionAndTagsView.setHashtagsAttributedText(_:baseTextStyleOverrides:committedHashtagTextStyleOverrides:)(NSAttributedString _, Swift::OpaquePointer baseTextStyleOverrides, Swift::OpaquePointer committedHashtagTextStyleOverrides)
{
  v7 = [(objc_class *)_.super.isa string];
  v8 = sub_21DBFA16C();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
  }

  v12 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (v13)
  {
    v14 = qword_280D0F940;
    v15 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = qword_280D0F948;
    sub_21DBF8E0C();
    sub_21D6C3690(_.super.isa, baseTextStyleOverrides._rawValue, committedHashtagTextStyleOverrides._rawValue, &v16);
  }
}

Swift::Void __swiftcall TTRIRemindersListDescriptionAndTagsView.updateDescriptionHiddenState()()
{
  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_descriptionTextView];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 attributedText];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    v5 = [v3 string];

    v6 = sub_21DBFA16C();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    [v2 setHidden_];
  }

  v10 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_needsUpdate;
  swift_beginAccess();
  v11 = v0[v10];
  v0[v10] = 1;
  if (v11 != 1)
  {
    [v0 setNeedsLayout];
    [v0 invalidateIntrinsicContentSize];
  }
}

uint64_t TTRIRemindersListDescriptionAndTagsView.hashtagsTextViewDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextViewDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_21D6B4200();
  return swift_unknownObjectRelease();
}

id TTRIRemindersListDescriptionAndTagsView.allowsEditing.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_allowsEditing;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  result = *(v1 + v4);
  if (result)
  {
    return [result setEditable_];
  }

  return result;
}

Swift::Void __swiftcall TTRIRemindersListDescriptionAndTagsView.createAndShowHashtagTextView(baseTextStyleOverrides:committedHashtagTextStyleOverrides:)(Swift::OpaquePointer baseTextStyleOverrides, Swift::OpaquePointer committedHashtagTextStyleOverrides)
{
  v5 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = *(v2 + v5);
LABEL_7:
    v10 = v6;
    [v7 setHidden_];

    return;
  }

  v7 = sub_21D6B5BE0();
  v8 = [v7 attributedText];
  if (v8)
  {
    v9 = v8;
    if (qword_280D0F940 != -1)
    {
      swift_once();
    }

    v11 = qword_280D0F948;
    sub_21DBF8E0C();
    sub_21D6C3690(v9, baseTextStyleOverrides._rawValue, committedHashtagTextStyleOverrides._rawValue, &v11);

    sub_21D6C39DC();
    v6 = 0;
    goto LABEL_7;
  }

  __break(1u);
}

void TTRIRemindersListDescriptionAndTagsView.appLinkButtonConfiguration.setter(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_appLinkButtonConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v8;
  sub_21D60E688(v4, v5, v6, v7);
  sub_21D6B4D64();
}

void TTRIRemindersListDescriptionAndTagsView.subtaskButtonConfiguration.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_subtaskButtonConfiguration;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v10;
  *(v4 + 32) = v3;
  sub_21D60E5D0(v5, v6, v7, v8, v9);
  sub_21D6B5600();
}

Swift::Void __swiftcall TTRIRemindersListDescriptionAndTagsView.createAndStartEditingNewHashtag(baseTextStyleOverrides:committedHashtagTextStyleOverrides:)(Swift::OpaquePointer baseTextStyleOverrides, Swift::OpaquePointer committedHashtagTextStyleOverrides)
{
  v3 = v2;

  v6 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v7 = *&v2[v6];
  if (!v7)
  {
    if (qword_27CE56B98 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE5FE68);
    v8 = sub_21DBF84AC();
    v19 = sub_21DBFAECC();
    if (os_log_type_enabled(v8, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_21D0C9000, v8, v19, "Expected non-nil hashtagsTextView", v20, 2u);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    goto LABEL_20;
  }

  v8 = v7;
  v9 = [v8 attributedText];
  if (v9)
  {
    v10 = v9;
    if (qword_280D0F940 != -1)
    {
      swift_once();
    }

    v25[0] = qword_280D0F948;
    sub_21DBF8E0C();
    sub_21D6C3690(v10, baseTextStyleOverrides._rawValue, committedHashtagTextStyleOverrides._rawValue, v25);

    sub_21D6C39DC();
    v11 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_allowsEditing;
    swift_beginAccess();
    if (v3[v11] == 1)
    {
      if (([v8 isEditing]& 1) == 0)
      {
        [v8 setHidden:0];
        v12 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_needsUpdate;
        swift_beginAccess();
        v13 = v3[v12];
        v3[v12] = 1;
        if (v13 != 1)
        {
          [v3 setNeedsLayout];
          [v3 invalidateIntrinsicContentSize];
        }

        v14 = [v8 window];
        [v14 makeKeyWindow];

        [v8 becomeFirstResponder];
        v15 = [v8 endOfDocument];
        v16 = [v8 endOfDocument];
        v17 = [v8 textRangeFromPosition:v15 toPosition:v16];

        [v8 setSelectedTextRange:v17];
      }
    }

    else
    {

      if (qword_27CE56B98 != -1)
      {
        swift_once();
      }

      v21 = sub_21DBF84BC();
      __swift_project_value_buffer(v21, qword_27CE5FE68);
      v22 = sub_21DBF84AC();
      v23 = sub_21DBFAEBC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_21D0C9000, v22, v23, "createAndStartEditingNewHashtag() called when allowsEditing == false", v24, 2u);
        MEMORY[0x223D46520](v24, -1, -1);
      }

      v8 = v22;
    }

LABEL_20:

    return;
  }

  __break(1u);
}

uint64_t sub_21D6B4080()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5FE68);
  v1 = __swift_project_value_buffer(v0, qword_27CE5FE68);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D6B4198(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextViewDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  swift_unknownObjectWeakAssign();
  sub_21D6B4200();
}

void sub_21D6B4200()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = v2;
    [v4 setDelegate_];

    swift_unknownObjectRelease();
    v5 = *(v0 + v1);
    if (v5)
    {
      swift_beginAccess();
      v6 = swift_unknownObjectWeakLoadStrong();
      v7 = v5;
      [v7 setDelegate_];

      swift_unknownObjectRelease();
    }
  }
}

void (*TTRIRemindersListDescriptionAndTagsView.hashtagsTextViewDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextViewDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D6B4390;
}

void sub_21D6B4390(uint64_t a1, char a2)
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
    sub_21D6B4200();
  }

  free(v3);
}

uint64_t TTRIRemindersListDescriptionAndTagsView.needsUpdate.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_needsUpdate;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D6B4464(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_needsUpdate;
  swift_beginAccess();
  v5 = v3[v4];
  v3[v4] = v2;
  if ((v5 & 1) == 0)
  {
    if (v2)
    {
      [v3 setNeedsLayout];
      [v3 invalidateIntrinsicContentSize];
    }
  }
}

void (*TTRIRemindersListDescriptionAndTagsView.needsUpdate.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_needsUpdate;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D6B4578;
}

void sub_21D6B4578(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if ((v5 & 1) == 0 && v4)
  {
    v6 = v1[3];
    [v6 setNeedsLayout];
    [v6 invalidateIntrinsicContentSize];
  }

  free(v1);
}

void *TTRIRemindersListDescriptionAndTagsView.hashtagsTextView.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TTRIRemindersListDescriptionAndTagsView.hashtagsTextView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_21D6B46EC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_descriptionTextView;
  if (!*&v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_descriptionTextView])
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D75C40]) initReadonlyAndUnselectableWithFrame:0 textContainer:0 textLayoutManagerEnabled:{0.0, 0.0, 0.0, 0.0}];
    if (v2)
    {
      v3 = v2;
      [v2 setTextContainerInset_];
      v4 = [v3 textContainer];
      [v4 setLineFragmentPadding_];

      v5 = [v3 layoutManager];
      [v5 setUsesFontLeading_];

      v6 = v3;
      [v6 setUserInteractionEnabled_];
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor_];

      v8 = v6;
      [v8 setScrollEnabled_];
      [v8 setAdjustsFontForContentSizeCategory_];
      if (qword_280D0C1F8 != -1)
      {
        swift_once();
      }

      LODWORD(v9) = 1148846080;
      [v8 setLayoutSize:xmmword_280D0C200 withContentPriority:v9];
      [v8 setShowsVerticalScrollIndicator_];
      [v8 setShowsHorizontalScrollIndicator_];

      [v0 addArrangedSubview_];
      v10 = *&v0[v1];
      *&v0[v1] = v3;
      v11 = v8;

      [v0 sendSubviewToBack_];
    }
  }
}

void (*TTRIRemindersListDescriptionAndTagsView.descriptionAttributedText.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_descriptionTextView);
  if (v3)
  {
    v3 = [v3 attributedText];
  }

  *a1 = v3;
  return sub_21D6B49B8;
}

void sub_21D6B49B8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    TTRIRemindersListDescriptionAndTagsView.descriptionAttributedText.setter(v2);
  }

  else
  {
    TTRIRemindersListDescriptionAndTagsView.descriptionAttributedText.setter(*a1);
  }
}

uint64_t TTRIRemindersListDescriptionAndTagsView.allowsEditing.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_allowsEditing;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21D6B4A64(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_allowsEditing;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  result = *(v3 + v5);
  if (result)
  {
    return [result setEditable_];
  }

  return result;
}

uint64_t (*TTRIRemindersListDescriptionAndTagsView.allowsEditing.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_allowsEditing;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21D6B4B74;
}

void sub_21D6B4B74(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      [v6 setEditable_];
    }
  }

  free(v3);
}

void *TTRIRemindersListDescriptionAndTagsView.appLinkButtonConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_appLinkButtonConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return sub_21D60E630(v4, v5, v6, v7);
}

void *sub_21D6B4C58@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_appLinkButtonConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_21D60E630(v4, v5, v6, v7);
}

void sub_21D6B4CB8(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_appLinkButtonConfiguration;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  sub_21D60E630(v2, v3, v4, v5);
  sub_21D60E688(v7, v8, v9, v10);
  sub_21D6B4D64();
}

void sub_21D6B4D64()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E8, &unk_21DC22410);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v60 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v60 - v9;
  v11 = sub_21DBFB95C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v60 - v16;
  v18 = &v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_appLinkButtonConfiguration];
  swift_beginAccess();
  if (*v18)
  {
    v19 = *v18;
    v62 = v4;
    v63 = v7;
    v21 = *(v18 + 1);
    v20 = *(v18 + 2);
    v22 = *(v18 + 3);
    v23 = *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_appLinkButton];
    v65 = v1;
    v66 = v22;
    v64 = v20;
    if (v23)
    {
      v24 = v19;
      v25 = v19;
      v26 = v21;
      sub_21D0D0E74(v20, v22);
      v27 = v23;
    }

    else
    {
      v60 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_appLinkButton;
      v61 = v19;
      v29 = v19;
      v30 = v21;
      sub_21D0D0E74(v20, v22);
      sub_21DBFB90C();
      v31 = sub_21DBFB79C();
      sub_21DBF880C();
      v31(v67, 0);
      sub_21DBFB82C();
      sub_21DBFB80C();
      v32 = [objc_opt_self() secondaryLabelColor];
      sub_21DBFB89C();
      sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_21DBFB77C();
      type metadata accessor for TTRIRemindersListAppLinkButton();
      (*(v12 + 16))(v14, v17, v11);
      v33 = sub_21DBFB96C();
      (*(v12 + 8))(v17, v11);
      v34 = *&v1[v60];
      *&v1[v60] = v33;
      v24 = v61;
      v27 = v33;

      v23 = 0;
    }

    v35 = v23;
    v36 = v27;
    sub_21DBFB97C();
    if ((*(v12 + 48))(v10, 1, v11))
    {
      sub_21D303258(v10, v63);
      sub_21DBFB98C();

      sub_21D0CF7E0(v10, &unk_27CE5F2F0, qword_21DC0FEA0);
    }

    else
    {
      v37 = v21;
      v38 = v62;
      sub_21DBF515C();
      v39 = sub_21DBF514C();
      (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
      sub_21DBFB86C();
      sub_21DBFB98C();
    }

    v40 = v64;
    v41 = OBJC_IVAR____TtC15RemindersUICore30TTRIRemindersListAppLinkButton_currentOriginalImage;
    v42 = *&v36[OBJC_IVAR____TtC15RemindersUICore30TTRIRemindersListAppLinkButton_currentOriginalImage];
    if (v42)
    {
      sub_21D0D8CF0(0, &qword_280D17688, 0x277D755B8);
      v43 = v24;
      v44 = v42;
      v45 = sub_21DBFB63C();

      v46 = v65;
      if (v45)
      {
        goto LABEL_15;
      }

      v47 = *&v36[v41];
    }

    else
    {
      v48 = v24;
      v47 = 0;
      v46 = v65;
    }

    *&v36[v41] = v24;
    v49 = v24;

    v50 = &v36[OBJC_IVAR____TtC15RemindersUICore30TTRIRemindersListAppLinkButton_currentImageSize];
    *v50 = 0;
    v50[8] = 1;
    [v36 setNeedsLayout];
LABEL_15:

    v51 = v36;
    v52 = [v51 superview];
    if (v52)
    {
    }

    else
    {
      [v46 addArrangedSubview_];
    }

    v53 = v66;
    [v51 setHidden_];

    v54 = *&v46[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_subtaskButton];
    if (v54)
    {
      v55 = v54;
      v56 = [v55 superview];
      if (v56)
      {
        v57 = v56;
        sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
        v58 = v46;
        v59 = sub_21DBFB63C();

        if (v59)
        {
          [v58 insertSubview:v51 belowSubview:v55];
          sub_21D60E688(v24, v21, v40, v66);

LABEL_24:
          return;
        }
      }

      v53 = v66;
    }

    [v46 bringSubviewToFront_];
    sub_21D60E688(v24, v21, v40, v53);
    goto LABEL_24;
  }

  v28 = *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_appLinkButton];
  if (v28)
  {
    [v28 setHidden_];
  }
}

uint64_t (*TTRIRemindersListDescriptionAndTagsView.appLinkButtonConfiguration.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D6B5450;
}

void *TTRIRemindersListDescriptionAndTagsView.subtaskButtonConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_subtaskButtonConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return sub_21D60E570(v4, v5, v6, v7, v8);
}

void *sub_21D6B54CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_subtaskButtonConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  return sub_21D60E570(v4, v5, v6, v7, v8);
}

void sub_21D6B5534(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_subtaskButtonConfiguration;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  v12 = *(v7 + 32);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  sub_21D60E570(v2, v3, v4, v5, v6);
  sub_21D60E5D0(v8, v9, v11, v10, v12);
  sub_21D6B5600();
}

void sub_21D6B5600()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E8, &unk_21DC22410);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v46 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = sub_21DBFB95C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v18 = &v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_subtaskButtonConfiguration];
  swift_beginAccess();
  v19 = *v18;
  if (*v18)
  {
    v48 = v7;
    v49 = v11;
    v47 = v4;
    v20 = *(v18 + 1);
    v21 = *(v18 + 2);
    v22 = *(v18 + 3);
    v23 = *(v18 + 4);
    v24 = *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_subtaskButton];
    v51 = v22;
    v52 = v19;
    v50 = v23;
    if (v24)
    {
      v25 = v1;
      v26 = v19;
      v27 = v20;
      v28 = v21;
      sub_21D0D0E74(v22, v23);
      v29 = v24;
      v30 = v21;
      v31 = v49;
    }

    else
    {
      v46 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_subtaskButton;
      v33 = v19;
      v34 = v20;
      v35 = v21;
      sub_21D0D0E74(v22, v23);
      sub_21DBFB7CC();
      sub_21DBFB82C();
      sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_21DBFB77C();
      type metadata accessor for TTRIExpandedHitTestButton();
      v31 = v49;
      (*(v12 + 16))(v14, v17, v49);
      v36 = sub_21DBFB96C();
      (*(v12 + 8))(v17, v31);
      v37 = *&v1[v46];
      v25 = v1;
      *&v1[v46] = v36;
      v29 = v36;

      v24 = 0;
      v30 = v21;
    }

    v38 = v24;
    v39 = v29;
    sub_21DBFB97C();
    if ((*(v12 + 48))(v10, 1, v31))
    {
      sub_21D303258(v10, v48);
      sub_21DBFB98C();
      sub_21D0CF7E0(v10, &unk_27CE5F2F0, qword_21DC0FEA0);
    }

    else
    {
      v40 = v20;
      v41 = v47;
      sub_21DBF515C();
      v42 = sub_21DBF514C();
      (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
      sub_21DBFB86C();
      sub_21DBFB98C();
    }

    v43 = v51;
    [v39 setTintColor_];

    v44 = v39;
    v45 = [v44 superview];
    if (v45)
    {

      [v44 setHidden_];
      [v25 bringSubviewToFront_];
      sub_21D60E5D0(v52, v20, v30, v43, v50);
    }

    else
    {

      [v25 addArrangedSubview_];
      sub_21D60E5D0(v52, v20, v30, v43, v50);
    }
  }

  else
  {
    v32 = *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_subtaskButton];
    if (v32)
    {
      [v32 setHidden_];
    }
  }
}

uint64_t (*TTRIRemindersListDescriptionAndTagsView.subtaskButtonConfiguration.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D6B5B84;
}

uint64_t sub_21D6B5B9C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_21D6B5BE0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3)
  {
    v5 = objc_allocWithZone(type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView());
    v41[0] = 1;
    v6 = TTRIReminderTitleTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)(1, 4, 0, v41, 1);
    [v6 setSmartInsertDeleteType_];
    [v6 setTextContainerInset_];
    v7 = [v6 textContainer];
    [v7 setLineFragmentPadding_];

    v8 = [v6 layoutManager];
    [v8 setUsesFontLeading_];

    [v6 setEditable_];
    [v6 setAutocorrectionType_];
    [v6 setScrollEnabled_];
    v9 = objc_opt_self();
    v10 = v6;
    v11 = [v9 clearColor];
    [v10 setBackgroundColor_];

    [v10 setAdjustsFontForContentSizeCategory_];
    if (qword_280D0C1F8 != -1)
    {
      swift_once();
    }

    LODWORD(v12) = 1148846080;
    [v10 setLayoutSize:xmmword_280D0C200 withContentPriority:v12];
    v13 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_allowsEditing;
    swift_beginAccess();
    [v10 setEditable_];
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D20;
    v15 = *MEMORY[0x277D740C0];
    *(inited + 32) = *MEMORY[0x277D740C0];
    v16 = v15;
    v17 = [v9 placeholderTextColor];
    v18 = sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
    v19 = MEMORY[0x277D740A8];
    *(inited + 40) = v17;
    v20 = *v19;
    *(inited + 64) = v18;
    *(inited + 72) = v20;
    v21 = qword_280D176B8;
    v22 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = sub_21D900614(6);
    *(inited + 104) = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
    *(inited + 80) = v23;
    sub_21D11274C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0, &qword_21DC09050);
    swift_arrayDestroy();
    v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v25 = sub_21DBFA12C();

    type metadata accessor for Key(0);
    sub_21D112874();
    v26 = sub_21DBF9E5C();

    v27 = [v24 initWithString:v25 attributes:v26];

    [v10 setAttributedPlaceholder_];
    v28 = v10;
    v29 = sub_21DBFA12C();
    [v28 setAccessibilityIdentifier_];

    if (v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_textDragAndDropDisabled] == 1)
    {
      v30 = [v28 textDragInteraction];
      if (v30)
      {
        v31 = v30;
        [v30 setEnabled_];
        [v28 removeInteraction_];
      }

      [v28 setTextDropDelegate_];
    }

    [v1 addArrangedSubview_];
    v32 = *&v1[v2];
    *&v1[v2] = v28;
    v4 = v28;

    sub_21D6B4200();
    v33 = *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_descriptionTextView];
    if (v33)
    {
      v34 = v33;
      v35 = [v34 superview];
      if (v35)
      {
        v36 = v35;
        sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
        v37 = v1;
        v38 = sub_21DBFB63C();

        if (v38)
        {
          [v37 insertSubview:v4 aboveSubview:v34];

          goto LABEL_19;
        }
      }
    }

    [v1 sendSubviewToBack_];
    goto LABEL_19;
  }

  v4 = *&v0[v2];
LABEL_19:
  v39 = v3;
  return v4;
}

id TTRIRemindersListDescriptionAndTagsView.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_needsUpdate] = 1;
  *&v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView] = 0;
  v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_allowsEditing] = 0;
  v2 = &v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_appLinkButtonConfiguration];
  *v2 = 0u;
  v2[1] = 0u;
  v3 = &v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_subtaskButtonConfiguration];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = &v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo];
  sub_21D6B9EA4(v16);
  v5 = v16[7];
  *(v4 + 6) = v16[6];
  *(v4 + 7) = v5;
  *(v4 + 8) = v16[8];
  *(v4 + 18) = v17;
  v6 = v16[3];
  *(v4 + 2) = v16[2];
  *(v4 + 3) = v6;
  v7 = v16[5];
  *(v4 + 4) = v16[4];
  *(v4 + 5) = v7;
  v8 = v16[1];
  *v4 = v16[0];
  *(v4 + 1) = v8;
  *&v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_descriptionTextView] = 0;
  *&v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_appLinkButton] = 0;
  *&v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_subtaskButton] = 0;
  *&v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView____lazy_storage___debugBoundingBoxLayers] = 0;
  v9 = &v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView____lazy_storage___measurementWrapper];
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 0;
  v10 = &v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_subviewSpacingContext];
  *v10 = 0;
  *(v10 + 4) = 1;
  v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_textDragAndDropDisabled] = 0;
  v11 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_unsupportedTextDropHandler;
  *&v0[v11] = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v12 = sub_21DBFA5DC();
  v15.receiver = v0;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithArrangedSubviews_, v12);

  return v13;
}

id TTRIRemindersListDescriptionAndTagsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRIRemindersListDescriptionAndTagsView.invalidateInternalState(for:)(uint64_t a1)
{
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v17, sel_invalidateInternalStateForInvalidation_, a1);
  if (a1 >= 2)
  {
    sub_21D6B9EA4(v13);
    v4 = &v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo];
    v5 = *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 112];
    v15[6] = *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 96];
    v15[7] = v5;
    v15[8] = *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 128];
    v16 = *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 144];
    v6 = *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 48];
    v15[2] = *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 32];
    v15[3] = v6;
    v7 = *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 80];
    v15[4] = *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 64];
    v15[5] = v7;
    v8 = *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 16];
    v15[0] = *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo];
    v15[1] = v8;
    v9 = v13[7];
    *(v4 + 6) = v13[6];
    *(v4 + 7) = v9;
    *(v4 + 8) = v13[8];
    *(v4 + 18) = v14;
    v10 = v13[3];
    *(v4 + 2) = v13[2];
    *(v4 + 3) = v10;
    v11 = v13[5];
    *(v4 + 4) = v13[4];
    *(v4 + 5) = v11;
    v12 = v13[1];
    *v4 = v13[0];
    *(v4 + 1) = v12;
    return sub_21D0CF7E0(v15, &qword_27CE5FEF8, &unk_21DC22A10);
  }

  return result;
}

CGSize __swiftcall TTRIRemindersListDescriptionAndTagsView.calculateArrangedSizeFitting(_:)(CGSize a1)
{
  sub_21D6B66DC(v4, a1.width);
  sub_21D6BA094(v4);
  v1 = v5;
  v2 = v6;
  result.height = v2;
  result.width = v1;
  return result;
}

double sub_21D6B66DC@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = (v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo);
  v6 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 112);
  v7 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 80);
  v73 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 96);
  v74 = v6;
  v8 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 112);
  v75 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 128);
  v9 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 48);
  v10 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 16);
  v69 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 32);
  v70 = v9;
  v11 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 48);
  v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 80);
  v71 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 64);
  v72 = v12;
  v13 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 16);
  v67 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo);
  v68 = v13;
  v83 = v73;
  v84 = v8;
  v85 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 128);
  v79 = v69;
  v80 = v11;
  v81 = v71;
  v82 = v7;
  v76 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 144);
  v86 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_cachedLayoutInfo + 144);
  v77 = v67;
  v78 = v10;
  if (sub_21D6BA584(&v77) == 1)
  {
    goto LABEL_5;
  }

  v15 = *&v77;
  v52 = v73;
  v53 = v74;
  v54 = v75;
  v55 = v76;
  v48 = v69;
  v49 = v70;
  v50 = v71;
  v51 = v72;
  v46 = v67;
  v47 = v68;
  sub_21D6BA630(&v46, &v57);
  if ((sub_21D110D14(a2, 0.0000000149011612, v15) & 1) == 0)
  {
    sub_21D0CF7E0(&v67, &qword_27CE5FEF8, &unk_21DC22A10);
LABEL_5:
    v14.n128_f64[0] = a2;
    sub_21D6B7D84(v56, v14);
    v61 = v56[4];
    v62 = v56[5];
    v63 = v56[6];
    v64 = v56[7];
    v57 = v56[0];
    v58 = v56[1];
    v59 = v56[2];
    v60 = v56[3];
    sub_21D6BA59C(v56, &v46);
    v18 = sub_21D6B75E0();
    v20 = v19;
    sub_21D6BA604(v56);
    *v34 = a2;
    *&v34[72] = v61;
    *&v34[88] = v62;
    *&v34[104] = v63;
    *&v34[120] = v64;
    *&v34[8] = v57;
    *&v34[24] = v58;
    *&v34[40] = v59;
    *&v34[56] = v60;
    *&v34[136] = v18;
    v35 = v20;
    v43 = *&v34[112];
    v44 = *&v34[128];
    v41 = *&v34[80];
    v42 = *&v34[96];
    v39 = *&v34[48];
    v40 = *&v34[64];
    v37 = *&v34[16];
    v38 = *&v34[32];
    v36 = *v34;
    v45 = v20;
    nullsub_1();
    v21 = v5[7];
    v52 = v5[6];
    v53 = v21;
    v54 = v5[8];
    v55 = *(v5 + 18);
    v22 = v5[3];
    v48 = v5[2];
    v49 = v22;
    v23 = v5[5];
    v50 = v5[4];
    v51 = v23;
    v24 = v5[1];
    v46 = *v5;
    v47 = v24;
    v25 = *&v34[112];
    v5[6] = *&v34[96];
    v5[7] = v25;
    v5[8] = v44;
    *(v5 + 18) = v45;
    v26 = v39;
    v5[2] = v38;
    v5[3] = v26;
    v27 = v41;
    v5[4] = v40;
    v5[5] = v27;
    v28 = v37;
    *v5 = v36;
    v5[1] = v28;
    sub_21D6BA630(v34, &v57);
    sub_21D0CF7E0(&v46, &qword_27CE5FEF8, &unk_21DC22A10);
    v63 = *&v34[96];
    v64 = *&v34[112];
    v65 = *&v34[128];
    v66 = v35;
    v59 = *&v34[32];
    v60 = *&v34[48];
    v61 = *&v34[64];
    v62 = *&v34[80];
    v16 = *v34;
    v17 = *&v34[16];
    goto LABEL_6;
  }

  v63 = v83;
  v64 = v84;
  v65 = v85;
  v66 = v86;
  v59 = v79;
  v60 = v80;
  v61 = v81;
  v62 = v82;
  v16 = v77;
  v17 = v78;
LABEL_6:
  v57 = v16;
  v58 = v17;
  v29 = v64;
  *(a1 + 96) = v63;
  *(a1 + 112) = v29;
  *(a1 + 128) = v65;
  *(a1 + 144) = v66;
  v30 = v60;
  *(a1 + 32) = v59;
  *(a1 + 48) = v30;
  v31 = v62;
  *(a1 + 64) = v61;
  *(a1 + 80) = v31;
  result = *&v57;
  v33 = v58;
  *a1 = v57;
  *(a1 + 16) = v33;
  return result;
}

Swift::Void __swiftcall TTRIRemindersListDescriptionAndTagsView.layoutArrangedSubviews(inBounds:)(__C::CGRect inBounds)
{
  v5 = v1;
  height = inBounds.size.height;
  width = inBounds.size.width;
  y = inBounds.origin.y;
  x = inBounds.origin.x;
  v10 = [v1 isDebugBoundingBoxesEnabled];
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = sub_21D6B7420();
    v13 = v12;
    if (v12 >> 62)
    {
      v14 = sub_21DBFBD7C();
      if (v14)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
LABEL_4:
        if (v14 < 1)
        {
          goto LABEL_55;
        }

        v15 = 0;
        v4 = v13 & 0xC000000000000001;
        do
        {
          if (v4)
          {
            v16 = MEMORY[0x223D44740](v15, v13);
          }

          else
          {
            v16 = *(v13 + 8 * v15 + 32);
          }

          v3 = v16;
          ++v15;
          [v16 removeFromSuperlayer];
        }

        while (v14 != v15);
      }
    }

    *&v5[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView____lazy_storage___debugBoundingBoxLayers] = v11;
  }

  v101.origin.x = x;
  v101.origin.y = y;
  v101.size.width = width;
  v101.size.height = height;
  v17 = CGRectGetWidth(v101);
  sub_21D6B66DC(v83, v17);
  v18 = v84;
  v19 = v85;
  v20 = v86;
  v21 = v87;
  v78 = v90;
  v79 = v89;
  v76 = v92;
  v77 = v91;
  v2 = v93;
  v22 = v94;
  v23 = v95;
  v24 = v96;
  v25 = v97;
  v100 = v98;
  v81 = v99;
  if ((v88 & 1) == 0)
  {
    v26 = *&v5[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_descriptionTextView];
    if (v26)
    {
      v27 = v26;
      [v5 layoutFrameForArrangedSubview:v27 withProposedContentFrame:{v18, v19, v20, v21}];
      [v27 setUntransformedFrame_];
    }
  }

  v28 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v29 = *&v5[v28];
  if (!v29)
  {
    v80 = 0;
    if (v2)
    {
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  v30 = [v29 textContainer];
  v31 = [v30 exclusionPaths];

  sub_21D0D8CF0(0, &qword_27CE5FF00, 0x277D75208);
  v32 = sub_21DBFA5EC();

  if (v32 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_18;
    }
  }

  else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x223D44740](0, v32);
LABEL_21:
      v80 = v33;

      if (v2)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(v32 + 32);
      goto LABEL_21;
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v80 = 0;
  if (v2)
  {
    goto LABEL_35;
  }

LABEL_27:
  v34 = *&v5[v28];
  if (!v34)
  {
    goto LABEL_60;
  }

  v35 = v34;
  [v5 layoutFrameForArrangedSubview:v35 withProposedContentFrame:{v79, v78, v77, v76}];
  [v35 setUntransformedFrame_];
  v36 = v100;
  v37 = [v35 textContainer];
  if (v36)
  {
    sub_21D0D8CF0(0, &qword_27CE5FF00, 0x277D75208);
    v38 = sub_21DBFA5DC();
    [v37 setExclusionPaths_];

LABEL_34:
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_21DC09CF0;
  *(v39 + 32) = [objc_opt_self() bezierPathWithRect_];
  sub_21D0D8CF0(0, &qword_27CE5FF00, 0x277D75208);
  v40 = sub_21DBFA5DC();

  [v37 setExclusionPaths_];

  if (![v5 isDebugBoundingBoxesEnabled])
  {
    goto LABEL_34;
  }

  v41 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v102.origin.y = v78;
  v102.origin.x = v79;
  v102.size.height = v76;
  v102.size.width = v77;
  MinY = CGRectGetMinY(v102);
  v103.origin.x = v22;
  v103.origin.y = v23;
  v103.size.width = v24;
  v103.size.height = v25;
  v104 = CGRectOffset(v103, 0.0, MinY);
  [v41 setFrame_];
  v43 = [objc_opt_self() grayColor];
  v44 = [v43 colorWithAlphaComponent_];

  v45 = [v44 CGColor];
  [v41 setBackgroundColor_];

  v46 = [v5 layer];
  [v46 addSublayer_];

  v82 = sub_21D6B7420();
  v47 = v41;
  MEMORY[0x223D42D80]();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21DBFA63C();
  }

  sub_21DBFA6CC();

  *&v5[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView____lazy_storage___debugBoundingBoxLayers] = v82;

LABEL_35:
  v48 = *&v5[v28];
  if (v48)
  {
    v2 = v48;
    if ([v2 isHidden])
    {
LABEL_59:

      goto LABEL_60;
    }

    v3 = v2;
    v49 = [v3 attributedText];
    if (!v49)
    {
      goto LABEL_97;
    }

    v50 = v49;
    v51 = [v49 string];

    v52 = sub_21DBFA16C();
    v54 = v53;

    v55 = HIBYTE(v54) & 0xF;
    if ((v54 & 0x2000000000000000) == 0)
    {
      v55 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v55)
    {

      goto LABEL_59;
    }

    v56 = [v3 textContainer];

    v57 = [v56 exclusionPaths];
    sub_21D0D8CF0(0, &qword_27CE5FF00, 0x277D75208);
    v4 = sub_21DBFA5EC();

    if (!(v4 >> 62))
    {
      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_44:
        if ((v4 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x223D44740](0, v4);
LABEL_47:
          v59 = v58;

          if (v80)
          {
            if (v59)
            {
              v60 = v80;
              v61 = sub_21DBFB63C();

              if (v61)
              {
                goto LABEL_59;
              }
            }
          }

          else
          {
            if (!v59)
            {
              goto LABEL_59;
            }
          }

LABEL_58:
          [v3 setNeedsLayout];
          [v3 layoutIfNeeded];
          goto LABEL_59;
        }

        if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v58 = *(v4 + 32);
          goto LABEL_47;
        }

        __break(1u);
LABEL_97:
        __break(1u);
        return;
      }

LABEL_57:

      if (!v80)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

LABEL_56:
    if (sub_21DBFBD7C())
    {
      goto LABEL_44;
    }

    goto LABEL_57;
  }

LABEL_60:
  v62 = sub_21D6B7468();
  v63 = v62;
  if (v62 >> 62)
  {
    goto LABEL_75;
  }

  for (i = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v65 = 0;
    while (1)
    {
      if ((v63 & 0xC000000000000001) != 0)
      {
        v66 = MEMORY[0x223D44740](v65, v63);
      }

      else
      {
        if (v65 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v66 = *(v63 + 8 * v65 + 32);
      }

      v67 = v66;
      v68 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if ([v66 isHidden])
      {
      }

      else
      {
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      ++v65;
      if (v68 == i)
      {
        v69 = v11;
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    ;
  }

  v69 = MEMORY[0x277D84F90];
LABEL_77:

  if (v69 < 0 || (v69 & 0x4000000000000000) != 0)
  {
    goto LABEL_92;
  }

  v70 = *(v69 + 16);
  if (v70)
  {
LABEL_80:
    v71 = 0;
    v72 = (v81 + 56);
    do
    {
      if ((v69 & 0xC000000000000001) != 0)
      {
        v73 = MEMORY[0x223D44740](v71, v69);
      }

      else
      {
        if (v71 >= *(v69 + 16))
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          v70 = sub_21DBFBD7C();
          if (!v70)
          {
            break;
          }

          goto LABEL_80;
        }

        v73 = *(v69 + 8 * v71 + 32);
      }

      v74 = v73;
      v75 = *(v81 + 16);
      if (v71 == v75)
      {

        sub_21D6BA094(v83);

        goto LABEL_94;
      }

      if (v71 >= v75)
      {
        goto LABEL_91;
      }

      ++v71;
      [v5 layoutFrameForArrangedSubview:v73 withProposedContentFrame:{*(v72 - 3), *(v72 - 2), *(v72 - 1), *v72}];
      [v74 setUntransformedFrame_];

      v72 += 4;
    }

    while (v70 != v71);
  }

  sub_21D6BA094(v83);
LABEL_94:
}