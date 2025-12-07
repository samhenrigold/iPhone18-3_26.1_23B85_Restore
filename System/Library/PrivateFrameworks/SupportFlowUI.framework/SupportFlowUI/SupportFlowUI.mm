uint64_t sub_26BCB69C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BCB6A1C();
  *a1 = result;
  return result;
}

uint64_t sub_26BCB6A1C()
{
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_26BCB6A60(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_26BCB6AC0(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_26BCB6B44;
}

void sub_26BCB6B44(void **a1, char a2)
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

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

id SupportFlowViewController.__allocating_init(flowIdentifier:showsSearchBar:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_allocWithZone(v2);
  return SupportFlowViewController.init(flowIdentifier:showsSearchBar:)(a1, v3);
}

id SupportFlowViewController.init(flowIdentifier:showsSearchBar:)(uint64_t a1, char a2)
{
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_flowIdentifier;
  v6 = sub_26BCC8C5C();
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_observerToken) = 0;
  v7 = OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_showsSearchBar;
  *(v2 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_showsSearchBar) = 1;
  swift_beginAccess();
  sub_26BCB6D50(a1, v2 + v5);
  swift_endAccess();
  *(v2 + v7) = a2;
  type metadata accessor for SupportFlowViewController(0);
  OUTLINED_FUNCTION_6();
  v10 = objc_msgSendSuper2(v8, v9);
  sub_26BCB6E54(a1);
  return v10;
}

uint64_t sub_26BCB6D50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for SupportFlowViewController(uint64_t a1)
{
  result = qword_280446780;
  if (!qword_280446780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BCB6E54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SupportFlowViewController.init(flowIdentifier:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_flowIdentifier;
  v5 = sub_26BCC8C5C();
  OUTLINED_FUNCTION_7(v5);
  *(v1 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_observerToken) = 0;
  *(v1 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_showsSearchBar) = v2;
  swift_beginAccess();
  sub_26BCB6D50(a1, v1 + v4);
  swift_endAccess();
  type metadata accessor for SupportFlowViewController(0);
  OUTLINED_FUNCTION_6();
  v8 = objc_msgSendSuper2(v6, v7);
  sub_26BCB6E54(a1);
  return v8;
}

uint64_t sub_26BCB6FB8(void *a1)
{
  v3 = OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_delegate;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_flowIdentifier;
  v5 = sub_26BCC8C5C();
  OUTLINED_FUNCTION_7(v5);
  *(v1 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_observerToken) = 0;
  *(v1 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_showsSearchBar) = v2;
  sub_26BCB8688(v1 + v3);
  sub_26BCB6E54(v1 + v4);
  swift_unknownObjectRelease();
  type metadata accessor for SupportFlowViewController(0);
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_26BCB70C0()
{
  v0 = [objc_opt_self() supportFlowApp];

  return v0;
}

id sub_26BCB7100()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_flowIdentifier;
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  sub_26BCB86B0(v0 + v4, v3);
  v5 = *(v0 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_showsSearchBar);
  v6 = [objc_opt_self() mainBundle];
  v7 = sub_26BCC60BC(v6);
  v9 = v8;
  v10 = objc_allocWithZone(type metadata accessor for SupportFlowServiceSpecification(0));
  return sub_26BCC5780(v3, v5, v7, v9);
}

uint64_t sub_26BCB7208()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446770, &qword_26BCC9CE8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446778, &qword_26BCC9CF0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for SupportFlowViewController(0);
  v15.receiver = v0;
  v15.super_class = v11;
  objc_msgSendSuper2(&v15, sel_clientIsReady);
  v12 = sub_26BCBD9F8();
  sub_26BCC90CC();

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_26BCB8434(v4);
  }

  (*(v7 + 32))(v10, v4, v5);
  v14 = sub_26BCB73F8();
  (*(v7 + 8))(v10, v5);
  *&v1[OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_observerToken] = v14;
  return swift_unknownObjectRelease();
}

uint64_t sub_26BCB73F8()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446778, &qword_26BCC9CF0);
  swift_getOpaqueTypeConformance2();
  sub_26BCB89A4();
  sub_26BCB8AE8(&unk_280446820, sub_26BCB8A40, MEMORY[0x277D84F58]);
  sub_26BCB8AE8(&qword_2804467A8, sub_26BCB8A94, MEMORY[0x277D84F40]);
  sub_26BCB8AE8(&qword_2804467B0, sub_26BCB8B60, MEMORY[0x277D84F48]);
  v0 = sub_26BCC8CDC();

  return v0;
}

void sub_26BCB7590(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804467B8, &qword_26BCC9D98);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v37 - v8;
  v10 = sub_26BCC8CAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v43 = v11;
    sub_26BCC8C7C();
    v16 = *(v4 + 16);
    v16(v9, a1, v3);
    v16(v7, a1, v3);
    v17 = sub_26BCC8C9C();
    v18 = sub_26BCC905C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v41 = v10;
      v20 = v19;
      v40 = swift_slowAlloc();
      v46 = v40;
      *v20 = 136315394;
      v39 = v18;
      sub_26BCC8CCC();
      v44 = v47;
      v45 = v48;
      v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804467A0, &qword_26BCC9D90);
      v21 = sub_26BCC8F7C();
      v38 = v17;
      v22 = v15;
      v24 = v23;
      v42 = a1;
      v25 = *(v4 + 8);
      v25(v9, v3);
      v26 = sub_26BCBA718(v21, v24, &v46);
      v15 = v22;

      *(v20 + 4) = v26;
      *(v20 + 12) = 2080;
      sub_26BCC8CBC();
      v44 = v47;
      v45 = v48;
      v27 = sub_26BCC8F7C();
      v29 = v28;
      v25(v7, v3);
      v30 = sub_26BCBA718(v27, v29, &v46);

      *(v20 + 14) = v30;
      v31 = v38;
      _os_log_impl(&dword_26BCB5000, v38, v39, "flow state has changed from %s to %s", v20, 0x16u);
      v32 = v40;
      swift_arrayDestroy();
      MEMORY[0x26D695170](v32, -1, -1);
      MEMORY[0x26D695170](v20, -1, -1);

      (*(v43 + 8))(v13, v41);
    }

    else
    {

      v33 = *(v4 + 8);
      v33(v7, v3);
      v33(v9, v3);
      (*(v43 + 8))(v13, v10);
    }

    sub_26BCC8CBC();
    v34 = v47;
    if (v48)
    {
      if (v48 == 1)
      {
        sub_26BCB8BB4();
        v35 = swift_allocError();
        *v36 = v34;
        sub_26BCB7E3C(v35);

        return;
      }

      if (v48 != 255)
      {
        switch(v47)
        {
          case 2:
            sub_26BCB7A54();
            break;
          case 3:
            sub_26BCB8050();
            break;
          default:
            break;
        }
      }
    }

    else
    {
      sub_26BCB7C30(v47);
    }
  }
}

void sub_26BCB7A54()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_26BCC8CAC();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = sub_26BCC8C9C();
  v8 = sub_26BCC905C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_14();
    v17[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_26BCB88A8(ObjectType);
    sub_26BCBA718(v10, v11, v17);

    v12 = OUTLINED_FUNCTION_4();
    *(v9 + 14) = sub_26BCBA718(v12 & 0xFFFFFFFFFFFFLL | 0x5364000000000000, 0xEE00292874726174, v17);
    OUTLINED_FUNCTION_10(&dword_26BCB5000, v13, v14, "%s.%s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_5();
  }

  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v16 supportFlowViewControllerDidStart_];
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_12();
}

void sub_26BCB7C30(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = sub_26BCC8CAC();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v10 = sub_26BCC8C9C();
  v11 = sub_26BCC905C();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_14();
    v22[0] = OUTLINED_FUNCTION_11();
    *v4 = 136315394;
    v12 = sub_26BCB88A8(ObjectType);
    v14 = sub_26BCBA718(v12, v13, v22);

    *(v4 + 4) = v14;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_26BCBA718(0xD00000000000001BLL, 0x800000026BCCB590, v22);
    OUTLINED_FUNCTION_13(&dword_26BCB5000, v15, v16, "%s.%s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5();
    v4 = v21;
    OUTLINED_FUNCTION_5();
  }

  (*(v8 + 8))(v1, v6);
  OUTLINED_FUNCTION_8();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v4;
  OUTLINED_FUNCTION_0(v17);
  OUTLINED_FUNCTION_1(COERCE_DOUBLE(1107296256));
  v22[2] = v18;
  v22[3] = &block_descriptor;
  v19 = _Block_copy(v22);
  v20 = v2;

  [v20 dismissViewControllerAnimated:1 completion:v19];
  _Block_release(v19);
  OUTLINED_FUNCTION_12();
}

void sub_26BCB7E3C(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = sub_26BCC8CAC();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v10 = sub_26BCC8C9C();
  v11 = sub_26BCC905C();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_14();
    v23[0] = OUTLINED_FUNCTION_11();
    *v4 = 136315394;
    v12 = sub_26BCB88A8(ObjectType);
    v14 = sub_26BCBA718(v12, v13, v23);

    *(v4 + 4) = v14;
    *(v4 + 6) = 2080;
    *(v4 + 14) = sub_26BCBA718(0xD00000000000001ALL, 0x800000026BCCB5B0, v23);
    OUTLINED_FUNCTION_13(&dword_26BCB5000, v15, v16, "%s.%s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5();
    v4 = v22;
    OUTLINED_FUNCTION_5();
  }

  (*(v8 + 8))(v1, v6);
  OUTLINED_FUNCTION_8();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v4;
  OUTLINED_FUNCTION_0(v17);
  OUTLINED_FUNCTION_1(COERCE_DOUBLE(1107296256));
  v23[2] = v18;
  v23[3] = &block_descriptor_21;
  v19 = _Block_copy(v23);
  v20 = v2;
  v21 = v4;

  [v20 dismissViewControllerAnimated:1 completion:v19];
  _Block_release(v19);
  OUTLINED_FUNCTION_12();
}

void sub_26BCB8050()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_26BCC8CAC();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = sub_26BCC8C9C();
  v8 = sub_26BCC905C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_14();
    v19[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_26BCB88A8(ObjectType);
    sub_26BCBA718(v10, v11, v19);

    v12 = OUTLINED_FUNCTION_4();
    *(v9 + 14) = sub_26BCBA718(v12 & 0xFFFFFFFFFFFFLL | 0x4364000000000000, 0xEF29286C65636E61, v19);
    OUTLINED_FUNCTION_10(&dword_26BCB5000, v13, v14, "%s.%s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_5();
  }

  (*(v5 + 8))(v0, v3);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  OUTLINED_FUNCTION_0(v15);
  OUTLINED_FUNCTION_1(COERCE_DOUBLE(1107296256));
  v19[2] = v16;
  v19[3] = &block_descriptor_27;
  v17 = _Block_copy(v19);
  v18 = v1;

  [v18 dismissViewControllerAnimated:1 completion:v17];
  _Block_release(v17);
  OUTLINED_FUNCTION_12();
}

id SupportFlowViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26BCC8F5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_26BCB8328()
{
  sub_26BCB8688(v0 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_delegate);
  sub_26BCB6E54(v0 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_flowIdentifier);

  return swift_unknownObjectRelease();
}

id SupportFlowViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SupportFlowViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26BCB8434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446770, &qword_26BCC9CE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26BCB84A4(uint64_t a1)
{
  sub_26BCB8630(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26BCB8630(uint64_t a1)
{
  if (!qword_280446790)
  {
    sub_26BCC8C5C();
    v1 = sub_26BCC910C();
    if (!v2)
    {
      atomic_store(v1, &qword_280446790);
    }
  }
}

uint64_t sub_26BCB86B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_26BCB8720(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 supportFlowViewController:a1 didFinishWithResult:a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26BCB87B4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_26BCB87F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong respondsToSelector_])
    {
      v5 = sub_26BCC8BDC();
      [v4 supportFlowViewController:a1 didFinishWithError:v5];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void *sub_26BCB88D8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      [v3 supportFlowViewControllerDidCancel_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26BCB8964()
{
  MEMORY[0x26D695210](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_26BCB89A4()
{
  result = qword_280446798;
  if (!qword_280446798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446798);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26BCB8A40()
{
  result = qword_280446830;
  if (!qword_280446830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446830);
  }

  return result;
}

unint64_t sub_26BCB8A94()
{
  result = qword_280446840;
  if (!qword_280446840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446840);
  }

  return result;
}

uint64_t sub_26BCB8AE8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804467A0, &qword_26BCC9D90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BCB8B60()
{
  result = qword_280446850;
  if (!qword_280446850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446850);
  }

  return result;
}

unint64_t sub_26BCB8BB4()
{
  result = qword_2804467C0;
  if (!qword_2804467C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804467C0);
  }

  return result;
}

uint64_t sub_26BCB8C08()
{
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BCB8C5C()
{
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_26BCB8CA0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_3()
{

  return sub_26BCC8C7C();
}

uint64_t OUTLINED_FUNCTION_4()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;
  return 0x6944776F6C66;
}

void OUTLINED_FUNCTION_5()
{

  JUMPOUT(0x26D695170);
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_11()
{
  *(v1 - 136) = v0;

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_14()
{

  return swift_slowAlloc();
}

SupportFlowUI::SupportFlowHostingController::Configuration __swiftcall SupportFlowHostingController.Configuration.init(hostingType:showsSearchBar:clientBundleIdentifier:)(SupportFlowUI::SupportFlowHostingController::HostingType hostingType, Swift::Bool showsSearchBar, Swift::String_optional clientBundleIdentifier)
{
  *v3 = *hostingType;
  *(v3 + 1) = showsSearchBar;
  *(v3 + 8) = clientBundleIdentifier;
  result.clientBundleIdentifier.value._object = clientBundleIdentifier.value._countAndFlagsBits;
  LOBYTE(result.clientBundleIdentifier.value._countAndFlagsBits) = showsSearchBar;
  result.hostingType = hostingType;
  return result;
}

uint64_t SupportFlowHostingController.HostingType.hashValue.getter()
{
  v1 = *v0;
  sub_26BCC92FC();
  MEMORY[0x26D694C70](v1);
  return sub_26BCC931C();
}

uint64_t sub_26BCB8F28(uint64_t a1)
{
  v2 = *v1;
  sub_26BCC92FC();
  MEMORY[0x26D694C70](v2);
  return sub_26BCC931C();
}

char *SupportFlowHostingController.init<A>(rootView:configuration:delegate:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _UNKNOWN **a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v69 = a6;
  v66 = a4;
  v80 = a3;
  v75 = a1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804467D0, &qword_26BCC9DB0);
  v10 = sub_26BCC8D8C();
  OUTLINED_FUNCTION_1_0();
  v73 = v11;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  v71 = &v64 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804467D8, &qword_26BCC9DB8);
  v74 = v10;
  v72 = sub_26BCC8D8C();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  v70 = &v64 - v15;
  OUTLINED_FUNCTION_1_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v68 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_26BCC8CAC();
  OUTLINED_FUNCTION_1_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a2;
  v76 = a2[1];
  v26 = *(a2 + 2);
  v77 = *(a2 + 1);
  v27 = qword_2804467E0;
  type metadata accessor for SupportFlowSceneBridge(0);
  swift_allocObject();
  *(v7 + v27) = sub_26BCC4D94();
  sub_26BCC8C8C();

  v28 = sub_26BCC8C9C();
  v29 = sub_26BCC905C();

  v30 = os_log_type_enabled(v28, v29);
  v78 = v17;
  v79 = a5;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v84[0] = v32;
    *v31 = 136315650;
    v33 = sub_26BCB88A8(ObjectType);
    v35 = sub_26BCBA718(v33, v34, v84);
    ObjectType = v7;
    v36 = v35;

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_26BCBA718(0xD000000000000026, 0x800000026BCCB700, v84);
    *(v31 + 22) = 2080;
    LOBYTE(v81) = v25;
    BYTE1(v81) = v76;
    v82 = v77;
    v83 = v26;

    v37 = sub_26BCC8F7C();
    v39 = sub_26BCBA718(v37, v38, v84);

    *(v31 + 24) = v39;
    v7 = ObjectType;
    _os_log_impl(&dword_26BCB5000, v28, v29, "%s.%s - configuration: %s", v31, 0x20u);
    swift_arrayDestroy();
    v40 = v32;
    a5 = v79;
    MEMORY[0x26D695170](v40, -1, -1);
    v41 = v31;
    v17 = v78;
    MEMORY[0x26D695170](v41, -1, -1);
  }

  (*(v21 + 8))(v24, v67);
  v42 = v7 + qword_2804467E8;
  *v42 = v25;
  *(v42 + 1) = v76;
  v43 = v77;
  *(v42 + 8) = v77;
  *(v42 + 16) = v26;
  v44 = v75;
  (*(v17 + 16))(v68, v75, a5);

  v45 = v69;
  v81 = sub_26BCC8F0C();
  v46 = sub_26BCC8DDC();
  v47 = v46;
  if (v25)
  {
    if (v25 == 1)
    {
      v81 = 0;
      LOBYTE(v82) = 2;
      type metadata accessor for SupportFlowSceneHostingClientManager();
      v48 = swift_allocObject();
      v49 = v80;
      swift_unknownObjectRetain();
      v50 = v43;
      v51 = v26;
      v52 = v49;
      v53 = v66;
    }

    else
    {
      v54 = v80;
      v55 = v66;
      if (!v80)
      {
        v56 = v46;
        v55 = &protocol witness table for SupportFlowHostingController;
        v54 = v47;
      }

      v81 = 0;
      LOBYTE(v82) = 2;
      type metadata accessor for SupportFlowSceneHostingClientManager();
      v48 = swift_allocObject();
      swift_unknownObjectRetain();
      v50 = v43;
      v51 = v26;
      v52 = v54;
      v53 = v55;
    }

    sub_26BCBA42C(v50, v51, v52, v53, &v81);
  }

  else
  {

    v48 = 0;
  }

  v77 = v48;
  swift_getKeyPath();
  v81 = v48;
  v57 = v47;
  v58 = v71;
  sub_26BCC8EAC();

  swift_getKeyPath();
  v81 = *&v57[qword_2804467E0];
  v59 = sub_26BCBA6C4(&qword_2804467F0, &qword_2804467D0, &qword_26BCC9DB0);
  v84[3] = v45;
  v84[4] = v59;

  v60 = v74;
  WitnessTable = swift_getWitnessTable();
  sub_26BCC8EAC();

  (*(v73 + 8))(v58, v60);
  v62 = sub_26BCBA6C4(&qword_2804467F8, &qword_2804467D8, &qword_26BCC9DB8);
  v84[1] = WitnessTable;
  v84[2] = v62;
  swift_getWitnessTable();
  v81 = sub_26BCC8F0C();
  sub_26BCC8DEC();
  swift_unknownObjectRelease();

  (*(v78 + 8))(v44, v79);
  return v57;
}

uint64_t sub_26BCB96E8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneHostingClientManager.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BCB9780(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_26BCC8DBC();
  return v3;
}

uint64_t sub_26BCB97C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BCB9760();
  *a1 = result;
  return result;
}

uint64_t sub_26BCB97F4(void *a1)
{

  OUTLINED_FUNCTION_0_0();
  return sub_26BCB982C(v1, v2, v3);
}

uint64_t sub_26BCB9874(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = qword_2804467E0;
  type metadata accessor for SupportFlowSceneBridge(0);
  swift_allocObject();
  v5 = sub_26BCC4D94();

  *(v2 + v4) = v5;

  swift_deallocPartialClassInstance();
  return 0;
}

id SupportFlowHostingController.updateClientFlowPresentationState(_:)(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446808, &qword_26BCC9E10);
  OUTLINED_FUNCTION_3_0();
  result = MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  if (*(v1 + qword_2804467E8) == 2)
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    result = [v1 _hostedWindowScene];
    if (result)
    {
      v9 = result;
      sub_26BCC90DC();

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280446810, &qword_26BCC9E18);
      if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
      {
        return sub_26BCBACDC(v6);
      }

      else
      {
        v11 = v7;
        v12 = v8;
        swift_getOpaqueTypeConformance2();
        sub_26BCB89A4();
        sub_26BCB8AE8(&unk_280446820, sub_26BCB8A40, MEMORY[0x277D84F58]);
        sub_26BCB8AE8(&qword_2804467A8, sub_26BCB8A94, MEMORY[0x277D84F40]);
        sub_26BCB8AE8(&qword_2804467B0, sub_26BCB8B60, MEMORY[0x277D84F48]);
        sub_26BCC8CEC();
        return (*(*(v10 - 8) + 8))(v6, v10);
      }
    }
  }

  return result;
}

uint64_t sub_26BCB9BE0()
{
}

id SupportFlowHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26BCB9C5C(uint64_t a1)
{
}

uint64_t SupportFlowHostingController.scene(_:openURLContexts:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446858, &qword_26BCCA930);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  v6 = sub_26BCB9DC4(a2);
  if (v6)
  {
    v7 = v6;
    v8 = [v6 URL];

    sub_26BCC8BEC();
    v9 = sub_26BCC8BFC();
    v10 = 0;
  }

  else
  {
    v9 = sub_26BCC8BFC();
    v10 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v10, 1, v9);
  return sub_26BCC3CCC(v5);
}

uint64_t sub_26BCB9DC4(uint64_t a1)
{
  v2 = sub_26BCBB1E4(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_26BCBB244(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_26BCBB484(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_26BCBB4B8(v7, v9, v11 & 1);
  if (v12)
  {
    sub_26BCBB4B8(v2, v4, v6 & 1);
    return 0;
  }

  else
  {
    sub_26BCBB298(v2, v4, v6 & 1, a1);
    v13 = v14;
    sub_26BCBB4B8(v2, v4, v6 & 1);
  }

  return v13;
}

uint64_t sub_26BCB9E98(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_26BCBB148();
  sub_26BCBB18C();
  v6 = sub_26BCC903C();
  v7 = a3;
  v8 = a1;
  SupportFlowHostingController.scene(_:openURLContexts:)(v8, v6);
}

void sub_26BCB9F2C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SupportFlowHostingController.sceneDidBecomeActive(_:)(v5);
}

void sub_26BCB9F98(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SupportFlowHostingController.sceneWillResignActive(_:)(v5);
}

uint64_t sub_26BCBA004(uint64_t a1, unsigned int *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446860, &qword_26BCC9E20);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  v6 = *a2;
  v7 = sub_26BCC8CFC();
  OUTLINED_FUNCTION_2_0();
  (*(v8 + 104))(v5, v6, v7);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  return sub_26BCC3E1C(v5);
}

void sub_26BCBA0DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SupportFlowHostingController.sceneDidEnterBackground(_:)(v5);
}

uint64_t SupportFlowSceneHostingClientManager.clientBundleIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SupportFlowSceneHostingClientManager.flowState.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_26BCBA1B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_26BCBA208(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return SupportFlowSceneHostingClientManager.flowState.setter(&v3);
}

uint64_t SupportFlowSceneHostingClientManager.flowState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return sub_26BCBA29C();
}

uint64_t sub_26BCBA29C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v4 = *(v0 + 56);
    v5 = *(v0 + 48);
    v6 = v4;
    (*(v2 + 16))(&v5, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*SupportFlowSceneHostingClientManager.flowState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26BCBA388;
}

uint64_t sub_26BCBA388(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_26BCBA29C();
  }

  return result;
}

uint64_t SupportFlowSceneHostingClientManager.showsSearchBar.getter()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 1;
  }

  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 8))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3 & 1;
}

uint64_t sub_26BCBA42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  v10 = *(a5 + 8);
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 24) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v5 + 48) = v9;
  *(v5 + 56) = v10;
  return v5;
}

uint64_t SupportFlowSceneHostingClientManager.deinit()
{
  sub_26BCB8688(v0 + 16);

  return v0;
}

uint64_t SupportFlowSceneHostingClientManager.__deallocating_deinit()
{
  sub_26BCB8688(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

uint64_t sub_26BCBA520@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BCBA518();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.sceneHostingClientManager.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_26BCBAC88();
  sub_26BCC8DBC();
  return sub_26BCBA5A8;
}

uint64_t sub_26BCBA5A8(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_26BCC8DCC();
  }

  sub_26BCC8DCC();
}

uint64_t sub_26BCBA664@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneHostingClientManager.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BCBA694@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BCB9760();
  *a1 = result;
  return result;
}

uint64_t sub_26BCBA6C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BCBA718(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26BCBA7DC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_26BCBB510(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26BCBA7DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26BCBA8DC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_26BCC91EC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26BCBA8DC(uint64_t a1, unint64_t a2)
{
  v3 = sub_26BCBA928(a1, a2);
  sub_26BCBAA40(&unk_287CAD3D0);
  return v3;
}

uint64_t sub_26BCBA928(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26BCC8F9C())
  {
    result = sub_26BCBAB24(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26BCC91BC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26BCC91EC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26BCBAA40(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_26BCBAB94(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26BCBAB24(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804468F0, &qword_26BCCA018);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26BCBAB94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804468F0, &qword_26BCCA018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_26BCBAC88()
{
  result = qword_280446800;
  if (!qword_280446800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446800);
  }

  return result;
}

uint64_t sub_26BCBACDC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446808, &qword_26BCC9E10);
  OUTLINED_FUNCTION_2_0();
  (*(v2 + 8))(a1);
  return a1;
}

unint64_t sub_26BCBAD40()
{
  result = qword_280446868;
  if (!qword_280446868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446868);
  }

  return result;
}

uint64_t type metadata accessor for SupportFlowHostingController(uint64_t a1)
{
  result = qword_280446870;
  if (!qword_280446870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BCBAE90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BCBAEE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SupportFlowHostingController.HostingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SupportFlowHostingController.HostingType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x26BCBB0ACLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26BCBB148()
{
  result = qword_2804468E0;
  if (!qword_2804468E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804468E0);
  }

  return result;
}

unint64_t sub_26BCBB18C()
{
  result = qword_2804468E8;
  if (!qword_2804468E8)
  {
    sub_26BCBB148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804468E8);
  }

  return result;
}

uint64_t sub_26BCBB1E4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_26BCC912C();
  }

  else
  {
    return sub_26BCC911C();
  }
}

uint64_t sub_26BCBB244(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_26BCC917C();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

void sub_26BCBB298(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26D694AD0](a1, a2, v7);
      sub_26BCBB148();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_26BCBB148();
    if (sub_26BCC914C() == *(a4 + 36))
    {
      sub_26BCC915C();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_26BCC90EC();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_26BCC90FC();

        if (v11)
        {
          goto LABEL_18;
        }

        v8 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

BOOL sub_26BCBB484(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x26D694AA0);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t sub_26BCBB4B8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_26BCBB510(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_26BCBB570()
{
  result = qword_2804468F8;
  if (!qword_2804468F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804468F8);
  }

  return result;
}

uint64_t SupportFlowRemoteUIPresenter.__allocating_init(flowIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  SupportFlowRemoteUIPresenter.init(flowIdentifier:delegate:)(a1, a2, a3);
  return v6;
}

uint64_t SupportFlowRemoteUIPresenter.init(flowIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 16) = 0;
  v8 = OBJC_IVAR____TtC13SupportFlowUI28SupportFlowRemoteUIPresenter_flowIdentifier;
  v9 = sub_26BCC8C5C();
  __swift_storeEnumTagSinglePayload(v4 + v8, 1, 1, v9);
  swift_beginAccess();
  sub_26BCB6D50(a1, v4 + v8);
  swift_endAccess();
  v10 = objc_allocWithZone(type metadata accessor for RemoteHandleObserverDelegate());
  v11 = sub_26BCBBF24(a2, a3);
  sub_26BCBD8E0(a1, &qword_280446768, &qword_26BCC9CE0);
  *(v4 + 24) = v11;
  return v4;
}

uint64_t SupportFlowRemoteUIPresenter.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 unregisterObserver_];
    v2 = *(v0 + 16);
  }

  else
  {
    v2 = 0;
  }

  sub_26BCBD8E0(v0 + OBJC_IVAR____TtC13SupportFlowUI28SupportFlowRemoteUIPresenter_flowIdentifier, &qword_280446768, &qword_26BCC9CE0);
  return v0;
}

uint64_t SupportFlowRemoteUIPresenter.__deallocating_deinit()
{
  SupportFlowRemoteUIPresenter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_26BCBB890()
{
  v1 = v0;
  v2 = sub_26BCC8C5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28[-v7];
  v9 = [objc_allocWithZone(MEMORY[0x277D66BD0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446970, &qword_26BCCA0A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BCCA070;
  strcpy(v29, "flowIdentifier");
  v29[15] = -18;
  sub_26BCC91AC();
  v11 = OBJC_IVAR____TtC13SupportFlowUI28SupportFlowRemoteUIPresenter_flowIdentifier;
  swift_beginAccess();
  sub_26BCBD878(v1 + v11, v8, &qword_280446768, &qword_26BCC9CE0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2))
  {
    sub_26BCBD8E0(v8, &qword_280446768, &qword_26BCC9CE0);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    *(inited + 88) = 0;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_26BCBD8E0(v8, &qword_280446768, &qword_26BCC9CE0);
    v13 = sub_26BCC8C4C();
    v14 = v15;
    (*(v3 + 8))(v5, v2);
    v12 = MEMORY[0x277D837D0];
  }

  *(inited + 96) = v12;
  *(inited + 72) = v13;
  *(inited + 80) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280446978, &qword_26BCCA0B0);
  v16 = sub_26BCC8F2C();
  v17 = sub_26BCBBC68(v16);

  sub_26BCBD18C(v17, v9);
  v18 = [objc_opt_self() supportFlowApp];
  v19 = objc_allocWithZone(MEMORY[0x277D66BD8]);
  v20 = sub_26BCBCDFC(v18, 0xD000000000000021, 0x800000026BCCB870);
  v21 = [objc_opt_self() newHandleWithDefinition:v20 configurationContext:v9];
  v22 = *(v1 + 16);
  *(v1 + 16) = v21;
  v23 = v21;

  if (v23)
  {
    [v23 registerObserver_];
  }

  v24 = [objc_allocWithZone(MEMORY[0x277D66BC0]) init];
  v25 = *(v1 + 16);
  if (v25)
  {
    v26 = v25;
    v27 = v24;
    [v26 activateWithContext_];

    v20 = v27;
  }
}

uint64_t sub_26BCBBC68(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = sub_26BCBD8E0(v19, &unk_280446978, &qword_26BCCA0B0))
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (i << 6);
    sub_26BCBD81C(*(a1 + 48) + 40 * v12, __src);
    sub_26BCBD878(*(a1 + 56) + 32 * v12, &__src[40], &unk_280446978, &qword_26BCCA0B0);
    memcpy(__dst, __src, sizeof(__dst));
    sub_26BCBD878(&__dst[40], v28, &unk_280446978, &qword_26BCCA0B0);
    if (*&v28[24])
    {
      sub_26BCBD940(v28, v29);
      memcpy(v28, __dst, sizeof(v28));
      sub_26BCBD940(v29, v27);
      v13 = *(v2 + 16);
      if (*(v2 + 24) <= v13)
      {
        sub_26BCBCE74(v13 + 1, 1);
        v2 = v32;
      }

      result = sub_26BCC918C();
      v14 = v2 + 64;
      v15 = -1 << *(v2 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v2 + 64 + 8 * (v16 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v15) >> 6;
        while (++v17 != v21 || (v20 & 1) == 0)
        {
          v22 = v17 == v21;
          if (v17 == v21)
          {
            v17 = 0;
          }

          v20 |= v22;
          v23 = *(v14 + 8 * v17);
          if (v23 != -1)
          {
            v18 = __clz(__rbit64(~v23)) + (v17 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_27;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v2 + 64 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v24 = *(v2 + 48) + 40 * v18;
      v25 = *v28;
      v26 = *&v28[16];
      *(v24 + 32) = *&v28[32];
      *v24 = v25;
      *(v24 + 16) = v26;
      sub_26BCBD940(v27, (*(v2 + 56) + 32 * v18));
      ++*(v2 + 16);
      v19 = &v28[40];
    }

    else
    {
      sub_26BCBD8E0(__dst, &qword_280446A18, &qword_26BCCA1D0);
      v19 = v28;
    }
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id sub_26BCBBF24(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC13SupportFlowUIP33_2FF1053B602A1C99DA9867075A1A9B0728RemoteHandleObserverDelegate_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  v7.receiver = v2;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_26BCBBFAC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446A08, &qword_26BCCA190);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_26BCC8CAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BCC8C7C();
  v11 = a1;
  v12 = sub_26BCC8C9C();
  v13 = sub_26BCC904C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_26BCB5000, v12, v13, "SupportFlowRemoteUIPresenter - Did activate handle %@", v14, 0xCu);
    sub_26BCBD8E0(v15, &qword_280446A10, &qword_26BCCA1A8);
    MEMORY[0x26D695170](v15, -1, -1);
    MEMORY[0x26D695170](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v17 = sub_26BCC902C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v2;
  v19 = v2;
  sub_26BCBF5E8(0, 0, v6, &unk_26BCCA1C8, v18);
}

uint64_t sub_26BCBC208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_26BCBC228, 0, 0);
}

uint64_t sub_26BCBC228()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[3] + OBJC_IVAR____TtC13SupportFlowUIP33_2FF1053B602A1C99DA9867075A1A9B0728RemoteHandleObserverDelegate_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    v0[5] = v3;
    v0[6] = swift_getObjectType();
    v0[7] = *(v3 + 8);
    v0[8] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0xE40E000000000000;
    sub_26BCC8FFC();
    v0[9] = sub_26BCC8FEC();
    sub_26BCC8FDC();
    v4 = OUTLINED_FUNCTION_3_1();

    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_1_1();

    return v7();
  }
}

uint64_t sub_26BCBC318()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];

  v2(v1, v3);
  swift_unknownObjectRelease();
  v4 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

id sub_26BCBC410(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446A08, &qword_26BCCA190);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_26BCC8CAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BCC8C7C();
  v11 = a1;
  v12 = sub_26BCC8C9C();
  v13 = sub_26BCC904C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_26BCB5000, v12, v13, "SupportFlowRemoteUIPresenter - Did deactivate handle %@", v14, 0xCu);
    sub_26BCBD8E0(v15, &qword_280446A10, &qword_26BCCA1A8);
    MEMORY[0x26D695170](v15, -1, -1);
    MEMORY[0x26D695170](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v17 = sub_26BCC902C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v2;
  v19 = v2;
  sub_26BCBF5E8(0, 0, v6, &unk_26BCCA1B8, v18);

  return [v11 invalidate];
}

uint64_t sub_26BCBC67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_26BCBC69C, 0, 0);
}

uint64_t sub_26BCBC69C()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[3] + OBJC_IVAR____TtC13SupportFlowUIP33_2FF1053B602A1C99DA9867075A1A9B0728RemoteHandleObserverDelegate_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    v0[5] = v3;
    v0[6] = swift_getObjectType();
    v0[7] = *(v3 + 16);
    v0[8] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0x738F000000000000;
    sub_26BCC8FFC();
    v0[9] = sub_26BCC8FEC();
    sub_26BCC8FDC();
    v4 = OUTLINED_FUNCTION_3_1();

    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_1_1();

    return v7();
  }
}

uint64_t sub_26BCBC78C()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];

  v2(v1, v3);
  swift_unknownObjectRelease();
  v4 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26BCBC87C(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446A08, &qword_26BCCA190);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_26BCC8CAC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BCC8C7C();
  v13 = a1;
  v14 = a2;
  v15 = sub_26BCC8C9C();
  v16 = sub_26BCC906C();

  if (os_log_type_enabled(v15, v16))
  {
    v29 = v3;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412546;
    *(v17 + 4) = v13;
    *v18 = v13;
    *(v17 + 12) = 2112;
    v19 = v13;
    if (a2)
    {
      v20 = a2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v17 + 14) = v21;
    v18[1] = v22;
    _os_log_impl(&dword_26BCB5000, v15, v16, "SupportFlowRemoteUIPresenter - Did invalidate handle %@ with error %@", v17, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446A10, &qword_26BCCA1A8);
    swift_arrayDestroy();
    MEMORY[0x26D695170](v18, -1, -1);
    MEMORY[0x26D695170](v17, -1, -1);
    v3 = v29;
  }

  (*(v10 + 8))(v12, v9);
  v23 = sub_26BCC902C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v3;
  v24[5] = a2;
  v25 = a2;
  v26 = v3;
  sub_26BCBF5E8(0, 0, v8, &unk_26BCCA1A0, v24);
}

uint64_t sub_26BCBCB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_26BCBCB64, 0, 0);
}

uint64_t sub_26BCBCB64()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[3] + OBJC_IVAR____TtC13SupportFlowUIP33_2FF1053B602A1C99DA9867075A1A9B0728RemoteHandleObserverDelegate_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    v0[6] = v3;
    v0[7] = swift_getObjectType();
    v0[8] = *(v3 + 24);
    v0[9] = (v3 + 24) & 0xFFFFFFFFFFFFLL | 0xB5F5000000000000;
    sub_26BCC8FFC();
    v0[10] = sub_26BCC8FEC();
    sub_26BCC8FDC();
    v4 = OUTLINED_FUNCTION_3_1();

    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_1_1();

    return v7();
  }
}

uint64_t sub_26BCBCC54()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[4];

  v2(v4, v1, v3);
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

id sub_26BCBCDB4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26BCBCDFC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_26BCC8F5C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithSceneProvidingProcess:a1 configurationIdentifier:v5];

  return v6;
}

uint64_t sub_26BCBCE74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280446A20, &qword_26BCCA1D8);
  result = sub_26BCC921C();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_33:
    *v3 = v7;
    return result;
  }

  v34 = v2;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        sub_26BCBD128(0, (v33 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
    goto LABEL_33;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 48) + 40 * v18;
    if (v4)
    {
      v20 = *v19;
      v21 = *(v19 + 16);
      v38 = *(v19 + 32);
      v36 = v20;
      v37 = v21;
      sub_26BCBD940((*(v5 + 56) + 32 * v18), v35);
    }

    else
    {
      sub_26BCBD81C(v19, &v36);
      sub_26BCBB510(*(v5 + 56) + 32 * v18, v35);
    }

    result = sub_26BCC918C();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v7 + 48) + 40 * v25;
    v31 = v36;
    v32 = v37;
    *(v30 + 32) = v38;
    *v30 = v31;
    *(v30 + 16) = v32;
    result = sub_26BCBD940(v35, (*(v7 + 56) + 32 * v25));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_26BCBD128(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26BCCA080;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_26BCBD18C(uint64_t a1, void *a2)
{
  v3 = sub_26BCC8F1C();

  [a2 setUserInfo_];
}

uint64_t type metadata accessor for SupportFlowRemoteUIPresenter(uint64_t a1)
{
  result = qword_280446988;
  if (!qword_280446988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BCBD260(uint64_t a1)
{
  sub_26BCB8630(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for SupportFlowRemoteUIPresenter.ConfigurationContextKey(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SupportFlowRemoteUIPresenter.ConfigurationContextKey(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x26BCBD448);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26BCBD4C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26BCBD50C()
{
  OUTLINED_FUNCTION_7_0();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_1(v4);

  return sub_26BCBCB40(v6, v7, v8, v2, v1);
}

uint64_t sub_26BCBD5B0()
{
  OUTLINED_FUNCTION_6_0();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26BCBD6A4()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_1(v3);

  return sub_26BCBC67C(v5, v6, v7, v1);
}

uint64_t objectdestroy_20Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26BCBD780()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_1(v3);

  return sub_26BCBC208(v5, v6, v7, v1);
}

uint64_t sub_26BCBD878(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26BCBD8E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_26BCBD940(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26BCBD9F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26BCC908C();

  return v1;
}

uint64_t sub_26BCBDA6C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_26BCC909C();
}

void sub_26BCBDAD8()
{
  v2 = v0;
  sub_26BCC8CAC();
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))(v6);
  if ((v10 & 1) == 0)
  {
    v11 = *&v9;
    sub_26BCC8C7C();
    v12 = sub_26BCC8C9C();
    v13 = sub_26BCC905C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26BCB5000, v12, v13, "delayPresentationDuration", v14, 2u);
      MEMORY[0x26D695170](v14, -1, -1);
    }

    (*(v4 + 8))(v8, v1);
    aBlock[4] = sub_26BCBE260;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BCBE398;
    aBlock[3] = &block_descriptor_0;
    v15 = _Block_copy(aBlock);
    [v2 _beginDelayingPresentation_cancellationHandler_];
    _Block_release(v15);
  }

  sub_26BCBEA5C(0, &unk_280446A38, 0x277D761E0);
  OUTLINED_FUNCTION_3_2();
  v17 = (*(v16 + 112))();
  OUTLINED_FUNCTION_3_2();
  v19 = (*(v18 + 120))();
  v20 = sub_26BCBE3E8(v17, v19);
  sub_26BCBDA6C(v20);
  v21 = sub_26BCBD9F8();
  v22 = [objc_allocWithZone(MEMORY[0x277D761F0]) init];
  [v21 setActivationController_];

  v23 = sub_26BCBD9F8();
  [v23 setDelegate_];

  v24 = sub_26BCBD9F8();
  v25 = [v24 sceneView];

  v26 = OUTLINED_FUNCTION_2_2();
  if (!v26)
  {
    __break(1u);
    goto LABEL_13;
  }

  v27 = v26;
  v28 = v25;
  [v27 addSubview_];

  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = OUTLINED_FUNCTION_2_2();
  if (!v29)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446AC8, &qword_26BCCA288);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26BCCA1E0;
  v32 = [v28 leadingAnchor];

  v33 = OUTLINED_FUNCTION_2_2();
  if (!v33)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v34 = v33;
  v35 = [v33 leadingAnchor];

  v36 = OUTLINED_FUNCTION_1_2();
  *(v31 + 32) = v36;
  v37 = [v28 topAnchor];

  v38 = OUTLINED_FUNCTION_2_2();
  if (!v38)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = OUTLINED_FUNCTION_1_2();
  *(v31 + 40) = v41;
  v42 = [v28 trailingAnchor];

  v43 = OUTLINED_FUNCTION_2_2();
  if (!v43)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v44 = v43;
  v45 = [v43 trailingAnchor];

  v46 = OUTLINED_FUNCTION_1_2();
  *(v31 + 48) = v46;
  v47 = [v28 bottomAnchor];

  v48 = OUTLINED_FUNCTION_2_2();
  if (v48)
  {
    v49 = v48;
    v50 = [v48 bottomAnchor];

    v51 = [v47 constraintEqualToAnchor_];
    *(v31 + 56) = v51;
    sub_26BCBEA5C(0, &unk_280446AD0, 0x277CCAAD0);
    v52 = sub_26BCC8FCC();

    [v30 addConstraints_];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_26BCBE190()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for SupportFlowSceneHostingController(0);
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_26BCBDAD8();
}

uint64_t type metadata accessor for SupportFlowSceneHostingController(uint64_t a1)
{
  result = qword_280446A48;
  if (!qword_280446A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BCBE260()
{
  v0 = sub_26BCC8CAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BCC8C7C();
  v4 = sub_26BCC8C9C();
  v5 = sub_26BCC906C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_26BCB5000, v4, v5, "_beginDelayingPresentation timed out", v6, 2u);
    MEMORY[0x26D695170](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_26BCBE398(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

id sub_26BCBE3E8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProcessIdentity:a1 sceneSpecification:a2];

  return v4;
}

id SupportFlowSceneHostingController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26BCC8F5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SupportFlowSceneHostingController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_26BCBEA5C(0, &unk_280446A38, 0x277D761E0);
  sub_26BCC90AC();
  if (a2)
  {
    v6 = sub_26BCC8F5C();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for SupportFlowSceneHostingController(0);
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id SupportFlowSceneHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SupportFlowSceneHostingController.init(coder:)(void *a1)
{
  sub_26BCBEA5C(0, &unk_280446A38, 0x277D761E0);
  sub_26BCC90AC();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SupportFlowSceneHostingController(0);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SupportFlowSceneHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SupportFlowSceneHostingController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SupportFlowSceneHostingController.clientIsReady()()
{
  v1 = v0;
  sub_26BCC8CAC();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BCC8C7C();
  v7 = sub_26BCC8C9C();
  v8 = sub_26BCC905C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26BCB5000, v7, v8, "clientIsReady", v9, 2u);
    MEMORY[0x26D695170](v9, -1, -1);
  }

  (*(v3 + 8))(v6);
  [v1 _endDelayingPresentation];
}

void sub_26BCBE91C(uint64_t a1)
{
  sub_26BCBE9C4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26BCBE9C4(uint64_t a1)
{
  if (!qword_280446A58)
  {
    sub_26BCBEA5C(255, &unk_280446A38, 0x277D761E0);
    v1 = sub_26BCC90BC();
    if (!v2)
    {
      atomic_store(v1, &qword_280446A58);
    }
  }
}

uint64_t sub_26BCBEA2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BCBD9F8();
  *a1 = result;
  return result;
}

uint64_t sub_26BCBEA5C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id OUTLINED_FUNCTION_1_2()
{

  return [v0 (v2 + 3941)];
}

id OUTLINED_FUNCTION_2_2()
{

  return [v0 (v1 + 2808)];
}

uint64_t sub_26BCBEB14()
{
  v1 = sub_26BCC8DAC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_26BCC907C();
    v6 = sub_26BCC8E9C();
    sub_26BCC8C6C();

    sub_26BCC8D9C();
    swift_getAtKeyPath();
    sub_26BCBF454(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[15];
  }

  return v5;
}

uint64_t SupportFlowView.init(flowIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v4 = a2 + *(type metadata accessor for SupportFlowView(0) + 20);

  return sub_26BCBF074(a1, v4);
}

id SupportFlowView.makeUIViewController(context:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for SupportFlowView(0);
  sub_26BCB86B0(v0 + *(v4 + 20), v3);
  sub_26BCBEB14();
  v5 = sub_26BCC8D0C();
  v6 = objc_allocWithZone(type metadata accessor for SupportFlowViewController(0));
  return SupportFlowViewController.init(flowIdentifier:showsSearchBar:)(v3, (v5 & 1) == 0);
}

uint64_t sub_26BCBEDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26BCBF410(&qword_280446B10, &protocol conformance descriptor for SupportFlowView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26BCBEE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26BCBF410(&qword_280446B10, &protocol conformance descriptor for SupportFlowView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26BCBEEE0(uint64_t a1)
{
  sub_26BCBF410(&qword_280446B10, &protocol conformance descriptor for SupportFlowView);
  sub_26BCC8E6C();
  __break(1u);
}

uint64_t View.supportFlowSearchBar(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_26BCC8EAC();
}

uint64_t sub_26BCBEF98()
{
  sub_26BCBF49C();
  sub_26BCC8DBC();
  return v1;
}

uint64_t sub_26BCBEFD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26BCBEF98();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for SupportFlowView(uint64_t a1)
{
  result = qword_280446AE8;
  if (!qword_280446AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BCBF074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BCBF138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26BCBF1D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_26BCBF260(uint64_t a1)
{
  sub_26BCBF2E4();
  if (v1 <= 0x3F)
  {
    sub_26BCB8630(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BCBF2E4()
{
  if (!qword_280446AF8)
  {
    v0 = sub_26BCC8D1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280446AF8);
    }
  }
}

uint64_t sub_26BCBF334(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446B00, &qword_26BCCA3A8);
  sub_26BCC8D8C();
  sub_26BCBF3AC();
  return swift_getWitnessTable();
}

unint64_t sub_26BCBF3AC()
{
  result = qword_280446B08;
  if (!qword_280446B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446B00, &qword_26BCCA3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B08);
  }

  return result;
}

uint64_t sub_26BCBF410(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SupportFlowView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BCBF454(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_26BCBF49C()
{
  result = qword_280446B18;
  if (!qword_280446B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B18);
  }

  return result;
}

uint64_t sub_26BCBF508@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26BCBF500();
  *a1 = result;
  return result;
}

uint64_t sub_26BCBF530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26BCBF594();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_26BCBF594()
{
  result = qword_280446B20;
  if (!qword_280446B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B20);
  }

  return result;
}

uint64_t sub_26BCBF5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446A08, &qword_26BCCA190);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_26BCBD878(a3, v24 - v10, &qword_280446A08, &qword_26BCCA190);
  v12 = sub_26BCC902C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_26BCBD8E0(v11, &qword_280446A08, &qword_26BCCA190);
  }

  else
  {
    sub_26BCC901C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26BCC8FDC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26BCC8F8C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446C08, &qword_26BCCA7F8);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_26BCBD8E0(a3, &qword_280446A08, &qword_26BCCA190);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26BCBD8E0(a3, &qword_280446A08, &qword_26BCCA190);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446C08, &qword_26BCCA7F8);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_26BCBF8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446A08, &qword_26BCCA190);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_26BCBD878(a3, v24 - v10, &qword_280446A08, &qword_26BCCA190);
  v12 = sub_26BCC902C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_26BCBD8E0(v11, &qword_280446A08, &qword_26BCCA190);
  }

  else
  {
    sub_26BCC901C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26BCC8FDC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26BCC8F8C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_26BCBD8E0(a3, &qword_280446A08, &qword_26BCCA190);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26BCBD8E0(a3, &qword_280446A08, &qword_26BCCA190);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_26BCBFBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B50, &qword_26BCCA710);
  (*(*(v13 - 8) + 16))(a6, a1, v13);
  v14 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B58, &qword_26BCCA718) + 36));
  *v14 = sub_26BCC1FC4;
  v14[1] = v12;
  v14[2] = 0;
  v14[3] = 0;
}

uint64_t sub_26BCBFCCC(uint64_t (*a1)(uint64_t), uint64_t a2, char a3, uint64_t a4)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B60, &qword_26BCCA720);
  sub_26BCC8EEC();
  if (v7)
  {
  }

  sub_26BCC8EFC();

  return a1(v6);
}

uint64_t sub_26BCBFDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v13 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B68, &qword_26BCCA738) + 36));
  sub_26BCC8D5C();

  sub_26BCC900C();
  *v13 = &unk_26BCCA730;
  v13[1] = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B70, &qword_26BCCA740);
  v15 = *(*(v14 - 8) + 16);

  return v15(a6, a1, v14);
}

uint64_t sub_26BCBFEB8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = a4;
  *(v4 + 106) = a3;
  *(v4 + 48) = a1;
  sub_26BCC8FFC();
  *(v4 + 72) = sub_26BCC8FEC();
  v6 = sub_26BCC8FDC();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return MEMORY[0x2822009F8](sub_26BCBFF58, v6, v5);
}

uint64_t sub_26BCBFF58()
{
  v1 = *(v0 + 106);
  *(v0 + 16) = v1;
  *(v0 + 24) = *(v0 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B60, &qword_26BCCA720);
  sub_26BCC8EEC();
  if (*(v0 + 104))
  {

    OUTLINED_FUNCTION_5_1();

    return v2();
  }

  else
  {
    v4 = *(v0 + 64);
    *(v0 + 32) = v1;
    v5 = *(v0 + 48);
    *(v0 + 40) = v4;
    *(v0 + 105) = 1;
    sub_26BCC8EFC();

    v7 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_26BCC0108;

    return v7();
  }
}

uint64_t sub_26BCC0108()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_3();
  *v3 = v2;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26BCC021C, v5, v4);
}

uint64_t sub_26BCC021C()
{
  OUTLINED_FUNCTION_6_0();

  OUTLINED_FUNCTION_5_1();

  return v0();
}

uint64_t sub_26BCC02A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v37 = a1;
  v40 = a6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B78, &unk_26BCCA748);
  MEMORY[0x28223BE20](v38);
  v9 = &v33 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446860, &qword_26BCC9E20);
  MEMORY[0x28223BE20](v36);
  v11 = &v33 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B80, &qword_26BCCA758);
  v35 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v13 = &v33 - v12;
  v14 = sub_26BCC8DAC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  v18 = a2;
  v19 = a3;
  if ((a3 & 1) == 0)
  {
    sub_26BCC907C();
    v20 = sub_26BCC8E9C();
    sub_26BCC8C6C();

    sub_26BCC8D9C();
    swift_getAtKeyPath();
    j__swift_release(a2);
    (*(v15 + 8))(v17, v14);
    v18 = v41;
  }

  if (v18)
  {
    sub_26BCC3F6C(v11);
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = v19 & 1;
    v22 = v34;
    *(v21 + 32) = v33;
    *(v21 + 40) = v22;
    j__swift_retain(a2);

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B88, &unk_26BCCA760);
    v24 = sub_26BCC2D28(&qword_280446B90, &qword_280446B88, &unk_26BCCA760);
    v25 = sub_26BCC21A4();
    v26 = v36;
    sub_26BCC8EDC();

    sub_26BCBD8E0(v11, &qword_280446860, &qword_26BCC9E20);
    v27 = v35;
    v28 = v39;
    (*(v35 + 16))(v9, v13, v39);
    swift_storeEnumTagMultiPayload();
    v41 = v23;
    v42 = v26;
    v43 = v24;
    v44 = v25;
    swift_getOpaqueTypeConformance2();
    sub_26BCC8DFC();

    return (*(v27 + 8))(v13, v28);
  }

  else
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B88, &unk_26BCCA760);
    (*(*(v30 - 8) + 16))(v9, v37, v30);
    swift_storeEnumTagMultiPayload();
    v31 = sub_26BCC2D28(&qword_280446B90, &qword_280446B88, &unk_26BCCA760);
    v32 = sub_26BCC21A4();
    v41 = v30;
    v42 = v36;
    v43 = v31;
    v44 = v32;
    swift_getOpaqueTypeConformance2();
    return sub_26BCC8DFC();
  }
}

uint64_t sub_26BCC0780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = sub_26BCC8FFC();
  v6[3] = sub_26BCC8FEC();
  v10 = (a6 + *a6);
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_26BCC0890;

  return v10();
}

uint64_t sub_26BCC0890()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_3();
  *v2 = v1;

  v4 = sub_26BCC8FDC();

  return MEMORY[0x2822009F8](sub_26BCC30C4, v4, v3);
}

uint64_t sub_26BCC09D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v37 = a1;
  v40 = a6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BB0, &qword_26BCCA7A0);
  MEMORY[0x28223BE20](v38);
  v9 = &v33 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446860, &qword_26BCC9E20);
  MEMORY[0x28223BE20](v36);
  v11 = &v33 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BB8, &qword_26BCCA7A8);
  v35 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v13 = &v33 - v12;
  v14 = sub_26BCC8DAC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  v18 = a2;
  v19 = a3;
  if ((a3 & 1) == 0)
  {
    sub_26BCC907C();
    v20 = sub_26BCC8E9C();
    sub_26BCC8C6C();

    sub_26BCC8D9C();
    swift_getAtKeyPath();
    j__swift_release(a2);
    (*(v15 + 8))(v17, v14);
    v18 = v41;
  }

  if (v18)
  {
    sub_26BCC3F6C(v11);
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = v19 & 1;
    v22 = v34;
    *(v21 + 32) = v33;
    *(v21 + 40) = v22;
    j__swift_retain(a2);

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BC0, &qword_26BCCA7B0);
    v24 = sub_26BCC2D28(&qword_280446BC8, &qword_280446BC0, &qword_26BCCA7B0);
    v25 = sub_26BCC21A4();
    v26 = v36;
    sub_26BCC8EDC();

    sub_26BCBD8E0(v11, &qword_280446860, &qword_26BCC9E20);
    v27 = v35;
    v28 = v39;
    (*(v35 + 16))(v9, v13, v39);
    swift_storeEnumTagMultiPayload();
    v41 = v23;
    v42 = v26;
    v43 = v24;
    v44 = v25;
    swift_getOpaqueTypeConformance2();
    sub_26BCC8DFC();

    return (*(v27 + 8))(v13, v28);
  }

  else
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BC0, &qword_26BCCA7B0);
    (*(*(v30 - 8) + 16))(v9, v37, v30);
    swift_storeEnumTagMultiPayload();
    v31 = sub_26BCC2D28(&qword_280446BC8, &qword_280446BC0, &qword_26BCCA7B0);
    v32 = sub_26BCC21A4();
    v41 = v30;
    v42 = v36;
    v43 = v31;
    v44 = v32;
    swift_getOpaqueTypeConformance2();
    return sub_26BCC8DFC();
  }
}

uint64_t sub_26BCC0EAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t a8, uint64_t a9)
{
  v42 = a8;
  v43 = a3;
  v44 = a5;
  v45 = a6;
  v40 = a4;
  v46 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446A08, &qword_26BCCA190);
  MEMORY[0x28223BE20](v10 - 8);
  v41 = &v39[-v11];
  v12 = sub_26BCC8CFC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BA8, &qword_26BCCA770);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v39[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446860, &qword_26BCC9E20);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v39[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v25 = &v39[-v24];
  (*(v13 + 104))(&v39[-v24], *a7, v12);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v12);
  v26 = *(v17 + 56);
  sub_26BCBD878(v46, v19, &qword_280446860, &qword_26BCC9E20);
  sub_26BCBD878(v25, &v19[v26], &qword_280446860, &qword_26BCC9E20);
  OUTLINED_FUNCTION_11_0(v19);
  if (v27)
  {
    sub_26BCBD8E0(v25, &qword_280446860, &qword_26BCC9E20);
    OUTLINED_FUNCTION_11_0(&v19[v26]);
    if (v27)
    {
      sub_26BCBD8E0(v19, &qword_280446860, &qword_26BCC9E20);
LABEL_11:
      v31 = sub_26BCC902C();
      v32 = v41;
      __swift_storeEnumTagSinglePayload(v41, 1, 1, v31);
      sub_26BCC8FFC();
      v33 = v40 & 1;
      v34 = v43;
      j__swift_retain(v43);
      v35 = v45;

      v36 = sub_26BCC8FEC();
      v37 = swift_allocObject();
      v38 = MEMORY[0x277D85700];
      *(v37 + 16) = v36;
      *(v37 + 24) = v38;
      *(v37 + 32) = v34;
      *(v37 + 40) = v33;
      *(v37 + 48) = v44;
      *(v37 + 56) = v35;
      sub_26BCBF8E0(0, 0, v32, a9, v37);
    }

    return sub_26BCBD8E0(v19, &qword_280446BA8, &qword_26BCCA770);
  }

  sub_26BCBD878(v19, v23, &qword_280446860, &qword_26BCC9E20);
  OUTLINED_FUNCTION_11_0(&v19[v26]);
  if (v27)
  {
    sub_26BCBD8E0(v25, &qword_280446860, &qword_26BCC9E20);
    (*(v13 + 8))(v23, v12);
    return sub_26BCBD8E0(v19, &qword_280446BA8, &qword_26BCCA770);
  }

  (*(v13 + 32))(v15, &v19[v26], v12);
  sub_26BCC2D7C(&qword_280446BA0, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  v28 = sub_26BCC8F4C();
  v29 = *(v13 + 8);
  v29(v15, v12);
  sub_26BCBD8E0(v25, &qword_280446860, &qword_26BCC9E20);
  v29(v23, v12);
  result = sub_26BCBD8E0(v19, &qword_280446860, &qword_26BCC9E20);
  if (v28)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_26BCC1314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = sub_26BCC8FFC();
  v6[3] = sub_26BCC8FEC();
  v10 = (a6 + *a6);
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_26BCC1424;

  return v10();
}

uint64_t sub_26BCC1424()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_3();
  *v2 = v1;

  v4 = sub_26BCC8FDC();

  return MEMORY[0x2822009F8](sub_26BCC1550, v4, v3);
}

uint64_t sub_26BCC1550()
{
  OUTLINED_FUNCTION_6_0();

  OUTLINED_FUNCTION_5_1();

  return v0();
}

uint64_t sub_26BCC15E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a5;
  v33 = a1;
  v34 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BD0, &qword_26BCCA7C8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BD8, &qword_26BCCA7D0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = sub_26BCC8DAC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a3 & 1) == 0)
  {
    sub_26BCC907C();
    v19 = sub_26BCC8E9C();
    v31 = v11;
    v20 = v9;
    v21 = a4;
    v22 = v19;
    sub_26BCC8C6C();

    a4 = v21;
    v9 = v20;
    v11 = v31;
    sub_26BCC8D9C();
    swift_getAtKeyPath();
    j__swift_release(a2);
    (*(v16 + 8))(v18, v15);
    a2 = v35;
  }

  if (a2)
  {

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BE0, &qword_26BCCA7D8);
    (*(*(v23 - 8) + 16))(v11, v33, v23);
    v24 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446C00, &qword_26BCCA7E0) + 36)];
    v25 = v32;
    *v24 = a4;
    *(v24 + 1) = v25;
    v24[16] = 0;
    *(v24 + 3) = 0;
    KeyPath = swift_getKeyPath();
    v27 = &v11[*(v9 + 36)];
    *v27 = KeyPath;
    v27[8] = 0;
    *(v27 + 2) = a4;
    *(v27 + 3) = v25;
    sub_26BCBD878(v11, v14, &qword_280446BD0, &qword_26BCCA7C8);
    swift_storeEnumTagMultiPayload();
    sub_26BCC2D28(&qword_280446BE8, &qword_280446BE0, &qword_26BCCA7D8);
    sub_26BCC2764();
    swift_retain_n();
    sub_26BCC8DFC();
    return sub_26BCBD8E0(v11, &qword_280446BD0, &qword_26BCCA7C8);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BE0, &qword_26BCCA7D8);
    (*(*(v29 - 8) + 16))(v14, v33, v29);
    swift_storeEnumTagMultiPayload();
    sub_26BCC2D28(&qword_280446BE8, &qword_280446BE0, &qword_26BCCA7D8);
    sub_26BCC2764();
    return sub_26BCC8DFC();
  }
}

uint64_t sub_26BCC1A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v7 = 0;
  v8 = 0;
  return MEMORY[0x26D694830](v6, a3, a5, a4);
}

uint64_t sub_26BCC1A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v12 = 0;
  v13 = a1;
  v14 = a2;

  MEMORY[0x26D694830](&KeyPath, a3, a5, a4);
}

unint64_t sub_26BCC1B38()
{
  result = qword_280446B28;
  if (!qword_280446B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B28);
  }

  return result;
}

unint64_t sub_26BCC1BAC()
{
  result = qword_280446B30;
  if (!qword_280446B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B30);
  }

  return result;
}

unint64_t sub_26BCC1C20()
{
  result = qword_280446B38;
  if (!qword_280446B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B38);
  }

  return result;
}

unint64_t sub_26BCC1C94()
{
  result = qword_280446B40;
  if (!qword_280446B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B40);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx011SupportFlowB021OnFirstAppearModifier33_750130770D876F9AD2761B1FB97615DFLLVGAaBHPxAaBHD1__AhA0cK0HPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_26BCC8D8C();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_26BCC1D78()
{
  result = qword_280446B48;
  if (!qword_280446B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B48);
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

uint64_t sub_26BCC1E1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BCC1E5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_9_0(result);
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_26BCC1EA8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BCC1EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_9_0(result);
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
      *result = (a2 - 1);
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

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26BCC2014()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26BCC20C0;

  return sub_26BCBFEB8(v2, v3, v4, v5);
}

uint64_t sub_26BCC20C0()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_3();
  *v2 = v1;

  OUTLINED_FUNCTION_5_1();

  return v3();
}

unint64_t sub_26BCC21A4()
{
  result = qword_280446B98;
  if (!qword_280446B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446860, &qword_26BCC9E20);
    sub_26BCC2D7C(&qword_280446BA0, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B98);
  }

  return result;
}

uint64_t sub_26BCC228C()
{
  OUTLINED_FUNCTION_7_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_1(v1);

  return sub_26BCC0780(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_26BCC232C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BCC2424;

  return v6(a1);
}

uint64_t sub_26BCC2424()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_3();
  *v2 = v1;

  OUTLINED_FUNCTION_5_1();

  return v3();
}

uint64_t sub_26BCC2508()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BCC2540()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_10_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_3(v1);

  return v4(v3);
}

uint64_t objectdestroy_39Tm()
{
  j__swift_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_42Tm()
{
  swift_unknownObjectRelease();
  j__swift_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26BCC26C4()
{
  OUTLINED_FUNCTION_7_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_1(v1);

  return sub_26BCC1314(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_26BCC2764()
{
  result = qword_280446BF0;
  if (!qword_280446BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446BD0, &qword_26BCCA7C8);
    sub_26BCC27F0();
    sub_26BCC1C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446BF0);
  }

  return result;
}

unint64_t sub_26BCC27F0()
{
  result = qword_280446BF8;
  if (!qword_280446BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446C00, &qword_26BCCA7E0);
    sub_26BCC2D28(&qword_280446BE8, &qword_280446BE0, &qword_26BCCA7D8);
    sub_26BCC1BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446BF8);
  }

  return result;
}

uint64_t sub_26BCC2894(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_26BCC2988;

  return v5(v2 + 32);
}

uint64_t sub_26BCC2988()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_1_3();
  *v5 = v4;

  *v3 = *(v2 + 32);
  OUTLINED_FUNCTION_5_1();

  return v6();
}

uint64_t sub_26BCC2A88()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_10_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_3(v1);

  return v4(v3);
}

uint64_t sub_26BCC2B18()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_10_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_3(v1);

  return v4(v3);
}

unint64_t sub_26BCC2BAC()
{
  result = qword_280446C10;
  if (!qword_280446C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446B58, &qword_26BCCA718);
    sub_26BCC2D28(&qword_280446C18, &qword_280446B50, &qword_26BCCA710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C10);
  }

  return result;
}

unint64_t sub_26BCC2C54()
{
  result = qword_280446C20;
  if (!qword_280446C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446B68, &qword_26BCCA738);
    sub_26BCC2D28(&qword_280446C28, &qword_280446B70, &qword_26BCCA740);
    sub_26BCC2D7C(&qword_280446C30, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C20);
  }

  return result;
}

uint64_t sub_26BCC2D28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BCC2D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26BCC2DC8()
{
  result = qword_280446C38;
  if (!qword_280446C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446C40, &qword_26BCCA808);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446B88, &unk_26BCCA760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446860, &qword_26BCC9E20);
    sub_26BCC2D28(&qword_280446B90, &qword_280446B88, &unk_26BCCA760);
    sub_26BCC21A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C38);
  }

  return result;
}

unint64_t sub_26BCC2ED8()
{
  result = qword_280446C48;
  if (!qword_280446C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446C50, &qword_26BCCA810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446BC0, &qword_26BCCA7B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446860, &qword_26BCC9E20);
    sub_26BCC2D28(&qword_280446BC8, &qword_280446BC0, &qword_26BCCA7B0);
    sub_26BCC21A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C48);
  }

  return result;
}

unint64_t sub_26BCC2FE8()
{
  result = qword_280446C58;
  if (!qword_280446C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446C60, &qword_26BCCA818);
    sub_26BCC2D28(&qword_280446BE8, &qword_280446BE0, &qword_26BCCA7D8);
    sub_26BCC2764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C58);
  }

  return result;
}

uint64_t sub_26BCC3194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a4;
  v47 = a1;
  v50 = a6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446C70, &qword_26BCCA928);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446858, &qword_26BCCA930);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446C78, &qword_26BCCA938);
  OUTLINED_FUNCTION_2();
  v45 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = sub_26BCC8DAC();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);

  v25 = a2;
  v43 = a3;
  if ((a3 & 1) == 0)
  {
    sub_26BCC907C();
    v26 = sub_26BCC8E9C();
    v42 = v14;
    v27 = a5;
    v28 = v26;
    sub_26BCC8C6C();

    a5 = v27;
    v14 = v42;
    sub_26BCC8D9C();
    swift_getAtKeyPath();
    j__swift_release(a2);
    (*(v21 + 8))(v24, v19);
    v25 = v51;
  }

  if (v25)
  {
    sub_26BCC3F90(v14);
    v29 = swift_allocObject();
    *(v29 + 16) = a2;
    *(v29 + 24) = v43 & 1;
    *(v29 + 32) = v44;
    *(v29 + 40) = a5;
    j__swift_retain(a2);

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446C80, &qword_26BCCA940);
    v31 = sub_26BCC393C();
    v32 = sub_26BCC39A0();
    v33 = v46;
    sub_26BCC8EDC();

    sub_26BCC3AD8(v14);
    v34 = v45;
    v35 = v49;
    (*(v45 + 16))(v11, v18, v49);
    swift_storeEnumTagMultiPayload();
    v51 = v30;
    v52 = v33;
    v53 = v31;
    v54 = v32;
    OUTLINED_FUNCTION_0_4();
    sub_26BCC8DFC();

    return (*(v34 + 8))(v18, v35);
  }

  else
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446C80, &qword_26BCCA940);
    OUTLINED_FUNCTION_2_0();
    (*(v38 + 16))(v11, v47, v37);
    swift_storeEnumTagMultiPayload();
    v39 = sub_26BCC393C();
    v40 = sub_26BCC39A0();
    v51 = v37;
    v52 = v46;
    v53 = v39;
    v54 = v40;
    OUTLINED_FUNCTION_0_4();
    return sub_26BCC8DFC();
  }
}

uint64_t sub_26BCC35DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446858, &qword_26BCCA930);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_26BCC8BFC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BCC3B40(a2, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_26BCC3AD8(v9);
  }

  (*(v11 + 32))(v13, v9, v10);
  a5(v13);
  return (*(v11 + 8))(v13, v10);
}

uint64_t View.onOpenSupportFlowURL(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v10 = 0;
  v11 = a1;
  v12 = a2;

  MEMORY[0x26D694830](&KeyPath, a3, &type metadata for OnOpenFlowURLModifier, a4);
}

uint64_t sub_26BCC3818(void *a1)
{
  sub_26BCC8D8C();
  sub_26BCC387C();
  return swift_getWitnessTable();
}

unint64_t sub_26BCC387C()
{
  result = qword_280446C68;
  if (!qword_280446C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C68);
  }

  return result;
}

uint64_t sub_26BCC38D0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_26BCC393C()
{
  result = qword_280446C88;
  if (!qword_280446C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446C80, &qword_26BCCA940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C88);
  }

  return result;
}

unint64_t sub_26BCC39A0()
{
  result = qword_280446C90;
  if (!qword_280446C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446858, &qword_26BCCA930);
    sub_26BCC3A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C90);
  }

  return result;
}

unint64_t sub_26BCC3A24()
{
  result = qword_280446C98;
  if (!qword_280446C98)
  {
    sub_26BCC8BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C98);
  }

  return result;
}

uint64_t sub_26BCC3A7C()
{
  j__swift_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26BCC3AD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446858, &qword_26BCCA930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BCC3B40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446858, &qword_26BCCA930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BCC3BB4()
{
  result = qword_280446CA0;
  if (!qword_280446CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446CA8, &qword_26BCCA948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446C80, &qword_26BCCA940);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446858, &qword_26BCCA930);
    sub_26BCC393C();
    sub_26BCC39A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446CA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26BCC3CCC(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446858, &qword_26BCCA930);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtC13SupportFlowUI22SupportFlowSceneBridge__url;
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_8_1();
  sub_26BCC4084(v6, a1);
  OUTLINED_FUNCTION_4_2();
  if (v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_3_3();
    sub_26BCC4684(v9, sub_26BCC4CC0, v10);
  }

  else
  {
    OUTLINED_FUNCTION_7_2();
    sub_26BCC4C70(a1, v1 + v7, &qword_280446858, &qword_26BCCA930);
    swift_endAccess();
  }

  return sub_26BCC4CF4(a1, &qword_280446858, &qword_26BCCA930);
}

uint64_t sub_26BCC3E1C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446860, &qword_26BCC9E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtC13SupportFlowUI22SupportFlowSceneBridge__scenePhase;
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_8_1();
  sub_26BCC4384(v6, a1);
  OUTLINED_FUNCTION_4_2();
  if (v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_3_3();
    sub_26BCC4684(v9, sub_26BCC4C3C, v10);
  }

  else
  {
    OUTLINED_FUNCTION_7_2();
    sub_26BCC4C70(a1, v1 + v7, &qword_280446860, &qword_26BCC9E20);
    swift_endAccess();
  }

  return sub_26BCC4CF4(a1, &qword_280446860, &qword_26BCC9E20);
}

uint64_t sub_26BCC3FB4@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v14 = v5;
  OUTLINED_FUNCTION_0_5();
  sub_26BCC4D4C(v10, v11, &unk_26BCCA968);
  sub_26BCC8C1C();

  v12 = *a2;
  swift_beginAccess();
  return sub_26BCC4BEC(v14 + v12, a5, a3, a4);
}

uint64_t sub_26BCC4084(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCC8BFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446858, &qword_26BCCA930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446CF0, &unk_26BCCA9E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_26BCC4BEC(a1, &v20 - v13, &qword_280446858, &qword_26BCCA930);
  sub_26BCC4BEC(a2, &v14[v15], &qword_280446858, &qword_26BCCA930);
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) != 1)
  {
    sub_26BCC4BEC(v14, v10, &qword_280446858, &qword_26BCCA930);
    if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_26BCC4D4C(&qword_280446C98, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v17 = sub_26BCC8F4C();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_26BCC4CF4(v14, &qword_280446858, &qword_26BCCA930);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_26BCC4CF4(v14, &qword_280446CF0, &unk_26BCCA9E0);
    v16 = 1;
    return v16 & 1;
  }

  sub_26BCC4CF4(v14, &qword_280446858, &qword_26BCCA930);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_26BCC4384(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCC8CFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446860, &qword_26BCC9E20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BA8, &qword_26BCCA770);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_26BCC4BEC(a1, &v20 - v13, &qword_280446860, &qword_26BCC9E20);
  sub_26BCC4BEC(a2, &v14[v15], &qword_280446860, &qword_26BCC9E20);
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) != 1)
  {
    sub_26BCC4BEC(v14, v10, &qword_280446860, &qword_26BCC9E20);
    if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_26BCC4D4C(&qword_280446BA0, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
      v17 = sub_26BCC8F4C();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_26BCC4CF4(v14, &qword_280446860, &qword_26BCC9E20);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_26BCC4CF4(v14, &qword_280446BA8, &qword_26BCCA770);
    v16 = 1;
    return v16 & 1;
  }

  sub_26BCC4CF4(v14, &qword_280446860, &qword_26BCC9E20);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_26BCC4684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_5();
  sub_26BCC4D4C(v3, v4, &unk_26BCCA968);
  return sub_26BCC8C0C();
}

uint64_t sub_26BCC472C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - v12;
  sub_26BCC4BEC(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_26BCC47D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_26BCC4C70(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t sub_26BCC4858()
{
  sub_26BCC4CF4(v0 + OBJC_IVAR____TtC13SupportFlowUI22SupportFlowSceneBridge__url, &qword_280446858, &qword_26BCCA930);
  sub_26BCC4CF4(v0 + OBJC_IVAR____TtC13SupportFlowUI22SupportFlowSceneBridge__scenePhase, &qword_280446860, &qword_26BCC9E20);
  v1 = OBJC_IVAR____TtC13SupportFlowUI22SupportFlowSceneBridge___observationRegistrar;
  sub_26BCC8C3C();
  OUTLINED_FUNCTION_2_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_26BCC48F0()
{
  sub_26BCC4858();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SupportFlowSceneBridge(uint64_t a1)
{
  result = qword_280446CC8;
  if (!qword_280446CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BCC499C(uint64_t a1)
{
  sub_26BCC4AD8(319, &qword_280446CD8, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_26BCC4AD8(319, &qword_280446CE0, MEMORY[0x277CDD6C8]);
    if (v2 <= 0x3F)
    {
      sub_26BCC8C3C();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26BCC4AD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BCC910C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26BCC4BEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_5_2(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_0();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_26BCC4C70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_5_2(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_0();
  (*(v6 + 24))(v4, v5);
  return v4;
}

uint64_t sub_26BCC4CF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26BCC4D4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BCC4D94()
{
  sub_26BCC8BFC();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_4();
  sub_26BCC8CFC();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_4();
  sub_26BCC8C2C();
  return v0;
}

uint64_t OUTLINED_FUNCTION_1_4()
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return sub_26BCC4CF4(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return sub_26BCC4BEC(v0 + v4, v3, v1, v2);
}

uint64_t SupportFlowError.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x206E776F6E6B6E55;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001FLL;
  }

  result = sub_26BCC92BC();
  __break(1u);
  return result;
}

unint64_t SupportFlowError.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_26BCC4FB0()
{
  result = qword_280446CF8;
  if (!qword_280446CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446CF8);
  }

  return result;
}

uint64_t sub_26BCC5018(uint64_t a1)
{
  sub_26BCC92FC();
  sub_26BCC52EC();
  sub_26BCC8F3C();
  return sub_26BCC931C();
}

uint64_t sub_26BCC5070(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCC5478();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_26BCC50C4(uint64_t a1, uint64_t a2)
{
  sub_26BCC92FC();
  sub_26BCC52EC();
  sub_26BCC8F3C();
  return sub_26BCC931C();
}

unint64_t sub_26BCC5118@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SupportFlowError.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_26BCC5160(uint64_t a1)
{
  v2 = sub_26BCC5478();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_26BCC519C(uint64_t a1)
{
  v2 = sub_26BCC5478();

  return MEMORY[0x28211C018](a1, v2);
}

unint64_t sub_26BCC5294()
{
  result = qword_280446D00;
  if (!qword_280446D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446D00);
  }

  return result;
}

unint64_t sub_26BCC52EC()
{
  result = qword_280446D08;
  if (!qword_280446D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446D08);
  }

  return result;
}

unint64_t sub_26BCC5344()
{
  result = qword_280446D10;
  if (!qword_280446D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446D10);
  }

  return result;
}

unint64_t sub_26BCC539C()
{
  result = qword_280446D18;
  if (!qword_280446D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446D18);
  }

  return result;
}

uint64_t sub_26BCC5414(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCC5478();

  return MEMORY[0x28211C008](a1, a2, v4);
}

unint64_t sub_26BCC5478()
{
  result = qword_280446D20;
  if (!qword_280446D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446D20);
  }

  return result;
}

uint64_t NSUserActivity.isSupportFlowServiceActivity.getter()
{
  v1 = [v0 activityType];
  v2 = sub_26BCC8F6C();
  v4 = v3;

  if (v2 == 0xD00000000000001ELL && 0x800000026BCCBC80 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_26BCC92AC();
  }

  return v6 & 1;
}

_BYTE *_s11UserInfoKeyOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x26BCC5670);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

id sub_26BCC56A8()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_showsSearchBar] = 1;
  v2 = OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_flowIdentifier;
  v3 = sub_26BCC8C5C();
  __swift_storeEnumTagSinglePayload(&v0[v2], 1, 1, v3);
  v4 = [objc_opt_self() mainBundle];
  v5 = sub_26BCC60BC(v4);
  v6 = &v0[OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_bundleIdentifier];
  *v6 = v5;
  v6[1] = v7;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_26BCC5780(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_showsSearchBar;
  v4[OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_showsSearchBar] = 1;
  sub_26BCB86B0(a1, &v4[OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_flowIdentifier]);
  v4[v10] = a2;
  v11 = &v4[OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_bundleIdentifier];
  *v11 = a3;
  v11[1] = a4;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_26BCB6E54(a1);
  return v12;
}

id sub_26BCC5834()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_26BCC8C5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BCC5DB4();
  v9 = sub_26BCC5BB4(0xD00000000000001ELL, 0x800000026BCCBC80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D58, &qword_26BCCAC68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BCCA070;
  strcpy(v25, "showsSearchBar");
  v25[15] = -18;
  v11 = MEMORY[0x277D837D0];
  sub_26BCC91AC();
  v12 = *(v1 + OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_showsSearchBar);
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = v12;
  v13 = sub_26BCC8F2C();
  sub_26BCB86B0(v1 + OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_flowIdentifier, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_26BCB6E54(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    strcpy(&v23, "flowIdentifier");
    HIBYTE(v23) = -18;
    sub_26BCC91AC();
    v14 = sub_26BCC8C4C();
    v24 = v11;
    *&v23 = v14;
    *(&v23 + 1) = v15;
    sub_26BCBD940(&v23, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_6(isUniquelyReferenced_nonNull_native);
    v13 = v21;
    sub_26BCC612C(v25);
    (*(v6 + 8))(v8, v5);
  }

  v17 = *(v1 + OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_bundleIdentifier + 8);
  if (v17)
  {
    v18 = *(v1 + OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_bundleIdentifier);
    *&v23 = 0xD000000000000010;
    *(&v23 + 1) = 0x800000026BCCBC60;

    sub_26BCC91AC();
    v24 = v11;
    *&v23 = v18;
    *(&v23 + 1) = v17;
    sub_26BCBD940(&v23, v22);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_6(v19);
    v13 = v21;
    sub_26BCC612C(v25);
  }

  sub_26BCBD18C(v13, v9);
  return v9;
}

id sub_26BCC5BB4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_26BCC8F5C();

  v4 = [v2 initWithActivityType_];

  return v4;
}

uint64_t type metadata accessor for SupportFlowServiceSpecification(uint64_t a1)
{
  result = qword_280446D40;
  if (!qword_280446D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BCC5D10(uint64_t a1)
{
  sub_26BCB8630(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_26BCC5DB4()
{
  result = qword_280446D50;
  if (!qword_280446D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280446D50);
  }

  return result;
}

unint64_t sub_26BCC5DF8(uint64_t a1)
{
  v2 = sub_26BCC918C();

  return sub_26BCC5E3C(a1, v2);
}

unint64_t sub_26BCC5E3C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_26BCBD81C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D694B00](v8, a1);
    sub_26BCC612C(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_26BCC5F00(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_26BCC5DF8(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D60, &unk_26BCCAC70);
  if ((sub_26BCC91FC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_26BCC5DF8(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_26BCC92CC();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = (v14[7] + 32 * v10);
    __swift_destroy_boxed_opaque_existential_0(v15);

    return sub_26BCBD940(a1, v15);
  }

  else
  {
    sub_26BCBD81C(a2, v17);
    return sub_26BCC6040(v10, v17, a1, v14);
  }
}

_OWORD *sub_26BCC6040(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_26BCBD940(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_26BCC60BC(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26BCC8F6C();

  return v3;
}

_OWORD *OUTLINED_FUNCTION_0_6(char a1)
{
  *(v2 - 304) = v1;

  return sub_26BCC5F00((v2 - 296), v2 - 232, a1);
}

BOOL static ClientFlowPresentationState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      return v2 == v3;
    }

    return 0;
  }

  switch(v2)
  {
    case 1:
      if (v4 != 2 || v3 != 1)
      {
        return 0;
      }

      break;
    case 2:
      if (v4 != 2 || v3 != 2)
      {
        return 0;
      }

      break;
    case 3:
      if (v4 != 2 || v3 != 3)
      {
        return 0;
      }

      break;
    default:
      if (v4 != 2 || v3 != 0)
      {
        return 0;
      }

      break;
  }

  return 1;
}

uint64_t sub_26BCC6288@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26BCBF500();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26BCC62B4(uint64_t a1)
{
  v2 = sub_26BCC71BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BCC62F0(uint64_t a1)
{
  v2 = sub_26BCC71BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BCC632C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_26BCC92AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000;
    if (v6 || (sub_26BCC92AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646564616F6CLL && a2 == 0xE600000000000000;
      if (v7 || (sub_26BCC92AC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
        if (v8 || (sub_26BCC92AC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
          if (v9 || (sub_26BCC92AC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
          {

            return 5;
          }

          else
          {
            v11 = sub_26BCC92AC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26BCC655C(unsigned __int8 a1)
{
  sub_26BCC92FC();
  MEMORY[0x26D694C70](a1);
  return sub_26BCC931C();
}

uint64_t sub_26BCC65A4(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x676E6964616F6CLL;
      break;
    case 2:
      result = 0x646564616F6CLL;
      break;
    case 3:
      result = 0x73736563637573;
      break;
    case 4:
      result = 0x6572756C696166;
      break;
    case 5:
      result = 0x656C6C65636E6163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26BCC66B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26BCC92AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26BCC6728()
{
  sub_26BCC92FC();
  MEMORY[0x26D694C70](0);
  return sub_26BCC931C();
}

uint64_t sub_26BCC6790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BCC632C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BCC67D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26BCC651C();
  *a1 = result;
  return result;
}

uint64_t sub_26BCC6800(uint64_t a1)
{
  v2 = sub_26BCC7168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BCC683C(uint64_t a1)
{
  v2 = sub_26BCC7168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BCC68A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BCC66B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26BCC68CC(uint64_t a1)
{
  v2 = sub_26BCC7210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BCC6908(uint64_t a1)
{
  v2 = sub_26BCC7210();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BCC6944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BCC6698(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26BCC6970(uint64_t a1)
{
  v2 = sub_26BCC730C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BCC69AC(uint64_t a1)
{
  v2 = sub_26BCC730C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BCC69E8(uint64_t a1)
{
  v2 = sub_26BCC7360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BCC6A24(uint64_t a1)
{
  v2 = sub_26BCC7360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BCC6A60(uint64_t a1)
{
  sub_26BCC92FC();
  MEMORY[0x26D694C70](0);
  return sub_26BCC931C();
}

uint64_t sub_26BCC6AA0(uint64_t a1)
{
  v2 = sub_26BCC72B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BCC6ADC(uint64_t a1)
{
  v2 = sub_26BCC72B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BCC6B18(uint64_t a1)
{
  v2 = sub_26BCC73B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BCC6B54(uint64_t a1)
{
  v2 = sub_26BCC73B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClientFlowPresentationState.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D68, &qword_26BCCAC80);
  OUTLINED_FUNCTION_2();
  v52 = v5;
  v53 = v4;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_3();
  v51 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D70, &qword_26BCCAC88);
  OUTLINED_FUNCTION_2();
  v57 = v9;
  v58 = v8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_3();
  v56 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D78, &qword_26BCCAC90);
  OUTLINED_FUNCTION_2();
  v54 = v13;
  v55 = v12;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D80, &qword_26BCCAC98);
  OUTLINED_FUNCTION_2();
  v49 = v18;
  v50 = v17;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_3();
  v48 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D88, &qword_26BCCACA0);
  OUTLINED_FUNCTION_2();
  v46 = v22;
  v47 = v21;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_3();
  v45 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D90, &qword_26BCCACA8);
  OUTLINED_FUNCTION_2();
  v44 = v26;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v44 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D98, &qword_26BCCACB0);
  OUTLINED_FUNCTION_2();
  v59 = v31;
  v60 = v30;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v44 - v33;
  v35 = *v2;
  v36 = *(v2 + 8);
  v37 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_26BCC7168();
  sub_26BCC933C();
  if (!v36)
  {
    v65 = 3;
    sub_26BCC72B8();
    OUTLINED_FUNCTION_6_3(&type metadata for ClientFlowPresentationState.SuccessCodingKeys, &v65);
    v38 = v55;
    sub_26BCC928C();
    v39 = v54;
    goto LABEL_5;
  }

  if (v36 == 1)
  {
    v66 = 4;
    sub_26BCC7210();
    v16 = v56;
    OUTLINED_FUNCTION_6_3(&type metadata for ClientFlowPresentationState.FailureCodingKeys, &v66);
    v61 = v35;
    sub_26BCC7264();
    v38 = v58;
    sub_26BCC929C();
    v39 = v57;
LABEL_5:
    (*(v39 + 8))(v16, v38);
    return (*(v59 + 8))(v34, v25);
  }

  switch(v35)
  {
    case 1:
      v63 = 1;
      sub_26BCC7360();
      v41 = v45;
      OUTLINED_FUNCTION_4_3(&type metadata for ClientFlowPresentationState.LoadingCodingKeys, &v63);
      v43 = v46;
      v42 = v47;
      goto LABEL_11;
    case 2:
      v64 = 2;
      sub_26BCC730C();
      v41 = v48;
      OUTLINED_FUNCTION_4_3(&type metadata for ClientFlowPresentationState.LoadedCodingKeys, &v64);
      v43 = v49;
      v42 = v50;
      goto LABEL_11;
    case 3:
      v67 = 5;
      sub_26BCC71BC();
      v41 = v51;
      OUTLINED_FUNCTION_4_3(&type metadata for ClientFlowPresentationState.CancelledCodingKeys, &v67);
      v43 = v52;
      v42 = v53;
LABEL_11:
      (*(v43 + 8))(v41, v42);
      break;
    default:
      v62 = 0;
      sub_26BCC73B4();
      OUTLINED_FUNCTION_4_3(&type metadata for ClientFlowPresentationState.UnknownCodingKeys, &v62);
      (*(v44 + 8))(v29, v25);
      break;
  }

  return (*(v59 + 8))(v34, v37);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26BCC7168()
{
  result = qword_280446DA0;
  if (!qword_280446DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446DA0);
  }

  return result;
}

unint64_t sub_26BCC71BC()
{
  result = qword_280446DA8;
  if (!qword_280446DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446DA8);
  }

  return result;
}

unint64_t sub_26BCC7210()
{
  result = qword_280446DB0;
  if (!qword_280446DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446DB0);
  }

  return result;
}

unint64_t sub_26BCC7264()
{
  result = qword_280446DB8;
  if (!qword_280446DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446DB8);
  }

  return result;
}

unint64_t sub_26BCC72B8()
{
  result = qword_280446DC0;
  if (!qword_280446DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446DC0);
  }

  return result;
}

unint64_t sub_26BCC730C()
{
  result = qword_280446DC8;
  if (!qword_280446DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446DC8);
  }

  return result;
}

unint64_t sub_26BCC7360()
{
  result = qword_280446DD0;
  if (!qword_280446DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446DD0);
  }

  return result;
}

unint64_t sub_26BCC73B4()
{
  result = qword_280446DD8;
  if (!qword_280446DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446DD8);
  }

  return result;
}

uint64_t ClientFlowPresentationState.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      MEMORY[0x26D694C70](4);
      sub_26BCC52EC();
      return sub_26BCC8F3C();
    }

    switch(v2)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 5;
        break;
      default:
        v4 = 0;
        break;
    }
  }

  else
  {
    MEMORY[0x26D694C70](3);
    v4 = v2;
  }

  return MEMORY[0x26D694C70](v4);
}

uint64_t ClientFlowPresentationState.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26BCC92FC();
  if (!v2)
  {
    MEMORY[0x26D694C70](3);
    v3 = v1;
LABEL_5:
    MEMORY[0x26D694C70](v3);
    return sub_26BCC931C();
  }

  if (v2 != 1)
  {
    switch(v1)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 5;
        break;
      default:
        v3 = 0;
        break;
    }

    goto LABEL_5;
  }

  MEMORY[0x26D694C70](4);
  sub_26BCC52EC();
  sub_26BCC8F3C();
  return sub_26BCC931C();
}

uint64_t ClientFlowPresentationState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446DE0, &qword_26BCCACB8);
  OUTLINED_FUNCTION_2();
  v109 = v3;
  v110 = v4;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_3();
  v114 = v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446DE8, &qword_26BCCACC0);
  OUTLINED_FUNCTION_2();
  v112 = v7;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_3();
  v118 = v9;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446DF0, &qword_26BCCACC8);
  OUTLINED_FUNCTION_2();
  v111 = v10;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_3();
  v116 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446DF8, &qword_26BCCACD0);
  OUTLINED_FUNCTION_2();
  v106 = v14;
  v107 = v13;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_3();
  v113 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446E00, &qword_26BCCACD8);
  OUTLINED_FUNCTION_2();
  v104 = v18;
  v105 = v17;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v97 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446E08, &qword_26BCCACE0);
  OUTLINED_FUNCTION_2();
  v103 = v23;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v97 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446E10, &qword_26BCCACE8);
  OUTLINED_FUNCTION_2();
  v29 = v28;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v97 - v31;
  v33 = a1[3];
  v119 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_26BCC7168();
  v34 = v120;
  sub_26BCC932C();
  if (v34)
  {
    goto LABEL_9;
  }

  v100 = v26;
  v99 = v22;
  v101 = v21;
  v102 = v29;
  v120 = v32;
  v35 = sub_26BCC926C();
  v39 = sub_26BCC7FDC(v35, 0);
  v40 = v27;
  if (v37 == v38 >> 1)
  {
LABEL_8:
    v57 = sub_26BCC91DC();
    swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446E18, &qword_26BCCACF0);
    *v59 = &type metadata for ClientFlowPresentationState;
    v60 = v120;
    sub_26BCC923C();
    sub_26BCC91CC();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84160], v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v102 + 8))(v60, v40);
LABEL_9:
    v61 = v119;
    return __swift_destroy_boxed_opaque_existential_0(v61);
  }

  v98 = 0;
  if (v37 >= (v38 >> 1))
  {
    __break(1u);
    JUMPOUT(0x26BCC7E84);
  }

  v41 = *(v36 + v37);
  sub_26BCC8024(v37 + 1, v38 >> 1, v39, v36, v37, v38);
  v43 = v42;
  v45 = v44;
  swift_unknownObjectRelease();
  if (v43 != v45 >> 1)
  {
    v40 = v27;
    goto LABEL_8;
  }

  v46 = v115;
  v47 = v98;
  v48 = v120;
  switch(v41)
  {
    case 1:
      v123 = 1;
      v74 = sub_26BCC7360();
      OUTLINED_FUNCTION_2_3(&type metadata for ClientFlowPresentationState.LoadingCodingKeys, &v123, v75, v76, v74);
      swift_unknownObjectRelease();
      v77 = OUTLINED_FUNCTION_8_2();
      v78(v77);
      v79 = OUTLINED_FUNCTION_1_5();
      v80(v79);
      v92 = 2;
      v56 = 1;
      goto LABEL_19;
    case 2:
      v124 = 2;
      v64 = sub_26BCC730C();
      OUTLINED_FUNCTION_2_3(&type metadata for ClientFlowPresentationState.LoadedCodingKeys, &v124, v65, v66, v64);
      swift_unknownObjectRelease();
      v67 = OUTLINED_FUNCTION_8_2();
      v68(v67);
      v69 = OUTLINED_FUNCTION_1_5();
      v70(v69);
      v56 = 2;
      goto LABEL_14;
    case 3:
      v125[0] = 3;
      v71 = sub_26BCC72B8();
      OUTLINED_FUNCTION_2_3(&type metadata for ClientFlowPresentationState.SuccessCodingKeys, v125, v72, v73, v71);
      v56 = sub_26BCC924C();
      swift_unknownObjectRelease();
      v93 = OUTLINED_FUNCTION_9_1();
      v94(v93);
      v95 = OUTLINED_FUNCTION_1_5();
      v96(v95);
      v92 = 0;
      goto LABEL_19;
    case 4:
      v125[1] = 4;
      sub_26BCC7210();
      sub_26BCC922C();
      if (v47)
      {
        v84 = OUTLINED_FUNCTION_1_5();
        v85(v84);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      sub_26BCC80A0();
      sub_26BCC925C();
      v63 = v102;
      swift_unknownObjectRelease();
      v90 = OUTLINED_FUNCTION_7_3();
      v91(v90);
      (*(v63 + 8))(v48, v27);
      v56 = v121;
      v92 = 1;
LABEL_19:
      v61 = v119;
      *v46 = v56;
      *(v46 + 8) = v92;
      break;
    case 5:
      v126 = 5;
      v81 = sub_26BCC71BC();
      OUTLINED_FUNCTION_2_3(&type metadata for ClientFlowPresentationState.CancelledCodingKeys, &v126, v82, v83, v81);
      swift_unknownObjectRelease();
      v86 = OUTLINED_FUNCTION_8_2();
      v87(v86);
      v88 = OUTLINED_FUNCTION_1_5();
      v89(v88);
      v92 = 2;
      v56 = 3;
      goto LABEL_19;
    default:
      v122 = 0;
      v49 = sub_26BCC73B4();
      OUTLINED_FUNCTION_2_3(&type metadata for ClientFlowPresentationState.UnknownCodingKeys, &v122, v50, v51, v49);
      swift_unknownObjectRelease();
      v52 = OUTLINED_FUNCTION_8_2();
      v53(v52, v99);
      v54 = OUTLINED_FUNCTION_1_5();
      v55(v54);
      v56 = 0;
LABEL_14:
      v92 = 2;
      goto LABEL_19;
  }

  return __swift_destroy_boxed_opaque_existential_0(v61);
}

uint64_t sub_26BCC7ED4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_26BCC92FC();
  if (!v3)
  {
    MEMORY[0x26D694C70](3);
    v4 = v2;
LABEL_5:
    MEMORY[0x26D694C70](v4);
    return sub_26BCC931C();
  }

  if (v3 != 1)
  {
    switch(v2)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 5;
        break;
      default:
        v4 = 0;
        break;
    }

    goto LABEL_5;
  }

  MEMORY[0x26D694C70](4);
  sub_26BCC52EC();
  sub_26BCC8F3C();
  return sub_26BCC931C();
}

uint64_t sub_26BCC7FDC(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BCC8024(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_26BCC80A0()
{
  result = qword_280446E20;
  if (!qword_280446E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E20);
  }

  return result;
}

unint64_t sub_26BCC80F8()
{
  result = qword_280446E28;
  if (!qword_280446E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E28);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ClientFlowPresentationState(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientFlowPresentationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26BCC81E4(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_26BCC81FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ClientFlowPresentationState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ClientFlowPresentationState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x26BCC8378);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26BCC83F8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x26BCC8494);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26BCC84F0()
{
  result = qword_280446E30;
  if (!qword_280446E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E30);
  }

  return result;
}

unint64_t sub_26BCC8548()
{
  result = qword_280446E38;
  if (!qword_280446E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E38);
  }

  return result;
}

unint64_t sub_26BCC85A0()
{
  result = qword_280446E40;
  if (!qword_280446E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E40);
  }

  return result;
}

unint64_t sub_26BCC85F8()
{
  result = qword_280446E48;
  if (!qword_280446E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E48);
  }

  return result;
}

unint64_t sub_26BCC8650()
{
  result = qword_280446E50;
  if (!qword_280446E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E50);
  }

  return result;
}

unint64_t sub_26BCC86A8()
{
  result = qword_280446E58;
  if (!qword_280446E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E58);
  }

  return result;
}

unint64_t sub_26BCC8700()
{
  result = qword_280446E60;
  if (!qword_280446E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E60);
  }

  return result;
}

unint64_t sub_26BCC8758()
{
  result = qword_280446E68;
  if (!qword_280446E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E68);
  }

  return result;
}

unint64_t sub_26BCC87B0()
{
  result = qword_280446E70;
  if (!qword_280446E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E70);
  }

  return result;
}

unint64_t sub_26BCC8808()
{
  result = qword_280446E78;
  if (!qword_280446E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E78);
  }

  return result;
}

unint64_t sub_26BCC8860()
{
  result = qword_280446E80;
  if (!qword_280446E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E80);
  }

  return result;
}

unint64_t sub_26BCC88B8()
{
  result = qword_280446E88;
  if (!qword_280446E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E88);
  }

  return result;
}

unint64_t sub_26BCC8910()
{
  result = qword_280446E90;
  if (!qword_280446E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E90);
  }

  return result;
}

unint64_t sub_26BCC8968()
{
  result = qword_280446E98;
  if (!qword_280446E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E98);
  }

  return result;
}

unint64_t sub_26BCC89C0()
{
  result = qword_280446EA0;
  if (!qword_280446EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446EA0);
  }

  return result;
}

unint64_t sub_26BCC8A18()
{
  result = qword_280446EA8;
  if (!qword_280446EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446EA8);
  }

  return result;
}

unint64_t sub_26BCC8A70()
{
  result = qword_280446EB0;
  if (!qword_280446EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446EB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26BCC922C();
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 112);

  return MEMORY[0x2821FDAA0](a1, a2, v4, a1);
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 112);

  return MEMORY[0x2821FDAA0](a1, a2, v4, a1);
}