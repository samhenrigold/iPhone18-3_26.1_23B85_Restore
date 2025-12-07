unint64_t sub_274829FFC()
{
  result = qword_28096A638;
  if (!qword_28096A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A638);
  }

  return result;
}

uint64_t sub_27482A184(uint64_t a1)
{
  result = sub_27471CF08(319, &qword_280970690, 0x277D79FB0);
  if (v2 <= 0x3F)
  {
    result = sub_2749FA2F4();
    if (v3 <= 0x3F)
    {
      result = sub_27471CF08(319, &qword_280968670, 0x277D79E20);
      if (v4 <= 0x3F)
      {
        result = sub_27471CF08(319, &qword_280968AA0, 0x277D79F98);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI15ShortcutChicletV10ButtonTypeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27482A280(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_27482A2D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_27482A37C(uint64_t a1)
{
  sub_27473A13C(319, &qword_28096A698, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_27472CC40(319, &qword_28096A6A0, &type metadata for ShortcutChiclet.MenuItemModel.ItemVariant, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_2749F9164();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_27482A648(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27482A668(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_27482B220(uint64_t a1)
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

uint64_t sub_27482B238(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_27482B278(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27482B2C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_27482B308(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_27482B3C0()
{
  result = qword_28096A6D0;
  if (!qword_28096A6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A6C0, &qword_274A18538);
    sub_27473B378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A6D0);
  }

  return result;
}

unint64_t sub_27482B45C()
{
  result = qword_28096A738;
  if (!qword_28096A738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A730, &qword_274A18648);
    sub_27473B094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A738);
  }

  return result;
}

unint64_t sub_27482B4E8(unint64_t result)
{
  if (result != 7)
  {
    return sub_27473D5C0(result);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  type metadata accessor for ShortcutChiclet(0);
  OUTLINED_FUNCTION_23();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  __swift_destroy_boxed_opaque_existential_0((v4 + 16));

  OUTLINED_FUNCTION_45_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  if (OUTLINED_FUNCTION_59_3(v5) == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_1_2();
    (*(v6 + 8))(v4 + v2);
  }

  else
  {
  }

  v7 = *(v0 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60, &qword_274A13620);
  if (OUTLINED_FUNCTION_59_3(v8) == 1)
  {
    sub_2749FB614();
    OUTLINED_FUNCTION_1_2();
    (*(v9 + 8))(v4 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_61_2();
  OUTLINED_FUNCTION_60_2();
  OUTLINED_FUNCTION_46_4();
  if (v10)
  {
  }

  OUTLINED_FUNCTION_46_4();
  if (v11)
  {
  }

  OUTLINED_FUNCTION_46_4();
  if (v12)
  {
  }

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_27482B6CC()
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for ShortcutChiclet(v1);
  return sub_2748240E0(v0) & 1;
}

id sub_27482B730(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_2749FD144();

  v8 = [a4 recordWithDescriptor:a1 properties:v7 error:a3];

  return v8;
}

uint64_t sub_27482B7C0()
{
  v2 = OUTLINED_FUNCTION_134();
  type metadata accessor for ShortcutChiclet(v2);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2747E2AF4;
  v6 = OUTLINED_FUNCTION_66_1();

  return sub_274826510(v6, v7, v8, v3, v4, v9);
}

uint64_t sub_27482B8B4()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for ShortcutChiclet(v2) - 8);
  v4 = *(v0 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27482BFC8;
  v6 = OUTLINED_FUNCTION_66_1();

  return sub_274826FAC(v6, v7, v8, v9, v4);
}

unint64_t sub_27482B9C4(unint64_t result)
{
  if (result != 7)
  {
    return sub_27473DC08(result);
  }

  return result;
}

unint64_t sub_27482B9DC()
{
  result = qword_28159E6A8;
  if (!qword_28159E6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A7C0, &qword_274A186F0);
    sub_27473C568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E6A8);
  }

  return result;
}

unint64_t sub_27482BA68()
{
  result = qword_28159E618;
  if (!qword_28159E618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A820, &qword_274A18748);
    sub_27473F504();
    sub_27473F558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E618);
  }

  return result;
}

unint64_t sub_27482BB00()
{
  result = qword_28159E608;
  if (!qword_28159E608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A828, &qword_274A18750);
    sub_27473DDB4();
    sub_27473DD00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E608);
  }

  return result;
}

uint64_t sub_27482BBA4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ShortcutChiclet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_27482BCC4()
{
  result = qword_28096A8B8;
  if (!qword_28096A8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A728, &unk_274A185D8);
    sub_27482BD7C();
    sub_27472AB6C(&unk_28159E5B0, &unk_28096CFD0, &qword_274A15B50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A8B8);
  }

  return result;
}

unint64_t sub_27482BD7C()
{
  result = qword_28096A8C0;
  if (!qword_28096A8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A720, &qword_274A185A0);
    sub_27482BE34();
    sub_27472AB6C(&unk_28096C1D0, &unk_28096D960, &qword_274A0FFF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A8C0);
  }

  return result;
}

unint64_t sub_27482BE34()
{
  result = qword_28096A8C8;
  if (!qword_28096A8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A718, &qword_274A18568);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A6B8, &qword_274A18530);
    sub_27473ACF4();
    swift_getOpaqueTypeConformance2();
    sub_27472AB6C(&qword_28096A8D0, &qword_28096A8D8, &qword_274A18810, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A8C8);
  }

  return result;
}

unint64_t sub_27482BF28()
{
  result = qword_28096A8E0;
  if (!qword_28096A8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A8E8, &qword_274A18818);
    sub_27482B45C();
    sub_27473A74C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A8E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_75_2(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

id sub_27482C018@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 icon];
  *a2 = result;
  return result;
}

uint64_t sub_27482C068@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27482C0C0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27482C0C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_27482C134(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

void (*sub_27482C1A4(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_2749FA8F4();
  return sub_2747AA744;
}

uint64_t sub_27482C234(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_27482C374(v4);
}

uint64_t sub_27482C308()
{
  OUTLINED_FUNCTION_10_3(v0 + OBJC_IVAR____TtC10WorkflowUI23EditorNameIconViewModel__editingIcon, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  sub_2749FA8D4();
  return swift_endAccess();
}

uint64_t sub_27482C374(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_43();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  (*(v5 + 16))(&v10[-v7 - 8], a1, v3);
  OUTLINED_FUNCTION_10_3(v1 + OBJC_IVAR____TtC10WorkflowUI23EditorNameIconViewModel__editingIcon, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  sub_2749FA8E4();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*sub_27482C494(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_10_3(v1 + OBJC_IVAR____TtC10WorkflowUI23EditorNameIconViewModel__editingIcon, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  sub_2749FA8D4();
  swift_endAccess();
  return sub_27482C5B0;
}

void sub_27482C5B0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_27482C374(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_27482C374(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t EditorNameIconViewModel.__allocating_init(workflow:)(void *a1)
{
  v2 = swift_allocObject();
  EditorNameIconViewModel.init(workflow:)(a1);
  return v2;
}

uint64_t EditorNameIconViewModel.init(workflow:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967838, &qword_274A0F590);
  OUTLINED_FUNCTION_43();
  v35 = v5;
  v36 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v34 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967830, qword_274A13060);
  OUTLINED_FUNCTION_43();
  v10 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_43();
  v16 = v15;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  if (sub_27472D918(MEMORY[0x277D84F90]))
  {
    sub_2747AF9E0(MEMORY[0x277D84F90], v20, v21, v22, v23, v24, v25, v26, v34, v35, v36, var68[0], var68[1], var68[2], var68[3], var68[4], var68[5], var68[6], var68[7], var68[8], var68[9], var68[10], var68[11], var68[12], var68[13], var68[14]);
  }

  else
  {
    v27 = MEMORY[0x277D84FA0];
  }

  *(v2 + 24) = v27;
  v28 = OBJC_IVAR____TtC10WorkflowUI23EditorNameIconViewModel__editingIcon;
  LOBYTE(var68[0]) = 0;
  sub_2749FA8C4();
  (*(v16 + 32))(v2 + v28, v19, v14);
  *(v2 + 16) = a1;
  swift_getKeyPath();
  v29 = a1;
  sub_2749F9014();

  OUTLINED_FUNCTION_86();
  swift_allocObject();
  swift_weakInit();
  v30 = MEMORY[0x277CC9E08];
  sub_27472AB6C(&qword_280967848, &qword_280967830, qword_274A13060, MEMORY[0x277CC9E08]);

  sub_2749FA974();

  (*(v10 + 8))(v13, v8);
  OUTLINED_FUNCTION_10_3(v2 + 24, var68);
  sub_2749FA834();
  swift_endAccess();

  swift_getKeyPath();
  v31 = v34;
  sub_2749F9014();

  OUTLINED_FUNCTION_86();
  swift_allocObject();
  swift_weakInit();

  sub_27472AB6C(&qword_280967840, &qword_280967838, &qword_274A0F590, v30);
  v32 = v36;
  sub_2749FA974();

  (*(v35 + 8))(v31, v32);
  OUTLINED_FUNCTION_10_3(v2 + 24, var68);
  sub_2749FA834();
  swift_endAccess();

  return v2;
}

void sub_27482CAA8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 associatedAppBundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
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

void sub_27482CB10(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_2749FCD64();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAssociatedAppBundleIdentifier_];
}

double sub_27482CB80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for EditorNameIconViewModel(0);
    sub_27482EDE0();
    sub_2749FA874();

    sub_2749FA894();
  }

  return result;
}

uint64_t EditorNameIconViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC10WorkflowUI23EditorNameIconViewModel__editingIcon;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t EditorNameIconViewModel.__deallocating_deinit()
{
  EditorNameIconViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_27482CCCC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EditorNameIconViewModel(0);
  result = sub_2749FA874();
  *a2 = result;
  return result;
}

uint64_t ShortcutIconEditorViewController.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_27482CEA8@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void (*ShortcutIconEditorViewController.delegate.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___WFShortcutIconEditorViewController_delegate;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_10_3(v1 + v4, v3);
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_27482CFDC;
}

void sub_27482CFDC(void **a1, char a2)
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

id sub_27482D05C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___WFShortcutIconEditorViewController_showsDoneButton] = 1;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___WFShortcutIconEditorViewController_workflow] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

void sub_27482D10C()
{
  *(v0 + OBJC_IVAR___WFShortcutIconEditorViewController_showsDoneButton) = 1;
  swift_unknownObjectWeakInit();
  sub_2749FDAE4();
  __break(1u);
}

Swift::Void __swiftcall ShortcutIconEditorViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for ShortcutIconEditorNavigationView(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29.receiver = v1;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  v7 = *&v1[OBJC_IVAR___WFShortcutIconEditorViewController_workflow];
  v8 = v1[OBJC_IVAR___WFShortcutIconEditorViewController_showsDoneButton];
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50, &qword_274A11AE0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_86();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = v6 + *(v4 + 28);
  *v10 = sub_27482E6AC;
  *(v10 + 1) = v9;
  v10[16] = 0;
  *(v6 + *(v4 + 32)) = v8;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A910, &qword_274A18990));
  v11 = v7;
  v12 = sub_2749FB6C4();
  [v1 addChildViewController_];
  v13 = [v12 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_8;
  }

  v14 = v13;
  [v13 setAutoresizingMask_];

  v15 = [v12 view];
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = [v1 view];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = v16;
  [v16 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 setFrame_];
  v26 = [v1 view];
  if (!v26)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v27 = v26;
  v28 = [v12 view];

  if (v28)
  {
    [v27 addSubview_];

    [v12 didMoveToParentViewController_];
    return;
  }

LABEL_11:
  __break(1u);
}

Swift::Void __swiftcall ShortcutIconEditorViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_viewWillDisappear_, a1);
  OUTLINED_FUNCTION_15_0(v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong iconEditorWillDisappear_];
    swift_unknownObjectRelease();
  }
}

id ShortcutIconEditorViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2749FCD64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ShortcutIconEditorViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27482D6D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2749FB4C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50, &qword_274A11AE0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_2747959C4(v2, &v13 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_274795A34(v10, a1);
  }

  sub_2749FD2D4();
  v12 = sub_2749FBC14();
  sub_2749FA424();

  sub_2749FB4B4();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void sub_27482D888(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966CD8, qword_274A18A80);
  swift_allocObject();
  v2 = a1;
  sub_2747AEA48();
}

uint64_t sub_27482D8D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A940, &qword_274A18AD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A948, &qword_274A18AE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A950, &qword_274A18AE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A958, &qword_274A18AF0);
  sub_27482EA44();
  sub_27475D0D0();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A988, &unk_274A18B10);
  sub_27472AB6C(&qword_28096A990, &qword_28096A988, &unk_274A18B10, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_2749FAD74();
}

uint64_t sub_27482DA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v42 = sub_2749FB4F4();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A968, &qword_274A18AF8);
  MEMORY[0x28223BE20](v40);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A958, &qword_274A18AF0);
  MEMORY[0x28223BE20](v41);
  v9 = &v40 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A948, &qword_274A18AE0);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v40 - v10;
  type metadata accessor for ShortcutIconEditorNavigationView(0);
  v45 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966CD8, qword_274A18A80);
  sub_27472AB6C(&qword_280968920, &qword_280966CD8, qword_274A18A80, &protocol conformance descriptor for IconEditorViewModel<A>);
  v11 = sub_2749FAB04();
  v51 = 0;
  v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C210, &unk_274A12840);
  sub_2749FC5B4();
  v12 = v49;
  *(v7 + 1) = v48;
  *(v7 + 4) = v12;
  v51 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A998, &qword_274A18B20);
  sub_2749FC5B4();
  *(v7 + 40) = v48;
  *(v7 + 7) = sub_274908B04;
  *(v7 + 8) = 0;
  v7[72] = 0;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A980, &unk_274A18B00) + 52);
  *&v7[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50, &qword_274A11AE0);
  swift_storeEnumTagMultiPayload();

  *v7 = sub_2749FAD84();
  *(v7 + 1) = v14;
  *(v7 + 10) = sub_27482EBF0;
  *(v7 + 11) = v11;
  v7[96] = 0;
  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  v16 = sub_2749FC3E4();
  v17 = sub_2749FBC64();
  v18 = &v7[*(v40 + 36)];
  *v18 = v16;
  v18[8] = v17;
  v19 = v42;
  (*(v3 + 104))(v5, *MEMORY[0x277CDDDC0], v42);
  sub_27482EB0C();
  sub_2749FC224();
  (*(v3 + 8))(v5, v19);
  v20 = v41;
  sub_2747359D0(v7, &qword_28096A968, &qword_274A18AF8);
  v21 = sub_2749FAEE4();
  v22 = sub_2749FBC84();
  v23 = &v9[*(v20 + 36)];
  *v23 = v21;
  v23[8] = v22;
  sub_2749FCE14("Icon", 4);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v24 = qword_28159E448;
  v25 = sub_2749FCD64();
  v26 = sub_2749FCD64();

  v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

  v28 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v30 = v29;

  *&v48 = v28;
  *(&v48 + 1) = v30;
  v31 = sub_27482EA44();
  v32 = sub_27475D0D0();
  v33 = MEMORY[0x277D837D0];
  v34 = v43;
  sub_2749FC0A4();

  v35 = sub_274748150(v9);
  MEMORY[0x28223BE20](v35);
  *(&v40 - 2) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A950, &qword_274A18AE8);
  *&v48 = v20;
  *(&v48 + 1) = v33;
  v49 = v31;
  v50 = v32;
  swift_getOpaqueTypeConformance2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A988, &unk_274A18B10);
  v37 = sub_27472AB6C(&qword_28096A990, &qword_28096A988, &unk_274A18B10, MEMORY[0x277CDD7A8]);
  *&v48 = v36;
  *(&v48 + 1) = v37;
  swift_getOpaqueTypeConformance2();
  v38 = v46;
  sub_2749FC2C4();
  return (*(v44 + 8))(v34, v38);
}

uint64_t sub_27482E0F4(uint64_t a1)
{
  v2 = sub_2749FB834();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A988, &unk_274A18B10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_2749FB824();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A9A0, &unk_274A18B28);
  sub_27482EC08();
  sub_2749FAB44();
  v7 = sub_27472AB6C(&qword_28096A990, &qword_28096A988, &unk_274A18B10, MEMORY[0x277CDD7A8]);
  MEMORY[0x277C5D5D0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_27482E2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ShortcutIconEditorNavigationView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  if (*(a1 + *(MEMORY[0x28223BE20](v4 - 8) + 32)) == 1)
  {
    sub_2749FCE14("Done", 4);
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v7 = qword_28159E448;
    v8 = sub_2749FCD64();
    v9 = sub_2749FCD64();

    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    v11 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v13 = v12;

    v19[0] = v11;
    v19[1] = v13;
    sub_27482ECB8(a1, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v15 = swift_allocObject();
    sub_27482ED1C(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    sub_27475D0D0();
    sub_2749FC644();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CFC0, &qword_274A0F0A0);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v16);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CFC0, &qword_274A0F0A0);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v18);
  }
}

uint64_t sub_27482E524()
{
  v0 = sub_2749FAF84();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0, &qword_274A11BA0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - v2;
  sub_27482D6D0(&v5 - v2);
  MEMORY[0x277C5E410](v1);
  sub_2749FAF74();
  sub_2749FC6C4();
  return sub_2747359D0(v3, &qword_28096B2A0, &qword_274A11BA0);
}

uint64_t sub_27482E63C()
{
  type metadata accessor for GlyphRegistry(0);
  swift_allocObject();
  return GlyphRegistry.init(useSystemGlyphsOnly:useOutlineGlyphsOnly:hiddenCategories:)(0, 0, &unk_28838F7F8);
}

void sub_27482E6DC(uint64_t a1)
{
  sub_27475F2D0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_27482E8F0(uint64_t a1)
{
  sub_274795830(319);
  if (v1 <= 0x3F)
  {
    sub_27482E97C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27482E97C(uint64_t a1)
{
  if (!qword_28096A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280966CD8, qword_274A18A80);
    sub_27472AB6C(&qword_280968920, &qword_280966CD8, qword_274A18A80, &protocol conformance descriptor for IconEditorViewModel<A>);
    v1 = sub_2749FAB24();
    if (!v2)
    {
      atomic_store(v1, &qword_28096A938);
    }
  }
}

unint64_t sub_27482EA44()
{
  result = qword_28096A960;
  if (!qword_28096A960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A958, &qword_274A18AF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A968, &qword_274A18AF8);
    sub_27482EB0C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A960);
  }

  return result;
}

unint64_t sub_27482EB0C()
{
  result = qword_28096A970;
  if (!qword_28096A970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A968, &qword_274A18AF8);
    sub_27472AB6C(&qword_28096A978, &qword_28096A980, &unk_274A18B00, &protocol conformance descriptor for EditorIconPickerView<A>);
    sub_27472AB6C(&unk_28096BFB0, &qword_28096D7E0, &qword_274A11B10, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A970);
  }

  return result;
}

unint64_t sub_27482EC08()
{
  result = qword_28096A9A8;
  if (!qword_28096A9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A9A0, &unk_274A18B28);
    sub_27472AB6C(&unk_28096B360, &unk_28096CFC0, &qword_274A0F0A0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A9A8);
  }

  return result;
}

uint64_t sub_27482ECB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutIconEditorNavigationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27482ED1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutIconEditorNavigationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27482ED80()
{
  type metadata accessor for ShortcutIconEditorNavigationView(0);

  return sub_27482E524();
}

unint64_t sub_27482EDE0()
{
  result = qword_28096A9B0;
  if (!qword_28096A9B0)
  {
    type metadata accessor for EditorNameIconViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A9B0);
  }

  return result;
}

uint64_t sub_27482EE4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_27482EE8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27482EEFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A9C8, &qword_274A18C70);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  v4 = v13 - v3;
  sub_27482F0A4(v1, v13 - v3);
  sub_2749FCE14("Gallery", 7);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v5 = qword_28159E448;
  v6 = sub_2749FCD64();
  v7 = sub_2749FCD64();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v11 = v10;

  v13[0] = v9;
  v13[1] = v11;
  sub_27482FED4();
  sub_27475D0D0();
  sub_2749FC0A4();

  return sub_27472ECBC(v4, &qword_28096A9C8, &qword_274A18C70);
}

uint64_t sub_27482F0A4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AA10, &qword_274A18C90);
  MEMORY[0x28223BE20](v34);
  v5 = (&v31 - v4);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AA18, &qword_274A18C98);
  MEMORY[0x28223BE20](v33);
  v7 = (&v31 - v6);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A9F0, &qword_274A18C80);
  MEMORY[0x28223BE20](v35);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C0E0, &qword_274A1C190);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v40 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v13 = v36[3];
  if (v37)
  {
    if (v37 == 1)
    {
      v38 = a1[1];
      v39 = *(a1 + 32);
      v14 = swift_allocObject();
      v15 = a1[1];
      *(v14 + 16) = *a1;
      *(v14 + 32) = v15;
      *(v14 + 48) = *(a1 + 32);
      *v5 = v13;
      v5[1] = sub_27483018C;
      v5[2] = v14;
      swift_storeEnumTagMultiPayload();
      sub_2747B97A0(&v40, v36, &qword_28096AA20, &qword_274A18CE8);
      sub_2747B97A0(&v38, v36, &qword_28096AA28, &qword_274A18CF0);
      sub_27482FFE4();
      sub_27478E528();
      return sub_2749FB7B4();
    }

    else
    {
      v32 = a2;
      sub_2749FCE14("Loading", 7);
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v18 = qword_28159E448;
      v19 = sub_2749FCD64();
      v20 = sub_2749FCD64();

      v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

      v22 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v24 = v23;

      *&v38 = v22;
      *(&v38 + 1) = v24;
      sub_27475D0D0();
      v25 = sub_2749FD704();
      v27 = v26;

      v36[0] = v25;
      v36[1] = v27;
      sub_2749FAB74();
      v28 = sub_2749FBDF4();
      KeyPath = swift_getKeyPath();
      v30 = &v12[*(v10 + 36)];
      *v30 = KeyPath;
      v30[1] = v28;
      sub_2747B97A0(v12, v7, &qword_28096C0E0, &qword_274A1C190);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AA08, &qword_274A18C88);
      sub_27483009C();
      sub_27472AB6C(&qword_28096AA00, &qword_28096AA08, &qword_274A18C88, MEMORY[0x277CDDB40]);
      sub_2749FB7B4();
      sub_2747483B8(v9, v5);
      swift_storeEnumTagMultiPayload();
      sub_27482FFE4();
      sub_27478E528();
      sub_2749FB7B4();
      sub_27472ECBC(v9, &qword_28096A9F0, &qword_274A18C80);
      return sub_2748301D4(v12);
    }
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    *v7 = sub_274830194;
    v7[1] = v17;
    swift_storeEnumTagMultiPayload();
    sub_27483019C(v13, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AA08, &qword_274A18C88);
    v32 = a2;
    sub_27483009C();
    sub_27472AB6C(&qword_28096AA00, &qword_28096AA08, &qword_274A18C88, MEMORY[0x277CDDB40]);
    sub_2749FB7B4();
    sub_2747483B8(v9, v5);
    swift_storeEnumTagMultiPayload();
    sub_27482FFE4();
    sub_27478E528();
    sub_2749FB7B4();

    sub_2748301B8(v13, 0);
    return sub_27472ECBC(v9, &qword_28096A9F0, &qword_274A18C80);
  }
}

void sub_27482F6D0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a1;
  v17 = a3;
  v4 = sub_2749FAF04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v16 = sub_2749FAAD4();
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v18 = a2;
  v19 = KeyPath;
  v20 = 0;
  v21 = v11;
  v22 = 0;
  v23 = 0;
  v14 = a2;
  sub_2749FAAE4();
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_2748302AC();
  sub_2749FC294();

  (*(v7 + 8))(v9, v16);
}

uint64_t sub_27482F938(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v41 = sub_2749FCA74();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2749FCAA4();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2749FAF04();
  v5 = *(v31 - 8);
  v32 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2749FAAF4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2749FCAC4();
  v35 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  sub_274830300();
  v34 = sub_2749FD404();
  sub_2749FCAB4();
  sub_2749FCB14();
  v18 = *(v12 + 8);
  v33 = v12 + 8;
  v36 = v18;
  v18(v15, v11);
  (*(v8 + 16))(v10, v37, v7);
  v19 = v30;
  v20 = v31;
  (*(v5 + 16))(v30, v38, v31);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v21, v10, v7);
  (*(v5 + 32))(v23 + v22, v19, v20);
  aBlock[4] = sub_274830344;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_20;
  v24 = _Block_copy(aBlock);

  v25 = v39;
  sub_2749FCA94();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27473FC78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
  sub_27472AB6C(&qword_28159E530, &unk_28096DB60, &qword_274A0F640, MEMORY[0x277D83970]);
  v27 = v40;
  v26 = v41;
  sub_2749FD7B4();
  v28 = v34;
  MEMORY[0x277C5F120](v17, v25, v27, v24);
  _Block_release(v24);

  (*(v44 + 8))(v27, v26);
  (*(v42 + 8))(v25, v43);
  return v36(v17, v35);
}

unint64_t sub_27482FED4()
{
  result = qword_28096A9D0;
  if (!qword_28096A9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A9C8, &qword_274A18C70);
    sub_27482FF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A9D0);
  }

  return result;
}

unint64_t sub_27482FF58()
{
  result = qword_28096A9D8;
  if (!qword_28096A9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A9E0, &qword_274A18C78);
    sub_27482FFE4();
    sub_27478E528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A9D8);
  }

  return result;
}

unint64_t sub_27482FFE4()
{
  result = qword_28096A9E8;
  if (!qword_28096A9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A9F0, &qword_274A18C80);
    sub_27483009C();
    sub_27472AB6C(&qword_28096AA00, &qword_28096AA08, &qword_274A18C88, MEMORY[0x277CDDB40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A9E8);
  }

  return result;
}

unint64_t sub_27483009C()
{
  result = qword_28096A9F8;
  if (!qword_28096A9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C0E0, &qword_274A1C190);
    sub_27472AB6C(&qword_280968318, &qword_280968310, &qword_274A1E140, MEMORY[0x277CDD7F8]);
    sub_27472AB6C(&qword_28159E5C0, &unk_28096D8F0, &qword_274A1F550, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A9F8);
  }

  return result;
}

double sub_274830180(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

id sub_27483019C(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_2748301B8(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_2748301D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C0E0, &qword_274A1C190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27483023C(uint64_t a1)
{
  v3 = *(sub_2749FAF04() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_27482F938(a1, v4);
}

unint64_t sub_2748302AC()
{
  result = qword_28096AA30;
  if (!qword_28096AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AA30);
  }

  return result;
}

unint64_t sub_274830300()
{
  result = qword_28159E4E0;
  if (!qword_28159E4E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28159E4E0);
  }

  return result;
}

uint64_t sub_274830344()
{
  sub_2749FAAF4();
  sub_2749FAF04();
  return sub_2749FAAC4();
}

uint64_t sub_27483040C(uint64_t a1)
{
  (*(a1 + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ABB0, &qword_274A18F98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AB60, &qword_274A18F20);
  sub_27472AB6C(&qword_28096ABB8, &qword_28096ABB0, &qword_274A18F98, MEMORY[0x277D83980]);
  sub_2748323D4();
  sub_27483263C();
  return sub_2749FC764();
}

uint64_t sub_274830504@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AB98, &qword_274A1ACF0);
  v41 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = v35 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ABC8, &qword_274A18FA0);
  MEMORY[0x28223BE20](v42);
  v43 = v35 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AB88, &unk_274A1ACE0);
  v39 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AB78, &qword_274A18F28);
  MEMORY[0x28223BE20](v9);
  v45 = v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ABD0, &qword_274A18FA8);
  MEMORY[0x28223BE20](v11);
  v13 = v35 - v12;
  v14 = sub_2749FC744();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  if (v18)
  {
    v35[0] = v11;
    v35[1] = v14;
    v36 = v4;
    v37 = v9;
    v38 = a2;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2749FA904();

    v20 = v46;
    v19 = v47;
    if (v48)
    {
      sub_2749FD0A4();

      v21 = sub_2749FD094();
      v22 = swift_allocObject();
      v23 = MEMORY[0x277D85700];
      v22[2] = v21;
      v22[3] = v23;
      v22[4] = v20;
      sub_27482BC98();

      v24 = sub_2749FD094();
      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = v23;
      v25[4] = v20;
      v25[5] = v18;
      sub_2749FC6F4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D8E0, &qword_274A0FF48);
      v39 = v19;
      sub_27472AB6C(&unk_28096DEF0, &unk_28096D8E0, &qword_274A0FF48, MEMORY[0x277CDEFF0]);
      v26 = v40;
      sub_2749FC674();
      v27 = v41;
      v28 = v36;
      (*(v41 + 16))(v43, v26, v36);
      swift_storeEnumTagMultiPayload();
      sub_27472AB6C(&qword_28096AB80, &qword_28096AB88, &unk_274A1ACE0, MEMORY[0x277CDF028]);
      sub_27472AB6C(&qword_28096AB90, &qword_28096AB98, &qword_274A1ACF0, MEMORY[0x277CDF068]);
      v29 = v45;
      sub_2749FB7B4();

      v30.n128_f64[0] = sub_2748326B4(v20, v39, 1);
      (*(v27 + 8))(v26, v28, v30);
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D8E0, &qword_274A0FF48);
      sub_27472AB6C(&unk_28096DEF0, &unk_28096D8E0, &qword_274A0FF48, MEMORY[0x277CDEFF0]);
      sub_2749FC624();
      v32 = v39;
      v33 = v44;
      (*(v39 + 16))(v43, v8, v44);
      swift_storeEnumTagMultiPayload();
      sub_27472AB6C(&qword_28096AB80, &qword_28096AB88, &unk_274A1ACE0, MEMORY[0x277CDF028]);
      sub_27472AB6C(&qword_28096AB90, &qword_28096AB98, &qword_274A1ACF0, MEMORY[0x277CDF068]);
      v29 = v45;
      sub_2749FB7B4();
      v34.n128_f64[0] = sub_2748326B4(v20, v19, 0);
      (*(v32 + 8))(v8, v33, v34);
    }

    sub_27473F28C(v29, v13, &qword_28096AB78, &qword_274A18F28);
    swift_storeEnumTagMultiPayload();
    sub_27473DB70(&qword_28096AB68, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    sub_274832490();
    sub_2749FB7B4();
    return sub_27472ECBC(v29, &qword_28096AB78, &qword_274A18F28);
  }

  else
  {
    sub_2749FC734();
    (*(v15 + 16))(v13, v17, v14);
    swift_storeEnumTagMultiPayload();
    sub_27473DB70(&qword_28096AB68, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    sub_274832490();
    sub_2749FB7B4();
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_274830D7C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27485A890(*a1);
  v6[0] = a4;
  v6[1] = 0;
  v7 = 1;

  return sub_274822308(v6);
}

uint64_t sub_274830E24@<X0>(uint64_t a2@<X8>)
{
  sub_27475D0D0();

  result = sub_2749FBEE4();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_274830E90@<X0>(uint64_t *a2@<X8>)
{

  result = sub_2749FC534();
  *a2 = result;
  return result;
}

uint64_t sub_274830ED4@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v87 = a2;
  v81 = a1;
  v93 = a3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F38, &qword_274A164D0);
  MEMORY[0x28223BE20](v83);
  v85 = (&v71 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967710, &unk_274A206A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v71 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F08, &qword_274A164B0);
  MEMORY[0x28223BE20](v80);
  v84 = (&v71 - v7);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AB40, &qword_274A18F10);
  v8 = MEMORY[0x28223BE20](v92);
  v82 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v86 = &v71 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ABA0, &qword_274A18F60);
  MEMORY[0x28223BE20](v90);
  v91 = &v71 - v11;
  v89 = sub_2749FC994();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v78 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2749FCA34();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2749FCA14();
  v72 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AB18, &qword_274A18EF8);
  MEMORY[0x28223BE20](v18);
  v20 = (&v71 - v19);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AB08, &qword_274A18EF0);
  MEMORY[0x28223BE20](v74);
  v22 = &v71 - v21;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AAF8, &qword_274A18EE8);
  MEMORY[0x28223BE20](v73);
  v24 = &v71 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AAE8, &qword_274A18EE0);
  v26 = MEMORY[0x28223BE20](v25);
  v77 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v79 = &v71 - v28;
  if (sub_27473F220())
  {
    v87 = v25;
    sub_274831B04();
    v29 = sub_2749FC514();
    sub_2749FCA04();
    sub_2749FCA24();
    v30 = (v20 + *(v18 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AB28, &qword_274A18F00);
    sub_27473DB70(&qword_28096ABA8, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
    sub_2749FB044();
    (*(v75 + 8))(v14, v76);
    (*(v72 + 8))(v17, v15);
    *v30 = swift_getKeyPath();
    *v20 = v29;
    sub_2749FC474();
    sub_274831B04();
    v31 = sub_2749FC484();

    sub_27475CF54(v20, v22, &qword_28096AB18, &qword_274A18EF8);
    *&v22[*(v74 + 36)] = v31;
    v32 = sub_274831B04();
    v33 = v88;
    v34 = MEMORY[0x277CE13B8];
    if ((v32 & 1) == 0)
    {
      v34 = MEMORY[0x277CE13D8];
    }

    v35 = v78;
    v36 = v89;
    (*(v88 + 104))(v78, *v34, v89);
    (*(v33 + 32))(&v24[*(v73 + 36)], v35, v36);
    sub_27475CF54(v22, v24, &qword_28096AB08, &qword_274A18EF0);
    v37 = sub_2749FC914();
    v39 = v38;
    if (sub_274831B04())
    {
      v40 = sub_2749FC3F4();
      sub_2749FC9F4();
      v42 = v41;
      v44 = v43;
      v45 = 0x3FEB333333333333;
      v46 = 256;
    }

    else
    {
      v40 = 0;
      v46 = 0;
      v45 = 0;
      v42 = 0;
      v44 = 0;
    }

    v64 = v91;
    *&v95 = v40;
    *(&v95 + 1) = v46;
    *&v96 = v45;
    *(&v96 + 1) = v45;
    *&v97 = v42;
    *(&v97 + 1) = v44;
    *&v98 = v37;
    *(&v98 + 1) = v39;
    v65 = v77;
    sub_27475CF54(v24, v77, &qword_28096AAF8, &qword_274A18EE8);
    v66 = (v65 + *(v87 + 36));
    v67 = v96;
    *v66 = v95;
    v66[1] = v67;
    v68 = v98;
    v66[2] = v97;
    v66[3] = v68;
    v99 = v40;
    v100 = v46;
    v101 = v45;
    v102 = v45;
    v103 = v42;
    v104 = v44;
    v105 = v37;
    v106 = v39;
    sub_27473F28C(&v95, v94, &qword_28096AB38, &qword_274A18F08);
    sub_27472ECBC(&v99, &qword_28096AB38, &qword_274A18F08);
    v60 = &qword_28096AAE8;
    v61 = &qword_274A18EE0;
    v69 = v79;
    sub_27475CF54(v65, v79, &qword_28096AAE8, &qword_274A18EE0);
    sub_27473F28C(v69, v64, &qword_28096AAE8, &qword_274A18EE0);
    swift_storeEnumTagMultiPayload();
    sub_274832094();
    sub_27473F384();
    sub_2749FB7B4();
    v63 = v69;
  }

  else
  {
    sub_2749FC514();
    sub_2749FB674();
    v47 = sub_2749FB684();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v47);
    v48 = sub_2749FC544();

    sub_27472ECBC(v6, &qword_280967710, &unk_274A206A0);
    v49 = sub_2749FC474();
    sub_2749FC474();
    v50 = v81 & 1;
    LOBYTE(v99) = v81 & 1;
    v51 = v87;
    v100 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
    sub_2749FC5C4();
    v52 = sub_2749FC484();

    v53 = v85;
    (*(v88 + 104))(v85 + *(v83 + 36), *MEMORY[0x277CE13B8], v89);
    *v53 = v52;
    v54 = v84;
    v55 = (v84 + *(v80 + 36));
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F10, &qword_274A164B8);
    sub_27475CF54(v53, v55 + *(v56 + 52), &qword_280969F38, &qword_274A164D0);
    *v55 = v49;
    *v54 = v48;
    v57 = sub_2749FC964();
    LOBYTE(v99) = v50;
    v100 = v51;
    sub_2749FC5C4();
    LOBYTE(v55) = v95;
    v58 = v82;
    sub_27475CF54(v54, v82, &qword_280969F08, &qword_274A164B0);
    v59 = v58 + *(v92 + 36);
    *v59 = v57;
    *(v59 + 8) = v55;
    v60 = &qword_28096AB40;
    v61 = &qword_274A18F10;
    v62 = v86;
    sub_27475CF54(v58, v86, &qword_28096AB40, &qword_274A18F10);
    sub_27473F28C(v62, v91, &qword_28096AB40, &qword_274A18F10);
    swift_storeEnumTagMultiPayload();
    sub_274832094();
    sub_27473F384();
    sub_2749FB7B4();
    v63 = v62;
  }

  return sub_27472ECBC(v63, v60, v61);
}

uint64_t sub_274831A78()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_274831B2C()
{
  sub_27473DC08(*(v0 + 16));
  v1 = OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet10EditButton5Model__pointSize;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F40, &unk_274A17790);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet10EditButton5Model__editing;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v6(v0 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet10EditButton5Model__selected, v4);

  return v0;
}

uint64_t sub_274831C20()
{
  sub_274831B2C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_274831C80()
{
  result = qword_28096AA48;
  if (!qword_28096AA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AA38, &qword_274A18E80);
    sub_274831D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AA48);
  }

  return result;
}

unint64_t sub_274831D0C()
{
  result = qword_28096AA50;
  if (!qword_28096AA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AA40, &qword_274A18E88);
    sub_274831F8C(&qword_28096AA58, &qword_28096AA60, &qword_274A18E90, sub_274831DC4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AA50);
  }

  return result;
}

unint64_t sub_274831DC4()
{
  result = qword_28096AA68;
  if (!qword_28096AA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AA70, &qword_274A18E98);
    sub_27472AB6C(&qword_28096AA78, &qword_28096AA80, &qword_274A18EA0, MEMORY[0x277CDE5B0]);
    sub_27472AB6C(&qword_28096AA88, &qword_28096AA90, &qword_274A18EA8, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AA68);
  }

  return result;
}

unint64_t sub_274831EA8()
{
  result = qword_28096AAB8;
  if (!qword_28096AAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AAB0, &qword_274A18EC8);
    sub_274831F8C(&qword_28096AAC0, &qword_28096AAC8, &qword_274A18ED0, sub_274832008);
    sub_27472AB6C(&qword_28159E5C0, &unk_28096D8F0, &qword_274A1F550, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AAB8);
  }

  return result;
}

uint64_t sub_274831F8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_274832008()
{
  result = qword_28096AAD0;
  if (!qword_28096AAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AAD8, &qword_274A18ED8);
    sub_274832094();
    sub_27473F384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AAD0);
  }

  return result;
}

unint64_t sub_274832094()
{
  result = qword_28096AAE0;
  if (!qword_28096AAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AAE8, &qword_274A18EE0);
    sub_27483214C();
    sub_27472AB6C(&qword_28096AB30, &qword_28096AB38, &qword_274A18F08, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AAE0);
  }

  return result;
}

unint64_t sub_27483214C()
{
  result = qword_28096AAF0;
  if (!qword_28096AAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AAF8, &qword_274A18EE8);
    sub_2748321D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AAF0);
  }

  return result;
}

unint64_t sub_2748321D8()
{
  result = qword_28096AB00;
  if (!qword_28096AB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AB08, &qword_274A18EF0);
    sub_274832290();
    sub_27472AB6C(&qword_28159E5D0, &qword_28096A7F0, &qword_274A1D200, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AB00);
  }

  return result;
}

unint64_t sub_274832290()
{
  result = qword_28096AB10;
  if (!qword_28096AB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AB18, &qword_274A18EF8);
    sub_27472AB6C(&qword_28096AB20, &qword_28096AB28, &qword_274A18F00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AB10);
  }

  return result;
}

unint64_t sub_274832350()
{
  result = qword_28096AB50;
  if (!qword_28096AB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AB48, &qword_274A18F18);
    sub_2748323D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AB50);
  }

  return result;
}

unint64_t sub_2748323D4()
{
  result = qword_28096AB58;
  if (!qword_28096AB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AB60, &qword_274A18F20);
    sub_27473DB70(&qword_28096AB68, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    sub_274832490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AB58);
  }

  return result;
}

unint64_t sub_274832490()
{
  result = qword_28096AB70;
  if (!qword_28096AB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AB78, &qword_274A18F28);
    sub_27472AB6C(&qword_28096AB80, &qword_28096AB88, &unk_274A1ACE0, MEMORY[0x277CDF028]);
    sub_27472AB6C(&qword_28096AB90, &qword_28096AB98, &qword_274A1ACF0, MEMORY[0x277CDF068]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AB70);
  }

  return result;
}

uint64_t sub_274832574(uint64_t a1)
{
  v2 = sub_2749FB054();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2749FB214();
}

unint64_t sub_27483263C()
{
  result = qword_28096ABC0;
  if (!qword_28096ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096ABC0);
  }

  return result;
}

void sub_274832700()
{
  v1 = *(type metadata accessor for ShortcutChiclet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_274808FE8(v2);
}

unint64_t sub_274832760()
{
  result = qword_28096ABD8;
  if (!qword_28096ABD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AAA0, &qword_274A18EB8);
    sub_2748327EC();
    sub_27473F5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096ABD8);
  }

  return result;
}

unint64_t sub_2748327EC()
{
  result = qword_28096ABE0;
  if (!qword_28096ABE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AA98, &qword_274A18EB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AA38, &qword_274A18E80);
    sub_2749FAF64();
    sub_274831C80();
    sub_27473DB70(&qword_28159E6A0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_27472AB6C(&qword_28159E5E0, &qword_280966D78, &qword_274A0CBF0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096ABE0);
  }

  return result;
}

uint64_t sub_274832938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  v9 = OUTLINED_FUNCTION_34(v8);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - v10;
  sub_2747B97A0(a3, v22 - v10, &unk_28096C960, &unk_274A10040);
  v12 = sub_2749FD0E4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_27472ECBC(v11, &unk_28096C960, &unk_274A10040);
  }

  else
  {
    sub_2749FD0D4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2749FD044();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2749FCE04() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = OUTLINED_FUNCTION_11_16();

      sub_27472ECBC(a3, &unk_28096C960, &unk_274A10040);

      return v20;
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

  sub_27472ECBC(a3, &unk_28096C960, &unk_274A10040);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return OUTLINED_FUNCTION_11_16();
}

id sub_274832BA4(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, a2, 0x59uLL);
  v8 = (v4 + OBJC_IVAR____TtC10WorkflowUI39SmartShortcutPickerDetailViewController_headerElementKind);
  *v8 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8[1] = v9;
  v10 = OBJC_IVAR____TtC10WorkflowUI39SmartShortcutPickerDetailViewController_materialView;
  v11 = [objc_opt_self() effectWithStyle_];
  v12 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v4 + v10) = v12;
  *(v4 + OBJC_IVAR____TtC10WorkflowUI39SmartShortcutPickerDetailViewController_hostingView) = 0;
  v14 = a4;
  return sub_2747DEC58(a1, __dst, &v14, a3);
}

void sub_274832C94()
{
  v1 = (v0 + OBJC_IVAR____TtC10WorkflowUI39SmartShortcutPickerDetailViewController_headerElementKind);
  *v1 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v1[1] = v2;
  v3 = OBJC_IVAR____TtC10WorkflowUI39SmartShortcutPickerDetailViewController_materialView;
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v0 + v3) = v5;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI39SmartShortcutPickerDetailViewController_hostingView) = 0;
  sub_2749FDAE4();
  __break(1u);
}

void sub_274832D98()
{
  v1 = sub_2749FA2F4();
  OUTLINED_FUNCTION_43();
  v122 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = sub_2749FA2C4();
  OUTLINED_FUNCTION_43();
  v121 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = (v11 - v10);
  v13 = sub_2749FA304();
  v14 = OUTLINED_FUNCTION_34(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  v16 = OUTLINED_FUNCTION_34(v15);
  MEMORY[0x28223BE20](v16);
  v18 = v119 - v17;
  v19 = type metadata accessor for SmartShortcutPickerDetailViewController();
  v130.receiver = v0;
  v130.super_class = v19;
  objc_msgSendSuper2(&v130, sel_viewDidLoad);
  v20 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v20);
  sub_2749FD0A4();
  v21 = v0;
  v22 = sub_2749FD094();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v21;
  sub_274832938(0, 0, v18, &unk_274A19150, v23);

  v25 = &v21[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_style];
  v26 = &selRef_setInterGroupSpacing_;
  if (v21[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_style + 88] == 1 && (_UISolariumEnabled() & 1) == 0)
  {
    v27 = OUTLINED_FUNCTION_12_15();
    if (!v27)
    {
      __break(1u);
LABEL_25:

      __break(1u);
      goto LABEL_26;
    }

    v28 = v27;
    sub_2749FC454();
    sub_2749FC484();

    v29 = sub_2749FC3D4();

    if (!v29)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v30 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

    [v28 setBackgroundColor_];
    v31 = OUTLINED_FUNCTION_12_15();
    if (!v31)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v32 = v31;
    v26 = &selRef_setInterGroupSpacing_;
    [v31 addSubview_];
  }

  [*&v21[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView] setDelegate_];
  sub_2747DF82C();
  if (v25[88] == 1)
  {
    v120 = v1;
    v33 = [v21 sheetPresentationController];
    if (v33)
    {
      v34 = v33;
      [v33 setPrefersGrabberVisible_];
    }

    v35 = [v21 sheetPresentationController];
    if (v35)
    {
      v36 = v35;
      [v35 _setGrabberTopSpacing_];
    }

    if (_UISolariumEnabled())
    {
      v123[0] = *&v21[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_layout];
      v37 = *&v21[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_smartShortcutPickerDataSource];

      v38 = sub_2749175A4(v37);

      v39 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
      [v39 setAxis_];
      [v39 setSpacing_];
      v40 = [v39 setAlignment_];
      v119[2] = v38;
      v41 = sub_2748122C0(v40);
      v42 = v41;
      if (v41[1].n128_u64[0])
      {
        OUTLINED_FUNCTION_10_16(v41[2], v41[3]);
        v124[0] = v42[4];
        *(v124 + 9) = *(v42 + 73);
        sub_2747B24E0(v123, &v127);

        v43 = *(&v124[0] + 1);
        v119[1] = v123[3];
        v119[0] = *&v124[0];
        v44 = objc_opt_self();
        v45 = *MEMORY[0x277D76988];
        v46 = [v44 preferredFontForTextStyle_];
        [v46 lineHeight];
        v48 = v47;

        *v12 = v48 + 3.0;
        (*(v121 + 104))(v12, *MEMORY[0x277D7D688], v7);
        v122[13](v6, *MEMORY[0x277D7D6D0], v120);
        v49 = v43;
        sub_2749FA314();
        v50 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ABF8, &unk_274A19160));
        v51 = sub_2749FADF4();
        [v39 addArrangedSubview_];

        v52 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
        v53 = [v44 preferredFontForTextStyle_];
        [v52 setFont_];

        v54 = sub_2749FCD64();
        [v52 setText_];

        [v39 addArrangedSubview_];
        v55 = [v21 navigationItem];
        [v55 setTitleView_];

        v56 = [v21 navigationItem];
        sub_27471CF08(0, &qword_280968428, 0x277D751E0);
        sub_27471CF08(0, &qword_28096D750, 0x277D750C8);
        OUTLINED_FUNCTION_86();
        *(swift_allocObject() + 16) = v21;
        v57 = v21;
        sub_2749FD644(0, 0xE000000000000000, 0, 0, 0, 0, 0, 0, 0, 0);
        v58 = sub_2749FD2F4();
        [v56 setRightBarButtonItem:v58 animated:0];

        sub_2747D21CC(v123);

        return;
      }

      goto LABEL_25;
    }

    sub_27471CF08(0, &qword_280968030, 0x277D755B8);
    type metadata accessor for SmartShortcutPickerDataSource(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v60 = [objc_opt_self() bundleForClass_];
    v61 = sub_2748340B4(0xD000000000000024, 0x8000000274A2EF50, v60);
    v62 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
    v63 = [objc_opt_self() effectWithVariableBlurRadius:v61 imageMask:9.0];
    [v62 setEffect_];

    v64 = OUTLINED_FUNCTION_12_15();
    if (!v64)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v65 = v64;
    v122 = v61;
    v66 = v62;
    [v65 v26[298]];

    v67 = OUTLINED_FUNCTION_12_15();
    if (!v67)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v68 = v67;
    [v67 bounds];
    OUTLINED_FUNCTION_36();

    v131.origin.x = OUTLINED_FUNCTION_4_0();
    [v66 setFrame_];

    v69 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
    v70 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.152941176 green:0.152941176 blue:0.164705882 alpha:1.0];
    v71 = [v70 CGColor];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00, &qword_274A0FCC0);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_274A11F50;
    type metadata accessor for CGColor(0);
    v74 = v73;
    *(v72 + 32) = v71;
    *(v72 + 88) = v73;
    *(v72 + 56) = v73;
    *(v72 + 64) = v71;
    v75 = objc_allocWithZone(MEMORY[0x277D75348]);
    v76 = v71;
    v77 = [v75 initWithRed:0.152941176 green:0.152941176 blue:0.164705882 alpha:0.0];
    v78 = [v77 CGColor];

    *(v72 + 120) = v74;
    *(v72 + 96) = v78;
    sub_274835758(v72, v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_274A154D0;
    sub_27471CF08(0, &qword_28159E398, 0x277CCABB0);
    *(v79 + 32) = sub_2749FD5D4();
    *(v79 + 40) = sub_2749FD5C4();
    *(v79 + 48) = sub_2749FD5D4();
    sub_2748357C8(v79, v69, &qword_28159E398, 0x277CCABB0, &selRef_setLocations_);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_274A15450;
    v81 = *MEMORY[0x277CDA7C8];
    v82 = objc_opt_self();
    *(v80 + 32) = [v82 functionWithName_];
    *(v80 + 40) = [v82 functionWithName_];
    sub_2748357C8(v80, v69, &qword_28096ACA0, 0x277CD9EF8, &selRef_setInterpolations_);
    v83 = [objc_allocWithZone(MEMORY[0x277D7D528]) init];
    v84 = OUTLINED_FUNCTION_13_14();
    if (!v84)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v85 = v84;
    v86 = v83;
    [v85 addSubview_];

    v87 = [v86 layer];
    v88 = v69;
    [v87 insertSublayer:v88 atIndex:0];

    v89 = OUTLINED_FUNCTION_13_14();
    if (!v89)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v90 = v89;
    [v89 bounds];
    OUTLINED_FUNCTION_36();

    v132.origin.x = OUTLINED_FUNCTION_4_0();
    [v86 setFrame_];

    [v86 frame];
    OUTLINED_FUNCTION_36();

    v91 = OUTLINED_FUNCTION_4_0();
    [v92 v93];

    v123[0] = *&v21[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_layout];
    v94 = *&v21[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_smartShortcutPickerDataSource];

    sub_2749175A4(v94);

    v96 = sub_2748122C0(v95);
    if (!*(v96 + 16))
    {
LABEL_32:

      __break(1u);
      goto LABEL_33;
    }

    v97 = *(v96 + 48);
    v127 = *(v96 + 32);
    v128 = v97;
    v129[0] = *(v96 + 64);
    *(v129 + 9) = *(v96 + 73);
    sub_2747B24E0(&v127, v123);

    OUTLINED_FUNCTION_86();
    *(swift_allocObject() + 16) = v21;
    OUTLINED_FUNCTION_10_16(v127, v128);
    v124[0] = v129[0];
    *(v124 + 9) = *(v129 + 9);
    v125 = sub_27483584C;
    v126 = v98;
    v99 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ABE8, &qword_274A19158));
    v100 = v21;
    v101 = sub_2749FADF4();
    v102 = OUTLINED_FUNCTION_13_14();
    if (!v102)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v103 = v102;
    v104 = v101;
    [v103 addSubview_];

    v105 = [v100 traitCollection];
    [v105 displayScale];

    BSFloatRoundForScale();
    v107 = v106;
    v108 = OUTLINED_FUNCTION_13_14();
    if (!v108)
    {
LABEL_34:
      __break(1u);
      return;
    }

    v109 = v108;
    [v108 bounds];
    v111 = v110;
    v113 = v112;
    v115 = v114;
    v117 = v116;

    v133.origin.x = v111;
    v133.origin.y = v113;
    v133.size.width = v115;
    v133.size.height = v117;
    [v104 setFrame_];

    v118 = *&v100[OBJC_IVAR____TtC10WorkflowUI39SmartShortcutPickerDetailViewController_hostingView];
    *&v100[OBJC_IVAR____TtC10WorkflowUI39SmartShortcutPickerDetailViewController_hostingView] = v104;
  }
}

uint64_t sub_274833CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2749FD0A4();
  v4[3] = sub_2749FD094();
  v6 = sub_2749FD044();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_274833D64, v6, v5);
}

uint64_t sub_274833D64()
{
  OUTLINED_FUNCTION_79();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_274833E04;

  return SmartShortcutPickerDataSource.loadIfNeeded()();
}

uint64_t sub_274833E04()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_274833FA0;
  }

  else
  {
    v5 = sub_274833F40;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_274833F40()
{
  OUTLINED_FUNCTION_79();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_274833FA0()
{
  OUTLINED_FUNCTION_79();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_274834000(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27480CFE0;

  return sub_274833CCC(a1, v4, v5, v6);
}

id sub_2748340B4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_2749FCD64();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() imageNamed:v4 inBundle:a3];

  return v5;
}

void sub_27483417C()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SmartShortcutPickerDetailViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView];
  [v1 setAutoresizingMask_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 bounds];
  OUTLINED_FUNCTION_36();

  v4 = OUTLINED_FUNCTION_4_0();
  [v5 v6];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 bounds];
      OUTLINED_FUNCTION_36();

      v9 = OUTLINED_FUNCTION_4_0();
      [v10 v11];
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    return;
  }

LABEL_5:
  if (v0[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_style + 88] == 1 && (_UISolariumEnabled() & 1) == 0)
  {
    [v1 setContentInset_];
    [v1 setScrollIndicatorInsets_];
  }

  sub_2747E0084(0);
}

uint64_t sub_274834358(void *a1, uint64_t a2)
{
  v40 = a1;
  v42 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v41 = v7;
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SmartShortcutPickerEntry(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  *&v44[0] = *&v2[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_layout];
  v14 = *&v2[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_smartShortcutPickerDataSource];

  v15 = sub_2749175A4(v14);

  v17 = sub_2748122C0(v16);
  v18 = sub_2748121CC(v17);
  *&v44[0] = v17;
  sub_2747828F8(v18);
  v19 = *&v44[0];
  v20 = sub_2749F9274();
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v20 >= *(v19 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v21 = (v19 + (v20 << 6));
  v22 = v21[2];
  v23 = v21[3];
  v24 = v21[4];
  *&v45[9] = *(v21 + 73);
  v44[1] = v23;
  *v45 = v24;
  v44[0] = v22;
  sub_2747B24E0(v44, v43 + 2);

  v25 = OUTLINED_FUNCTION_3_31();
  v26 = *(*v15 + 160);
  v39[1] = v15;
  v26(v43, v43 + 2, v25);
  if (LOBYTE(v43[0]) - 3 >= 2)
  {
    v27 = v2;
    OUTLINED_FUNCTION_3_31();
    sub_2747CDB14();
    v29 = v28;
    v30 = sub_2749F9264();
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v30 < *(v29 + 16))
      {
        sub_27483585C(v29 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v30, v13);

        OUTLINED_FUNCTION_3_31();
        v31 = sub_2749F9224();
        v32 = [v40 cellForItemAtIndexPath_];

        OUTLINED_FUNCTION_86();
        v33 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v34 = a2;
        v35 = v42;
        (*(v5 + 16))(v8, v34, v42);
        v36 = (*(v5 + 80) + 24) & ~*(v5 + 80);
        v37 = swift_allocObject();
        *(v37 + 16) = v33;
        (*(v5 + 32))(v37 + v36, v8, v35);

        sub_2748AA1A4(v13, (v43 + 2), v27, v32, sub_2748358C0, v37);

        sub_274835920(v13);

        return sub_2747D21CC(v44);
      }

      goto LABEL_10;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  result = sub_2749FDAE4();
  __break(1u);
  return result;
}

void sub_27483476C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView);
    v4 = sub_2749F9224();
    [v3 deselectItemAtIndexPath:v4 animated:1];
  }
}

void sub_274834904()
{

  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI39SmartShortcutPickerDetailViewController_hostingView);
}

id SmartShortcutPickerDetailViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartShortcutPickerDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2748349EC()
{
  v1 = sub_2749FB624();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AC10, &qword_274A192B8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = __dst - v10;
  memcpy(__dst, v0, sizeof(__dst));
  *v11 = sub_2749FB524();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AC18, &qword_274A192C0);
  sub_274834BB0(__dst, &v11[*(v12 + 44)]);
  v13 = sub_2749FBC64();
  sub_2749FA9E4();
  v14 = &v11[*(v8 + 36)];
  *v14 = v13;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  (*(v3 + 104))(v7, *MEMORY[0x277CE0248], v1);
  sub_274835A5C();
  sub_2749FBF04();
  (*(v3 + 8))(v7, v1);
  return sub_2747488D0(v11);
}

uint64_t sub_274834BB0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v78 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AC38, &qword_274A192D0);
  v76 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v71 - v3;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AC40, &qword_274A192D8);
  v86 = *(v77 - 8);
  v4 = MEMORY[0x28223BE20](v77);
  v74 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v84 = &v71 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AC48, &qword_274A192E0) - 8;
  v7 = MEMORY[0x28223BE20](v72);
  v85 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v71 - v9;
  v10 = sub_2749FA2F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2749FA2C4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_2749FA304();
  v83 = *(v81 - 8);
  v18 = MEMORY[0x28223BE20](v81);
  v80 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v82 = &v71 - v20;
  v21 = a1;
  v71 = a1;
  v22 = a1[3];
  v24 = v21[4];
  v23 = v21[5];
  *v17 = 0x403D000000000000;
  (*(v15 + 104))(v17, *MEMORY[0x277D7D688], v14);
  (*(v11 + 104))(v13, *MEMORY[0x277D7D6D0], v10);
  v25 = v23;
  sub_2749FA314();
  v87[0] = v22;
  v87[1] = v24;
  sub_27475D0D0();

  v26 = sub_2749FBEE4();
  v28 = v27;
  v30 = v29;
  sub_2749FBCF4();
  v31 = sub_2749FBEC4();
  v33 = v32;
  LOBYTE(v23) = v34;

  sub_27477656C(v26, v28, v30 & 1);

  sub_2749FBD44();
  v35 = sub_2749FBE74();
  v37 = v36;
  v39 = v38;
  sub_27477656C(v31, v33, v23 & 1);

  v87[0] = sub_2749FC474();
  v40 = sub_2749FBE94();
  v42 = v41;
  LOBYTE(v23) = v43;
  v45 = v44;
  sub_27477656C(v35, v37, v39 & 1);

  v46 = *(v72 + 44);
  v47 = *MEMORY[0x277CE13B8];
  v48 = sub_2749FC994();
  v49 = v79;
  (*(*(v48 - 8) + 104))(v79 + v46, v47, v48);
  *v49 = v40;
  *(v49 + 8) = v42;
  *(v49 + 16) = v23 & 1;
  *(v49 + 24) = v45;
  v50 = swift_allocObject();
  v51 = v71;
  memcpy((v50 + 16), v71, 0x50uLL);
  sub_274835B3C(v51, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AC50, &qword_274A192E8);
  sub_274835B74();
  v52 = v73;
  sub_2749FC624();
  sub_27472AB6C(&qword_28096AC70, &qword_28096AC38, &qword_274A192D0, MEMORY[0x277CDF028]);
  sub_274835C2C();
  v53 = v84;
  v54 = v75;
  sub_2749FBFD4();
  (*(v76 + 8))(v52, v54);
  v55 = *(v83 + 16);
  v56 = v80;
  v57 = v81;
  v55(v80, v82, v81);
  v58 = v49;
  v59 = v85;
  sub_2747B97A0(v58, v85, &qword_28096AC48, &qword_274A192E0);
  LOBYTE(v87[0]) = 1;
  v60 = *(v86 + 16);
  v61 = v74;
  v62 = v77;
  v60(v74, v53, v77);
  v63 = v78;
  v55(v78, v56, v57);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AC80, &qword_274A192F8);
  sub_2747B97A0(v59, &v63[v64[12]], &qword_28096AC48, &qword_274A192E0);
  v65 = &v63[v64[16]];
  v66 = v87[0];
  *v65 = 0;
  v65[8] = v66;
  v60(&v63[v64[20]], v61, v62);
  v67 = *(v86 + 8);
  v67(v84, v62);
  sub_27472ECBC(v79, &qword_28096AC48, &qword_274A192E0);
  v68 = *(v83 + 8);
  v69 = v81;
  v68(v82, v81);
  v67(v61, v62);
  sub_27472ECBC(v85, &qword_28096AC48, &qword_274A192E0);
  return (v68)(v80, v69);
}

double sub_274835418@<D0>(uint64_t *a2@<X8>)
{
  *a2 = sub_2749FC914();
  a2[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AC88, &unk_274A19300);
  sub_2748354B8((a2 + *(v4 + 44)));
  sub_2749FC914();
  sub_2749FABB4();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AC50, &qword_274A192E8) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

double sub_2748354B8@<D0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0, &qword_274A13E30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AC90, &qword_274A19310);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v23 - v9);
  sub_2749FC474();
  v11 = sub_2749FC484();

  v12 = sub_2749FC514();
  sub_2749FBD34();
  v13 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v13);
  v14 = sub_2749FBD64();
  sub_27472ECBC(v3, &unk_28096C0A0, &qword_274A13E30);
  KeyPath = swift_getKeyPath();
  sub_2749FC474();
  v16 = sub_2749FC484();

  v17 = *(v5 + 44);
  v18 = *MEMORY[0x277CE13B8];
  v19 = sub_2749FC994();
  (*(*(v19 - 8) + 104))(v10 + v17, v18, v19);
  *v10 = v12;
  v10[1] = KeyPath;
  v10[2] = v14;
  v10[3] = v16;
  sub_2747B97A0(v10, v8, &qword_28096AC90, &qword_274A19310);
  v20 = v24;
  *v24 = v11;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AC98, &qword_274A19348);
  sub_2747B97A0(v8, v20 + *(v21 + 48), &qword_28096AC90, &qword_274A19310);

  sub_27472ECBC(v10, &qword_28096AC90, &qword_274A19310);
  sub_27472ECBC(v8, &qword_28096AC90, &qword_274A19310);

  return result;
}

void sub_274835758(uint64_t a1, void *a2)
{
  v3 = sub_2749FCF74();

  [a2 setColors_];
}

void sub_2748357C8(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_27471CF08(0, a3, a4);
  v7 = sub_2749FCF74();

  [a2 *a5];
}

uint64_t sub_27483585C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartShortcutPickerEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2748358C0()
{
  v1 = sub_2749F9284();
  OUTLINED_FUNCTION_34(v1);
  v2 = *(v0 + 16);

  sub_27483476C(v2);
}

uint64_t sub_274835920(uint64_t a1)
{
  v2 = type metadata accessor for SmartShortcutPickerEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27483599C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_2748359DC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_274835A5C()
{
  result = qword_28096AC20;
  if (!qword_28096AC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AC10, &qword_274A192B8);
    sub_27472AB6C(&qword_28096AC28, &qword_28096AC30, &qword_274A192C8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AC20);
  }

  return result;
}

unint64_t sub_274835B74()
{
  result = qword_28096AC58;
  if (!qword_28096AC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AC50, &qword_274A192E8);
    sub_27472AB6C(&qword_28096AC60, &qword_28096AC68, &qword_274A192F0, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AC58);
  }

  return result;
}

unint64_t sub_274835C2C()
{
  result = qword_28096AC78;
  if (!qword_28096AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AC78);
  }

  return result;
}

uint64_t NameIconView.Model.__allocating_init(runButtonModel:progress:popoverModel:onStop:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  NameIconView.Model.init(runButtonModel:progress:popoverModel:onStop:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_274835CF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274835D48();
  *a1 = result;
  return result;
}

uint64_t (*sub_274835D70())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274835DFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACB0, &qword_274A193A8);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_35();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACA8, &qword_274A193A0);
  OUTLINED_FUNCTION_65_0(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_30();
  return v6(v5);
}

uint64_t sub_274835EE4()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACB0, &qword_274A193A8);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACA8, &qword_274A193A0);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_274835FE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27483603C();
  *a1 = result;
  return result;
}

uint64_t (*sub_274836064())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_2748360D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t sub_2748361B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACC0, &qword_274A19400);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_35();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACB8, &qword_274A193F8);
  OUTLINED_FUNCTION_65_0(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_30();
  return v6(v5);
}

uint64_t sub_27483629C()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACC0, &qword_274A19400);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACB8, &qword_274A193F8);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

void sub_27483639C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_274836464@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2748364BC();
  *a1 = result;
  return result;
}

uint64_t (*sub_2748364E4())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747A7A20;
}

uint64_t sub_274836570()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A618, &qword_274A17D00);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_35();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A610, &qword_274A17CF8);
  OUTLINED_FUNCTION_65_0(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_30();
  return v6(v5);
}

uint64_t sub_274836658()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A618, &qword_274A17D00);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A610, &qword_274A17CF8);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_274836758@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2748367B0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2748367B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_274836824(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t (*sub_274836894())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274836920()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_35();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_65_0(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_30();
  return v6(v5);
}

uint64_t sub_274836A08()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

id sub_274836B08()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  [v0 setTimeStyle_];
  result = [v0 setDoesRelativeDateFormatting_];
  qword_2809891B8 = v0;
  return result;
}

uint64_t NameIconView.Model.deinit()
{
  v1 = OBJC_IVAR____TtCV10WorkflowUI12NameIconView5Model__runButtonModel[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACA8, &qword_274A193A0);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCV10WorkflowUI12NameIconView5Model__progress;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACB8, &qword_274A193F8);
  OUTLINED_FUNCTION_1_2();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtCV10WorkflowUI12NameIconView5Model__popoverModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A610, &qword_274A17CF8);
  OUTLINED_FUNCTION_1_2();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtCV10WorkflowUI12NameIconView5Model__isHovered;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_1_2();
  (*(v8 + 8))(v0 + v7);

  return v0;
}

uint64_t NameIconView.Model.__deallocating_deinit()
{
  NameIconView.Model.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274836D0C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NameIconView.Model(0);
  result = sub_2749FA874();
  *a2 = result;
  return result;
}

uint64_t sub_274836D4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NameIconView(0);
  sub_27473F28C(v1 + *(v10 + 36), v9, &qword_28096D850, &unk_274A13E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FAA94();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_274836F54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D770, &qword_274A1C800);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for NameIconView(0);
  sub_27473F28C(v1 + *(v10 + 40), v9, &qword_28096D770, &qword_274A1C800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_27475CF54(v9, a1, &qword_28096DDE0, &qword_274A195A0);
  }

  sub_2749FD2D4();
  v12 = sub_2749FBC14();
  sub_2749FA424();

  sub_2749FB4B4();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t NameIconView.init(item:dataSource:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for NameIconView(0);
  v6 = a3 + v5[8];
  sub_2749FC5B4();
  *v6 = v15;
  *(v6 + 1) = v16;
  v7 = v5[9];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  swift_storeEnumTagMultiPayload();
  v8 = v5[10];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D770, &qword_274A1C800);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LibraryDataSource(0);
  sub_27483A3AC(&qword_28159FB50, type metadata accessor for LibraryDataSource, &protocol conformance descriptor for LibraryDataSource);

  a3[2] = sub_2749FAD84();
  a3[3] = v9;
  type metadata accessor for ShortcutsLibraryItem(0);
  type metadata accessor for NameIconView.Model(0);
  sub_27483A3AC(&qword_28096ACC8, type metadata accessor for NameIconView.Model, &protocol conformance descriptor for NameIconView.Model);

  *a3 = sub_2749FAD84();
  a3[1] = v10;
  sub_27483AE54(a1, a3 + v5[7], type metadata accessor for ShortcutsLibraryItem);
  sub_2748364BC();
  type metadata accessor for PopoverModel(0);
  sub_27483A3AC(&qword_28096ACD0, type metadata accessor for PopoverModel, &protocol conformance descriptor for PopoverModel);
  v11 = sub_2749FAD84();
  v13 = v12;

  a3[4] = v11;
  a3[5] = v13;
  return sub_27483AEB4(a1, type metadata accessor for ShortcutsLibraryItem);
}

uint64_t sub_2748373C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2748367B0();
  v4 = sub_2748367B0();
  *a1 = sub_2749FC914();
  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AD30, &qword_274A19628);
  sub_274837478(v1, v3 & 1, (v4 & 1) == 0, a1 + *(v6 + 44));
  v7 = sub_2748367B0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AD38, &qword_274A19630);
  v9 = a1 + *(result + 36);
  *v9 = 0;
  v9[8] = v7 & 1;
  return result;
}

void sub_274837478(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AD40, &qword_274A19638);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26[-v7];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AD48, &qword_274A19640);
  MEMORY[0x28223BE20](v30);
  v10 = &v26[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AD50, &qword_274A19648);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v26[-v16];
  sub_274835D48();
  v34 = 0;
  sub_2749FC5B4();
  v29 = v36;
  type metadata accessor for ShortcutChiclet.RunButton.Model(0);
  sub_27483A3AC(&qword_28096AD58, type metadata accessor for ShortcutChiclet.RunButton.Model, &protocol conformance descriptor for ShortcutChiclet.RunButton.Model);
  v28 = sub_2749FAD84();
  v19 = v18;
  v27 = v35;
  v20 = 0.0;
  if (v31)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  sub_274837824(a1, v8);
  if (v32)
  {
    v20 = 1.0;
  }

  sub_27475CF54(v8, v10, &qword_28096AD40, &qword_274A19638);
  *&v10[*(v30 + 36)] = v20;
  v33 = a1;
  sub_27483AC5C();
  sub_27473F2DC();
  sub_2749FC214();
  sub_2747359D0(v10, &qword_28096AD48, &qword_274A19640);
  v22 = *(v12 + 16);
  v22(v15, v17, v11);
  v23 = v29;
  *a4 = v28;
  *(a4 + 8) = v19;
  *(a4 + 16) = v27;
  *(a4 + 24) = v23;
  *(a4 + 32) = v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AD90, &qword_274A19660);
  v22((a4 + *(v24 + 48)), v15, v11);
  v25 = *(v12 + 8);

  v25(v17, v11);
  v25(v15, v11);
}

uint64_t sub_274837824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AD98, &qword_274A19668);
  MEMORY[0x28223BE20](v50);
  v51 = v42 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADA0, &qword_274A19670);
  MEMORY[0x28223BE20](v44);
  v46 = v42 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AD88, &qword_274A19658);
  MEMORY[0x28223BE20](v49);
  v48 = v42 - v5;
  v6 = sub_2749FA2F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2749FA2C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_2749FA304();
  v47 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v45 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ShortcutsLibraryItem.ItemType(0);
  MEMORY[0x28223BE20](v16);
  v18 = (v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for NameIconView.RunButtonOrIcon(0);
  sub_27483AE54(a1 + *(v19 + 20), v18, type metadata accessor for ShortcutsLibraryItem.ItemType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v43 = *v18;
      v32 = v43;
      v42[1] = sub_27483AF08();
      v33 = [v32 underlyingAutoShortcut];
      v34 = [v33 bundleIdentifier];

      v35 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v37 = v36;

      sub_274903E28(v35, v37);
      __asm { FMOV            V0.2D, #29.0 }

      *v13 = _Q0;
      (*(v11 + 104))(v13, *MEMORY[0x277D7D690], v10);
      (*(v7 + 104))(v9, *MEMORY[0x277D7D6D0], v6);
      v39 = v45;
      sub_2749FA314();
      v40 = v47;
      (*(v47 + 16))(v46, v39, v14);
      swift_storeEnumTagMultiPayload();
      sub_27483A3AC(&qword_28159E800, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
      v41 = v48;
      sub_2749FB7B4();
      sub_27473F28C(v41, v51, &qword_28096AD88, &qword_274A19658);
      swift_storeEnumTagMultiPayload();
      sub_27483ADA0();
      sub_2749FB7B4();

      sub_2747359D0(v41, &qword_28096AD88, &qword_274A19658);
      result = (*(v40 + 8))(v39, v14);
      break;
    case 2u:
      v31 = sub_2749F97C4();
      (*(*(v31 - 8) + 8))(v18, v31);
      goto LABEL_5;
    case 3u:
      sub_27483AEB4(v18, type metadata accessor for ShortcutsLibraryItem.ItemType);
LABEL_5:
      swift_storeEnumTagMultiPayload();
      sub_27483ADA0();
      result = sub_2749FB7B4();
      break;
    default:
      v20 = *v18;
      v21 = [*v18 attributionIcon];
      __asm { FMOV            V0.2D, #29.0 }

      *v13 = _Q0;
      (*(v11 + 104))(v13, *MEMORY[0x277D7D690], v10);
      (*(v7 + 104))(v9, *MEMORY[0x277D7D6D0], v6);
      v27 = v45;
      sub_2749FA314();
      v28 = v47;
      (*(v47 + 16))(v46, v27, v14);
      swift_storeEnumTagMultiPayload();
      sub_27483A3AC(&qword_28159E800, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
      v29 = v48;
      sub_2749FB7B4();
      sub_27473F28C(v29, v51, &qword_28096AD88, &qword_274A19658);
      swift_storeEnumTagMultiPayload();
      sub_27483ADA0();
      sub_2749FB7B4();

      sub_2747359D0(v29, &qword_28096AD88, &qword_274A19658);
      result = (*(v28 + 8))(v27, v14);
      break;
  }

  return result;
}

uint64_t sub_274837FBC@<X0>(uint64_t a1@<X8>)
{
  sub_274835D48();
  sub_2749FC5B4();
  type metadata accessor for ShortcutChiclet.RunButton.Model(0);
  sub_27483A3AC(&qword_28096AD58, type metadata accessor for ShortcutChiclet.RunButton.Model, &protocol conformance descriptor for ShortcutChiclet.RunButton.Model);
  result = sub_2749FAD84();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t NameIconView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2749FB524();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACD8, &qword_274A194F8);
  return sub_2748380D4(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_2748380D4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v3 = sub_2749FB954();
  v97 = *(v3 - 8);
  v4 = v97;
  MEMORY[0x28223BE20](v3);
  v6 = (&v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966CD0, &unk_274A0CBA0);
  v75 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v68 - v8;
  v76 = &v68 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966DA0, &qword_274A0CC00);
  v11 = *(v10 - 8);
  v77 = v10;
  v78 = v11;
  MEMORY[0x28223BE20](v10);
  v95 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966DA8, &qword_274A0CC08);
  v14 = *(v13 - 8);
  v81 = v13;
  v82 = v14;
  MEMORY[0x28223BE20](v13);
  v96 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADA8, &qword_274A19678);
  v84 = *(v16 - 8);
  v85 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v83 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v79 = &v68 - v19;
  sub_274838BF4(a1, v9);
  sub_2749FC914();
  sub_2749FABB4();
  v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966CF8, &qword_274A0CBB8) + 36)];
  v21 = v102[1];
  *v20 = v102[0];
  *(v20 + 1) = v21;
  *(v20 + 2) = v102[2];
  v22 = sub_2749FBCB4();
  sub_2749FA9E4();
  v23 = &v9[*(v7 + 36)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v80 = a1;
  v28 = *(a1 + 32);
  v93 = *(a1 + 40);
  v94 = v28;
  v92 = type metadata accessor for PopoverModel(0);
  v87 = sub_27483A3AC(&qword_28096ACD0, type metadata accessor for PopoverModel, &protocol conformance descriptor for PopoverModel);
  v29 = sub_2749FAD94();
  swift_getKeyPath();
  sub_2749FADA4();

  v30 = __src[0];
  v31 = __src[1];
  v68 = __src[1];
  v32 = __src[2];
  v71 = __src[0];
  v72 = __src[2];
  *v6 = sub_2749FC604();
  v91 = *MEMORY[0x277CDE248];
  v33 = *(v4 + 104);
  v89 = v4 + 104;
  v90 = v33;
  v33(v6);
  v101[0] = v30;
  v101[1] = v31;
  v101[2] = v32;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966CD8, qword_274A18A80);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966CE0, &qword_274A0CBB0);
  v73 = sub_27475499C();
  OpaqueTypeConformance2 = sub_27472AB6C(&qword_280966D90, &qword_280966CD8, qword_274A18A80, &protocol conformance descriptor for IconEditorViewModel<A>);
  v34 = sub_27472AB6C(&qword_280966D98, &qword_280966CE0, &qword_274A0CBB0, &protocol conformance descriptor for ColorIconPopoverView<A>);
  v36 = v75;
  v35 = v76;
  sub_2749FC024();
  v37 = *(v97 + 8);
  v97 += 8;
  v88 = v37;
  v38 = v3;
  v37(v6, v3);
  sub_2747359D0(v35, &qword_280966CD0, &unk_274A0CBA0);

  v39 = sub_2749FAD94();
  swift_getKeyPath();
  sub_2749FADA4();

  v41 = v101[0];
  v40 = v101[1];
  v42 = v101[2];
  v72 = v101[2];
  *v6 = sub_2749FC604();
  v90(v6, v91, v38);
  *&v100[0] = v41;
  *(&v100[0] + 1) = v40;
  *&v100[1] = v42;
  v71 = type metadata accessor for SharingPromptModel(0);
  __src[0] = v36;
  __src[1] = v69;
  __src[2] = v70;
  __src[3] = v73;
  __src[4] = OpaqueTypeConformance2;
  __src[5] = v34;
  v76 = &unk_274A3ADA8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = sub_27483A3AC(&qword_28159F878, type metadata accessor for SharingPromptModel, &protocol conformance descriptor for SharingPromptModel);
  v43 = sub_27473E450();
  v44 = v77;
  v45 = v95;
  sub_2749FC024();
  v88(v6, v38);
  (*(v78 + 8))(v45, v44);

  v46 = sub_2749FAD94();
  swift_getKeyPath();
  sub_2749FADA4();

  v47 = v101[0];
  v48 = v101[1];
  v49 = v101[2];
  *v6 = sub_2749FC604();
  v90(v6, v91, v38);
  *&v100[0] = v47;
  *(&v100[0] + 1) = v48;
  *&v100[1] = v49;
  type metadata accessor for FileActivityModel(0);
  __src[0] = v44;
  __src[1] = v71;
  __src[2] = &type metadata for WorkflowSharingPrompt;
  __src[3] = OpaqueTypeConformance2;
  v50 = v79;
  __src[4] = v75;
  __src[5] = v43;
  swift_getOpaqueTypeConformance2();
  sub_27483A3AC(&qword_28159FC30, type metadata accessor for FileActivityModel, &protocol conformance descriptor for FileActivityModel);
  sub_27473E670();
  v51 = v81;
  v52 = v96;
  sub_2749FC024();
  v88(v6, v38);
  (*(v82 + 8))(v52, v51);

  if (sub_274839844())
  {
    v53 = sub_2749FB644();
    LOBYTE(__src[0]) = 0;
    sub_274839C54(v100);
    *&v98[7] = v100[0];
    *&v98[23] = v100[1];
    *&v98[39] = v100[2];
    *&v98[55] = v100[3];
    v99[0] = 0;
    v101[0] = v53;
    v101[1] = 0x4000000000000000;
    LOBYTE(v101[2]) = __src[0];
    memcpy(&v101[2] + 1, v98, 0x47uLL);
    LOBYTE(v101[11]) = 0;
  }

  else
  {
    type metadata accessor for NameIconView(0);
    ShortcutsLibraryItem.name.getter();
    __src[0] = v54;
    __src[1] = v55;
    sub_27475D0D0();
    v56 = sub_2749FBEE4();
    LOBYTE(v100[0]) = v57 & 1;
    v99[0] = 1;
    v101[0] = v56;
    v101[1] = v58;
    LOBYTE(v101[2]) = v57 & 1;
    v101[3] = v59;
    LOBYTE(v101[11]) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADB0, &qword_274A196F8);
  sub_27472AB6C(&qword_28096ADB8, &qword_28096ADB0, &qword_274A196F8, MEMORY[0x277CE1198]);
  sub_2749FB7B4();
  v61 = v83;
  v60 = v84;
  v62 = *(v84 + 16);
  v63 = v85;
  v62(v83, v50, v85);
  memcpy(v99, __src, sizeof(v99));
  v64 = v86;
  v62(v86, v61, v63);
  v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADC0, &qword_274A19700) + 48);
  memcpy(v100, v99, 0x59uLL);
  memcpy(&v64[v65], v99, 0x59uLL);
  sub_27473F28C(v100, v101, &qword_28096ADC8, &qword_274A19708);
  v66 = *(v60 + 8);
  v66(v50, v63);
  memcpy(v101, v99, 0x59uLL);
  sub_2747359D0(v101, &qword_28096ADC8, &qword_274A19708);
  return (v66)(v61, v63);
}

uint64_t sub_274838BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966D60, &qword_274A0CBE8);
  MEMORY[0x28223BE20](v58);
  v52 = (&v45 - v3);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADE8, &qword_274A19750);
  MEMORY[0x28223BE20](v60);
  v62 = (&v45 - v4);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADF0, &qword_274A19758);
  MEMORY[0x28223BE20](v56);
  v57 = &v45 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280966D28, &qword_274A0CBD0);
  MEMORY[0x28223BE20](v61);
  v59 = &v45 - v6;
  v7 = type metadata accessor for NameIconView(0);
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = v8;
  v55 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2749FAA94();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v16 = *(a1 + 8);
  sub_27483603C();
  v17 = sub_27473CDB4();

  if (v17)
  {
    sub_274835D48();
    v52 = sub_27490FDA0();

    sub_274836D4C(v15);
    (*(v10 + 104))(v13, *MEMORY[0x277CDF3C0], v9);
    v18 = sub_2749FAA84();
    v19 = *(v10 + 8);
    v19(v13, v9);
    v19(v15, v9);
    if (v18)
    {
      v20 = sub_2749FC454();
    }

    else
    {
      v20 = sub_2749FC474();
    }

    v51 = v20;
    sub_27483603C();
    v64[0] = 0;
    sub_2749FC704();
    v49 = v65[1];
    v50 = v65[0];
    v48 = LOBYTE(v65[2]);
    v27 = *(v16 + OBJC_IVAR____TtCV10WorkflowUI12NameIconView5Model_onStop);
    v46 = *(v16 + OBJC_IVAR____TtCV10WorkflowUI12NameIconView5Model_onStop + 8);
    v47 = v27;
    type metadata accessor for ShortcutChiclet.Progress(0);
    sub_27483A3AC(&qword_2815A0130, type metadata accessor for ShortcutChiclet.Progress, &protocol conformance descriptor for ShortcutChiclet.Progress);

    v28 = sub_2749FAD84();
    v30 = v29;
    v31 = v55;
    sub_27483AE54(a1, v55, type metadata accessor for NameIconView);
    v32 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v33 = swift_allocObject();
    sub_27483AFC8(v31, v33 + v32);
    sub_27483AE54(a1, v31, type metadata accessor for NameIconView);
    v34 = swift_allocObject();
    sub_27483AFC8(v31, v34 + v32);
    v65[0] = v52;
    v65[1] = v51;
    v65[2] = v28;
    v65[3] = v30;
    memset(&v65[5], 0, 32);
    v65[4] = 0x403D000000000000;
    v65[9] = v50;
    v65[10] = v49;
    LOBYTE(v65[11]) = v48;
    v65[12] = v47;
    v65[13] = v46;
    v65[14] = sub_27483B02C;
    v65[15] = v33;
    memset(&v65[16], 0, 32);
    v65[20] = sub_27483B3C0;
    v65[21] = v34;
    memcpy(v57, v65, 0xB0uLL);
    swift_storeEnumTagMultiPayload();
    sub_27473F28C(v65, v64, &unk_280966D38, &qword_274A0CBD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280966D38, &qword_274A0CBD8);
    sub_27473DC6C();
    sub_274754C7C();
    v35 = v59;
    sub_2749FB7B4();
    sub_27473F28C(v35, v62, &unk_280966D28, &qword_274A0CBD0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966D88, &qword_274A0CBF8);
    sub_274754BF0();
    sub_27472AB6C(&qword_280966D80, &qword_280966D88, &qword_274A0CBF8, MEMORY[0x277CDF3A0]);
    sub_2749FB7B4();
    sub_2747359D0(v65, &unk_280966D38, &qword_274A0CBD8);
    v36 = v35;
    v37 = &unk_280966D28;
    v38 = &qword_274A0CBD0;
  }

  else
  {
    v21 = (a1 + *(v7 + 32));
    v22 = *v21;
    v23 = *(v21 + 1);
    LOBYTE(v65[0]) = v22;
    v65[1] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
    sub_2749FC5C4();
    if (v64[0])
    {
      v24 = sub_2749FC464();
      v25 = v62;
      *v62 = v24;
      *(v25 + 4) = 256;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966D88, &qword_274A0CBF8);
      sub_274754BF0();
      sub_27472AB6C(&qword_280966D80, &qword_280966D88, &qword_274A0CBF8, MEMORY[0x277CDF3A0]);
      return sub_2749FB7B4();
    }

    v39 = *(v7 + 28);
    v40 = type metadata accessor for NameIconView.RunButtonOrIcon(0);
    v41 = v52;
    sub_27483AE54(a1 + v39, v52 + *(v40 + 20), type metadata accessor for ShortcutsLibraryItem);
    type metadata accessor for NameIconView.Model(0);
    sub_27483A3AC(&qword_28096ACC8, type metadata accessor for NameIconView.Model, &protocol conformance descriptor for NameIconView.Model);

    *v41 = sub_2749FAD84();
    v41[1] = v42;
    sub_2749FABF4();
    sub_2749FC9F4();
    sub_2749FABE4();
    sub_2749FAC04();

    sub_2749FC984();
    sub_2749FAC24();

    sub_2749FABF4();
    sub_2749FC984();
    sub_2749FAC24();

    v43 = sub_2749FABD4();

    *(v41 + *(v58 + 36)) = v43;
    sub_27473F28C(v41, v57, &qword_280966D60, &qword_274A0CBE8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280966D38, &qword_274A0CBD8);
    sub_27473DC6C();
    sub_274754C7C();
    v44 = v59;
    sub_2749FB7B4();
    sub_27473F28C(v44, v62, &unk_280966D28, &qword_274A0CBD0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966D88, &qword_274A0CBF8);
    sub_274754BF0();
    sub_27472AB6C(&qword_280966D80, &qword_280966D88, &qword_274A0CBF8, MEMORY[0x277CDF3A0]);
    sub_2749FB7B4();
    sub_2747359D0(v44, &unk_280966D28, &qword_274A0CBD0);
    v36 = v41;
    v37 = &qword_280966D60;
    v38 = &qword_274A0CBE8;
  }

  return sub_2747359D0(v36, v37, v38);
}

uint64_t sub_2748395FC(uint64_t a1, char a2)
{
  type metadata accessor for NameIconView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
  return sub_2749FC5D4();
}

uint64_t sub_274839670@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADE0, &qword_274A19718);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966CE0, &qword_274A0CBB0);
  v10 = sub_2749F9D74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  sub_27473F28C(v8, v6, &qword_28096ADE0, &qword_274A19718);

  sub_2749FC5B4();
  sub_2747359D0(v8, &qword_28096ADE0, &qword_274A19718);
  v11 = *(v9 + 40);
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50, &qword_274A11AE0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966CD8, qword_274A18A80);
  sub_27472AB6C(&qword_280968920, &qword_280966CD8, qword_274A18A80, &protocol conformance descriptor for IconEditorViewModel<A>);
  result = sub_2749FAD84();
  *a2 = result;
  a2[1] = v13;
  return result;
}

uint64_t sub_274839844()
{
  v0 = sub_2749FB924();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ADD0, &qword_274A19710);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DDE0, &qword_274A195A0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v22 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  sub_274836F54(&v22 - v14);
  (*(v1 + 104))(v13, *MEMORY[0x277CE0558], v0);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_27473F28C(v15, v6, &qword_28096DDE0, &qword_274A195A0);
  sub_27473F28C(v13, &v6[v16], &qword_28096DDE0, &qword_274A195A0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) != 1)
  {
    sub_27473F28C(v6, v10, &qword_28096DDE0, &qword_274A195A0);
    if (__swift_getEnumTagSinglePayload(&v6[v16], 1, v0) != 1)
    {
      v18 = &v6[v16];
      v19 = v23;
      (*(v1 + 32))(v23, v18, v0);
      sub_27483A3AC(&qword_28096ADD8, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v17 = sub_2749FCD54();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_2747359D0(v13, &qword_28096DDE0, &qword_274A195A0);
      sub_2747359D0(v15, &qword_28096DDE0, &qword_274A195A0);
      v20(v10, v0);
      sub_2747359D0(v6, &qword_28096DDE0, &qword_274A195A0);
      return v17 & 1;
    }

    sub_2747359D0(v13, &qword_28096DDE0, &qword_274A195A0);
    sub_2747359D0(v15, &qword_28096DDE0, &qword_274A195A0);
    (*(v1 + 8))(v10, v0);
    goto LABEL_6;
  }

  sub_2747359D0(v13, &qword_28096DDE0, &qword_274A195A0);
  sub_2747359D0(v15, &qword_28096DDE0, &qword_274A195A0);
  if (__swift_getEnumTagSinglePayload(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_2747359D0(v6, &qword_28096ADD0, &qword_274A19710);
    v17 = 0;
    return v17 & 1;
  }

  sub_2747359D0(v6, &qword_28096DDE0, &qword_274A195A0);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_274839C54@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for NameIconView(0);
  ShortcutsLibraryItem.name.getter();
  sub_27475D0D0();
  v2 = sub_2749FBEE4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_274839EA4();
  v9 = sub_2749FCE34();

  if (v9 < 1)
  {
    v20 = 0;
    v22 = 0;
    v30 = 0;
    v26 = 0;
  }

  else
  {
    sub_274839EA4();
    v10 = sub_2749FBEE4();
    v12 = v11;
    v14 = v13;
    sub_2749FC4A4();
    v33 = v4;
    v15 = sub_2749FBE84();
    v32 = v6;
    v17 = v16;
    v34 = v8;
    v19 = v18;

    sub_27477656C(v10, v12, v14 & 1);

    sub_2749FBDD4();
    v20 = sub_2749FBEC4();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = v19 & 1;
    v8 = v34;
    v28 = v15;
    v4 = v33;
    v29 = v17;
    v6 = v32;
    sub_27477656C(v28, v29, v27);

    v30 = v24 & 1;
    sub_274754DBC(v20, v22, v24 & 1);
  }

  sub_274754DBC(v2, v4, v6 & 1);

  sub_2747FF76C(v20, v22, v30, v26);
  sub_2747FF7B8(v20, v22, v30, v26);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v20;
  *(a1 + 40) = v22;
  *(a1 + 48) = v30;
  *(a1 + 56) = v26;
  sub_2747FF7B8(v20, v22, v30, v26);
  sub_27477656C(v2, v4, v6 & 1);
}

uint64_t sub_274839EA4()
{
  v1 = sub_2749F90F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShortcutsLibraryItem.ItemType(0);
  MEMORY[0x28223BE20](v5);
  v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NameIconView(0);
  sub_27483AE54(v0 + *(v8 + 28), v7, type metadata accessor for ShortcutsLibraryItem.ItemType);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_27483AEB4(v7, type metadata accessor for ShortcutsLibraryItem.ItemType);
    return 0;
  }

  else
  {
    v10 = *v7;
    sub_2747AB0D0();
    if (v30 == 3)
    {
      if (qword_280966BF8 != -1)
      {
        swift_once();
      }

      v11 = qword_2809891B8;
      v12 = [v10 modificationDate];
      sub_2749F90D4();

      v13 = sub_2749F90B4();
      (*(v2 + 8))(v4, v1);
      v14 = [v11 stringFromDate_];

      v9 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    }

    else
    {
      v15 = sub_2749FCE14("%lu actions", v29[0]);
      v16 = v15;
      v18 = v17;
      v19 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v19 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        v30 = 0;
        v31 = 0xE000000000000000;
        sub_2749FD934();

        v30 = v16;
        v31 = v18;
        v29[2] = 10;
        v29[3] = 0xE100000000000000;
        v29[0] = 32;
        v29[1] = 0xE100000000000000;
        sub_27475D0D0();
        v30 = sub_2749FD724();
        v31 = v20;
        MEMORY[0x277C5EBC0](0xD000000000000010, 0x8000000274A2C0D0);
        if (qword_28159E3A8 != -1)
        {
          swift_once();
        }

        v21 = qword_28159E448;
        v22 = sub_2749FCD64();

        v23 = sub_2749FCD64();

        v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_274A0EF10;
      v26 = [v10 actionCount];
      v27 = MEMORY[0x277D83C10];
      *(v25 + 56) = MEMORY[0x277D83B88];
      *(v25 + 64) = v27;
      *(v25 + 32) = v26;
      v9 = sub_2749FCD74();
    }
  }

  return v9;
}

uint64_t sub_27483A308(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DDE0, &qword_274A195A0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  sub_27473F28C(a1, &v5 - v3, &qword_28096DDE0, &qword_274A195A0);
  return sub_2749FB2C4();
}

uint64_t sub_27483A3AC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_27483A438(uint64_t a1)
{
  sub_27483A580(319);
  if (v1 <= 0x3F)
  {
    sub_27483A614(319);
    if (v2 <= 0x3F)
    {
      sub_27483A6A8(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ShortcutsLibraryItem(319);
        if (v4 <= 0x3F)
        {
          sub_27472D2FC(319, &qword_28096D840, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_27472C628(319, &qword_280968A60, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_27483A73C(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_27483A580(uint64_t a1)
{
  if (!qword_28096ACF8)
  {
    type metadata accessor for NameIconView.Model(255);
    sub_27483A3AC(&qword_28096ACC8, type metadata accessor for NameIconView.Model, &protocol conformance descriptor for NameIconView.Model);
    v1 = sub_2749FADB4();
    if (!v2)
    {
      atomic_store(v1, &qword_28096ACF8);
    }
  }
}

void sub_27483A614(uint64_t a1)
{
  if (!qword_28096AD00)
  {
    type metadata accessor for LibraryDataSource(255);
    sub_27483A3AC(&qword_28159FB50, type metadata accessor for LibraryDataSource, &protocol conformance descriptor for LibraryDataSource);
    v1 = sub_2749FADB4();
    if (!v2)
    {
      atomic_store(v1, &qword_28096AD00);
    }
  }
}

void sub_27483A6A8(uint64_t a1)
{
  if (!qword_28096AD08)
  {
    type metadata accessor for PopoverModel(255);
    sub_27483A3AC(&qword_28096ACD0, type metadata accessor for PopoverModel, &protocol conformance descriptor for PopoverModel);
    v1 = sub_2749FADB4();
    if (!v2)
    {
      atomic_store(v1, &qword_28096AD08);
    }
  }
}

void sub_27483A73C(uint64_t a1)
{
  if (!qword_28096D830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DDE0, &qword_274A195A0);
    v1 = sub_2749FAAB4();
    if (!v2)
    {
      atomic_store(v1, &qword_28096D830);
    }
  }
}

void sub_27483ABB4(uint64_t a1)
{
  sub_27483A580(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ShortcutsLibraryItem(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_27483AC5C()
{
  result = qword_28096AD60;
  if (!qword_28096AD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AD48, &qword_274A19640);
    sub_27483AF4C(&qword_28096AD68, &qword_28096AD40, &qword_274A19638, sub_27483AD14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AD60);
  }

  return result;
}

unint64_t sub_27483AD14()
{
  result = qword_28096AD70;
  if (!qword_28096AD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AD78, &qword_274A19650);
    sub_27483ADA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AD70);
  }

  return result;
}

unint64_t sub_27483ADA0()
{
  result = qword_28096AD80;
  if (!qword_28096AD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AD88, &qword_274A19658);
    sub_27483A3AC(&qword_28159E800, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096AD80);
  }

  return result;
}

uint64_t sub_27483AE54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_27483AEB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_27483AF08()
{
  result = qword_28096BB10;
  if (!qword_28096BB10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28096BB10);
  }

  return result;
}

uint64_t sub_27483AF4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27483AFC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NameIconView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for NameIconView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = (v2 + v1[7]);
  type metadata accessor for ShortcutsLibraryItem.ItemType(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:

      goto LABEL_15;
    case 2u:
      sub_2749F97C4();
      OUTLINED_FUNCTION_1_2();
      (*(v4 + 8))(v3);
      goto LABEL_15;
    case 3u:
      type metadata accessor for LibrarySectionOptions.Header(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        sub_2749F9514();
        OUTLINED_FUNCTION_1_2();
        (*(v6 + 8))(v3);
      }

      else
      {
        if (EnumCaseMultiPayload != 1)
        {
          if (EnumCaseMultiPayload)
          {
            goto LABEL_10;
          }
        }
      }

LABEL_10:
      v7 = type metadata accessor for LibrarySectionOptions(0);

      v8 = v7[7];
      type metadata accessor for LibrarySectionOptions.SectionType(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 == 1)
      {
        sub_2749F9514();
        OUTLINED_FUNCTION_1_2();
        (*(v10 + 8))(v3 + v8);
      }

      else if (!v9)
      {
      }

      sub_27472F124(*(v3 + v7[8]), *(v3 + v7[8] + 8));

      v11 = v7[10];
      sub_2749F9164();
      OUTLINED_FUNCTION_1_2();
      (*(v12 + 8))(v3 + v11);
LABEL_15:
      type metadata accessor for ShortcutsLibraryItem(0);

      v13 = v1[9];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2749FAA94();
        OUTLINED_FUNCTION_1_2();
        (*(v14 + 8))(v2 + v13);
      }

      else
      {
      }

      v15 = v1[10];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D770, &qword_274A1C800);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = sub_2749FB924();
        if (!__swift_getEnumTagSinglePayload(v2 + v15, 1, v16))
        {
          (*(*(v16 - 8) + 8))(v2 + v15, v16);
        }
      }

      else
      {
      }

      return MEMORY[0x2821FE8E8](v0);
    default:
      goto LABEL_15;
  }
}

uint64_t sub_27483B3C8()
{
  v0 = *(type metadata accessor for NameIconView(0) - 8);
  v1 = OUTLINED_FUNCTION_51((*(v0 + 80) + 16) & ~*(v0 + 80));
  return sub_2748395FC(v1, v2);
}

unint64_t sub_27483B428()
{
  result = qword_28096ADF8;
  if (!qword_28096ADF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AD38, &qword_274A19630);
    sub_27472AB6C(&qword_28096AE00, &qword_28096AE08, &qword_274A19760, MEMORY[0x277CE11A8]);
    sub_27472AB6C(&qword_28159E640, &unk_28096E8F0, &qword_274A1EB10, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096ADF8);
  }

  return result;
}

uint64_t DynamicTypeSize.snippetEnvironmentDynamicTypeSize.getter()
{
  v1 = sub_2749FAE14();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  (*(v3 + 16))(v6 - v5, v0, v1);
  v7 = OUTLINED_FUNCTION_32_1();
  v9 = v8(v7);
  v10 = 0;
  if (v9 != *MEMORY[0x277CDF9F8])
  {
    if (v9 == *MEMORY[0x277CDF9E0])
    {
      return 1;
    }

    else if (v9 == *MEMORY[0x277CDF9E8])
    {
      return 2;
    }

    else if (v9 == *MEMORY[0x277CDF9D8])
    {
      return 3;
    }

    else if (v9 == *MEMORY[0x277CDF9F0])
    {
      return 4;
    }

    else if (v9 == *MEMORY[0x277CDFA00])
    {
      return 5;
    }

    else if (v9 == *MEMORY[0x277CDFA10])
    {
      return 6;
    }

    else if (v9 == *MEMORY[0x277CDF988])
    {
      return 7;
    }

    else if (v9 == *MEMORY[0x277CDF998])
    {
      return 8;
    }

    else if (v9 == *MEMORY[0x277CDF9A8])
    {
      return 9;
    }

    else if (v9 == *MEMORY[0x277CDF9B8])
    {
      return 10;
    }

    else if (v9 == *MEMORY[0x277CDF9D0])
    {
      return 11;
    }

    else
    {
      v11 = OUTLINED_FUNCTION_32_1();
      v12(v11);
      return -1;
    }
  }

  return v10;
}

uint64_t sub_27483B804(uint64_t (*a1)(void), _DWORD *a2, _DWORD *a3)
{
  v6 = a1(0);
  OUTLINED_FUNCTION_43();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  (*(v8 + 16))(&v17 - v10, v3, v6);
  v11 = OUTLINED_FUNCTION_32_1();
  v13 = v12(v11);
  result = 0;
  if (v13 != *a2)
  {
    if (v13 == *a3)
    {
      return 1;
    }

    else
    {
      v15 = OUTLINED_FUNCTION_32_1();
      v16(v15);
      return -1;
    }
  }

  return result;
}

id static LNSnippetEnvironment.emptyEnvironmentWithWidth(width:)(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F960, &qword_274A15130);
  OUTLINED_FUNCTION_34(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  v6 = sub_2749F91B4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = objc_allocWithZone(MEMORY[0x277D23C88]);
  return sub_27483C520(v5, -1, -1, -1, -1, -1, -1, 0, a1, 1.79769313e308, 1.0, 0, 0, 0);
}

id UITraitCollection.snippetEnviornmentWithSize(_:)(double a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F960, &qword_274A15130);
  OUTLINED_FUNCTION_34(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  sub_2749F91A4();
  v9 = sub_2749F91B4();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = [v2 preferredContentSizeCategory];
  v11 = sub_27483BBE0(v10);

  [v2 legibilityWeight];
  OUTLINED_FUNCTION_7_15();
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  [v2 layoutDirection];
  OUTLINED_FUNCTION_7_15();
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = [v2 userInterfaceStyle];
  if (v18 == 2)
  {
    v19 = 1;
  }

  else
  {
    v19 = -1;
  }

  if (v18 == 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  [v2 accessibilityContrast];
  OUTLINED_FUNCTION_7_15();
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  [v2 displayScale];
  v25 = v24;
  [v2 displayGamut];
  OUTLINED_FUNCTION_7_15();
  if (v27)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_allocWithZone(MEMORY[0x277D23C88]);
  return sub_27483C520(v8, v11, v14, v17, v20, v23, v28, 0, a1, a2, v25, 0, 0, 0);
}

uint64_t sub_27483BBE0(uint64_t a1)
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  v4 = v4 && v1 == v3;
  if (v4)
  {

    return 0;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
    return 0;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  if (v4 && v1 == v5)
  {

    return 1;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
    return 1;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  if (v4 && v1 == v7)
  {

    return 2;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
    return 2;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  if (v4 && v1 == v9)
  {

    return 3;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
    return 3;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  if (v4 && v1 == v11)
  {

    return 4;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
    return 4;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  if (v4 && v1 == v13)
  {

    return 5;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
    return 5;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  if (v4 && v1 == v15)
  {

    return 6;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
    return 6;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  if (v4 && v1 == v17)
  {

    return 7;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
    return 7;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  if (v4 && v1 == v19)
  {

    return 8;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
    return 8;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  if (v4 && v1 == v21)
  {

    return 9;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
    return 9;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  if (v4 && v1 == v23)
  {

    return 10;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
    return 10;
  }

  v25 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v27 = v26;
  if (v25 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v27 == v28)
  {

    return 11;
  }

  else
  {
    v30 = sub_2749FDCC4();

    if (v30)
    {
      return 11;
    }

    else
    {
      return -1;
    }
  }
}

id sub_27483BFCC(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = UITraitCollection.snippetEnviornmentWithSize(_:)(a2, a3);

  return v6;
}

id EnvironmentValues.snippetEnviornmentWithSize(_:)(double a1, double a2)
{
  sub_2749FAB54();
  OUTLINED_FUNCTION_43();
  v63 = v5;
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v62 = v7 - v6;
  sub_2749FB614();
  OUTLINED_FUNCTION_43();
  v60 = v9;
  v61 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v59 = v11 - v10;
  sub_2749FAA94();
  OUTLINED_FUNCTION_43();
  v57 = v13;
  v58 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v56 = sub_2749FAE34();
  OUTLINED_FUNCTION_43();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809695C8, &qword_274A14FB0);
  OUTLINED_FUNCTION_34(v23);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  v26 = &v53 - v25;
  v27 = sub_2749FAE14();
  OUTLINED_FUNCTION_43();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F960, &qword_274A15130);
  OUTLINED_FUNCTION_34(v34);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  v37 = &v53 - v36;
  sub_2749F91A4();
  v38 = sub_2749F91B4();
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
  sub_2749FB174();
  v55 = DynamicTypeSize.snippetEnvironmentDynamicTypeSize.getter();
  (*(v29 + 8))(v33, v27);
  sub_2749FB1C4();
  v39 = sub_2749FAF44();
  if (__swift_getEnumTagSinglePayload(v26, 1, v39) == 1)
  {
    sub_27483C668(v26);
    v54 = -1;
  }

  else
  {
    v54 = LegibilityWeight.snippetEnvironmentLegibilityWeight.getter();
    (*(*(v39 - 8) + 8))(v26, v39);
  }

  sub_2749FB1A4();
  v40 = LayoutDirection.snippetEnvironmentLayoutDirection.getter();
  (*(v18 + 8))(v22, v56);
  sub_2749FB0B4();
  v41 = ColorScheme.snippetEnvironmentColorScheme.getter();
  (*(v57 + 8))(v16, v58);
  v42 = v59;
  sub_2749FB2A4();
  v43 = ColorSchemeContrast.snippetEnvironmentColorSchemeContrast.getter();
  (*(v60 + 8))(v42, v61);
  sub_2749FB114();
  v45 = v44;
  v46 = v62;
  sub_2749FB104();
  v47 = DisplayGamut.snippetEnvironmentDisplayGamut.getter();
  (*(v63 + 8))(v46, v64);
  LOBYTE(v46) = sub_2749FB394();
  v48 = sub_2749FB304();
  v49 = sub_2749FB314();
  v50 = sub_2749FB364();
  v51 = objc_allocWithZone(MEMORY[0x277D23C88]);
  return sub_27483C520(v37, v55, v54, v40, v41, v43, v47, v46 & 1, a1, a2, v45, v48 & 1, v49 & 1, v50 & 1);
}

id sub_27483C520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, char a12, char a13, char a14)
{
  v15 = v14;
  v23 = sub_2749F91B4();
  v24 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v23) != 1)
  {
    v24 = sub_2749F9184();
    (*(*(v23 - 8) + 8))(a1, v23);
  }

  BYTE3(v27) = a14 & 1;
  BYTE2(v27) = a13 & 1;
  BYTE1(v27) = a12 & 1;
  LOBYTE(v27) = a8 & 1;
  v25 = [v15 initWithSize:v24 locale:a2 dynamicTypeSize:a3 legibilityWeight:a4 layoutDirection:a5 colorScheme:a6 colorSchemeContrast:a9 displayScale:a10 displayGamut:a11 accessibilityDifferentiateWithoutColor:a7 accessibilityInvertColors:v27 accessibilityReduceMotion:? accessibilityReduceTransparency:?];

  return v25;
}

uint64_t sub_27483C668(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809695C8, &qword_274A14FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27483C6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_2749FDCC4(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_2749FDCC4();
    }
  }

  return result;
}

uint64_t sub_27483C770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2749FCE24();

  return sub_2749FCE24();
}

uint64_t sub_27483C7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2749FDDF4();
  sub_2749FCE24();
  sub_2749FCE24();
  return sub_2749FDE44();
}

uint64_t sub_27483C848(uint64_t a1)
{
  sub_2749FDDF4();
  sub_2749FCE24();
  sub_2749FCE24();
  return sub_2749FDE44();
}

uint64_t sub_27483C8C8()
{
  v1 = v0;
  v2 = sub_2749F9444();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  type metadata accessor for WFDrawerViewController.Item(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = (v11 - v10);
  sub_27484DD24(v1, v11 - v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = *v12;

      break;
    case 2u:
      v13 = 0xD000000000000012;
      break;
    case 3u:
      v13 = 0xD000000000000012;
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B148, &unk_274A19C70);

      (*(v4 + 32))(v8, v12, v2);
      v13 = sub_2749F9414();
      v14 = OUTLINED_FUNCTION_32_1();
      v15(v14);
      break;
  }

  return v13;
}

uint64_t sub_27483CA90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27483C8C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_27483CAB8()
{
  OUTLINED_FUNCTION_48();
  v2 = v0[6];
  if (!v2)
  {
    goto LABEL_27;
  }

  v3 = v1[6];
  if (!v3)
  {
    goto LABEL_27;
  }

  v4 = v0;
  v5 = *v0;
  v6 = v4[5];
  v7 = *v1;
  v8 = *(v1 + 32);
  v9 = v1[5];
  if (*(v4 + 32))
  {
    v10 = v1[1];
    v11 = v1[2];
    v12 = v1[3];
    if (*(v4 + 32) == 1)
    {
      if (v8 != 1)
      {
        goto LABEL_27;
      }

      v13 = v4[2];
      v14 = v4[3];
      v15 = v5 == v7 && v4[1] == v10;
      if (!v15 && (sub_2749FDCC4() & 1) == 0)
      {
        goto LABEL_27;
      }

      v16 = v13 == v11 && v14 == v12;
      if (!v16 && (sub_2749FDCC4() & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    if (v8 == 2 && !(v10 | v7 | v11 | v12))
    {
      goto LABEL_29;
    }

LABEL_27:
    OUTLINED_FUNCTION_46();
    return;
  }

  if (*(v1 + 32))
  {
    goto LABEL_27;
  }

  v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v19 = v18;
  if (v17 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v19 == v20)
  {

    goto LABEL_29;
  }

  v22 = sub_2749FDCC4();

  if ((v22 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_29:
  if (v6 == v9 && v2 == v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_46();

  sub_2749FDCC4();
}

void sub_27483CC58()
{
  OUTLINED_FUNCTION_48();
  if (*(v0 + 48))
  {
    v1 = *(v0 + 32);
    MEMORY[0x277C5FB60](1);
    if (v1)
    {
      if (v1 == 1)
      {
        MEMORY[0x277C5FB60](1);
        sub_2749FCE24();
        sub_2749FCE24();
      }

      else
      {
        MEMORY[0x277C5FB60](2);
      }
    }

    else
    {
      MEMORY[0x277C5FB60](0);
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      sub_2749FCE24();
    }

    OUTLINED_FUNCTION_46();

    sub_2749FCE24();
  }

  else
  {
    MEMORY[0x277C5FB60](0);
    OUTLINED_FUNCTION_46();
  }
}

uint64_t sub_27483CD68()
{
  sub_2749FDDF4();
  sub_27483CC58();
  return sub_2749FDE44();
}

BOOL sub_27483CDA8(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  if (!*(a1 + 32))
  {
    if (!a2[2].i8[0])
    {
      v10 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v12 = v11;
      if (v10 != _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() || v12 != v13)
      {
        v15 = sub_2749FDCC4();

        return v15 & 1;
      }

      return 1;
    }

    return 0;
  }

  if (*(a1 + 32) == 1)
  {
    if (a2[2].i8[0] == 1)
    {
      v4 = a1[2];
      v5 = a1[3];
      v6 = a2[1].i64[0];
      v7 = a2[1].i64[1];
      v8 = a2->i64[0] == v3 && a1[1] == a2->i64[1];
      if (v8 || (sub_2749FDCC4() & 1) != 0)
      {
        v9 = v4 == v6 && v5 == v7;
        if (v9 || (sub_2749FDCC4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a2[2].i8[0] != 2)
  {
    return 0;
  }

  v17 = vorrq_s8(*a2, a2[1]);
  return !*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
}

uint64_t sub_27483CEEC(uint64_t a1)
{
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      MEMORY[0x277C5FB60](1);
      sub_2749FCE24();

      return sub_2749FCE24();
    }

    else
    {
      return MEMORY[0x277C5FB60](2);
    }
  }

  else
  {
    MEMORY[0x277C5FB60](0);
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    sub_2749FCE24();
  }
}

uint64_t sub_27483CFE4()
{
  sub_2749FDDF4();
  sub_27483CEEC(v1);
  return sub_2749FDE44();
}

uint64_t sub_27483D024@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_27483D038(uint64_t a1)
{
  sub_2749FDDF4();
  sub_27483CC58();
  return sub_2749FDE44();
}

uint64_t sub_27483D080(uint64_t a1)
{
  sub_2749FDDF4();
  sub_27483CEEC(v2);
  return sub_2749FDE44();
}

void sub_27483D0C0(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_2749FCA74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2749FCAA4();
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_2749FCAC4();
  v79 = *(v82 - 8);
  v11 = MEMORY[0x28223BE20](v82);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v17 = v69 - v16;
  v18 = &v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode];
  v19 = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode + 48];
  v20 = a1[6];
  if (!v20)
  {
    if (!v19)
    {
      return;
    }

    goto LABEL_30;
  }

  if (!v19)
  {
    goto LABEL_30;
  }

  v22 = *v18;
  v21 = v18[1];
  v14 = v18[2];
  v15 = v18[3];
  v24 = v18[4];
  v23 = v18[5];
  v25 = a1[5];
  if (!*(a1 + 32))
  {
    if (!v24)
    {
      v72 = a1[5];
      v73 = v24;
      v76 = v21;
      v77 = v14;
      v78 = v15;
      v74 = v23;
      v35 = v22;
      v70 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v71 = v36;
      v75 = v35;
      if (v70 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v71 == v37)
      {
        sub_27484DF28(v75, v76, v77, v78, 0);

        goto LABEL_43;
      }

      v69[1] = v37;
      LODWORD(v70) = sub_2749FDCC4();
      sub_27484DF28(v75, v76, v77, v78, 0);

      if (v70)
      {
        goto LABEL_43;
      }

      sub_27484E230(v75, v76, v77, v78, v73, v74, v19);
    }

    goto LABEL_30;
  }

  if (*(a1 + 32) != 1)
  {
    if (v24 == 2 && (v21 | v22 | v14 | v15) == 0)
    {
      v72 = a1[5];
      v73 = v24;
      v75 = v22;
      v76 = v21;
      v77 = v14;
      v78 = v15;
      v74 = v23;
      v34 = 0;
      v33 = 0;
      v14 = 0;
      v15 = 0;
      v59 = 2;
      goto LABEL_42;
    }

    goto LABEL_30;
  }

  if (v24 != 1)
  {
    goto LABEL_30;
  }

  v26 = a1[2];
  v27 = a1[3];
  v28 = *a1 == v22 && a1[1] == v21;
  v73 = v24;
  v74 = v23;
  v77 = v14;
  v78 = v15;
  v75 = v22;
  v76 = v21;
  if (!v28)
  {
    v29 = v25;
    v70 = v27;
    v71 = v26;
    v30 = sub_2749FDCC4();
    v27 = v70;
    v26 = v71;
    v25 = v29;
    v22 = v75;
    v21 = v76;
    v14 = v77;
    v15 = v78;
    if ((v30 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v72 = v25;
  if (v26 == v14 && v27 == v15)
  {
    v34 = v22;
    v33 = v21;
    goto LABEL_39;
  }

  v32 = sub_2749FDCC4();
  v33 = v76;
  v14 = v77;
  v15 = v78;
  if ((v32 & 1) == 0)
  {
LABEL_30:
    v78 = v5;
    v40 = OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tokenBarVisible;
    v41 = v2[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tokenBarVisible];
    v42 = [*(*&v2[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView] + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar) searchTextField];
    v43 = [v42 tokens];

    sub_27471CF08(0, &unk_28096B150, 0x277D75A00);
    v44 = sub_2749FCF84();

    v45 = sub_27472D918(v44);

    if ((v41 ^ (v45 != 0)))
    {

      sub_274840F14(0);
    }

    else
    {
      v46 = v2[v40];
      v2[v40] = v46 ^ 1;
      if (v46)
      {
        v47 = objc_opt_self();
        v48 = swift_allocObject();
        *(v48 + 16) = v2;
        v87 = sub_27484E220;
        v88 = v48;
        aBlock = MEMORY[0x277D85DD0];
        v84 = 1107296256;
        v85 = sub_274760264;
        v86 = &block_descriptor_222;
        v49 = _Block_copy(&aBlock);
        v50 = v2;

        v51 = swift_allocObject();
        *(v51 + 16) = v50;
        v87 = sub_27484E228;
        v88 = v51;
        aBlock = MEMORY[0x277D85DD0];
        v84 = 1107296256;
        v85 = sub_27480D7B8;
        v86 = &block_descriptor_228;
        v52 = _Block_copy(&aBlock);
        v53 = v50;

        [v47 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
        _Block_release(v52);
        _Block_release(v49);
      }

      else
      {
        sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
        v77 = sub_2749FD404();
        sub_2749FCAB4();
        sub_2749FCB14();
        v76 = v17;
        v79 = *(v79 + 8);
        (v79)(v13, v82);
        v54 = swift_allocObject();
        *(v54 + 16) = v2;
        v87 = sub_27484E218;
        v88 = v54;
        aBlock = MEMORY[0x277D85DD0];
        v84 = 1107296256;
        v85 = sub_274760264;
        v86 = &block_descriptor_216;
        v55 = _Block_copy(&aBlock);
        v56 = v2;

        sub_2749FCA94();
        aBlock = MEMORY[0x277D84F90];
        sub_27484DCA4(&qword_28159E580, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
        sub_27472AB6C(&qword_28159E530, &unk_28096DB60, &qword_274A0F640, MEMORY[0x277D83970]);
        sub_2749FD7B4();
        v58 = v76;
        v57 = v77;
        MEMORY[0x277C5F120](v76, v10, v7, v55);
        _Block_release(v55);

        (*(v78 + 8))(v7, v4);
        (*(v80 + 8))(v10, v81);
        (v79)(v58, v82);
      }

      sub_274840F14(1);
    }

    return;
  }

  v34 = v75;
LABEL_39:
  v59 = 1;
LABEL_42:
  sub_27484DF28(v34, v33, v14, v15, v59);

LABEL_43:
  v60 = v74;
  if (v72 != v74 || v20 != v19)
  {
    v62 = v74;
    v63 = sub_2749FDCC4();
    sub_27484E230(v75, v76, v77, v78, v73, v62, v19);
    if (v63)
    {
      return;
    }

    goto LABEL_30;
  }

  v64 = v75;
  v65 = v76;
  v66 = v77;
  v67 = v78;
  v68 = v73;

  sub_27484E230(v64, v65, v66, v67, v68, v60, v19);
}

void sub_27483D9BC(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tokenScrollView];
  CGAffineTransformMakeScale(&v8, 0.98, 0.98);
  [v2 setTransform_];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *&v8.tx = sub_27484E278;
  *&v8.ty = v4;
  *&v8.a = MEMORY[0x277D85DD0];
  *&v8.b = 1107296256;
  *&v8.c = sub_274760264;
  *&v8.d = &block_descriptor_244;
  v5 = _Block_copy(&v8);
  v6 = a1;

  *&v8.tx = CGSizeMake;
  v8.ty = 0.0;
  *&v8.a = MEMORY[0x277D85DD0];
  *&v8.b = 1107296256;
  *&v8.c = sub_27480D7B8;
  *&v8.d = &block_descriptor_247;
  v7 = _Block_copy(&v8);
  [v3 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v7);
  _Block_release(v5);
}

void sub_27483DB78(void *a1)
{
  v2 = objc_opt_self();
  sub_2749FD314();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_27484E280;
  *(v10 + 24) = v9;
  v16[4] = sub_2747B6980;
  v16[5] = v10;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_274963064;
  v16[3] = &block_descriptor_257;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_27483DD28(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tokenScrollView);
  [v1 setAlpha_];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v6[0] = *MEMORY[0x277CBF2C0];
  v6[1] = v2;
  v6[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v1 setTransform_];
  v3 = [v1 layer];
  v4 = sub_2749F9884();
  v5 = sub_2749FCD64();
  [v3 setValue:v4 forKeyPath:v5];
}

void sub_27483DE0C(void *a1)
{
  v2 = objc_opt_self();
  sub_2749FD314();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_27484E270;
  *(v10 + 24) = v9;
  v16[4] = sub_2747B6980;
  v16[5] = v10;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_274963064;
  v16[3] = &block_descriptor_238;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_27483DFBC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tokenScrollView);
  [v1 setAlpha_];
  CGAffineTransformMakeScale(&v5, 0.98, 0.98);
  [v1 setTransform_];
  v2 = [v1 layer];
  v3 = sub_2749F9884();
  v4 = sub_2749FCD64();
  [v2 setValue:v3 forKeyPath:v4];
}

id sub_27483E0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tokenScrollView);
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v6[0] = *MEMORY[0x277CBF2C0];
  v6[1] = v4;
  v6[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v3 setTransform_];
}

uint64_t sub_27483E0FC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode;
  v4 = *(v1 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode + 16);
  v8[0] = *(v1 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode);
  v8[1] = v4;
  v8[2] = *(v1 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode + 32);
  v9 = *(v1 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode + 48);
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = *(a1 + 48);
  sub_27484DEF0(a1, v7);
  sub_27483D0C0(v8);
  sub_27484DFE8(v8);
  return sub_27484DFE8(a1);
}

char *sub_27483E180(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B180, &qword_274A19C80);
  OUTLINED_FUNCTION_34(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B188, &qword_274A19C88);
  OUTLINED_FUNCTION_43();
  v10 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tokenBarVisible) = 1;
  v14 = v2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0;
  v15 = OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tokenScrollView;
  type metadata accessor for WFTouchCancellingScrollView();
  *(v2 + v15) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_headerSeparator;
  *(v2 + v16) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v17 = OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView;
  type metadata accessor for WFTouchCancellingTableView();
  *(v2 + v17) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_contentContainer;
  *(v2 + v18) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_dataSourceObservation) = 0;
  v19 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_sections) = MEMORY[0x277D84F90];
  v20 = v2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_browseModeContentOffsetCache;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 1;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_visibleCategories) = v19;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_dataSource) = a1;
  if (a2)
  {
    *(v2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView) = a2;
    *(v2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_internallyManagesSearchBarLayout) = 0;
  }

  else
  {
    v21 = *MEMORY[0x277CBF3A0];
    v22 = *(MEMORY[0x277CBF3A0] + 8);
    v23 = *(MEMORY[0x277CBF3A0] + 16);
    v24 = *(MEMORY[0x277CBF3A0] + 24);
    v25 = objc_allocWithZone(type metadata accessor for WFDrawerSearchControlsView());

    v26 = [v25 initWithFrame_];
    *(v2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView) = v26;
    *(v2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_internallyManagesSearchBarLayout) = 1;
  }

  v27 = type metadata accessor for WFDrawerViewController();
  v46 = v2;
  v47 = v27;
  v42 = a2;
  OUTLINED_FUNCTION_24();
  v30 = objc_msgSendSuper2(v28, v29);
  sub_2749F9724();
  sub_27484DCA4(&unk_28096B190, MEMORY[0x277D7BF00], MEMORY[0x277D7BEF8]);
  v31 = v30;
  v45 = sub_2749FA874();
  sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
  v32 = sub_2749FD404();
  v44 = v32;
  v33 = sub_2749FD3E4();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v33);
  sub_2749FA8A4();
  sub_27477ACFC();
  sub_2749FA954();
  sub_27472ECBC(v8, &qword_28096B180, &qword_274A19C80);

  OUTLINED_FUNCTION_86();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_27472AB6C(&qword_28096B1A0, &qword_28096B188, &qword_274A19C88, MEMORY[0x277CBCD60]);
  v34 = v43;
  v35 = sub_2749FA974();

  (*(v10 + 8))(v13, v34);
  *&v31[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_dataSourceObservation] = v35;

  sub_274840F14(0);
  v36 = sub_2749F9664();
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = (v36 + 32);
    do
    {
      v39 = *v38++;
      v40 = v39;
      sub_27483F99C(v40, 0, 1, 0);

      --v37;
    }

    while (v37);
  }

  sub_27483F6BC();

  return v31;
}

void sub_27483E6B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_274840F14(0);
  }
}

void sub_27483E70C()
{
  *(v0 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tokenBarVisible) = 1;
  v1 = v0 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  v2 = OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tokenScrollView;
  type metadata accessor for WFTouchCancellingScrollView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_headerSeparator;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView;
  type metadata accessor for WFTouchCancellingTableView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_contentContainer;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_dataSourceObservation) = 0;
  v6 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_sections) = MEMORY[0x277D84F90];
  v7 = v0 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_browseModeContentOffsetCache;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_visibleCategories) = v6;
  swift_unknownObjectWeakInit();
  sub_2749FDAE4();
  __break(1u);
}

id sub_27483E8B4(uint64_t a1)
{
  if (*&v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_dataSourceObservation])
  {

    sub_2749FA844();
  }

  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFDrawerViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_27483EA3C(uint64_t a1)
{
  v2 = v1;
  v69.receiver = v1;
  v69.super_class = type metadata accessor for WFDrawerViewController();
  objc_msgSendSuper2(&v69, sel_viewDidLoad);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_contentContainer];
    v6 = &selRef_setInterGroupSpacing_;
    [v3 addSubview_];

    v7 = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView];
    v66 = objc_opt_self();
    v8 = [v66 clearColor];
    v9 = OUTLINED_FUNCTION_19_12();
    [v9 v10];

    v11 = objc_allocWithZone(MEMORY[0x277D75348]);
    v12 = sub_2747CA0C4(sub_27483F128, 0);
    v13 = OUTLINED_FUNCTION_19_12();
    [v13 v14];

    [v7 _setHeaderAndFooterViewsFloat_];
    [v7 setSectionHeaderTopPadding_];
    type metadata accessor for WFDrawerActionCell(0);
    swift_getObjCClassFromMetadata();
    OUTLINED_FUNCTION_54_6();
    v15 = sub_2749FCD64();
    v16 = OUTLINED_FUNCTION_19_12();
    [v16 v17];

    type metadata accessor for WFDrawerAppCell();
    swift_getObjCClassFromMetadata();
    v18 = OUTLINED_FUNCTION_24_11();
    v19 = OUTLINED_FUNCTION_19_12();
    [v19 v20];

    type metadata accessor for WFDrawerSwitchCell();
    swift_getObjCClassFromMetadata();
    v21 = OUTLINED_FUNCTION_37_8();
    v22 = OUTLINED_FUNCTION_19_12();
    [v22 v23];

    type metadata accessor for WFDrawerHeaderView();
    swift_getObjCClassFromMetadata();
    OUTLINED_FUNCTION_52_4();
    v24 = sub_2749FCD64();
    v25 = OUTLINED_FUNCTION_19_12();
    [v25 v26];

    [v7 setDataSource_];
    [v7 setDelegate_];
    [v5 addSubview_];
    v68 = v2;
    v27 = *&v2[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tokenScrollView];
    [v27 setShowsHorizontalScrollIndicator_];
    [v27 setClipsToBounds_];
    [v27 setDelaysContentTouches_];
    [v27 setCanCancelContentTouches_];
    v67 = v5;
    [v5 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274A15450;
    *(inited + 32) = v7;
    *(inited + 40) = v27;
    v29 = sub_27471CF08(0, &qword_280969480, 0x277CD9EA0);
    sub_2747B2790();
    sub_2747B2790();
    v30 = v7;
    v31 = v27;
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = v32;
      if ((inited & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x277C5F6D0](v33, inited);
      }

      else
      {
        v35 = *(inited + 32 + 8 * v33);
      }

      v36 = v35;
      v37 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v39 = sub_27480D818(v37, v38);
      sub_2749FD184();
      v40 = OUTLINED_FUNCTION_8_18();
      [v40 v41];

      sub_2749FD034();
      v42 = OUTLINED_FUNCTION_8_18();
      [v42 v43];

      sub_2749FD034();
      v44 = OUTLINED_FUNCTION_8_18();
      [v44 v45];

      sub_2749FCD64();
      v46 = OUTLINED_FUNCTION_8_18();
      [v46 v47];

      sub_2749FCD64();
      v48 = OUTLINED_FUNCTION_8_18();
      [v48 v49];

      v6 = [v36 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00, &qword_274A0FCC0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_274A0EF10;
      *(v50 + 56) = v29;
      *(v50 + 32) = v39;
      v51 = v39;
      sub_27480FF3C(v50, v6);

      v32 = 1;
      v33 = 1;
    }

    while ((v34 & 1) == 0);
    swift_setDeallocating();
    sub_2747A3418();
    v52 = *&v2[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_headerSeparator];
    v53 = [v66 separatorColor];
    [v52 setBackgroundColor_];

    [v67 addSubview_];
    v54 = *&v2[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView];
    v55 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
    v56 = *(v54 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar);
    sub_2749FCE14("DRAWER_SEARCH_BAR_PLACEHOLDER", 29);
    sub_2749FCE14("Search Actions", 14);
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
    }

    v57 = qword_28159E448;
    OUTLINED_FUNCTION_34_2();
    v58 = sub_2749FCD64();

    v59 = sub_2749FCD64();

    v60 = [v57 localizedStringForKey:v58 value:v59 table:0];

    v61 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v63 = v62;

    sub_27484DB24(v61, v63, v56, &selRef_setPlaceholder_);
    [*(v54 + v55) setDelegate_];
    if (v68[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_internallyManagesSearchBarLayout] != 1)
    {
      goto LABEL_12;
    }

    v64 = [v68 view];
    if (v64)
    {
      v65 = v64;
      [v64 addSubview_];

LABEL_12:
      sub_274840F14(0);
      sub_274845250();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_27483F128(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemGray4Color;
  if (v1 != 2)
  {
    v3 = &selRef_systemGray5Color;
  }

  v4 = [v2 *v3];

  return v4;
}

id sub_27483F1DC(uint64_t a1)
{
  v44.receiver = v1;
  v44.super_class = type metadata accessor for WFDrawerViewController();
  objc_msgSendSuper2(&v44, sel_viewWillLayoutSubviews);
  v2 = OUTLINED_FUNCTION_44_3();
  v3 = [v2 horizontalSizeClass];

  if (v3 == 2)
  {
    result = OUTLINED_FUNCTION_60_3();
    if (!result)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v5 = result;
    [result safeAreaInsets];
  }

  if (v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_internallyManagesSearchBarLayout] == 1)
  {
    v6 = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView];
    result = OUTLINED_FUNCTION_60_3();
    if (!result)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v7 = result;
    [result bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v45.origin.x = v9;
    v45.origin.y = v11;
    v45.size.width = v13;
    v45.size.height = v15;
    CGRectGetWidth(v45);
    OUTLINED_FUNCTION_43_2();
    CGSizeMake();
    [v6 setFrame_];
  }

  v16 = OUTLINED_FUNCTION_44_3();
  [v16 displayScale];

  v17 = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_contentContainer];
  result = OUTLINED_FUNCTION_60_3();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = result;
  [result bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v46.origin.x = v20;
  v46.origin.y = v22;
  v46.size.width = v24;
  v46.size.height = v26;
  CGRectGetWidth(v46);
  result = OUTLINED_FUNCTION_60_3();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = result;
  [result bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v47.origin.x = v29;
  v47.origin.y = v31;
  v47.size.width = v33;
  v47.size.height = v35;
  CGRectGetHeight(v47);
  OUTLINED_FUNCTION_43_2();
  CGSizeMake();
  [v17 setFrame_];
  if (v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tokenBarVisible] == 1)
  {
    v36 = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tokenScrollView];
    OUTLINED_FUNCTION_61_3([v1 traitCollection]);

    OUTLINED_FUNCTION_46_5();
    CGRectGetWidth(v48);
    v37 = OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_61_3(v37);

    CGSizeMake();
    [v36 setFrame_];
    v38 = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_headerSeparator];
    [v36 frame];
    CGRectGetMaxY(v49);
    v39 = OUTLINED_FUNCTION_44_3();
    [v39 displayScale];

    OUTLINED_FUNCTION_46_5();
    CGRectGetWidth(v50);
    v40 = OUTLINED_FUNCTION_44_3();
    [v40 displayScale];

    OUTLINED_FUNCTION_43_2();
    CGSizeMake();
    [v38 setFrame_];
    v41 = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView];
    [v36 frame];
    CGRectGetMaxY(v51);
    OUTLINED_FUNCTION_46_5();
    CGRectGetWidth(v52);
    OUTLINED_FUNCTION_46_5();
    CGRectGetHeight(v53);
    [v36 frame];
    CGRectGetMaxY(v54);
    OUTLINED_FUNCTION_43_2();
    CGSizeMake();
  }

  else
  {
    v42 = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_headerSeparator];
    OUTLINED_FUNCTION_61_3([v1 traitCollection]);

    [v17 bounds];
    CGRectGetWidth(v55);
    v43 = OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_61_3(v43);

    OUTLINED_FUNCTION_43_2();
    CGSizeMake();
    [v42 setFrame_];
    v41 = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView];
    OUTLINED_FUNCTION_46_5();
  }

  return [v41 setFrame_];
}

id sub_27483F6BC()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_visibleCategories;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = (v2 + 40);
    v5 = 0.0;
    do
    {
      v6 = *v4;
      v7 = *(v4 - 1);
      v8 = v6;
      [v8 intrinsicContentSize];
      [v8 setFrame_];
      [v8 frame];
      Width = CGRectGetWidth(v24);

      v5 = v5 + Width + 12.0;
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  v11 = *&v0[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tokenScrollView];
  CGSizeMake();
  [v11 setContentSize_];
  v12 = [v0 traitCollection];
  v13 = [v12 layoutDirection];

  if (v13 == 1)
  {
    v14 = *&v0[v1];
    v15 = *(v14 + 16);
    if (v15)
    {

      v16 = (v14 + 40);
      do
      {
        v17 = *v16;
        v18 = *(v16 - 1);
        v19 = v17;
        [v11 contentSize];
        v21 = v20;
        [v19 frame];
        v22 = v21 - CGRectGetMaxX(v25);
        [v19 frame];
        [v19 setFrame_];

        v16 += 2;
        --v15;
      }

      while (v15);
    }
  }

  return sub_27483F8CC();
}

id sub_27483F8CC()
{
  v1 = *&v0[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tokenScrollView];
  v2 = [v0 traitCollection];
  v3 = [v2 layoutDirection];

  if (v3 == 1)
  {
    [v1 contentSize];
    [v1 bounds];
    CGRectGetWidth(v8);
    CGSizeMake();
    v5 = 0.0;
  }

  else
  {
    v4 = *MEMORY[0x277CBF348];
    v5 = *(MEMORY[0x277CBF348] + 8);
  }

  return [v1 setContentOffset_];
}

void sub_27483F99C(void *a1, uint64_t a2, char a3, char a4)
{
  sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  v92 = v7;
  v93 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_1();
  v91 = v8;
  OUTLINED_FUNCTION_57_0();
  sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v89 = v10;
  v90 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_1();
  v88 = v11;
  OUTLINED_FUNCTION_57_0();
  v97 = sub_2749FCAC4();
  OUTLINED_FUNCTION_43();
  v87 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39();
  v85 = v14 - v15;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  v86 = v17;
  v18 = OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_visibleCategories;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  v100 = v4;
  v19 = *&v4[v18];
  v20 = *(v19 + 16);

  v21 = -1;
  v22 = 32;
  while (v21 - v20 != -1)
  {
    if (++v21 >= *(v19 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v23 = *(v19 + v22);
    v24 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v26 = v25;
    if (v24 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v26 == v27)
    {

LABEL_13:

      return;
    }

    v22 += 16;
    v29 = sub_2749FDCC4();

    if (v29)
    {
      goto LABEL_13;
    }
  }

  v30 = objc_allocWithZone(type metadata accessor for WFDrawerCategoryPillView());
  v31 = a1;
  v32 = sub_27484C3C0(v31);
  v33 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080824WFDrawerCategoryPillView_button;
  v34 = *&v32[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080824WFDrawerCategoryPillView_button];
  sub_27471CF08(0, &qword_28096D750, 0x277D750C8);
  OUTLINED_FUNCTION_86();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  *(v36 + 24) = v35;
  v37 = v31;
  v38 = v34;
  OUTLINED_FUNCTION_24();
  v43 = sub_2749FD644(v39, v40, v41, v42, 0, 0, 0, 0, 0, 0);
  v44 = OUTLINED_FUNCTION_24_1();
  [v44 v45];

  v46 = *&v100[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tokenScrollView];
  v47 = v32;
  [v46 addSubview_];
  if (a3)
  {
    OUTLINED_FUNCTION_57_2();
    v48 = v37;
    v49 = v47;
    sub_2748E3DDC(v50);
    v51 = *(*&v100[v18] + 16);
    sub_2748E3EE0(v51);
    v52 = *&v100[v18];
    *(v52 + 16) = v51 + 1;
    v53 = v52 + 16 * v51;
    *(v53 + 32) = v48;
    *(v53 + 40) = v49;
    *&v100[v18] = v52;
  }

  else
  {
    OUTLINED_FUNCTION_57_2();
    if (*(*&v100[v18] + 16) < a2)
    {
      goto LABEL_21;
    }

    if (a2 < 0)
    {
LABEL_22:
      __break(1u);
      return;
    }

    sub_2747D55A8(a2, a2, v37, v47);
  }

  swift_endAccess();
  if (a4)
  {
    OUTLINED_FUNCTION_86();
    *(swift_allocObject() + 16) = v100;
    v54 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v55 = v100;
    v58 = OUTLINED_FUNCTION_55_2(sub_27484E104, v56, v57);
    [v58 startAnimation];

    [v47 _removeAllAnimations_];
    [v47 setAlpha_];

    CGAffineTransformMakeScale(&aBlock, 0.9, 0.9);
    [v47 setTransform_];

    OUTLINED_FUNCTION_86();
    *(swift_allocObject() + 16) = v47;
    v59 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v60 = v47;
    v63 = OUTLINED_FUNCTION_55_2(sub_27484E128, v61, v62);
    [v63 startAnimationAfterDelay_];

    v64 = sub_27471CF08(0, &qword_280969480, 0x277CD9EA0);
    v65 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v67 = sub_27480D818(v65, v66);
    v68 = sub_2749F9884();
    OUTLINED_FUNCTION_33_8();

    v69 = sub_2749FD034();
    OUTLINED_FUNCTION_33_8();

    v70 = sub_2749FD034();
    OUTLINED_FUNCTION_33_8();

    v71 = sub_2749FCD64();
    [v67 setValue:v71 forKey:*MEMORY[0x277CDA4E8]];

    v72 = sub_2749FCD64();
    OUTLINED_FUNCTION_33_8();

    v73 = [*&v32[v33] layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00, &qword_274A0FCC0);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_274A0EF10;
    *(v74 + 56) = v64;
    *(v74 + 32) = v67;
    v101 = v67;
    v75 = OUTLINED_FUNCTION_34_2();
    sub_27480FF3C(v75, v76);

    sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
    v96 = sub_2749FD404();
    sub_2749FCAB4();
    sub_2749FCB14();
    v99 = *(v87 + 8);
    v99(v85, v97);
    OUTLINED_FUNCTION_86();
    v77 = swift_allocObject();
    *(v77 + 16) = v60;
    *&aBlock.tx = sub_27484E130;
    *&aBlock.ty = v77;
    *&aBlock.a = MEMORY[0x277D85DD0];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_274760264;
    *&aBlock.d = &block_descriptor_159;
    v78 = _Block_copy(&aBlock);
    v79 = v60;

    sub_2749FCA94();
    *&aBlock.a = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_5_23();
    sub_27484DCA4(v80, v81, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
    OUTLINED_FUNCTION_4_19();
    sub_27472AB6C(v82, v83, &qword_274A0F640, v84);
    sub_2749FD7B4();
    MEMORY[0x277C5F120](v86, v88, v91, v78);
    _Block_release(v78);

    (*(v92 + 8))(v91, v93);
    (*(v89 + 8))(v88, v90);
    v99(v86, v97);
  }

  else
  {
  }
}

void sub_2748402B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27471CF08(0, &unk_28096B150, 0x277D75A00);
  sub_27471CF08(0, &qword_280968030, 0x277D755B8);
  v4 = sub_2749FD444();
  v6 = sub_2748565B8(v4, v5);
  v7 = WFLocalizedDisplayNameForContentCategory();
  v8 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v10 = v9;

  v11 = sub_2748403C4(v6, v8, v10);
  [v11 setRepresentedObject_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_2748409F4(v11);
  }
}

id sub_2748403C4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2749FCD64();

  v5 = [swift_getObjCClassFromMetadata() tokenWithIcon:a1 text:v4];

  return v5;
}

id sub_27484043C(void *a1)
{
  [a1 setAlpha_];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [a1 setTransform_];
}

void sub_2748404A0(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v13 = sub_27484E138;
  v14 = v3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_274760264;
  v12 = &block_descriptor_165;
  v4 = _Block_copy(&v9);
  v5 = a1;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_27484E140;
  v14 = v6;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_27480D7B8;
  v12 = &block_descriptor_171_0;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v7);
  _Block_release(v4);
}

void sub_274840640(void *a1)
{
  v2 = objc_opt_self();
  sub_2749FD314();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_27484E148;
  *(v10 + 24) = v9;
  v16[4] = sub_27475D1DC;
  v16[5] = v10;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_274963064;
  v16[3] = &block_descriptor_180;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_2748407F0(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080824WFDrawerCategoryPillView_button) layer];
  v2 = sub_2749F9884();
  v3 = sub_2749FCD64();
  [v1 setValue:v2 forKeyPath:v3];
}

void sub_274840898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a3 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080824WFDrawerCategoryPillView_button) layer];
  [v3 setFilters_];
}

void sub_2748408FC(uint64_t a1)
{
  sub_27471CF08(0, &unk_28096B150, 0x277D75A00);
  sub_27471CF08(0, &qword_280968030, 0x277D755B8);
  v2 = sub_2749FD444();
  v4 = sub_2748565B8(v2, v3);
  v5 = WFLocalizedDisplayNameForContentCategory();
  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;

  v9 = sub_2748403C4(v4, v6, v8);
  [v9 setRepresentedObject_];
  sub_2748409F4(v9);
}

uint64_t sub_2748409F4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView);
  v4 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
  v5 = [*(v3 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar) searchTextField];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_274A11F70;
  *(v6 + 32) = a1;
  sub_27471CF08(0, &unk_28096B150, 0x277D75A00);
  v7 = a1;
  v8 = sub_2749FCF74();

  [v5 setTokens_];

  v9 = [*(v3 + v4) searchTextField];
  sub_2748205A0(0, 0xE000000000000000, v9);

  sub_2749585BC(1);
  sub_274840B74();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_274815140();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_274840B74()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView);
  v2 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
  v3 = sub_2748911FC(*(v1 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar));
  v5 = sub_274820578(v3, v4);

  if (v5)
  {
    v6 = [*(v1 + v2) searchTextField];
    v7 = [v6 tokens];

    sub_27471CF08(0, &unk_28096B150, 0x277D75A00);
    v8 = sub_2749FCF84();

    v9 = sub_27472D918(v8);

    if (!v9)
    {
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      sub_27483E0FC(&v41);
      return;
    }
  }

  v10 = [*(v1 + v2) searchTextField];
  v11 = [v10 tokens];

  sub_27471CF08(0, &unk_28096B150, 0x277D75A00);
  v12 = sub_2749FCF84();

  if (sub_27472D918(v12))
  {
    sub_2747B2790();
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x277C5F6D0](0, v12);
    }

    else
    {
      v13 = *(v12 + 32);
    }

    v14 = v13;

    if ([v14 representedObject])
    {
      sub_2749FD774();
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }

    v41 = v39;
    v42 = v40;
    if (*(&v40 + 1))
    {
      type metadata accessor for WFContentCategory(0);
      if (OUTLINED_FUNCTION_59_4(v20, v21, v22, v20, v23, v24))
      {

        v15 = v35;
        v25 = v35;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      sub_27472ECBC(&v41, &qword_28096D550, &unk_274A0FF50);
    }

    v26 = [v14 representedObject];
    if (v26)
    {
      sub_2749FD774();
      v26 = swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }

    v41 = v39;
    v42 = v40;
    if (*(&v40 + 1))
    {
      if (OUTLINED_FUNCTION_59_4(v26, v27, v28, &type metadata for WFDrawerViewController.App, v29, v30))
      {

        v15 = v35;
        v16 = v36;
        v17 = v37;
        v18 = v38;

        v19 = 1;
        goto LABEL_21;
      }
    }

    else
    {
      sub_27472ECBC(&v41, &qword_28096D550, &unk_274A0FF50);
    }

    sub_2749FDAE4();
    __break(1u);
    return;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 2;
LABEL_21:
  v31 = sub_2748911FC(*(v1 + v2));
  if (v32)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  v34 = 0xE000000000000000;
  if (v32)
  {
    v34 = v32;
  }

  *&v41 = v15;
  *(&v41 + 1) = v16;
  *&v42 = v17;
  *(&v42 + 1) = v18;
  *&v43 = v19;
  *(&v43 + 1) = v33;
  v44 = v34;
  sub_27483E0FC(&v41);
  sub_27484DF88(v15, v16, v17, v18, v19);
}

void sub_274840F14(int a1)
{
  v373 = sub_2749FCAC4();
  OUTLINED_FUNCTION_43();
  v365 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_39();
  v364 = v5 - v6;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15();
  v372 = v8;
  OUTLINED_FUNCTION_57_0();
  v9 = sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_1();
  v367 = v13;
  OUTLINED_FUNCTION_57_0();
  v14 = sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v368 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20_1();
  v366 = v17;
  OUTLINED_FUNCTION_57_0();
  sub_2749F9344();
  OUTLINED_FUNCTION_43();
  v395 = v18;
  v396 = v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_20_1();
  v391 = v20;
  OUTLINED_FUNCTION_57_0();
  sub_2749F9814();
  OUTLINED_FUNCTION_43();
  v387 = v22;
  v388 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_20_1();
  v390 = v23;
  OUTLINED_FUNCTION_57_0();
  v403 = sub_2749F9444();
  OUTLINED_FUNCTION_43();
  v393 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_20_1();
  v400 = v26;
  v27 = OUTLINED_FUNCTION_57_0();
  type metadata accessor for WFDrawerViewController.Item(v27);
  OUTLINED_FUNCTION_43();
  v401 = v29;
  v402 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_39();
  v404 = (v30 - v31);
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v32);
  v405 = &v359 - v33;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v34);
  v386 = (&v359 - v35);
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_15();
  v389 = v37;
  OUTLINED_FUNCTION_57_0();
  v38 = sub_2749FCA64();
  OUTLINED_FUNCTION_43();
  v399 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_39();
  v43 = v41 - v42;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_15();
  v397 = v45;
  OUTLINED_FUNCTION_57_0();
  v394 = sub_2749F9614();
  OUTLINED_FUNCTION_43();
  v392 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_39();
  v380 = v48 - v49;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v50);
  v383 = &v359 - v51;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v52);
  v54 = &v359 - v53;
  v55 = &v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode];
  v56 = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode + 16];
  v408 = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode];
  v409 = v56;
  v410 = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode + 32];
  v411 = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode + 48];
  v374 = a1;
  v370 = v11;
  v371 = v9;
  v369 = v14;
  v381 = v1;
  v375 = &v1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode];
  if (a1)
  {
    v57 = *v55;
    v398 = *(v55 + 1);
    v58 = *(v55 + 2);
    v384 = *(v55 + 3);
    v385 = v58;
    *(&v382 + 1) = *(v55 + 4);
    OUTLINED_FUNCTION_86();
    v59 = swift_allocObject();
    *(v59 + 16) = v1;
    objc_allocWithZone(MEMORY[0x277D75D40]);
    v60 = v1;
    sub_27484DEF0(&v408, &aBlock);
    v61 = sub_27480FE78(sub_27484E0BC, v59, 0.15, 1.0);
    [v61 startAnimation];

    if (v411)
    {
      *&v382 = *(&v409 + 1);
      v379 = v409;
      v62 = v408;
      LODWORD(v378) = v410;

      sub_27484DF28(v57, v398, v385, v384, SBYTE8(v382));
      sub_27484DF88(v62, *(&v62 + 1), v379, v382, v378);

      [*&v60[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView] contentOffset];
      v64 = v63;
      v66 = v65;
      v67 = [v60 view];
      if (!v67)
      {
        __break(1u);
        return;
      }

      v68 = v67;
      [v67 bounds];
      v70 = v69;
      v72 = v71;

      v73 = 0.0;
      if (v66 >= 0.0)
      {
        v73 = v66;
      }

      v74 = &v60[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_browseModeContentOffsetCache];
      *v74 = v64;
      v74[1] = v73;
      *(v74 + 2) = v70;
      *(v74 + 3) = v72;
      *(v74 + 32) = 0;
    }
  }

  else
  {
    sub_27484DEF0(&v408, &aBlock);
  }

  v75 = swift_allocObject();
  v378 = v75;
  *(v75 + 16) = 0;
  p_aBlock = (v75 + 16);
  OUTLINED_FUNCTION_86();
  v77 = swift_allocObject();
  v78 = MEMORY[0x277D84F90];
  v376 = v77;
  *(v77 + 16) = MEMORY[0x277D84F90];
  v377 = v77 + 16;
  v398 = v38;
  v363 = p_aBlock;
  if (!v411)
  {
    OUTLINED_FUNCTION_36_9();
    v85 = *(sub_2749F9714() + 16);
    if (!v85)
    {

      v405 = MEMORY[0x277D84F90];
LABEL_71:
      v182 = sub_2749F9654();
      v183 = *(v182 + 16);
      if (v183)
      {
        *&aBlock = v78;
        v184 = OUTLINED_FUNCTION_53_4();
        sub_27476D928(v184, v185, v186);
        v187 = aBlock;
        v404 = *(v399 + 16);
        OUTLINED_FUNCTION_71();
        v394 = v182;
        v189 = v182 + v188;
        v191 = *(v190 + 56);
        v399 = v190;
        v395 = (v190 - 8);
        v396 = v191;
        do
        {
          v192 = v397;
          (v404)(v397, v189, v38);
          v193 = sub_2749FCA44();
          v195 = v194;
          v196 = sub_2749FCA54();
          v198 = v197;
          (*v395)(v192, v38);
          *&aBlock = v187;
          v200 = v187[2];
          v199 = v187[3];
          v201 = v187;
          if (v200 >= v199 >> 1)
          {
            v203 = OUTLINED_FUNCTION_13_15(v199);
            sub_27476D928(v203, v200 + 1, 1);
            v201 = aBlock;
          }

          v201[2] = v200 + 1;
          v202 = &v201[4 * v200];
          v202[4] = v193;
          v202[5] = v195;
          v202[6] = v196;
          v202[7] = v198;
          v189 += v396;
          --v183;
          v38 = v398;
          v187 = v201;
        }

        while (v183);

        v78 = MEMORY[0x277D84F90];
      }

      else
      {

        v187 = MEMORY[0x277D84F90];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967960, &unk_274A0FB70);
      inited = swift_initStackObject();
      v205 = inited;
      *(inited + 16) = xmmword_274A0F620;
      v206 = *(v405 + 16);
      if (v206)
      {
        v397 = inited;
        v398 = v187;
        *&aBlock = v78;
        OUTLINED_FUNCTION_23_10();
        v208 = v207;
        sub_27476D8B0();
        v209 = aBlock;
        v404 = *(v393 + 16);
        OUTLINED_FUNCTION_71();
        v211 = v208 + v210;
        v399 = *(v212 + 56);
        v393 = v212;
        v213 = (v212 + 16);
        v214 = v389;
        v215 = v403;
        do
        {
          v216 = v400;
          (v404)(v400, v211, v215);
          v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B148, &unk_274A19C70);
          v218 = *(v217 + 48);
          v219 = *(v217 + 64);
          (*v213)(v214, v216, v215);
          *(v214 + v219) = MEMORY[0x277D84F90];
          *(v214 + v218) = 0;
          swift_storeEnumTagMultiPayload();
          *&aBlock = v209;
          v221 = *(v209 + 16);
          v220 = *(v209 + 24);
          if (v221 >= v220 >> 1)
          {
            OUTLINED_FUNCTION_13_15(v220);
            sub_27476D8B0();
            v209 = aBlock;
          }

          *(v209 + 16) = v221 + 1;
          OUTLINED_FUNCTION_31_0();
          sub_27484DDE4(v214, v209 + v222 + *(v223 + 72) * v221);
          v211 += v399;
          --v206;
        }

        while (v206);

        v205 = v397;
        v187 = v398;
      }

      else
      {

        v209 = MEMORY[0x277D84F90];
      }

      v205[4] = 0x6E6E69705F776B7ALL;
      v205[5] = 0xEA00000000006465;
      v205[7] = 0;
      v205[8] = 0;
      v205[6] = v209;
      v224 = sub_274843074(v187);

      v205[9] = 0x737070615F776B7ALL;
      v205[10] = 0xE800000000000000;
      v205[12] = 0;
      v205[13] = 0;
      v205[11] = v224;
      v225 = v377;
      sub_274782B78(v205);
      v226 = VCIsInternalBuild();
      v158 = v381;
      if (v226)
      {
        v227 = [objc_opt_self() systemShortcutsUserDefaults];
        v228 = [v227 BOOLForKey_];

        if ((v228 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B170, &qword_274A16A00);
          v229 = swift_allocObject();
          *(v229 + 16) = xmmword_274A0EF10;
          swift_storeEnumTagMultiPayload();
          sub_2748E3DC4(v230);
          v231 = *(*v225 + 16);
          sub_2748E3EC8(v231);
          v232 = *v225;
          *(v232 + 16) = v231 + 1;
          v233 = (v232 + 40 * v231);
          v233[4] = 0xD000000000000011;
          v233[5] = 0x8000000274A2F830;
          v233[7] = 0;
          v233[8] = 0;
          v233[6] = v229;
          *v225 = v232;
        }
      }

      goto LABEL_142;
    }

    v404 = *(v392 + 16);
    OUTLINED_FUNCTION_71();
    v392 = v94;
    v79 = v94 + v95;
    v97 = *(v96 + 56);
    v395 = p_aBlock;
    v396 = v97;
    v98 = (v96 - 8);
    v405 = MEMORY[0x277D84F90];
    while (1)
    {
      v99 = v394;
      (v404)(v54, v79, v394);
      v100 = sub_2749F9604();
      (*v98)(v54, v99);
      p_aBlock = *(v100 + 16);
      v78 = *(v405 + 16);
      v101 = p_aBlock + v78;
      if (__OFADD__(v78, p_aBlock))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v103 = v405;
      if (!isUniquelyReferenced_nonNull_native || v101 > *(v405 + 24) >> 1)
      {
        if (v78 <= v101)
        {
          v104 = p_aBlock + v78;
        }

        else
        {
          v104 = v78;
        }

        sub_274764694(isUniquelyReferenced_nonNull_native, v104, 1, v405);
        v103 = v105;
      }

      v106 = *(v100 + 16);
      v405 = v103;
      if (v106)
      {
        v88 = *(v103 + 16);
        if (((*(v103 + 24) >> 1) - v88) < p_aBlock)
        {
          goto LABEL_153;
        }

        swift_arrayInitWithCopy();

        if (p_aBlock)
        {
          v107 = *(v405 + 16);
          v108 = __OFADD__(v107, p_aBlock);
          v88 = p_aBlock + v107;
          if (v108)
          {
            goto LABEL_155;
          }

          *(v405 + 16) = v88;
        }
      }

      else
      {

        if (p_aBlock)
        {
          goto LABEL_152;
        }
      }

      v79 += v396;
      if (!--v85)
      {

        v78 = MEMORY[0x277D84F90];
        v38 = v398;
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    OUTLINED_FUNCTION_8(v88);
    sub_2747645C4();
    v161 = v356;
LABEL_130:
    v158 = v381;
    *(v161 + 16) = p_aBlock;
    v320 = (v161 + 40 * v79);
    v320[4] = v78 - 7;
    v320[5] = v85;
    v320[7] = 0;
    v320[8] = 0;
    v320[6] = v54;
    v159 = v390;
    goto LABEL_131;
  }

  v79 = *(&v410 + 1);
  v382 = v408;
  if (!v410)
  {
    OUTLINED_FUNCTION_36_9();
    *&v362 = v109;
    *(&v362 + 1) = v110;
    v112 = v111;
    sub_27484DF28(v111, v113, v109, v110, 0);
    v114 = v112;
    v397 = p_aBlock;
    v115 = sub_2749F96E4();
    v54 = *(v115 + 16);
    if (!v54)
    {

      p_aBlock = MEMORY[0x277D84F90];
LABEL_89:
      sub_274782B78(p_aBlock);
      OUTLINED_FUNCTION_34_2();
      OUTLINED_FUNCTION_35_8();
      sub_27484DF88(v234, v235, v236, v237, v238);
      OUTLINED_FUNCTION_34_2();
      OUTLINED_FUNCTION_35_8();
      sub_27484DF88(v239, v240, v241, v242, v243);
      v158 = v381;
      goto LABEL_142;
    }

    *&aBlock = v78;
    p_aBlock = &aBlock;
    sub_27476D908(0, v54, 0);
    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_18_14(v116);
    v384 = v118;
    v85 = v383;
    v379 = v54;
    v380 = v115;
    while (1)
    {
      v88 = *(v115 + 16);
      if (v117 >= v88)
      {
        goto LABEL_154;
      }

      v119 = OUTLINED_FUNCTION_22_12();
      v120(v119);
      v121 = sub_2749F95F4();
      if (v122)
      {
        v123 = v121;
      }

      else
      {
        v123 = 0;
      }

      v124 = 0xE000000000000000;
      if (v122)
      {
        v124 = v122;
      }

      v388 = v124;
      v389 = v123;
      v125 = sub_2749F9604();
      v126 = *(v125 + 16);
      if (v126)
      {
        v407[0] = v78;
        OUTLINED_FUNCTION_23_10();
        sub_27476D8B0();
        v127 = v407[0];
        OUTLINED_FUNCTION_31_0();
        v387 = v125;
        v129 = v125 + v128;
        v131 = *(v130 + 72);
        v398 = *(v130 + 16);
        v399 = v131;
        v132 = v405;
        do
        {
          v404 = v126;
          v133 = v400;
          v134 = v403;
          v135 = v127;
          v136 = v398;
          v398(v400, v129, v403);
          v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B148, &unk_274A19C70);
          v138 = *(v137 + 48);
          v139 = *(v137 + 64);
          v136(v132, v133, v134);
          v127 = v135;
          v140 = sub_2749F9704();
          (*v395)(v133, v134);
          *(v405 + v139) = v140;
          v132 = v405;
          *(v405 + v138) = 0;
          swift_storeEnumTagMultiPayload();
          v407[0] = v135;
          v142 = *(v135 + 16);
          v141 = *(v135 + 24);
          if (v142 >= v141 >> 1)
          {
            OUTLINED_FUNCTION_8(v141);
            OUTLINED_FUNCTION_38_8();
            sub_27476D8B0();
            v132 = v405;
            v127 = v407[0];
          }

          *(v127 + 16) = v142 + 1;
          OUTLINED_FUNCTION_31_0();
          sub_27484DDE4(v132, v127 + v143 + *(v144 + 72) * v142);
          v129 += v399;
          v126 = v404 - 1;
        }

        while (v404 != 1);

        v85 = v383;
        v54 = v379;
        v115 = v380;
      }

      else
      {
      }

      p_aBlock = v85;
      v79 = sub_2749F95F4();
      v146 = v145;
      if (v145)
      {

        p_aBlock = sub_2749FCE34();

        v147 = OUTLINED_FUNCTION_9_14();
        v148(v147);
        if (!p_aBlock)
        {

          v79 = 0;
          v146 = 0;
        }
      }

      else
      {
        v149 = OUTLINED_FUNCTION_9_14();
        v150(v149);
      }

      OUTLINED_FUNCTION_40_9();
      if (v152)
      {
        OUTLINED_FUNCTION_13_15(v151);
        OUTLINED_FUNCTION_38_8();
        sub_27476D908(v154, v155, v156);
        p_aBlock = aBlock;
      }

      OUTLINED_FUNCTION_29_10();
      *(v153 + 64) = v146;
      v78 = MEMORY[0x277D84F90];
      if (v117 == v54)
      {

        goto LABEL_89;
      }
    }
  }

  if (v410 == 1)
  {
    v359 = HIBYTE(v411) & 0xF;
    v360 = v411;
    v361 = *(&v410 + 1);
    *&v362 = v409;
    OUTLINED_FUNCTION_36_9();
    v81 = v80;
    sub_27484DF28(v82, v83, v84, v80, 1);

    *(&v362 + 1) = v81;

    v397 = p_aBlock;
    v85 = sub_2749F9654();
    v86 = 0;
    v87 = *(v85 + 16);
    v54 = (v399 + 16);
    v78 = v399 + 8;
    while (1)
    {
      if (v87 == v86)
      {

        v244 = *(&v382 + 1);

        sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
        v245 = sub_2749FD404();
        OUTLINED_FUNCTION_86();
        v246 = swift_allocObject();
        v247 = v381;
        *(v246 + 16) = v381;
        *&v414 = sub_27484E0B4;
        *(&v414 + 1) = v246;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        OUTLINED_FUNCTION_2_2();
        *&v413 = v248;
        *(&v413 + 1) = &block_descriptor_131;
        v249 = _Block_copy(&aBlock);
        v250 = v247;

        v251 = v366;
        sub_2749FCA94();
        *&aBlock = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_5_23();
        sub_27484DCA4(v252, v253, MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
        OUTLINED_FUNCTION_4_19();
        v257 = sub_27472AB6C(v254, v255, &qword_274A0F640, v256);
        v258 = v367;
        OUTLINED_FUNCTION_45_5(&aBlock, v259, v257);
        MEMORY[0x277C5F170](0, v251, v258, v249);
        _Block_release(v249);

        sub_27484DF88(v382, v244, v362, *(&v362 + 1), 1);
        sub_27484DFE8(&v408);
        (*(v370 + 8))(v258, &qword_274A0F640);
        (*(v368 + 8))(v251, v369);

        goto LABEL_149;
      }

      v88 = *(v85 + 16);
      if (v86 >= v88)
      {
        goto LABEL_157;
      }

      OUTLINED_FUNCTION_31_0();
      (*(v90 + 16))(v43, v85 + v89 + *(v90 + 72) * v86, v38);
      v91 = sub_2749FCA44();
      p_aBlock = v92;
      if (v91 == v382 && *(&v382 + 1) == v92)
      {
        break;
      }

      ++v86;
      v79 = sub_2749FDCC4();

      (*v78)(v43, v38);
      if (v79)
      {
        goto LABEL_92;
      }
    }

    (*v78)(v43, v38);
LABEL_92:

    v78 = v360;
    p_aBlock = v397;
    v260 = sub_2749F96F4();
    v261 = *(v260 + 16);
    if (!v261)
    {

      p_aBlock = MEMORY[0x277D84F90];
LABEL_116:
      sub_274782B78(p_aBlock);
      v304 = v361 & 0xFFFFFFFFFFFFLL;
      if ((v78 & 0x2000000000000000) != 0)
      {
        v304 = v359;
      }

      v158 = v381;
      if (v304)
      {
        v305 = *(&v362 + 1);

        v306 = *(&v382 + 1);

        v307 = v382;
        v308 = v306;
      }

      else
      {
        v309 = v382;
        if (sub_2749FCE84() & 1) == 0 || (v309 == 0xD000000000000019 ? (v310 = *(&v309 + 1) == 0x8000000274A2F7D0) : (v310 = 0), v310 || (OUTLINED_FUNCTION_43_0(), (sub_2749FDCC4())))
        {
          v311 = swift_allocObject();
          v312 = v376;
          *(v311 + 16) = v158;
          *(v311 + 24) = v312;
          OUTLINED_FUNCTION_34_5(v311);
          v313 = v378;
          *(v314 + 80) = v315;
          *(v314 + 88) = v313;
          *(v314 + 96) = v374 & 1;
          v316 = v158;
          sub_27484DEF0(&v408, &aBlock);

          OUTLINED_FUNCTION_43_0();
          sub_2749F96B4();
          v317 = OUTLINED_FUNCTION_43_0();
          sub_27484DF88(v317, v318, v362, *(&v362 + 1), 1);

          goto LABEL_142;
        }

        v305 = *(&v362 + 1);

        v307 = OUTLINED_FUNCTION_43_0();
      }

      sub_27484DF88(v307, v308, v362, v305, 1);
      goto LABEL_142;
    }

    v262 = MEMORY[0x277D84F90];
    *&aBlock = MEMORY[0x277D84F90];
    v263 = OUTLINED_FUNCTION_53_4();
    sub_27476D908(v263, v264, v265);
    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_18_14(v266);
    v383 = v260;
    v384 = v268;
    v85 = v380;
    v379 = v261;
    while (1)
    {
      v88 = *(v260 + 16);
      if (v267 >= v88)
      {
        goto LABEL_156;
      }

      v269 = OUTLINED_FUNCTION_22_12();
      v270(v269);
      v271 = sub_2749F95F4();
      if (v272)
      {
        v273 = v271;
      }

      else
      {
        v273 = 0;
      }

      v274 = 0xE000000000000000;
      if (v272)
      {
        v274 = v272;
      }

      v388 = v274;
      v389 = v273;
      v78 = sub_2749F9604();
      v275 = *(v78 + 16);
      if (v275)
      {
        v407[0] = v262;
        OUTLINED_FUNCTION_23_10();
        sub_27476D8B0();
        v276 = v407[0];
        OUTLINED_FUNCTION_31_0();
        v387 = v78;
        v278 = v78 + v277;
        v280 = *(v279 + 72);
        v398 = *(v279 + 16);
        v399 = v280;
        v281 = v404;
        do
        {
          v405 = v275;
          v282 = v400;
          v283 = v403;
          v78 = v396;
          v284 = v276;
          v285 = v398;
          v398(v400, v278, v403);
          v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B148, &unk_274A19C70);
          v287 = *(v286 + 48);
          v288 = *(v286 + 64);
          v285(v281, v282, v283);
          v276 = v284;
          v289 = sub_2749F9704();
          (*v395)(v282, v283);
          *&v404[v288] = v289;
          v281 = v404;
          *&v404[v287] = 0;
          swift_storeEnumTagMultiPayload();
          v407[0] = v284;
          v291 = *(v284 + 16);
          v290 = *(v284 + 24);
          if (v291 >= v290 >> 1)
          {
            OUTLINED_FUNCTION_8(v290);
            OUTLINED_FUNCTION_38_8();
            sub_27476D8B0();
            v281 = v404;
            v276 = v407[0];
          }

          *(v276 + 16) = v291 + 1;
          OUTLINED_FUNCTION_31_0();
          sub_27484DDE4(v281, v276 + v292 + *(v293 + 72) * v291);
          v278 += v399;
          v275 = v405 - 1;
        }

        while (v405 != 1);

        v261 = v379;
        v85 = v380;
        v260 = v383;
      }

      else
      {
      }

      p_aBlock = v85;
      v79 = sub_2749F95F4();
      v54 = v294;
      if (v294)
      {

        p_aBlock = sub_2749FCE34();

        v295 = OUTLINED_FUNCTION_9_14();
        v296(v295);
        if (!p_aBlock)
        {

          v79 = 0;
          v54 = 0;
        }
      }

      else
      {
        v297 = OUTLINED_FUNCTION_9_14();
        v298(v297);
      }

      OUTLINED_FUNCTION_40_9();
      if (v152)
      {
        OUTLINED_FUNCTION_13_15(v299);
        OUTLINED_FUNCTION_38_8();
        sub_27476D908(v301, v302, v303);
        p_aBlock = aBlock;
      }

      OUTLINED_FUNCTION_29_10();
      *(v300 + 64) = v54;
      v262 = MEMORY[0x277D84F90];
      if (v267 == v261)
      {

        v78 = v360;
        goto LABEL_116;
      }
    }
  }

  v157 = *(&v410 + 1) & 0xFFFFFFFFFFFFLL;
  if ((v411 & 0x2000000000000000) != 0)
  {
    v157 = HIBYTE(v411) & 0xF;
  }

  v158 = v381;
  if (!v157)
  {
    goto LABEL_142;
  }

  v362 = v409;
  v78 = 0xD000000000000019;
  v159 = v390;
  sub_2749F9674();
  v160 = *(sub_2749F97F4() + 16);

  v161 = MEMORY[0x277D84F90];
  if (v160)
  {
    v162 = sub_2749F97F4();
    v163 = *(v162 + 16);
    if (v163)
    {
      *&aBlock = v161;
      OUTLINED_FUNCTION_23_10();
      sub_27476D8B0();
      v54 = aBlock;
      OUTLINED_FUNCTION_71();
      v394 = v162;
      v165 = v162 + v164;
      v403 = *(v166 + 56);
      v404 = v167;
      v399 = v166;
      v400 = (v166 - 8);
      v168 = v386;
      do
      {
        v405 = v163;
        v169 = v397;
        v170 = v398;
        (v404)(v397, v165, v398);
        v171 = sub_2749FCA44();
        v173 = v172;
        v174 = sub_2749FCA54();
        v175 = v54;
        v177 = v176;
        (*v400)(v169, v170);
        *v168 = v171;
        v168[1] = v173;
        v168[2] = v174;
        v168[3] = v177;
        v54 = v175;
        swift_storeEnumTagMultiPayload();
        *&aBlock = v175;
        v179 = *(v175 + 2);
        v178 = *(v175 + 3);
        if (v179 >= v178 >> 1)
        {
          OUTLINED_FUNCTION_13_15(v178);
          OUTLINED_FUNCTION_38_8();
          sub_27476D8B0();
          v54 = aBlock;
        }

        *(v54 + 2) = v179 + 1;
        OUTLINED_FUNCTION_31_0();
        sub_27484DDE4(v168, &v54[v180 + *(v181 + 72) * v179]);
        v165 += v403;
        v163 = v405 - 1;
      }

      while (v405 != 1);

      v78 = 0xD000000000000019;
    }

    else
    {

      v54 = MEMORY[0x277D84F90];
    }

    v85 = 0x8000000274A2F7F0;
    sub_2747645C4();
    v161 = v319;
    v79 = *(v319 + 16);
    v88 = *(v319 + 24);
    p_aBlock = (v79 + 1);
    if (v79 < v88 >> 1)
    {
      goto LABEL_130;
    }

    goto LABEL_159;
  }

LABEL_131:
  v321 = *(sub_2749F9804() + 16);

  if (v321)
  {
    v404 = v161;
    p_aBlock = v159;
    v85 = sub_2749F9804();
    v322 = 0;
    v79 = *(v85 + 16);
    v405 = v396 + 16;
    do
    {
      v54 = v322;
      if (v79 == v322)
      {
        break;
      }

      v88 = *(v85 + 16);
      if (v322 >= v88)
      {
        goto LABEL_158;
      }

      v323 = v395;
      v78 = v396;
      OUTLINED_FUNCTION_71();
      p_aBlock = v391;
      (*(v78 + 16))(v391, v85 + v324 + *(v78 + 72) * v322++, v323);
      v325 = sub_2749F9324();
      (*(v78 + 8))(p_aBlock, v323);
      v326 = *(v325 + 16);
    }

    while (!v326);

    v159 = v390;
    v327 = sub_2749F9804();
    v158 = v381;
    v328 = sub_274842D18(v327, v79 != v54, v381);

    v161 = v404;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2747645C4();
      v161 = v357;
    }

    v330 = *(v161 + 16);
    v329 = *(v161 + 24);
    if (v330 >= v329 >> 1)
    {
      OUTLINED_FUNCTION_8(v329);
      sub_2747645C4();
      v161 = v358;
    }

    *(v161 + 16) = v330 + 1;
    v331 = (v161 + 40 * v330);
    v331[4] = 0xD000000000000015;
    v331[5] = 0x8000000274A2F810;
    v331[7] = 0;
    v331[8] = 0;
    v331[6] = v328;
  }

  sub_274782B78(v161);
  sub_27484DF88(v382, *(&v382 + 1), v362, *(&v362 + 1), 2);
  (*(v387 + 8))(v159, v388);
LABEL_142:
  v332 = *(v375 + 1);
  aBlock = *v375;
  v413 = v332;
  v414 = *(v375 + 2);
  v415 = *(v375 + 6);
  sub_27484DEF0(&aBlock, v407);
  sub_27483CAB8();
  v334 = v333;
  sub_27484DFE8(&aBlock);
  if (v334)
  {
    if (v374)
    {
      v335 = v363;
      OUTLINED_FUNCTION_24();
      swift_beginAccess();
      if (*v335 == 1)
      {
        OUTLINED_FUNCTION_24();
        swift_beginAccess();

        sub_2748440E8();
      }

      sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
      v404 = sub_2749FD404();
      v336 = v364;
      sub_2749FCAB4();
      sub_2749FCB14();
      v405 = *(v365 + 8);
      (v405)(v336, v373);
      v337 = swift_allocObject();
      v338 = v378;
      *(v337 + 16) = v158;
      *(v337 + 24) = v338;
      OUTLINED_FUNCTION_34_5(v337);
      v339 = v376;
      *(v340 + 80) = v341;
      *(v340 + 88) = v339;
      v406[4] = sub_27484E018;
      v406[5] = v340;
      v406[0] = MEMORY[0x277D85DD0];
      v406[1] = 1107296256;
      OUTLINED_FUNCTION_2_2();
      v406[2] = v342;
      v406[3] = &block_descriptor_21;
      v343 = _Block_copy(v406);
      v344 = v158;
      sub_27484DEF0(&v408, v407);

      v345 = v366;
      sub_2749FCA94();
      v407[0] = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_5_23();
      sub_27484DCA4(v346, v347, MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
      OUTLINED_FUNCTION_4_19();
      v351 = sub_27472AB6C(v348, v349, &qword_274A0F640, v350);
      v352 = v367;
      OUTLINED_FUNCTION_45_5(v407, v353, v351);
      v354 = v372;
      v355 = v404;
      MEMORY[0x277C5F120](v372, v345, v352, v343);
      _Block_release(v343);

      sub_27484DFE8(&v408);
      (*(v370 + 8))(v352, &qword_274A0F640);
      (*(v368 + 8))(v345, v369);
      (v405)(v354, v373);
    }

    else
    {
      OUTLINED_FUNCTION_24();
      swift_beginAccess();

      sub_2748440E8();

      sub_27484DFE8(&v408);
    }

LABEL_149:
  }

  else
  {

    sub_27484DFE8(&v408);
  }
}

uint64_t sub_274842D18(uint64_t a1, int a2, uint64_t a3)
{
  v37 = a2;
  v36 = sub_2749F9444();
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2749F9344();
  v7 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WFDrawerViewController.Item(0);
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v39 = MEMORY[0x277D84F90];
    sub_27476D8B0();
    v15 = *(a3 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_dataSource);
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v30 = v17;
    v31 = v15;
    v14 = v39;
    v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v29 = *(v16 + 56);
    v19 = (v5 + 8);
    v20 = (v16 - 8);
    v32 = v16;
    do
    {
      v30(v9, v18, v38);
      sub_2749F9334();
      if (v37)
      {
        v21 = sub_2749F9324();
      }

      else
      {
        v21 = 0;
      }

      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B148, &unk_274A19C70);
      v23 = *(v22 + 64);
      *&v12[*(v22 + 48)] = v21;
      v24 = v35;
      sub_2749F9334();
      v25 = sub_2749F9704();
      (*v19)(v24, v36);
      (*v20)(v9, v38);
      *&v12[v23] = v25;
      swift_storeEnumTagMultiPayload();
      v39 = v14;
      v26 = *(v14 + 16);
      if (v26 >= *(v14 + 24) >> 1)
      {
        sub_27476D8B0();
        v14 = v39;
      }

      *(v14 + 16) = v26 + 1;
      sub_27484DDE4(v12, v14 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v26);
      v18 += v29;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_274843074(uint64_t a1)
{
  v32 = type metadata accessor for WFDrawerViewController.Item(0);
  v30 = *(v32 - 8);
  v2 = MEMORY[0x28223BE20](v32);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = (&v27 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    v29 = *MEMORY[0x277D7A218];
    v7 = (a1 + 56);
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = *(v7 - 3);
      v9 = *(v7 - 2);
      v11 = *(v7 - 1);
      v12 = *v7;
      *v5 = v10;
      v5[1] = v9;
      v5[2] = v11;
      v5[3] = v12;
      swift_storeEnumTagMultiPayload();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274764584(0, *(v8 + 16) + 1, 1, v8);
        v8 = v23;
      }

      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_274764584(v13 > 1, v14 + 1, 1, v8);
        v8 = v24;
      }

      *(v8 + 16) = v14 + 1;
      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v15 = *(v30 + 72);
      sub_27484DDE4(v5, v8 + v31 + v15 * v14);
      if (v10 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v9 == v16)
      {
        break;
      }

      v18 = sub_2749FDCC4();

      if (v18)
      {
        goto LABEL_14;
      }

LABEL_18:
      v7 += 4;
      if (!--v6)
      {
        return v8;
      }
    }

LABEL_14:
    v19 = [objc_opt_self() shared];
    v20 = [v19 isAppleIntelligenceEnabled];

    if (v20)
    {
      swift_storeEnumTagMultiPayload();
      v22 = *(v8 + 16);
      v21 = *(v8 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_274764584(v21 > 1, v22 + 1, 1, v8);
        v8 = v25;
      }

      *(v8 + 16) = v22 + 1;
      sub_27484DDE4(v28, v8 + v31 + v22 * v15);
    }

    goto LABEL_18;
  }

  return MEMORY[0x277D84F90];
}

id sub_274843358(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView);
  v2 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
  v3 = [*(v1 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar) searchTextField];
  sub_27471CF08(0, &unk_28096B150, 0x277D75A00);
  v4 = sub_2749FCF74();
  [v3 setTokens_];

  v5 = [*(v1 + v2) searchTextField];
  sub_2748205A0(0, 0xE000000000000000, v5);

  v6 = *(v1 + v2);

  return [v6 resignFirstResponder];
}

uint64_t sub_274843448(uint64_t a1, char *a2, uint64_t a3, _OWORD *a4, uint64_t a5, int a6)
{
  v45 = a6;
  v48 = a5;
  v47 = a4;
  v46 = a3;
  v8 = sub_2749FCA74();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2749FCAA4();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2749F9444();
  v12 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WFDrawerViewController.Item(0);
  v58 = *(v15 - 8);
  v59 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v43 = v9;
    v44 = v8;
    v61[0] = MEMORY[0x277D84F90];
    sub_27476D8B0();
    v42 = a2;
    v20 = *&a2[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_dataSource];
    v56 = *(v12 + 16);
    v57 = v20;
    v21 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v22 = *(v12 + 72);
    v53 = (v12 + 8);
    v54 = v22;
    v55 = v12 + 16;
    v23 = v60;
    v19 = v61[0];
    v24 = v56;
    do
    {
      v24(v14, v21, v23);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B148, &unk_274A19C70);
      v26 = *(v25 + 48);
      v27 = *(v25 + 64);
      v24(v17, v14, v23);
      v28 = sub_2749F9704();
      (*v53)(v14, v23);
      *&v17[v27] = v28;
      *&v17[v26] = 0;
      swift_storeEnumTagMultiPayload();
      v61[0] = v19;
      v29 = *(v19 + 16);
      if (v29 >= *(v19 + 24) >> 1)
      {
        sub_27476D8B0();
        v19 = v61[0];
      }

      *(v19 + 16) = v29 + 1;
      sub_27484DDE4(v17, v19 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v29);
      v21 += v54;
      --v18;
    }

    while (v18);
    v8 = v44;
    v9 = v43;
    a2 = v42;
  }

  if (!*(v19 + 16))
  {
  }

  sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
  v30 = sub_2749FD404();
  v31 = swift_allocObject();
  v32 = v47;
  v33 = v47[1];
  *(v31 + 40) = *v47;
  *(v31 + 16) = v46;
  *(v31 + 24) = v19;
  *(v31 + 32) = a2;
  *(v31 + 56) = v33;
  *(v31 + 72) = *(v32 + 32);
  v34 = v48;
  *(v31 + 88) = *(v32 + 48);
  *(v31 + 96) = v34;
  *(v31 + 104) = v45 & 1;
  aBlock[4] = sub_27484E0DC;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_140;
  v35 = a2;
  v36 = _Block_copy(aBlock);

  v37 = v35;
  sub_27484DEF0(v32, v61);

  v38 = v49;
  sub_2749FCA94();
  v61[0] = MEMORY[0x277D84F90];
  sub_27484DCA4(&qword_28159E580, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
  sub_27472AB6C(&qword_28159E530, &unk_28096DB60, &qword_274A0F640, MEMORY[0x277D83970]);
  v39 = v51;
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v38, v39, v36);
  _Block_release(v36);

  (*(v9 + 8))(v39, v8);
  return (*(v50 + 8))(v38, v52);
}

void sub_274843A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_2749FCE14("Other", 5);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v10 = qword_28159E448;
  v11 = sub_2749FCD64();
  v12 = sub_2749FCD64();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v16 = v15;

  v17 = sub_2749FCE34();

  if (!v17)
  {

    v14 = 0;
    v16 = 0;
  }

  swift_beginAccess();

  sub_2748E3DC4(v18);
  v19 = *(*(a1 + 16) + 16);
  sub_2748E3EC8(v19);
  v20 = *(a1 + 16);
  *(v20 + 16) = v19 + 1;
  v21 = (v20 + 40 * v19);
  v21[4] = 0xD000000000000010;
  v21[5] = 0x8000000274A2F850;
  v21[6] = a2;
  v21[7] = v14;
  v21[8] = v16;
  *(a1 + 16) = v20;
  swift_endAccess();
  v22 = *(a3 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode + 16);
  v27[0] = *(a3 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode);
  v27[1] = v22;
  v27[2] = *(a3 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode + 32);
  v28 = *(a3 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode + 48);
  sub_27484DEF0(v27, v26);
  sub_27483CAB8();
  v24 = v23;
  sub_27484DFE8(v27);
  if (v24)
  {
    swift_beginAccess();
    if ((*(a5 + 16) & 1) != 0 || (a6 & 1) == 0)
    {
      swift_beginAccess();

      sub_2748440E8();
    }
  }
}

void sub_274843CFC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *&a1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView];
  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  [v6 setContentOffset:0 animated:{*MEMORY[0x277CBF348], v8}];
  swift_beginAccess();
  *(a2 + 16) = 1;
  v9 = &a1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode];
  v10 = *&a1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode + 16];
  v42[0] = *&a1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode];
  v42[1] = v10;
  v42[2] = *&a1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode + 32];
  v43 = *&a1[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode + 48];
  sub_27484DEF0(v42, &t1);
  sub_27483CAB8();
  v12 = v11;
  sub_27484DFE8(v42);
  if (v12)
  {
    swift_beginAccess();

    sub_2748440E8();
  }

  v13 = [a1 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v13;
  [v13 setNeedsLayout];

  v15 = [a1 view];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v15;
  [v15 layoutIfNeeded];

  CGAffineTransformMakeScale(&t1, 0.982, 0.982);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.c;
  v38 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, 0.0, -8.0);
  v19 = *&t1.a;
  v20 = *&t1.c;
  *&t1.c = v37;
  *&t2.tx = *&t1.tx;
  *&t1.a = v38;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v19;
  *&t2.c = v20;
  CGAffineTransformConcat(&v39, &t1, &t2);
  t1 = v39;
  [v6 setTransform_];
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  objc_allocWithZone(MEMORY[0x277D75D40]);
  v22 = a1;
  v23 = sub_27480FE78(sub_27484E0F4, v21, 0.45, 1.0);
  [v23 startAnimation];

  if (*(v9 + 6))
  {
    goto LABEL_12;
  }

  v24 = &v22[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_browseModeContentOffsetCache];
  if (v22[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_browseModeContentOffsetCache + 32])
  {
    goto LABEL_12;
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  v28 = *v24;
  v27 = *(v24 + 1);
  v29 = [v22 view];
  if (v29)
  {
    v30 = v29;
    [v29 bounds];
    v32 = v31;
    v34 = v33;

    if (v26 == v32 && v25 == v34)
    {
      [v6 setContentOffset_];
      *v24 = 0u;
      *(v24 + 1) = 0u;
      v24[32] = 1;
      goto LABEL_13;
    }

LABEL_12:
    [v6 setContentOffset_];
LABEL_13:
    sub_274845250();
    v36 = [*&v22[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_headerSeparator] layer];
    [v36 removeAllAnimations];

    return;
  }

LABEL_17:
  __break(1u);
}

id sub_274844080(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView);
  [v1 setAlpha_];
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

void sub_2748440E8()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  type metadata accessor for WFDrawerViewController.Item(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_1();
  v56 = v4;
  OUTLINED_FUNCTION_57_0();
  v55 = sub_2749F9444();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_1();
  v54 = v8;
  OUTLINED_FUNCTION_57_0();
  v9 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_sections) = v2;

  v16 = *(v0 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView);
  [v16 reloadData];
  v60 = v16;
  v17 = [v16 indexPathsForVisibleRows];
  if (v17)
  {
    v18 = v17;
    v19 = sub_2749FCF84();
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v20 = *(v19 + 16);
  if (!v20)
  {
    OUTLINED_FUNCTION_46();

    return;
  }

  OUTLINED_FUNCTION_71();
  v22 = v19 + v21;
  v57 = v2;
  v58 = *(v11 + 72);
  v59 = v23;
  while (1)
  {
    v59(v15, v22, v9);
    v24 = sub_2749F9224();
    v25 = [v60 cellForRowAtIndexPath_];

    if (!v25)
    {
      goto LABEL_17;
    }

    type metadata accessor for WFDrawerActionCell(0);
    if (!swift_dynamicCastClass())
    {

LABEL_17:
      v38 = OUTLINED_FUNCTION_12_16();
      v39(v38);
      goto LABEL_22;
    }

    v26 = sub_2749F9274();
    v27 = *(v2 + 16);
    if (v26 >= v27)
    {
      v40 = OUTLINED_FUNCTION_12_16();
      v41(v40);

      goto LABEL_22;
    }

    v28 = sub_2749F9244();
    if (sub_2749F9274() >= v27)
    {
      break;
    }

    OUTLINED_FUNCTION_28_9();
    if (v28 >= *(*(v29 + 16) + 16))
    {
      v42 = OUTLINED_FUNCTION_12_16();
      v43(v42);
    }

    else
    {
      if (sub_2749F9274() >= v27)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_28_9();
      v31 = *(v30 + 16);

      v32 = sub_2749F9244();
      if ((v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      if (v32 >= *(v31 + 16))
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_31_0();
      sub_27484DD24(v31 + v33 + *(v34 + 72) * v35, v56);

      if (swift_getEnumCaseMultiPayload())
      {
        v36 = OUTLINED_FUNCTION_12_16();
        v37(v36);

        sub_27484DD88(v56);
      }

      else
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B148, &unk_274A19C70);
        v52 = *(v56 + *(v44 + 48));
        v53 = *(v56 + *(v44 + 64));
        v45 = OUTLINED_FUNCTION_32_1();
        v46(v45);
        v47 = sub_2749F9434();
        sub_274848710(v47, v48, v52);

        sub_2748491A0(v53);

        (*(v6 + 8))(v54, v55);
        v49 = OUTLINED_FUNCTION_12_16();
        v50(v49);
      }
    }

    v2 = v57;
LABEL_22:
    v22 += v58;
    if (!--v20)
    {

      OUTLINED_FUNCTION_46();
      return;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_274844580()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B088, &qword_274A19B90);
  OUTLINED_FUNCTION_34(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_43();
  v123 = v8;
  v124 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  type metadata accessor for WFDrawerViewController.Item(0);
  OUTLINED_FUNCTION_43();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_39();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  v20 = v19;
  if (sub_2749F9274() < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_42_5();
  if (v21)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v122 = v11;
  OUTLINED_FUNCTION_28_9();
  v23 = *(v22 + 48);

  v24 = sub_2749F9244();
  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
LABEL_15:
    v76 = OUTLINED_FUNCTION_62_0();
    v77 = OUTLINED_FUNCTION_62_0();

    v79 = OUTLINED_FUNCTION_56(v78, sel_localizedStringForKey_value_table_);

    v80 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v82 = v81;

    sub_27484DB24(v80, v82, v2, &selRef_setText_);
    v83 = *(v4 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_iconView);
    sub_27471CF08(0, &unk_28096B160, 0x277D79FC8);
    if (qword_280966BB0 != -1)
    {
      swift_once();
    }

    v84 = qword_280989160;
    v85 = qword_280989160;
    v86 = sub_2748E92E4(0xD000000000000011, 0x8000000274A2F7B0, v84);
    v87 = [objc_allocWithZone(MEMORY[0x277D79FD0]) initWithImage_];

    [v83 setIcon_];
LABEL_18:
    v88 = v13;
LABEL_21:
    sub_27484DD88(v88);
    goto LABEL_22;
  }

  if (v24 >= *(v23 + 16))
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_71();
  v27 = v23 + v25 + *(v13 + 72) * v26;
  v13 = v20;
  sub_27484DD24(v27, v20);

  sub_27484DD24(v20, v17);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v100 = *v17;
      v101 = v17[1];
      v103 = v17[2];
      v102 = v17[3];
      v104 = OUTLINED_FUNCTION_24_11();
      v105 = sub_2749F9224();
      OUTLINED_FUNCTION_26_9();
      v108 = [v106 v107];

      v109 = type metadata accessor for WFDrawerAppCell();
      v110 = OUTLINED_FUNCTION_11_17(v109);
      swift_unknownObjectWeakAssign();
      v111 = (v110 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_app);
      v112 = *(v110 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_app);
      v113 = *(v110 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_app + 8);
      *v111 = v100;
      v111[1] = v101;
      v111[2] = v103;
      v111[3] = v102;

      sub_27484DB90(v112, v113);
      v114 = *(v110 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_label);
      v115 = sub_2749FCD64();
      v116 = OUTLINED_FUNCTION_24_1();
      [v116 v117];

      sub_27471CF08(0, &qword_28096BB10, 0x277D79DA8);
      v118 = sub_274903E28(v100, v101);

      v119 = OUTLINED_FUNCTION_24_1();
      [v119 v120];

      v88 = v20;
      goto LABEL_21;
    case 2u:
      v70 = OUTLINED_FUNCTION_24_11();
      v71 = sub_2749F9224();
      OUTLINED_FUNCTION_26_9();
      v74 = [v72 v73];

      v75 = type metadata accessor for WFDrawerAppCell();
      v4 = OUTLINED_FUNCTION_11_17(v75);
      swift_unknownObjectWeakAssign();
      v2 = *(v4 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_label);
      sub_2749FCE14("Apple Intelligence", 18);
      if (qword_28159E3A8 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    case 3u:
      v89 = OUTLINED_FUNCTION_37_8();
      v90 = sub_2749F9224();
      OUTLINED_FUNCTION_26_9();
      v93 = [v91 v92];

      v94 = type metadata accessor for WFDrawerSwitchCell();
      v95 = OUTLINED_FUNCTION_11_17(v94);
      sub_27484DB24(0xD000000000000016, 0x8000000274A2F790, *(v95 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_label), &selRef_setText_);
      [*(v95 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_valueSwitch) setOn_];
      sub_27484DD88(v20);
      OUTLINED_FUNCTION_86();
      v96 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v97 = (v95 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_onChange);
      v98 = *(v95 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_onChange);
      v99 = *(v95 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_onChange + 8);
      *v97 = sub_27484DE78;
      v97[1] = v96;

      sub_27471F8A4(v98, v99);

      break;
    default:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B148, &unk_274A19C70);
      v29 = *(v17 + *(v28 + 48));
      v121 = *(v17 + *(v28 + 64));
      v30 = v122;
      (*(v123 + 32))(v122, v17, v124);
      OUTLINED_FUNCTION_54_6();
      v31 = sub_2749FCD64();
      v32 = sub_2749F9224();
      OUTLINED_FUNCTION_26_9();
      v35 = [v33 v34];

      v36 = type metadata accessor for WFDrawerActionCell(0);
      v37 = OUTLINED_FUNCTION_11_17(v36);
      swift_unknownObjectWeakAssign();
      (*(v123 + 16))(v0, v122, v124);
      __swift_storeEnumTagSinglePayload(v0, 0, 1, v124);
      v38 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_action;
      swift_beginAccess();
      sub_27484DE80(v0, v37 + v38);
      swift_endAccess();
      v39 = *(v37 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_iconView);
      v40 = sub_2749F9424();
      v41 = OUTLINED_FUNCTION_24_1();
      [v41 v42];

      v43 = sub_2749F9434();
      sub_274848710(v43, v44, v29);

      v13 = v20;

      sub_2748491A0(v121);
      v45 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_internalBadge;
      v46 = *(v37 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_internalBadge);
      if (v46)
      {
        goto LABEL_12;
      }

      if (sub_2749F9404())
      {
        v47 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
        sub_2749FCE14("Internal", 8);
        if (qword_28159E3A8 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
        }

        v48 = OUTLINED_FUNCTION_62_0();
        v49 = OUTLINED_FUNCTION_62_0();

        v51 = OUTLINED_FUNCTION_56(v50, sel_localizedStringForKey_value_table_);

        v52 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v54 = v53;

        sub_27484DB24(v52, v54, v47, &selRef_setText_);
        [v47 setTextAlignment_];
        v55 = objc_allocWithZone(MEMORY[0x277D75348]);
        v56 = v47;
        v57 = sub_2747CA0C4(sub_27484500C, 0);
        v58 = OUTLINED_FUNCTION_19_12();
        [v58 v59];

        v60 = [objc_opt_self() whiteColor];
        v61 = OUTLINED_FUNCTION_19_12();
        [v61 v62];

        v63 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x277D74420]];
        v64 = OUTLINED_FUNCTION_19_12();
        [v64 v65];

        v66 = [v56 layer];
        [v66 setCornerRadius_];

        [v56 setClipsToBounds_];
        v67 = *(v37 + v45);
        *(v37 + v45) = v56;
        v68 = v56;

        [*(v37 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_actionView) addSubview_];
        v30 = v122;
      }

      v46 = *(v37 + v45);
      if (v46)
      {
LABEL_12:
        v69 = v46;
        [v69 setHidden_];
      }

      (*(v123 + 8))(v30, v124);
      goto LABEL_18;
  }

LABEL_22:
  OUTLINED_FUNCTION_46();
}

double sub_274845020(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    sub_2749F96A4();
  }

  return result;
}

uint64_t sub_2748451F0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_sections);
    if (*(v3 + 16) > a2)
    {
      return *(*(v3 + 40 * a2 + 48) + 16);
    }
  }

  __break(1u);
  return result;
}

void sub_274845250()
{
  [*&v0[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_headerSeparator] alpha];
  v2 = v1;
  v3 = *&v0[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView];
  [v3 contentOffset];
  if (v2 <= 0.0 == v4 > 0.0)
  {
    v5 = v4 > 0.0;
    [v3 setClipsToBounds_];
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    *(v6 + 24) = v5;
    v7 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v8 = v0;
    v9 = sub_27480FE78(sub_27484DE48, v6, 0.35, 1.0);
    [v9 startAnimation];
  }
}