uint64_t assignWithCopy for TTRIReminderDetailInCalendarEditingOptions(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for TTRIReminderDetailInCalendarEditingOptions(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIReminderDetailInCalendarEditingOptions(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for TTRIReminderDetailInCalendarEditingOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_21D8335E8(id result, char a2)
{
  if ((a2 & 0xC0) == 0x40)
  {
    return result;
  }

  return result;
}

uint64_t assignWithCopy for TTRIReminderDetailStyle(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D8335E8(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_21D257D78(v5, v6);
  return a1;
}

uint64_t assignWithTake for TTRIReminderDetailStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_21D257D78(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIReminderDetailStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 9))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRIReminderDetailStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_21D833748(uint64_t a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21D833774(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -64;
  }

  return result;
}

uint64_t dispatch thunk of TTRIReminderDetailModuleInterface.commitEditing(dismissalState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 120) + **(a4 + 120));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D0F00D0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTRIReminderDetailModuleInterface.cancelEditing(dismissalState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 128) + **(a4 + 128));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D1B795C;

  return v11(a1, a2, a3, a4);
}

void sub_21D833C14(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  sub_21D0DB414(a1, v10);
  if (v11)
  {
    sub_21D83405C();
    if (swift_dynamicCast())
    {

      *a5 = a2;
      *(a5 + 8) = a3;
      *(a5 + 16) = 0;
      *a4 = 1;
    }
  }

  else
  {
    sub_21D1A8418(v10);
  }
}

id _s15RemindersUICore41TTRInlineButtonAttachmentTextViewDelegatePAAE35ttrAccessibilityAttributedLabelWith_020replacementStringForD0So012NSAttributedO0CAG_SStF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v24 = 0;
  v25 = 0;
  v26 = 1;
  v5 = *MEMORY[0x277D74060];
  v6 = v4;
  v7 = [v6 string];
  v8 = sub_21DBFA16C();
  v10 = v9;

  v11 = MEMORY[0x223D42B30](v8, v10);

  v12 = swift_allocObject();
  *(v12 + 16) = &v24;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21D834054;
  *(v13 + 24) = v12;
  aBlock[4] = sub_21D24B3B4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1A6068;
  aBlock[3] = &block_descriptor_95;
  v14 = _Block_copy(aBlock);

  [v6 enumerateAttribute:v5 inRange:0 options:v11 usingBlock:{0, v14}];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    swift_once();
LABEL_7:
    v20 = qword_280D177B0;
    v21 = sub_21DBFA7AC();
    [v6 addAttribute:v20 value:v21 range:{isEscapingClosureAtFileLocation, a3}];

    return v6;
  }

  if (v26 != 1)
  {
    isEscapingClosureAtFileLocation = v24;
    v16 = v25;
    v17 = [v6 string];
    if (!v17)
    {
      sub_21DBFA16C();
      v17 = sub_21DBFA12C();
    }

    v18 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

    v6 = v18;
    v19 = sub_21DBFA12C();
    [v6 replaceCharactersInRange:isEscapingClosureAtFileLocation withString:{v16, v19}];

    a3 = sub_21DBFA28C();
    if (qword_280D177A8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  return v6;
}

unint64_t sub_21D83405C()
{
  result = qword_27CE626D8;
  if (!qword_27CE626D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE626D8);
  }

  return result;
}

NSLayoutConstraint __swiftcall NSLayoutConstraint.withPriority(_:)(__C::UILayoutPriority a1)
{
  [v1 setPriority_];

  return v3;
}

NSLayoutConstraint __swiftcall NSLayoutConstraint.withIdentifier(_:)(Swift::String a1)
{
  v1 = sub_21DBFA12C();
  [v3 setIdentifier_];

  return v3;
}

NSLayoutConstraint __swiftcall NSLayoutConstraint.store(in:)(NSLayoutConstraint_optional *in)
{
  in->value.super.isa = v1;
  v3 = v1;

  return v3;
}

uint64_t TTRReminderLocationPickerVehicleItemProvider.__allocating_init(store:backgroundQueue:ignoresSeachText:)(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_allocObject();
  *(result + 32) = 2;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 33) = a3;
  return result;
}

uint64_t TTRReminderLocationPickerVehicleItemProvider.init(store:backgroundQueue:ignoresSeachText:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 32) = 2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 33) = a3;
  return v3;
}

uint64_t TTRReminderLocationPickerVehicleItemProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TTRReminderLocationPickerVehicleItemProvider.items(matching:location:)(uint64_t a1, unint64_t a2)
{
  if ((*(v2 + 33) & 1) == 0)
  {
    v3 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v3 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      goto LABEL_7;
    }
  }

  if (*(v2 + 32) == 2)
  {

    sub_21DBF82DC();

    sub_21D0CE468();
    v4 = sub_21DBFB12C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE626E0, "F7\n");
    v5 = sub_21DBF820C();

    return v5;
  }

  else
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE644A0, &qword_21DC1E0F0);
    swift_allocObject();
    return sub_21DBF824C();
  }
}

id sub_21D8343BC@<X0>(_BYTE *a1@<X8>)
{
  result = [*(v1 + 16) everConnectedToCar];
  *a1 = result;
  return result;
}

unsigned __int8 *sub_21D8343F8@<X0>(unsigned __int8 *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  *(v2 + 32) = v3;
  if (v3)
  {
    v4 = &unk_282EA7B58;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  *a2 = v4;
  return result;
}

uint64_t sub_21D834494()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE626E8);
  v1 = __swift_project_value_buffer(v0, qword_27CE626E8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D834568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRListType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double TTRUndoNavigationRequest.reminderIDs.getter()
{
  type metadata accessor for TTRUndoNavigationRequest(0);

  sub_21DBF8E0C();
  return result;
}

uint64_t type metadata accessor for TTRUndoNavigationRequest(uint64_t a1)
{
  result = qword_27CE62700;
  if (!qword_27CE62700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTRUndoNavigationRequest.navigationSpecifier.getter@<X0>(char *a1@<X8>)
{
  v3 = v2;
  v5 = sub_21DBF667C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for TTRListType(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for TTRUndoNavigationRequest(0);
  v13 = sub_21D198698(*(v3 + *(v12 + 20)));
  sub_21D834568(v3, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {

      v29 = sub_21DBF66FC();
      (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
      v30 = sub_21DBF6C1C();
      return (*(*(v30 - 8) + 8))(v11, v30);
    }

    else
    {

      sub_21D8375BC(v11, type metadata accessor for TTRListType);
      v20 = sub_21DBF66FC();
      return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v22 = *v11;
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0, &qword_21DC210F0) + 48);
      *a1 = v22;
      *&a1[v23] = v13;
      v24 = *MEMORY[0x277D45148];
      v25 = sub_21DBF668C();
      (*(*(v25 - 8) + 104))(&a1[v23], v24, v25);
      v19 = MEMORY[0x277D451F8];
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v15 = *v11;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0, &qword_21DC210F0) + 48);
      *a1 = v15;
      *&a1[v16] = v13;
      v17 = *MEMORY[0x277D45148];
      v18 = sub_21DBF668C();
      (*(*(v18 - 8) + 104))(&a1[v16], v17, v18);
      v19 = MEMORY[0x277D451D8];
LABEL_8:
      v26 = *v19;
      v27 = sub_21DBF66FC();
      v28 = *(v27 - 8);
      (*(v28 + 104))(a1, v26, v27);
      return (*(v28 + 56))(a1, 0, 1, v27);
    }

    v33 = *v11;
    *v8 = v13;
    (*(v6 + 104))(v8, *MEMORY[0x277D45130], v5);
    REMNavigationSpecifier.init(predefinedSmartListType:pathSpecifier:)(&v33, v8, a1);
    v31 = sub_21DBF66FC();
    return (*(*(v31 - 8) + 56))(a1, 0, 1, v31);
  }
}

unint64_t TTRUndoNavigationRequest.description.getter()
{
  sub_21DBFBEEC();

  v0 = TTRListType.description.getter();
  MEMORY[0x223D42AA0](v0);

  MEMORY[0x223D42AA0](0x646E696D6572202CLL, 0xEF203A7344497265);
  type metadata accessor for TTRUndoNavigationRequest(0);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  sub_21D0D65DC(&qword_280D17870, &qword_280D17880, 0x277D44700, MEMORY[0x277D85378]);
  v1 = sub_21DBFAABC();
  MEMORY[0x223D42AA0](v1);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return 0xD000000000000023;
}

void (*TTRUndoNavigationPresenterCapability.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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

uint64_t TTRUndoNavigationPresenterCapability.__allocating_init(undoManager:)(void *a1)
{
  v2 = swift_allocObject();
  TTRUndoNavigationPresenterCapability.init(undoManager:)(a1);
  return v2;
}

uint64_t sub_21D834CE0(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (!*(v1 + 56))
  {
    if (qword_27CE56D18 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE626E8);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAE9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "TTRUndoNavigationPresenterCapability: prepare for batch processing", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    *(v2 + 56) = MEMORY[0x277D84F90];

    v8._object = 0x800000021DC6D570;
    v8._countAndFlagsBits = 0xD00000000000001CLL;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v8);
  }

  swift_beginAccess();
  if (*(v2 + 56))
  {
    sub_21D836704(a1, v18);
    v9 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 56) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_21D214CE8(0, *(v9 + 2) + 1, 1, v9);
      *(v2 + 56) = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_21D214CE8((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[64 * v12];
    v14 = v18[0];
    v15 = v18[1];
    v16 = v18[3];
    *(v13 + 4) = v18[2];
    *(v13 + 5) = v16;
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    *(v2 + 56) = v9;
  }

  return swift_endAccess();
}

void sub_21D834ED4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v74 - v3;
  v5 = type metadata accessor for TTRListType(0);
  v79 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v75 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = v74 - v8;
  v74[1] = v9;
  MEMORY[0x28223BE20](v10);
  v82 = v74 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AD0, &unk_21DC0CD10);
  v83 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v74[0] = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = v74 - v14;
  MEMORY[0x28223BE20](v15);
  v84 = v74 - v16;
  MEMORY[0x28223BE20](v17);
  v81 = v74 - v18;
  MEMORY[0x28223BE20](v19);
  v86 = v74 - v20;
  if (qword_27CE56D18 != -1)
  {
    swift_once();
  }

  v21 = sub_21DBF84BC();
  v77 = __swift_project_value_buffer(v21, qword_27CE626E8);
  v22 = sub_21DBF84AC();
  v23 = sub_21DBFAE9C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_21D0C9000, v22, v23, "TTRUndoNavigationPresenterCapability: perform batch processing", v24, 2u);
    MEMORY[0x223D46520](v24, -1, -1);
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = a1 + 32;
    v27 = (v79 + 56);
    v28 = (v79 + 48);
    v29 = MEMORY[0x277D84F90];
    v80 = v5;
    while (1)
    {
      sub_21D836704(v26, &v89);
      sub_21D0D3954(&v89 + 8, v88, &qword_27CE5BDD0, &qword_21DC14DC0);
      if (v88[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BDD8, &qword_21DC14DC8);
        v30 = swift_dynamicCast();
        (*v27)(v4, v30 ^ 1u, 1, v5);
        if ((*v28)(v4, 1, v5) != 1)
        {
          v31 = v82;
          sub_21D5FBFB8(v4, v82);
          v32 = v81;
          v33 = (v81 + *(v87 + 48));
          sub_21D5FBFB8(v31, v81);
          v34 = v90;
          *v33 = v89;
          v33[1] = v34;
          v35 = v92;
          v33[2] = v91;
          v33[3] = v35;
          sub_21D836760(v32, v86);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_21D212C2C(0, v29[2] + 1, 1, v29);
          }

          v37 = v29[2];
          v36 = v29[3];
          if (v37 >= v36 >> 1)
          {
            v29 = sub_21D212C2C((v36 > 1), v37 + 1, 1, v29);
          }

          v5 = v80;
          v29[2] = v37 + 1;
          sub_21D836760(v86, v29 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v37);
          goto LABEL_9;
        }
      }

      else
      {
        sub_21D0CF7E0(v88, &qword_27CE5BDD0, &qword_21DC14DC0);
        (*v27)(v4, 1, 1, v5);
      }

      sub_21D3DDF7C(&v89);
      sub_21D0CF7E0(v4, &qword_27CE650E0, &unk_21DC1BD10);
LABEL_9:
      v26 += 64;
      if (!--v25)
      {
        goto LABEL_18;
      }
    }
  }

  v29 = MEMORY[0x277D84F90];
LABEL_18:
  v38 = v29[2];
  if (v38)
  {
    v40 = v83;
    v39 = v84;
    v41 = v29 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    sub_21D0D3954(v41, v84, &qword_27CE59AD0, &unk_21DC0CD10);
    v42 = *(v87 + 48);
    v43 = v78;
    sub_21D5FBFB8(v39, v78);
    sub_21D3DDF7C(v39 + v42);
    if (v29[2] < v38)
    {
      __break(1u);
    }

    else
    {
      sub_21DBF8E0C();
      v44 = 1;
      while (v38 != v44)
      {
        v45 = v85;
        sub_21D0D3954(v41 + *(v40 + 72) * v44++, v85, &qword_27CE59AD0, &unk_21DC0CD10);
        v46 = _s15RemindersUICore11TTRListTypeO2eeoiySbAC_ACtFZ_0(v45, v43);
        sub_21D0CF7E0(v45, &qword_27CE59AD0, &unk_21DC0CD10);
        if ((v46 & 1) == 0)
        {
          swift_bridgeObjectRelease_n();
          v47 = sub_21DBF84AC();
          v48 = sub_21DBFAE9C();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = 0;
            _os_log_impl(&dword_21D0C9000, v47, v48, "TTRUndoNavigationPresenterCapability: multiple list types, skip navigation", v49, 2u);
            MEMORY[0x223D46520](v49, -1, -1);
          }

          sub_21D8375BC(v43, type metadata accessor for TTRListType);
          return;
        }
      }

      v50 = v29[2];
      if (v50)
      {
        v88[0] = MEMORY[0x277D84F90];
        sub_21D18EE64(0, v50, 0);
        v51 = v88[0];
        v52 = *(v40 + 72);
        v53 = v74[0];
        do
        {
          v54 = v84;
          sub_21D0D3954(v41, v84, &qword_27CE59AD0, &unk_21DC0CD10);
          sub_21D836760(v54, v53);
          v55 = (v53 + *(v87 + 48));
          v56 = v55[1];
          v89 = *v55;
          v90 = v56;
          v57 = v55[3];
          v91 = v55[2];
          v92 = v57;
          sub_21D8375BC(v53, type metadata accessor for TTRListType);
          v88[0] = v51;
          v59 = *(v51 + 16);
          v58 = *(v51 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_21D18EE64((v58 > 1), v59 + 1, 1);
            v53 = v74[0];
            v51 = v88[0];
          }

          *(v51 + 16) = v59 + 1;
          v60 = (v51 + (v59 << 6));
          v61 = v89;
          v62 = v90;
          v63 = v92;
          v60[4] = v91;
          v60[5] = v63;
          v60[2] = v61;
          v60[3] = v62;
          v41 += v52;
          --v50;
        }

        while (v50);

        v43 = v78;
      }

      else
      {

        v51 = MEMORY[0x277D84F90];
      }

      sub_21DBF8E0C();
      v64 = sub_21DBF84AC();
      v65 = sub_21DBFAEAC();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 134217984;
        *(v66 + 4) = *(v51 + 16);

        _os_log_impl(&dword_21D0C9000, v64, v65, "TTRUndoNavigationPresenterCapability: collecting reminderIDs from notifications {count: %ld}", v66, 0xCu);
        MEMORY[0x223D46520](v66, -1, -1);
      }

      else
      {
      }

      v67 = sub_21D8367D0(v51);

      *&v89 = v67;
      v68 = swift_allocObject();
      v69 = v76;
      swift_weakInit();
      v70 = v75;
      sub_21D834568(v43, v75);
      v71 = (*(v79 + 80) + 24) & ~*(v79 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = v68;
      sub_21D5FBFB8(v70, v72 + v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62710, "*6\n");
      sub_21D0D0F1C(&qword_27CE62718, &qword_27CE62710, "*6\n", MEMORY[0x277CBCD90]);
      v73 = sub_21DBF93CC();

      sub_21D8375BC(v43, type metadata accessor for TTRListType);
      *(v69 + 48) = v73;
    }
  }

  else
  {
  }
}

double sub_21D8358F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRUndoNavigationRequest(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRListType(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (qword_27CE56D18 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_27CE626E8);
    sub_21D834568(a3, v10);
    sub_21DBF8E0C();
    v16 = sub_21DBF84AC();
    v17 = sub_21DBFAEDC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v32 = v5;
      v19 = v18;
      v20 = swift_slowAlloc();
      v34[0] = v20;
      *v19 = 136315394;
      v21 = TTRListType.description.getter();
      v33 = a3;
      v23 = v22;
      sub_21D8375BC(v10, type metadata accessor for TTRListType);
      v24 = sub_21D0CDFB4(v21, v23, v34);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      sub_21D0D65DC(&qword_280D17870, &qword_280D17880, 0x277D44700, MEMORY[0x277D85378]);
      v25 = sub_21DBFAABC();
      v27 = sub_21D0CDFB4(v25, v26, v34);

      *(v19 + 14) = v27;
      a3 = v33;
      _os_log_impl(&dword_21D0C9000, v16, v17, "TTRUndoNavigationPresenterCapability: propose navigation {listType: %s, reminderIDs: %s}", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v20, -1, -1);
      v28 = v19;
      v5 = v32;
      MEMORY[0x223D46520](v28, -1, -1);
    }

    else
    {

      sub_21D8375BC(v10, type metadata accessor for TTRListType);
    }

    sub_21D834568(a3, v7);
    *&v7[*(v5 + 20)] = v11;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v14 + 24);
      ObjectType = swift_getObjectType();
      v31 = *(v29 + 8);
      sub_21DBF8E0C();
      v31(v14, v7, ObjectType, v29);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_21DBF8E0C();
    }

    sub_21D8375BC(v7, type metadata accessor for TTRUndoNavigationRequest);
  }

  return result;
}

void sub_21D835CBC(void **a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  sub_21DBF8E0C();
  v5 = sub_21DBF8E0C();
  v6 = sub_21D99EEB0(v5, v4);

  *a3 = v6;
}

uint64_t TTRUndoNavigationPresenterCapability.deinit()
{
  sub_21D157444(v0 + 16);

  return v0;
}

uint64_t TTRUndoNavigationPresenterCapability.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

double TTRUndoNavigationPresenterCapability.deferredActionPerform(_:reason:)()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  if (v2)
  {
    *(v0 + 56) = 0;
    sub_21D834ED4(v2);
  }

  return result;
}

double sub_21D835E00()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  if (v2)
  {
    *(v0 + 56) = 0;
    sub_21D834ED4(v2);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRUndoNavigationRequest(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = type metadata accessor for TTRListType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        v14 = *a2;
        *a1 = *a2;
        a1[8] = a2[8];
        v15 = v14;
        swift_storeEnumTagMultiPayload();
        goto LABEL_15;
      }

      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_6;
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v12 = sub_21DBF6C1C();
          (*(*(v12 - 8) + 16))(a1, a2, v12);
          swift_storeEnumTagMultiPayload();
          goto LABEL_15;
        case 4:
          v13 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v13;
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          goto LABEL_15;
        case 5:
LABEL_6:
          v9 = *a2;
          *a1 = *a2;
          v10 = v9;
          swift_storeEnumTagMultiPayload();
LABEL_15:
          *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
          sub_21DBF8E0C();
          return a1;
      }
    }

    memcpy(a1, a2, *(*(v7 - 8) + 64));
    goto LABEL_15;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = (v11 + ((v5 + 16) & ~v5));

  return a1;
}

double destroy for TTRUndoNavigationRequest(id *a1)
{
  type metadata accessor for TTRListType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      v3 = sub_21DBF6C1C();
      (*(*(v3 - 8) + 8))(a1, v3);
      break;
    case 4:

      break;
    case 5:
LABEL_7:

      break;
  }

LABEL_10:

  return result;
}

void *initializeWithCopy for TTRUndoNavigationRequest(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRListType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v13 = v12;
      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 1)
    {
      goto LABEL_5;
    }

LABEL_12:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v10 = sub_21DBF6C1C();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    swift_storeEnumTagMultiPayload();
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v11 = a2[1];
    *a1 = *a2;
    a1[1] = v11;
    sub_21DBF8E0C();
    swift_storeEnumTagMultiPayload();
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_12;
  }

LABEL_5:
  v8 = *a2;
  *a1 = *a2;
  v9 = v8;
  swift_storeEnumTagMultiPayload();
LABEL_13:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_21DBF8E0C();
  return a1;
}

char *assignWithCopy for TTRUndoNavigationRequest(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D8375BC(a1, type metadata accessor for TTRListType);
    v6 = type metadata accessor for TTRListType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        v11 = *a2;
        *a1 = *a2;
        a1[8] = a2[8];
        v12 = v11;
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      if (EnumCaseMultiPayload == 1)
      {
LABEL_6:
        v8 = *a2;
        *a1 = *a2;
        v9 = v8;
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v10 = sub_21DBF6C1C();
          (*(*(v10 - 8) + 16))(a1, a2, v10);
          swift_storeEnumTagMultiPayload();
          goto LABEL_14;
        case 4:
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          goto LABEL_14;
        case 5:
          goto LABEL_6;
      }
    }

    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_14:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  sub_21DBF8E0C();

  return a1;
}

char *initializeWithTake for TTRUndoNavigationRequest(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRListType(0);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v7 = sub_21DBF6C1C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *assignWithTake for TTRUndoNavigationRequest(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D8375BC(a1, type metadata accessor for TTRListType);
    v6 = type metadata accessor for TTRListType(0);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v7 = sub_21DBF6C1C();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

uint64_t sub_21D836630(uint64_t a1)
{
  result = type metadata accessor for TTRListType(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D836760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AD0, &unk_21DC0CD10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_21D8367D0(uint64_t a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62720, "<6\n");
  v2 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v51 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62728, "P6\n");
  v4 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v51 - v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62730, "v6\n");
  v6 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v51 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62738, &qword_21DC2BA18);
  v8 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0, &qword_21DC0E530);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B310, &qword_21DC13250);
  MEMORY[0x28223BE20](v12 - 8);
  v55 = &v51 - v13;
  v59 = sub_21DBFBA3C();
  v54 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v52 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62740, &qword_21DC2BA20);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v53 = &v51 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62748, &qword_21DC2BA28);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - v18;
  v83 = MEMORY[0x277D84FA0];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58FF8, &unk_21DC2BA30);
  sub_21DBF90EC();
  sub_21D0D0F1C(&qword_27CE62750, &qword_27CE62748, &qword_21DC2BA28, MEMORY[0x277CBCE80]);
  v20 = sub_21DBF920C();
  (*(v17 + 8))(v19, v16);
  v71 = *(a1 + 16);
  if (v71)
  {
    v70 = a1 + 32;
    v64 = (v4 + 8);
    v63 = (v6 + 8);
    v60 = (v2 + 8);
    v69 = (v8 + 8);

    v21 = 0;
    v22 = MEMORY[0x277D84F90];
    v51 = v20;
    while (1)
    {
      sub_21D836704(v70 + (v21 << 6), &v83);
      v76 = v20;
      v81 = v22;
      v82 = v20;
      v36 = *(v84 + 16);
      if (v36)
      {
        v37 = v84 + 32;
        v38 = v22;
        do
        {
          sub_21D22BFF0(v37, &v79);
          sub_21D0CEB98(v80, v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A630, qword_21DC41330);
          if (swift_dynamicCast() && (v39 = v77, v39 == sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750)))
          {
            sub_21D0CEB98(&v79, v78);
            sub_21D22C04C(&v79);
            sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
            v40 = swift_dynamicCast();
            if (v40)
            {
              MEMORY[0x223D42D80](v40);
              if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_21DBFA63C();
                v22 = MEMORY[0x277D84F90];
              }

              sub_21DBFA6CC();
              v38 = v81;
            }
          }

          else
          {
            sub_21D22C04C(&v79);
          }

          v37 += 64;
          --v36;
        }

        while (v36);
      }

      else
      {
        v38 = v22;
      }

      if (v38 >> 62)
      {
        if (!sub_21DBFBD7C())
        {
          goto LABEL_19;
        }
      }

      else if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_19:

        v79 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858, &unk_21DC09AA0);
        v41 = v61;
        sub_21DBF90EC();
        sub_21D0D0F1C(&qword_27CE62798, &qword_27CE62720, "<6\n", MEMORY[0x277CBCE80]);
        v42 = v62;
        v28 = sub_21DBF920C();
        (*v60)(v41, v42);
        goto LABEL_5;
      }

      v79 = v85;
      *(swift_allocObject() + 16) = v38;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62758, &unk_21DC2BA40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858, &unk_21DC09AA0);
      sub_21D0D0F1C(&qword_27CE62760, &qword_27CE62758, &unk_21DC2BA40, MEMORY[0x277CBCD90]);
      v75 = v21;
      v23 = v67;
      sub_21DBF927C();

      v79 = v22;
      sub_21D0D0F1C(&qword_27CE62768, &qword_27CE62728, "P6\n", MEMORY[0x277CBCC08]);
      v24 = v65;
      v25 = v68;
      sub_21DBF922C();
      v26 = v23;
      v21 = v75;
      (*v64)(v26, v25);
      sub_21D0D0F1C(&qword_27CE62770, &qword_27CE62730, "v6\n", MEMORY[0x277CBCB78]);
      v27 = v66;
      v28 = sub_21DBF920C();
      (*v63)(v24, v27);
LABEL_5:
      v79 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62710, "*6\n");
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62778, &unk_21DC2BA50);
      v29 = MEMORY[0x277CBCD90];
      sub_21D0D0F1C(&qword_27CE62718, &qword_27CE62710, "*6\n", MEMORY[0x277CBCD90]);
      sub_21D0D0F1C(&qword_27CE62780, &qword_27CE62778, &unk_21DC2BA50, v29);
      v30 = v73;
      sub_21DBF925C();

      sub_21D0D0F1C(&qword_27CE62788, &qword_27CE62738, &qword_21DC2BA18, MEMORY[0x277CBCC08]);
      v31 = v21 + 1;
      v32 = v74;
      v33 = sub_21DBF920C();

      v34 = v32;
      v21 = v31;
      (*v69)(v30, v34);
      sub_21D3DDF7C(&v83);
      v20 = v33;
      v35 = v31 == v71;
      v22 = MEMORY[0x277D84F90];
      if (v35)
      {
        v83 = v33;
        v43 = v52;
        sub_21DBFBA1C();
        v44 = v54;
        v45 = v55;
        (*(v54 + 56))(v55, 1, 1, v59);
        v76 = [objc_opt_self() mainRunLoop];
        v79 = v76;
        v46 = sub_21DBFBA0C();
        v47 = v57;
        (*(*(v46 - 8) + 56))(v57, 1, 1, v46);
        sub_21D0D8CF0(0, &qword_280D17650, 0x277CBEB88);
        sub_21D0D65DC(&qword_280D17660, &qword_280D17650, 0x277CBEB88, MEMORY[0x277CC9E80]);
        v48 = v53;
        sub_21DBF92BC();
        sub_21D0CF7E0(v47, &qword_27CE5A0F0, &qword_21DC0E530);

        sub_21D0CF7E0(v45, &qword_27CE5B310, &qword_21DC13250);
        (*(v44 + 8))(v43, v59);
        sub_21D0D0F1C(&qword_27CE62790, &qword_27CE62740, &qword_21DC2BA20, MEMORY[0x277CBCC48]);
        v49 = v58;
        v20 = sub_21DBF920C();

        (*(v56 + 8))(v48, v49);
        return v20;
      }
    }
  }

  return v20;
}

double sub_21D837548(uint64_t *a1)
{
  v3 = *(type metadata accessor for TTRListType(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_21D8358F0(a1, v4, v5);
}

uint64_t sub_21D8375BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D83761C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE627A0);
  v1 = __swift_project_value_buffer(v0, qword_27CE627A0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double TTRBoardColumnCollectionViewLayoutHelper.itemClusters.getter@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 16);
  sub_21DBF8E0C();
  return result;
}

double TTRBoardColumnCollectionViewLayoutHelper.itemClusters.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 16) = v2;

  return result;
}

uint64_t TTRBoardColumnCollectionViewLayoutHelper.__allocating_init(topLevelItemSpacing:subtaskSpacing:)(double a1, double a2)
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = a1;
  *(result + 32) = a2;
  return result;
}

uint64_t TTRBoardColumnCollectionViewLayoutHelper.init(topLevelItemSpacing:subtaskSpacing:)(double a1, double a2)
{
  result = v2;
  *(v2 + 16) = MEMORY[0x277D84F90];
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

CGSize __swiftcall TTRBoardColumnCollectionViewLayoutHelper.collectionViewContentSize(baseSize:)(CGSize baseSize)
{
  height = baseSize.height;
  width = baseSize.width;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  v6 = 0.0;
  v7 = 0.0;
  if (v5)
  {
    v8 = 0;
    v9 = (v4 + 48);
    while (1)
    {
      v10 = *v9;
      v9 += 3;
      v11 = v10 - 1;
      if (__OFSUB__(v10, 1))
      {
        break;
      }

      v12 = __OFADD__(v8, v11);
      v8 += v11;
      if (v12)
      {
        goto LABEL_11;
      }

      if (!--v5)
      {
        v7 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_7:
    v7 = height - (*(v1 + 24) - *(v1 + 32)) * v7;
    if (v7 < 0.0)
    {
      v7 = 0.0;
    }

    v6 = width;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

void sub_21D837900(char *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  v9[2] = a3;
  sub_21DBF8E0C();
  sub_21D2566E4(0, sub_21D83A3DC, v9, v6);

  v9[4] = *(a2 + 16);
  sub_21DBF8E0C();
  TTRBoardColumnItemClusterCollection.positionInCluster(forItemAt:)(v10);

  v7 = qword_21DC2BB58[v10[0]];
  [a1 frame];
  [a1 setFrame_];
  v8 = OBJC_IVAR____TtC15RemindersUICore34TTRBoardColumnItemLayoutAttributes_backgroundRoundedCorners;
  swift_beginAccess();
  *&a1[v8] = v7;
}

uint64_t TTRBoardColumnCollectionViewLayoutHelper.layoutAttributesForElements(in:baseLayoutAttributesForElementsInRect:)(uint64_t (*a1)(double, double, double, double), CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v7 = a5;
  Width = a4;
  v9 = a3;
  v10 = a2;
  v11 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84FA0];
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = a1(v10, v9, Width, v7);
    v14 = v13 ? v13 : v11;
    v15 = sub_21D837B98(v14, &v25, v5, &v26, a2, a3, a4, a5);
    v17 = v16;
    v18 = v15;

    if ((v17 & 1) == 0 || v18 <= 0.0)
    {
      break;
    }

    v27.origin.x = v10;
    v27.origin.y = v9;
    v27.size.width = Width;
    v27.size.height = v7;
    MinX = CGRectGetMinX(v27);
    v28.origin.x = v10;
    v28.origin.y = v9;
    v28.size.width = Width;
    v28.size.height = v7;
    MaxY = CGRectGetMaxY(v28);
    v29.origin.x = v10;
    v29.origin.y = v9;
    v29.size.width = Width;
    v29.size.height = v7;
    Width = CGRectGetWidth(v29);
    v10 = MinX;
    v9 = MaxY;
    v7 = v18;
  }

  swift_beginAccess();
  return v26;
}

double sub_21D837B98(unint64_t a1, id *a2, uint64_t a3, void *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v129 = a4;
  v128 = a3;
  v144 = a2;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DBF8, &unk_21DC1ABD0);
  MEMORY[0x28223BE20](v160);
  v14 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v125 - v16;
  v18 = sub_21DBF5D5C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v125 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v149 = &v125 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v133 = &v125 - v27;
  MEMORY[0x28223BE20](v28);
  v153 = &v125 - v29;
  MEMORY[0x28223BE20](v30);
  v139 = &v125 - v31;
  MEMORY[0x28223BE20](v32);
  v142 = &v125 - v33;
  v156 = type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID(0);
  v134 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v159 = &v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v132 = &v125 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v125 - v38;
  MEMORY[0x28223BE20](v40);
  v157 = &v125 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v125 - v43;
  if (a1 >> 62)
  {
    goto LABEL_83;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v138 = a1 & 0xC000000000000001;
    swift_beginAccess();
    swift_beginAccess();
    v46 = a1;
    v130 = 0;
    v131 = 0;
    v127 = a1 & 0xFFFFFFFFFFFFFF8;
    v126 = a1 + 32;
    v135 = (v19 + 56);
    v161 = (v19 + 48);
    v148 = (v19 + 32);
    v154 = (v19 + 8);
    v19 = 0;
    v47 = 0.0;
    v137 = a1;
    v145 = v17;
    v150 = v25;
    a1 = v139;
    v158 = v39;
    v152 = v44;
    v136 = i;
    while (1)
    {
      if (v138)
      {
        v48 = MEMORY[0x223D44740](v19, v46);
        v49 = __OFADD__(v19++, 1);
        if (v49)
        {
          break;
        }

        goto LABEL_10;
      }

      if (v19 >= *(v127 + 16))
      {
        goto LABEL_82;
      }

      v48 = *(v126 + 8 * v19);
      v49 = __OFADD__(v19++, 1);
      if (v49)
      {
        break;
      }

LABEL_10:
      v141 = v19;
      v50 = v48;
      v51 = [v48 indexPath];
      v52 = v142;
      sub_21DBF5CAC();

      (*v135)(v52, 0, 1, v18);
      v147 = [v50 representedElementCategory];
      v140 = v50;
      v53 = [v50 representedElementKind];
      if (v53)
      {
        v54 = v53;
        v55 = sub_21DBFA16C();
        v57 = v56;
      }

      else
      {
        v55 = 0;
        v57 = 0;
      }

      sub_21D1B1EE8(v142, v44);
      v58 = v156;
      *&v44[*(v156 + 20)] = v147;
      v59 = &v44[*(v58 + 24)];
      *v59 = v55;
      v59[1] = v57;
      v146 = v57;
      v60 = *v144;
      if (*(*v144 + 2))
      {
        sub_21DBFC7DC();
        sub_21D1B1F58(v44, a1);
        v61 = *v161;
        if ((*v161)(a1, 1, v18) == 1)
        {
          sub_21DBFC7FC();
          sub_21DBF8E0C();
        }

        else
        {
          v62 = a1;
          v63 = v149;
          (*v148)(v149, v62, v18);
          sub_21DBFC7FC();
          sub_21D83A394(&qword_280D17160, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
          sub_21DBF8E0C();
          sub_21DBFA00C();
          (*v154)(v63, v18);
        }

        MEMORY[0x223D44FA0](v147);
        v64 = v146;
        v143 = v55;
        if (v146)
        {
          sub_21DBFC7FC();
          sub_21DBFA27C();
        }

        else
        {
          sub_21DBFC7FC();
        }

        v65 = sub_21DBFC82C();
        v66 = v60 + 56;
        v67 = -1 << v60[32];
        v68 = v65 & ~v67;
        if ((*&v60[((v68 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v68))
        {
          v151 = ~v67;
          v155 = *(v134 + 72);
          v69 = v157;
          do
          {
            v70 = v60;
            sub_21D8396D8(*(v60 + 6) + v155 * v68, v69);
            v71 = v69;
            v72 = *(v160 + 48);
            sub_21D1B1F58(v71, v17);
            sub_21D1B1F58(v152, &v17[v72]);
            if (v61(v17, 1, v18) == 1)
            {
              if (v61(&v17[v72], 1, v18) != 1)
              {
                goto LABEL_23;
              }

              sub_21D0CF7E0(v17, &unk_27CE58E70, &unk_21DC0A930);
            }

            else
            {
              sub_21D1B1F58(v17, v153);
              if (v61(&v17[v72], 1, v18) == 1)
              {
                (*v154)(v153, v18);
LABEL_23:
                sub_21D0CF7E0(v17, &qword_27CE5DBF8, &unk_21DC1ABD0);
                goto LABEL_24;
              }

              v73 = v149;
              (*v148)(v149, &v17[v72], v18);
              sub_21D83A394(&qword_280D17150, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
              v74 = sub_21DBFA10C();
              v75 = *v154;
              (*v154)(v73, v18);
              v75(v153, v18);
              v64 = v146;
              v17 = v145;
              sub_21D0CF7E0(v145, &unk_27CE58E70, &unk_21DC0A930);
              v60 = v70;
              if ((v74 & 1) == 0)
              {
                goto LABEL_24;
              }
            }

            if (*(v157 + *(v156 + 20)) == v147)
            {
              v76 = (v157 + *(v156 + 24));
              v77 = v76[1];
              if (v77)
              {
                if (v64)
                {
                  v78 = *v76 == v143 && v77 == v64;
                  if (v78 || (sub_21DBFC64C() & 1) != 0)
                  {
LABEL_40:

                    sub_21D83973C(v157);
                    v44 = v152;
                    sub_21D83973C(v152);
                    v46 = v137;
                    v25 = v150;
                    a1 = v139;
                    v39 = v158;
                    v79 = v136;
                    goto LABEL_79;
                  }
                }
              }

              else if (!v64)
              {
                goto LABEL_40;
              }
            }

LABEL_24:
            v69 = v157;
            sub_21D83973C(v157);
            v68 = (v68 + 1) & v151;
          }

          while (((*&v66[(v68 >> 3) & 0xFFFFFFFFFFFFFF8] >> v68) & 1) != 0);
        }

        v25 = v150;
        v39 = v158;
        v44 = v152;
      }

      v163 = v140;
      v80 = v140;
      v81 = [v80 representedElementCategory];
      v140 = v80;
      if (!v81)
      {
        v82 = [v80 indexPath];
        v83 = v125;
        sub_21DBF5CAC();

        v84 = v128;
        v85 = *(v128 + 16);
        MEMORY[0x28223BE20](v86);
        *(&v125 - 2) = v83;
        sub_21DBF8E0C();
        v87 = v131;
        v88 = sub_21D2566E4(0, sub_21D2566C8, (&v125 - 4), v85);
        v131 = v87;
        v25 = v150;

        v89 = (*(v84 + 24) - *(v84 + 32)) * v88;
        v164 = *(v84 + 16);
        sub_21DBF8E0C();
        TTRBoardColumnItemClusterCollection.positionInCluster(forItemAt:)(v162);

        if (v47 <= v89)
        {
          v47 = v89;
        }

        v90 = v83;
        v44 = v152;
        (*v154)(v90, v18);
      }

      sub_21D8396D8(v44, v39);
      v91 = v144;
      swift_beginAccess();
      v147 = *v91;
      sub_21DBFC7DC();
      v92 = v133;
      sub_21D1B1F58(v39, v133);
      v93 = *v161;
      if ((*v161)(v92, 1, v18) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v94 = v92;
        v95 = v149;
        (*v148)(v149, v94, v18);
        sub_21DBFC7FC();
        sub_21D83A394(&qword_280D17160, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
        sub_21DBFA00C();
        (*v154)(v95, v18);
      }

      v96 = v156;
      v151 = *&v39[*(v156 + 20)];
      MEMORY[0x223D44FA0]();
      v97 = &v39[*(v96 + 24)];
      v98 = *v97;
      v99 = *(v97 + 1);
      sub_21DBFC7FC();
      if (v99)
      {
        sub_21DBFA27C();
      }

      v100 = v147;
      v101 = sub_21DBFC82C();
      v102 = v100 + 56;
      v103 = -1 << v100[32];
      v104 = v101 & ~v103;
      if ((*&v100[((v104 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v104))
      {
        v146 = v99;
        v143 = v98;
        v155 = ~v103;
        v105 = *(v134 + 72);
        v106 = v159;
        do
        {
          sub_21D8396D8(*(v100 + 6) + v105 * v104, v106);
          v107 = v106;
          v108 = *(v160 + 48);
          sub_21D1B1F58(v107, v14);
          sub_21D1B1F58(v158, &v14[v108]);
          if (v93(v14, 1, v18) == 1)
          {
            if (v93(&v14[v108], 1, v18) != 1)
            {
              goto LABEL_54;
            }

            sub_21D0CF7E0(v14, &unk_27CE58E70, &unk_21DC0A930);
          }

          else
          {
            sub_21D1B1F58(v14, v25);
            if (v93(&v14[v108], 1, v18) == 1)
            {
              (*v154)(v25, v18);
LABEL_54:
              sub_21D0CF7E0(v14, &qword_27CE5DBF8, &unk_21DC1ABD0);
              goto LABEL_55;
            }

            v109 = v149;
            (*v148)(v149, &v14[v108], v18);
            sub_21D83A394(&qword_280D17150, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
            v110 = sub_21DBFA10C();
            v111 = *v154;
            v112 = v109;
            v25 = v150;
            (*v154)(v112, v18);
            v111(v25, v18);
            v100 = v147;
            sub_21D0CF7E0(v14, &unk_27CE58E70, &unk_21DC0A930);
            if ((v110 & 1) == 0)
            {
              goto LABEL_55;
            }
          }

          if (*(v159 + *(v156 + 20)) == v151)
          {
            v113 = (v159 + *(v156 + 24));
            v114 = v113[1];
            if (v114)
            {
              if (v146)
              {
                v115 = *v113 == v143 && v114 == v146;
                if (v115 || (sub_21DBFC64C() & 1) != 0)
                {
LABEL_71:
                  sub_21D83973C(v159);
                  v39 = v158;
                  goto LABEL_73;
                }
              }
            }

            else if (!v146)
            {
              goto LABEL_71;
            }
          }

LABEL_55:
          v106 = v159;
          sub_21D83973C(v159);
          v104 = (v104 + 1) & v155;
        }

        while (((*&v102[(v104 >> 3) & 0xFFFFFFFFFFFFFF8] >> v104) & 1) != 0);
      }

      v116 = v144;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v158;
      v118 = v132;
      sub_21D8396D8(v158, v132);
      v164 = *v116;
      *v116 = 0x8000000000000000;
      v119 = isUniquelyReferenced_nonNull_native;
      v25 = v150;
      sub_21D9AFAA4(v118, v104, v119);
      *v116 = v164;
LABEL_73:
      sub_21D83973C(v39);
      swift_endAccess();
      v120 = v163;
      v17 = v145;
      v44 = v152;
      v79 = v136;
      if (v163)
      {
        v121 = v129;
        swift_beginAccess();
        v122 = v120;
        MEMORY[0x223D42D80]();
        if (*((*v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        swift_endAccess();

        v130 = 1;
        v123 = v122;
        v25 = v150;
      }

      else
      {
        v123 = v140;
      }

      sub_21D83973C(v44);

      v46 = v137;
      a1 = v139;
LABEL_79:
      v19 = v141;
      if (v141 == v79)
      {
        return v47;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    ;
  }

  v130 = 0;
  return 0.0;
}

uint64_t TTRBoardColumnCollectionViewLayoutHelper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_21D838EC4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21DBF5D5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  sub_21D1B1F58(v2, &v12 - v8);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_21DBFC7FC();
    sub_21D83A394(&qword_280D17160, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
    sub_21DBFA00C();
    (*(v4 + 8))(v6, v3);
  }

  v10 = type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID(0);
  MEMORY[0x223D44FA0](*(v2 + *(v10 + 20)));
  if (*(v2 + *(v10 + 24) + 8))
  {
    sub_21DBFC7FC();
    sub_21DBFA27C();
  }

  else
  {
    sub_21DBFC7FC();
  }

  return result;
}

uint64_t sub_21D8390EC()
{
  sub_21DBFC7DC();
  sub_21D838EC4(v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D839130(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21D838EC4(v2);
  return sub_21DBFC82C();
}

uint64_t sub_21D839170(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DBF8, &unk_21DC1ABD0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - v12;
  v15 = *(v14 + 56);
  sub_21D1B1F58(a1, &v26 - v12);
  sub_21D1B1F58(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21D1B1F58(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21D83A394(&qword_280D17150, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
      v17 = sub_21DBFA10C();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_21D0CF7E0(v13, &unk_27CE58E70, &unk_21DC0A930);
      if ((v17 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_21D0CF7E0(v13, &qword_27CE5DBF8, &unk_21DC1ABD0);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_21D0CF7E0(v13, &unk_27CE58E70, &unk_21DC0A930);
LABEL_8:
  v19 = type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID(0);
  if (*(a1 + *(v19 + 20)) == *(a2 + *(v19 + 20)))
  {
    v20 = *(v19 + 24);
    v21 = (a1 + v20);
    v22 = *(a1 + v20 + 8);
    v23 = (a2 + v20);
    v24 = v23[1];
    if (v22)
    {
      if (v24 && (*v21 == *v23 && v22 == v24 || (sub_21DBFC64C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v24)
    {
      return 1;
    }
  }

  return 0;
}

id sub_21D8394C8(void *a1, void (*a2)())
{
  [a1 copy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  type metadata accessor for TTRBoardColumnItemLayoutAttributes();
  if (swift_dynamicCast())
  {
    a2();
    return v9;
  }

  else
  {
    if (qword_27CE56D20 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE627A0);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "TTRBoardColumnCollectionViewLayoutHelper: failed to modify attributes", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    return a1;
  }
}

uint64_t type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID(uint64_t a1)
{
  result = qword_27CE627B8;
  if (!qword_27CE627B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D8396D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D83973C(uint64_t a1)
{
  v2 = type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_21D839798(void *a1, uint64_t a2, void **a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  [a1 copy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  type metadata accessor for TTRBoardColumnItemLayoutAttributes();
  if (swift_dynamicCast())
  {
    [v25 frame];
    [v25 setFrame_];
    v15 = OBJC_IVAR____TtC15RemindersUICore34TTRBoardColumnItemLayoutAttributes_backgroundRoundedCorners;
    swift_beginAccess();
    *&v25[v15] = a2;
    if (a4 == 0.0 || ([v25 frame], v28.origin.x = a5, v28.origin.y = a6, v28.size.width = a7, v28.size.height = a8, CGRectIntersectsRect(v27, v28)))
    {
      v16 = *a3;
      *a3 = v25;
      v17 = v25;

      return v17;
    }

    else
    {
      v23 = *a3;
      *a3 = 0;

      return v25;
    }
  }

  else
  {
    if (qword_27CE56D20 != -1)
    {
      swift_once();
    }

    v19 = sub_21DBF84BC();
    __swift_project_value_buffer(v19, qword_27CE627A0);
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAECC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_21D0C9000, v20, v21, "TTRBoardColumnCollectionViewLayoutHelper: failed to modify attributes", v22, 2u);
      MEMORY[0x223D46520](v22, -1, -1);
    }

    return a1;
  }
}

uint64_t *sub_21D8399E0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF5D5C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
    sub_21DBF8E0C();
  }

  return a1;
}

double sub_21D839B70(uint64_t a1)
{
  v2 = sub_21DBF5D5C();
  v3 = *(v2 - 8);
  if (!(*(v3 + 48))(a1, 1, v2))
  {
    (*(v3 + 8))(a1, v2);
  }

  return result;
}

char *sub_21D839C40(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *(v11 + 1);
  *v10 = *v11;
  *(v10 + 1) = v12;
  sub_21DBF8E0C();
  return a1;
}

char *sub_21D839D84(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  v12 = *(a3 + 24);
  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  *(v13 + 1) = *(v14 + 1);
  sub_21DBF8E0C();

  return a1;
}

char *sub_21D839F44(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[v9] = *&a2[v9];
  return a1;
}

char *sub_21D83A07C(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  v13 = &a1[v12];
  v14 = &a2[v12];
  v16 = *v14;
  v15 = *(v14 + 1);
  *v13 = v16;
  *(v13 + 1) = v15;

  return a1;
}

void sub_21D83A250(uint64_t a1)
{
  sub_21D83A2F4(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D83A2F4(uint64_t a1)
{
  if (!qword_27CE61428)
  {
    sub_21DBF5D5C();
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE61428);
    }
  }
}

uint64_t sub_21D83A394(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void LSApplicationWorkspace.open(universalLink:)(uint64_t a1)
{
  v2 = v1;
  v41[11] = *MEMORY[0x277D85DE8];
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  MEMORY[0x28223BE20](v11);
  v13 = v41 - v12 + 32;
  MEMORY[0x28223BE20](v14);
  v16 = v41 - v15 + 32;
  v17 = sub_21DBF53FC();
  v18 = [v1 URLOverrideForURL_];

  if (v18)
  {
    sub_21DBF546C();

    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
  }

  sub_21D57690C(v13, v16);
  sub_21D3050B8(v16, v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_21DBF53FC();
    (*(v5 + 8))(v10, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = sub_21DBFA16C();
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v21;
  *(inited + 48) = 1;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
  v22 = sub_21DBF9E5C();

  v41[0] = 0;
  v23 = [v2 openURL:v19 withOptions:v22 error:v41];

  if (v23)
  {
    v24 = v41[0];
    sub_21D0CF7E0(v16, &qword_27CE5EA20, &qword_21DC0D4A0);
  }

  else
  {
    v25 = v41[0];
    v26 = sub_21DBF52DC();

    swift_willThrow();
    sub_21D0CF7E0(v16, &qword_27CE5EA20, &qword_21DC0D4A0);
    if (qword_27CE56D28 != -1)
    {
      swift_once();
    }

    v27 = sub_21DBF84BC();
    __swift_project_value_buffer(v27, qword_27CE627D0);
    (*(v5 + 16))(v7, a1, v4);
    v28 = v26;
    v29 = sub_21DBF84AC();
    v30 = sub_21DBFAEBC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41[0] = v32;
      *v31 = 136315394;
      v33 = sub_21DBF535C();
      v35 = v34;
      (*(v5 + 8))(v7, v4);
      v36 = sub_21D0CDFB4(v33, v35, v41);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      swift_getErrorValue();
      v37 = sub_21DBFC74C();
      v39 = sub_21D0CDFB4(v37, v38, v41);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_21D0C9000, v29, v30, "Error launching URL via LSApplicationWorkspace {url: %s, error: %s}", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v32, -1, -1);
      MEMORY[0x223D46520](v31, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_21D83A994()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE627D0);
  v1 = __swift_project_value_buffer(v0, qword_27CE627D0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D83AA5C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE627E8);
  v1 = __swift_project_value_buffer(v0, qword_27CE627E8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D83AB24@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v46 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v46);
  v3 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_21DBF4CAC();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);
  v44 = ObjectType;
  v45 = v9(ObjectType, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v40[1] = v6;
  v11 = (Strong + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_titleModule);
  swift_beginAccess();
  v12 = *v11;
  if (!*v11)
  {
    swift_unknownObjectRelease();
LABEL_6:
    v43 = 0;
    v22 = v45;
    goto LABEL_8;
  }

  v40[0] = v9;
  v13 = v11[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v14 = swift_getObjectType();
  v15 = *(v13 + 8);
  v16 = *(v15 + 32);
  swift_unknownObjectRetain();
  v16(&v50, v14, v15);
  v43 = v12;
  swift_unknownObjectRelease();
  sub_21D0D0FD0(&v50, v52);
  v17 = v53;
  v18 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  if ((*(v18 + 16))(v17, v18))
  {
    v19 = v53;
    v20 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v21 = (*(v20 + 40))(v19, v20);
    __swift_destroy_boxed_opaque_existential_0(v52);
    v22 = v45;
    v9 = v40[0];
    goto LABEL_13;
  }

  __swift_destroy_boxed_opaque_existential_0(v52);
  v22 = v45;
  v9 = v40[0];
LABEL_8:
  v23 = [v22 titleAsString];
  if (v23)
  {
    v24 = v23;
    v25 = sub_21DBFA16C();
    v27 = v26;

    v52[0] = v25;
    v52[1] = v27;
    sub_21DBF4C5C();
    sub_21D176F0C();
    v28 = sub_21DBFBB3C();
    v30 = v29;
    (*(v41 + 8))(v5, v42);

    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v28 & 0xFFFFFFFFFFFFLL;
    }

    v21 = v31 != 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_13:
  v32 = v44;
  v33 = v9(v44, v7);
  v34 = [v33 objectID];

  v35 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v36 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v36 - 8) + 56))(&v3[v35], 1, 1, v36);
  *v3 = v34;
  swift_storeEnumTagMultiPayload();
  (*(v7 + 56))(&v50, v32, v7);
  v37 = v50;
  v38 = v51;
  v48 = v50;
  v49 = v51;
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForDisplaying.getter(v52);

  sub_21D49351C(v3, v22, v52, v21 & 1, v47);
  return swift_unknownObjectRelease();
}

uint64_t sub_21D83AF98()
{
  v1 = type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingOption(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = *(v0 + 160);
  v23 = v3;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62828, &unk_21DC2BE08);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21DC08D00;
  v8 = *(v0 + 56);
  v24 = v0;
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 56);

  v10(&v28, ObjectType, v8);
  v11 = v28;
  v12 = v29;
  v13 = v30;
  v25 = v28;
  v26 = v29;
  v27 = v30;
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForDisplaying.getter(v31);

  v14 = v32;
  if (v32)
  {
    v15 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    *(v7 + 32) = (*(v15 + 8))(v14, v15);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    sub_21D0CF7E0(v31, &qword_27CE59DC0, &qword_21DC0FBF0);
    *(v7 + 32) = 0;
  }

  v31[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62830, &qword_21DC2BE18);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  sub_21D0D0F1C(&qword_27CE62838, &qword_27CE62830, &qword_21DC2BE18, MEMORY[0x277D83970]);
  v16 = sub_21DBFA41C();

  v17 = sub_21D19ED08(v16);

  v18 = swift_allocObject();
  swift_weakInit();
  sub_21D10589C(v23, v6, type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingOption);
  *&v6[v4[5]] = v17;
  *&v6[v4[6]] = 0;
  v6[v4[7]] = 0;
  v19 = &v6[v4[8]];
  *v19 = sub_21D83EC38;
  v19[1] = v18;
  v20 = static TTRIListPickerContextualMenuAssembly.makeListPickerContextMenu(configuration:)(v6);
  sub_21D83EC40(v6, type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration);
  return v20;
}

uint64_t sub_21D83B2CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = v3;
    v7 = v4;
    sub_21D83B340(&v6);
  }

  return result;
}

uint64_t sub_21D83B340(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  if (qword_27CE56D30 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE627E8);
  v6 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Quick Reminder Set Target List", 30, 2, v6);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = [Strong viewIfLoaded];
    if (v8)
    {
      v9 = v8;
      v10 = UIView.firstResponderDescendant.getter();

      if (v10)
      {
        [v10 resignFirstResponder];
      }
    }

    swift_unknownObjectRelease();
  }

  v11 = *(v2 + 56);
  ObjectType = swift_getObjectType();
  v14 = v3;
  v15 = v4;
  return (*(v11 + 104))(&v14, ObjectType, v11);
}

uint64_t sub_21D83B488()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17[-v2];
  v4 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 16))(ObjectType, v4);
  v7 = [v6 displayDate];

  if (v7)
  {
    v8 = [v7 date];

    sub_21DBF55FC();
    v9 = sub_21DBF563C();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  }

  else
  {
    v10 = sub_21DBF563C();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  v11 = sub_21D850FD8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62820, &qword_21DC2BE00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = v11;
  *(inited + 40) = 1;
  v13 = sub_21D179554(inited);
  swift_setDeallocating();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = sub_21D1DFDD4(v13, sub_21D83EA2C, v14);

  return v15;
}

uint64_t sub_21D83B6A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D83B704(a1);
  }

  return result;
}

uint64_t sub_21D83B704(uint64_t a1)
{
  v2 = a1;
  v3 = type metadata accessor for TTRDateChangeType(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D78, &qword_21DC18800);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v30 = v3;
  v16 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v16)
  {
    v17 = sub_21DBFA12C();

    v18 = sub_21DBFA12C();
    [v16 setObject:v17 forKey:v18];
  }

  else
  {
  }

  if (v2 > 3u)
  {

    return sub_21D83C720();
  }

  else
  {
    v19 = *(v1 + 56);
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 16))(ObjectType, v19);
    v22 = [v21 displayDate];

    if (v22)
    {
      v23 = [v22 dateComponentsRepresentation];

      sub_21DBF4EFC();
      v24 = sub_21DBF509C();
      (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
    }

    else
    {
      v26 = sub_21DBF509C();
      (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    }

    v27 = v30;
    sub_21D0CF7E0(v9, &qword_27CE58D60, &unk_21DC0A690);
    sub_21D84FE54(v2, v15);
    sub_21D83EA34(v15, v12);
    if ((*(v4 + 48))(v12, 1, v27) == 1)
    {
      sub_21D0CF7E0(v15, &qword_27CE58D78, &qword_21DC18800);
      v28 = v12;
    }

    else
    {
      sub_21D10589C(v12, v6, type metadata accessor for TTRDateChangeType);
      sub_21D83C904(v6);
      sub_21D83EC40(v6, type metadata accessor for TTRDateChangeType);
      v28 = v15;
    }

    return sub_21D0CF7E0(v28, &qword_27CE58D78, &qword_21DC18800);
  }
}

uint64_t sub_21D83BBE4()
{
  v1 = *(v0 + 152);
  ObjectType = swift_getObjectType();
  v3 = *(v0 + 56);
  v4 = swift_getObjectType();
  v5 = (*(v3 + 16))(v4, v3);
  v12[3] = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
  v12[4] = &protocol witness table for REMReminderChangeItem;
  v12[0] = v5;
  (*(v1 + 24))(v11, v12, ObjectType, v1);
  __swift_destroy_boxed_opaque_existential_0(v12);
  v6 = (*(v1 + 8))(ObjectType, v1);
  v7 = swift_allocObject();
  swift_weakInit();
  v10 = v6;
  v11[1] = sub_21D83EA04;
  v11[2] = v7;
  v8 = _s15RemindersUICore39TTRIRemindersListContextualMenuAssemblyO019makeLocationContextF013configurationSo6UIMenuCAC0ijF13ConfigurationV_tFZ_0(&v10);

  return v8;
}

uint64_t sub_21D83BD30(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = v3;
    sub_21D83BD9C(&v5);
  }

  return result;
}

void sub_21D83BD9C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  if (v1 <= 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x746E6572727563;
    v5 = 0xE400000000000000;
    v6 = 1701670760;
    if (v1 != 1)
    {
      v6 = 1802661751;
      v5 = 0xE400000000000000;
    }

    v2 = v1 == 0;
    goto LABEL_9;
  }

  if (v1 <= 4)
  {
    v2 = v1 == 3;
    v3 = 0xEC0000007261436ELL;
    v4 = 0x49676E6974746567;
    v5 = 0xEF726143664F7475;
    v6 = 0x4F676E6974746567;
LABEL_9:
    if (v2)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (v2)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }

    TTRUserDefaults.quickReminderCreationLastSelectedLocationOption.setter(v7, v8);
    if (qword_27CE56D30 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_27CE627E8);
    v10 = sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC("Quick Reminder Set Location", 27, 2, v10);

    v13 = v1;
    sub_21D83D2B4(&v13);
    return;
  }

  if (v1 == 5)
  {
    TTRUserDefaults.quickReminderCreationLastSelectedLocationOption.setter(0x6D6F74737563, 0xE600000000000000);

    sub_21D83D0D4();
  }

  else
  {
    TTRUserDefaults.quickReminderCreationLastSelectedLocationOption.setter(0, 0);
    if (qword_27CE56D30 != -1)
    {
      swift_once();
    }

    v11 = sub_21DBF84BC();
    __swift_project_value_buffer(v11, qword_27CE627E8);
    v12 = sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC("Quick Reminder Clear Location", 29, 2, v12);

    v14 = 0;
    v15 = -1;
    sub_21D83D418(&v14);
  }
}

void sub_21D83C00C()
{
  if (qword_27CE56D30 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE627E8);
  v2 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Quick Reminder Toggle Flagged", 29, 2, v2);

  v3 = v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIQuickReminderPresenter_viewModel;
  swift_beginAccess();
  v4 = *(v3 + *(type metadata accessor for TTRIQuickReminderViewModel(0) + 56));
  if (v4 == 2)
  {
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v5 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
    if (v5)
    {
      v6 = sub_21DBFA12C();
      [v5 setObject:0 forKey:v6];
LABEL_12:
    }
  }

  else
  {
    sub_21D83C214((v4 ^ 1) & 1);
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v7 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
    if (v7)
    {
      v8 = sub_21DBFA7AC();
      v6 = sub_21DBFA12C();
      [v7 setObject:v8 forKey:v6];

      goto LABEL_12;
    }
  }
}

uint64_t sub_21D83C214(char a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v3 = objc_opt_self();
  v4 = sub_21DBFA12C();

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1 & 1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21D83E9AC;
  *(v6 + 24) = v5;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_96;
  v7 = _Block_copy(aBlock);

  [v3 withActionName:v4 block:{v7, 0x800000021DC4F950}];

  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21D83C464()
{
  if (!*(v0 + 184))
  {
    v1 = v0;
    *(v0 + 184) = 1;
    if (qword_27CE56D30 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_27CE627E8);
    v3 = sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC("Quick Reminder Done", 19, 2, v3);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = [Strong viewIfLoaded];
      if (v5)
      {
        v6 = v5;
        v7 = UIView.firstResponderDescendant.getter();

        if (v7)
        {
          [v7 resignFirstResponder];
        }
      }

      swift_unknownObjectRelease();
    }

    v8 = *(v1 + 56);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 16))(ObjectType, v8);
    (*(v8 + 368))(v22, ObjectType, v8);
    v12 = v22[0];
    v11 = v22[1];
    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAE9C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21D0C9000, v13, v14, "Quick Reminder Save: about to donate reminder update", v15, 2u);
      MEMORY[0x223D46520](v15, -1, -1);
    }

    sub_21DBF60DC();
    v16 = sub_21DBF60CC();
    type metadata accessor for TTRRemindersInteraction();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v18 = v10;
    sub_21D5C4C78(v18, v17);

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v1 + 40);
      v20 = swift_getObjectType();
      v21[0] = v12;
      v21[1] = v11;
      (*(v19 + 16))(v1, &off_282ED5D48, v21, v20, v19);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    *(v1 + 184) = 2;
  }
}

uint64_t sub_21D83C720()
{
  v1 = v0;
  if (qword_27CE56D30 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE627E8);
  v3 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Quick Reminder Show Custom Due Date Picker", 42, 2, v3);

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = type metadata accessor for ReminderDetailModuleDelegate();
  v7 = swift_allocObject();
  v7[2] = sub_21D83EB34;
  v7[3] = v4;
  v7[4] = sub_21D83EB3C;
  v7[5] = v5;
  v13[3] = v6;
  v13[0] = v7;
  v8 = OBJC_IVAR____TtC15RemindersUICore26TTRIQuickReminderPresenter_currentEventHandler;
  swift_beginAccess();

  sub_21D45C42C(v13, v1 + v8);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  v9 = v1[7];
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 16))(ObjectType, v9);

  sub_21D83ECB0(v11, v7, &off_282ED5C58);
}

uint64_t sub_21D83C904(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRDateChangeType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_27CE56D30 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE627E8);
  v8 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Quick Reminder Set Due Date", 27, 2, v8);

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v9 = objc_opt_self();
  v10 = sub_21DBFA12C();

  sub_21D1053BC(a1, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRDateChangeType);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  sub_21D10589C(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for TTRDateChangeType);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21D83EAA4;
  *(v13 + 24) = v12;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_55_0;
  v14 = _Block_copy(aBlock);

  [v9 withActionName:v10 block:v14];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21D83CC88(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = *a3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v9 = objc_opt_self();
    v10 = sub_21DBFA12C();

    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = a1;
    v11[4] = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_21D83EB44;
    *(v12 + 24) = v11;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_67_0;
    v13 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v9 withActionName:v10 block:{v13, 0x800000021DC4F9B0}];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v15._object = 0x800000021DC63430;
      v15._countAndFlagsBits = 0xD000000000000019;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v15);
      __swift_project_boxed_opaque_existential_1((v8 + 64), *(v8 + 88));
      if ((v6 & 1) != 0 && (v16 = swift_unknownObjectWeakLoadStrong()) != 0)
      {
        v17 = v16;
        [v16 dismissViewControllerAnimated:1 completion:0];
      }

      else
      {
      }
    }
  }
}

void sub_21D83CF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  ObjectType = swift_getObjectType();
  v6 = swift_getObjectType();
  v7 = (*(a3 + 72))(v6, a3);
  (*(v4 + 360))(v7, ObjectType, v4);
}

uint64_t sub_21D83D02C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D0D32E4(result + 64, v6);

    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    if (v2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        [Strong dismissViewControllerAnimated:1 completion:0];
      }
    }

    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return result;
}

void sub_21D83D0D4()
{
  v1 = v0;
  if (qword_27CE56D30 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE627E8);
  v3 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Quick Reminder Show Custom Location Picker", 42, 2, v3);

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = type metadata accessor for LocationPickerModuleDelegate();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21D83EA14;
  *(v6 + 24) = v4;
  v13[3] = v5;
  v13[0] = v6;
  v7 = OBJC_IVAR____TtC15RemindersUICore26TTRIQuickReminderPresenter_currentEventHandler;
  swift_beginAccess();

  sub_21D45C42C(v13, v1 + v7);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  v8 = v1[7];
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 16))(ObjectType, v8);
  v11 = *(v8 + 8);

  v12 = v11(ObjectType, v8);
  sub_21D5B737C(v10, v6, &off_282ED5C48, v12);
}

uint64_t sub_21D83D2B4(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(v1 + 152);
  ObjectType = swift_getObjectType();
  v9 = v3;
  v8 = xmmword_21DC18630;
  result = (*(v4 + 16))(&v9, &v8, ObjectType, v4);
  if (result)
  {
    *&v8 = result;
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CE98, &qword_21DC18808);
    sub_21D0D0F1C(&qword_27CE62690, &qword_27CE5CE98, &qword_21DC18808, MEMORY[0x277CBCD90]);
    v7 = sub_21DBF92AC();

    *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRIQuickReminderPresenter_locationTriggerCancellable) = v7;
  }

  return result;
}

uint64_t sub_21D83D418(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v4 = objc_opt_self();
  v5 = sub_21DBFA12C();

  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  *(v6 + 32) = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21D83EA1C;
  *(v7 + 24) = v6;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_44_3;
  v8 = _Block_copy(aBlock);
  sub_21D1B1ED4(v2, v3);

  [v4 withActionName:v5 block:{v8, 0x800000021DC4FB50}];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21D83D680(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC15RemindersUICore26TTRIQuickReminderPresenter_locationTriggerCancellable) = 0;

    v6 = v2;
    v7 = v3;
    v5 = v2;
    sub_21D83D418(&v6);

    sub_21D157864(v6, v7);
  }
}

uint64_t sub_21D83D718(uint64_t a1, char a2, uint64_t a3)
{
  if (a2 == -1)
  {
    v8 = *(a3 + 56);
    ObjectType = swift_getObjectType();
    return (*(v8 + 184))(0, ObjectType, v8);
  }

  else
  {
    v5 = *(a3 + 56);
    v6 = swift_getObjectType();
    if (a2)
    {
      return (*(v5 + 192))(a1, v6, v5);
    }

    else
    {
      return (*(v5 + 184))(a1, v6, v5);
    }
  }
}

uint64_t sub_21D83D7C0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2._object = 0x800000021DC63430;
    v2._countAndFlagsBits = 0xD000000000000019;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v2);
  }

  return result;
}

void *sub_21D83D834()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  swift_unknownObjectRelease();

  sub_21D83EC40(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIQuickReminderPresenter_viewModel, type metadata accessor for TTRIQuickReminderViewModel);

  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIQuickReminderPresenter_currentEventHandler, &qword_27CE5C690, &unk_21DC11AB0);
  return v0;
}

uint64_t sub_21D83D8F8()
{
  sub_21D83D834();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIQuickReminderPresenter(uint64_t a1)
{
  result = qword_27CE62810;
  if (!qword_27CE62810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D83D9A4(uint64_t a1)
{
  result = type metadata accessor for TTRIQuickReminderViewModel(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_21D83DA94()
{
  v0._object = 0x800000021DC63430;
  v0._countAndFlagsBits = 0xD000000000000019;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v0);
}

void sub_21D83DAD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D78, &qword_21DC18800);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = type metadata accessor for TTRDateChangeType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 16))(ObjectType, v8);
  v22 = [v10 displayDate];

  v11 = v22;
  if (v22)
  {
  }

  else
  {
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v12 = 1701736302;
    v13 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
    if (v13 && (v14 = sub_21DBFA12C(), v15 = [v13 stringForKey_], v14, v15))
    {
      v12 = sub_21DBFA16C();
      v17 = v16;

      v18 = v17;
    }

    else
    {
      v18 = 0xE400000000000000;
    }

    v19 = sub_21D851490(v12, v18);
    if (v19 != 5)
    {
      sub_21D84FE54(v19, v3);
      v20 = *(v5 + 48);
      if (v20(v3, 1, v4) == 1)
      {
        swift_storeEnumTagMultiPayload();
        if (v20(v3, 1, v4) != 1)
        {
          sub_21D0CF7E0(v3, &qword_27CE58D78, &qword_21DC18800);
        }
      }

      else
      {
        sub_21D10589C(v3, v7, type metadata accessor for TTRDateChangeType);
      }

      sub_21D83C904(v7);
      sub_21D83EC40(v7, type metadata accessor for TTRDateChangeType);
      sub_21D83DDE4();
    }
  }
}

char *sub_21D83DDE4()
{
  v1 = type metadata accessor for TTRIQuickReminderViewModel(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D83AB24(v3);
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRIQuickReminderPresenter_viewModel;
  swift_beginAccess();
  sub_21D83E948(v3, v0 + v4);
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    if ([result isViewLoaded])
    {
      v7 = *&v6[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_presenter];
      v8 = OBJC_IVAR____TtC15RemindersUICore26TTRIQuickReminderPresenter_viewModel;
      swift_beginAccess();
      sub_21D1053BC(v7 + v8, v3, type metadata accessor for TTRIQuickReminderViewModel);
      sub_21D841B88(v3);
      swift_unknownObjectRelease();
      return sub_21D83EC40(v3, type metadata accessor for TTRIQuickReminderViewModel);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_21D83DF28()
{
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v0 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v0)
  {
    v1 = sub_21DBFA12C();
    v2 = [v0 stringForKey_];

    if (v2)
    {
      v3 = sub_21DBFA16C();
      v5 = v4;

      v6._countAndFlagsBits = v3;
      v6._object = v5;
      TTRLocationQuickPickItem.init(rawValue:)(v6);
      if (v10 != 6)
      {
        if (v10 > 4u)
        {
          v8 = 0;
          v9 = -1;
          sub_21D83D418(&v8);
        }

        else
        {
          v7 = v10;
          sub_21D83D2B4(&v7);
        }

        sub_21D83DDE4();
      }
    }
  }
}

void (*sub_21D83E064(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D242600;
}

uint64_t sub_21D83E100()
{
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  result = TTRUserDefaults.quickReminderCreationLastSelectedFlagOption.getter();
  if (result != 2)
  {
    v1 = result & 1;

    return sub_21D83C214(v1);
  }

  return result;
}

uint64_t sub_21D83E18C()
{
  v1 = (*(v0 + 104) + OBJC_IVAR____TtC15RemindersUICore39TTRInCellEditingPresenterManagingHelper_textInputPrimaryLanguageObserver);
  if (!*v1)
  {
    return 0;
  }

  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 8);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_21D83E274(uint64_t a1, uint64_t a2)
{
  sub_21DBCCF04(a1, a2, 0);

  return swift_unknownObjectRelease();
}

uint64_t sub_21D83E2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D1053BC(a1, v10, type metadata accessor for TTRRemindersListViewModel.Item);
  v11 = *(v4 + 56);
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 16))(ObjectType, v11);
  (*(v11 + 24))(v25, ObjectType, v11);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = *(v4 + 176);
  v17 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for TTRReminderStandaloneEditingSession(0);
  v18 = swift_allocObject();

  sub_21DBF56AC();
  sub_21D10589C(v10, v18 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_item, type metadata accessor for TTRRemindersListViewModel.Item);
  v19 = (v18 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_acquirerName);
  *v19 = a2;
  v19[1] = a3;
  *(v18 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_reminderChangeItem) = v13;
  sub_21D0D0FD0(v25, v18 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_attributeEditor);
  v20 = (v18 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_pendingMoveTargetListValue);
  *v20 = sub_21D83E930;
  v20[1] = v14;
  v21 = (v18 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setPendingMoveTargetList);
  *v21 = sub_21D83E938;
  v21[1] = v15;
  *(v18 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_sharedPropertiesWrapper) = v16;
  v22 = (v18 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setNeedsDisplayHandler);
  *v22 = sub_21D83E940;
  v22[1] = v17;
  sub_21DBF8E0C();
  return v18;
}

id sub_21D83E564(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = *(Strong + 56);
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  (*(v2 + 64))(&v12, ObjectType, v2);
  swift_unknownObjectRelease();
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  if (v13 == 255)
  {
    sub_21D157864(v12, 255);
    sub_21D575DF4(v6, v7, v8, v9);
    return 0;
  }

  v10 = v12;
  sub_21D157864(v4, v5);
  sub_21D575DF4(v6, v7, v8, v9);
  if (v5)
  {
    sub_21D157864(v4, v5);
    return 0;
  }

  return v4;
}

void sub_21D83E68C(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(Strong + 56);
      v5 = a1;
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v9 = a1;
      v10 = 0;
      v7 = *(v4 + 104);
      v8 = v5;
      v7(&v9, ObjectType, v4);

      swift_unknownObjectRelease();
    }
  }
}

_BYTE *sub_21D83E768(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v2._object = 0x800000021DC63430;
      v2._countAndFlagsBits = 0xD000000000000019;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v2);
    }
  }

  return result;
}

uint64_t sub_21D83E7F8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D83E85C(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(v3 + 32);
  v6 = *a3;
  return v4(&v6, a2);
}

uint64_t sub_21D83E898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = *(v5 + 16);
  v8 = *a5;
  return v6(a1, a2, &v8, a4);
}

uint64_t sub_21D83E8D4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D83E948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIQuickReminderViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D83E9AC()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + 56);
  ObjectType = swift_getObjectType();
  return (*(v2 + 136))(v1, ObjectType, v2);
}

uint64_t sub_21D83EA34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D78, &qword_21DC18800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D83EAA4()
{
  v1 = *(type metadata accessor for TTRDateChangeType(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(*(v0 + 16) + 56);
  ObjectType = swift_getObjectType();
  return (*(v3 + 152))(v0 + v2, ObjectType, v3);
}

void sub_21D83EB50()
{
  if (qword_27CE56D30 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_27CE627E8);
  oslog = sub_21DBF84AC();
  v1 = sub_21DBFAECC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21D0C9000, oslog, v1, "TTRIQuickReminderPresenter: unexpected call: reminderDidBecomeNotFound", v2, 2u);
    MEMORY[0x223D46520](v2, -1, -1);
  }
}

uint64_t sub_21D83EC40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D83ECB0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF66BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  *&v35 = 1;
  BYTE8(v35) = 0;
  v36 = 0uLL;
  v10 = *MEMORY[0x277D451B0];
  v11 = sub_21DBF66CC();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  (*(v7 + 104))(v9, *MEMORY[0x277D45188], v6);
  v31[0] = a1;
  v31[1] = 0;
  v29 = 1;
  v30 = 0;
  v28[2] = v34;
  v28[3] = v35;
  v28[4] = v36;
  v28[0] = v32;
  v28[1] = v33;
  v25 = 1;
  v26 = 0u;
  v27 = 0u;
  memset(v24, 0, sizeof(v24));
  v12 = a1;
  v13 = sub_21D831A34(v31, a2, a3, &v29, 0, 1, v28, &v25, v24);
  v15 = v14;

  v16 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  v17 = [v16 presentationController];
  if (v17)
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    (*(v15 + 96))(v18, 0, ObjectType, v15);
  }

  swift_unknownObjectWeakAssign();
  v20 = swift_getObjectType();
  (*(v15 + 104))(v9, 0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8, v20, v15);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    [Strong presentViewController:v16 animated:1 completion:0];

    sub_21D5B8E5C(&v32);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_21D5B8E5C(&v32);

    swift_unknownObjectRelease();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21D83EFE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_21D83F118()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for TTRIQuickReminderViewModel(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97.receiver = v1;
  v97.super_class = ObjectType;
  objc_msgSendSuper2(&v97, sel_viewDidLoad, v7);
  result = [v1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v11 = result;
  v90 = v6;
  v91 = v9;
  v92 = v5;
  [result setPreservesSuperviewLayoutMargins_];

  sub_21D83FCC8();
  v13 = v12;
  v14 = &selRef_keyboardType;
  v15 = [objc_allocWithZone(MEMORY[0x277D75C58]) init];
  if (qword_280D17218 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    swift_beginAccess();
    if ((byte_280D17220 & 1) == 0)
    {
      v16 = [objc_allocWithZone(MEMORY[0x277D75C60]) v14[326]];
      [v16 configureWithTransparentBackground];
      [v15 setStandardAppearance_];
    }

    v17 = *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_toolbar];
    v18 = v1;
    *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_toolbar] = v15;
    v15 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628F0, &qword_21DC2BF10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D20;
    *(inited + 32) = v13;
    type metadata accessor for UILayoutPriority(0);
    LODWORD(v95[0]) = 1144750080;
    v96 = 1065353216;
    sub_21D84498C(&qword_280D0C2C0, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
    v20 = v13;
    sub_21DBF84DC();
    *(inited + 48) = v15;
    *(inited + 56) = 1144750080;
    v21 = v15;
    sub_21D1103F0(inited, &unk_282EA7D00, v22);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62900, &qword_21DC2BF18);
    swift_arrayDestroy();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_21DC0AA00;
    *(v23 + 32) = v20;
    v93 = v21;
    *(v23 + 40) = v21;
    v1 = (v23 & 0xC000000000000001);
    v14 = (v23 & 0xFFFFFFFFFFFFFF8);
    v94 = v20;
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x223D44740](0, v23);
    }

    else
    {
      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v24 = v94;
    }

    v15 = v24;
    [v24 setTranslatesAutoresizingMaskIntoConstraints_];
    result = [v18 view];
    if (!result)
    {
      goto LABEL_24;
    }

    v25 = result;
    [result addSubview_];

    if (v1)
    {
      break;
    }

    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v26 = *(v23 + 40);
      goto LABEL_12;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  v26 = MEMORY[0x223D44740](1, v23);
LABEL_12:
  v27 = v26;
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v28 = v18;
  result = [v18 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = result;
  [result addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_21DC2BE80;
  result = [v18 view];
  if (!result)
  {
    goto LABEL_26;
  }

  v31 = result;
  v32 = [result topAnchor];

  v33 = v94;
  v34 = [v94 topAnchor];
  v35 = [v32 constraintEqualToAnchor_];

  *(v30 + 32) = v35;
  result = [v18 &selRef_ttriAccessibilityColorDescription];
  if (!result)
  {
    goto LABEL_27;
  }

  v36 = result;
  v37 = [result leadingAnchor];

  v38 = [v33 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v30 + 40) = v39;
  result = [v18 &selRef_ttriAccessibilityColorDescription];
  if (!result)
  {
    goto LABEL_28;
  }

  v40 = result;
  v41 = [result trailingAnchor];

  v42 = [v33 trailingAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v30 + 48) = v43;
  result = [v18 &selRef_ttriAccessibilityColorDescription];
  if (!result)
  {
    goto LABEL_29;
  }

  v44 = result;
  v45 = v33;
  v46 = [result bottomAnchor];

  v47 = v93;
  v48 = [v93 bottomAnchor];
  v49 = [v46 constraintEqualToAnchor_];

  v50 = *&v18[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_toolbarBottomConstraint];
  *&v18[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_toolbarBottomConstraint] = v49;

  *(v30 + 56) = v49;
  v51 = v49;
  v52 = [v47 topAnchor];
  v53 = [v45 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v30 + 64) = v54;
  v55 = [v47 leadingAnchor];
  result = [v18 &selRef_ttriAccessibilityColorDescription];
  if (!result)
  {
    goto LABEL_30;
  }

  v56 = result;
  v57 = [result leadingAnchor];

  v58 = [v55 constraintEqualToAnchor_];
  *(v30 + 72) = v58;
  v59 = [v47 trailingAnchor];

  result = [v18 &selRef_ttriAccessibilityColorDescription];
  if (result)
  {
    v60 = result;
    v61 = objc_opt_self();
    v62 = [v60 trailingAnchor];

    v63 = [v59 constraintEqualToAnchor_];
    *(v30 + 80) = v63;
    sub_21D0D8CF0(0, &qword_280D177D0, 0x277CCAAD0);
    v64 = sub_21DBFA5DC();

    [v61 activateConstraints_];

    v65 = *&v18[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_presenter];
    v66 = v65[14];
    v67 = v65[7];
    v68 = swift_getObjectType();
    v69 = (*(v67 + 16))(v68, v67);
    v70 = [v69 objectID];

    v89 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
    v71 = *(v89 + 20);
    v72 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v73 = v28;
    v74 = *(*(v72 - 8) + 56);
    v75 = v91;
    v74(&v91[v71], 1, 1, v72);
    *v75 = v70;
    swift_storeEnumTagMultiPayload();
    v66(v95, v75, v65, &off_282ED5C88, v73, &off_282ED6000, v73);
    sub_21D8448F4(v75, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D8418D8(v95);
    v76 = v65[17];
    v88 = v65[16];
    v87[1] = v76;
    v77 = v65[7];
    v78 = swift_getObjectType();
    v79 = (*(v77 + 16))(v78, v77);
    v80 = [v79 objectID];

    v74(&v75[*(v89 + 20)], 1, 1, v72);
    *v75 = v80;
    swift_storeEnumTagMultiPayload();
    v88(v95, v75, v65, &off_282ED5C88, v73, &off_282ED5FF0, v73);
    sub_21D8448F4(v75, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D841A30(v95);
    type metadata accessor for TTRICurrentTextInputModeObserver();
    v81 = swift_allocObject();
    *(v81 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
    swift_allocObject();
    *(v81 + 24) = sub_21DBF907C();
    *&v73[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_currentTextInputModeObserver] = v81;

    v82 = v65[13];

    sub_21D8442C8(v83, v82);

    v84 = OBJC_IVAR____TtC15RemindersUICore26TTRIQuickReminderPresenter_viewModel;
    swift_beginAccess();
    v85 = v65 + v84;
    v86 = v92;
    sub_21D105424(v85, v92, type metadata accessor for TTRIQuickReminderViewModel);
    sub_21D841B88(v86);

    return sub_21D8448F4(v86, type metadata accessor for TTRIQuickReminderViewModel);
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_21D83FCC8()
{
  v0 = sub_21DBFB7EC();
  v180 = *(v0 - 1);
  v181 = v0;
  MEMORY[0x28223BE20](v0);
  v176 = v165 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62930, &qword_21DC0AED0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v165 - v3;
  v5 = sub_21DBFB83C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBFB95C();
  v184 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v175 = v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v186 = v165 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v165 - v14;
  sub_21DBFB90C();
  v16 = sub_21DBFB79C();
  sub_21DBF880C();
  v16(aBlock, 0);
  (*(v6 + 104))(v8, *MEMORY[0x277D74FF8], v5);
  sub_21DBFB85C();
  sub_21DBFB87C();
  sub_21DBFB82C();
  sub_21DBFB80C();
  sub_21DBF8D6C();
  v17 = sub_21DBF8D5C();
  (*(*(v17 - 8) + 56))(v4, 0, 1, v17);
  sub_21DBFB8CC();
  v18 = sub_21DBFA12C();
  v19 = objc_opt_self();
  v20 = [v19 _systemImageNamed_];

  if (!v20)
  {
    __break(1u);
    return;
  }

  v21 = *MEMORY[0x277D76918];
  v179 = objc_opt_self();
  v183 = v21;
  v22 = [v179 configurationWithTextStyle:v21 scale:1];
  v23 = [v20 imageWithSymbolConfiguration_];

  sub_21DBFB8FC();
  sub_21DBFB84C();
  sub_21D0D8CF0(0, &qword_280D0C1C0, 0x277D75220);
  v24 = *(v184 + 16);
  v25 = v186;
  v177 = v15;
  v178 = v9;
  v174 = v24;
  v24(v186, v15, v9);
  v26 = sub_21DBFB96C();
  [v26 setShowsMenuAsPrimaryAction_];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_21D844954;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D843390;
  aBlock[3] = &block_descriptor_21_0;
  v28 = _Block_copy(aBlock);

  [v26 _setMenuProvider_];
  _Block_release(v28);
  v29 = qword_280D1BAA8;
  v30 = v26;
  if (v29 != -1)
  {
    swift_once();
  }

  *&v185 = qword_280D1BAB0;
  sub_21DBF516C();
  v31 = sub_21DBFA12C();

  [v30 setAccessibilityHint_];

  sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v182 = sub_21DBFB77C();
  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_280D17220 == 1)
  {
    v32 = sub_21DBFA12C();
    v33 = [v19 _systemImageNamed_];

    v34 = objc_allocWithZone(MEMORY[0x277D75520]);
    v35 = [v34 initForTextStyle_];
    sub_21DBFB8EC();
    v173 = v33;
    sub_21DBFB8FC();
    sub_21DBFB84C();
    v36 = objc_opt_self();
    v37 = [v36 whiteColor];
    sub_21DBFB89C();
    [v35 scaledValueForValue_];
    v38 = v179;
    v39 = [v179 configurationWithPointSize:7 weight:1 scale:?];
    sub_21DBFB78C();
    [v35 scaledValueForValue_];
    sub_21DBFB82C();
    v40 = [v36 0x1FBBB170ALL];
    sub_21DBFB88C();
    v180[13](v176, *MEMORY[0x277D74FD8], v181);
    sub_21DBFB7FC();
    type metadata accessor for TTRIExpandedHitTestButton();
    v41 = v178;
    v174(v175, v25, v178);
    v42 = v182;
    v43 = sub_21DBFB96C();
    sub_21DBF516C();
    v44 = sub_21DBFA12C();

    [v43 setAccessibilityLabel_];

    v45 = v41;
    v46 = v183;
    (*(v184 + 8))(v25, v45);
  }

  else
  {
    type metadata accessor for TTRIExpandedHitTestButton();
    v47 = v182;
    v43 = sub_21DBFB9AC();
    v38 = v179;
    v46 = v183;
  }

  [v43 setCustomAlignmentRectInsets_];
  type metadata accessor for TTRIQuickReminderListPickerStackView();
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_21DC0AA00;
  *(v48 + 32) = v30;
  *(v48 + 40) = v43;
  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v180 = v30;
  v181 = v43;
  v49 = sub_21DBFA5DC();

  v50 = [swift_getObjCClassFromMetadata() containerStackViewWithAxis:0 arrangedSubviews:v49];

  v51 = v50;
  [v51 setSpacing_];
  [v51 setAlignment_];
  [v51 setDistribution_];
  v173 = v51;

  v52 = [v38 configurationWithTextStyle:v46 scale:3];
  if (qword_280D16868 != -1)
  {
    swift_once();
  }

  v176 = v52;
  v53 = [qword_280D16870 imageWithSymbolConfiguration_];
  v54 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v175 = v53;
  v55 = [v54 initWithImage_];
  v56 = objc_opt_self();
  v57 = [v56 tertiaryLabelColor];
  [v55 setTintColor_];

  v186 = v55;
  [v186 setCustomAlignmentRectInsets_];
  v189[0] = 0;
  v58 = objc_allocWithZone(type metadata accessor for TTRIReminderTitleTextView());
  v59 = TTRIReminderTitleTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)(1, 5, 0, v189, 0);
  sub_21D8435E4(v59);
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v60 = sub_21D900614(1);
  [v59 setFont_];

  v61 = [v56 labelColor];
  [v59 setTextColor_];

  sub_21DBF516C();
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
  inited = swift_initStackObject();
  v170 = xmmword_21DC08D20;
  *(inited + 16) = xmmword_21DC08D20;
  v63 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v169 = v63;
  v64 = [v56 placeholderTextColor];
  v65 = sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
  *(inited + 40) = v64;
  v66 = *MEMORY[0x277D740A8];
  v168 = v65;
  *(inited + 64) = v65;
  *(inited + 72) = v66;
  v167 = v66;
  v67 = sub_21D900614(1);
  v166 = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
  *(inited + 104) = v166;
  *(inited + 80) = v67;
  sub_21D11274C(inited);
  swift_setDeallocating();
  v165[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0, &qword_21DC09050);
  swift_arrayDestroy();
  v68 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v69 = sub_21DBFA12C();

  type metadata accessor for Key(0);
  v71 = v70;
  v165[1] = sub_21D84498C(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
  v165[2] = v71;
  v72 = sub_21DBF9E5C();

  v73 = [v68 initWithString:v69 attributes:v72];

  [v59 setAttributedPlaceholder_];
  v74 = qword_280D165E0;
  v75 = v59;
  if (v74 != -1)
  {
    swift_once();
  }

  v76 = sub_21DBFA12C();
  [v75 setAccessibilityLabel_];

  v77 = v183;
  if (qword_280D17A20 != -1)
  {
    swift_once();
  }

  v172 = v75;
  v78 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v79 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v77 compatibleWithTraitCollection:0];
  if (v79)
  {
    v80 = v79;
    v81 = [v79 fontDescriptorWithDesign_];

    v82 = &selRef_setAttributedText_;
    if (v81)
    {
      v83 = [objc_opt_self() fontWithDescriptor:v81 size:0.0];
      if (v83)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v81 = 0;
    v82 = &selRef_setAttributedText_;
  }

  v83 = [objc_opt_self() preferredFontForTextStyle_];
LABEL_23:

  v84 = [v179 configurationWithFont_];
  [v78 setPreferredSymbolConfiguration_];

  v85 = v78;
  [v85 setAccessibilityIgnoresInvertColors_];
  if (qword_280D16948 != -1)
  {
    swift_once();
  }

  [v85 setTintColor_];
  [v85 setCustomAlignmentRectInsets_];
  v86 = *(v187 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_flaggedImageView);
  *(v187 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_flaggedImageView) = v85;
  v179 = v85;

  v87 = objc_allocWithZone(type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView());
  v189[0] = 0;
  v88 = TTRIReminderTitleTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)(1, 5, 0, v189, 0);
  sub_21D8435E4(v88);
  v89 = [v56 secondaryLabelColor];
  [v88 v82[124]];

  v90 = sub_21D900614(6);
  [v88 setFont_];

  sub_21DBF516C();
  v91 = v82;
  v92 = swift_initStackObject();
  *(v92 + 16) = v170;
  *(v92 + 32) = v169;
  *(v92 + 40) = [v56 placeholderTextColor];
  v93 = v167;
  *(v92 + 64) = v168;
  *(v92 + 72) = v93;
  v94 = sub_21D900614(6);
  *(v92 + 104) = v166;
  *(v92 + 80) = v94;
  sub_21D11274C(v92);
  swift_setDeallocating();
  swift_arrayDestroy();
  v95 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v96 = sub_21DBFA12C();

  v97 = sub_21DBF9E5C();

  v98 = [v95 initWithString:v96 attributes:v97];

  [v88 setAttributedPlaceholder_];
  v99 = qword_280D165F8;
  v100 = v88;
  if (v99 != -1)
  {
    swift_once();
  }

  v101 = sub_21DBFA12C();
  [v100 setAccessibilityLabel_];

  v102 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v103 = [v56 secondaryLabelColor];
  [v102 v91[124]];

  v104 = sub_21D900614(6);
  [v102 setFont_];

  [v102 setNumberOfLines_];
  [v102 setAdjustsFontForContentSizeCategory_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0, &unk_21DC0CB10);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_21DC0AFB0;
  v106 = v105;
  v171 = v105;
  v107 = swift_allocObject();
  v185 = xmmword_21DC0BFD0;
  *(v107 + 16) = xmmword_21DC0BFD0;
  v108 = v173;
  *(v107 + 32) = v173;
  *(v107 + 40) = v108;
  *(v107 + 48) = v108;
  v106[4] = v107;
  v109 = swift_allocObject();
  *(v109 + 16) = v185;
  v110 = v186;
  v111 = v172;
  *(v109 + 32) = v186;
  *(v109 + 40) = v111;
  v112 = v179;
  *(v109 + 48) = v179;
  v106[5] = v109;
  v113 = swift_allocObject();
  *(v113 + 16) = v185;
  *(v113 + 32) = v110;
  *(v113 + 40) = v100;
  *(v113 + 48) = v100;
  v106[6] = v113;
  v114 = swift_allocObject();
  *(v114 + 16) = v185;
  *(v114 + 32) = v110;
  *(v114 + 40) = v102;
  v115 = v110;
  *(v114 + 48) = v102;
  v106[7] = v114;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628F0, &qword_21DC2BF10);
  v116 = swift_initStackObject();
  *(v116 + 16) = xmmword_21DC0B380;
  v117 = v181;
  *(v116 + 32) = v180;
  *&v170 = v116 + 32;
  *(v116 + 40) = 1132068864;
  *(v116 + 48) = v117;
  *(v116 + 56) = 1144750080;
  *(v116 + 64) = v115;
  *(v116 + 72) = 1144750080;
  *(v116 + 80) = v111;
  *(v116 + 88) = 1132068864;
  *(v116 + 96) = v112;
  type metadata accessor for UILayoutPriority(0);
  *v189 = 1144750080;
  v188 = 1065353216;
  sub_21D84498C(&qword_280D0C2C0, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
  v118 = v108;
  v119 = v100;
  v120 = v102;
  v121 = v118;
  v122 = v111;
  v123 = v119;
  v124 = v120;
  v125 = v121;
  v126 = v122;
  v127 = v123;
  v128 = v124;
  *&v185 = v125;
  v183 = v126;
  v129 = v112;
  v130 = v127;
  v131 = v128;
  sub_21DBF84DC();
  *(v116 + 112) = v130;
  *(v116 + 120) = 1132068864;
  *(v116 + 128) = v131;
  *(v116 + 136) = 1132068864;
  sub_21D1103F0(v116, &unk_282EA7C80, v132);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62900, &qword_21DC2BF18);
  swift_arrayDestroy();
  v133 = swift_initStackObject();
  *(v133 + 16) = xmmword_21DC10990;
  *(v133 + 32) = v185;
  *(v133 + 40) = 1144750080;
  v174 = v129;
  *(v133 + 48) = v129;
  *v189 = 1144750080;
  v188 = 1065353216;
  sub_21DBF84DC();
  *(v133 + 64) = v186;
  *(v133 + 72) = 1144750080;
  *(v133 + 80) = v183;
  *v189 = 1144750080;
  v188 = 1065353216;
  sub_21DBF84EC();
  v179 = v130;
  *(v133 + 96) = v130;
  *v189 = 1144750080;
  v188 = 0x40000000;
  sub_21DBF84EC();
  v173 = v131;
  *(v133 + 112) = v131;
  *v189 = 1144750080;
  v188 = 1077936128;
  sub_21DBF84EC();
  sub_21D1103F0(v133, &unk_282EA7CC0, v134);
  swift_setDeallocating();
  swift_arrayDestroy();
  v135 = objc_allocWithZone(type metadata accessor for TTRIQuickReminderMainGridView());
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100, &qword_21DC18230);
  v136 = sub_21DBFA5DC();
  v137 = [v135 initWithArrangedSubviewRows_];

  v138 = v137;
  [v138 setPreservesSuperviewLayoutMargins_];
  v139 = v138;
  [v139 setLayoutMarginsRelativeArrangement_];
  v140 = v139;
  [v140 setHorizontalAlignment_];
  [v140 setVerticalAlignment_];
  [v140 setRowSpacing_];
  [v140 setColumnSpacing_];
  [v140 setDebugBoundingBoxesEnabled_];

  v141 = sub_21DBFA5DC();

  [v140 setArrangedSubviewRows_];

  v142 = [v140 rowIndexForArrangedSubview_];
  if (v142 != sub_21DBF4B4C())
  {
    v143 = [v140 rowAtIndex_];
    if (v143)
    {
      [v143 setSpacingAfter_];
      swift_unknownObjectRelease();
    }
  }

  v144 = v183;
  v145 = [v140 rowIndexForArrangedSubview_];
  v146 = sub_21DBF4B4C();
  v147 = v187;
  if (v145 != v146)
  {
    v148 = [v140 rowAtIndex_];
    if (v148)
    {
      [v148 setSpacingAfter_];
      swift_unknownObjectRelease();
    }
  }

  v149 = [v140 rowIndexForArrangedSubview_];
  if (v149 != sub_21DBF4B4C())
  {
    v150 = [v140 rowAtIndex_];
    if (v150)
    {
      [v150 setSpacingAfter_];
      swift_unknownObjectRelease();
    }
  }

  v151 = *(v147 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_mainGrid);
  *(v147 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_mainGrid) = v140;

  v152 = *(v147 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_listPickerButton);
  v153 = v180;
  *(v147 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_listPickerButton) = v180;
  v154 = v153;

  v155 = *(v147 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_titleTextView);
  *(v147 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_titleTextView) = v144;
  v156 = v144;

  v157 = *(v147 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_notesTextView);
  v158 = v179;
  *(v147 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_notesTextView) = v179;
  v159 = v158;

  v160 = *(v147 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_detailsLabel);
  v161 = v173;
  *(v147 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_detailsLabel) = v173;
  v162 = v161;

  v163 = [v140 rowIndexForArrangedSubview_];
  if (v163 == sub_21DBF4B4C())
  {

    v164 = 0;
  }

  else
  {
    v164 = [v140 rowAtIndex_];
  }

  (*(v184 + 8))(v177, v178);
  *(v147 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_detailsLabelRow) = v164;
  swift_unknownObjectRelease();
}

uint64_t sub_21D8418D8(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_titleModule];
  swift_beginAccess();
  sub_21D0EB8DC(a1, v3, &unk_27CE5F240, &unk_21DC104A0);
  swift_endAccess();
  if (!*v3)
  {
    return sub_21D0CF7E0(a1, &unk_27CE5F240, &unk_21DC104A0);
  }

  v4 = *(v3 + 1);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 24);
  swift_unknownObjectRetain();
  v7 = v1;
  v6(v1, &off_282ED6050, ObjectType, v4);
  v8 = *&v7[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_titleTextView];
  if (v8)
  {
    v9 = *(v4 + 48);
    v10 = v8;
    v9();
    swift_unknownObjectRelease();

    return sub_21D0CF7E0(a1, &unk_27CE5F240, &unk_21DC104A0);
  }

  sub_21D0CF7E0(a1, &unk_27CE5F240, &unk_21DC104A0);
  return swift_unknownObjectRelease();
}

uint64_t sub_21D841A30(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_notesModule];
  swift_beginAccess();
  sub_21D0EB8DC(a1, v3, &unk_27CE62920, &unk_21DC2BF30);
  swift_endAccess();
  if (!*v3)
  {
    return sub_21D0CF7E0(a1, &unk_27CE62920, &unk_21DC2BF30);
  }

  v4 = *(v3 + 1);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 40);
  swift_unknownObjectRetain();
  v7 = v1;
  v6(v1, &off_282ED6030, ObjectType, v4);
  v8 = *&v7[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_notesTextView];
  if (v8)
  {
    v9 = *(v4 + 64);
    v10 = v8;
    v9();
    swift_unknownObjectRelease();

    return sub_21D0CF7E0(a1, &unk_27CE62920, &unk_21DC2BF30);
  }

  sub_21D0CF7E0(a1, &unk_27CE62920, &unk_21DC2BF30);
  return swift_unknownObjectRelease();
}

void sub_21D841B88(uint64_t a1)
{
  v127 = a1;
  v2 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v2 - 8);
  *&v122 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F300, &qword_21DC16A60);
  MEMORY[0x28223BE20](v4 - 8);
  v120 = &v116 - v5;
  v121 = type metadata accessor for TTRIReminderCellNotesViewModel(0);
  v119 = *(v121 - 1);
  MEMORY[0x28223BE20](v121);
  v7 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520, &qword_21DC169F0);
  MEMORY[0x28223BE20](v8 - 8);
  v118 = &v116 - v9;
  v10 = type metadata accessor for TTRReminderCellTitleViewModel(0);
  v117 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v124 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v116 - v16;
  v18 = sub_21DBFB95C();
  v19 = *(v18 - 8);
  *&v20 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v22 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v1;
  v23 = [v1 view];
  if (!v23)
  {
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v24 = v23;
  v25 = *(v127 + 48);
  v123 = v7;
  if (v25 == 255)
  {
    v27 = 0;
  }

  else
  {
    v26 = *(v127 + 16);
    v128 = *v127;
    v129 = v26;
    v130 = *(v127 + 32);
    v131 = v25 & 1;
    v27 = TTRListColors.Color.nativeColor.getter();
  }

  [v24 setTintColor_];

  v28 = OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_listPickerButton;
  v29 = *&v125[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_listPickerButton];
  if (!v29)
  {
    goto LABEL_44;
  }

  v30 = v29;
  sub_21DBFB97C();

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_21D0CF7E0(v17, &unk_27CE5F2F0, qword_21DC0FEA0);
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    sub_21DBF8E0C();
    sub_21DBFB92C();
    v31 = *&v125[v28];
    if (!v31)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    (*(v19 + 16))(v14, v22, v18);
    (*(v19 + 56))(v14, 0, 1, v18);
    v32 = v31;
    sub_21DBFB98C();

    (*(v19 + 8))(v22, v18);
  }

  v33 = v124;
  v34 = type metadata accessor for TTRIQuickReminderViewModel(0);
  v35 = v34[6];
  v36 = v127;
  sub_21D105424(v127 + v35, v33, type metadata accessor for TTRRemindersListViewModel.Item);
  v37 = *(v36 + v34[8]);
  v126 = v34;
  v38 = v34[10];
  v39 = *(v36 + v38);
  v40 = qword_280D176B8;
  v41 = v37;
  sub_21DBF8E0C();
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = sub_21D900614(1);
  v43 = objc_opt_self();
  v44 = [v43 secondaryLabelColor];
  v45 = v10[7];
  v46 = v10[9];
  *(v33 + v10[5]) = 1;
  *(v33 + v45) = v37;
  *(v33 + v10[6]) = v42;
  v47 = v33 + v46;
  *(v33 + v10[8]) = 0;
  *v47 = 0;
  *(v47 + 8) = 0;
  *(v33 + v10[10]) = v39;
  *(v33 + v10[11]) = v44;
  *(v33 + v10[12]) = 0;
  v48 = &v125[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_titleModule];
  swift_beginAccess();
  if (*v48)
  {
    v49 = v33;
    v50 = *(v48 + 1);
    ObjectType = swift_getObjectType();
    v52 = v38;
    v53 = v35;
    v54 = v118;
    sub_21D105424(v49, v118, type metadata accessor for TTRReminderCellTitleViewModel);
    (*(v117 + 56))(v54, 0, 1, v10);
    v55 = *(v50 + 8);
    v56 = *(v55 + 16);
    swift_unknownObjectRetain();
    v57 = v54;
    v35 = v53;
    v38 = v52;
    v56(v57, ObjectType, v55);
    swift_unknownObjectRelease();
  }

  if (UIAccessibilityIsBoldTextEnabled())
  {
    v58 = 9;
  }

  else
  {
    v58 = 6;
  }

  v59 = sub_21D900614(v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530, &qword_21DC0FE40);
  inited = swift_initStackObject();
  v61 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_21DC08D20;
  v62 = *MEMORY[0x277D740C0];
  *(inited + 40) = v59;
  *(inited + 48) = v62;
  v63 = v61;
  v64 = v59;
  v65 = v62;
  *(inited + 56) = [v43 secondaryLabelColor];
  v66 = sub_21D177570(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F310, &unk_21DC0FE30);
  swift_arrayDestroy();
  v67 = v127;
  v68 = v123;
  sub_21D105424(v127 + v35, v123, type metadata accessor for TTRRemindersListViewModel.Item);
  v69 = *(v67 + v126[9]);
  v70 = *(v67 + v38);
  v71 = *(v67 + v126[11]);
  v72 = v121;
  v74 = v121[6];
  v73 = v121[7];
  *(v68 + v121[5]) = 1;
  *(v68 + v74) = v69;
  *(v68 + v73) = v66;
  *(v68 + v72[8]) = v70;
  *(v68 + v72[9]) = v71;
  v75 = &v125[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_notesModule];
  swift_beginAccess();
  if (*v75)
  {
    v76 = *(v75 + 1);
    v77 = swift_getObjectType();
    v78 = v64;
    v79 = v120;
    sub_21D105424(v68, v120, type metadata accessor for TTRIReminderCellNotesViewModel);
    (*(v119 + 56))(v79, 0, 1, v72);
    v80 = *(v76 + 16);
    sub_21DBF8E0C();
    swift_unknownObjectRetain();
    v81 = v69;
    v82 = v79;
    v64 = v78;
    v80(v82, v77, v76);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_21DBF8E0C();
    v83 = v69;
  }

  v84 = v122;
  v85 = *(v127 + v126[15]);
  v86 = v125;
  if (*(v85 + 16))
  {
    v87 = sub_21D494418(v85, v64);
    v88 = *&v86[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_detailsLabelRow];
    if (!v88)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    [v88 setHidden_];
    v89 = *&v86[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_detailsLabel];
    if (!v89)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    [v89 setAttributedText_];

    goto LABEL_26;
  }

  v90 = *&v125[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_detailsLabelRow];
  if (v90)
  {
    [v90 setHidden_];
LABEL_26:
    sub_21D105424(v127 + v126[12], v84, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
    v92 = (*(*(v91 - 8) + 48))(v84, 1, v91);
    if (v92 != 1)
    {

      v86 = v125;

      sub_21D0CF7E0(v84 + *(v91 + 64), &unk_27CE628E0, &unk_21DC17980);
      sub_21D8448F4(v84, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    }

    v93 = v92 != 1;
    v94 = sub_21D8438F0(&OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___dueDateItem, sub_21D8436E0);
    [v94 setSelected_];

    v95 = *(v127 + v126[13] + 32);
    v96 = sub_21D8438F0(&OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___locationItem, sub_21D843954);
    [v96 setSelected_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_21DC0AA00;
    v98 = *&v86[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___dueDateItem];
    v99 = *&v86[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___locationItem];
    *(v97 + 32) = v98;
    *(v97 + 40) = v99;
    v132 = v97;
    v100 = *(v127 + v126[14]);
    v122 = xmmword_21DC0AA00;
    if (v100 == 2)
    {
      v101 = *&v86[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_flaggedImageView];
      if (!v101)
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v102 = v98;
      v103 = v99;
      [v101 setHidden_];
    }

    else
    {
      v104 = v98;
      v105 = v99;
      v106 = sub_21D843BEC();
      if (v100)
      {
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v107 = sub_21DBFA12C();

      [v106 setTitle_];

      v108 = OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___flagBarButtonItem;
      v86 = v125;
      [*&v125[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___flagBarButtonItem] setSelected_];
      v109 = *&v86[v108];
      MEMORY[0x223D42D80]();
      if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v110 = *&v86[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_flaggedImageView];
      if (!v110)
      {
        goto LABEL_50;
      }

      [v110 setHidden_];
    }

    v111 = swift_initStackObject();
    *(v111 + 16) = v122;
    *(v111 + 32) = [objc_opt_self() flexibleSpaceItem];
    *(v111 + 40) = sub_21D843D58();
    sub_21D562204(v111);
    v112 = *&v86[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_toolbar];
    if (v112)
    {
      v113 = v86;
      sub_21D0D8CF0(0, &qword_280D0C300, 0x277D751E0);
      v114 = v112;
      v115 = sub_21DBFA5DC();

      [v114 setItems:v115 animated:0];

      [*&v113[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___doneBarButtonItem] setEnabled_];
      sub_21D8448F4(v123, type metadata accessor for TTRIReminderCellNotesViewModel);
      sub_21D8448F4(v124, type metadata accessor for TTRReminderCellTitleViewModel);
      return;
    }

    goto LABEL_45;
  }

LABEL_51:
  __break(1u);
}

id sub_21D842B20(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  if (*&v2[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_currentTextInputModeObserver])
  {

    TTRICurrentTextInputModeObserver.startObserving()();
  }

  v5 = OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_startsEditingTitleOnAppearance;
  if (v2[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_startsEditingTitleOnAppearance] == 1)
  {
    result = [v2 transitionCoordinator];
    if (result)
    {
      v6 = result;
      if ([result isAnimated])
      {
        v2[v5] = 0;
        v7 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v9[4] = sub_21D8448EC;
        v9[5] = v7;
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 1107296256;
        v9[2] = sub_21D83EFE8;
        v9[3] = &block_descriptor_17_3;
        v8 = _Block_copy(v9);

        [v6 animateAlongsideTransition:v8 completion:0];
        _Block_release(v8);
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_21D842C98(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_titleTextView);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      [v5 becomeFirstResponder];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_21D842D74()
{
  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_mainGrid);
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (byte_280D17220)
  {
    v2 = 20.0;
  }

  else
  {
    v2 = 8.0;
  }

  result = [result setLayoutMargins_];
  if (byte_280D17220 == 1)
  {
    v3 = OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_toolbar;
    result = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_toolbar);
    if (result)
    {
      [result setLayoutMargins_];
      result = *(v0 + v3);
      if (result)
      {
        [result setNeedsLayout];
        result = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_toolbarBottomConstraint);
        if (result)
        {
          return [result setConstant_];
        }

LABEL_16:
        __break(1u);
        return result;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  return result;
}

id sub_21D842F48(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_currentTextInputModeObserver];
  if (v4)
  {
    *(v4 + 16) = 0;
  }

  v5 = [v2 viewIfLoaded];
  if (v5)
  {
    v6 = v5;
    v7 = UIView.firstResponderDescendant.getter();

    if (v7)
    {
      [v7 resignFirstResponder];
    }
  }

  return [v2 resignFirstResponder];
}

uint64_t sub_21D8430B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_presenter);
  if (!*(v1 + 184))
  {
    *(v1 + 184) = 1;
    if (qword_27CE56D30 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_27CE627E8);
    v3 = sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC("Quick Reminder Cancel", 21, 2, v3);

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v1, &off_282ED5D48, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    *(v1 + 184) = 2;
  }

  return 1;
}

uint64_t sub_21D843210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF51AC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = *MEMORY[0x277D76A20];
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  if (!v6)
  {
    v8 = 0;
LABEL_6:
    v9 = [objc_opt_self() preferredFontForTextStyle_];
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v6 fontDescriptorWithDesign_];

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_7:

  UIFont.withCustomWeight(_:)(*MEMORY[0x277D743F8]);
  sub_21D1BB110();
  return sub_21DBF51CC();
}

id sub_21D843390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_21D0CF2E8(&v8, v10);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(v10, 0, sizeof(v10));
  if (a3)
  {
LABEL_3:
    sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
    v3 = sub_21DBFA5EC();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_21D0CF7E0(v10, &qword_27CE5C690, &unk_21DC11AB0);

  return v6;
}

char *sub_21D843484(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_presenter];
    v4 = result;
    swift_unknownObjectRetain();

    if (!*(v3 + 184))
    {
      *(v3 + 184) = 1;
      if (qword_27CE56D30 != -1)
      {
        swift_once();
      }

      v5 = sub_21DBF84BC();
      __swift_project_value_buffer(v5, qword_27CE627E8);
      v6 = sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21DAEACDC("Quick Reminder Cancel", 21, 2, v6);

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v3 + 40);
        ObjectType = swift_getObjectType();
        (*(v7 + 8))(v3, &off_282ED5D48, ObjectType, v7);
        swift_unknownObjectRelease();
      }

      *(v3 + 184) = 2;
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21D8435E4(void *a1)
{
  [a1 setTextContainerInset_];
  v2 = [a1 textContainer];
  [v2 setLineFragmentPadding_];

  v3 = [a1 textLayoutManager];
  if (v3)
  {
    v4 = v3;
    [v3 setUsesFontLeading_];
  }

  v5 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

  return [a1 setAdjustsFontForContentSizeCategory_];
}

void *sub_21D8436E0()
{
  sub_21D0D8CF0(0, &qword_280D0C300, 0x277D751E0);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  v2 = sub_21DBFAFDC();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_21D8446A8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D843390;
  aBlock[3] = &block_descriptor_13_4;
  v4 = _Block_copy(aBlock);

  [v2 _setSecondaryActionsProvider_];
  _Block_release(v4);
  return v2;
}

id sub_21D8438F0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void *sub_21D843954()
{
  sub_21D0D8CF0(0, &qword_280D0C300, 0x277D751E0);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  v2 = sub_21DBFAFDC();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_21D844678;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D843390;
  aBlock[3] = &block_descriptor_97;
  v4 = _Block_copy(aBlock);

  [v2 _setSecondaryActionsProvider_];
  _Block_release(v4);
  return v2;
}

uint64_t sub_21D843B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  swift_unknownObjectRetain();

  v7 = a4();
  swift_unknownObjectRelease();
  return v7;
}

id sub_21D843BEC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___flagBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___flagBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___flagBarButtonItem);
  }

  else
  {
    sub_21D0D8CF0(0, &qword_280D0C300, 0x277D751E0);
    v4 = sub_21DBFA12C();
    v5 = [objc_opt_self() _systemImageNamed_];

    sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = v0;
    sub_21DBFB77C();
    v7 = sub_21DBFAFDC();
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_21D843D58()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___doneBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___doneBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___doneBarButtonItem);
  }

  else
  {
    v4 = v0;
    if (qword_280D17218 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_280D17220 == 1)
    {
      v5 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:0 action:0];
      sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = sub_21DBFB77C();
      [v5 setPrimaryAction_];
    }

    else
    {
      sub_21D0D8CF0(0, &qword_280D0C300, 0x277D751E0);
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_21DBFB77C();
      v5 = sub_21DBFAFDC();
    }

    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *sub_21D844040(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_unknownObjectRetain();

    a3();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D844280()
{
  v0._object = 0x800000021DC63430;
  v0._countAndFlagsBits = 0xD000000000000019;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v0);
}

uint64_t sub_21D8442C8(uint64_t a1, uint64_t *a2)
{
  v21 = *a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0, &qword_21DC0E530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62910, &unk_21DC2BF20);
  v8 = *(v7 - 8);
  v19 = v7;
  v20 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = (a2 + OBJC_IVAR____TtC15RemindersUICore39TTRInCellEditingPresenterManagingHelper_textInputPrimaryLanguageObserver);
  *v11 = a1;
  v11[1] = &protocol witness table for TTRICurrentTextInputModeObserver;
  swift_unknownObjectRelease();
  v12 = off_282EB5270;
  type metadata accessor for TTRICurrentTextInputModeObserver();
  swift_unknownObjectRetain();
  v23 = v12();
  v13 = [objc_opt_self() mainRunLoop];
  v22 = v13;
  v14 = sub_21DBFBA0C();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A358, &qword_21DC18F00);
  sub_21D0D8CF0(0, &qword_280D17650, 0x277CBEB88);
  sub_21D0D0F1C(&qword_280D0C480, &qword_27CE5A358, &qword_21DC18F00, MEMORY[0x277CBCD90]);
  sub_21D5A51D8();
  sub_21DBF936C();
  sub_21D0CF7E0(v6, &qword_27CE5A0F0, &qword_21DC0E530);

  sub_21D0D0F1C(&qword_280D0C508, &unk_27CE62910, &unk_21DC2BF20, MEMORY[0x277CBCD60]);
  v15 = v19;
  v16 = sub_21DBF91AC();
  (*(v20 + 8))(v10, v15);
  *(a2 + OBJC_IVAR____TtC15RemindersUICore39TTRInCellEditingPresenterManagingHelper_textInputPrimaryLanguageCancellable) = v16;
}

void sub_21D8446D8()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_currentTextInputModeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_mainGrid) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_listPickerButton) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_titleTextView) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_notesTextView) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_flaggedImageView) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_detailsLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_detailsLabelRow) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_toolbar) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_toolbarBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_startsEditingTitleOnAppearance) = 1;
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_titleModule);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v2 = (v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_notesModule);
  v2[1] = 0u;
  v2[2] = 0u;
  *v2 = 0u;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___dueDateItem) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___locationItem) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___flagBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___doneBarButtonItem) = 0;
  sub_21DBFC31C();
  __break(1u);
}

void sub_21D844818()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidAppear_, 1);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = UIView.firstResponderDescendant.getter();

  if (v4)
  {
  }

  else
  {
    [v1 becomeFirstResponder];
  }

  if (v1[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_startsEditingTitleOnAppearance] == 1)
  {
    v1[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_startsEditingTitleOnAppearance] = 0;
    v5 = *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_titleTextView];
    if (v5)
    {
      [v5 becomeFirstResponder];
      return;
    }

LABEL_10:
    __break(1u);
  }
}

uint64_t sub_21D8448F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D84498C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

id static TTRIQuickReminderAssembly.createViewController(initialListUsedForReminderCreation:reminderChangeItem:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for TTRIQuickReminderViewModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v134 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v132);
  v133 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingParams(0);
  MEMORY[0x28223BE20](v129);
  v130 = (&v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = sub_21DBF54CC();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v9 - 8);
  v124 = &v115 - v10;
  v142 = sub_21DBF582C();
  v141 = *(v142 - 1);
  MEMORY[0x28223BE20](v142);
  v140 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v12 - 8);
  v123 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v138 = (&v115 - v15);
  v139 = sub_21DBF7B0C();
  v128 = *(v139 - 1);
  MEMORY[0x28223BE20](v139);
  v137 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBF9D8C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *a1;
  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  v24 = objc_allocWithZone(TTRUndoManager);
  v25 = a2;
  v26 = sub_21DBFA12C();
  v27 = [v24 initWithDebugIdentifier_];

  v157[0] = v25;
  v157[1] = 0;
  if (v23 && (v22 & 1) != 0 && (v28 = v21, v21))
  {
    v29 = v28;
    v30 = v25;
    v31 = [v29 objectID];
  }

  else
  {
    v32 = v25;
    v21 = 0;
    v31 = 0;
  }

  v150 = 0u;
  v151 = 0u;
  v149 = sub_21D845E3C;
  v152 = 0;
  v153 = 1;
  v154 = 0;
  v155 = v21;
  v156 = v31;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v144 = 0;
  type metadata accessor for TTRReminderDetailInteractor();
  swift_allocObject();
  v33 = v27;
  v143 = TTRReminderDetailInteractor.init(subject:undoManager:pendingMoveContext:manualOrdering:dueDateSource:)(v157, v33, &v149, &v145, &v144);
  v131 = v25;
  v34 = [v25 saveRequest];
  v35 = [v34 store];

  v36 = sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  *v20 = sub_21DBFB12C();
  (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
  LOBYTE(v34) = sub_21DBF9DAC();
  result = (*(v18 + 8))(v20, v17);
  if (v34)
  {
    v122 = v33;
    v38 = objc_allocWithZone(type metadata accessor for TTRGeoLocationService(0));
    v39 = sub_21D0D7EE0(v38, 0, 0);
    sub_21DBFB12C();
    v118 = sub_21DBF60DC();
    sub_21DBF60BC();
    v40 = sub_21DBF633C();
    swift_allocObject();
    v41 = sub_21DBF62FC();
    v42 = type metadata accessor for TTRReminderLocationOptionsProvider();
    v43 = swift_allocObject();
    v44 = v35;

    v119 = v39;
    v45 = sub_21D5A4408(v44, v41, v119, v43);

    v149 = MEMORY[0x277D84F90];
    sub_21D5A4568(&qword_280D0C7C0, MEMORY[0x277D45750], MEMORY[0x277D45768]);
    v120 = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D170, &unk_21DC18DD0);
    sub_21D0D9418(&qword_280D0C3B8, &qword_27CE5D170, &unk_21DC18DD0);
    sub_21DBFBCBC();
    v46 = sub_21DBF563C();
    v47 = *(v46 - 8);
    v48 = v138;
    (*(v47 + 56))(v138, 1, 1, v46);
    v121 = v36;
    v116 = sub_21DBFB12C();
    v49 = sub_21DBF60CC();
    v50 = v140;
    sub_21DBF575C();
    type metadata accessor for TTRReminderTitleAttributesHarvester(0);
    v51 = swift_allocObject();
    *&v151 = v42;
    *(&v151 + 1) = &protocol witness table for TTRReminderLocationOptionsProvider;
    v117 = v42;
    v52 = v51;
    v149 = v45;
    *(&v146 + 1) = v40;
    *&v147 = MEMORY[0x277D44FA8];
    v118 = v40;
    v53 = v46;
    *&v145 = v41;
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    v54 = OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_requestSubject;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA0, &qword_21DC18B00);
    swift_allocObject();
    v136 = v41;
    swift_retain_n();
    v135 = v45;
    swift_retain_n();
    *(v52 + v54) = sub_21DBF7D2C();
    *(v52 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_resultsPublisherSelfSubscriptionCancellable) = 0;
    (*(v141 + 16))(v52 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_initialParserLocale, v50, v142);
    sub_21D0D3954(v48, v52 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_now, &qword_27CE58D68, &unk_21DC0C060);
    v55 = v123;
    sub_21D0D3954(v48, v123, &qword_27CE58D68, &unk_21DC0C060);
    v56 = [objc_opt_self() defaultTimeZone];
    v57 = v124;
    sub_21DBF5C2C();

    v58 = sub_21DBF5C4C();
    v59 = *(v58 - 8);
    (*(v59 + 56))(v57, 0, 1, v58);
    v60 = v55;
    v61 = sub_21DBF574C();
    v62 = 0;
    if ((*(v47 + 48))(v60, 1, v53) != 1)
    {
      v62 = sub_21DBF55BC();
      (*(v47 + 8))(v60, v53);
    }

    if ((*(v59 + 48))(v57, 1, v58) == 1)
    {
      v63 = 0;
    }

    else
    {
      v63 = sub_21DBF5C0C();
      (*(v59 + 8))(v57, v58);
    }

    v64 = [objc_allocWithZone(MEMORY[0x277D45A90]) initWithLocale:v61 referenceDate:v62 referenceTimeZone:v63 forTesting:0];

    v65 = *(v52 + 24);
    *(v52 + 24) = v64;

    sub_21DBF661C();
    sub_21D0D8CF0(0, &qword_280D0C1D8, 0x277D44710);
    v66 = v125;
    sub_21DBFB69C();
    v67 = sub_21DBF65FC();
    (*(v126 + 8))(v66, v127);
    *(v52 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_listPredictor) = v67;
    *(v52 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_queue) = v116;
    *(v52 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue) = v49;
    sub_21D0D32E4(&v149, v52 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider);
    sub_21D0D32E4(&v145, v52 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_contactsProvider);
    v68 = v120;
    *(v52 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_store) = v120;
    v69 = v128;
    v70 = v137;
    v71 = v139;
    (*(v128 + 16))(v52 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_excludedSuggestedAttributes, v137, v139);
    [objc_allocWithZone(MEMORY[0x277D44870]) initWithQueue:v49 store:v68];
    sub_21DBF7CCC();
    swift_allocObject();
    v72 = sub_21DBF7B7C();
    v73 = v135;

    v74 = v136;

    (*(v141 + 8))(v140, v142);
    sub_21D0CF7E0(v138, &qword_27CE58D68, &unk_21DC0C060);
    (*(v69 + 8))(v70, v71);
    __swift_destroy_boxed_opaque_existential_0(&v145);
    __swift_destroy_boxed_opaque_existential_0(&v149);
    *(v52 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester) = v72;
    v75 = (v52 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_timeZone);
    *v75 = sub_21D4C4CA0;
    v75[1] = 0;
    v76 = type metadata accessor for TTRIReminderTitleAttributesStyler();
    v77 = swift_allocObject();
    type metadata accessor for TTRReminderTitleAttributesInteractor();
    v78 = swift_allocObject();
    v78[7] = v76;
    v78[8] = &protocol witness table for TTRIReminderTitleAttributesStyler;
    v78[4] = v77;
    v78[12] = v118;
    v78[13] = MEMORY[0x277D44FA8];
    v78[9] = v74;
    v78[17] = v117;
    v78[18] = &protocol witness table for TTRReminderLocationOptionsProvider;
    v78[14] = v73;
    v78[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1C8, &qword_21DC18ED0);
    swift_allocObject();

    v78[19] = sub_21DBF7D2C();
    v78[3] = v52;
    type metadata accessor for TTRLocationQuickPicksInteractor();
    v79 = swift_allocObject();
    v80 = v119;
    v142 = v80;

    v81 = sub_21D5A3CE4(v80, v73, v79);
    type metadata accessor for TTRReminderListPickerInteractor();
    v82 = swift_allocObject();
    *(v82 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v82 + 32) = v68;
    v83 = type metadata accessor for TTRIQuickReminderRouter();
    v84 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *&v151 = v83;
    *(&v151 + 1) = &off_282ED5FD0;
    v149 = v84;
    v141 = v84;
    type metadata accessor for TTRIQuickReminderPresenter(0);
    v85 = swift_allocObject();
    v86 = __swift_mutable_project_boxed_opaque_existential_1(&v149, v83);
    v139 = &v115;
    v87 = MEMORY[0x28223BE20](v86);
    v89 = (&v115 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v90 + 16))(v89, v87);
    v91 = *v89;
    *(&v146 + 1) = v83;
    *&v147 = &off_282ED5FD0;
    *&v145 = v91;
    *(v85 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v85 + 40) = 0;
    swift_unknownObjectWeakInit();
    type metadata accessor for TTRRemindersListEditingSessionPropertiesSharingWrapper();
    v92 = swift_allocObject();
    *(v92 + 16) = MEMORY[0x277D84F98];
    *(v85 + 176) = v92;
    *(v85 + 184) = 0;
    v93 = OBJC_IVAR____TtC15RemindersUICore26TTRIQuickReminderPresenter_viewModel;
    v140 = v68;
    swift_retain_n();
    v94 = v143;

    v138 = v81;

    sub_21D4932D0(v85 + v93);
    *(v85 + OBJC_IVAR____TtC15RemindersUICore26TTRIQuickReminderPresenter_locationTriggerCancellable) = 0;
    v95 = (v85 + OBJC_IVAR____TtC15RemindersUICore26TTRIQuickReminderPresenter_currentEventHandler);
    *v95 = 0u;
    v95[1] = 0u;
    *(v85 + 48) = v94;
    *(v85 + 56) = &protocol witness table for TTRReminderDetailInteractor;
    sub_21D0D32E4(&v145, v85 + 64);
    *(v85 + 112) = sub_21D8471DC;
    *(v85 + 120) = v78;
    *(v85 + 128) = sub_21D846AD4;
    *(v85 + 136) = 0;
    *(v85 + 144) = v81;
    *(v85 + 152) = &protocol witness table for TTRLocationQuickPicksInteractor;
    type metadata accessor for TTRInCellEditingPresenterManagingHelper(0);
    swift_allocObject();

    v96 = MEMORY[0x277D84F90];
    *(v85 + 104) = sub_21DBCEC2C(MEMORY[0x277D84F90]);
    v97 = *(v129 + 20);
    v98 = *MEMORY[0x277D45018];
    v99 = sub_21DBF647C();
    v100 = v130;
    (*(*(v99 - 8) + 104))(v130 + v97, v98, v99);
    *v100 = v82;
    v100[1] = &protocol witness table for TTRReminderListPickerInteractor;
    type metadata accessor for TTRIListPickerContextualMenuAssembly.CacheableAccountsFetcher(0);
    v101 = swift_allocObject();
    *(v101 + 16) = 0;
    *(v101 + OBJC_IVAR____TtCO15RemindersUICore36TTRIListPickerContextualMenuAssembly24CacheableAccountsFetcher_inflightFetch) = 0;
    sub_21D847294(v100, v101 + OBJC_IVAR____TtCO15RemindersUICore36TTRIListPickerContextualMenuAssembly24CacheableAccountsFetcher_params, type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingParams);
    *(v85 + 160) = v101;
    v102 = sub_21DBFB12C();
    type metadata accessor for TTRDeferredAction();
    v103 = swift_allocObject();
    v103[3] = 0;
    swift_unknownObjectWeakInit();
    v144 = v96;
    sub_21D5A4568(&qword_280D0C860, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
    sub_21D0D9418(&qword_280D0C3D0, &unk_27CE5CD90, &unk_21DC0F180);
    sub_21DBFBCBC();
    sub_21DBF5EFC();
    swift_allocObject();
    v104 = sub_21DBF5EEC();
    v105 = MEMORY[0x277D84F90];
    v103[5] = v104;
    v103[6] = v105;
    v103[4] = v102;
    *(v85 + 168) = v103;
    v106 = *(v85 + 104);
    swift_beginAccess();
    *(v106 + 24) = &off_282ED5DB0;
    swift_unknownObjectWeakAssign();
    v107 = *(v85 + 168);
    swift_beginAccess();
    *(v107 + 24) = &off_282ED5DA0;
    swift_unknownObjectWeakAssign();
    v108 = v134;
    sub_21D83AB24(v134);
    v109 = OBJC_IVAR____TtC15RemindersUICore26TTRIQuickReminderPresenter_viewModel;
    swift_beginAccess();
    sub_21D83E948(v108, v85 + v109);
    swift_endAccess();
    TTRIListPickerContextualMenuAssembly.CacheableAccountsFetcher.startFetchingIfNeeded()();

    __swift_destroy_boxed_opaque_existential_0(&v145);
    __swift_destroy_boxed_opaque_existential_0(&v149);
    v110 = objc_allocWithZone(type metadata accessor for TTRIQuickReminderViewController());
    v111 = v122;

    v113 = sub_21D847078(v112, v111, v110);

    TTRReminderDetailInteractor.delegate.setter(v114, &off_282ED5D80);

    *(v85 + 24) = &off_282ED6080;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();

    return v113;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21D845E3C(void *a1)
{
  if (qword_280D1AA10 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  sub_21DA5392C(a1, 3);
}

_OWORD *sub_21D845EA4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X6>, char **a7@<X8>)
{
  v88 = a5;
  v89 = a4;
  v92 = a3;
  v93 = a2;
  v97 = a1;
  v90 = a7;
  v8 = *a6;
  v9 = sub_21DBF9D8C();
  v95 = *(v9 - 8);
  v96 = v9;
  MEMORY[0x28223BE20](v9);
  v94 = (&v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108[3] = v8;
  v108[4] = &protocol witness table for TTRReminderTitleAttributesInteractor;
  v108[0] = a6;
  v14 = type metadata accessor for TTRReminderCellTitleSuggestedAttributeSplitter();
  v15 = swift_allocObject();
  v107[3] = v14;
  v107[4] = &protocol witness table for TTRReminderCellTitleSuggestedAttributeSplitter;
  v107[0] = v15;
  type metadata accessor for TTRReminderCellTitleInteractor();
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  v87 = v16;
  swift_unknownObjectWeakInit();
  v86 = type metadata accessor for TTRIReminderCellTitleRouter();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = v17;
  swift_unknownObjectWeakAssign();
  type metadata accessor for TTRReminderCellHashtagInteractor();
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRReminderCellInlineHashtagEditingPresenter(0);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D84FA0];
  v19[5] = MEMORY[0x277D84FA0];
  v19[6] = v20;
  v19[7] = 0;

  sub_21DBF78BC();
  v19[2] = v18;
  v19[3] = &protocol witness table for TTRReminderCellHashtagInteractor;
  type metadata accessor for TTRInlineHashtagEditProcessor();
  v21 = swift_allocObject();
  type metadata accessor for TTRReminderTextChangeDetailAdjuster();
  *(v21 + 16) = swift_allocObject();
  *(v21 + 24) = 75;
  v19[4] = v21;
  v22 = type metadata accessor for TTRAttachmentThumbnailSizeProvider();
  v23 = swift_allocObject();
  v23[1] = vdupq_n_s64(0x4043000000000000uLL);
  v23[2].i64[0] = 0x405C800000000000;
  v23[2].i8[8] = 1;
  v91 = sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v24 = sub_21DBFB12C();
  sub_21DBF60DC();
  v25 = sub_21DBF60CC();
  v26 = type metadata accessor for TTRThumbnailGenerator();
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  v28 = objc_allocWithZone(MEMORY[0x277CCABD8]);
  v29 = v24;
  v30 = [v28 init];
  *(v27 + 24) = v30;
  [v30 setUnderlyingQueue_];

  *(&v105 + 1) = v26;
  v106 = &protocol witness table for TTRThumbnailGenerator;
  *&v104 = v27;
  type metadata accessor for TTRAttachmentThumbnailsManager();
  v31 = swift_allocObject();
  v31[5] = v22;
  v31[6] = &protocol witness table for TTRAttachmentThumbnailSizeProvider;
  v31[2] = v23;
  v32 = MEMORY[0x277D84F98];
  v31[12] = 0;
  v31[13] = v32;
  v31[14] = MEMORY[0x277D84FA0];
  sub_21D0D0FD0(&v104, (v31 + 7));
  sub_21D1D338C(v97, v13);
  sub_21D0D32E4(v108, &v104);
  type metadata accessor for TTRReminderCellTitleEditingPresenter(0);
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v33 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v33 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesCancellable) = 0;
  v34 = (v33 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  *v34 = 0;
  v34[1] = 0;
  *(v33 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_shouldSkipSavingEditingSession) = 0;
  *(v33 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleSuggestedAttributeAcceptance) = v32;
  *(v33 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isCommittingForShowReminderDetail) = 0;
  *(v33 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_attachmentThumbnailsManager) = 0;
  sub_21D1D338C(v13, v33 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item);
  v35 = (v33 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter);
  *v35 = v19;
  v35[1] = &protocol witness table for TTRReminderCellInlineHashtagEditingPresenter;
  sub_21D0D0FD0(&v104, v33 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor);
  *(v33 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) = 1;
  *(v33 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_animatesReminderCreationForReturnKey) = 0;
  *(v33 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_parentType) = 0;
  swift_beginAccess();
  *(v33 + 40) = v92;
  swift_unknownObjectWeakAssign();
  *(v33 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_attachmentThumbnailsManager) = v31;
  v36 = v33 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  v92 = v13;
  sub_21D847294(v13, v33 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state, type metadata accessor for TTRRemindersListViewModel.Item);
  v37 = _s15RemindersUICore12EditingStateVMa_1(0);
  *(v36 + v37[5]) = 0;
  *(v36 + v37[6]) = 0;
  v38 = (v36 + v37[7]);
  *v38 = 0u;
  v38[1] = 0u;
  v39 = (v36 + v37[8]);
  *v39 = 0u;
  v39[1] = 0u;
  *(v36 + v37[9]) = 0;
  *(v36 + v37[10]) = 0;
  *(v36 + v37[11]) = 0;
  v40 = qword_280D155F0;

  v93 = v19;

  if (v40 != -1)
  {
    swift_once();
  }

  if (qword_280D15600)
  {
    v41 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v42 = sub_21DBFA12C();
    v85 = [v41 initWithBundleIdentifier_];
  }

  else
  {
    v85 = [objc_opt_self() currentNotificationCenter];
  }

  v106 = 0;
  v104 = 0u;
  v105 = 0u;
  v43 = [objc_opt_self() daemonUserDefaults];
  type metadata accessor for TTRIPrivacyChecker();
  v44 = swift_allocObject();
  v44[3] = 0;
  swift_unknownObjectWeakInit();
  v44[18] = 0;
  swift_beginAccess();
  v44[3] = &off_282EC4F60;
  swift_unknownObjectWeakAssign();
  v45 = type metadata accessor for TTRGeoLocationService(0);
  v102 = v45;
  v103 = &protocol witness table for TTRGeoLocationService;
  v46 = sub_21DBFB12C();
  v48 = v94;
  v47 = v95;
  *v94 = v46;
  v49 = v96;
  (*(v47 + 104))(v48, *MEMORY[0x277D85200], v96);
  v50 = sub_21DBF9DAC();
  result = (*(v47 + 8))(v48, v49);
  if (v50)
  {
    v96 = v31;
    *&v101 = sub_21D0D7EE0(objc_allocWithZone(v45), 0, 0);
    sub_21D0D0FD0(&v101, (v44 + 4));
    type metadata accessor for TTRNotificationsAccessService();
    v52 = swift_allocObject();
    v52[2] = v43;
    v52[3] = &protocol witness table for REMDaemonUserDefaults;
    v53 = v85;
    v52[4] = v85;
    v44[9] = v52;
    v44[10] = &protocol witness table for TTRNotificationsAccessService;
    v44[11] = v43;
    v44[12] = &protocol witness table for REMDaemonUserDefaults;
    sub_21D0D3954(&v104, &v99, &qword_27CE5E0A0, &unk_21DC1BB80);
    if (v100)
    {
      v54 = v43;
      sub_21D0CF7E0(&v104, &qword_27CE5E0A0, &unk_21DC1BB80);
      sub_21D0D0FD0(&v99, &v101);
    }

    else
    {
      v55 = type metadata accessor for TTRUrgentAlarmAuthorizationService();
      v56 = swift_allocObject();
      v57 = sub_21DBF5EAC();
      swift_allocObject();
      v58 = v43;
      v59 = v53;
      v60 = sub_21DBF5E9C();
      v61 = MEMORY[0x277D44D00];
      v56[5] = v57;
      v56[6] = v61;
      v56[2] = v60;
      v102 = v55;
      v103 = &protocol witness table for TTRUrgentAlarmAuthorizationService;

      *&v101 = v56;
      sub_21D0CF7E0(&v104, &qword_27CE5E0A0, &unk_21DC1BB80);
      if (v100)
      {
        sub_21D0CF7E0(&v99, &qword_27CE5E0A0, &unk_21DC1BB80);
      }
    }

    sub_21D0D0FD0(&v101, (v44 + 13));
    v62 = v92;
    sub_21D1D338C(v97, v92);
    sub_21D0D3954(v107, &v104, &qword_27CE5E0A8, &unk_21DC1C6F0);
    v63 = v86;
    v102 = v86;
    v103 = &off_282EC4F50;
    *&v101 = v98;
    type metadata accessor for TTRIReminderCellTitlePresenter(0);
    v64 = swift_allocObject();
    v65 = __swift_mutable_project_boxed_opaque_existential_1(&v101, v63);
    v66 = MEMORY[0x28223BE20](v65);
    v68 = (&v85 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v69 + 16))(v68, v66);
    v70 = *v68;
    v71 = &v64[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_router];
    *(v71 + 3) = v63;
    *(v71 + 4) = &off_282EC4F50;
    *v71 = v70;
    *(v64 + 3) = 0;
    swift_unknownObjectWeakInit();
    *(v64 + 5) = 0;
    swift_unknownObjectWeakInit();
    *(v64 + 7) = 0;
    swift_unknownObjectWeakInit();
    v72 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_viewModel;
    v73 = type metadata accessor for TTRReminderCellTitleViewModel(0);
    (*(*(v73 - 8) + 56))(&v64[v72], 1, 1, v73);
    sub_21D847294(v62, &v64[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_item], type metadata accessor for TTRRemindersListViewModel.Item);
    v74 = &v64[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_interactor];
    v75 = v87;
    *v74 = v87;
    v74[1] = &protocol witness table for TTRReminderCellTitleInteractor;
    v76 = &v64[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter];
    *v76 = v33;
    v76[1] = &protocol witness table for TTRReminderCellTitleEditingPresenter;
    v77 = &v64[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_quickBar];
    *v77 = 0;
    *(v77 + 1) = 0;
    v78 = &v64[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_augmentationSplitter];
    v79 = v105;
    *v78 = v104;
    *(v78 + 1) = v79;
    *(v78 + 4) = v106;
    *&v64[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_privacyChecker] = v44;
    v64[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_ownerModule] = 0;
    *&v64[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_returnKeyType] = 0;

    __swift_destroy_boxed_opaque_existential_0(&v101);
    v80 = type metadata accessor for TTRIReminderCellTitleViewController();
    v81 = objc_allocWithZone(v80);

    v83 = sub_21D57816C(v82, v81);
    swift_beginAccess();
    *(v75 + 24) = &off_282EC5918;
    swift_unknownObjectWeakAssign();
    *(v64 + 3) = &off_282EC5640;
    swift_unknownObjectWeakAssign();
    *(v64 + 7) = v88;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    *(v33 + 24) = &off_282EC58C8;
    swift_unknownObjectWeakAssign();
    *(&v105 + 1) = v80;

    *&v104 = v83;

    sub_21D0CF7E0(v107, &qword_27CE5E0A8, &unk_21DC1C6F0);
    __swift_destroy_boxed_opaque_existential_0(v108);
    v84 = v90;
    *v90 = v64;
    v84[1] = &off_282EC5888;
    return sub_21D0CF2E8(&v104, v84 + 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D846AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v43 = a4;
  v44 = a3;
  v42 = a2;
  v45 = a5;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRReminderCellNotesInteractor();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  v10 = type metadata accessor for TTRIReminderCellNotesRouter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  type metadata accessor for TTRReminderCellHashtagInteractor();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRReminderCellInlineHashtagEditingPresenter(0);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D84FA0];
  v13[5] = MEMORY[0x277D84FA0];
  v13[6] = v14;
  v13[7] = 0;
  sub_21DBF78BC();
  v13[2] = v12;
  v13[3] = &protocol witness table for TTRReminderCellHashtagInteractor;
  type metadata accessor for TTRInlineHashtagEditProcessor();
  v15 = swift_allocObject();
  type metadata accessor for TTRReminderTextChangeDetailAdjuster();
  *(v15 + 16) = swift_allocObject();
  *(v15 + 24) = 75;
  v13[4] = v15;
  type metadata accessor for TTRParagraphStyleEditingPresenter();
  v16 = swift_allocObject();
  v41 = v16;
  sub_21D1D338C(a1, v8);
  type metadata accessor for TTRReminderCellNotesEditingPresenter(0);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 40) = 0;
  swift_unknownObjectWeakInit();
  v18 = (v17 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession);
  *v18 = 0;
  v18[1] = 0;
  *(v17 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_shouldSkipSavingEditingSession) = 0;
  v19 = v17 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state;
  *v19 = 0;
  *(v19 + 24) = 0u;
  *(v19 + 8) = 0u;
  sub_21D847294(v8, v17 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_item, type metadata accessor for TTRRemindersListViewModel.Item);
  v20 = (v17 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_inlineHashtagEditingPresenter);
  *v20 = v13;
  v20[1] = &protocol witness table for TTRReminderCellInlineHashtagEditingPresenter;
  v21 = (v17 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_paragraphStyleEditingPresenter);
  *v21 = v16;
  v21[1] = &protocol witness table for TTRParagraphStyleEditingPresenter;
  swift_beginAccess();
  *(v17 + 40) = v42;
  swift_unknownObjectWeakAssign();
  sub_21D1D338C(a1, v8);
  v46[3] = v10;
  v46[4] = &off_282EC4E18;
  v46[0] = v11;
  type metadata accessor for TTRIReminderCellNotesPresenter(0);
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v46, v10);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = (&v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v24);
  v28 = *v26;
  v29 = (v22 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_router);
  v29[3] = v10;
  v29[4] = &off_282EC4E18;
  *v29 = v28;
  *(v22 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + 64) = 0;
  swift_unknownObjectWeakInit();
  v30 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_viewModel;
  v31 = type metadata accessor for TTRIReminderCellNotesViewModel(0);
  (*(*(v31 - 8) + 56))(v22 + v30, 1, 1, v31);
  sub_21D847294(v8, v22 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_item, type metadata accessor for TTRRemindersListViewModel.Item);
  *(v22 + 16) = 1;
  v32 = (v22 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_interactor);
  *v32 = v9;
  v32[1] = &protocol witness table for TTRReminderCellNotesInteractor;
  v33 = (v22 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_editingPresenter);
  *v33 = v17;
  v33[1] = &protocol witness table for TTRReminderCellNotesEditingPresenter;
  v34 = (v22 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_quickBar);
  *v34 = 0;
  v34[1] = 0;
  *(v22 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_ownerModule) = 0;

  __swift_destroy_boxed_opaque_existential_0(v46);
  v35 = type metadata accessor for TTRIReminderCellNotesViewController();
  v36 = objc_allocWithZone(v35);

  v38 = sub_21D590F80(v37, v36);
  swift_beginAccess();
  *(v9 + 24) = &off_282EC5AB0;
  swift_unknownObjectWeakAssign();
  *(v22 + 32) = &off_282EC56F0;
  swift_unknownObjectWeakAssign();
  *(v22 + 48) = v43;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v17 + 24) = &off_282EC5A70;
  swift_unknownObjectWeakAssign();
  v39 = v45;
  v45[5] = v35;

  v39[2] = v38;
  *v39 = v22;
  v39[1] = &off_282EC5A28;
  return result;
}

id sub_21D847078(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_currentTextInputModeObserver] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_mainGrid] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_listPickerButton] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_titleTextView] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_notesTextView] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_flaggedImageView] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_detailsLabel] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_detailsLabelRow] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_toolbar] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_toolbarBottomConstraint] = 0;
  a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_startsEditingTitleOnAppearance] = 1;
  v7 = &a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_titleModule];
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v8 = &a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_notesModule];
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  *&a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___dueDateItem] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___locationItem] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___flagBarButtonItem] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController____lazy_storage___doneBarButtonItem] = 0;
  v9 = &a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_presenter];
  *v9 = a1;
  v9[1] = &off_282ED5CE8;
  *&a3[OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_localUndoManager] = a2;
  v11.receiver = a3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_21D847294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21D8472FC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v19 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_27CE62998, 0x277D75940);
    sub_21D849D70();
    sub_21DBFAB5C();
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
    v6 = v18;
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

  while (v2 < 0)
  {
    if (!sub_21DBFBDBC() || (sub_21D0D8CF0(0, &qword_27CE62998, 0x277D75940), swift_dynamicCast(), (v12 = v13) == 0))
    {
LABEL_21:
      sub_21D0CFAF8(v2);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x223D42D80]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
    }

    else
    {
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_12:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t sub_21D847568(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223D44740](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject windows];
      sub_21D0D8CF0(0, &qword_27CE629A8, 0x277D75DA0);
      v8 = sub_21DBFA5EC();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_21DBFBD7C();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_21DBFBD7C();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_21DBFBD7C();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_21DBFBF9C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_21DBFBD7C();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_21D0D0F1C(&qword_27CE629B8, &qword_27CE629B0, &unk_21DC2C018, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE629B0, &unk_21DC2C018);
              v19 = sub_21D198D24(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_21DBFBD7C();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

id sub_21D8478FC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for TTRISizedToFitImageView()) initWithFrame_];
    [v4 setClipsToBounds_];
    if (AXDeviceHasHomeButton())
    {
      [v4 setContentMode_];
    }

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_21D8479BC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___imageView);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___imageView) = a1;
}

void (*sub_21D8479D0(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_21D8478FC();
  return sub_21D847A18;
}

void sub_21D847A18(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___imageView);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___imageView) = v2;
}

id sub_21D847A50()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = sub_21D10FA9C(*MEMORY[0x277D769A8], *MEMORY[0x277D743F8], 0, 0);
  [v0 setFont_];

  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setTextAlignment_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v3 = sub_21DBFA12C();
  [v0 setText_];

  return v0;
}

void sub_21D847B80(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___titleLabel);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___titleLabel) = a1;
}

void (*sub_21D847B94(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_21D847A30();
  return sub_21D847BDC;
}

void sub_21D847BDC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___titleLabel);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___titleLabel) = v2;
}

id sub_21D847C14(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_21D847C74()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v1 = sub_21D900614(1);
  [v0 setFont_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setTextAlignment_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v3 = sub_21DBFA12C();
  [v0 setText_];

  return v0;
}

void sub_21D847DC4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___subtitleLabel);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___subtitleLabel) = a1;
}

void (*sub_21D847DD8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_21D847BF4();
  return sub_21D847E20;
}

void sub_21D847E20(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___subtitleLabel);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___subtitleLabel) = v2;
}

id sub_21D847E38()
{
  v1 = v0;
  v2 = sub_21DBFB8DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBFB95C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___primaryButton;
  v14 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___primaryButton);
  if (v14)
  {
    v15 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___primaryButton);
  }

  else
  {
    sub_21DBFB93C();
    sub_21DBFB92C();
    (*(v3 + 104))(v5, *MEMORY[0x277D75020], v2);
    sub_21DBFB7DC();
    sub_21D0D8CF0(0, &qword_280D0C1C0, 0x277D75220);
    (*(v7 + 16))(v9, v12, v6);
    v16 = sub_21DBFB96C();
    [v16 setHidden_];
    (*(v7 + 8))(v12, v6);
    v17 = *(v1 + v13);
    *(v1 + v13) = v16;
    v15 = v16;

    v14 = 0;
  }

  v18 = v14;
  return v15;
}

void sub_21D848094(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___primaryButton);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___primaryButton) = a1;
}

void (*sub_21D8480A8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_21D847E38();
  return sub_21D8480F0;
}

void sub_21D8480F0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___primaryButton);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___primaryButton) = v2;
}

id sub_21D848108(__n128 a1)
{
  v2 = v1;
  v3 = sub_21DBFB95C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___secondaryButton;
  v11 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___secondaryButton);
  if (v11)
  {
    v12 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___secondaryButton);
  }

  else
  {
    sub_21DBFB90C();
    sub_21DBFB92C();
    sub_21D0D8CF0(0, &qword_280D0C1C0, 0x277D75220);
    (*(v4 + 16))(v6, v9, v3);
    v13 = sub_21DBFB96C();
    [v13 setHidden_];
    (*(v4 + 8))(v9, v3);
    v14 = *(v2 + v10);
    *(v2 + v10) = v13;
    v12 = v13;

    v11 = 0;
  }

  v15 = v11;
  return v12;
}

void sub_21D8482B0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___secondaryButton);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___secondaryButton) = a1;
}

void (*sub_21D8482C4(id *a1, __n128 a2))(uint64_t *a1)
{
  a1[1] = v2;
  *a1 = sub_21D848108(a2);
  return sub_21D84830C;
}

void sub_21D84830C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___secondaryButton);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___secondaryButton) = v2;
}

id sub_21D848324(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___imageView] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___primaryButton] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___secondaryButton] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___scrollView] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for TTRIPermissionsWarmingSheetView();
  v9 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 systemBackgroundColor];
  [v11 setBackgroundColor_];

  sub_21D848608();
  return v11;
}

id sub_21D84845C(void *a1)
{
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___imageView] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___primaryButton] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___secondaryButton] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___scrollView] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TTRIPermissionsWarmingSheetView();
  v3 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 systemBackgroundColor];
    [v5 setBackgroundColor_];

    sub_21D848608();
  }

  return v3;
}

id sub_21D848580()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___scrollView;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___scrollView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___scrollView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
    [v4 setContentInsetAdjustmentBehavior_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_21D848608()
{
  v1 = sub_21D848580();
  [v0 addSubview_];

  v2 = OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___scrollView;
  [*&v0[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___scrollView] setTranslatesAutoresizingMaskIntoConstraints_];
  v136 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21DC0AA10;
  v4 = [*&v0[v2] topAnchor];
  v5 = [v0 layoutMarginsGuide];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v3 + 32) = v7;
  v8 = [*&v0[v2] leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 &selRef_secondaryTextProperties + 5];

  *(v3 + 40) = v10;
  v11 = [*&v0[v2] bottomAnchor];
  v12 = [v0 layoutMarginsGuide];
  v13 = [v12 bottomAnchor];

  v14 = [v11 &selRef_secondaryTextProperties + 5];
  *(v3 + 48) = v14;
  v15 = [*&v0[v2] trailingAnchor];
  v16 = [v0 trailingAnchor];
  v17 = [v15 &selRef_secondaryTextProperties + 5];

  *(v3 + 56) = v17;
  sub_21D0D8CF0(0, &qword_280D177D0, 0x277CCAAD0);
  v18 = sub_21DBFA5DC();

  [v136 activateConstraints_];

  v19 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v0[v2] addSubview_];
  v20 = [v0 traitCollection];
  v21 = [v20 horizontalSizeClass];

  v22 = 74.0;
  v23 = 24.0;
  if (v21 != 2)
  {
    v22 = 24.0;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  [v19 setDirectionalLayoutMargins_];
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21DC2BFB0;
  v25 = [v19 topAnchor];
  v26 = [*&v0[v2] topAnchor];
  v27 = [v25 &selRef_secondaryTextProperties + 5];

  *(v24 + 32) = v27;
  v28 = [v19 leadingAnchor];
  v29 = [*&v0[v2] leadingAnchor];
  v30 = [v28 &selRef_secondaryTextProperties + 5];

  *(v24 + 40) = v30;
  v31 = [v19 bottomAnchor];
  v32 = [*&v0[v2] bottomAnchor];
  v33 = [v31 &selRef_secondaryTextProperties + 5];

  *(v24 + 48) = v33;
  v34 = [v19 trailingAnchor];
  v35 = [*&v0[v2] trailingAnchor];
  v36 = [v34 &selRef_secondaryTextProperties + 5];

  *(v24 + 56) = v36;
  v37 = [v19 widthAnchor];
  v38 = [*&v0[v2] &selRef_widthAnchor + 6];
  v39 = [v37 &selRef_secondaryTextProperties + 5];

  *(v24 + 64) = v39;
  v40 = [v19 heightAnchor];
  v41 = [*&v0[v2] heightAnchor];
  v42 = [v40 constraintGreaterThanOrEqualToAnchor_];

  *(v24 + 72) = v42;
  v43 = sub_21DBFA5DC();

  [v136 activateConstraints_];

  v44 = sub_21D8478FC();
  [v19 addSubview_];

  v45 = sub_21D847A30();
  [v19 addSubview_];

  v46 = sub_21D847BF4();
  [v19 addSubview_];

  v47 = sub_21D847E38();
  [v19 addSubview_];

  v49 = sub_21D848108(v48);
  [v19 addSubview_];

  v50 = OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___imageView;
  [*&v0[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___imageView] setTranslatesAutoresizingMaskIntoConstraints_];
  v51 = OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___titleLabel;
  [*&v0[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___titleLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v133 = OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___subtitleLabel;
  [*&v0[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___subtitleLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v134 = OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___primaryButton;
  [*&v0[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___primaryButton] setTranslatesAutoresizingMaskIntoConstraints_];
  v135 = OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___secondaryButton;
  [*&v0[OBJC_IVAR____TtC15RemindersUICore31TTRIPermissionsWarmingSheetView____lazy_storage___secondaryButton] setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62980, &qword_21DC2C008);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_21DC2BFC0;
  v53 = [*&v0[v50] topAnchor];
  v54 = [v19 topAnchor];
  v55 = [v53 &selRef_secondaryTextProperties + 5];

  *(v52 + 32) = v55;
  v56 = [*&v0[v50] centerXAnchor];
  v57 = [v19 centerXAnchor];
  v58 = [v56 &selRef_secondaryTextProperties + 5];

  *(v52 + 40) = v58;
  v59 = [*&v0[v50] widthAnchor];
  v60 = [v19 widthAnchor];
  v61 = [v59 &selRef_secondaryTextProperties + 5];

  *(v52 + 48) = v61;
  if (sub_21D8497A4())
  {
    v62 = [*&v0[v50] bottomAnchor];
    v63 = [*&v0[v2] centerYAnchor];
    v64 = [v62 constraintEqualToAnchor_];
  }

  else
  {
    v64 = 0;
  }

  *(v52 + 56) = v64;
  v65 = [*&v0[v51] firstBaselineAnchor];
  v66 = [*&v0[v50] bottomAnchor];
  v67 = sub_21D8497A4();
  v68 = 74.0;
  if (v67)
  {
    v68 = 64.0;
  }

  v69 = [v65 constraintEqualToAnchor:v66 constant:v68];

  LODWORD(v70) = 1144750080;
  [v69 setPriority_];
  *(v52 + 64) = v69;
  v71 = [*&v0[v51] topAnchor];
  v72 = [*&v0[v50] bottomAnchor];
  v73 = [v71 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v72 multiplier:1.0];

  *(v52 + 72) = v73;
  v74 = [*&v0[v51] centerXAnchor];
  v75 = [v19 layoutMarginsGuide];
  v76 = [v75 &selRef_currentStateMask + 2];

  v77 = [v74 constraintEqualToAnchor_];
  *(v52 + 80) = v77;
  v78 = [*&v0[v51] widthAnchor];
  v79 = [v19 layoutMarginsGuide];
  v80 = [v79 widthAnchor];

  v81 = [v78 &selRef_secondaryTextProperties + 5];
  *(v52 + 88) = v81;
  v82 = [*&v0[v133] firstBaselineAnchor];
  v83 = [*&v0[v51] lastBaselineAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:44.0];

  LODWORD(v85) = 1144750080;
  [v84 setPriority_];
  *(v52 + 96) = v84;
  v86 = [*&v0[v133] topAnchor];
  v87 = [*&v0[v51] bottomAnchor];
  v88 = [v86 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v87 multiplier:1.0];

  *(v52 + 104) = v88;
  v89 = [*&v0[v133] centerXAnchor];
  v90 = [v19 centerXAnchor];
  v91 = [v89 constraintEqualToAnchor_];

  *(v52 + 112) = v91;
  v92 = [*&v0[v133] widthAnchor];
  v93 = [v19 layoutMarginsGuide];
  v94 = [v93 &selRef_widthAnchor + 6];

  v95 = [v92 constraintEqualToAnchor_];
  *(v52 + 120) = v95;
  v96 = [*&v0[v134] topAnchor];
  v97 = [*&v0[v133] lastBaselineAnchor];
  v98 = [v96 constraintGreaterThanOrEqualToAnchor:v97 constant:24.0];

  *(v52 + 128) = v98;
  v99 = [*&v0[v134] centerXAnchor];
  v100 = [v19 layoutMarginsGuide];
  v101 = [v100 centerXAnchor];

  v102 = [v99 constraintEqualToAnchor_];
  *(v52 + 136) = v102;
  v103 = [*&v0[v134] widthAnchor];
  v104 = [v19 layoutMarginsGuide];
  v105 = [v104 widthAnchor];

  v106 = [v103 constraintEqualToAnchor_];
  LODWORD(v107) = 1144750080;
  [v106 setPriority_];
  *(v52 + 144) = v106;
  v108 = [*&v0[v134] widthAnchor];
  v109 = [v108 constraintEqualToConstant_];

  *(v52 + 152) = v109;
  v110 = [*&v0[v134] heightAnchor];
  v111 = [v110 constraintGreaterThanOrEqualToConstant_];

  *(v52 + 160) = v111;
  v112 = [*&v0[v135] topAnchor];
  v113 = [*&v0[v134] bottomAnchor];
  v114 = [v112 constraintEqualToAnchor:v113 constant:5.0];

  *(v52 + 168) = v114;
  v115 = [*&v0[v135] centerXAnchor];
  v116 = [v19 layoutMarginsGuide];
  v117 = [v116 centerXAnchor];

  v118 = [v115 constraintEqualToAnchor_];
  *(v52 + 176) = v118;
  v119 = [*&v0[v135] &selRef_widthAnchor + 6];
  v120 = [v19 layoutMarginsGuide];
  v121 = [v120 &selRef_widthAnchor + 6];

  v122 = [v119 constraintEqualToAnchor_];
  LODWORD(v123) = 1144750080;
  [v122 setPriority_];
  *(v52 + 184) = v122;
  v124 = [*&v0[v135] &selRef_widthAnchor + 6];
  v125 = [v124 constraintEqualToConstant_];

  *(v52 + 192) = v125;
  v126 = [*&v0[v135] heightAnchor];
  v127 = [v126 constraintGreaterThanOrEqualToConstant_];

  *(v52 + 200) = v127;
  v128 = [*&v0[v135] bottomAnchor];
  v129 = [v19 layoutMarginsGuide];
  v130 = [v129 bottomAnchor];

  v131 = [v128 constraintEqualToAnchor_];
  *(v52 + 208) = v131;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62988, &qword_21DC2C010);
  sub_21D0D0F1C(&qword_27CE62990, &qword_27CE62988, &qword_21DC2C010, MEMORY[0x277D83970]);
  sub_21DBFA41C();

  v132 = sub_21DBFA5DC();

  [v136 activateConstraints_];
}

BOOL sub_21D8497A4()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_21D0D8CF0(0, &qword_27CE62998, 0x277D75940);
  sub_21D849D70();
  v2 = sub_21DBFAAAC();

  sub_21D8472FC(v2, v3);
  v5 = v4;

  v6 = sub_21D847568(v5);

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_17:

    return 1;
  }

LABEL_16:
  v7 = sub_21DBFBD7C();
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_3:
  v8 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x223D44740](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if ([v9 isKeyWindow])
    {
      break;
    }

    ++v8;
    if (v11 == v7)
    {
      goto LABEL_17;
    }
  }

  [v10 safeAreaInsets];
  v13 = v12;

  return v13 <= 0.0;
}

id TTRIPermissionsWarmingSheetView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIPermissionsWarmingSheetView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21D849D70()
{
  result = qword_27CE629A0;
  if (!qword_27CE629A0)
  {
    v3 = sub_21D0D8CF0(255, &qword_27CE62998, 0x277D75940);
    result = swift_getWitnessTable(MEMORY[0x277D85378], v3, v0, v1);
    atomic_store(result, &qword_27CE629A0);
  }

  return result;
}

uint64_t TTRRemindersListPostponeType.init(date:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = v51 - v4;
  v5 = sub_21DBF509C();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v56 = v51 - v8;
  v9 = sub_21DBF5A2C();
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v12 - 8);
  v57 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v51 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v51 - v18;
  v20 = sub_21DBF563C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v55 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v51 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v51 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = v51 - v30;
  sub_21D46CAFC(a1, v19);
  v60 = *(v21 + 48);
  if (v60(v19, 1, v20) == 1)
  {
    sub_21D0CF7E0(a1, &qword_27CE58D68, &unk_21DC0C060);
    result = sub_21D0CF7E0(v19, &qword_27CE58D68, &unk_21DC0C060);
    v33 = 0;
    goto LABEL_19;
  }

  v54 = a1;
  v53 = *(v21 + 32);
  v53(v31, v19, v20);
  v34 = [objc_opt_self() currentCalendar];
  sub_21DBF596C();

  if (sub_21DBF589C())
  {
    sub_21D0CF7E0(v54, &qword_27CE58D68, &unk_21DC0C060);
    (*(v63 + 8))(v11, v64);
    result = (*(v21 + 8))(v31, v20);
    v33 = 1;
    goto LABEL_19;
  }

  if (sub_21DBF590C())
  {
    sub_21D0CF7E0(v54, &qword_27CE58D68, &unk_21DC0C060);
    (*(v63 + 8))(v11, v64);
    result = (*(v21 + 8))(v31, v20);
    v33 = 2;
    goto LABEL_19;
  }

  v51[1] = v21 + 32;
  v35 = type metadata accessor for TTRReminderEditor();
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v36 = v59;
  v51[2] = v35;
  static TTRReminderEditor.startOfWeekdayDueDateComponents(now:)(v59);
  v52 = *(v21 + 8);
  v52(v28, v20);
  v37 = v61;
  if ((*(v61 + 48))(v36, 1, v62) == 1)
  {
    v38 = &qword_27CE58D60;
    v39 = &unk_21DC0A690;
    v40 = v36;
  }

  else
  {
    v41 = v36;
    v42 = v56;
    (*(v37 + 32))(v56, v41, v62);
    sub_21DBF597C();
    if (v60(v16, 1, v20) != 1)
    {
      v53(v25, v16, v20);
      v50 = sub_21DBF59AC();
      v52(v25, v20);
      (*(v61 + 8))(v42, v62);
      if (v50)
      {
        sub_21D0CF7E0(v54, &qword_27CE58D68, &unk_21DC0C060);
        (*(v63 + 8))(v11, v64);
        result = (v52)(v31, v20);
        v33 = 4;
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    (*(v61 + 8))(v42, v62);
    v38 = &qword_27CE58D68;
    v39 = &unk_21DC0C060;
    v40 = v16;
  }

  sub_21D0CF7E0(v40, v38, v39);
LABEL_12:
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v43 = v58;
  static TTRReminderEditor.weekendDueDateComponents(now:)(v58, &v66, v28);
  v44 = v52;
  v52(v28, v20);
  v45 = v57;
  sub_21DBF597C();
  v46 = v60(v45, 1, v20);
  v47 = v54;
  if (v46 == 1)
  {
    sub_21D0CF7E0(v54, &qword_27CE58D68, &unk_21DC0C060);
    (*(v61 + 8))(v43, v62);
    (*(v63 + 8))(v11, v64);
    v44(v31, v20);
    result = sub_21D0CF7E0(v45, &qword_27CE58D68, &unk_21DC0C060);
    v33 = 5;
  }

  else
  {
    v48 = v55;
    v53(v55, v45, v20);
    v49 = sub_21DBF59AC();
    sub_21D0CF7E0(v47, &qword_27CE58D68, &unk_21DC0C060);
    v44(v48, v20);
    (*(v61 + 8))(v43, v62);
    (*(v63 + 8))(v11, v64);
    result = (v44)(v31, v20);
    if (v49)
    {
      v33 = 3;
    }

    else
    {
      v33 = 5;
    }
  }

LABEL_19:
  *v65 = v33;
  return result;
}

uint64_t TTRRemindersListPostponeType.dateChangeType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v6 = sub_21DBF563C();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF5C4C();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DBF5A2C();
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF509C();
  v39 = *(v15 - 8);
  v40 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  v21 = type metadata accessor for TTRDateChangeType(0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v2;
  if (v26 <= 2)
  {
    v43 = v22;
    if (v26)
    {
      if (v26 == 1)
      {
        type metadata accessor for TTRReminderEditor();
        _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
        v27 = [objc_opt_self() defaultTimeZone];
        sub_21DBF5C2C();

        _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
        sub_21DBF58BC();
        (*(v41 + 8))(v8, v42);
        (*(v37 + 8))(v11, v38);
        (*(v36 + 8))(v14, v12);
        static TTRReminderEditor.todayDueDateComponents(now:)(v25);
      }

      else
      {
        type metadata accessor for TTRReminderEditor();
        _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
        v31 = [objc_opt_self() defaultTimeZone];
        sub_21DBF5C2C();

        _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
        sub_21DBF58BC();
        (*(v41 + 8))(v8, v42);
        (*(v37 + 8))(v11, v38);
        (*(v36 + 8))(v14, v12);
        static TTRReminderEditor.tomorrowDueDateComponents(now:)(v25);
      }

      (*(v39 + 8))(v20, v40);
    }

    goto LABEL_13;
  }

  if (v26 == 3)
  {
    v43 = v22;
    type metadata accessor for TTRReminderEditor();
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    static TTRReminderEditor.weekendDueDateComponents(now:)(v25, &v45, v8);
    (*(v41 + 8))(v8, v42);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    v32 = v44;
    sub_21D1A9484(v25, v44);
    return (*(v43 + 56))(v32, 0, 1, v21);
  }

  if (v26 == 4)
  {
    v43 = v22;
    type metadata accessor for TTRReminderEditor();
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    static TTRReminderEditor.startOfWeekdayDueDateComponents(now:)(v5);
    (*(v41 + 8))(v8, v42);
    v29 = v39;
    v28 = v40;
    if ((*(v39 + 48))(v5, 1, v40) == 1)
    {
      sub_21D0CF7E0(v5, &qword_27CE58D60, &unk_21DC0A690);
      return (*(v43 + 56))(v44, 1, 1, v21);
    }

    v35 = *(v29 + 32);
    v35(v17, v5, v28);
    v35(v25, v17, v28);
    goto LABEL_13;
  }

  v33 = *(v22 + 56);
  v34 = v44;

  return v33(v34, 1, 1, v21, v23);
}

uint64_t TTRRemindersListPostponeType.localizedDescription.getter()
{
  v1 = sub_21DBF563C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_21DBF509C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v0;
  if (v10 <= 2)
  {
    if (*v0)
    {
      if (v10 == 1)
      {
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      else if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_23;
  }

  if (v10 == 3)
  {
    v11 = v7;
    type metadata accessor for TTRReminderEditor();
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    static TTRReminderEditor.weekendDueDateComponents(now:)(v9, &v14, v4);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v11);
    if (v14)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }
    }

    else if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }
  }

  else
  {
    if (v10 == 4)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }

      goto LABEL_23;
    }

    if (qword_280D1BAA8 != -1)
    {
LABEL_23:
      swift_once();
    }
  }

  return sub_21DBF516C();
}

uint64_t TTRRemindersListPostponeType.dateChangeType(relativeToDueDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v101 = a1;
  v2 = type metadata accessor for TTRPostponementWeekday(0);
  MEMORY[0x28223BE20](v2 - 8);
  v92 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C608, &qword_21DC163F0);
  MEMORY[0x28223BE20](v4 - 8);
  v91 = &v86 - v5;
  v6 = type metadata accessor for TTRPostponementTomorrow(0);
  MEMORY[0x28223BE20](v6 - 8);
  v93 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v8 - 8);
  v90 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = &v86 - v11;
  v12 = sub_21DBF5C4C();
  v96 = *(v12 - 8);
  v97 = v12;
  MEMORY[0x28223BE20](v12);
  v95 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v94 = &v86 - v15;
  v16 = sub_21DBF509C();
  v99 = *(v16 - 8);
  v100 = v16;
  MEMORY[0x28223BE20](v16);
  v88 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v98 = &v86 - v19;
  MEMORY[0x28223BE20](v20);
  v87 = &v86 - v21;
  v22 = sub_21DBF5A2C();
  v104 = *(v22 - 8);
  v105 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = (&v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v27 = &v86 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v86 - v29;
  v31 = sub_21DBF563C();
  v102 = *(v31 - 8);
  v103 = v31;
  MEMORY[0x28223BE20](v31);
  v33 = (&v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v36 = &v86 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v86 - v38;
  v40 = type metadata accessor for TTRPostponementToday(0);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v86 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D78, &qword_21DC18800);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v86 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v48 = &v86 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v86 - v50;
  v52 = *v107;
  if (v52 <= 2)
  {
    if (*v107)
    {
      if (v52 == 1)
      {
        sub_21DBF560C();
        _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
        v53 = v89;
        sub_21DBF507C();
        v55 = v96;
        v54 = v97;
        v56 = *(v96 + 48);
        if (v56(v53, 1, v97) == 1)
        {
          v57 = [objc_opt_self() defaultTimeZone];
          v107 = v56;
          v58 = v94;
          sub_21DBF5C2C();

          if (v107(v53, 1, v54) != 1)
          {
            sub_21D0CF7E0(v53, &unk_27CE60DB0, qword_21DC0BF70);
          }
        }

        else
        {
          v58 = v94;
          (*(v55 + 32))(v94, v53, v54);
        }

        v75 = v87;
        sub_21DBF58BC();
        (*(v55 + 8))(v58, v54);
        type metadata accessor for TTRReminderEditor();
        v76 = v98;
        static TTRReminderEditor.todayDueDateComponents(now:)(v98);
        v78 = v99;
        v77 = v100;
        (*(v99 + 8))(v75, v100);
        (*(v104 + 8))(v30, v105);
        (*(v102 + 8))(v39, v103);
        (*(v78 + 32))(v42, v76, v77);
        v79 = type metadata accessor for TTRDateChangeType(0);
        swift_storeEnumTagMultiPayload();
        sub_21D450204(v42, v51);
        sub_21D84BE28(v42, type metadata accessor for TTRPostponementToday);
        (*(*(v79 - 8) + 56))(v51, 0, 1, v79);
        v74 = v51;
      }

      else
      {
        sub_21DBF560C();
        _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
        v67 = v90;
        sub_21DBF507C();
        v69 = v96;
        v68 = v97;
        v70 = *(v96 + 48);
        if (v70(v67, 1, v97) == 1)
        {
          v71 = [objc_opt_self() defaultTimeZone];
          v72 = v95;
          sub_21DBF5C2C();

          if (v70(v67, 1, v68) != 1)
          {
            sub_21D0CF7E0(v67, &unk_27CE60DB0, qword_21DC0BF70);
          }
        }

        else
        {
          v72 = v95;
          (*(v69 + 32))(v95, v67, v68);
        }

        v80 = v88;
        sub_21DBF58BC();
        (*(v69 + 8))(v72, v68);
        type metadata accessor for TTRReminderEditor();
        v81 = v98;
        static TTRReminderEditor.tomorrowDueDateComponents(now:)(v98);
        v83 = v99;
        v82 = v100;
        (*(v99 + 8))(v80, v100);
        (*(v104 + 8))(v27, v105);
        (*(v102 + 8))(v36, v103);
        v84 = v93;
        (*(v83 + 32))(v93, v81, v82);
        v85 = type metadata accessor for TTRDateChangeType(0);
        swift_storeEnumTagMultiPayload();
        sub_21D450204(v84, v48);
        sub_21D84BE28(v84, type metadata accessor for TTRPostponementTomorrow);
        (*(*(v85 - 8) + 56))(v48, 0, 1, v85);
        v74 = v48;
      }

      return sub_21D84BDB8(v74, v106);
    }

LABEL_10:
    v108 = v52;
    return TTRRemindersListPostponeType.dateChangeType.getter(v106);
  }

  if (v52 != 3)
  {
    if (v52 == 4)
    {
      sub_21DBF560C();
      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      type metadata accessor for TTRReminderEditor();
      v59 = v98;
      static TTRReminderEditor.startOfWeekDueDateComponents(with:now:)(v33, v98);
      (*(v104 + 8))(v24, v105);
      (*(v102 + 8))(v33, v103);
      v60 = v92;
      (*(v99 + 32))(v92, v59, v100);
      v61 = type metadata accessor for TTRDateChangeType(0);
      swift_storeEnumTagMultiPayload();
      v62 = v106;
      sub_21D450204(v60, v106);
      sub_21D84BE28(v60, type metadata accessor for TTRPostponementWeekday);
      return (*(*(v61 - 8) + 56))(v62, 0, 1, v61);
    }

    goto LABEL_10;
  }

  sub_21DBF560C();
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v64 = v91;
  static TTRPostponementCalculator.postponementWeekendType(relativeTo:now:calendar:)(v101, v33, v24, v91);
  (*(v104 + 8))(v24, v105);
  (*(v102 + 8))(v33, v103);
  v65 = type metadata accessor for TTRPostponementWeekend(0);
  if ((*(*(v65 - 8) + 48))(v64, 1, v65) == 1)
  {
    sub_21D0CF7E0(v64, &qword_27CE5C608, &qword_21DC163F0);
    v66 = 1;
  }

  else
  {
    sub_21D450204(&v64[*(v65 + 20)], v45);
    sub_21D84BE28(v64, type metadata accessor for TTRPostponementWeekend);
    v66 = 0;
  }

  v73 = type metadata accessor for TTRDateChangeType(0);
  (*(*(v73 - 8) + 56))(v45, v66, 1, v73);
  v74 = v45;
  return sub_21D84BDB8(v74, v106);
}

uint64_t sub_21D84BDB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D78, &qword_21DC18800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D84BE28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

RemindersUICore::TTRRemindersListPostponeType_optional __swiftcall TTRRemindersListPostponeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TTRRemindersListPostponeType.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x646E656B656577;
  v4 = 0x57664F7472617473;
  if (v1 != 4)
  {
    v4 = 0x6D6F74737563;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7961646F74;
  if (v1 != 1)
  {
    v5 = 0x776F72726F6D6F74;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_21D84BFB8()
{
  result = qword_27CE629C0;
  if (!qword_27CE629C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListPostponeType, &type metadata for TTRRemindersListPostponeType, v0, v1);
    atomic_store(result, &qword_27CE629C0);
  }

  return result;
}

double sub_21D84C014(uint64_t a1)
{
  sub_21DBFA27C();

  return result;
}

void sub_21D84C114(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE700000000000000;
  v6 = 0x646E656B656577;
  v7 = 0xEE007961646B6565;
  v8 = 0x57664F7472617473;
  if (v2 != 4)
  {
    v8 = 0x6D6F74737563;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7961646F74;
  if (v2 != 1)
  {
    v10 = 0x776F72726F6D6F74;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_21D84C1D4()
{
  result = qword_27CE629C8;
  if (!qword_27CE629C8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE629D0, &qword_21DC2C0C8);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27CE629C8);
  }

  return result;
}

uint64_t TTRIAnimationSlowMode.__allocating_init(isSlowModeEnabled:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

UISpringTimingParameters __swiftcall TTRIAnimationSlowMode.adjust(_:)(UISpringTimingParameters a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  [(objc_class *)a1.super.isa mass];
  v5 = v4;
  [(objc_class *)a1.super.isa stiffness];
  v7 = 1.0;
  if (v3)
  {
    v8 = 3.0;
  }

  else
  {
    v8 = 1.0;
  }

  if (v3)
  {
    v7 = 9.0;
  }

  v9 = v6 / v7;
  [(objc_class *)a1.super.isa damping];
  v11 = v10 / v8;
  [(objc_class *)a1.super.isa initialVelocity];
  return [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:v5 stiffness:v9 damping:v11 initialVelocity:{v12, v13}];
}

Swift::Double __swiftcall TTRIAnimationSlowMode.adjust(_:)(Swift::Double a1)
{
  swift_beginAccess();
  v3 = 1.0;
  if (*(v1 + 16))
  {
    v3 = 3.0;
  }

  return v3 * a1;
}

uint64_t TTRRectCorners.cornerMask(layoutDirection:isFlipped:)(uint64_t a1, char a2)
{
  v3 = *v2;
  if (a1 != 1)
  {
    if ((a2 & 1) == 0)
    {
      if (v3)
      {
        if ((v3 & 2) != 0)
        {
          if ((v3 & 8) != 0)
          {
            result = 13;
            if ((v3 & 4) == 0)
            {
              return result;
            }
          }

          else
          {
            result = 12;
            if ((v3 & 4) == 0)
            {
              return result;
            }
          }
        }

        else if ((v3 & 8) != 0)
        {
          result = 5;
          if ((v3 & 4) == 0)
          {
            return result;
          }
        }

        else
        {
          result = 4;
          if ((v3 & 4) == 0)
          {
            return result;
          }
        }
      }

      else if ((v3 & 2) != 0)
      {
        if ((v3 & 8) != 0)
        {
          result = 9;
          if ((v3 & 4) == 0)
          {
            return result;
          }
        }

        else
        {
          result = 8;
          if ((v3 & 4) == 0)
          {
            return result;
          }
        }
      }

      else if ((v3 & 8) != 0)
      {
        result = 1;
        if ((v3 & 4) == 0)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if ((v3 & 4) == 0)
        {
          return result;
        }
      }

      return result | 2;
    }

    if (v3)
    {
      if ((v3 & 2) != 0)
      {
        if ((v3 & 8) != 0)
        {
          result = 7;
        }

        else
        {
          result = 3;
        }

        if ((v3 & 4) == 0)
        {
          return result;
        }
      }

      else if ((v3 & 8) != 0)
      {
        result = 5;
        if ((v3 & 4) == 0)
        {
          return result;
        }
      }

      else
      {
        result = 1;
        if ((v3 & 4) == 0)
        {
          return result;
        }
      }
    }

    else if ((v3 & 2) != 0)
    {
      if ((v3 & 8) != 0)
      {
        result = 6;
        if ((v3 & 4) == 0)
        {
          return result;
        }
      }

      else
      {
        result = 2;
        if ((v3 & 4) == 0)
        {
          return result;
        }
      }
    }

    else
    {
      result = (*v2 & 8uLL) >> 1;
      if ((v3 & 4) == 0)
      {
        return result;
      }
    }

    return result | 8;
  }

  if ((a2 & 1) == 0)
  {
    if (v3)
    {
      if ((v3 & 2) == 0)
      {
        if ((v3 & 8) != 0)
        {
          result = 10;
        }

        else
        {
          result = 8;
        }

        if ((v3 & 4) == 0)
        {
          return result;
        }

        return result | 1;
      }

      result = 12;
      if ((v3 & 8) == 0)
      {
LABEL_58:
        if (v3 & 4) == 0 || (result)
        {
          return result;
        }

        return result | 1;
      }
    }

    else if ((v3 & 2) != 0)
    {
      result = 4;
      if ((v3 & 8) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      result = 0;
      if ((v3 & 8) == 0)
      {
        if ((v3 & 4) == 0)
        {
          return result;
        }

        return result | 1;
      }
    }

    result |= 2uLL;
    goto LABEL_58;
  }

  result = *v2 & 8;
  if (v3)
  {
    if ((v3 & 2) != 0)
    {
      if ((v3 & 8) != 0)
      {
        result = 11;
        if ((v3 & 4) != 0)
        {
          return result | 4;
        }
      }

      else
      {
        result = 3;
        if ((v3 & 4) != 0)
        {
          return result | 4;
        }
      }
    }

    else
    {
      result |= 2uLL;
      if ((v3 & 4) != 0)
      {
        return result | 4;
      }
    }
  }

  else
  {
    if ((v3 & 2) != 0)
    {
      if ((v3 & 8) == 0)
      {
        result = 1;
        if ((v3 & 4) == 0)
        {
          return result;
        }

        return result | 4;
      }

      result = 9;
    }

    if ((v3 & 4) != 0)
    {
      return result | 4;
    }
  }

  return result;
}

uint64_t TTRRectCorners.init(cornerMask:layoutDirection:isFlipped:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  if (a2 == 1)
  {
    if (a3)
    {
      if ((result & 2) != 0)
      {
        if (result)
        {
          v4 = 3;
          if ((result & 8) == 0)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v4 = 1;
          if ((result & 8) == 0)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        if ((result & 1) == 0)
        {
          v4 = 0;
          if ((result & 8) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }

        v4 = 2;
        if ((result & 8) == 0)
        {
LABEL_7:
          if ((result & 4) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }
      }

LABEL_6:
      v4 |= 8uLL;
      goto LABEL_7;
    }

    if ((result & 8) != 0)
    {
      if ((result & 4) != 0)
      {
        v4 = 3;
        if ((result & 2) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v4 = 1;
        if ((result & 2) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      if ((result & 4) == 0)
      {
        v4 = 0;
        if ((result & 2) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v4 = 2;
      if ((result & 2) == 0)
      {
LABEL_18:
        if ((result & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

LABEL_17:
    v4 |= 8uLL;
    goto LABEL_18;
  }

  if (a3)
  {
    if (result)
    {
      if ((result & 2) != 0)
      {
        v4 = 3;
        if ((result & 4) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v4 = 1;
        if ((result & 4) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    else if ((result & 2) != 0)
    {
      v4 = 2;
      if ((result & 4) == 0)
      {
LABEL_30:
        if ((result & 8) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v4 = 0;
      if ((result & 4) == 0)
      {
        goto LABEL_30;
      }
    }

    v4 |= 8uLL;
    goto LABEL_30;
  }

  if ((result & 4) != 0)
  {
    if ((result & 8) != 0)
    {
      v4 = 3;
      if ((result & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v4 = 1;
      if ((result & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_37;
  }

  if ((result & 8) == 0)
  {
    v4 = 0;
    if ((result & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_37:
    v4 |= 8uLL;
    goto LABEL_38;
  }

  v4 = 2;
  if (result)
  {
    goto LABEL_37;
  }

LABEL_38:
  if ((result & 2) != 0)
  {
LABEL_39:
    v4 |= 4uLL;
  }

LABEL_40:
  *a4 = v4;
  return result;
}

unint64_t sub_21D84C87C()
{
  result = qword_27CE629D8;
  if (!qword_27CE629D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRectCorners, &type metadata for TTRRectCorners, v0, v1);
    atomic_store(result, &qword_27CE629D8);
  }

  return result;
}

unint64_t sub_21D84C8D4()
{
  result = qword_27CE629E0;
  if (!qword_27CE629E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRectCorners, &type metadata for TTRRectCorners, v0, v1);
    atomic_store(result, &qword_27CE629E0);
  }

  return result;
}

unint64_t sub_21D84C92C()
{
  result = qword_27CE629E8;
  if (!qword_27CE629E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRectCorners, &type metadata for TTRRectCorners, v0, v1);
    atomic_store(result, &qword_27CE629E8);
  }

  return result;
}

unint64_t sub_21D84C984()
{
  result = qword_27CE629F0;
  if (!qword_27CE629F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRectCorners, &type metadata for TTRRectCorners, v0, v1);
    atomic_store(result, &qword_27CE629F0);
  }

  return result;
}

uint64_t TTRSERecipeCardError.hashValue.getter()
{
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](0);
  return sub_21DBFC82C();
}

uint64_t sub_21D84CA8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7463656C65537369;
  }

  else
  {
    v3 = 0x4E79616C70736964;
  }

  if (v2)
  {
    v4 = 0xEB00000000656D61;
  }

  else
  {
    v4 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v5 = 0x7463656C65537369;
  }

  else
  {
    v5 = 0x4E79616C70736964;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006465;
  }

  else
  {
    v6 = 0xEB00000000656D61;
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

uint64_t sub_21D84CB40()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

double sub_21D84CBD0(uint64_t a1)
{
  sub_21DBFA27C();

  return result;
}

uint64_t sub_21D84CC4C(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

void sub_21D84CCD8(char *a2@<X8>)
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

void sub_21D84CD38(uint64_t *a1@<X8>)
{
  v2 = 0x4E79616C70736964;
  if (*v1)
  {
    v2 = 0x7463656C65537369;
  }

  v3 = 0xEB00000000656D61;
  if (*v1)
  {
    v3 = 0xEA00000000006465;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21D84CD84()
{
  if (*v0)
  {
    return 0x7463656C65537369;
  }

  else
  {
    return 0x4E79616C70736964;
  }
}

void sub_21D84CDCC(char *a3@<X8>)
{
  v4 = sub_21DBFC45C();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_21D84CE30(uint64_t a1)
{
  v2 = sub_21D84D310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21D84CE6C(uint64_t a1)
{
  v2 = sub_21D84D310();

  return MEMORY[0x2821FE720](a1, v2);
}

void TTRSERecipeCard.TTRSERecipeCardIngredient.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_21DBFBFBC();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE629F8, &unk_21DC2C330);
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21D84D310();
  sub_21DBFC87C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v8 = v15;
    v19 = 0;
    v12 = sub_21DBFC4AC();
    v13 = v9;
    v18 = 1;
    v10 = sub_21DBFC4BC();
    (*(v16 + 8))(v7, v5);
    v17 = v10 & 1;
    v11 = v13;
    *v8 = v12;
    *(v8 + 8) = v11;
    *(v8 + 16) = v10 & 1;
    sub_21DBF8E0C();
    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

unint64_t sub_21D84D310()
{
  result = qword_27CE62A00;
  if (!qword_27CE62A00)
  {
    result = swift_getWitnessTable(aA_7, &type metadata for TTRSERecipeCard.TTRSERecipeCardIngredient.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE62A00);
  }

  return result;
}

uint64_t static TTRSERecipeCard.TTRSERecipeCardIngredient.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_21DBFC64C();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t TTRSERecipeCard.TTRSERecipeCardIngredient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62A10, &unk_21DC2C348);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21D84D310();
  sub_21DBFC88C();
  v12 = 0;
  v7 = v9[1];
  sub_21DBFC51C();
  if (!v7)
  {
    v11 = 1;
    sub_21DBFC52C();
  }

  return (*(v4 + 8))(v6, v3);
}