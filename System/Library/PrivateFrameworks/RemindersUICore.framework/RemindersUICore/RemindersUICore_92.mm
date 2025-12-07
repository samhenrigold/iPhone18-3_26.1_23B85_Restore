unint64_t sub_21D985B54()
{
  result = qword_27CE64430;
  if (!qword_27CE64430)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderTextStorage.StyleTypingAttributeState.StyleState, &type metadata for TTRReminderTextStorage.StyleTypingAttributeState.StyleState, v0, v1);
    atomic_store(result, &qword_27CE64430);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderTextStorage.StyleTypingAttributeState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 3;
  v6 = v4 - 3;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderTextStorage.StyleTypingAttributeState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_21D985D5C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D985DA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D985E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id TTRIRemindersListCellInfoButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRIRemindersListCellInfoButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id TTRIRemindersListCellInfoButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRIRemindersListCellInfoButton.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id TTRIRemindersListCellInfoButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *TTRRemindersBoardCellInfoButtonStates.init(defaultState:stateOverrides:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t TTRBoardReminderCellInfoButtonState.Layout.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

BOOL static TTRBoardReminderCellInfoButtonState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 - 3) < 2)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL sub_21D986234(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 - 3) < 2)
  {
    return 0;
  }

  return v2 == v3;
}

void TTRRemindersBoardCellInfoButtonStates.state(for:)(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  if (*(v4 + 16))
  {
    v5 = sub_21D181E00();
    if (v6)
    {
      v3 = *(*(v4 + 56) + v5);
    }
  }

  *a1 = v3;
}

void static TTRRemindersBoardCellInfoButtonStates.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v2 == 4)
  {
    if (v4 == 4)
    {
      goto LABEL_4;
    }
  }

  else if (v2 == 3)
  {
    if (v4 == 3)
    {
LABEL_4:
      sub_21D370B24(v3, v5);
    }
  }

  else if (v2 == v4 && (v4 - 5) < 0xFFFFFFFE)
  {
    goto LABEL_4;
  }
}

void sub_21D986338(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v2 == 4)
  {
    if (v4 == 4)
    {
      goto LABEL_4;
    }
  }

  else if (v2 == 3)
  {
    if (v4 == 3)
    {
LABEL_4:
      sub_21D370B24(v3, v5);
    }
  }

  else if (v2 == v4 && (v4 - 5) < 0xFFFFFFFE)
  {
    goto LABEL_4;
  }
}

unint64_t sub_21D98638C()
{
  result = qword_27CE64438;
  if (!qword_27CE64438)
  {
    atomic_store(result, &qword_27CE64438);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRBoardReminderCellInfoButtonState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D986480(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_21D986494(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

id TTRReminderLocationPickerAutocompleteContactItemProvider.__allocating_init(autocompleteStore:backgroundQueue:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_21D987E84(a1, a2);

  return v6;
}

uint64_t sub_21D986528()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64440);
  v1 = __swift_project_value_buffer(v0, qword_27CE64440);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRReminderLocationPickerAutocompleteContactItemProvider.init(autocompleteStore:backgroundQueue:)(void *a1, void *a2)
{
  v4 = sub_21D987E84(a1, a2);

  return v4;
}

uint64_t sub_21D986630()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchOperation;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchOperation);
  if (v2)
  {
    v7.receiver = *(v0 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchOperation);
    v7.super_class = type metadata accessor for FetchOperation(0);
    v3 = v2;
    objc_msgSendSuper2(&v7, sel_cancel);
    v4 = swift_unknownObjectRetain();
    sub_21D986D14(v4);

    swift_unknownObjectRelease();
    v5 = *(v0 + v1);
  }

  else
  {
    v5 = 0;
  }

  *(v0 + v1) = 0;

  v8 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE644A0, &qword_21DC1E0F0);
  swift_allocObject();
  *(v0 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchPromise) = sub_21DBF824C();
}

id TTRReminderLocationPickerAutocompleteContactItemProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t TTRReminderLocationPickerAutocompleteContactItemProvider.items(matching:location:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  *v9 = sub_21DBFB12C();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_21DBF9DAC();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v12 = (v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentSearchText);
    v13 = *(v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentSearchText) == a1 && *(v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentSearchText + 8) == a2;
    if (v13 || (sub_21DBFC64C() & 1) != 0)
    {
      v14 = *(v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchPromise);
    }

    else
    {
      sub_21D986630();
      *v12 = a1;
      v12[1] = a2;
      sub_21DBF8E0C();

      v15 = v12[1];
      if ((v15 & 0x2000000000000000) != 0)
      {
        v16 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v16 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        v17 = *(v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_autocompleteStore);
        Operation = type metadata accessor for FetchOperation(0);
        v19 = objc_allocWithZone(Operation);
        v20 = &v19[qword_27CE64470];
        *v20 = 0;
        *(v20 + 1) = 0;
        *&v19[qword_27CE64478] = MEMORY[0x277D84F90];
        *&v19[qword_27CE64480] = 0;
        *&v19[qword_27CE64488] = v17;
        v21 = &v19[qword_27CE64490];
        *v21 = a1;
        *(v21 + 1) = a2;
        v31.receiver = v19;
        v31.super_class = Operation;
        sub_21DBF8E0C();
        v22 = v17;
        v23 = objc_msgSendSuper2(&v31, sel_init);
        v24 = *(v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchOperation);
        *(v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchOperation) = v23;
        v25 = v23;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE644A0, &qword_21DC1E0F0);
        v26 = *(v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_operationQueue);
        *(swift_allocObject() + 16) = v26;
        v27 = v25;
        v28 = v26;
        sub_21DBF82BC();

        v29 = sub_21DBFB12C();
        v14 = sub_21DBF826C();

        *(v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchPromise) = v14;
      }

      else
      {
        v30[1] = MEMORY[0x277D84F90];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE644A0, &qword_21DC1E0F0);
        swift_allocObject();
        return sub_21DBF824C();
      }
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_21D986BD4(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + qword_27CE64470);
  v6 = *(v2 + qword_27CE64470);
  v5 = *(v2 + qword_27CE64470 + 8);
  *v4 = a1;
  v4[1] = a2;
  sub_21D0D0E88(v6, v5);
  v7 = objc_allocWithZone(MEMORY[0x277CFBC60]);

  v8 = [v7 init];
  v9 = sub_21DBFA12C();
  [v8 setSearchString_];

  [v8 setSearchType_];
  [v8 setIncludeDirectoryServers_];
  [v8 setIncludeCalendarServers_];
  [v8 setIncludeContacts_];
  v10 = [*(v2 + qword_27CE64488) executeFetchRequest:v8 delegate:v2];

  *(v2 + qword_27CE64480) = v10;

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_21D986D14(void *a1)
{
  if (a1)
  {
    [a1 cancel];
  }

  v2 = sub_21DBF627C();
  sub_21D9880DC();
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D44F98], v2);
  v5 = (v1 + qword_27CE64470);
  v6 = *(v1 + qword_27CE64470);
  if (v6)
  {
    v7 = v5[1];

    v6(v3, 1);

    sub_21D0D0E88(v6, v7);
  }

  else
  {
  }

  v8 = *v5;
  v9 = v5[1];
  *v5 = 0;
  v5[1] = 0;

  return sub_21D0D0E88(v8, v9);
}

void sub_21D986E14(void *a1)
{
  v3.receiver = a1;
  v3.super_class = swift_getObjectType();
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, sel_cancel);
  v2 = swift_unknownObjectRetain();
  sub_21D986D14(v2);
  swift_unknownObjectRelease();
}

uint64_t sub_21D986E90(void *a1)
{
  if ([v1 isCancelled])
  {
    [a1 cancel];
    v3 = sub_21DBF627C();
    sub_21D9880DC();
    v4 = swift_allocError();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D44F98], v3);
    v6 = &v1[qword_27CE64470];
    v7 = *&v1[qword_27CE64470];
    if (v7)
    {
      v8 = v6[1];

      v7(v4, 1);

      sub_21D0D0E88(v7, v8);
    }

    else
    {
    }

    v15 = *v6;
    v16 = v6[1];
    *v6 = 0;
    v6[1] = 0;

    return sub_21D0D0E88(v15, v16);
  }

  else
  {
    v9 = qword_27CE64478;
    swift_beginAccess();
    v10 = &v1[qword_27CE64470];
    v11 = *&v1[qword_27CE64470];
    if (v11)
    {
      v12 = v10[1];
      v13 = *&v1[v9];
      sub_21DBF8E0C();
      sub_21D0D0E78(v11, v12);
      v11(v13, 0);

      sub_21D0D0E88(v11, v12);
      v14 = *v10;
    }

    else
    {
      v14 = 0;
    }

    v18 = v10[1];
    *v10 = 0;
    v10[1] = 0;
    return sub_21D0D0E88(v14, v18);
  }
}

void sub_21D98705C(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_21D986E90(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_21D9870C4(void *a1, void *a2)
{
  if ([v2 isCancelled])
  {
    [a1 cancel];
    v5 = sub_21DBF627C();
    sub_21D9880DC();
    v6 = swift_allocError();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D44F98], v5);
    v8 = &v2[qword_27CE64470];
    v10 = &v2[qword_27CE64470 + 8];
    v9 = *&v2[qword_27CE64470];
    if (!v9)
    {

      goto LABEL_8;
    }

    v11 = *v10;

    v9(v6, 1);

LABEL_6:
    sub_21D0D0E88(v9, v11);
LABEL_8:
    v12 = *v8;
    goto LABEL_9;
  }

  v8 = &v2[qword_27CE64470];
  v10 = &v2[qword_27CE64470 + 8];
  v9 = *&v2[qword_27CE64470];
  if (v9)
  {
    v11 = *v10;

    v9(a2, 1);
    goto LABEL_6;
  }

  v12 = 0;
LABEL_9:
  v13 = *v10;
  *v8 = 0;
  v8[1] = 0;

  return sub_21D0D0E88(v12, v13);
}

void sub_21D987230(void *a1, uint64_t a2, void *a3, void *a4)
{
  swift_unknownObjectRetain();
  v8 = a4;
  v7 = a1;
  sub_21D9870C4(a3, v8);
  swift_unknownObjectRelease();
}

uint64_t sub_21D9872AC(void *a1, unint64_t a2)
{
  v3 = v2;
  v98 = *MEMORY[0x277D85DE8];
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  *v9 = sub_21DBFB12C();
  (*(v7 + 104))(v9, *MEMORY[0x277D851F0], v6);
  v10 = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    goto LABEL_49;
  }

  if ([v3 isCancelled])
  {
    [a1 cancel];
    v11 = sub_21DBF627C();
    sub_21D9880DC();
    v12 = swift_allocError();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D44F98], v11);
    v14 = &v3[qword_27CE64470];
    v15 = *&v3[qword_27CE64470];
    if (v15)
    {
      v16 = v14[1];

      v15(v12, 1);

      sub_21D0D0E88(v15, v16);
    }

    else
    {
    }

    v74 = *v14;
    v75 = v14[1];
    *v14 = 0;
    v14[1] = 0;
    return sub_21D0D0E88(v74, v75);
  }

  if (a2 >> 62)
  {
    goto LABEL_50;
  }

  v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
LABEL_7:
    v18 = sub_21DBF633C();
    v19 = 0;
    v79 = 0;
    v78 = &v3[qword_27CE64490];
    v87 = a2 & 0xC000000000000001;
    v81 = a2 & 0xFFFFFFFFFFFFFF8;
    v80 = a2 + 32;
    v86 = *MEMORY[0x277CBD0C8];
    v90 = 0x800000021DC71D10;
    v95 = MEMORY[0x277D84F90];
    *&v20 = 136315650;
    v77 = v20;
    v84 = a2;
    v85 = v3;
    v83 = v17;
    v82 = v18;
    while (1)
    {
      if (v87)
      {
        v21 = MEMORY[0x223D44740](v19, a2);
      }

      else
      {
        if (v19 >= *(v81 + 16))
        {
          goto LABEL_47;
        }

        v21 = *(v80 + 8 * v19);
      }

      v89 = v21;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v17 = sub_21DBFBD7C();
        if (!v17)
        {
          break;
        }

        goto LABEL_7;
      }

      v23 = sub_21DBF631C();
      sub_21D7F6938(v23);

      v24 = sub_21DBFA5DC();

      v96 = 0;
      v25 = [v89 contactWithKeysToFetch:v24 error:&v96];

      if (v25)
      {
        v26 = v96;
        if ([v25 isKeyAvailable_])
        {
          v94 = v25;
          v27 = [v25 postalAddresses];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE645B0, &qword_21DC31BC0);
          v28 = sub_21DBFA5EC();

          v29 = v28;
          if (v28 >> 62)
          {
            v30 = sub_21DBFBD7C();
            v29 = v28;
            if (!v30)
            {
LABEL_43:

              goto LABEL_9;
            }
          }

          else
          {
            v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v30)
            {
              goto LABEL_43;
            }
          }

          if (v30 < 1)
          {
            goto LABEL_48;
          }

          v88 = v19;
          v31 = 0;
          v91 = v29 & 0xC000000000000001;
          v92 = v30;
          v32 = v94;
          v93 = v29;
          do
          {
            if (v91)
            {
              v33 = MEMORY[0x223D44740](v31);
            }

            else
            {
              v33 = *(v29 + 8 * v31 + 32);
            }

            v34 = v33;
            v96 = 0;
            v97 = 0xE000000000000000;
            sub_21DBFBEEC();

            v96 = 0xD000000000000014;
            v97 = v90;
            v35 = [v34 label];
            if (v35)
            {
              v36 = v35;
              v37 = sub_21DBFA16C();
              v39 = v38;
            }

            else
            {
              v39 = 0xE800000000000000;
              v37 = 0x6C6562616C5F6F6ELL;
            }

            MEMORY[0x223D42AA0](v37, v39);

            MEMORY[0x223D42AA0](45, 0xE100000000000000);
            v40 = [v34 value];
            v41 = [v40 description];
            v42 = sub_21DBFA16C();
            v44 = v43;

            MEMORY[0x223D42AA0](v42, v44);

            v46 = v96;
            v45 = v97;
            v47 = [v34 label];
            if (v47)
            {
              v48 = v47;
              v49 = sub_21DBFA16C();
              v51 = v50;
            }

            else
            {
              v49 = 0;
              v51 = 0;
            }

            v52 = [v34 value];
            v53 = v32;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v95 = sub_21D212DD4(0, *(v95 + 2) + 1, 1, v95);
            }

            v55 = *(v95 + 2);
            v54 = *(v95 + 3);
            if (v55 >= v54 >> 1)
            {
              v95 = sub_21D212DD4((v54 > 1), v55 + 1, 1, v95);
            }

            ++v31;

            v56 = v95;
            *(v95 + 2) = v55 + 1;
            v57 = &v56[56 * v55];
            *(v57 + 4) = v46;
            *(v57 + 5) = v45;
            v29 = v93;
            v32 = v94;
            *(v57 + 6) = v94;
            *(v57 + 7) = v49;
            *(v57 + 8) = v51;
            *(v57 + 9) = v52;
            v57[80] = 32;
          }

          while (v92 != v31);

          a2 = v84;
          v3 = v85;
          v17 = v83;
          goto LABEL_41;
        }
      }

      else
      {
        v88 = v19;
        v58 = v96;
        v59 = sub_21DBF52DC();

        swift_willThrow();
        if (qword_27CE56ED8 != -1)
        {
          swift_once();
        }

        v79 = 0;
        v60 = sub_21DBF84BC();
        __swift_project_value_buffer(v60, qword_27CE64440);
        v61 = v3;
        v62 = v59;
        v63 = v89;
        v64 = sub_21DBF84AC();
        v65 = sub_21DBFAEBC();

        if (!os_log_type_enabled(v64, v65))
        {

LABEL_41:
          v19 = v88;
          goto LABEL_9;
        }

        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v96 = v68;
        *v66 = v77;
        *(v66 + 4) = sub_21D0CDFB4(*v78, *(v78 + 1), &v96);
        *(v66 + 12) = 2080;
        swift_getErrorValue();
        v69 = sub_21DBFC74C();
        v71 = sub_21D0CDFB4(v69, v70, &v96);

        *(v66 + 14) = v71;
        *(v66 + 22) = 2112;
        *(v66 + 24) = v63;
        *v67 = v63;
        v72 = v63;
        _os_log_impl(&dword_21D0C9000, v64, v65, "Failed to get contact from AutoComplete suggestion -- skipping suggestion {searchText: %s, error: %s, autocompleteResult: %@}", v66, 0x20u);
        sub_21D560EB8(v67);
        v17 = v83;
        a2 = v84;
        MEMORY[0x223D46520](v67, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v68, -1, -1);
        v73 = v66;
        v3 = v85;
        MEMORY[0x223D46520](v73, -1, -1);

        v19 = v88;
      }

LABEL_9:
      if (v19 == v17)
      {
        goto LABEL_52;
      }
    }
  }

  v95 = MEMORY[0x277D84F90];
LABEL_52:
  swift_beginAccess();
  sub_21D563628(v95);
  return swift_endAccess();
}

double sub_21D987C44(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_21D0D8CF0(0, &unk_27CE645A0, 0x277CFBC68);
  v6 = sub_21DBFA5EC();
  swift_unknownObjectRetain();
  v7 = a1;
  sub_21D9872AC(a3, v6);
  swift_unknownObjectRelease();

  return result;
}

double sub_21D987D08()
{

  sub_21D0D0E88(*(v0 + qword_27CE64470), *(v0 + qword_27CE64470 + 8));

  swift_unknownObjectRelease();
  return result;
}

double sub_21D987D80(uint64_t a1)
{

  sub_21D0D0E88(*(a1 + qword_27CE64470), *(a1 + qword_27CE64470 + 8));

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_21D987E04(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_21D986BD4(sub_21D22D130, v4);
}

id sub_21D987E84(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchOperation] = 0;
  *&v3[OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_autocompleteStore] = a1;
  v7 = objc_allocWithZone(MEMORY[0x277CCABD8]);
  v8 = a1;
  v9 = [v7 init];
  [v9 setMaxConcurrentOperationCount_];
  [v9 setUnderlyingQueue_];
  *&v3[OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_operationQueue] = v9;
  v10 = &v3[OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentSearchText];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v13 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE644A0, &qword_21DC1E0F0);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchPromise] = sub_21DBF824C();
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t type metadata accessor for FetchOperation(uint64_t a1)
{
  result = qword_27CE644D0;
  if (!qword_27CE644D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D9880DC()
{
  result = qword_27CE645B8;
  if (!qword_27CE645B8)
  {
    v3 = sub_21DBF627C();
    result = swift_getWitnessTable(MEMORY[0x277D44FA0], v3, v0, v1);
    atomic_store(result, &qword_27CE645B8);
  }

  return result;
}

uint64_t TTRManagedPasteboardItem.init(pasteboard:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRSystemPasteboardDataType(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  if (qword_27CE56EE8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_27CE645D8);
  v11 = *(v9 + 8);
  if (v11(v10, v8, v9))
  {
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    sub_21DBF837C();
    swift_storeEnumTagMultiPayload();
    v14 = (*(v13 + 16))(v7, v12, v13);
    v16 = v15;
    sub_21D98A044(v7);
    if (v16)
    {
      *a2 = v14;
      *(a2 + 8) = v16;
      *(a2 + 16) = 0;
      return __swift_destroy_boxed_opaque_existential_0(a1);
    }

    goto LABEL_20;
  }

  if (qword_27CE56EF0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_27CE645F0);
  if ((v11(v18, v8, v9) & 1) == 0)
  {
    if (qword_27CE56EF8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v5, qword_27CE64608);
    if ((v11(v18, v8, v9) & 1) == 0)
    {
      if (qword_27CE56F00 != -1)
      {
        swift_once();
      }

      v22 = __swift_project_value_buffer(v5, qword_27CE64620);
      if (v11(v22, v8, v9))
      {
        v23 = a1[3];
        v24 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v23);
        v21 = (*(v24 + 24))(v22, v23, v24);
        if (v21)
        {
          goto LABEL_13;
        }
      }

LABEL_20:
      result = __swift_destroy_boxed_opaque_existential_0(a1);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = -1;
      return result;
    }
  }

  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = (*(v20 + 24))(v18, v19, v20);
  if (!v21)
  {
    goto LABEL_20;
  }

LABEL_13:
  *a2 = v21;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t type metadata accessor for TTRSystemPasteboardDataType(uint64_t a1)
{
  result = qword_27CE64640;
  if (!qword_27CE64640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

ValueMetadata *TTRManagedPasteboardItem.description.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    sub_21DBFBEEC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64638, &qword_21DC33A80);
    v2 = sub_21DBFA1AC();

    v6 = v2;
    MEMORY[0x223D42AA0](0xD00000000000002BLL, 0x800000021DC71D30);
    [v1 length];
  }

  else
  {
    sub_21DBFBEEC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64638, &qword_21DC33A80);
    v3 = sub_21DBFA1AC();

    v6 = v3;
    MEMORY[0x223D42AA0](0xD00000000000001ALL, 0x800000021DC71D60);
    sub_21DBFA28C();
  }

  v4 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v4);

  MEMORY[0x223D42AA0](10530, 0xE200000000000000);
  return v6;
}

unint64_t sub_21D988674(uint64_t a1, unint64_t a2)
{
  v5 = sub_21DBF4CAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = *(v2 + 8);
  if (*(v2 + 16))
  {
    v17 = *v2;
    v18 = v10;
    v19 = 1;
    return sub_21D988EA0(a1, a2, v9);
  }

  else
  {
    v17 = *v2;
    v18 = v10;
    sub_21DBF4C5C();
    sub_21D176F0C();
    v12 = sub_21DBFBB3C();
    v14 = v13;
    (*(v6 + 8))(v8, v5);

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v17 = v9;
      v18 = v10;
      v19 = 0;
      return sub_21D988814(a1, a2, v9, v10);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }
}

unint64_t sub_21D988814(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v71 = a1;
  v72 = a2;
  *&v79 = 9;
  *(&v79 + 1) = 0xE100000000000000;
  v74 = &v79;
  sub_21DBF8E0C();
  v7 = sub_21D98A0A8(0x7FFFFFFFFFFFFFFFLL, 1, sub_21D98AF98, v73, a3, a4, v6);

  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {

    v10 = MEMORY[0x277D84F90];
LABEL_30:
    *&v79 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
    v43 = sub_21DBFA07C();
    v45 = v44;

    *&v79 = 10;
    *(&v79 + 1) = 0xE100000000000000;
    MEMORY[0x28223BE20](v46);
    v67 = &v79;
    v47 = sub_21D98A0A8(0x7FFFFFFFFFFFFFFFLL, 1, sub_21D98B028, &v65, v43, v45, &v69);

    v48 = *(v47 + 16);
    if (v48)
    {
      v82 = v9;
      sub_21D18E678(0, v48, 0);
      v49 = v82;
      v50 = sub_21D44BEC8();
      v51 = sub_21D176F0C();
      v70 = v47;
      v52 = (v47 + 56);
      do
      {
        v53 = *(v52 - 1);
        v54 = *v52;
        v79 = *(v52 - 3);
        v80 = v53;
        v81 = v54;
        v77 = 0x88E2BFA3EF8F88E2;
        v78 = 0xA90000000000008FLL;
        v75 = 10;
        v76 = 0xE100000000000000;
        v67 = v51;
        v68 = v51;
        v66 = v50;
        v65 = MEMORY[0x277D837D0];
        v55 = sub_21DBFBB5C();
        v82 = v49;
        v58 = *(v49 + 16);
        v57 = *(v49 + 24);
        if (v58 >= v57 >> 1)
        {
          v69 = v55;
          v60 = v56;
          sub_21D18E678((v57 > 1), v58 + 1, 1);
          v56 = v60;
          v55 = v69;
          v49 = v82;
        }

        *(v49 + 16) = v58 + 1;
        v59 = v49 + 16 * v58;
        *(v59 + 32) = v55;
        *(v59 + 40) = v56;
        v52 += 4;
        --v48;
      }

      while (v48);
    }

    else
    {

      v49 = MEMORY[0x277D84F90];
    }

    v62 = v71;
    v61 = v72;
    v63 = HIBYTE(v72) & 0xF;
    if ((v72 & 0x2000000000000000) == 0)
    {
      v63 = v71 & 0xFFFFFFFFFFFFLL;
    }

    if (v63)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_21DC08D00;
      *(v64 + 32) = v62;
      *(v64 + 40) = v61;
      *&v79 = v64;
      sub_21DBF8E0C();
      sub_21D5623AC(v49);
      return v79;
    }

    return v49;
  }

  v70 = 0;
  v82 = MEMORY[0x277D84F90];
  sub_21D18E678(0, v8, 0);
  v10 = v82;
  v69 = v7;
  v11 = (v7 + 56);
  while (1)
  {
    v12 = *(v11 - 3);
    v13 = *(v11 - 2);
    v14 = *(v11 - 1);
    v15 = *v11;
    sub_21DBF8E0C();
    if (v13 >> 14 == v12 >> 14)
    {
LABEL_4:
      v16 = MEMORY[0x223D429B0](v12, v13, v14, v15);
      v18 = v17;
      goto LABEL_25;
    }

    if (sub_21DBFBADC() == 34 && v19 == 0xE100000000000000)
    {
    }

    else
    {
      v21 = sub_21DBFC64C();

      if ((v21 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    sub_21DBFBA9C();
    if (sub_21DBFBADC() == 34 && v22 == 0xE100000000000000)
    {
    }

    else
    {
      v23 = sub_21DBFC64C();

      if ((v23 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    sub_21DBF8E0C();
    result = sub_21DBFBAAC();
    if (v25)
    {
      result = v13;
    }

    if (v13 >> 14 < result >> 14)
    {
      break;
    }

    v26 = sub_21DBFBAEC();
    v28 = v27;

    result = sub_21DBFBACC();
    if (__OFSUB__(result, 1))
    {
      goto LABEL_43;
    }

    result = sub_21DBFBAAC();
    if (v29)
    {
      v30 = v28;
    }

    else
    {
      v30 = result;
    }

    if (v30 >> 14 < v26 >> 14)
    {
      goto LABEL_44;
    }

    v31 = sub_21DBFBAEC();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    *&v79 = v31;
    *(&v79 + 1) = v33;
    v80 = v35;
    v81 = v37;
    v77 = 10;
    v78 = 0xE100000000000000;
    v75 = 0x88E2BFA3EF8F88E2;
    v76 = 0xA90000000000008FLL;
    v38 = sub_21D44BEC8();
    v67 = sub_21D176F0C();
    v68 = v67;
    v66 = v38;
    v65 = MEMORY[0x277D837D0];
    v16 = sub_21DBFBB5C();
    v18 = v39;

LABEL_25:

    v82 = v10;
    v41 = *(v10 + 16);
    v40 = *(v10 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_21D18E678((v40 > 1), v41 + 1, 1);
      v10 = v82;
    }

    *(v10 + 16) = v41 + 1;
    v42 = v10 + 16 * v41;
    *(v42 + 32) = v16;
    *(v42 + 40) = v18;
    v11 += 4;
    if (!--v8)
    {

      v9 = MEMORY[0x277D84F90];
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_21D988EA0(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  v6 = *MEMORY[0x277D74118];
  v7 = [a3 length];
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = v5;
  v8[4] = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21D98AFB4;
  *(v9 + 24) = v8;
  aBlock[4] = sub_21D24B3B4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1A6068;
  aBlock[3] = &block_descriptor_122;
  v10 = _Block_copy(aBlock);
  v11 = a3;

  [v11 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, v10}];
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v13 = qword_27CE56EE0;
    sub_21DBF8E0C();
    if (v13 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v14 = sub_21DBF4CAC();
  __swift_project_value_buffer(v14, qword_27CE645C0);
  sub_21D176F0C();
  v15 = sub_21DBFBB3C();
  v17 = v16;

  *(v4 + 16) = v15;
  *(v4 + 24) = v17;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18 || (swift_beginAccess(), *(*(v5 + 16) + 16)))
  {
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v15, v17);
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;

    v19 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v19 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      swift_beginAccess();
      sub_21DBF8E0C();
      sub_21DBD1938(0, 0, a1, a2, v20);
      swift_endAccess();
    }
  }

  swift_beginAccess();
  v21 = *(v5 + 16);
  sub_21DBF8E0C();

  return v21;
}

double sub_21D989240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21DBF4CAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = a1;
  v24 = a2;
  sub_21DBF4C5C();
  sub_21D176F0C();
  v11 = sub_21DBFBB3C();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  v14 = *(a3 + 16);
  v15 = *(v14 + 2);
  if (!v15)
  {
    swift_beginAccess();
    MEMORY[0x223D42AA0](v11, v13);
    swift_endAccess();
LABEL_11:

    return result;
  }

  v16 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v16 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_21D210A84(0, v15 + 1, 1, v14);
    *(a3 + 16) = v14;
  }

  v19 = *(v14 + 2);
  v18 = *(v14 + 3);
  if (v19 >= v18 >> 1)
  {
    v14 = sub_21D210A84((v18 > 1), v19 + 1, 1, v14);
  }

  *(v14 + 2) = v19 + 1;
  v20 = &v14[16 * v19];
  *(v20 + 4) = v11;
  *(v20 + 5) = v13;
  *(a3 + 16) = v14;
  swift_endAccess();
  return result;
}

void sub_21D989444(uint64_t a1, uint64_t a2, uint64_t a3, int a4, id a5, uint64_t a6, uint64_t a7)
{
  v11 = [a5 attributedSubstringFromRange_];
  v12 = [v11 string];

  v13 = sub_21DBFA16C();
  v15 = v14;

  sub_21D0DB414(a1, v31);
  if (!v31[3])
  {
    sub_21D0CF7E0(v31, &qword_27CE5C690, &unk_21DC11AB0);
    goto LABEL_17;
  }

  sub_21D0D8CF0(0, &qword_27CE5C878, 0x277D74248);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    sub_21D989240(v13, v15, a6, a7);

    return;
  }

  v16 = [v30 ttr_textLists];
  sub_21D0D8CF0(0, &qword_27CE64670, 0x277D742B8);
  v17 = sub_21DBFA5EC();

  if (v17 >> 62)
  {
    v18 = sub_21DBFBD7C();
    if (v18)
    {
LABEL_5:
      v19 = __OFSUB__(v18, 1);
      v20 = v18 - 1;
      if (v19)
      {
        __break(1u);
      }

      else if ((v17 & 0xC000000000000001) == 0)
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v20 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v21 = *(v17 + 8 * v20 + 32);
          goto LABEL_10;
        }

        __break(1u);
        goto LABEL_24;
      }

      v21 = MEMORY[0x223D44740](v20, v17);
LABEL_10:
      v22 = v21;

      v23 = swift_allocObject();
      *(v23 + 16) = [v22 startingItemNumber];
      v24 = swift_allocObject();
      *(v24 + 24) = 0;
      *(v24 + 16) = 0;
      v31[0] = v13;
      v31[1] = v15;
      v25 = swift_allocObject();
      v25[2] = v22;
      v25[3] = v23;
      v25[4] = v24;
      v25[5] = a6;
      sub_21D176F0C();
      v16 = v22;

      sub_21DBFBB2C();

      swift_beginAccess();
      v13 = *(v24 + 24);
      if (!v13)
      {
LABEL_15:

        return;
      }

      v7 = *(v24 + 16);
      swift_beginAccess();
      v15 = *(a6 + 16);
      sub_21DBF8E0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a6 + 16) = v15;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_12:
        v28 = *(v15 + 2);
        v27 = *(v15 + 3);
        if (v28 >= v27 >> 1)
        {
          v15 = sub_21D210A84((v27 > 1), v28 + 1, 1, v15);
        }

        *(v15 + 2) = v28 + 1;
        v29 = &v15[16 * v28];
        *(v29 + 4) = v7;
        *(v29 + 5) = v13;
        *(a6 + 16) = v15;
        swift_endAccess();
        goto LABEL_15;
      }

LABEL_24:
      v15 = sub_21D210A84(0, *(v15 + 2) + 1, 1, v15);
      *(a6 + 16) = v15;
      goto LABEL_12;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_5;
    }
  }

  sub_21D989240(v13, v15, a6, a7);
}

void sub_21D989810(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v63 = a7;
  v64 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v62 - v12;
  swift_beginAccess();
  v14 = [a4 markerForItemNumber_];
  v15 = sub_21DBFA16C();
  v17 = v16;

  v65 = a1;
  v66 = a2;
  v69 = v15;
  v70 = v17;
  v18 = sub_21DBF582C();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  sub_21D176F0C();
  sub_21DBFBBAC();
  v20 = v19;
  v22 = v21;
  sub_21D0CF7E0(v13, &unk_27CE65010, &qword_21DC08D60);

  if (v22)
  {
    v65 = a1;
    v66 = a2;
    if (qword_27CE56EE0 != -1)
    {
      swift_once();
    }

    v23 = sub_21DBF4CAC();
    __swift_project_value_buffer(v23, qword_27CE645C0);
    v24 = sub_21DBFBB3C();
    v26 = v25;
    v27 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {
      goto LABEL_22;
    }

    v28 = v24;
    v29 = v64;
    swift_beginAccess();
    v30 = *(v29 + 24);
    if (v30)
    {
      v69 = *(v29 + 16);
      v70 = v30;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](10, 0xE100000000000000);
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](v28, v26);

      v31 = v69;
      v32 = v70;
      swift_beginAccess();
      *(v29 + 16) = v31;
      *(v29 + 24) = v32;
LABEL_22:

      return;
    }

    v56 = v63;
    swift_beginAccess();
    v57 = *(v56 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v56 + 16) = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_21D210A84(0, *(v57 + 2) + 1, 1, v57);
      *(v56 + 16) = v57;
    }

    v60 = *(v57 + 2);
    v59 = *(v57 + 3);
    if (v60 >= v59 >> 1)
    {
      v57 = sub_21D210A84((v59 > 1), v60 + 1, 1, v57);
    }

    *(v57 + 2) = v60 + 1;
    v61 = &v57[16 * v60];
    *(v61 + 4) = v28;
    *(v61 + 5) = v26;
    *(v56 + 16) = v57;
    swift_endAccess();
  }

  else
  {
    sub_21DBF8E0C();
    v33 = sub_21D3F7BA8(v20, a1, a2);
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v65 = v33;
    v66 = v35;
    v67 = v37;
    v68 = v39;
    if (qword_27CE56EE0 != -1)
    {
      swift_once();
    }

    v40 = sub_21DBF4CAC();
    v41 = __swift_project_value_buffer(v40, qword_27CE645C0);
    sub_21D44BEC8();
    v42 = sub_21DBFBB3C();
    v44 = v43;

    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = v42 & 0xFFFFFFFFFFFFLL;
    }

    v47 = v63;
    v46 = v64;
    if (!v45)
    {
      goto LABEL_20;
    }

    swift_beginAccess();
    v37 = *(v46 + 24);
    if (!v37)
    {
      goto LABEL_19;
    }

    v41 = *(v46 + 16);
    swift_beginAccess();
    v39 = *(v47 + 16);
    sub_21DBF8E0C();
    v48 = swift_isUniquelyReferenced_nonNull_native();
    *(v47 + 16) = v39;
    if ((v48 & 1) == 0)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v50 = *(v39 + 2);
      v49 = *(v39 + 3);
      if (v50 >= v49 >> 1)
      {
        v39 = sub_21D210A84((v49 > 1), v50 + 1, 1, v39);
      }

      *(v39 + 2) = v50 + 1;
      v51 = &v39[16 * v50];
      *(v51 + 4) = v41;
      *(v51 + 5) = v37;
      *(v47 + 16) = v39;
      swift_endAccess();
LABEL_19:
      swift_beginAccess();
      v52 = *(v46 + 24);
      *(v46 + 16) = v42;
      *(v46 + 24) = v44;
      v44 = v52;
LABEL_20:

      swift_beginAccess();
      v53 = *(a5 + 16);
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (!v54)
      {
        break;
      }

      __break(1u);
LABEL_29:
      v39 = sub_21D210A84(0, *(v39 + 2) + 1, 1, v39);
      *(v47 + 16) = v39;
    }

    *(a5 + 16) = v55;
  }
}

uint64_t sub_21D989D24()
{
  v0 = sub_21DBF4CAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v10 - v5;
  __swift_allocate_value_buffer(v7, qword_27CE645C0);
  v8 = __swift_project_value_buffer(v0, qword_27CE645C0);
  sub_21DBF4C5C();
  v10[1] = &unk_282EA7248;
  sub_21D98AFC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64660, &unk_21DC33BA0);
  sub_21D0D0F1C(&qword_27CE64668, &qword_27CE64660, &unk_21DC33BA0, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  sub_21DBF4C9C();
  (*(v1 + 8))(v3, v0);
  return (*(v1 + 32))(v8, v6, v0);
}

uint64_t sub_21D989EF4()
{
  v0 = type metadata accessor for TTRSystemPasteboardDataType(0);
  __swift_allocate_value_buffer(v0, qword_27CE645D8);
  v1 = __swift_project_value_buffer(v0, qword_27CE645D8);
  *v1 = 0xD000000000000037;
  v1[1] = 0x800000021DC71D80;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21D989FCC(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = type metadata accessor for TTRSystemPasteboardDataType(0);
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  a3();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21D98A044(uint64_t a1)
{
  v2 = type metadata accessor for TTRSystemPasteboardDataType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21D98A0A8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_21DBFA3FC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_21D213B7C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_21D213B7C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_21DBFA3CC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_21DBFA29C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_21DBFA29C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_21DBFA3FC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_21D213B7C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_21DBFA3FC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_21D213B7C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_21D213B7C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_21DBFA29C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s15RemindersUICore24TTRManagedPasteboardItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      sub_21D59B950(v6, v5, 1);
      sub_21D59B950(v3, v2, 1);
      v8 = sub_21DBFB63C();
      sub_21D5968AC(v3, v2, 1);
      v9 = v6;
      v10 = v5;
      v11 = 1;
LABEL_11:
      sub_21D5968AC(v9, v10, v11);
      return v8 & 1;
    }

LABEL_5:
    sub_21D59B950(*a2, *(a2 + 8), v7);
    sub_21D59B950(v3, v2, v4);
    sub_21D5968AC(v3, v2, v4);
    sub_21D5968AC(v6, v5, v7);
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_5;
  }

  v13 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v8 = sub_21DBFC64C();
    sub_21D59B950(v6, v5, 0);
    sub_21D59B950(v3, v2, 0);
    sub_21D5968AC(v3, v2, 0);
    v9 = v6;
    v10 = v5;
    v11 = 0;
    goto LABEL_11;
  }

  sub_21D59B950(v13, v2, 0);
  sub_21D59B950(v3, v2, 0);
  sub_21D5968AC(v3, v2, 0);
  sub_21D5968AC(v3, v2, 0);
  return 1;
}

uint64_t _s15RemindersUICore27TTRSystemPasteboardDataTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF843C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRSystemPasteboardDataType(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64650, &qword_21DC33B98);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v29 - v16;
  v19 = (&v29 + *(v18 + 56) - v16);
  sub_21D17B164(a1, &v29 - v16, v15);
  sub_21D17B164(a2, v19, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D17B164(v17, v13, v21);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, v19, v4);
      v26 = sub_21DBF839C();
      v27 = *(v5 + 8);
      v27(v7, v4);
      v27(v13, v4);
      sub_21D98A044(v17);
      return v26 & 1;
    }

    (*(v5 + 8))(v13, v4);
    goto LABEL_12;
  }

  sub_21D17B164(v17, v10, v21);
  v23 = *v10;
  v22 = v10[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    sub_21D0CF7E0(v17, &qword_27CE64650, &qword_21DC33B98);
    goto LABEL_13;
  }

  if (v23 == *v19 && v22 == v19[1])
  {

    goto LABEL_16;
  }

  v25 = sub_21DBFC64C();

  if (v25)
  {
LABEL_16:
    sub_21D98A044(v17);
    v26 = 1;
    return v26 & 1;
  }

  sub_21D98A044(v17);
LABEL_13:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_21D98A924(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D59B950(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRITextCellContentState.TextContent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D59B950(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_21D5968AC(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRITextCellContentState.TextContent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_21D5968AC(v4, v5, v6);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRSystemPasteboardDataType(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = a2[1];
      *a1 = *a2;
      a1[1] = v6;
      sub_21DBF8E0C();
    }

    else
    {
      v8 = sub_21DBF843C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void destroy for TTRSystemPasteboardDataType(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v3 = sub_21DBF843C();
    v4 = *(*(v3 - 8) + 8);

    v4(a1, v3);
  }
}

void *initializeWithCopy for TTRSystemPasteboardDataType(void *a1, void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = a2[1];
    *a1 = *a2;
    a1[1] = v5;
    sub_21DBF8E0C();
  }

  else
  {
    v6 = sub_21DBF843C();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for TTRSystemPasteboardDataType(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D98A044(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      sub_21DBF8E0C();
    }

    else
    {
      v5 = sub_21DBF843C();
      (*(*(v5 - 8) + 16))(a1, a2, v5);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for TTRSystemPasteboardDataType(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_21DBF843C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for TTRSystemPasteboardDataType(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D98A044(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_21DBF843C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_21D98AECC(uint64_t a1)
{
  result = sub_21DBF843C();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

unint64_t sub_21D98AFC0()
{
  result = qword_27CE64658;
  if (!qword_27CE64658)
  {
    v3 = sub_21DBF4CAC();
    result = swift_getWitnessTable(MEMORY[0x277CC8858], v3, v0, v1);
    atomic_store(result, &qword_27CE64658);
  }

  return result;
}

uint64_t TTRSingleDataSourceSection.hashValue.getter()
{
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](0);
  return sub_21DBFC82C();
}

unint64_t sub_21D98B0BC()
{
  result = qword_27CE64678;
  if (!qword_27CE64678)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRSingleDataSourceSection, &type metadata for TTRSingleDataSourceSection, v0, v1);
    atomic_store(result, &qword_27CE64678);
  }

  return result;
}

id TTRReminderSwipeAction.makeContextualAction(handler:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (*v2)
  {
    v6 = v5 == 10;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  v19 = *v2;
  TTRReminderSwipeAction.localizedTitle.getter();
  v8 = sub_21DBFA12C();

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D6D9B28;
  aBlock[3] = &block_descriptor_123;
  v9 = _Block_copy(aBlock);
  v10 = objc_opt_self();

  v11 = [v10 contextualActionWithStyle:v7 title:v8 handler:v9];

  _Block_release(v9);

  LOBYTE(aBlock[0]) = v5;
  v12 = TTRReminderSwipeAction.backgroundColor.getter();
  if (v12)
  {
    v13 = v12;
    [v11 setBackgroundColor_];
  }

  LOBYTE(aBlock[0]) = v5;
  v14 = TTRReminderSwipeAction.image.getter();
  [v11 setImage_];

  LOBYTE(aBlock[0]) = v5;
  v15 = v11;
  TTRReminderSwipeAction.accessibilityLabel.getter();
  v16 = sub_21DBFA12C();

  [v15 setAccessibilityLabel_];

  return v15;
}

int *TTRBoardColumnItemIntermediateViewModel.init(itemID:itemLevel:isUserInteractionEnabled:isEditingItem:isTargetOfContextualPresentation:infoButtonState:isPonderingTextEffectVisible:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *a6;
  sub_21D241B94(a1, a8);
  result = type metadata accessor for TTRBoardColumnItemIntermediateViewModel(0);
  v17 = a8 + result[5];
  *v17 = v13;
  *(v17 + 8) = v14;
  *(a8 + result[6]) = a3;
  *(a8 + result[7]) = a4;
  *(a8 + result[8]) = a5;
  *(a8 + result[9]) = v15;
  *(a8 + result[10]) = a7;
  return result;
}

uint64_t type metadata accessor for TTRBoardColumnItemIntermediateViewModel(uint64_t a1)
{
  result = qword_27CE64680;
  if (!qword_27CE64680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static TTRBoardColumnItemIntermediateViewModel.ItemLevel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  v5 = v3 ^ v2 ^ 1;
  if (*a1 != *a2)
  {
    v5 = 0;
  }

  return v5 & 1;
}

BOOL sub_21D98B424(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  v5 = v3 ^ v2 ^ 1;
  if (*a1 != *a2)
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t TTRBoardColumnItemIntermediateViewModel.itemLevel.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TTRBoardColumnItemIntermediateViewModel(0);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t TTRBoardColumnItemIntermediateViewModel.infoButtonState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRBoardColumnItemIntermediateViewModel(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t _s15RemindersUICore39TTRBoardColumnItemIntermediateViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7 == 2)
  {
    if (v9 != 2)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v7 == 3)
  {
    if (v9 != 3)
    {
      goto LABEL_14;
    }

LABEL_11:
    if (*(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]))
    {
      goto LABEL_14;
    }

    v12 = v4[9];
    v13 = *(a1 + v12);
    v14 = *(a2 + v12);
    if (v13 == 4)
    {
      if (v14 == 4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v13 != 3)
      {
        if (v13 != v14 || (v14 - 5) >= 0xFFFFFFFE)
        {
          goto LABEL_14;
        }

LABEL_26:
        v10 = *(a1 + v4[10]) ^ *(a2 + v4[10]) ^ 1;
        return v10 & 1;
      }

      if (v14 == 3)
      {
        goto LABEL_26;
      }
    }

LABEL_14:
    v10 = 0;
    return v10 & 1;
  }

  if ((v9 & 0xFE) == 2)
  {
    goto LABEL_14;
  }

  v10 = 0;
  if (*v6 == *v8 && ((v9 ^ v7) & 1) == 0)
  {
    goto LABEL_11;
  }

  return v10 & 1;
}

char **initializeBufferWithCopyOfBuffer for TTRBoardColumnItemIntermediateViewModel(char **a1, char **a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v19 = *a2;
      *a1 = *a2;
      v20 = v19;
      goto LABEL_45;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_46:
        v28 = a3[5];
        v29 = a3[6];
        v30 = a1 + v28;
        v31 = a2 + v28;
        *v30 = *v31;
        v30[8] = v31[8];
        *(a1 + v29) = *(a2 + v29);
        v32 = a3[8];
        *(a1 + a3[7]) = *(a2 + a3[7]);
        *(a1 + v32) = *(a2 + v32);
        v33 = a3[10];
        *(a1 + a3[9]) = *(a2 + a3[9]);
        *(a1 + v33) = *(a2 + v33);
        return a1;
      }

      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 > 4)
      {
        if (v10 <= 7)
        {
          if (v10 == 5 || v10 == 6)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }

        if (v10 != 8 && v10 != 9)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v10 > 2)
        {
LABEL_24:
          v22 = sub_21DBF563C();
          (*(*(v22 - 8) + 16))(a1, a2, v22);
          swift_storeEnumTagMultiPayload();
          goto LABEL_45;
        }

        if (v10 != 1)
        {
          if (v10 == 2)
          {
            goto LABEL_24;
          }

LABEL_35:
          memcpy(a1, a2, *(*(v9 - 8) + 64));
          goto LABEL_45;
        }
      }

      v23 = *a2;
      *a1 = *a2;
      v24 = v23;
      swift_storeEnumTagMultiPayload();
      goto LABEL_45;
    }

    v12 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v12;
    if (v16(a2 + v13, 1, v14))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v13, a2 + v13, *(*(v18 - 8) + 64));
LABEL_45:
      swift_storeEnumTagMultiPayload();
      goto LABEL_46;
    }

    v21 = swift_getEnumCaseMultiPayload();
    if (v21 > 4)
    {
      if (v21 <= 7)
      {
        if (v21 == 5 || v21 == 6)
        {
          goto LABEL_36;
        }

        goto LABEL_43;
      }

      if (v21 != 8 && v21 != 9)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v21 > 2)
      {
LABEL_36:
        v25 = sub_21DBF563C();
        (*(*(v25 - 8) + 16))(a1 + v13, a2 + v13, v25);
        swift_storeEnumTagMultiPayload();
LABEL_44:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_45;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_36;
        }

LABEL_43:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_44;
      }
    }

    v26 = *(a2 + v13);
    *(a1 + v13) = v26;
    v27 = v26;
    swift_storeEnumTagMultiPayload();
    goto LABEL_44;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = &v11[(v5 + 16) & ~v5];

  return a1;
}

void **initializeWithCopy for TTRBoardColumnItemIntermediateViewModel(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      goto LABEL_43;
    case 1:
      v10 = *a2;
      *a1 = *a2;
      v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      v15 = v10;
      if (v14(a2 + v11, 1, v12))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v11, a2 + v11, *(*(v16 - 8) + 64));
LABEL_43:
        swift_storeEnumTagMultiPayload();
        goto LABEL_44;
      }

      v19 = swift_getEnumCaseMultiPayload();
      if (v19 > 4)
      {
        if (v19 <= 7)
        {
          if (v19 == 5 || v19 == 6)
          {
            goto LABEL_34;
          }

          goto LABEL_41;
        }

        if (v19 != 8 && v19 != 9)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v19 > 2)
        {
LABEL_34:
          v23 = sub_21DBF563C();
          (*(*(v23 - 8) + 16))(a1 + v11, a2 + v11, v23);
          swift_storeEnumTagMultiPayload();
LABEL_42:
          (*(v13 + 56))(a1 + v11, 0, 1, v12);
          goto LABEL_43;
        }

        if (v19 != 1)
        {
          if (v19 == 2)
          {
            goto LABEL_34;
          }

LABEL_41:
          memcpy(a1 + v11, a2 + v11, *(v13 + 64));
          goto LABEL_42;
        }
      }

      v24 = *(a2 + v11);
      *(a1 + v11) = v24;
      v25 = v24;
      swift_storeEnumTagMultiPayload();
      goto LABEL_42;
    case 0:
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 > 4)
      {
        if (v9 <= 7)
        {
          if (v9 == 5 || v9 == 6)
          {
            goto LABEL_22;
          }

          goto LABEL_33;
        }

        if (v9 != 8 && v9 != 9)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v9 > 2)
        {
LABEL_22:
          v20 = sub_21DBF563C();
          (*(*(v20 - 8) + 16))(a1, a2, v20);
          swift_storeEnumTagMultiPayload();
          goto LABEL_43;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            goto LABEL_22;
          }

LABEL_33:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_43;
        }
      }

      v21 = *a2;
      *a1 = *a2;
      v22 = v21;
      swift_storeEnumTagMultiPayload();
      goto LABEL_43;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_44:
  v26 = a3[5];
  v27 = a3[6];
  v28 = a1 + v26;
  v29 = a2 + v26;
  *v28 = *v29;
  v28[8] = v29[8];
  *(a1 + v27) = *(a2 + v27);
  v30 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v30) = *(a2 + v30);
  v31 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v31) = *(a2 + v31);
  return a1;
}

void **assignWithCopy for TTRBoardColumnItemIntermediateViewModel(void **a1, void **a2, int *a3)
{
  if (a1 == a2)
  {
    goto LABEL_45;
  }

  sub_21D371B14(a1);
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      goto LABEL_44;
    case 1:
      v10 = *a2;
      *a1 = *a2;
      v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      v15 = v10;
      if (v14(a2 + v11, 1, v12))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v11, a2 + v11, *(*(v16 - 8) + 64));
LABEL_44:
        swift_storeEnumTagMultiPayload();
        goto LABEL_45;
      }

      v19 = swift_getEnumCaseMultiPayload();
      if (v19 > 4)
      {
        if (v19 <= 7)
        {
          if (v19 == 5 || v19 == 6)
          {
            goto LABEL_35;
          }

          goto LABEL_42;
        }

        if (v19 != 8 && v19 != 9)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v19 > 2)
        {
LABEL_35:
          v23 = sub_21DBF563C();
          (*(*(v23 - 8) + 16))(a1 + v11, a2 + v11, v23);
          swift_storeEnumTagMultiPayload();
LABEL_43:
          (*(v13 + 56))(a1 + v11, 0, 1, v12);
          goto LABEL_44;
        }

        if (v19 != 1)
        {
          if (v19 == 2)
          {
            goto LABEL_35;
          }

LABEL_42:
          memcpy(a1 + v11, a2 + v11, *(v13 + 64));
          goto LABEL_43;
        }
      }

      v24 = *(a2 + v11);
      *(a1 + v11) = v24;
      v25 = v24;
      swift_storeEnumTagMultiPayload();
      goto LABEL_43;
    case 0:
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 > 4)
      {
        if (v9 <= 7)
        {
          if (v9 == 5 || v9 == 6)
          {
            goto LABEL_23;
          }

          goto LABEL_34;
        }

        if (v9 != 8 && v9 != 9)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v9 > 2)
        {
LABEL_23:
          v20 = sub_21DBF563C();
          (*(*(v20 - 8) + 16))(a1, a2, v20);
          swift_storeEnumTagMultiPayload();
          goto LABEL_44;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            goto LABEL_23;
          }

LABEL_34:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_44;
        }
      }

      v21 = *a2;
      *a1 = *a2;
      v22 = v21;
      swift_storeEnumTagMultiPayload();
      goto LABEL_44;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_45:
  v26 = a3[5];
  v27 = a1 + v26;
  v28 = a2 + v26;
  v29 = *v28;
  v27[8] = v28[8];
  *v27 = v29;
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

char *initializeWithTake for TTRBoardColumnItemIntermediateViewModel(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(&a2[v11], 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
      goto LABEL_31;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 <= 3)
    {
      if (v15 == 2 || v15 == 3)
      {
        goto LABEL_18;
      }
    }

    else if (v15 == 4 || v15 == 5 || v15 == 6)
    {
LABEL_18:
      v16 = sub_21DBF563C();
      (*(*(v16 - 8) + 32))(&a1[v11], &a2[v11], v16);
      swift_storeEnumTagMultiPayload();
LABEL_30:
      (*(v13 + 56))(&a1[v11], 0, 1, v12);
      goto LABEL_31;
    }

    memcpy(&a1[v11], &a2[v11], *(v13 + 64));
    goto LABEL_30;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_7;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_7:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_31:
      swift_storeEnumTagMultiPayload();
      goto LABEL_32;
    }

    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_31;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_32:
  v17 = a3[5];
  v18 = a3[6];
  v19 = &a1[v17];
  v20 = &a2[v17];
  *v19 = *v20;
  v19[8] = v20[8];
  a1[v18] = a2[v18];
  v21 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v21] = a2[v21];
  v22 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  a1[v22] = a2[v22];
  return a1;
}

char *assignWithTake for TTRBoardColumnItemIntermediateViewModel(char *a1, char *a2, int *a3)
{
  if (a1 == a2)
  {
    goto LABEL_33;
  }

  sub_21D371B14(a1);
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(&a2[v11], 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
      goto LABEL_32;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 <= 3)
    {
      if (v15 == 2 || v15 == 3)
      {
        goto LABEL_19;
      }
    }

    else if (v15 == 4 || v15 == 5 || v15 == 6)
    {
LABEL_19:
      v16 = sub_21DBF563C();
      (*(*(v16 - 8) + 32))(&a1[v11], &a2[v11], v16);
      swift_storeEnumTagMultiPayload();
LABEL_31:
      (*(v13 + 56))(&a1[v11], 0, 1, v12);
      goto LABEL_32;
    }

    memcpy(&a1[v11], &a2[v11], *(v13 + 64));
    goto LABEL_31;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_8;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_8:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_32:
      swift_storeEnumTagMultiPayload();
      goto LABEL_33;
    }

    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_32;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_33:
  v17 = a3[5];
  v18 = a3[6];
  v19 = &a1[v17];
  v20 = &a2[v17];
  *v19 = *v20;
  v19[8] = v20[8];
  a1[v18] = a2[v18];
  v21 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v21] = a2[v21];
  v22 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  a1[v22] = a2[v22];
  return a1;
}

uint64_t sub_21D98D710(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id UITraitCollection.clampingContentSizeCategory(to:)(void *a1, void *a2)
{
  v3 = v2;
  v23 = v3;
  v6 = [v3 preferredContentSizeCategory];
  v7 = UIContentSizeCategory.clamped(to:)(a1, a2, v6);
  v8 = sub_21DBFA16C();
  v10 = v9;
  if (v8 == sub_21DBFA16C() && v10 == v11)
  {
    goto LABEL_13;
  }

  v13 = sub_21DBFC64C();

  if ((v13 & 1) == 0)
  {
    v14 = sub_21DBFA16C();
    v16 = v15;
    if (v14 != sub_21DBFA16C() || v16 != v17)
    {
      v19 = sub_21DBFC64C();

      if ((v19 & 1) == 0)
      {
        MEMORY[0x28223BE20](v20);
        v21 = sub_21DBFB24C();

        return v21;
      }

      goto LABEL_6;
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_6:

LABEL_14:

  return v23;
}

void static UITraitCollection.withCurrentSetTo<A>(_:block:)(uint64_t a1, void (*a2)(id))
{
  v4 = objc_opt_self();
  v5 = [v4 _currentTraitCollection];
  a2([v4 _setCurrentTraitCollection_]);
  [v4 _setCurrentTraitCollection_];
}

uint64_t sub_21D98DA54(uint64_t a1, void *a2)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v3 = a2;
  return sub_21DBF860C();
}

RemindersUICore::TTRIFocusGroupIdentifier_optional __swiftcall TTRIFocusGroupIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

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

uint64_t TTRIFocusGroupIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 0x7265646E696D6572;
  }

  else
  {
    return 0x73746E756F636361;
  }
}

uint64_t sub_21D98DB5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265646E696D6572;
  }

  else
  {
    v3 = 0x73746E756F636361;
  }

  if (v2)
  {
    v4 = 0xEC0000007473694CLL;
  }

  else
  {
    v4 = 0xED00007473694C73;
  }

  if (*a2)
  {
    v5 = 0x7265646E696D6572;
  }

  else
  {
    v5 = 0x73746E756F636361;
  }

  if (*a2)
  {
    v6 = 0xED00007473694C73;
  }

  else
  {
    v6 = 0xEC0000007473694CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21DBFC64C();
  }

  return v8 & 1;
}

unint64_t sub_21D98DC1C()
{
  result = qword_27CE64690;
  if (!qword_27CE64690)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIFocusGroupIdentifier, &type metadata for TTRIFocusGroupIdentifier, v0, v1);
    atomic_store(result, &qword_27CE64690);
  }

  return result;
}

uint64_t sub_21D98DC70()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

double sub_21D98DD08(uint64_t a1)
{
  sub_21DBFA27C();

  return result;
}

uint64_t sub_21D98DD8C(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

void sub_21D98DE20(char *a2@<X8>)
{
  v3 = sub_21DBFC45C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_21D98DE80(uint64_t *a1@<X8>)
{
  v2 = 0x73746E756F636361;
  if (*v1)
  {
    v2 = 0x7265646E696D6572;
  }

  v3 = 0xEC0000007473694CLL;
  if (*v1)
  {
    v3 = 0xED00007473694C73;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t TTRRemindersListEditingSessionPropertiesSharingWrapper.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t TTRRemindersListEditingSessionProperties.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = *v3;
  v16 = (*(a2 + 24))(a1, a2, v12);
  if (*(v15 + 16))
  {
    v25 = v7;
    v18 = sub_21D0CEF70(v16, v17);
    v20 = v19;

    if (v20)
    {
      sub_21D0CEB98(*(v15 + 56) + 32 * v18, &v27);
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v7 = v25;
  }

  else
  {

    v27 = 0u;
    v28 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690, &unk_21DC11AB0);
  v21 = swift_dynamicCast();
  v22 = *(AssociatedTypeWitness - 8);
  (*(v22 + 56))(v14, v21 ^ 1u, 1, AssociatedTypeWitness);
  (*(v8 + 16))(v10, v14, v7);
  v23 = *(v22 + 48);
  if (v23(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(a2 + 16))(a1, a2);
    if (v23(v10, 1, AssociatedTypeWitness) != 1)
    {
      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    (*(v22 + 32))(v26, v10, AssociatedTypeWitness);
  }

  return (*(v8 + 8))(v14, v7);
}

uint64_t TTRRemindersListEditingSessionProperties.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21D98E6F8(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*TTRRemindersListEditingSessionProperties.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  TTRRemindersListEditingSessionProperties.subscript.getter(a3, a4, v15);
  return sub_21D98E45C;
}

void sub_21D98E45C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    sub_21D98E6F8(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_21D98E6F8((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

double TTRRemindersListEditingSessionPropertiesSharingWrapper.properties.getter@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 16);
  sub_21DBF8E0C();
  return result;
}

double TTRRemindersListEditingSessionPropertiesSharingWrapper.properties.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 16) = v2;

  return result;
}

uint64_t TTRRemindersListEditingSessionPropertiesSharingWrapper.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t TTRRemindersListEditingSessionPropertiesSharingWrapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_21D98E6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 24))(a3, a4);
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  sub_21D17C970(v10, v5, v7);
}

void sub_21D98E85C(uint64_t a1)
{
  v1 = a1;
  v23 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_21DBFBD7C();
    if (!v2)
    {
      return;
    }

    v28 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v25 = sub_21DBFC20C();
    v26 = v3;
    v27 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return;
  }

  v28 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  v4 = sub_21DBFBCCC();
  v5 = *(v1 + 36);
  v25 = v4;
  v26 = v5;
  v27 = 0;
LABEL_7:
  v6 = 0;
  v22 = v2;
  while (v6 < v2)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v13 = v25;
    v14 = v26;
    v15 = v27;
    sub_21D99453C(v24, v25, v26, v27, v1, &qword_280D17770, 0x277D44780);
    v17 = v16;
    v18 = v1;
    v19 = v24[0];
    v20 = [v24[0] objectID];

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
    if (v23)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      v1 = v18;
      if (sub_21DBFC24C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE646B8, &qword_21DC34158);
      v21 = sub_21DBF9EEC();
      sub_21DBFC30C();
      v21(v24, 0);
    }

    else
    {
      v7 = sub_21DB84AE0();
      v9 = v8;
      v11 = v10;
      sub_21D15746C(v13, v14, v15);
      v25 = v7;
      v26 = v9;
      v27 = v11 & 1;
      v1 = v18;
      v2 = v22;
    }

    ++v6;
    if (v12 == v2)
    {
      sub_21D15746C(v25, v26, v27);
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t *TTRRemindersListAttributeEditor.__allocating_init(editorProvider:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_21D994790(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

__n128 TTRRemindersListChangeItemAttributeEditorProvider.__allocating_init(reminderChangeItems:undoContext:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(v4 + 40) = *a2;
  *(v4 + 56) = v6;
  *(v4 + 72) = *(a2 + 32);
  return result;
}

void *TTRRemindersListChangeItemAttributeEditorProvider.__allocating_init(reminderChangeItems:undoManager:)(uint64_t a1, _UNKNOWN **a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = type metadata accessor for TTRBasicUndoContext();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v2 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  result = swift_allocObject();
  result[2] = a1;
  result[3] = 0;
  result[4] = 0;
  result[5] = v5;
  result[6] = 0;
  result[7] = 0;
  result[8] = v4;
  result[9] = v2;
  return result;
}

uint64_t sub_21D98EC3C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE646A0);
  v1 = __swift_project_value_buffer(v0, qword_27CE646A0);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D98ED58(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v17[3] = a4;
  v18 = a2;
  v6 = type metadata accessor for TTRDateChangeType(0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v17 - v10;
  v12 = sub_21DBF509C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a1, v11, &qword_27CE58D60, &unk_21DC0A690);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21D0CF7E0(v11, &qword_27CE58D60, &unk_21DC0A690);
    swift_storeEnumTagMultiPayload();
    (*(a3 + 8))(v8, v18, a3);
    return sub_21D1A94E8(v8);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v8, v15, v12);
    swift_storeEnumTagMultiPayload();
    (*(a3 + 8))(v8, v18, a3);
    sub_21D1A94E8(v8);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_21D98EFE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D508AA8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3, v4);
}

uint64_t sub_21D98F064(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D508A70;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  sub_21D0D0E78(v3, v4);
  result = sub_21D0D0E88(v7, v8);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t TTRRemindersListSetCompletedOptions.afterDateProviderForAdvancingForwardRecurrence.getter()
{
  v1 = *v0;
  sub_21D0D0E78(*v0, v0[1]);
  return v1;
}

uint64_t TTRRemindersListSetCompletedOptions.afterDateProviderForAdvancingForwardRecurrence.setter(uint64_t a1, uint64_t a2)
{
  result = sub_21D0D0E88(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21D98F18C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D1CDA04;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3, v4);
}

uint64_t sub_21D98F20C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D359BDC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_21D0D0E78(v3, v4);
  result = sub_21D0D0E88(v7, v8);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t TTRRemindersListSetCompletedOptions.editBeforeAdvancingForwardRecurrence.getter()
{
  v1 = *(v0 + 16);
  sub_21D0D0E78(v1, *(v0 + 24));
  return v1;
}

uint64_t TTRRemindersListSetCompletedOptions.editBeforeAdvancingForwardRecurrence.setter(uint64_t a1, uint64_t a2)
{
  result = sub_21D0D0E88(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_21D98F334@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D9954E4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3, v4);
}

uint64_t sub_21D98F3B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D9954A0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_21D0D0E78(v3, v4);
  result = sub_21D0D0E88(v7, v8);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t TTRRemindersListSetCompletedOptions.orderClonedInSmartList.getter()
{
  v1 = *(v0 + 32);
  sub_21D0D0E78(v1, *(v0 + 40));
  return v1;
}

uint64_t TTRRemindersListSetCompletedOptions.orderClonedInSmartList.setter(uint64_t a1, uint64_t a2)
{
  result = sub_21D0D0E88(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_21D98F4DC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D995470;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3, v4);
}

uint64_t sub_21D98F55C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D995434;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  sub_21D0D0E78(v3, v4);
  result = sub_21D0D0E88(v7, v8);
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
  return result;
}

uint64_t TTRRemindersListSetCompletedOptions.updateClonedMemberships.getter()
{
  v1 = *(v0 + 48);
  sub_21D0D0E78(v1, *(v0 + 56));
  return v1;
}

uint64_t TTRRemindersListSetCompletedOptions.updateClonedMemberships.setter(uint64_t a1, uint64_t a2)
{
  result = sub_21D0D0E88(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_21D98F684@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A948;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3, v4);
}

uint64_t sub_21D98F704(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A920;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  sub_21D0D0E78(v3, v4);
  result = sub_21D0D0E88(v7, v8);
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  return result;
}

uint64_t TTRRemindersListSetCompletedOptions.concludeEditing.getter()
{
  v1 = *(v0 + 64);
  sub_21D0D0E78(v1, *(v0 + 72));
  return v1;
}

uint64_t TTRRemindersListSetCompletedOptions.concludeEditing.setter(uint64_t a1, uint64_t a2)
{
  result = sub_21D0D0E88(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t TTRRemindersListSetCompletedOptions.init(afterDateProviderForAdvancingForwardRecurrence:editBeforeAdvancingForwardRecurrence:orderClonedInSmartList:updateClonedMemberships:concludeEditing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

void sub_21D98F858(void (*a1)(uint64_t))
{
  v2 = v1[2];
  if (v2 >> 62)
  {
    v3 = sub_21DBFBD7C();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = v2;
  do
  {
    if (v5)
    {
      v7 = MEMORY[0x223D44740](v4, v2);
    }

    else
    {
      v7 = *(v2 + 8 * v4 + 32);
    }

    v8 = v7;
    ++v4;
    sub_21D0D3954((v1 + 5), v17, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0D3954(v17, v16, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRReminderEditor();
    v9 = swift_allocObject();
    *(v9 + 72) = 0;
    *(v9 + 16) = v8;
    sub_21D0D3954(v16, v9 + 24, &unk_27CE60D80, &unk_21DC093F0);
    *(v9 + 64) = 0;
    v10 = v8;
    v11 = [v10 fetchedCurrentDueDateDeltaAlert];
    sub_21D0CF7E0(v16, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0CF7E0(v17, &unk_27CE60D80, &unk_21DC093F0);
    v12 = *(v9 + 72);
    *(v9 + 72) = v11;

    a1(v9);

    v2 = v6;
  }

  while (v3 != v4);
LABEL_10:
  swift_beginAccess();
  v13 = v1[3];
  if (v13)
  {
    v14 = v1[4];

    v13(v2);
    sub_21D0D0E88(v13, v14);
  }
}

void *TTRRemindersListAttributeEditor.init(editorProvider:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_21D994720(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t TTRRemindersListAttributeEditor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t TTRRemindersListAttributeEditor.setDueDate(_:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v6[2] = a1;
  return (*(v4 + 24))(a1, sub_21D994894, v6, v3, v4);
}

uint64_t sub_21D98FC60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0, &unk_21DC0C0C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v18 - v10;
  v12 = [*(a1 + 16) dueDateComponents];
  if (v12)
  {
    v13 = v12;
    sub_21DBF4EFC();

    v14 = sub_21DBF509C();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  }

  else
  {
    v15 = sub_21DBF509C();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  }

  sub_21D67A548(v7, v11);
  sub_21D0CF7E0(v7, &qword_27CE58D60, &unk_21DC0A690);
  v16 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_21D9C50E0(v11, v4);
  sub_21D0CF7E0(v4, &unk_27CE60DA0, &unk_21DC0C0C0);
  return sub_21D0CF7E0(v11, &qword_27CE58D60, &unk_21DC0A690);
}

uint64_t TTRRemindersListAttributeEditor.setCompleted(_:options:)@<X0>(int a1@<W0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v47 = a3;
  v6 = a2[3];
  v57 = a2[2];
  v58 = v6;
  v59 = a2[4];
  v7 = a2[1];
  v55 = *a2;
  v56 = v7;
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(v8 + 16) = sub_21D179850(MEMORY[0x277D84F90]);
  v46 = v8 + 16;
  type metadata accessor for TTRReminderEditor.EditedObjectIDs();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84FA0];
  v12 = v10;
  *(v10 + 16) = MEMORY[0x277D84FA0];
  v13 = (v10 + 16);
  swift_beginAccess();
  *v13 = v11;
  if (a1)
  {
    LODWORD(v44) = a1;
    v14 = v4[5];
    v15 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v14);
    v16 = (*(v15 + 8))(v14, v15);
    v51 = v9;
    v17 = *(v16 + 16);
    if (v17)
    {
      v45 = v16;
      v18 = v16 + 32;
      v19 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_21D0D32E4(v18, v52);
        v21 = v53;
        v20 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        if ((*(v20 + 120))(v21, v20))
        {
          v22 = v53;
          v23 = v54;
          __swift_project_boxed_opaque_existential_1(v52, v53);
          (*(v23 + 184))(v48, v22, v23);
          v24 = v49;
          if (v49)
          {
            v25 = v50;
            __swift_project_boxed_opaque_existential_1(v48, v49);
            (*(v25 + 8))(v24, v25);
            __swift_destroy_boxed_opaque_existential_0(v48);
            v26 = __swift_destroy_boxed_opaque_existential_0(v52);
            MEMORY[0x223D42D80](v26);
            if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();
            v19 = v51;
            goto LABEL_6;
          }

          sub_21D0CF7E0(v48, &qword_27CE59DC0, &qword_21DC0FBF0);
        }

        __swift_destroy_boxed_opaque_existential_0(v52);
LABEL_6:
        v18 += 40;
        if (!--v17)
        {

          goto LABEL_16;
        }
      }
    }

    v19 = MEMORY[0x277D84F90];
LABEL_16:
    v45 = sub_21D19ED08(v19);

    LOBYTE(a1) = v44;
  }

  else if (v9 >> 62 && sub_21DBFBD7C())
  {
    sub_21D1CE198(MEMORY[0x277D84F90]);
    v45 = v38;
  }

  else
  {
    v45 = MEMORY[0x277D84FA0];
  }

  v27 = v4[5];
  v28 = v4[6];
  v29 = __swift_project_boxed_opaque_existential_1(v4 + 2, v27);
  v44 = &v43;
  MEMORY[0x28223BE20](v29);
  v39[2] = &v55;
  v40 = a1 & 1;
  v41 = v12;
  v42 = v46;
  v30 = swift_allocObject();
  v31 = v58;
  *(v30 + 48) = v57;
  *(v30 + 64) = v31;
  *(v30 + 80) = v59;
  v32 = v56;
  *(v30 + 16) = v55;
  *(v30 + 32) = v32;
  *(v30 + 96) = v12;
  *(v30 + 104) = v8;
  v33 = *(v28 + 16);
  sub_21D9948B8(&v55, v52);

  v33(v45, sub_21D99489C, v39, sub_21D9948AC, v30, 0, 0, v27, v28);

  v34 = *(v12 + 16);
  sub_21DBF8E0C();

  swift_beginAccess();
  v35 = *(v8 + 16);
  sub_21DBF8E0C();

  v37 = v47;
  *v47 = v34;
  v37[1] = v35;
  return result;
}

uint64_t sub_21D990328(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v78 = a4;
  v75 = a3;
  v86 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  v76 = *(v7 - 8);
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v73 - v10;
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v80 = a1;
  v81 = &v73 - v14;
  v15 = *(a1 + 16);
  v16 = [v15 subtaskContext];
  v17 = &off_278331000;
  if (v16)
  {

    v18 = [v15 saveRequest];
    v19 = [v18 store];

    v20 = [objc_allocWithZone(MEMORY[0x277D447D0]) initWithStore_];
    v21 = [objc_opt_self() defaultFetchOptions];
    aBlock[0] = 0;
    v22 = [v20 fetchSubtasksOfParentReminderChangeItem:v15 subtaskFetchOption:0 reminderFetchOptions:v21 error:aBlock];

    v23 = aBlock[0];
    if (v22)
    {
      sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
      v24 = sub_21DBFA5EC();
      v25 = v23;

      goto LABEL_10;
    }

    v26 = aBlock[0];
    v27 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56F08 != -1)
    {
      swift_once();
    }

    v28 = sub_21DBF84BC();
    __swift_project_value_buffer(v28, qword_27CE646A0);
    v29 = v27;

    v30 = sub_21DBF84AC();
    v31 = sub_21DBFAEBC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      aBlock[0] = v74;
      *v32 = 136315394;
      swift_getErrorValue();
      v33 = sub_21DBFC74C();
      v35 = sub_21D0CDFB4(v33, v34, aBlock);

      *(v32 + 4) = v35;
      v17 = &off_278331000;
      *(v32 + 12) = 2112;
      v36 = [v15 objectID];
      *(v32 + 14) = v36;
      v37 = v73;
      *v73 = v36;
      _os_log_impl(&dword_21D0C9000, v30, v31, "TTRRemindersListAttributeEditor#setCompleted: Failed to fetch subtasks {error: %s, parentID: %@}", v32, 0x16u);
      sub_21D0CF7E0(v37, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v37, -1, -1);
      v38 = v74;
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x223D46520](v38, -1, -1);
      MEMORY[0x223D46520](v32, -1, -1);
    }

    else
    {
    }
  }

  v24 = 0;
LABEL_10:
  v39 = a2[2];
  if (v39)
  {
    v39(v80);
  }

  type metadata accessor for TTRReminderEditor.EditedObjectIDs();
  inited = swift_initStackObject();
  v41 = MEMORY[0x277D84FA0];
  *(inited + 16) = MEMORY[0x277D84FA0];
  swift_beginAccess();
  *(inited + 16) = v41;
  if (v24)
  {
    if (v24 >> 62)
    {
      if (sub_21DBFBD7C())
      {
        goto LABEL_15;
      }
    }

    else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_15:
      TTRReminderEditor.edit(completed:subtasks:trackEditedUsing:)(v75 & 1, v24, inited);

      goto LABEL_19;
    }
  }

  TTRReminderEditor.edit(completed:trackEditedUsing:)(v75 & 1, inited);
LABEL_19:
  v42 = [v15 dueDateComponents];
  if (v42)
  {
    v43 = v42;
    sub_21DBF4EFC();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = sub_21DBF509C();
  (*(*(v45 - 8) + 56))(v11, v44, 1, v45);
  sub_21D9957F8(v11, v81);
  v46 = [v15 v17[429]];
  if (*a2)
  {
    v47 = a2[1];
    v84 = *a2;
    v85 = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D990CCC;
    v83 = &block_descriptor_109_1;
    v48 = _Block_copy(aBlock);
  }

  else
  {
    v48 = 0;
  }

  v49 = [v46 advanceForwardRecurrenceAndCreateCompletedCloneWithoutRecurrenceRulesAndSubtasksAfterDate_];
  _Block_release(v48);

  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
  sub_21D183A0C();
  v50 = sub_21DBF9E6C();

  v51 = v77;
  sub_21D0D3954(v81, v77, &qword_27CE58D60, &unk_21DC0A690);
  v52 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v53 = swift_allocObject();
  sub_21D9957F8(v51, v53 + v52);
  v54 = v80;
  sub_21D182E74(sub_21D995868, v53);

  v55 = [v15 listChangeItem];
  if (v55)
  {
    v56 = v55;
    sub_21D0D3954(v54 + 24, aBlock, &unk_27CE60D80, &unk_21DC093F0);
    v57 = v83;
    if (v83)
    {
      v58 = v84;
      __swift_project_boxed_opaque_existential_1(aBlock, v83);
      v59 = (*(v58 + 8))(v57, v58);
      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }

    else
    {
      sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v59 = 0;
    }

    v60 = v56;
    sub_21D9B0C90(v60, v59);

    sub_21D98E85C(v50);
    v62 = v61;
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    sub_21D182B38(sub_21D9958E4, v63);
  }

  v64 = a2[4];
  if (v64)
  {
    v65 = *(inited + 16);
    sub_21DBF8E0C();
    v66 = [v15 saveRequest];
    v64(v65, v50, v66);
  }

  v67 = a2[6];
  if (v67)
  {
    v68 = [v15 saveRequest];
    v67(v50, v68);
  }

  swift_beginAccess();
  v69 = sub_21DBF8E0C();
  sub_21D323614(v69);
  swift_endAccess();
  v70 = v79;
  swift_beginAccess();
  v71 = sub_21DBF8E0C();
  sub_21D994410(v71, sub_21D65F928, 0, v70);
  swift_endAccess();

  return sub_21D0CF7E0(v81, &qword_27CE58D60, &unk_21DC0A690);
}

id sub_21D990CCC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(a1 + 32);

  v8 = a2;
  v7();

  v9 = sub_21DBF563C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_21DBF55BC();
    (*(v10 + 8))(v6, v9);
    v12 = v13;
  }

  return v12;
}

uint64_t sub_21D990E1C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0, &unk_21DC0C0C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_21D9C50E0(a2, v5);
  return sub_21D0CF7E0(v5, &unk_27CE60DA0, &unk_21DC0C0C0);
}

void sub_21D990F08(uint64_t a1, uint64_t a2)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = [*(*a1 + 16) saveRequest];
  v4 = [v3 store];

  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v5 = sub_21DBFA5DC();
  v34[0] = 0;
  v6 = [v4 fetchRemindersWithObjectIDs:v5 error:v34];

  v7 = v34[0];
  if (v6)
  {
    sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
    sub_21D183A0C();
    v8 = sub_21DBF9E6C();
    v9 = v7;

    if ((v8 & 0xC000000000000001) != 0)
    {
      v10 = sub_21DBFC21C();
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v8 = v10 | 0x8000000000000000;
    }

    else
    {
      v24 = -1 << *(v8 + 32);
      v11 = v8 + 64;
      v12 = ~v24;
      v25 = -v24;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v13 = v26 & *(v8 + 64);
    }

    v27 = 0;
    v28 = (v12 + 64) >> 6;
    if (v8 < 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v29 = v27;
      v30 = v13;
      v31 = v27;
      if (!v13)
      {
        break;
      }

LABEL_16:
      v32 = (v30 - 1) & v30;
      v33 = *(*(v8 + 56) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
      if (!v33)
      {
LABEL_22:
        sub_21D0CFAF8(v8);
        return;
      }

      while (1)
      {
        TTRListEditor.remove(reminder:)(v33);

        v27 = v31;
        v13 = v32;
        if ((v8 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        if (sub_21DBFC2DC())
        {
          swift_unknownObjectRelease();
          swift_dynamicCast();
          v33 = v34[0];
          v31 = v27;
          v32 = v13;
          if (v34[0])
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v31 >= v28)
      {
        goto LABEL_22;
      }

      v30 = *(v11 + 8 * v31);
      ++v29;
      if (v30)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = v34[0];
    v2 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56F08 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v15 = sub_21DBF84BC();
  __swift_project_value_buffer(v15, qword_27CE646A0);
  v16 = v2;
  v17 = sub_21DBF84AC();
  v18 = sub_21DBFAEBC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34[0] = v20;
    *v19 = 136315138;
    swift_getErrorValue();
    v21 = sub_21DBFC75C();
    v23 = sub_21D0CDFB4(v21, v22, v34);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_21D0C9000, v17, v18, "TTRRemindersListAttributeEditor#setCompleted: Failed to fetch the cloned reminder {error: %s}", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x223D46520](v20, -1, -1);
    MEMORY[0x223D46520](v19, -1, -1);
  }

  else
  {
  }
}

double sub_21D99131C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  if (v3)
  {
    swift_beginAccess();
    v6 = *(a2 + 16);
    swift_beginAccess();
    v7 = *(a3 + 16);
    v9[0] = v6;
    v9[1] = v7;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v3(v9);
  }

  return result;
}

Swift::Void __swiftcall TTRRemindersListAttributeEditor.setFlagged(_:)(Swift::Bool a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5[16] = a1;
  (*(v4 + 16))(0, sub_21D9948F0, v5, 0, 0, 0, 0, v3, v4);
}

Swift::Void __swiftcall TTRRemindersListAttributeEditor.setTitle(_:locale:registeringUndo:)(NSAttributedString _, Swift::String_optional locale, Swift::Bool registeringUndo)
{
  object = locale.value._object;
  countAndFlagsBits = locale.value._countAndFlagsBits;
  v8 = v3[5];
  v9 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v8);
  isa = _.super.isa;
  v12 = countAndFlagsBits;
  v13 = object;
  v14 = registeringUndo;
  (*(v9 + 16))(0, sub_21D99494C, v10, 0, 0, 0, 0, v8, v9);
}

void sub_21D991518(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a4)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  if (a4 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a4;
  }

  sub_21DBF8E0C();
  v9 = sub_21D9CA3E0(a2, v7, v8);

  if (a5)
  {
    if (v9)
    {
      swift_retain_n();
      sub_21D182E74(sub_21D233058, v9);
    }
  }

  else
  {
  }
}

uint64_t sub_21D991604(uint64_t a1, void *a2)
{
  result = sub_21D9C7928(a2);
  if (result)
  {
    v3 = result;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v3);
  }

  return result;
}

Swift::Void __swiftcall TTRRemindersListAttributeEditor.removeAllAssignments()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(0, sub_21D9916EC, 0, 0, 0, 0, 0, v1, v2);
}

uint64_t sub_21D991740(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  TTRReminderEditor.edit(toMatch:now:)(a2, v6);
  return (*(v4 + 8))(v6, v3);
}

id sub_21D99184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v10 = a5 & 1;
  result = sub_21D9D7AEC(v9, 1);
  if (result)
  {
    v7 = result;
    v8 = v6;

    if (v8)
    {

      sub_21D182E74(sub_21D233058, v8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21D991928(__int128 *a1, uint64_t a2)
{
  v9 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v6 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  v11 = v9;
  v12 = v4;
  v13 = v5;
  return (*(v7 + 16))(0, a2, v10, 0, 0, 0, 0, v6, v7);
}

void *sub_21D9919CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v9 = a5 & 1;
  result = sub_21D9C7BBC(v8, 1);
  if (result)
  {
    v7 = v6;

    sub_21D182E74(sub_21D23298C, v7);
  }

  return result;
}

uint64_t sub_21D991A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  v11 = a1;
  v12 = a2;
  return (*(v8 + 16))(0, a3, v10, 0, 0, 0, 0, v7, v8);
}

Swift::Void __swiftcall TTRRemindersListAttributeEditor.edit(tagged:withHashtagNamed:)(Swift::Bool tagged, Swift::String withHashtagNamed)
{
  object = withHashtagNamed._object;
  countAndFlagsBits = withHashtagNamed._countAndFlagsBits;
  v6 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  v8[16] = tagged;
  v9 = countAndFlagsBits;
  v10 = object;
  (*(v7 + 16))(0, sub_21D994A4C, v8, 0, 0, 0, 0, v6, v7);
}

Swift::Void __swiftcall TTRRemindersListAttributeEditor.addAttributes(from:isForNewReminder:)(Swift::OpaquePointer from, Swift::Bool isForNewReminder)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  rawValue = from._rawValue;
  v9 = isForNewReminder;
  (*(v6 + 16))(0, sub_21D994A7C, v7, 0, 0, 0, 0, v5, v6);
}

void sub_21D991C50(uint64_t a1, unint64_t a2, char a3)
{
  if (a2 >> 62)
  {
    v6 = sub_21DBFBD7C();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v6; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](i, a2);
      }

      else
      {
        v8 = *(a2 + 8 * i + 32);
      }

      v9 = v8;
      TTRRemindersListImportedContent.applyToReminder(with:isForNewReminder:)(a1, a3 & 1);
    }
  }
}

uint64_t sub_21D991DA4(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  v9 = a1;
  return (*(v6 + 16))(0, a2, v8, 0, 0, 0, 0, v5, v6);
}

void sub_21D991E30(int a1, id a2)
{
  v2 = [a2 objectID];
  v3 = 1;
}

uint64_t TTRRemindersListAttributeEditor.setURL(_:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v7 = a1;
  return (*(v4 + 16))(0, sub_21D994B44, v6, 0, 0, 0, 0, v3, v4);
}

uint64_t sub_21D991F3C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  TTRReminderEditor.edit(url:)(v5);
  return sub_21D0CF7E0(v5, &qword_27CE5EA20, &qword_21DC0D4A0);
}

uint64_t TTRRemindersListAttributeEditor.setLinkMetadata(_:for:)(void *a1, void *a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260, &unk_21DC0CB70);
  swift_allocObject();

  v6 = a1;
  v7 = a2;
  return sub_21DBF911C();
}

uint64_t sub_21D992104(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = a3[5];
  v12 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v11);
  v17 = a4;
  v18 = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21D1D1AB4;
  *(v13 + 24) = v10;
  v14 = *(v12 + 16);

  v14(0, sub_21D995530, v16, 0, 0, sub_21D77BB54, v13, v11, v12);
}

uint64_t sub_21D992220(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  v6[2] = a1;
  return (*(v4 + 24))(a1, sub_21D995944, v6, v3, v4);
}

uint64_t sub_21D9922C8(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(v3 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), v4);
  v7[16] = a1;
  return sub_21D98FA48(sub_21D995940, v7, v4, v5);
}

uint64_t sub_21D992354(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  v11 = *(v9 + 48);
  __swift_project_boxed_opaque_existential_1((v9 + 16), v10);
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v14 = a4;
  return sub_21D98FA48(sub_21D9958F0, v13, v10, v11);
}

uint64_t sub_21D9923FC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  return sub_21D98FA48(sub_21D9916EC, 0, v2, v3);
}

uint64_t sub_21D9924B8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v12 = *a1;
  v7 = *(a1 + 2);
  v8 = *(a1 + 24);
  v9 = *(*v4 + 40);
  v10 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  v14 = v12;
  v15 = v7;
  v16 = v8;
  return sub_21D98FA48(a4, v13, v9, v10);
}

uint64_t sub_21D992558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = *(*v5 + 40);
  v11 = *(v9 + 48);
  __swift_project_boxed_opaque_existential_1((v9 + 16), v10);
  v13[2] = a1;
  v13[3] = a2;
  return sub_21D98FA48(a5, v13, v10, v11);
}

uint64_t sub_21D9925E4(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = *(v7 + 48);
  __swift_project_boxed_opaque_existential_1((v7 + 16), v8);
  v11[16] = a1;
  v12 = a2;
  v13 = a3;
  return sub_21D98FA48(sub_21D995904, v11, v8, v9);
}

uint64_t sub_21D99266C(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(v5 + 48);
  __swift_project_boxed_opaque_existential_1((v5 + 16), v6);
  v9[2] = a1;
  v10 = a2;
  return sub_21D98FA48(sub_21D995914, v9, v6, v7);
}

uint64_t sub_21D992760(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(v3 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), v4);
  v7[2] = a1;
  return sub_21D98FA48(sub_21D995924, v7, v4, v5);
}

uint64_t sub_21D9927EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *(*v4 + 40);
  v9 = *(v7 + 48);
  __swift_project_boxed_opaque_existential_1((v7 + 16), v8);
  v11[2] = a1;
  return sub_21D98FA48(a4, v11, v8, v9);
}

uint64_t sub_21D992854(void *a1, void *a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260, &unk_21DC0CB70);
  swift_allocObject();

  v7 = a1;
  v8 = a2;
  return sub_21DBF911C();
}

uint64_t sub_21D992908@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D995408;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21D99299C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D359BDC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t TTRRemindersListChangeItemAttributeEditorProvider.didEdit.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_21D0D0E78(v1, *(v0 + 32));
  return v1;
}

uint64_t TTRRemindersListChangeItemAttributeEditorProvider.didEdit.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_21D0D0E88(v5, v6);
}

uint64_t TTRRemindersListChangeItemAttributeEditorProvider.init(reminderChangeItems:undoContext:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = a1;
  v3 = *(a2 + 16);
  *(v2 + 40) = *a2;
  *(v2 + 56) = v3;
  *(v2 + 72) = *(a2 + 32);
  return v2;
}

void TTRRemindersListChangeItemAttributeEditorProvider.edit(preparingToMutateOrderInLists:with:concludeEditing:completion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(void), uint64_t a5, void (*a6)(void, __n128))
{
  v7 = v6;
  if (a1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      if (!sub_21DBFBD7C())
      {
        goto LABEL_10;
      }
    }

    else if (!*(a1 + 16))
    {
      goto LABEL_10;
    }

    if (qword_27CE56F08 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  while (1)
  {
LABEL_10:
    v16 = v7[2];
    if (v16 >> 62)
    {
      v17 = sub_21DBFBD7C();
      if (!v17)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_19;
      }
    }

    if (v17 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_27:
    swift_once();
LABEL_7:
    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE646A0);
    sub_21DBF8E0C();
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEBC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31[0] = v12;
      *v11 = 136315138;
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      sub_21D183A0C();
      v13 = sub_21DBFAABC();
      v15 = sub_21D0CDFB4(v13, v14, v31);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21D0C9000, v9, v10, "TTRRemindersListChangeItemAttributeEditorProvider does not support list order mutation preparation { listIDs: %s }", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223D46520](v12, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);
    }
  }

  v18 = 0;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x223D44740](v18, v16);
    }

    else
    {
      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    ++v18;
    sub_21D0D3954((v7 + 5), v31, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0D3954(v31, v30, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRReminderEditor();
    v21 = swift_allocObject();
    *(v21 + 72) = 0;
    *(v21 + 16) = v20;
    sub_21D0D3954(v30, v21 + 24, &unk_27CE60D80, &unk_21DC093F0);
    *(v21 + 64) = 0;
    v22 = v20;
    v23 = [v22 fetchedCurrentDueDateDeltaAlert];
    sub_21D0CF7E0(v30, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0CF7E0(v31, &unk_27CE60D80, &unk_21DC093F0);
    v24 = *(v21 + 72);
    *(v21 + 72) = v23;

    a2(v21);
  }

  while (v17 != v18);
LABEL_19:
  if (a4)
  {
    a4();
  }

  swift_beginAccess();
  v25 = v7[3];
  if (v25)
  {
    v26 = v7[4];

    v25(v16);
    sub_21D0D0E88(v25, v26);
  }

  if (a6)
  {
    (a6)(0);
  }
}

void TTRRemindersListChangeItemAttributeEditorProvider.edit(preparingDateChange:with:)(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
    v14 = a2;
    v15 = sub_21DBFBD7C();
    a2 = v14;
    if (!v15)
    {
      goto LABEL_18;
    }

LABEL_3:
    v16 = a2;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x223D44740](0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_25;
      }

      v4 = *(v3 + 32);
    }

    v5 = v4;
    v6 = [v4 saveRequest];
    v7 = [v6 store];

    if (v3 >> 62)
    {
      v8 = sub_21DBFBD7C();
    }

    else
    {
      v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = MEMORY[0x277D84F90];
    if (!v8)
    {
LABEL_17:
      sub_21D993114(v9, v7);

      a2 = v16;
      goto LABEL_18;
    }

    v17 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x223D44740](v10, v3);
        }

        else
        {
          v11 = *(v3 + 8 * v10 + 32);
        }

        v12 = v11;
        ++v10;
        v13 = [v11 storage];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v8 != v10);
      v9 = v17;
      goto LABEL_17;
    }

LABEL_25:
    __break(1u);
    return;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_18:

  sub_21D98F858(a2);
}

uint64_t sub_21D993114(unint64_t a1, void *a2)
{
  v72 = a2;
  v76[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for TTRDateChangeType(0);
  MEMORY[0x28223BE20](v4);
  v6 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D450204(v2, v6);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    return sub_21D1A94E8(v6);
  }

  v76[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_32:
    v8 = sub_21DBFBD7C();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    v74 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223D44740](v10, a1);
      }

      else
      {
        if (v10 >= *(v11 + 16))
        {
          goto LABEL_31;
        }

        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if ([v12 hasUnfetchedDueDateDeltaAlerts])
      {
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v11 = v74;
      }

      else
      {
      }

      ++v10;
    }

    while (v14 != v8);
    v15 = v76[0];
    v9 = MEMORY[0x277D84F90];
    if ((v76[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_19:
      if ((v15 & 0x4000000000000000) == 0)
      {
        v16 = *(v15 + 16);
        if (!v16)
        {
          goto LABEL_34;
        }

LABEL_21:
        v76[0] = v9;
        sub_21D18EFE4(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          goto LABEL_77;
        }

        v17 = 0;
        v18 = v76[0];
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x223D44740](v17, v15);
          }

          else
          {
            v19 = *(v15 + 8 * v17 + 32);
          }

          v20 = v19;
          v21 = [v19 remObjectID];
          v76[0] = v18;
          v23 = v18[2];
          v22 = v18[3];
          if (v23 >= v22 >> 1)
          {
            v25 = v21;
            sub_21D18EFE4((v22 > 1), v23 + 1, 1);
            v21 = v25;
            v18 = v76[0];
          }

          ++v17;
          v18[2] = v23 + 1;
          v24 = &v18[2 * v23];
          v24[4] = v21;
          v24[5] = v20;
        }

        while (v16 != v17);
        v9 = MEMORY[0x277D84F90];
        goto LABEL_35;
      }
    }
  }

  v16 = sub_21DBFBD7C();
  if (v16)
  {
    goto LABEL_21;
  }

LABEL_34:
  if (v9[2])
  {
LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A50, &qword_21DC0CC60);
    v26 = sub_21DBFC40C();
    goto LABEL_36;
  }

  v26 = MEMORY[0x277D84F98];
LABEL_36:
  v76[0] = v26;
  v27 = sub_21DBF8E0C();
  v28 = v73;
  sub_21D994088(v27, 1, v76);
  v73 = v28;
  if (!v28)
  {

    v29 = v76[0];
    if (v16)
    {
      v76[0] = v9;
      sub_21DBFC01C();
      if (v16 < 0)
      {
        goto LABEL_78;
      }

      v30 = 0;
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x223D44740](v30, v15);
        }

        else
        {
          v31 = *(v15 + 8 * v30 + 32);
        }

        v32 = v31;
        ++v30;
        v33 = [v31 remObjectID];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v16 != v30);
    }

    v34 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v35 = sub_21DBFA5DC();

    v36 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
    v76[0] = 0;
    v37 = [v72 fetchRemindersWithObjectIDs:v35 fetchOptions:v36 error:v76];

    v38 = v76[0];
    if (!v37)
    {
      v46 = v76[0];

      sub_21DBF52DC();

      return swift_willThrow();
    }

    v39 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
    sub_21D183A0C();
    v70[3] = v39;
    v40 = sub_21DBF9E6C();
    v41 = v38;

    v70[4] = v34;
    if ((v40 & 0xC000000000000001) != 0)
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = sub_21DBFC21C() | 0x8000000000000000;
    }

    else
    {
      v47 = -1 << *(v40 + 32);
      v43 = ~v47;
      v42 = v40 + 64;
      v48 = -v47;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v44 = v49 & *(v40 + 64);
      v45 = v40;
    }

    v70[2] = v40;
    sub_21DBF8E0C();
    v50 = 0;
    v70[1] = v43;
    v71 = v29 & 0xC000000000000001;
    v72 = v45;
    while (1)
    {
      if ((v45 & 0x8000000000000000) != 0)
      {
        v58 = sub_21DBFC2DC();
        if (!v58 || (v60 = v59, v75 = v58, swift_dynamicCast(), v52 = v76[0], v75 = v60, swift_dynamicCast(), v51 = v76[0], v74 = v44, !v52))
        {
LABEL_74:
          sub_21D0CFAF8(v72);
        }
      }

      else
      {
        v53 = v50;
        v54 = v44;
        if (!v44)
        {
          while (1)
          {
            v50 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            if (v50 >= ((v43 + 64) >> 6))
            {
              goto LABEL_74;
            }

            v54 = *(v42 + 8 * v50);
            ++v53;
            if (v54)
            {
              goto LABEL_60;
            }
          }

          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
        }

LABEL_60:
        v74 = (v54 - 1) & v54;
        v55 = (v50 << 9) | (8 * __clz(__rbit64(v54)));
        v56 = *(*(v45 + 48) + v55);
        v57 = *(*(v45 + 56) + v55);
        v52 = v56;
        v51 = v57;
        if (!v52)
        {
          goto LABEL_74;
        }
      }

      if (v71)
      {
        v61 = v52;
        v62 = sub_21DBFC2CC();

        if (!v62)
        {
          goto LABEL_54;
        }

        v75 = v62;
        sub_21D0D8CF0(0, &qword_27CE5A390, 0x277D447C8);
        swift_dynamicCast();
        v63 = v76[0];
        if (!v76[0])
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (!*(v29 + 16))
        {
          goto LABEL_54;
        }

        v64 = sub_21D17E07C(v52);
        if ((v65 & 1) == 0)
        {
          goto LABEL_54;
        }

        v63 = *(*(v29 + 56) + 8 * v64);
        if (!v63)
        {
          goto LABEL_54;
        }
      }

      v66 = [v51 dueDateDeltaAlertContext];
      if (v66)
      {
        v67 = v66;
        v68 = [v66 dueDateDeltaAlerts];

        if (v68)
        {
          sub_21D0D8CF0(0, &qword_27CE59818, 0x277D44608);
          v70[0] = v29;
          sub_21DBFA5EC();

          v29 = v70[0];
          v69 = sub_21DBFA5DC();

          [v63 setFetchedDueDateDeltaAlerts_];

          v51 = v52;
          v52 = v63;
          v63 = v69;
        }
      }

      v51 = v52;
      v52 = v63;
LABEL_54:

      v45 = v72;
      v44 = v74;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t TTRRemindersListChangeItemAttributeEditorProvider.deinit()
{

  sub_21D0D0E88(*(v0 + 24), *(v0 + 32));
  sub_21D0CF7E0(v0 + 40, &unk_27CE60D80, &unk_21DC093F0);
  return v0;
}

uint64_t TTRRemindersListChangeItemAttributeEditorProvider.__deallocating_deinit()
{

  sub_21D0D0E88(*(v0 + 24), *(v0 + 32));
  sub_21D0CF7E0(v0 + 40, &unk_27CE60D80, &unk_21DC093F0);

  return swift_deallocClassInstance();
}

void sub_21D993A48(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(id), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v7 + 40);
  v10 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v11 = [v10 setSaveIsNoopIfNoChangedKeys_];
  if (a1)
  {
    REMSaveRequest.prepareForMutatingOrder(inListsWithIDs:)(a1);
  }

  v33 = v10;
  if (v9 >> 62)
  {
    v11 = sub_21DBFBD7C();
    v12 = v11;
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    return;
  }

  v13 = 0;
  v31 = v9 & 0xC000000000000001;
  v14 = v9;
  do
  {
    if (v31)
    {
      v15 = MEMORY[0x223D44740](v13, v9);
    }

    else
    {
      v15 = *(v9 + 8 * v13 + 32);
    }

    v16 = v15;
    ++v13;
    sub_21D0D3954(v34 + 48, aBlock, &unk_27CE60D80, &unk_21DC093F0);
    v17 = v33;
    v18 = [v17 updateReminder_];
    sub_21D0D3954(aBlock, v36, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRReminderEditor();
    v19 = swift_allocObject();
    *(v19 + 72) = 0;
    *(v19 + 16) = v18;
    sub_21D0D3954(v36, v19 + 24, &unk_27CE60D80, &unk_21DC093F0);
    *(v19 + 64) = 0;
    v20 = v18;
    v21 = [v20 fetchedCurrentDueDateDeltaAlert];

    sub_21D0CF7E0(v36, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
    v22 = *(v19 + 72);
    *(v19 + 72) = v21;

    a2(v19);

    v9 = v14;
  }

  while (v12 != v13);
LABEL_12:
  if (a4)
  {
    a4(v11);
  }

  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v23 = sub_21DBFB12C();
  v24 = swift_allocObject();
  v24[2] = v9;
  v24[3] = a6;
  v24[4] = a7;
  aBlock[4] = sub_21D1D1AC8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  aBlock[3] = &block_descriptor_124;
  v25 = _Block_copy(aBlock);
  sub_21DBF8E0C();
  sub_21D0D0E78(a6, a7);

  [v33 saveWithQueue:v23 completion:v25];
  _Block_release(v25);

  v26 = *(v34 + 16);
  if (v26)
  {
    v27 = *(v34 + 24);

    v26(v9);
    sub_21D0D0E88(v26, v27);
  }
}

void sub_21D993DA8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 40);
  if (v7 >> 62)
  {
    v8 = sub_21DBFBD7C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v16 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    if (v8 < 0)
    {
      __break(1u);
      return;
    }

    v14 = a2;
    v15 = a3;
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223D44740](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      v13 = [v11 storage];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v8 != v10);
    v9 = v16;
    a2 = v14;
    a3 = v15;
  }

  sub_21D993114(v9, *(v4 + 32));

  sub_21D993A48(0, a2, a3, 0, 0, 0, 0);
}

uint64_t sub_21D993F38()
{
  sub_21D0D0E88(*(v0 + 16), *(v0 + 24));

  sub_21D0CF7E0(v0 + 48, &unk_27CE60D80, &unk_21DC093F0);

  return swift_deallocClassInstance();
}

unint64_t sub_21D993FF0@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = sub_21DBFC21C();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    result = v7 | 0x8000000000000000;
  }

  else
  {
    v11 = -1;
    v12 = -1 << *(result + 32);
    v8 = result + 64;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 64);
  }

  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = 0;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_21D994088(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = a1[5];
  v8 = *a3;
  v9 = a1[4];
  v10 = v7;
  v11 = sub_21D17E07C(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_21D21AB1C(v16, v6 & 1);
    v11 = sub_21D17E07C(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v11 = sub_21DBFC70C();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_21D22349C();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v10;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD00000000000001BLL, 0x800000021DC448B0);
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    sub_21DBFC14C();
    MEMORY[0x223D42AA0](39, 0xE100000000000000);
    sub_21DBFC31C();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 7);
    v25 = 1;
    while (v25 < a1[2])
    {
      v26 = *v6;
      v27 = *a3;
      v9 = *(v6 - 1);
      v10 = v26;
      v28 = sub_21D17E07C(v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_21D21AB1C(v32, 1);
        v28 = sub_21D17E07C(v9);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v34[6] + 8 * v28) = v9;
      *(v34[7] + 8 * v28) = v10;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_21D994410(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v9 = *a4;
  if ((*a4 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *a4;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    sub_21DBF8E0C();
    v11 = sub_21DBFBD7C();
    v13 = sub_21D984914(v10, v11);
    sub_21D99555C(a1, a2, a3, 1, &v13);
    if (v4)
    {

      return;
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a4;
    sub_21D99555C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v13);
  }

  *a4 = v13;
}

void sub_21D99453C(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t *a6, void *a7)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_21DBFC2BC();
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      swift_dynamicCast();
      sub_21D0D8CF0(0, a6, a7);
      swift_dynamicCast();
      *a1 = v17;
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

  if (sub_21DBFC26C() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_21DBFC27C();
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  swift_dynamicCast();
  a2 = sub_21D17E07C(v17);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v14 = *(*(a5 + 48) + 8 * a2);
  v15 = *(*(a5 + 56) + 8 * a2);
  *a1 = v15;
  v14;
  v16 = v15;
}

void *sub_21D994720(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  return a2;
}

uint64_t *sub_21D994790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v10[5] = a3;
  v10[6] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10 + 2);
  (*(v7 + 32))(boxed_opaque_existential_0, v9, a3);
  return v10;
}

void sub_21D994A88(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4.value._rawValue = *(v3 + 16);
  v4.is_nil = 0;
  TTRReminderEditor.edit(recurrenceRules:shouldCopyRecurrenceEnd:)(v4, a3);
}

void *destroy for TTRRemindersListSetCompletedOptions(void *result)
{
  v1 = result;
  if (*result)
  {
  }

  if (v1[2])
  {
  }

  if (v1[4])
  {
  }

  if (v1[6])
  {
  }

  if (v1[8])
  {
  }

  return result;
}

void *initializeWithCopy for TTRRemindersListSetCompletedOptions(void *a1, void *a2)
{
  if (*a2)
  {
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
  }

  else
  {
    *a1 = *a2;
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = a2[3];
    a1[2] = v5;
    a1[3] = v6;
  }

  else
  {
    *(a1 + 1) = *(a2 + 1);
  }

  v7 = a2[4];
  if (v7)
  {
    v8 = a2[5];
    a1[4] = v7;
    a1[5] = v8;
  }

  else
  {
    *(a1 + 2) = *(a2 + 2);
  }

  v9 = a2[6];
  if (v9)
  {
    v10 = a2[7];
    a1[6] = v9;
    a1[7] = v10;
  }

  else
  {
    *(a1 + 3) = *(a2 + 3);
  }

  v11 = a2[8];
  if (v11)
  {
    v12 = a2[9];
    a1[8] = v11;
    a1[9] = v12;
  }

  else
  {
    *(a1 + 4) = *(a2 + 4);
  }

  return a1;
}

void *assignWithCopy for TTRRemindersListSetCompletedOptions(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    a1[1] = v6;

    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (a1[2])
  {
    if (v7)
    {
      v8 = a2[3];
      a1[2] = v7;
      a1[3] = v8;

      goto LABEL_15;
    }
  }

  else if (v7)
  {
    v9 = a2[3];
    a1[2] = v7;
    a1[3] = v9;

    goto LABEL_15;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_15:
  v10 = a2[4];
  if (a1[4])
  {
    if (v10)
    {
      v11 = a2[5];
      a1[4] = v10;
      a1[5] = v11;

      goto LABEL_22;
    }
  }

  else if (v10)
  {
    v12 = a2[5];
    a1[4] = v10;
    a1[5] = v12;

    goto LABEL_22;
  }

  *(a1 + 2) = *(a2 + 2);
LABEL_22:
  v13 = a2[6];
  if (a1[6])
  {
    if (v13)
    {
      v14 = a2[7];
      a1[6] = v13;
      a1[7] = v14;

      goto LABEL_29;
    }
  }

  else if (v13)
  {
    v15 = a2[7];
    a1[6] = v13;
    a1[7] = v15;

    goto LABEL_29;
  }

  *(a1 + 3) = *(a2 + 3);
LABEL_29:
  v16 = a2[8];
  if (!a1[8])
  {
    if (v16)
    {
      v18 = a2[9];
      a1[8] = v16;
      a1[9] = v18;

      return a1;
    }

LABEL_35:
    *(a1 + 4) = *(a2 + 4);
    return a1;
  }

  if (!v16)
  {

    goto LABEL_35;
  }

  v17 = a2[9];
  a1[8] = v16;
  a1[9] = v17;

  return a1;
}

void *assignWithTake for TTRRemindersListSetCompletedOptions(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    a1[1] = v6;
    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (a1[2])
  {
    if (v7)
    {
      v8 = a2[3];
      a1[2] = v7;
      a1[3] = v8;

      goto LABEL_15;
    }
  }

  else if (v7)
  {
    v9 = a2[3];
    a1[2] = v7;
    a1[3] = v9;
    goto LABEL_15;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_15:
  v10 = a2[4];
  if (a1[4])
  {
    if (v10)
    {
      v11 = a2[5];
      a1[4] = v10;
      a1[5] = v11;

      goto LABEL_22;
    }
  }

  else if (v10)
  {
    v12 = a2[5];
    a1[4] = v10;
    a1[5] = v12;
    goto LABEL_22;
  }

  *(a1 + 2) = *(a2 + 2);
LABEL_22:
  v13 = a2[6];
  if (a1[6])
  {
    if (v13)
    {
      v14 = a2[7];
      a1[6] = v13;
      a1[7] = v14;

      goto LABEL_29;
    }
  }

  else if (v13)
  {
    v15 = a2[7];
    a1[6] = v13;
    a1[7] = v15;
    goto LABEL_29;
  }

  *(a1 + 3) = *(a2 + 3);
LABEL_29:
  v16 = a2[8];
  if (!a1[8])
  {
    if (v16)
    {
      v18 = a2[9];
      a1[8] = v16;
      a1[9] = v18;
      return a1;
    }

LABEL_35:
    *(a1 + 4) = *(a2 + 4);
    return a1;
  }

  if (!v16)
  {

    goto LABEL_35;
  }

  v17 = a2[9];
  a1[8] = v16;
  a1[9] = v17;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListSetCompletedOptions(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListSetCompletedOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21D995434(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_21D9954A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a2;
  v8 = a1;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

unint64_t sub_21D99555C(unint64_t a1, unint64_t a2, unint64_t a3, char a4, void *a5)
{
  sub_21D993FF0(a1, a2, a3, &v43);
  v42 = v43;
  sub_21DBF8E0C();

  v7 = sub_21DA5F51C();
  if (!v7)
  {
    goto LABEL_22;
  }

  v9 = v7;
  v10 = v8;
  v11 = *a5;
  result = sub_21D17E07C(v7);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = v13;
  if (v11[3] < v17)
  {
    sub_21D21BEE4(v17, a4 & 1);
    result = sub_21D17E07C(v9);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    result = sub_21DBFC70C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    sub_21D2240D0();
    result = v24;
    v20 = *a5;
    if (v18)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

LABEL_7:
  v20 = *a5;
  if (v18)
  {
LABEL_8:
    v21 = result;

    v22 = v20[7];
    v23 = *(v22 + 8 * v21);
    *(v22 + 8 * v21) = v10;

    goto LABEL_12;
  }

LABEL_10:
  v20[(result >> 6) + 8] |= 1 << result;
  *(v20[6] + 8 * result) = v9;
  *(v20[7] + 8 * result) = v10;
  v25 = v20[2];
  v16 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v16)
  {
    v20[2] = v26;
LABEL_12:
    v27 = sub_21DA5F51C();
    if (v27)
    {
      v9 = v27;
      v10 = v28;
      v18 = 1;
      do
      {
        v33 = *a5;
        result = sub_21D17E07C(v9);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v16 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v16)
        {
          goto LABEL_23;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_21D21BEE4(v37, 1);
          result = sub_21D17E07C(v9);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_5;
          }
        }

        v39 = *a5;
        if (a4)
        {
          v29 = result;

          v30 = v39[7];
          v31 = *(v30 + 8 * v29);
          *(v30 + 8 * v29) = v10;
        }

        else
        {
          v39[(result >> 6) + 8] |= 1 << result;
          *(v39[6] + 8 * result) = v9;
          *(v39[7] + 8 * result) = v10;
          v40 = v39[2];
          v16 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v39[2] = v41;
        }

        v9 = sub_21DA5F51C();
        v10 = v32;
      }

      while (v9);
    }

LABEL_22:
    sub_21D0CFAF8(v42);
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21D9957F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D995868(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21D990E1C(a1, v4);
}

uint64_t TTRPotentiallyLongOperationPerformer.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_21DBF563C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  v4[10] = swift_task_alloc();
  sub_21DBFA84C();
  v4[11] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v4[12] = v7;
  v4[13] = v6;

  return MEMORY[0x2822009F8](sub_21D995A84, v7, v6);
}

uint64_t sub_21D995A84()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[3];
  v5 = v2[4];
  v4 = v2[5];
  v6 = swift_allocObject();
  v0[14] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = v2[2];
  v0[15] = v7;
  v8 = sub_21DBFA89C();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = sub_21D0E6070;
  v9[6] = v6;

  v0[16] = sub_21D3932A8(0, 0, v1, &unk_21DC2A950, v9);
  sub_21D0EC98C(v1);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v13 = (v3 + *v3);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_21D995C8C;
  v11 = v0[2];

  return v13(v11);
}

uint64_t sub_21D995C8C()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21D995DAC, v3, v2);
}

uint64_t sub_21D995DAC(uint64_t a1)
{
  v2 = *(v1 + 40);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  if (*(v2 + 24) == 1 && (v3 = *(v1 + 120), sub_21DBF558C(), v3 + 5.0 - v4 > 0.0))
  {
    v5 = sub_21DBFC86C();
    v6 = swift_task_alloc();
    *(v1 + 144) = v6;
    *v6 = v1;
    v6[1] = sub_21D995F74;

    return MEMORY[0x282200480](v5);
  }

  else
  {
    v7 = *(v1 + 40);
    sub_21DBFA96C();
    v10 = (*(v7 + 48) + **(v7 + 48));
    v8 = swift_task_alloc();
    *(v1 + 152) = v8;
    *v8 = v1;
    v8[1] = sub_21D9961A8;

    return v10();
  }
}

uint64_t sub_21D995F74()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_21D996A60;
  }

  else
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_21D996098;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D996098()
{
  v1 = *(v0 + 40);
  sub_21DBFA96C();
  v4 = (*(v1 + 48) + **(v1 + 48));
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_21D9961A8;

  return v4();
}

uint64_t sub_21D9961A8()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21D9962C8, v3, v2);
}

uint64_t sub_21D9962C8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];

  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21D9963A4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE646C0);
  v1 = __swift_project_value_buffer(v0, qword_27CE646C0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRPotentiallyLongOperationPerformer.__allocating_init(longOperationDurationThreshold:debugForceShowActivityUI:showActivityUI:hideActivityUI:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  result = swift_allocObject();
  *(result + 16) = a6;
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(result + 56) = a5;
  return result;
}

uint64_t TTRPotentiallyLongOperationPerformer.init(longOperationDurationThreshold:debugForceShowActivityUI:showActivityUI:hideActivityUI:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 16) = a6;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  return v6;
}

uint64_t sub_21D9964F0(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  sub_21DBFA84C();
  *(v3 + 40) = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return MEMORY[0x2822009F8](sub_21D99658C, v5, v4);
}

uint64_t sub_21D99658C()
{
  v1 = sub_21DBFC86C();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_21D99662C;

  return MEMORY[0x282200480](v1);
}

uint64_t sub_21D99662C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_21D9967D4;
  }

  else
  {
    v5 = sub_21D996768;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D996768()
{
  v1 = *(v0 + 24);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21D9967D4()
{

  if (qword_27CE56F10 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE646C0);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEAC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 72);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "TTRPotentiallyLongOperationPerformer: activity UI cancelled", v6, 2u);
    MEMORY[0x223D46520](v6, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21D9968FC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_21D1B795C;

  return sub_21D9964F0(a5, a6, a1);
}

uint64_t TTRPotentiallyLongOperationPerformer.deinit()
{

  return v0;
}

uint64_t TTRPotentiallyLongOperationPerformer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TTREditingStateOption.InputType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D996AF4()
{
  result = qword_27CE646D8;
  if (!qword_27CE646D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTREditingStateOption.InputType, &type metadata for TTREditingStateOption.InputType, v0, v1);
    atomic_store(result, &qword_27CE646D8);
  }

  return result;
}

void sub_21D996B68(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v14[2] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_21DBF8E0C();
    sub_21D29B8E4(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_21D996C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v14 = 0;
  v21[1] = a2;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_21D1D338C(*(a1 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v13);
    sub_21D24BDFC(v13, v7);
    sub_21D29DF04(v10, v7);
    sub_21D24B040(v10);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return;
    }

    v17 = *(a1 + 56 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_21D996E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF686C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4, v12);
      (*(v5 + 32))(v7, v14, v4);
      sub_21D29E22C(v10, v7);
      (*(v5 + 8))(v10, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_21D99704C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE646E0);
  v1 = __swift_project_value_buffer(v0, qword_27CE646E0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_21D997164(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_21D9971D0(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
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

uint64_t sub_21D9972A8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270, &unk_21DC15D90);
  MEMORY[0x28223BE20](v3);
  v5 = &v16[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268, &qword_21DC195E0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  v9 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = *(*v10 + 96);
  swift_beginAccess();
  sub_21D0D3954(v10 + v11, v8, &qword_27CE5C268, &qword_21DC195E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE5C268, &qword_21DC195E0);
LABEL_4:
    v12 = sub_21DBF700C();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  sub_21D9974F4(v8, v5);

  v14 = sub_21DBF700C();
  v15 = *(v14 - 8);
  (*(v15 + 32))(a1, v5, v14);
  return (*(v15 + 56))(a1, 0, 1, v14);
}

uint64_t sub_21D9974F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270, &unk_21DC15D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTRShowTaggedDataModelSource.__allocating_init(store:initialHashtagLabels:countCompleted:sortingStyle:canChangeSortingStyle:)(void *a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v28 = a5;
  v9 = sub_21DBF6C1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataViewMonitor) = 0;
  v14 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataModelAdhocRefreshInitiator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
  swift_allocObject();
  *(v13 + v14) = sub_21DBF907C();
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataModelAdhocRefreshSubscription) = 0;
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_lastSuccessfulFetchHasValidSelection) = 1;
  v15 = *(v10 + 16);
  v29 = a2;
  v15(v12, a2, v9);
  type metadata accessor for TTRShowTaggedDataModelSourceHashtagContext(0);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  swift_unknownObjectWeakInit();
  (*(v10 + 32))(v16 + OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection, v12, v9);
  *(v16 + OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_allHashtagLabels) = MEMORY[0x277D84F90];
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_store) = a1;
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_hashtagContextInstance) = v16;
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_countCompleted) = a3;
  v17 = qword_280D1AA10;
  v18 = a1;

  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v20 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_showCompletedContextInstance) = sub_21D193548(5, 2, v19, v20);
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 18) = 0;
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_tipKitContextInstance) = v21;
  v22 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v23 = sub_21DBF70DC();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v13 + v22, a4, v23);
  *(v13 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v13 + 16) = v28 & 1;
  swift_beginAccess();
  *(v16 + 24) = &protocol witness table for TTRShowTaggedDataModelSource;
  swift_unknownObjectWeakAssign();
  v25 = *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_showCompletedContextInstance);
  swift_beginAccess();
  *(v25 + 24) = &protocol witness table for TTRShowTaggedDataModelSource;
  swift_unknownObjectWeakAssign();

  sub_21D99A2F4();
  v30 = 10;
  sub_21D99953C(&v30);

  (*(v24 + 8))(a4, v23);
  (*(v10 + 8))(v29, v9);
  return v13;
}

uint64_t TTRShowTaggedDataModelSource.init(store:initialHashtagLabels:countCompleted:sortingStyle:canChangeSortingStyle:)(void *a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v6 = v5;
  v29 = a5;
  v11 = sub_21DBF6C1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataViewMonitor) = 0;
  v15 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataModelAdhocRefreshInitiator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
  swift_allocObject();
  *(v5 + v15) = sub_21DBF907C();
  *(v5 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataModelAdhocRefreshSubscription) = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_lastSuccessfulFetchHasValidSelection) = 1;
  v16 = *(v12 + 16);
  v30 = a2;
  v16(v14, a2, v11);
  type metadata accessor for TTRShowTaggedDataModelSourceHashtagContext(0);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  (*(v12 + 32))(v17 + OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection, v14, v11);
  *(v17 + OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_allHashtagLabels) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_store) = a1;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_hashtagContextInstance) = v17;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_countCompleted) = a3;
  v18 = qword_280D1AA10;
  v19 = a1;

  if (v18 != -1)
  {
    swift_once();
  }

  v20 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v21 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_showCompletedContextInstance) = sub_21D193548(5, 2, v20, v21);
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 18) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_tipKitContextInstance) = v22;
  v23 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v24 = sub_21DBF70DC();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v6 + v23, a4, v24);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v6 + 16) = v29 & 1;
  swift_beginAccess();
  *(v17 + 24) = &protocol witness table for TTRShowTaggedDataModelSource;
  swift_unknownObjectWeakAssign();
  v26 = *(v6 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_showCompletedContextInstance);
  swift_beginAccess();
  *(v26 + 24) = &protocol witness table for TTRShowTaggedDataModelSource;
  swift_unknownObjectWeakAssign();

  sub_21D99A2F4();
  v31 = 10;
  sub_21D99953C(&v31);

  (*(v25 + 8))(a4, v24);
  (*(v12 + 8))(v30, v11);
  return v6;
}

uint64_t TTRShowTaggedDataModelSourceHashtagContext.__allocating_init(selection:allHashtagLabels:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  v6 = sub_21DBF6C1C();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_allHashtagLabels) = a2;
  return v4;
}

id sub_21D997E9C@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_store);
  v3 = type metadata accessor for TTRTipKitDataModelSourceBase();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  a1[3] = v3;
  a1[4] = &protocol witness table for TTRTipKitDataModelSourceBase;
  *a1 = v4;

  return v6;
}

uint64_t sub_21D997F14@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  v35 = sub_21DBF70DC();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF6C1C();
  v32 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v6;
  v7 = sub_21DBF71BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  if (*(*(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_showCompletedContextInstance) + 40))
  {
    v15 = MEMORY[0x277D45468];
  }

  else
  {
    v15 = MEMORY[0x277D45470];
  }

  (*(v8 + 104))(v14, *v15, v7, v12);
  v33 = *(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_store);
  v16 = *(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_hashtagContextInstance);
  v17 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  (*(v4 + 16))(v6, v16 + v17, v3);
  (*(v8 + 16))(v10, v14, v7);
  v18 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v19 = v1 + v18;
  v20 = v34;
  v21 = v35;
  (*(v37 + 16))(v34, v19, v35);
  v22 = type metadata accessor for TTRShowTaggedPrintingDataModelSource(0);
  v23 = swift_allocObject();
  v24 = v32;
  v25 = v33;
  *(v23 + 16) = v33;
  (*(v4 + 32))(v23 + OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_hashtagLabels, v31, v24);
  (*(v8 + 32))(v23 + OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_showCompleted, v10, v7);
  (*(v37 + 32))(v23 + OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_sortingStyle, v20, v21);
  v26 = v36;
  v36[3] = v22;
  v26[4] = &protocol witness table for TTRShowTaggedPrintingDataModelSource;
  *v26 = v23;
  v27 = *(v8 + 8);
  v28 = v25;
  return v27(v14, v7);
}

uint64_t TTRShowTaggedPrintingDataModelSource.__allocating_init(store:hashtagLabels:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_hashtagLabels;
  v10 = sub_21DBF6C1C();
  (*(*(v10 - 8) + 32))(v8 + v9, a2, v10);
  v11 = OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_showCompleted;
  v12 = sub_21DBF71BC();
  (*(*(v12 - 8) + 32))(v8 + v11, a3, v12);
  v13 = OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_sortingStyle;
  v14 = sub_21DBF70DC();
  (*(*(v14 - 8) + 32))(v8 + v13, a4, v14);
  return v8;
}

uint64_t sub_21D9983DC@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v95 = a1;
  v73 = sub_21DBF773C();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58560, &unk_21DC09540);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v69 - v5;
  v75 = sub_21DBFB1AC();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_21DBF700C();
  v84 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v69 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v69 - v9;
  MEMORY[0x28223BE20](v10);
  v77 = &v69 - v11;
  v12 = sub_21DBF6A9C();
  v87 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v88 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF734C();
  v99 = *(v14 - 8);
  v100 = v14;
  MEMORY[0x28223BE20](v14);
  v86 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DBF70DC();
  v102 = *(v16 - 8);
  v103 = v16;
  MEMORY[0x28223BE20](v16);
  v85 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_21DBF74BC();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v101 = (&v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B80, &unk_21DC299E0);
  v79 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v98 = &v69 - v19;
  v93 = sub_21DBF71BC();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v21 = (&v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_21DBF6C1C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v82 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v69 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v69 - v29;
  v31 = *(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_hashtagContextInstance);
  v32 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  v94 = v23;
  v33 = *(v23 + 16);
  v33(v30, v31 + v32, v22);

  v89 = sub_21D8526E8(v21, v34);

  v96 = v30;
  v97 = v22;
  v81 = v33;
  v33(v27, v30, v22);
  sub_21D999290(v27, v101);
  v35 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v36 = v2 + v35;
  v37 = v87;
  v38 = v85;
  (*(v102 + 16))(v85, v36, v103);
  v39 = v86;
  (*(v99 + 104))(v86, *MEMORY[0x277D45500], v100);
  v40 = v88;
  (*(v37 + 104))(v88, *MEMORY[0x277D45310], v12);
  sub_21DBF702C();
  v41 = v76;
  v82 = v21;
  v42 = v37;
  v43 = v78;
  (*(v42 + 8))(v40, v12);
  (*(v99 + 8))(v39, v100);
  (*(v102 + 8))(v38, v103);
  (*(v90 + 8))(v101, v91);
  v44 = v77;
  v45 = v83;
  sub_21DBF76DC();
  v46 = sub_21DBF6F9C();
  v48 = v84 + 8;
  v47 = *(v84 + 8);
  v49 = v44;
  v50 = v80;
  v47(v49, v80);
  if (v46)
  {
    sub_21DBF76DC();
    sub_21DBF6FFC();
    v84 = v48;
    v47(v41, v50);
    v51 = v74;
    v52 = v75;
    v53 = (*(v74 + 48))(v43, 1, v75);
    v54 = v89;
    if (v53 != 1)
    {
      v57 = v70;
      (*(v51 + 32))(v70, v43, v52);
      v58 = v69;
      v59 = v51;
      v60 = v98;
      sub_21DBF76DC();
      v61 = v71;
      sub_21DBF6FBC();
      v47(v58, v80);
      v103 = sub_21DBF718C();
      (*(v72 + 8))(v61, v73);
      v62 = v46;
      v102 = sub_21DBFB18C();
      v63 = sub_21DBFB19C();
      v64 = sub_21DBFB17C();
      v66 = v65;

      (*(v59 + 8))(v57, v52);
      (*(v79 + 8))(v60, v83);
      (*(v92 + 8))(v82, v93);
      result = (*(v94 + 8))(v96, v97);
      v67 = v95;
      v68 = v102;
      *v95 = v103;
      *(v67 + 1) = v54;
      *(v67 + 2) = v46;
      *(v67 + 24) = 0;
      *(v67 + 4) = v68;
      *(v67 + 20) = v63;
      *(v67 + 6) = v64;
      *(v67 + 7) = v66;
      return result;
    }

    (*(v79 + 8))(v98, v83);
    (*(v92 + 8))(v82, v93);
    (*(v94 + 8))(v96, v97);
    result = sub_21D0CF7E0(v43, &qword_27CE58560, &unk_21DC09540);
  }

  else
  {

    (*(v79 + 8))(v98, v45);
    (*(v92 + 8))(v82, v93);
    result = (*(v94 + 8))(v96, v97);
  }

  v56 = v95;
  v95[2] = 0u;
  v56[3] = 0u;
  *v56 = 0u;
  v56[1] = 0u;
  return result;
}

uint64_t sub_21D999290@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21DBF6C1C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D45378])
  {
    (*(v5 + 96))(v8, v4);
    v11 = *v8;
    v10 = *(v8 + 1);
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50, &unk_21DC11830) + 64);
    v13 = sub_21DBF6C0C();
    v14 = (*(*(v13 - 8) + 88))(&v8[v12], v13);
    if (v14 == *MEMORY[0x277D45388])
    {
      (*(v5 + 8))(a1, v4);
      *a2 = v11;
      a2[1] = v10;
      v15 = MEMORY[0x277D45538];
LABEL_10:
      v16 = *v15;
      v17 = sub_21DBF74BC();
      return (*(*(v17 - 8) + 104))(a2, v16, v17);
    }

    if (v14 == *MEMORY[0x277D45390])
    {
      (*(v5 + 8))(a1, v4);
      *a2 = v11;
      a2[1] = v10;
      v15 = MEMORY[0x277D45540];
      goto LABEL_10;
    }
  }

  else
  {
    if (v9 == *MEMORY[0x277D45398])
    {
      (*(v5 + 8))(a1, v4);
      v15 = MEMORY[0x277D45550];
      goto LABEL_10;
    }

    if (v9 == *MEMORY[0x277D45380])
    {
      (*(v5 + 8))(a1, v4);
      v15 = MEMORY[0x277D45548];
      goto LABEL_10;
    }
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21D99953C(unsigned __int8 *a1)
{
  v2 = v1;
  v77 = sub_21DBF70DC();
  v72 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v80 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21DBF71BC();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v74 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF6C1C();
  v85 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v84 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270, &unk_21DC15D90);
  v76 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v75 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = (&v68 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3E8, &qword_21DC34290);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v68 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58560, &unk_21DC09540);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v68 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378, &qword_21DC19530);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v68 - v20;
  v22 = sub_21DBF773C();
  MEMORY[0x28223BE20](v22 - 8);
  v87 = sub_21DBF700C();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v88 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *a1;
  v24 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v83 = v24;
  v25 = *(v2 + v24);
  v82 = v6;
  if (v25)
  {
    v26 = v2 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = v8;
      v28 = *(v26 + 8);
      ObjectType = swift_getObjectType();
      v89[0] = v81;
      v30 = *(v28 + 8);
      v8 = v27;
      v6 = v82;
      (*(v30 + 16))(v89, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v31 = sub_21DBF72DC();
  (*(*(v31 - 8) + 56))(v21, 1, 1, v31);
  MEMORY[0x223D3FED0](MEMORY[0x277D84F90], v21, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  v32 = sub_21DBFB1AC();
  (*(*(v32 - 8) + 56))(v18, 1, 1, v32);
  sub_21DBF6FAC();
  v33 = *(v2 + v83);
  if (!v33)
  {
    goto LABEL_7;
  }

  v34 = *(*v33 + 104);
  swift_beginAccess();
  sub_21D0D3954(v33 + v34, v15, &qword_27CE5D3E8, &qword_21DC34290);
  if (v76[6](v15, 1, v8) == 1)
  {
    sub_21D0CF7E0(v15, &qword_27CE5D3E8, &qword_21DC34290);
LABEL_7:
    v35 = 0;
    goto LABEL_9;
  }

  v35 = *&v15[*(v8 + 48)];
  (*(v86 + 8))(v15, v87);
LABEL_9:
  v73 = v8;
  v36 = *(v8 + 48);
  v70 = *(v86 + 16);
  v68 = v86 + 16;
  v70(v12, v88, v87);
  v76 = v12;
  *(v12 + v36) = v35;
  v37 = v2 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v71 = v35;
  if (Strong)
  {
    v39 = *(v37 + 8);
    v40 = swift_getObjectType();
    v41 = *(v39 + 8);
    v42 = *(v41 + 8);
    v43 = v35;
    v44 = v42(v40, v41);
    LOBYTE(v40) = v45;
    swift_unknownObjectRelease();
    v46 = v79;
    v47 = v78;
    v48 = v74;
    if ((v40 & 1) == 0)
    {
      v69 = v44;
      goto LABEL_14;
    }
  }

  else
  {
    v49 = v35;
    v46 = v79;
    v47 = v78;
    v48 = v74;
  }

  v69 = 30;
LABEL_14:
  v79 = *(v2 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_store);
  v50 = *(v2 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_hashtagContextInstance);
  v51 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  (*(v85 + 16))(v84, v50 + v51, v6);
  v52 = *(v2 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_showCompletedContextInstance);
  if (*(v52 + 40) == 1)
  {
    (*(v47 + 104))(v48, *MEMORY[0x277D45468], v46);
  }

  else
  {
    swift_beginAccess();
    *v48 = *(v52 + 48);
    (*(v47 + 104))(v48, *MEMORY[0x277D45480], v46);
    sub_21DBF8E0C();
  }

  v53 = v48;
  v54 = *(v2 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_countCompleted);
  v55 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v56 = v72;
  v57 = v80;
  v58 = v77;
  (*(v72 + 16))(v80, v2 + v55, v77);
  type metadata accessor for TTRShowTaggedMonitorableDataView(0);
  v59 = swift_allocObject();
  *(v59 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_needsFetchLatestSmartListHashtagLabels) = 0;
  v60 = v79;
  *(v59 + 16) = v79;
  (*(v85 + 32))(v59 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_hashtagLabels, v84, v82);
  (*(v47 + 32))(v59 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_showCompleted, v53, v46);
  *(v59 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_countCompleted) = v54;
  (*(v56 + 32))(v59 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_sortingStyle, v57, v58);
  *(v59 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_remindersToPrefetchCount) = v69;
  v61 = *(v73 + 48);
  v62 = v75;
  v63 = v76;
  v64 = v87;
  v70(v75, v76, v87);
  *(v62 + v61) = v71;
  v65 = v83;
  swift_beginAccess();
  v66 = v60;
  sub_21D4FCE64((v2 + v65), v62, v59, v2, v81);
  sub_21D0CF7E0(v62, &qword_27CE5C270, &unk_21DC15D90);
  swift_endAccess();

  sub_21D0CF7E0(v63, &qword_27CE5C270, &unk_21DC15D90);
  return (*(v86 + 8))(v88, v64);
}

uint64_t TTRShowTaggedMonitorableDataView.__allocating_init(store:hashtagLabels:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_needsFetchLatestSmartListHashtagLabels) = 0;
  *(v12 + 16) = a1;
  v13 = OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_hashtagLabels;
  v14 = sub_21DBF6C1C();
  (*(*(v14 - 8) + 32))(v12 + v13, a2, v14);
  v15 = OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_showCompleted;
  v16 = sub_21DBF71BC();
  (*(*(v16 - 8) + 32))(v12 + v15, a3, v16);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_countCompleted) = a4;
  v17 = OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_sortingStyle;
  v18 = sub_21DBF70DC();
  (*(*(v18 - 8) + 32))(v12 + v17, a5, v18);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_remindersToPrefetchCount) = a6;
  return v12;
}

void sub_21D99A168(void *a1)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v1 + v3))
    {
      v4 = a1;

      v5 = sub_21DBF6E3C();
      sub_21D4F5F28(v5);
      v7 = v6;

      sub_21D4F9F64(v4, v7);
    }

    else
    {
      v8 = *(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_store);
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v9 = a1;
      v10 = v1;
      v11 = sub_21DBFB12C();
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = sub_21D87E81C(v8, sub_21D1947D8, v12, v9, v11);
      *(v10 + v3) = v13;

      swift_beginAccess();
      v13[3] = &protocol witness table for TTRShowTaggedDataModelSource;
      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_21D99A2F4()
{
  v1 = sub_21DBFB10C();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  v26 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250, &unk_21DC13240);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C848, &qword_21DC1FEB0);
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F260, &unk_21DC16F90);
  v9 = *(v8 - 8);
  v30 = v8;
  v31 = v9;
  MEMORY[0x28223BE20](v8);
  v25 = &v22 - v10;
  v35 = *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataModelAdhocRefreshInitiator);
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);

  v11 = sub_21DBFB12C();
  v34 = v11;
  v12 = sub_21DBFB0DC();
  v13 = *(v12 - 8);
  v23 = *(v13 + 56);
  v24 = v13 + 56;
  v23(v5, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
  sub_21D0D0F1C(&qword_280D0C450, &unk_27CE5C9E0, qword_21DC0ECD0, MEMORY[0x277CBCE20]);
  sub_21D0D65DC(&qword_280D17800, &qword_280D1B900, 0x277D85C78, MEMORY[0x277D85228]);
  sub_21DBF936C();
  sub_21D0CF7E0(v5, &unk_27CE5F250, &unk_21DC13240);

  v14 = v26;
  sub_21DBFB0FC();
  v15 = sub_21DBFB12C();
  v35 = v15;
  v23(v5, 1, 1, v12);
  sub_21D0D0F1C(&qword_280D0C4F8, &qword_27CE5C848, &qword_21DC1FEB0, MEMORY[0x277CBCD60]);
  v16 = v25;
  v17 = v27;
  sub_21DBF937C();
  sub_21D0CF7E0(v5, &unk_27CE5F250, &unk_21DC13240);

  (*(v32 + 8))(v14, v33);
  (*(v29 + 8))(v7, v17);
  type metadata accessor for TTRShowTaggedDataModelSource(0);
  sub_21D0D0F1C(&qword_280D0C540, &qword_27CE5F260, &unk_21DC16F90, MEMORY[0x277CBCCF8]);
  v18 = v28;
  v19 = v30;
  v20 = sub_21DBF91AC();
  (*(v31 + 8))(v16, v19);
  *(v18 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataModelAdhocRefreshSubscription) = v20;
}

void sub_21D99A7F8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  if (*(a1 + v2))
  {

    sub_21D4FA904(sub_21D99A870, 0);
  }
}

uint64_t sub_21D99A870(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  if (qword_27CE56F18 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE646E0);
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAE9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21D0C9000, v5, v6, "TTRShowTaggedDataModelSource: replace data view w/ needsFetchLatestSmartListHashtagLabels=true", v7, 2u);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  *a1 = sub_21D99EFA4(v3, 1);
  return 1;
}

uint64_t TTRShowTaggedMonitorableDataView.__allocating_init(source:needsFetchLatestSmartListHashtagLabels:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_21D99EFA4(a1, a2);

  return v2;
}

uint64_t sub_21D99A9D0()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate);
}

uint64_t TTRShowTaggedDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate);

  return v0;
}

uint64_t TTRShowTaggedDataModelSource.__deallocating_deinit()
{
  TTRShowTaggedDataModelSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall TTRShowTaggedDataModelSource.showCompletedAllowlistChanged(isCleared:)(Swift::Bool isCleared)
{
  if (isCleared)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v2 = v1;
  sub_21D99953C(&v2);
}

uint64_t sub_21D99ACA8(char a1)
{
  if (a1)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v3 = v1;
  return sub_21D99953C(&v3);
}

double TTRShowTaggedDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowTaggedDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v119 = a4;
  v120 = a1;
  v7 = sub_21DBF6C1C();
  v114 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v113 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v117 = &v107 - v10;
  v116 = sub_21DBF78CC();
  v122 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v112 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v111 = &v107 - v13;
  MEMORY[0x28223BE20](v14);
  v121 = &v107 - v15;
  v16 = sub_21DBF773C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270, &unk_21DC15D90);
  MEMORY[0x28223BE20](v20);
  v115 = (&v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v118 = &v107 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v107 - v25;
  v27 = sub_21DBF700C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v124 = v27;
  v29(v26, a2);
  v125 = v20;
  v126 = v26;
  *&v26[*(v20 + 48)] = a3;
  v30 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v123 = v4;
  v31 = *(v4 + v30);
  if (!v31)
  {
    v45 = a3;
    return sub_21D0CF7E0(v126, &qword_27CE5C270, &unk_21DC15D90);
  }

  v32 = a3;
  if (v31 == v120)
  {
    sub_21D99A168(a3);
    v33 = v118;
    sub_21D0D3954(v126, v118, &qword_27CE5C270, &unk_21DC15D90);

    sub_21DBF6FBC();
    v34 = *(v28 + 8);
    v120 = v28 + 8;
    v110 = v34;
    v34(v33, v124);
    v35 = sub_21DBF716C();
    (*(v17 + 8))(v19, v16);
    v109 = v7;
    if (v35 >> 62)
    {
      if (sub_21DBFBD7C())
      {
        v36 = sub_21DBFBD7C();
        if (!v36)
        {

          v38 = MEMORY[0x277D84F90];
LABEL_15:
          v46 = v123;
          if (*(v38 + 16))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
            v47 = sub_21DBFC40C();
          }

          else
          {
            v47 = MEMORY[0x277D84F98];
          }

          v130 = v47;
          v48 = sub_21DBF8E0C();
          sub_21D1931C0(v48, 1, &v130);

          v49 = v130;
          v50 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
          swift_beginAccess();
          v51 = *(v46 + v50);
          v108 = 0;
          if (v51)
          {

            sub_21D188810(v49);
            v53 = v52;

            TTRBatchFetchManager<A>.override(objects:)(v53);
          }

          else
          {
          }

          goto LABEL_25;
        }

LABEL_5:
        v130 = MEMORY[0x277D84F90];
        sub_21D18E6B8(0, v36 & ~(v36 >> 63), 0);
        if (v36 < 0)
        {
          __break(1u);
          goto LABEL_54;
        }

        v37 = 0;
        v38 = v130;
        do
        {
          if ((v35 & 0xC000000000000001) != 0)
          {
            v39 = MEMORY[0x223D44740](v37, v35);
          }

          else
          {
            v39 = *(v35 + 8 * v37 + 32);
          }

          v40 = v39;
          v41 = [v39 objectID];
          v130 = v38;
          v43 = *(v38 + 16);
          v42 = *(v38 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_21D18E6B8((v42 > 1), v43 + 1, 1);
            v38 = v130;
          }

          ++v37;
          *(v38 + 16) = v43 + 1;
          v44 = v38 + 16 * v43;
          *(v44 + 32) = v41;
          *(v44 + 40) = v40;
        }

        while (v36 != v37);

        goto LABEL_15;
      }
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
        goto LABEL_5;
      }
    }

    v108 = 0;
LABEL_25:
    v54 = v115;
    sub_21D0D3954(v126, v115, &qword_27CE5C270, &unk_21DC15D90);

    v16 = sub_21DBF6FEC();
    v110(v54, v124);
    if (v16 >> 62)
    {
      v55 = sub_21DBFBD7C();
      if (!v55)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v55 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v55)
      {
        goto LABEL_37;
      }
    }

    v129[0] = MEMORY[0x277D84F90];
    sub_21D18E678(0, v55 & ~(v55 >> 63), 0);
    if ((v55 & 0x8000000000000000) == 0)
    {
      v56 = 0;
      v57 = v129[0];
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x223D44740](v56, v16);
        }

        else
        {
          v58 = *(v16 + 8 * v56 + 32);
        }

        v59 = v58;
        v60 = [v58 name];
        v61 = sub_21DBFA16C();
        v63 = v62;

        v129[0] = v57;
        v65 = *(v57 + 16);
        v64 = *(v57 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_21D18E678((v64 > 1), v65 + 1, 1);
          v57 = v129[0];
        }

        ++v56;
        *(v57 + 16) = v65 + 1;
        v66 = v57 + 16 * v65;
        *(v66 + 32) = v61;
        *(v66 + 40) = v63;
      }

      while (v55 != v56);
LABEL_37:

      v67 = v111;
      sub_21DBF784C();
      v68 = v126;
      v69 = v118;
      sub_21D0D3954(v126, v118, &qword_27CE5C270, &unk_21DC15D90);

      sub_21DBF6FCC();
      v110(v69, v124);
      v70 = v112;
      sub_21DBF784C();
      sub_21DBF782C();
      v16 = v122 + 8;
      v71 = *(v122 + 8);
      v72 = v116;
      v71(v70, v116);
      v115 = v71;
      v71(v67, v72);
      v73 = v123;
      v112 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_hashtagContextInstance;
      v74 = *(v123 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_hashtagContextInstance);

      v75 = sub_21DBF785C();
      v76 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_allHashtagLabels;
      swift_beginAccess();
      *(v74 + v76) = v75;

      v127 = 0;
      v128 = 0xE000000000000000;
      sub_21DBFBEEC();
      v127 = *v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64788, &qword_21DC34280);
      v77 = sub_21DBFA1AC();
      v79 = v78;

      v127 = v77;
      v128 = v79;
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
      v80 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v80);
      *(&v107 - 4) = v73;
      *(&v107 - 3) = v68;
      *(&v107 - 2) = v119;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      sub_21DBF625C();

      sub_21D0D3954(v68, v69, &qword_27CE5C270, &unk_21DC15D90);

      LOBYTE(v74) = sub_21DBF6FDC();
      v110(v69, v124);
      if (v74)
      {
LABEL_42:
        v122 = v16;
        v85 = v112;
        v86 = *&v112[v73];
        v87 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
        swift_beginAccess();
        v88 = v114;
        v89 = *(v114 + 16);
        v90 = v86 + v87;
        v91 = v113;
        v92 = v109;
        v89(v113, v90, v109);
        v93 = v117;
        sub_21DBF6BFC();
        v94 = *(v88 + 8);
        v94(v91, v92);
        v95 = *&v85[v73];
        v96 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
        swift_beginAccess();
        v89(v91, v95 + v96, v92);
        LOBYTE(v95) = MEMORY[0x223D3F370](v91, v93);
        v94(v91, v92);
        if (v95)
        {
          *(v73 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_lastSuccessfulFetchHasValidSelection) = 1;
          v97 = v115;
        }

        else
        {
          v98 = *(v73 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_lastSuccessfulFetchHasValidSelection);
          v97 = v115;
          if (qword_27CE56F18 != -1)
          {
            swift_once();
          }

          v99 = sub_21DBF84BC();
          __swift_project_value_buffer(v99, qword_27CE646E0);
          v100 = sub_21DBF84AC();
          v101 = sub_21DBFAE9C();
          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            *v102 = 0;
            _os_log_impl(&dword_21D0C9000, v100, v101, "TTRShowTaggedDataModelSource: current selection is invalid", v102, 2u);
            MEMORY[0x223D46520](v102, -1, -1);
          }

          *(v73 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_lastSuccessfulFetchHasValidSelection) = 0;
          if (v98)
          {
            v103 = v73 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v104 = *(v103 + 1);
              ObjectType = swift_getObjectType();
              (*(v104 + 32))(ObjectType, v104);
              swift_unknownObjectRelease();
            }
          }
        }

        v94(v117, v109);
        v97(v121, v116);
        return sub_21D0CF7E0(v126, &qword_27CE5C270, &unk_21DC15D90);
      }

      if (qword_27CE56F18 == -1)
      {
LABEL_39:
        v81 = sub_21DBF84BC();
        __swift_project_value_buffer(v81, qword_27CE646E0);
        v82 = sub_21DBF84AC();
        v83 = sub_21DBFAE9C();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_21D0C9000, v82, v83, "TTRShowTaggedDataModelSource: found outdated cachable smartListHashtagLabels", v84, 2u);
          MEMORY[0x223D46520](v84, -1, -1);
        }

        v73 = v123;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
        sub_21D0D0F1C(&qword_280D0C460, &unk_27CE5C9E0, qword_21DC0ECD0, MEMORY[0x277CBCE18]);
        sub_21DBF912C();
        goto LABEL_42;
      }

LABEL_55:
      swift_once();
      goto LABEL_39;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  return sub_21D0CF7E0(v126, &qword_27CE5C270, &unk_21DC15D90);
}

void sub_21D99BC10(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(a2, a3, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  *a4 = Strong == 0;
}

double sub_21D99BCDC()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D99BD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270, &unk_21DC15D90) + 48));

  return TTRShowTaggedDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowTaggedDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64788, &qword_21DC34280);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();
}

void sub_21D99BEFC(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(a2, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  *a3 = Strong == 0;
}

void TTRShowTaggedDataModelSource.update(error:)(void *a1)
{
  if (qword_27CE56F18 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE646E0);
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
    type metadata accessor for TTRShowTaggedDataModelSource(0);

    v10 = sub_21DBFA1AC();
    v12 = sub_21D0CDFB4(v10, v11, &v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowTaggedDataModelSource update error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRShowTaggedPrintingDataModelSource.init(store:hashtagLabels:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_hashtagLabels;
  v9 = sub_21DBF6C1C();
  (*(*(v9 - 8) + 32))(v4 + v8, a2, v9);
  v10 = OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_showCompleted;
  v11 = sub_21DBF71BC();
  (*(*(v11 - 8) + 32))(v4 + v10, a3, v11);
  v12 = OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_sortingStyle;
  v13 = sub_21DBF70DC();
  (*(*(v13 - 8) + 32))(v4 + v12, a4, v13);
  return v4;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowTaggedPrintingDataModelSource.fetchListTree()(RemindersUICore::TTRRemindersPrintingListTree *__return_ptr retstr)
{
  v2 = v1;
  v81 = retstr;
  v3 = sub_21DBF773C();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF700C();
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF6A9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v88 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF734C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF6C1C();
  v92 = *(v14 - 8);
  v93 = v14;
  MEMORY[0x28223BE20](v14);
  v82 = (&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v85 = &v70 - v17;
  v18 = sub_21DBF74BC();
  v86 = *(v18 - 8);
  v87 = v18;
  MEMORY[0x28223BE20](v18);
  v103 = (&v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B80, &unk_21DC299E0);
  v73 = *(v20 - 8);
  v74 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - v21;
  if (qword_27CE56F18 != -1)
  {
    swift_once();
  }

  v89 = v7;
  v91 = v22;
  v23 = sub_21DBF84BC();
  __swift_project_value_buffer(v23, qword_27CE646E0);
  v24 = sub_21DBF84AC();
  v25 = sub_21DBFAEDC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v8;
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_21D0C9000, v24, v25, "PrintingDataModelSource: fetch Flagged tree", v27, 2u);
    v28 = v27;
    v8 = v26;
    MEMORY[0x223D46520](v28, -1, -1);
  }

  v83 = *(v2 + 16);
  v84 = OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_sortingStyle;
  v29 = *(v92 + 16);
  v70 = OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_hashtagLabels;
  v71 = v29;
  v30 = v85;
  v72 = v92 + 16;
  v29(v85, v2 + OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_hashtagLabels, v93);
  sub_21D999290(v30, v103);
  (*(v11 + 104))(v13, *MEMORY[0x277D45500], v10);
  v31 = *MEMORY[0x277D45318];
  v32 = *(v8 + 104);
  v33 = v88;
  v85 = v10;
  v34 = v89;
  v32(v88, v31, v89);
  v36 = v90;
  v35 = v91;
  sub_21DBF702C();
  v90 = v36;
  if (v36)
  {
    (*(v8 + 8))(v33, v34);
    (*(v11 + 8))(v13, v85);
    (*(v86 + 8))(v103, v87);
    return;
  }

  (*(v8 + 8))(v33, v34);
  (*(v11 + 8))(v13, v85);
  (*(v86 + 8))(v103, v87);
  v37 = v82;
  v38 = v93;
  v71(v82, v2 + v70, v93);
  v39 = v92;
  v40 = (*(v92 + 88))(v37, v38);
  if (v40 == *MEMORY[0x277D45378])
  {
    (*(v39 + 96))(v37, v38);
    sub_21D996B68(v37[1], *v37);
    v42 = *(v41 + 16);
    v43 = v35;
    if (v42 == 1)
    {
      sub_21D195590(v41);
      v45 = v44;

      if (v45)
      {
        v46 = sub_21DBFA22C();
        v48 = v47;

LABEL_18:
        v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50, &unk_21DC11830) + 64);
        v54 = sub_21DBF6C0C();
        (*(*(v54 - 8) + 8))(v37 + v53, v54);
LABEL_22:
        sub_21D6EEF24(v94);
        v57 = v74;
        v56 = v75;
        sub_21DBF76DC();
        v58 = v78;
        sub_21DBF6FBC();
        (*(v76 + 8))(v56, v77);
        v59 = sub_21DBF718C();
        (*(v79 + 8))(v58, v80);
        v100 = v94[4];
        v101 = v94[5];
        *v102 = v95[0];
        *&v102[10] = *(v95 + 10);
        v96 = v94[0];
        v97 = v94[1];
        v98 = v94[2];
        v99 = v94[3];
        v60 = [objc_opt_self() systemBlueColor];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589D0, &unk_21DC09C30);
        v61 = swift_allocObject();
        v62 = v100;
        v63 = *v102;
        v64 = *&v102[16];
        *(v61 + 112) = v101;
        *(v61 + 128) = v63;
        *(v61 + 144) = v64;
        v65 = v96;
        v66 = v97;
        *(v61 + 16) = xmmword_21DC08D00;
        *(v61 + 32) = v65;
        v67 = v98;
        v68 = v99;
        *(v61 + 48) = v66;
        *(v61 + 64) = v67;
        *(v61 + 80) = v68;
        *(v61 + 96) = v62;
        *(v61 + 160) = v59;
        (*(v73 + 8))(v43, v57);
        v69 = v81;
        v81->listName._countAndFlagsBits = v46;
        v69->listName._object = v48;
        v69->listColor.super.isa = v60;
        v69->count.value = 0;
        v69->count.is_nil = 1;
        v69->sections._rawValue = v61;
        v69->reminderColorSource = RemindersUICore_TTRRemindersPrintingViewModel_ReminderColorSource_parentListColor;
        return;
      }
    }

    else
    {
    }

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v49 = swift_allocObject();
    v50 = MEMORY[0x277D83B88];
    *(v49 + 16) = xmmword_21DC08D00;
    v51 = MEMORY[0x277D83C10];
    *(v49 + 56) = v50;
    *(v49 + 64) = v51;
    *(v49 + 32) = v42;
    v46 = sub_21DBFA13C();
    v48 = v52;

    v37 = v82;
    goto LABEL_18;
  }

  v43 = v35;
  if (v40 == *MEMORY[0x277D45398])
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (v40 == *MEMORY[0x277D45380])
  {
    if (qword_280D1BAA8 == -1)
    {
LABEL_21:
      v46 = sub_21DBF516C();
      v48 = v55;
      goto LABEL_22;
    }

LABEL_23:
    swift_once();
    goto LABEL_21;
  }

  sub_21DBFC63C();
  __break(1u);
}