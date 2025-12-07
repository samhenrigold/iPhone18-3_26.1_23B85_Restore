uint64_t AlarmInternalIdentifierPrefix.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2692C7C70();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_2692B9B14()
{
  result = qword_280303360;
  if (!qword_280303360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303360);
  }

  return result;
}

uint64_t sub_2692B9B68()
{
  sub_2692C7DE0();
  sub_2692C7890();
  return sub_2692C7E00();
}

uint64_t sub_2692B9BDC(uint64_t a1)
{
  sub_2692C7DE0();
  sub_2692C7890();
  return sub_2692C7E00();
}

uint64_t sub_2692B9C30@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2692C7C70();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_2692B9D98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2692C77C0();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2692B9E5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2692C77C0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2692C7690();
}

uint64_t sub_2692B9EBC()
{
  result = sub_2692C7680();
  qword_280303380 = result;
  return result;
}

id static SiriTimeLog.alarmExtensionOSLogObject.getter()
{
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v1 = qword_280303380;

  return v1;
}

BOOL CreateAlarmIntent.eligibleForTimerReformation.getter()
{
  v1 = [v0 relativeOffsetInMinutes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [v1 doubleValue];
  v4 = v3;
  v5 = objc_opt_self();
  [v5 minimumDuration];
  if (v6 >= v4 || ([v2 doubleValue], v8 = v7, objc_msgSend(v5, sel_maxReformationDuration), v8 > v9))
  {

    return 0;
  }

  v11 = [v0 repeatSchedule];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for AlarmRepeatSchedule();
    v13 = sub_2692C7930();

    if (!(v13 >> 62))
    {
LABEL_8:
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_8;
    }
  }

  v14 = sub_2692C7C60();
LABEL_9:

  return !v14;
}

id CreateAlarmIntent.alarmSearch.getter()
{
  v1 = v0;
  v2 = sub_2692C7310();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AlarmSearch();
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_2692C7820();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = [v1 time];
  if (v10)
  {
    v11 = v10;
    sub_2692C7280();

    v12 = sub_2692C7270();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v12 = 0;
  }

  [v9 setTime_];

  v13 = [v1 label];
  [v9 setLabel_];

  v14 = [v1 repeatSchedule];
  [v9 setRepeatSchedule_];

  return v9;
}

id sub_2692BA26C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v41 - v9;
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v41 - v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D296F0]) init];
  v19 = [v1 time];
  if (v19)
  {
    v20 = v19;
    sub_2692C7280();

    v21 = sub_2692C7310();
    (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
  }

  else
  {
    v21 = sub_2692C7310();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  }

  sub_269280640(v14, v17);
  sub_2692C7310();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v17, 1, v21))
  {
    goto LABEL_5;
  }

  v42 = v1;
  v41 = sub_2692C7290();
  v25 = v24;
  sub_2692B6904(v17);
  if (v25)
  {
    goto LABEL_7;
  }

  v31 = [v42 time];
  if (v31)
  {
    v32 = v31;
    sub_2692C7280();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  (*(v22 + 56))(v6, v33, 1, v21);
  sub_269280640(v6, v10);
  if (v23(v10, 1, v21))
  {
    v17 = v10;
LABEL_5:
    sub_2692B6904(v17);
LABEL_7:
    if (qword_280302B58 != -1)
    {
      swift_once();
    }

    v26 = sub_2692C77C0();
    __swift_project_value_buffer(v26, qword_280303388);
    v27 = sub_2692C77B0();
    v28 = sub_2692C79F0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_269270000, v27, v28, "SiriTimeInternalError: No alarm time to create!", v29, 2u);
      MEMORY[0x26D6368E0](v29, -1, -1);
    }

    return 0;
  }

  v34 = sub_2692C72B0();
  v36 = v35;
  sub_2692B6904(v10);
  if (v36)
  {
    goto LABEL_7;
  }

  [v18 setHour_];
  [v18 setMinute_];
  v37 = v42;
  v38 = [v42 label];
  [v18 setTitle_];

  v39 = [v37 repeatSchedule];
  if (v39)
  {
    type metadata accessor for AlarmRepeatSchedule();
    v40 = sub_2692C7930();

    v39 = sub_2692A86A0(v40);
  }

  [v18 setRepeatSchedule_];
  return v18;
}

uint64_t sub_2692BA6D0()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280303388);
  v1 = __swift_project_value_buffer(v0, qword_280303388);
  if (qword_280302B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280307B80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *DismissAlarmHalIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

void sub_2692BA82C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2692C7830();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_2692BA890(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_2692C7820();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

id DismissAlarmHalIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DismissAlarmHalIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DismissAlarmHalIntent.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DismissAlarmHalIntent();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id DismissAlarmHalIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2692C7820();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id DismissAlarmHalIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2692C7820();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DismissAlarmHalIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id DismissAlarmHalIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id DismissAlarmHalIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for DismissAlarmHalIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

uint64_t sub_2692BAEC4()
{
  v1 = *v0;
  sub_2692C7DE0();
  MEMORY[0x26D636320](v1);
  return sub_2692C7E00();
}

uint64_t sub_2692BAF0C(uint64_t a1)
{
  v2 = *v1;
  sub_2692C7DE0();
  MEMORY[0x26D636320](v2);
  return sub_2692C7E00();
}

unint64_t sub_2692BAF50@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2692BB650(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2692BAFCC()
{
  v1 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *DismissAlarmHalIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id DismissAlarmHalIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DismissAlarmHalIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___DismissAlarmHalIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DismissAlarmHalIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DismissAlarmHalIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DismissAlarmHalIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___DismissAlarmHalIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DismissAlarmHalIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DismissAlarmHalIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id DismissAlarmHalIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___DismissAlarmHalIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DismissAlarmHalIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692BB3F4(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___DismissAlarmHalIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for DismissAlarmHalIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id DismissAlarmHalIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id DismissAlarmHalIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DismissAlarmHalIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DismissAlarmHalIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_2692BB618(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692BB650(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2692BB688()
{
  result = qword_2803033A8;
  if (!qword_2803033A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803033A8);
  }

  return result;
}

char *SnoozeAlarmHalIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SnoozeAlarmHalIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnoozeAlarmHalIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SnoozeAlarmHalIntent.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for SnoozeAlarmHalIntent();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id SnoozeAlarmHalIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2692C7820();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SnoozeAlarmHalIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2692C7820();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SnoozeAlarmHalIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id SnoozeAlarmHalIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id SnoozeAlarmHalIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for SnoozeAlarmHalIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_2692BBDC8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2692BC4C8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2692BBE44()
{
  v1 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *SnoozeAlarmHalIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SnoozeAlarmHalIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SnoozeAlarmHalIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___SnoozeAlarmHalIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SnoozeAlarmHalIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SnoozeAlarmHalIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SnoozeAlarmHalIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___SnoozeAlarmHalIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SnoozeAlarmHalIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SnoozeAlarmHalIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SnoozeAlarmHalIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___SnoozeAlarmHalIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SnoozeAlarmHalIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692BC26C(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___SnoozeAlarmHalIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for SnoozeAlarmHalIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id SnoozeAlarmHalIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SnoozeAlarmHalIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SnoozeAlarmHalIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SnoozeAlarmHalIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_2692BC490(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692BC4C8(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_2692BC510()
{
  result = qword_2803033B8;
  if (!qword_2803033B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803033B8);
  }

  return result;
}

char *CreateAlarmIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

uint64_t sub_2692BC65C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 time];
  if (v3)
  {
    v4 = v3;
    sub_2692C7280();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2692C7310();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_2692BC700(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_2692BD7A8(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_2692C7310();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2692C7270();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setTime_];
}

void sub_2692BC82C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 label];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2692C7830();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2692BC894(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_2692C7820();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setLabel_];
}

void sub_2692BC904(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 repeatSchedule];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for AlarmRepeatSchedule();
    v5 = sub_2692C7930();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_2692BC974(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for AlarmRepeatSchedule();
    v3 = sub_2692C7910();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setRepeatSchedule_];
}

id CreateAlarmIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CreateAlarmIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CreateAlarmIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CreateAlarmIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CreateAlarmIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2692C7820();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id CreateAlarmIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2692C7820();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for CreateAlarmIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id CreateAlarmIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id CreateAlarmIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for CreateAlarmIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

uint64_t sub_2692BCFF8()
{
  v1 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *CreateAlarmIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id CreateAlarmIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CreateAlarmIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___CreateAlarmIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CreateAlarmIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CreateAlarmIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CreateAlarmIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___CreateAlarmIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CreateAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CreateAlarmIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id CreateAlarmIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___CreateAlarmIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CreateAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692BD420(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___CreateAlarmIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for CreateAlarmIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id CreateAlarmIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id CreateAlarmIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___CreateAlarmIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for CreateAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_2692BD644(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692BD6A4()
{
  result = qword_2803033C8;
  if (!qword_2803033C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803033C8);
  }

  return result;
}

uint64_t sub_2692BD7A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *ChangeAlarmStatusIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ChangeAlarmStatusIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ChangeAlarmStatusIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChangeAlarmStatusIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ChangeAlarmStatusIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ChangeAlarmStatusIntent.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ChangeAlarmStatusIntent();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id ChangeAlarmStatusIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2692C7820();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id ChangeAlarmStatusIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2692C7820();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ChangeAlarmStatusIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id ChangeAlarmStatusIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id ChangeAlarmStatusIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for ChangeAlarmStatusIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

void sub_2692BDEF4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for SiriAlarm();
    v6 = sub_2692C7930();
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

void sub_2692BDF60(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*a1)
  {
    type metadata accessor for SiriAlarm();
    v7 = sub_2692C7910();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_2692BE028()
{
  v1 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *ChangeAlarmStatusIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ChangeAlarmStatusIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___ChangeAlarmStatusIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ChangeAlarmStatusIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ChangeAlarmStatusIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___ChangeAlarmStatusIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ChangeAlarmStatusIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ChangeAlarmStatusIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id ChangeAlarmStatusIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___ChangeAlarmStatusIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ChangeAlarmStatusIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692BE3D8(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___ChangeAlarmStatusIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ChangeAlarmStatusIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id ChangeAlarmStatusIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id ChangeAlarmStatusIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ChangeAlarmStatusIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ChangeAlarmStatusIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_2692BE618@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2692BE95C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_2692BE64C(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id ChangeAlarmStatusAlarmsResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ChangeAlarmStatusAlarmsResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2692BE900(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2692BE95C(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2692BE998()
{
  result = qword_2803033D8;
  if (!qword_2803033D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803033D8);
  }

  return result;
}

unint64_t sub_2692BE9F0()
{
  result = qword_2803033E0;
  if (!qword_2803033E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803033E0);
  }

  return result;
}

char *UpdateAlarmIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

uint64_t sub_2692BEBC8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 proposedTime];
  if (v3)
  {
    v4 = v3;
    sub_2692C7280();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2692C7310();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_2692BEC6C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_2692BD7A8(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_2692C7310();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2692C7270();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setProposedTime_];
}

void sub_2692BED98(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 proposedLabel];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2692C7830();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2692BEE00(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_2692C7820();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setProposedLabel_];
}

void sub_2692BEE70(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 proposedRecurrence];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for AlarmRepeatSchedule();
    v5 = sub_2692C7930();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_2692BEEE0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for AlarmRepeatSchedule();
    v3 = sub_2692C7910();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setProposedRecurrence_];
}

id UpdateAlarmIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdateAlarmIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id UpdateAlarmIntent.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for UpdateAlarmIntent();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id UpdateAlarmIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2692C7820();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id UpdateAlarmIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2692C7820();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for UpdateAlarmIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id UpdateAlarmIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id UpdateAlarmIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for UpdateAlarmIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

uint64_t sub_2692BF564()
{
  v1 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *UpdateAlarmIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id UpdateAlarmIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UpdateAlarmIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___UpdateAlarmIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UpdateAlarmIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id UpdateAlarmIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id UpdateAlarmIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___UpdateAlarmIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UpdateAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id UpdateAlarmIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id UpdateAlarmIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___UpdateAlarmIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UpdateAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692BF98C(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___UpdateAlarmIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for UpdateAlarmIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id UpdateAlarmIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id UpdateAlarmIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___UpdateAlarmIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for UpdateAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t UpdateAlarmAlarmUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2692BFBC4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 4;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

id UpdateAlarmAlarmResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id UpdateAlarmAlarmResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for UpdateAlarmAlarmResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2692BFE4C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692BFED0()
{
  result = qword_2803033F0;
  if (!qword_2803033F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803033F0);
  }

  return result;
}

unint64_t sub_2692BFF28()
{
  result = qword_2803033F8;
  if (!qword_2803033F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803033F8);
  }

  return result;
}

char *DeleteAlarmIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

void sub_2692C00FC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 alarms];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for SiriAlarm();
    v5 = sub_2692C7930();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_2692C016C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for SiriAlarm();
    v3 = sub_2692C7910();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAlarms_];
}

id DeleteAlarmIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeleteAlarmIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeleteAlarmIntent.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DeleteAlarmIntent();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id DeleteAlarmIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2692C7820();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id DeleteAlarmIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2692C7820();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DeleteAlarmIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id DeleteAlarmIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id DeleteAlarmIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for DeleteAlarmIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

uint64_t sub_2692C07F0()
{
  v1 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *DeleteAlarmIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id DeleteAlarmIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeleteAlarmIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___DeleteAlarmIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeleteAlarmIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DeleteAlarmIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DeleteAlarmIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___DeleteAlarmIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeleteAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DeleteAlarmIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id DeleteAlarmIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___DeleteAlarmIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeleteAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692C0C18(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___DeleteAlarmIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for DeleteAlarmIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id DeleteAlarmIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id DeleteAlarmIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DeleteAlarmIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeleteAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t DeleteAlarmAlarmsUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2692C0E50@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 3;
  v4 = __CFADD__(v3, 2);
  v5 = v3 < 0xFFFFFFFFFFFFFFFELL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

id DeleteAlarmAlarmsResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DeleteAlarmAlarmsResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DeleteAlarmAlarmsResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2692C10D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692C115C()
{
  result = qword_280303408;
  if (!qword_280303408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303408);
  }

  return result;
}

unint64_t sub_2692C11B4()
{
  result = qword_280303410;
  if (!qword_280303410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303410);
  }

  return result;
}

char *SearchAlarmIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SearchAlarmIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchAlarmIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SearchAlarmIntent.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for SearchAlarmIntent();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id SearchAlarmIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2692C7820();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SearchAlarmIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2692C7820();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SearchAlarmIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id SearchAlarmIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id SearchAlarmIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for SearchAlarmIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

uint64_t sub_2692C194C()
{
  v1 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *SearchAlarmIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SearchAlarmIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchAlarmIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___SearchAlarmIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchAlarmIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SearchAlarmIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SearchAlarmIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___SearchAlarmIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SearchAlarmIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SearchAlarmIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___SearchAlarmIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692C1D74(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___SearchAlarmIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for SearchAlarmIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id SearchAlarmIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SearchAlarmIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SearchAlarmIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t SearchAlarmAlarmsUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

id SearchAlarmAlarmsResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SearchAlarmAlarmsResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SearchAlarmAlarmsResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2692C2214(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692C2298()
{
  result = qword_280303420;
  if (!qword_280303420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303420);
  }

  return result;
}

unint64_t sub_2692C22F0()
{
  result = qword_280303428;
  if (!qword_280303428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303428);
  }

  return result;
}

unint64_t sub_2692C2410@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2692C27A0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_2692C2444(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id sub_2692C24D0(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id AlarmPeriodResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AlarmPeriodResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AlarmPeriodResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id AlarmPeriodResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AlarmPeriodResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692C27A0(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2692C27D8()
{
  result = qword_280303430;
  if (!qword_280303430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303430);
  }

  return result;
}

unint64_t ChangeAlarmStatusOperation.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_2692C2890@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id ChangeAlarmStatusOperationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ChangeAlarmStatusOperationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ChangeAlarmStatusOperationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id ChangeAlarmStatusOperationResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChangeAlarmStatusOperationResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2692C2B98()
{
  result = qword_280303438;
  if (!qword_280303438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303438);
  }

  return result;
}

unint64_t UpdateAlarmOperation.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id UpdateAlarmOperationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id UpdateAlarmOperationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for UpdateAlarmOperationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id UpdateAlarmOperationResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdateAlarmOperationResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2692C2F3C()
{
  result = qword_280303440;
  if (!qword_280303440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303440);
  }

  return result;
}

id AlarmSearchTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AlarmSearchTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AlarmSearchTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id AlarmSearchTypeResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AlarmSearchTypeResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692C32EC()
{
  result = qword_280303448;
  if (!qword_280303448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303448);
  }

  return result;
}

id RepeatScheduleResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id RepeatScheduleResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for RepeatScheduleResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id RepeatScheduleResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RepeatScheduleResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692C369C()
{
  result = qword_280303450;
  if (!qword_280303450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303450);
  }

  return result;
}

unint64_t sub_2692C3760@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2692C3A58(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id AlarmReferenceTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AlarmReferenceTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AlarmReferenceTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id AlarmReferenceTypeResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AlarmReferenceTypeResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692C3A58(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2692C3A90()
{
  result = qword_280303458;
  if (!qword_280303458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303458);
  }

  return result;
}

unint64_t sub_2692C3B54@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2692C3E4C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id AlarmSearchStatusResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AlarmSearchStatusResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AlarmSearchStatusResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id AlarmSearchStatusResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AlarmSearchStatusResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692C3E4C(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2692C3E84()
{
  result = qword_280303460;
  if (!qword_280303460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303460);
  }

  return result;
}

id CreateAlarmSuccessCodeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id CreateAlarmSuccessCodeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for CreateAlarmSuccessCodeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id CreateAlarmSuccessCodeResolutionResult.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CreateAlarmSuccessCodeResolutionResult();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692C4234()
{
  result = qword_280303468;
  if (!qword_280303468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303468);
  }

  return result;
}

id sub_2692C42D8(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SiriAlarmResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_2692C433C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2692C4434();

    sub_2692C7C50();
  }

  else
  {

    sub_2692C7D70();
    sub_2692C4434();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2692C4434();
  v2 = sub_2692C7910();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___SiriAlarmResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_2692C4434()
{
  result = qword_280303470;
  if (!qword_280303470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280303470);
  }

  return result;
}

id sub_2692C4480(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SiriAlarmResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

uint64_t sub_2692C44E4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dateTime];
  if (v3)
  {
    v4 = v3;
    sub_2692C7280();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2692C7310();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_2692C4588(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_2692BD7A8(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_2692C7310();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2692C7270();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDateTime_];
}

id SiriAlarm.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2692C7820();

  if (a6)
  {
    v10 = sub_2692C7820();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id SiriAlarm.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2692C7820();

  if (a6)
  {
    v10 = sub_2692C7820();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for SiriAlarm();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id SiriAlarm.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SiriAlarm.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SiriAlarm();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SiriAlarmResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SiriAlarmResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SiriAlarmResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2692C4EB4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2692C4F7C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 bedtime];
  if (v3)
  {
    v4 = v3;
    sub_2692C7280();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2692C7310();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_2692C5020(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_2692BD7A8(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_2692C7310();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2692C7270();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setBedtime_];
}

id SleepAlarmAttribute.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2692C7820();

  if (a6)
  {
    v10 = sub_2692C7820();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id SleepAlarmAttribute.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2692C7820();

  if (a6)
  {
    v10 = sub_2692C7820();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for SleepAlarmAttribute();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id SleepAlarmAttribute.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SleepAlarmAttribute.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SleepAlarmAttribute();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692C5504(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SleepAlarmAttributeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_2692C55B8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2692C4434();

    sub_2692C7C50();
  }

  else
  {

    sub_2692C7D70();
    sub_2692C4434();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2692C4434();
  v2 = sub_2692C7910();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___SleepAlarmAttributeResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_2692C571C(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SleepAlarmAttributeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id SleepAlarmAttributeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SleepAlarmAttributeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SleepAlarmAttributeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2692C5B0C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id AlarmSearch.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2692C7820();

  if (a6)
  {
    v10 = sub_2692C7820();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

void sub_2692C5C84(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_2692BD7A8(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_2692C7310();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_2692C7270();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setTime_];
}

id AlarmSearch.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2692C7820();

  if (a6)
  {
    v10 = sub_2692C7820();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for AlarmSearch();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id AlarmSearch.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AlarmSearch.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AlarmSearch();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692C6094(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AlarmSearchResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_2692C6148(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2692C4434();

    sub_2692C7C50();
  }

  else
  {

    sub_2692C7D70();
    sub_2692C4434();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2692C4434();
  v2 = sub_2692C7910();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___AlarmSearchResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_2692C62AC(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AlarmSearchResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id AlarmSearchResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AlarmSearchResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AlarmSearchResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2692C669C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id AlarmRepeatSchedule.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2692C7820();

  if (a6)
  {
    v10 = sub_2692C7820();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id AlarmRepeatSchedule.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2692C7820();

  if (a6)
  {
    v10 = sub_2692C7820();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for AlarmRepeatSchedule();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id AlarmRepeatSchedule.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AlarmRepeatSchedule.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AlarmRepeatSchedule();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692C6B1C(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AlarmRepeatScheduleResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_2692C6BD0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2692C4434();

    sub_2692C7C50();
  }

  else
  {

    sub_2692C7D70();
    sub_2692C4434();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2692C4434();
  v2 = sub_2692C7910();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___AlarmRepeatScheduleResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_2692C6D34(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AlarmRepeatScheduleResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id AlarmRepeatScheduleResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AlarmRepeatScheduleResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AlarmRepeatScheduleResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2692C7124(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}