uint64_t sub_2611274E8(uint64_t a1)
{
  v1[7] = a1;
  sub_26115B7A4();
  v1[8] = sub_26115B794();
  v3 = sub_26115B774();
  v1[9] = v3;
  v1[10] = v2;

  return MEMORY[0x2822009F8](sub_261127580, v3, v2);
}

uint64_t sub_261127580()
{
  v1 = type metadata accessor for PASUIProxiedTermsHandler(0);
  sub_2611277B8(&qword_27FE81358, type metadata accessor for PASUIProxiedTermsHandler, "ѹ\n!");
  v2 = sub_26115AE54();
  v0[5] = v1;
  v0[6] = sub_2611277B8(&qword_27FE81360, type metadata accessor for PASUIProxiedTermsHandler, &unk_26115E410);
  v0[2] = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_26112335C;

  return MEMORY[0x2821A48E8](v0 + 2);
}

uint64_t sub_2611276CC()
{

  sub_261127710(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_261127710(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8](a1, a2);
  }

  else
  {
  }
}

uint64_t sub_261127720()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26110CAC4;

  return sub_2611274E8(v0 + 16);
}

uint64_t sub_2611277B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PASFlowStepPersonalSignIn.buildView()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81368, &qword_26115EF50);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  v7 = type metadata accessor for PASUIAppleIDAuthContextProvider();
  v8 = [objc_allocWithZone(v7) init];
  v16 = v7;
  v17 = &off_287399F58;
  v15 = v8;
  sub_261127A2C();

  v13 = sub_26115AF34();
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81378, qword_26115EF58);
  swift_allocObject();
  v18 = sub_26115A2E4();
  v10 = sub_261127A84();
  sub_26115B414();
  sub_261127AD8(&v13);
  (*(v1 + 16))(v4, v6, v0);
  v13 = &type metadata for PASUIPersonalSignInView;
  v14 = v10;
  swift_getOpaqueTypeConformance2();
  v11 = sub_26115B574();
  (*(v1 + 8))(v6, v0);
  return v11;
}

unint64_t sub_261127A2C()
{
  result = qword_27FE81370;
  if (!qword_27FE81370)
  {
    sub_26115AA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81370);
  }

  return result;
}

unint64_t sub_261127A84()
{
  result = qword_27FE81380;
  if (!qword_27FE81380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81380);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_261127B40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_261127B88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261127C04@<X0>(uint64_t a1@<X8>)
{
  sub_261127F84(v1, v8);
  v3 = swift_allocObject();
  v4 = v8[1];
  v3[1] = v8[0];
  v3[2] = v4;
  v5 = v8[3];
  v3[3] = v8[2];
  v3[4] = v5;
  result = sub_26111BED4(v1 + 16, a1 + 72);
  *(a1 + 112) = &unk_26115F030;
  *(a1 + 120) = v3;
  *a1 = sub_261127800;
  *(a1 + 8) = 0;
  *(a1 + 16) = sub_261127804;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = MEMORY[0x277D84F90];
  *(a1 + 56) = 0;
  *(a1 + 64) = v7;
  return result;
}

uint64_t sub_261127CC8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_26115B7A4();
  v2[4] = sub_26115B794();
  v4 = sub_26115B774();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_261127D60, v4, v3);
}

uint64_t sub_261127D60()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_261127E00;
  v2 = *(v0 + 16);

  return MEMORY[0x2821A4A08](v2);
}

uint64_t sub_261127E00()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_261127F20, v3, v2);
}

uint64_t sub_261127F20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261127FBC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_261128004(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26110CAC4;

  return sub_261127CC8(a1, v1 + 16);
}

unint64_t sub_2611280A0()
{
  result = qword_27FE81388;
  if (!qword_27FE81388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81390, qword_26115F038);
    sub_26112812C();
    sub_261128180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81388);
  }

  return result;
}

unint64_t sub_26112812C()
{
  result = qword_27FE81398;
  if (!qword_27FE81398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81398);
  }

  return result;
}

unint64_t sub_261128180()
{
  result = qword_27FE813A0[0];
  if (!qword_27FE813A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE813A0);
  }

  return result;
}

uint64_t sub_261128278()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_261128310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v37 = a6;
  v33 = a4;
  v34 = a3;
  v40 = a7;
  v39 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v10;
  type metadata accessor for NavigationControllerReader.ReaderRepresentable(255, v10, v12, v11);
  v31 = sub_26115AF84();
  WitnessTable = swift_getWitnessTable();
  v51 = WitnessTable;
  v52 = MEMORY[0x277CDF900];
  v38 = MEMORY[0x277CDFAD8];
  v32 = swift_getWitnessTable();
  v36 = sub_26115B0F4();
  v13 = sub_26115AF84();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v35 = &v28 - v18;
  v47 = a1;
  v48 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE81538, &qword_26115F210);
  sub_26115B524();
  Strong = swift_unknownObjectWeakLoadStrong();

  v34(Strong);

  v43 = a1;
  v44 = a2;
  sub_26115B544();
  v43 = v47;
  v44 = v48;
  v45 = v49;
  sub_26115B444();

  v43 = v47;
  v44 = v48;
  v45 = v49;
  v46 = v50;
  sub_26115B5C4();
  v20 = v30;
  v21 = v37;
  v22 = v28;
  sub_26115B344();

  (*(v39 + 8))(v22, v20);
  v23 = swift_getWitnessTable();
  v41 = v21;
  v42 = v23;
  swift_getWitnessTable();
  v24 = *(v14 + 16);
  v25 = v35;
  v24(v35, v17, v13);
  v26 = *(v14 + 8);
  v26(v17, v13);
  v24(v40, v25, v13);
  return (v26)(v25, v13);
}

id sub_261128764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x277D85000];
  v7 = (v4 + qword_27FE81428);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = type metadata accessor for NavigationControllerReader.Reader(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), a4);
  v10.receiver = v4;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

void sub_2611287F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NavigationControllerReader.Reader(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v9.receiver = v4;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2611288CC(void *a1)
{
  v4 = a1;
  sub_2611287F0(v4, v1, v2, v3);
}

uint64_t sub_261128980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for NavigationControllerReader.Reader(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  objc_msgSendSuper2(&v9, sel_didMoveToParentViewController_, a1);

  v7 = [v4 navigationController];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80DE0, ":e");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE814B0, &qword_26115F198);
  sub_26115B594();
}

void sub_261128AE0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = a1;
  sub_261128980(a3, v8, v6, v7);
}

id sub_261128B4C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for NavigationControllerReader.Reader(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v11.receiver = v4;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);

  result = [v4 view];
  if (result)
  {
    v9 = result;
    v10 = sub_261128DF8(result);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80DE0, ":e");
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE814B0, &qword_26115F198);
    sub_26115B594();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_261128CCC(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v9 = a1;
  sub_261128B4C(a3, a4, v9, v8);
}

id sub_261128D40(void *a1)
{
  v2 = [a1 nextResponder];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  result = [a1 nextResponder];
  if (result)
  {
    v5 = result;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = sub_261128D40(v6);

      return v7;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_261128DF8(void *a1)
{
  v1 = a1;
  while (1)
  {
    v2 = v1;
    v3 = sub_261128D40(v2);
    if (v3)
    {
      break;
    }

LABEL_3:
    v1 = [v2 superview];

    if (!v1)
    {
      return v1;
    }
  }

  v4 = v3;
  v1 = [v3 navigationController];

  if (!v1)
  {
    goto LABEL_3;
  }

  return v1;
}

void sub_261128EB0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_26112923C();
}

id sub_261128F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NavigationControllerReader.Reader(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_261128F90(uint64_t a1)
{
}

uint64_t sub_261128FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE814B0, &qword_26115F198);
  sub_26115B5A4();
  return v4;
}

uint64_t sub_2611290A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_261129124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_2611291A0(uint64_t a1)
{
  swift_getWitnessTable();
  sub_26115B1C4();
  __break(1u);
}

uint64_t sub_26112929C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2611292F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261129338(uint64_t result, int a2, int a3)
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

uint64_t sub_2611293EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_261129428(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NavigationControllerReader.ReaderRepresentable(255, *a1, a1[1], a4);
  sub_26115AF84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26115B0F4();
  sub_26115AF84();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

id sub_261129550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for NavigationControllerReader.Reader(0, a4, a5, a4);
  v9 = sub_261128FF8(a1, a2, a3);
  return sub_261128764(v9, v10, v11, objc_allocWithZone(v8));
}

uint64_t sub_2611295F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE815C0, &unk_26115F370);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = type metadata accessor for PASUIAppleIDAuthContextProvider();
  v10 = [objc_allocWithZone(v9) init];
  v18 = v9;
  v19 = &off_287399F58;
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  swift_allocObject();
  v11 = sub_26115A2E4();
  v16 = v1;
  v20 = v11;
  v12 = sub_261129804();

  sub_26115B414();
  sub_261129858(&v16);
  (*(v3 + 16))(v6, v8, v2);
  v16 = &type metadata for PASUISourceAuthView;
  v17 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = sub_26115B574();
  (*(v3 + 8))(v8, v2);
  return v13;
}

unint64_t sub_261129804()
{
  result = qword_27FE815C8;
  if (!qword_27FE815C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE815C8);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2611298A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2611298EC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double sub_261129964@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_261129EC8(v2, &v11);
  v5 = swift_allocObject();
  v6 = v12;
  *(v5 + 16) = v11;
  *(v5 + 32) = v6;
  *(v5 + 48) = v13;
  *(v5 + 64) = v14;
  sub_261129EC8(v2, &v11);
  v7 = swift_allocObject();
  v8 = v12;
  *(v7 + 16) = v11;
  *(v7 + 32) = v8;
  *(v7 + 48) = v13;
  *(v7 + 64) = v14;
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C48, &unk_261160100) + 36));
  sub_26115AF04();

  sub_26115B7B4();
  *v9 = &unk_26115F440;
  v9[1] = v7;
  *a1 = sub_26110C934;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_261129F04;
  *(a1 + 32) = v5;
  *(a1 + 40) = sub_26110C970;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1;
  *(a1 + 88) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_261129ACC()
{
  sub_26115AB84();
  v0 = sub_26115B6E4();

  return v0;
}

uint64_t sub_261129B38(uint64_t a1)
{
  v1[2] = a1;
  sub_26115B7A4();
  v1[3] = sub_26115B794();
  v3 = sub_26115B774();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_261129BD0, v3, v2);
}

uint64_t sub_261129BD0()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D43560] + MEMORY[0x277D43560]);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_261129CAC;

  return v5(sub_261129FE8, v2);
}

uint64_t sub_261129CAC()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26110C8AC, v3, v2);
}

id sub_261129DF0(uint64_t a1)
{
  v1 = __swift_project_boxed_opaque_existential_1Tm((a1 + 8), *(a1 + 32));
  sub_26115A2D4();
  v2 = v9;
  v3 = v10;
  __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  v4 = (*(v3 + 16))(v2, v3);
  v5 = *v1;
  v6 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  [v6 setPresentingViewController_];
  [v6 setDelegate_];

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t objectdestroyTm_2()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_261129F54()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26110CAC4;

  return sub_261129B38(v0 + 16);
}

unint64_t sub_261129FF0()
{
  result = qword_27FE80C70;
  if (!qword_27FE80C70)
  {
    sub_26115AF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80C70);
  }

  return result;
}

id PASFlowStepAIDASignIn.buildView()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE815D0, qword_26115F460);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = [objc_opt_self() defaultCenter];
  v7 = objc_allocWithZone(type metadata accessor for PASUICDPEnrollmentObserver(0));

  v9 = sub_26112AC24(v8, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81378, qword_26115EF58);
  swift_allocObject();

  v10 = sub_26115A2E4();
  sub_26112B4BC(&qword_27FE815D8, MEMORY[0x277D43418], MEMORY[0x277D433C0]);

  v11 = sub_26115AF34();
  v13 = v12;
  v14 = objc_allocWithZone(MEMORY[0x277CFDAE0]);
  v15 = v9;
  result = [v14 initWithPresentingViewController_];
  if (result)
  {
    v17 = result;
    [result setDelegate_];

    v22 = v11;
    v23 = v13;
    v24 = v15;
    v25 = &off_28739B3D0;
    v26 = v17;
    v27 = v10;
    v18 = sub_26112AD4C();
    sub_26115B414();

    (*(v1 + 16))(v21, v5, v0);
    v22 = &type metadata for PASUIAIDASignInView;
    v23 = v18;
    swift_getOpaqueTypeConformance2();
    v19 = sub_26115B574();
    (*(v1 + 8))(v5, v0);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_26112A37C@<X0>(void *a1@<X8>)
{
  v10 = *v1;
  v3 = *(v1 + 4);
  v4 = swift_allocObject();
  v5 = v1[1];
  v4[1] = *v1;
  v4[2] = v5;
  v4[3] = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80DE0, ":e");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_26112AE6C(&v10, v9);
  swift_unknownObjectRetain();
  v6 = v3;

  result = sub_26115B514();
  v8 = v9[1];
  *a1 = v9[0];
  a1[1] = v8;
  a1[2] = sub_26112AE64;
  a1[3] = v4;
  return result;
}

uint64_t sub_26112A484@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE815F0, &qword_26115F558);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v12 = &v42 - v11;
  if (a1)
  {
    v45 = v10;
    v48 = *a2;
    v44 = a1;
    v13 = sub_26115A5D4();
    v46 = a3;
    if (v13)
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v18 = *(a2 + 4);
      v15 = swift_allocObject();
      v19 = a2[1];
      v15[1] = *a2;
      v15[2] = v19;
      v15[3] = a2[2];
      sub_26112AE6C(&v48, v47);
      swift_unknownObjectRetain();
      v20 = v18;

      v14 = sub_26112AF2C;
    }

    sub_26115A5E4();
    __swift_project_boxed_opaque_existential_1Tm(v47, v47[3]);
    v21 = sub_26115A494();
    if (v22 >> 60 == 15)
    {
      __swift_destroy_boxed_opaque_existential_1(v47);
      v43 = 0;
      if ((v13 & 1) == 0)
      {
LABEL_10:
        v23 = swift_allocObject();
        *(v23 + 16) = v14;
        *(v23 + 24) = v15;
        v24 = sub_26112B118;
LABEL_13:
        v34 = swift_allocObject();
        *(v34 + 16) = v24;
        *(v34 + 24) = v23;
        v35 = *(a2 + 4);
        v36 = swift_allocObject();
        v37 = a2[1];
        *(v36 + 16) = *a2;
        *(v36 + 32) = v37;
        *(v36 + 48) = a2[2];
        *(v36 + 64) = v44;
        v38 = &v9[*(v6 + 36)];
        sub_26115AF04();
        sub_26112AE6C(&v48, v47);
        swift_unknownObjectRetain();
        v39 = v35;

        sub_26115B7B4();
        *v38 = &unk_26115F568;
        *(v38 + 1) = v36;
        *v9 = sub_26112AF34;
        *(v9 + 1) = v34;
        *(v9 + 2) = sub_261127804;
        *(v9 + 3) = 0;
        v9[32] = 1;
        *(v9 + 5) = v43;
        *(v9 + 6) = 0;
        v40 = MEMORY[0x277D84F90];
        *(v9 + 7) = 0;
        *(v9 + 8) = v40;
        sub_26112B070(v9, v12);
        v41 = v46;
        sub_26112B070(v12, v46);
        return (*(v45 + 56))(v41, 0, 1, v6);
      }
    }

    else
    {
      v25 = v21;
      v26 = v22;
      __swift_destroy_boxed_opaque_existential_1(v47);
      v27 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v28 = sub_26115A1F4();
      v42 = v15;
      v29 = v13;
      v30 = v12;
      v31 = v6;
      v32 = v14;
      v33 = v28;
      v43 = [v27 initWithData_];

      v14 = v32;
      v6 = v31;
      v12 = v30;
      LOBYTE(v30) = v29;
      v15 = v42;
      sub_26112B158(v25, v26);
      if ((v30 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v24 = sub_2611227A4;
    v23 = 0;
    goto LABEL_13;
  }

  v16 = *(v10 + 56);

  return v16(a3, 1, 1, v6);
}

uint64_t sub_26112A8AC()
{
  sub_26115A5E4();
  __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  sub_26115A484();
  v0 = sub_26115B6E4();

  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t sub_26112A94C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_26115B7A4();
  v2[4] = sub_26115B794();
  v4 = sub_26115B774();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_26112A9E4, v4, v3);
}

uint64_t sub_26112A9E4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v2 + 32);
  [v3 setForceInlinePresentation_];
  [v3 setPresentingViewController_];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_26112AADC;

  return MEMORY[0x2821A47C8](sub_26112B1C0, v4);
}

uint64_t sub_26112AADC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_261127F20, v3, v2);
}

id sub_26112AC24(uint64_t a1, void *a2, char *a3)
{
  *&a3[OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_observers] = MEMORY[0x277D84F90];
  v5 = &a3[OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_delegate];
  *&a3[OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_lastStatus;
  v7 = sub_26115A684();
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  *(v5 + 1) = MEMORY[0x277D43410];
  swift_unknownObjectWeakAssign();
  *&a3[OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_notificationCenter] = a2;
  v11.receiver = a3;
  v11.super_class = type metadata accessor for PASUICDPEnrollmentObserver(0);
  v8 = a2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_261155608();

  return v9;
}

unint64_t sub_26112AD4C()
{
  result = qword_27FE815E0;
  if (!qword_27FE815E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE815E0);
  }

  return result;
}

uint64_t sub_26112ADA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26112ADE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26112AE6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE815E8, &qword_26115F550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_3()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26112AF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v9[0] = a1;
  v9[1] = a2;
  v8[0] = a3;
  v8[1] = a4;
  v5(&v7, v9, v8);
  return v7;
}

uint64_t sub_26112AF7C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26112AFD4()
{
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26110CAC4;

  return sub_26112A94C(v0 + 16, v2);
}

uint64_t sub_26112B070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE815F0, &qword_26115F558);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26112B0E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26112B118@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, a1[1], *a2, a2[1]);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_26112B158(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26112B16C(a1, a2);
  }

  return a1;
}

uint64_t sub_26112B16C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_26112B1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CECAD0]) initWithPresentingViewController_];
  [v6 setBackgroundDataclassEnablement_];
  [v6 setCdpContext_];
  [v6 setFindMyActivationAction_];
  v7 = [objc_allocWithZone(MEMORY[0x277CEE698]) init];
  [v7 setIgnoreAccountConversion_];
  v8 = sub_26115B674();
  [v7 setDebugReason_];

  v9 = [objc_allocWithZone(MEMORY[0x277CED1D8]) init];
  [v9 setCdpUiProvider_];
  [v9 setViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE815F8, &unk_26115F570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26115F450;
  v11 = *MEMORY[0x277CED1A0];
  *(inited + 32) = *MEMORY[0x277CED1A0];
  v12 = sub_26112B474(0, &qword_27FE81600, 0x277CECAD0);
  *(inited + 40) = v6;
  v13 = *MEMORY[0x277CED1C0];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  *(inited + 104) = sub_26112B474(0, &qword_27FE81608, 0x277CEE698);
  *(inited + 80) = v7;
  v14 = v11;
  v15 = v6;
  v16 = v13;
  v17 = v7;
  sub_261110904(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E40, &qword_26115DA08);
  swift_arrayDestroy();
  type metadata accessor for AIDAServiceType(0);
  sub_26112B4BC(&qword_27FE80D48, type metadata accessor for AIDAServiceType, &unk_26115D7B4);
  v18 = sub_26115B604();

  [v9 setSignInContexts_];

  return v9;
}

uint64_t sub_26112B474(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_26112B4BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26112B508()
{
  result = qword_27FE81610;
  if (!qword_27FE81610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81618, &qword_26115F580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81610);
  }

  return result;
}

id PASUITargetViewPresenter.__allocating_init(parentViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithParentViewController_];

  return v3;
}

void *PASUITargetViewPresenter.init(parentViewController:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = [a1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for PASViewControllerPresentationHandler();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v7 = &off_287398688;
  }

  else
  {
    v5 = type metadata accessor for PASDefaultFlowStepsPresentationHandler();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v8 = a1;
    v7 = &protocol witness table for PASDefaultFlowStepsPresentationHandler;
  }

  v13[3] = v5;
  v13[4] = v7;
  v13[0] = v6;
  sub_26111BED4(v13, v12);
  v9 = objc_allocWithZone(ObjectType);
  v10 = PASUITargetViewPresenter.init(navigationController:)(v12);

  __swift_destroy_boxed_opaque_existential_1(v13);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

void *sub_26112B6F4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PASUIProtoAccountPickerProxCardAdapter();
  v3 = swift_allocObject();

  result = sub_26112B7F8(v4);
  *(a1 + 24) = v2;
  *(a1 + 32) = &off_28739AD30;
  *a1 = v3;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_26112B75C(uint64_t a1)
{
  sub_26112DBEC(&qword_27FE81678, MEMORY[0x277D43528], MEMORY[0x277D433C0]);

  sub_26115AF34();
  sub_26112D968();
  return sub_26115B574();
}

void *sub_26112B7F8(uint64_t a1)
{
  v2 = v1;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  swift_allocObject();

  v1[2] = sub_26115A2E4();
  if (MEMORY[0x277D84F90] >> 62 && sub_26115B9A4())
  {
    v3 = sub_261120870(MEMORY[0x277D84F90]);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  v2[3] = v3;
  return v2;
}

void sub_26112B8AC(id a1)
{
  if (*(v1 + 40))
  {
    [a1 removeAction_];
  }

  sub_26115B6F4();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_26115F6A0;
  *(v4 + 24) = v3;
  swift_retain_n();
  v5 = sub_26115B674();

  v10[4] = sub_26112D960;
  v10[5] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_26114D6D0;
  v10[3] = &block_descriptor_54;
  v6 = _Block_copy(v10);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  v8 = [a1 addAction_];

  v9 = *(v1 + 40);
  *(v1 + 40) = v8;
}

uint64_t sub_26112BA78(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_26115B7A4();
  *(v1 + 48) = sub_26115B794();
  v3 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26112BB10, v3, v2);
}

uint64_t sub_26112BB10()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_26115AAE4();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_26112BBB4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81298, &unk_26115E9C0);
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81620, "Fp");
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x28223BE20](v6);
  v64 = v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81058, &unk_26115E2F0);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81628, &unk_26115F630);
  MEMORY[0x28223BE20](v10);
  v12 = v54 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81060, &unk_261161BA0);
  MEMORY[0x28223BE20](v57);
  v56 = v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81630, &qword_26115F640);
  v59 = *(v14 - 8);
  v60 = v14;
  MEMORY[0x28223BE20](v14);
  v58 = v54 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81638, &unk_26115F648);
  v63 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v61 = v54 - v17;
  v18 = sub_26115AD64();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  swift_unknownObjectRetain();
  v22 = sub_26115AD54();
  v23 = sub_26115B804();
  v70 = a1;
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v54[1] = v12;
    v25 = v24;
    v26 = swift_slowAlloc();
    v55 = v16;
    v27 = v26;
    aBlock[0] = v26;
    *v25 = 136446210;
    v71 = v70;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81660, &qword_26115F658);
    v28 = sub_26115B6B4();
    v54[0] = v18;
    v30 = sub_26111C268(v28, v29, aBlock);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_261107000, v22, v23, "PASUIProtoAccountPickerProxCardAdapter attach to presenter: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v31 = v27;
    v16 = v55;
    MEMORY[0x2666FA930](v31, -1, -1);
    MEMORY[0x2666FA930](v25, -1, -1);

    (*(v19 + 8))(v21, v54[0]);
  }

  else
  {

    (*(v19 + 8))(v21, v18);
  }

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA14();
  swift_unknownObjectRelease();
  v55 = *(v2 + 32);
  sub_26115AB14();
  v32 = MEMORY[0x277CBCEC8];
  sub_26111EDDC(&qword_27FE81078, &qword_27FE81060, &unk_261161BA0, MEMORY[0x277CBCEC8]);
  sub_26111EDDC(&qword_27FE81640, &qword_27FE81628, &unk_26115F630, v32);
  v33 = v58;
  sub_26115AD74();
  sub_26111EC34();
  v34 = sub_26115B874();
  aBlock[0] = v34;
  v35 = sub_26115B854();
  v36 = v62;
  (*(*(v35 - 8) + 56))(v62, 1, 1, v35);
  sub_26111EDDC(&qword_27FE81648, &qword_27FE81630, &qword_26115F640, MEMORY[0x277CBCAF0]);
  sub_26112DBEC(&qword_27FE81088, sub_26111EC34, MEMORY[0x277D85228]);
  v37 = v60;
  v38 = v61;
  sub_26115ADC4();
  sub_26110CEE0(v36, &qword_27FE81058, &unk_26115E2F0);

  (*(v59 + 8))(v33, v37);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  v41 = v70;
  *(v40 + 16) = v39;
  *(v40 + 24) = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_26112D0FC;
  *(v42 + 24) = v40;
  sub_26111EDDC(&qword_27FE81650, &qword_27FE81638, &unk_26115F648, MEMORY[0x277CBCD60]);
  swift_unknownObjectRetain();
  sub_26115ADD4();

  (*(v63 + 8))(v38, v16);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v43 = v64;
  sub_26115AB64();
  swift_allocObject();
  swift_weakInit();
  sub_26111EDDC(&qword_27FE81658, &qword_27FE81620, "Fp", v32);
  v44 = v66;
  sub_26115ADD4();

  (*(v65 + 8))(v43, v44);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v45 = v67;
  sub_26115AB24();
  swift_allocObject();
  swift_weakInit();
  sub_26111EDDC(&qword_27FE812A0, &qword_27FE81298, &unk_26115E9C0, v32);
  v46 = v69;
  sub_26115ADD4();

  (*(v68 + 8))(v45, v46);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  *(v49 + 24) = v48;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_26112D1C8;
  *(v50 + 24) = v49;

  v51 = sub_26115B674();
  aBlock[4] = sub_261124808;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26114D6D0;
  aBlock[3] = &block_descriptor_3;
  v52 = _Block_copy(aBlock);
  v53 = [objc_opt_self() actionWithTitle:v51 style:0 handler:v52];

  _Block_release(v52);

  [v41 setDismissButtonAction_];
}

uint64_t sub_26112C740(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_26115AD64();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_26115AD44();
    sub_26111EE24(a1, v46);

    v16 = sub_26115AD54();
    v17 = sub_26115B804();

    if (os_log_type_enabled(v16, v17))
    {
      v38 = v17;
      v39 = a1;
      v40 = a4;
      v41 = v9;
      v42 = v15;
      v18 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v45 = v37;
      *v18 = 136446722;
      sub_26111EE24(v46, &v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81098, &qword_26115E5F0);
      v19 = sub_26115B6B4();
      v21 = v20;
      sub_26110CEE0(v46, &qword_27FE81098, &qword_26115E5F0);
      v22 = sub_26111C268(v19, v21, &v45);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      if (a2)
      {
        if (a2 >> 62)
        {
          v23 = sub_26115B9A4();
        }

        else
        {
          v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v23 = 0;
      }

      a4 = v40;
      v9 = v41;
      v43 = v23;
      v44 = a2 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81668, &qword_26115F688);
      v24 = sub_26115B6B4();
      v26 = sub_26111C268(v24, v25, &v45);

      *(v18 + 14) = v26;
      *(v18 + 22) = 2082;
      v43 = a2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81670, &qword_26115F690);
      v27 = sub_26115B6B4();
      v29 = sub_26111C268(v27, v28, &v45);

      *(v18 + 24) = v29;
      _os_log_impl(&dword_261107000, v16, v38, "PASUIProtoAccountPickerProxCardAdapter publishers updating.\ndevice: %{public}s\n%s member(s): %{public}s", v18, 0x20u);
      v30 = v37;
      swift_arrayDestroy();
      MEMORY[0x2666FA930](v30, -1, -1);
      MEMORY[0x2666FA930](v18, -1, -1);

      (*(v11 + 8))(v13, v10);
      v15 = v42;
      a1 = v39;
      if (!a2)
      {
      }
    }

    else
    {

      sub_26110CEE0(v46, &qword_27FE81098, &qword_26115E5F0);
      (*(v11 + 8))(v13, v10);
      if (!a2)
      {
      }
    }

    if (a2 >> 62)
    {
      if (sub_26115B9A4())
      {
        goto LABEL_12;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_12:
      sub_26112D5E4(a1);
      v31 = sub_26115B674();

      [a4 setTitle_];

      sub_26112B8AC(a4);
    }

    v32 = sub_26115B7D4();
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
    sub_26115B7A4();

    v33 = sub_26115B794();
    v34 = swift_allocObject();
    v35 = MEMORY[0x277D85700];
    v34[2] = v33;
    v34[3] = v35;
    v34[4] = v15;
    sub_261112D1C(0, 0, v9, &unk_26115F680, v34);
  }

  return result;
}

uint64_t sub_26112CC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26115B7A4();
  v4[3] = sub_26115B794();
  v6 = sub_26115B774();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26112CCC0, v6, v5);
}

uint64_t sub_26112CCC0()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_26110C78C;

  return MEMORY[0x2821A4A78]();
}

void sub_26112CD58(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 40);
    v5 = v4;

    if (v4)
    {
      if (v2)
      {
        sub_26115A564();
        if (v6)
        {

          v7 = 1;
        }

        else
        {

          v7 = sub_26115A534();
        }
      }

      else
      {
        v7 = 0;
      }

      [v5 setEnabled_];
    }
  }
}

void sub_26112CE1C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 48);

    [v4 setEnabled_];
  }
}

uint64_t sub_26112CEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = [Strong viewController];
      v7 = *(v4 + 32);
      v8 = swift_allocObject();
      *(v8 + 16) = sub_261112550;
      *(v8 + 24) = v7;
      swift_retain_n();
      sub_26114D9D4(v6, &unk_26115F668, v7, &unk_26115E9E0, v8);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_26112CFDC()
{

  v1 = *(v0 + 48);
}

uint64_t sub_26112D014()
{

  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_26112D0AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26112D104()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26112D178()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_26112D1D0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26115AB04();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  sub_26115AB74();
  sub_26112DBEC(&qword_27FE81678, MEMORY[0x277D43528], MEMORY[0x277D433C0]);
  sub_26115AF44();
  swift_getKeyPath();
  sub_26115AF54();

  type metadata accessor for CGSize(0);
  sub_26115B514();
  sub_26115B514();

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81688, &qword_26115F780) + 36));
  sub_26115AF04();

  sub_26115B7B4();
  *v9 = &unk_26115F778;
  v9[1] = v8;
  *a3 = v7;
  *(a3 + 8) = 1;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  result = v14;
  *(a3 + 40) = v14;
  *(a3 + 56) = v15;
  return result;
}

uint64_t sub_26112D39C(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  sub_26115B7A4();
  v2[8] = sub_26115B794();
  v4 = sub_26115B774();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x2822009F8](sub_26112D434, v4, v3);
}

uint64_t sub_26112D434()
{
  v1 = type metadata accessor for PASUIMonogramMaker();
  v2 = swift_allocObject();
  v0[5] = v1;
  v0[6] = sub_26112DBEC(&qword_27FE812A8, type metadata accessor for PASUIMonogramMaker, &unk_26115D834);
  v0[2] = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_26112335C;

  return MEMORY[0x2821A4A98](v0 + 2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26112D554()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110DB28;

  return sub_261123CEC();
}

uint64_t sub_26112D5E4(uint64_t a1)
{
  v2 = sub_26115A3F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26111EE24(a1, &v13);
  if (v15)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v13, v15);
    sub_26115A434();
    __swift_project_boxed_opaque_existential_1Tm(v12, v12[3]);
    v6 = sub_26115A694();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(&v13);
  }

  else
  {
    sub_26110CEE0(&v13, &qword_27FE81098, &qword_26115E5F0);
    (*(v3 + 104))(v5, *MEMORY[0x277D433B8], v2);
    v6 = sub_26115A3E4();
    v8 = v9;
    (*(v3 + 8))(v5, v2);
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_26115B954();

  v13 = 0xD000000000000018;
  v14 = 0x8000000261164110;
  MEMORY[0x2666F9DF0](v6, v8);

  v10 = sub_26115B6F4();

  return v10;
}

uint64_t sub_26112D7DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26112D81C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26110DB28;

  return sub_26112CC28(a1, v4, v5, v6);
}

uint64_t sub_26112D8D0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26110DB28;

  return sub_26112BA78(v0);
}

unint64_t sub_26112D968()
{
  result = qword_27FE81680;
  if (!qword_27FE81680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81680);
  }

  return result;
}

uint64_t sub_26112D9E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26115AB44();
  *a1 = result;
  return result;
}

uint64_t sub_26112DA40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26110CAC4;

  return sub_26112D39C(v2, v3);
}

unint64_t sub_26112DADC()
{
  result = qword_27FE81690;
  if (!qword_27FE81690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81688, &qword_26115F780);
    sub_26112DB98();
    sub_26112DBEC(&qword_27FE80C70, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81690);
  }

  return result;
}

unint64_t sub_26112DB98()
{
  result = qword_27FE81698;
  if (!qword_27FE81698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81698);
  }

  return result;
}

uint64_t sub_26112DBEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PASFlowStepExtensionProvidedPicker.buildView()()
{
  sub_26112DCD8();

  sub_26115AF34();
  sub_26112DD30();
  return sub_26115B574();
}

unint64_t sub_26112DCD8()
{
  result = qword_27FE816A0;
  if (!qword_27FE816A0)
  {
    sub_26115AC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE816A0);
  }

  return result;
}

unint64_t sub_26112DD30()
{
  result = qword_27FE816A8;
  if (!qword_27FE816A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE816A8);
  }

  return result;
}

uint64_t sub_26112DD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE816B0, &qword_26115F900);
  v22 = *(v5 - 8);
  v23 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v21 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v37 = a2;

  v10 = sub_26115B6F4();
  v20[1] = v11;
  v35 = v10;
  v36 = v11;
  sub_26115AC94();
  sub_26112DCD8();
  sub_26115AF44();
  swift_getKeyPath();
  sub_26115AF54();

  v25 = a1;
  v26 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80EA8, &qword_26115DC08);
  v13 = sub_26112EE10();
  v14 = sub_2611123E4();
  v19 = sub_261112438();
  sub_26115B434();

  v15 = v22;
  v16 = v23;
  (*(v22 + 16))(v21, v9, v23);
  v27 = &_s30ExtensionViewControllerWrapperVN;
  v28 = MEMORY[0x277D837D0];
  v29 = v12;
  v30 = MEMORY[0x277CE0BD8];
  v31 = v13;
  v32 = v14;
  v33 = v19;
  v34 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v17 = sub_26115B574();
  result = (*(v15 + 8))(v9, v16);
  *v24 = v17;
  return result;
}

uint64_t sub_26112E098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v34 = a1;
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80EC8, &qword_26115DC40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80ED0, &qword_26115DC48);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v36 = &v33 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v35 = &v33 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  v39 = sub_26115B6F4();
  v40 = v18;
  sub_26115AE04();
  v19 = sub_26115AE14();
  v20 = *(*(v19 - 8) + 56);
  v20(v7, 0, 1, v19);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  sub_2611123E4();

  sub_26115B564();
  v39 = sub_26115B6F4();
  v40 = v22;
  sub_26115ADF4();
  v20(v7, 0, 1, v19);
  v23 = swift_allocObject();
  *(v23 + 16) = v34;
  *(v23 + 24) = a2;

  v24 = v35;
  sub_26115B564();
  v25 = *(v9 + 16);
  v26 = v36;
  v25(v36, v17, v8);
  v27 = v37;
  v28 = v24;
  v25(v37, v24, v8);
  v29 = v38;
  v25(v38, v26, v8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80ED8, &unk_26115DC50);
  v25(&v29[*(v30 + 48)], v27, v8);
  v31 = *(v9 + 8);
  v31(v28, v8);
  v31(v17, v8);
  v31(v27, v8);
  return (v31)(v26, v8);
}

uint64_t sub_26112E480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  sub_26115B7A4();
  *(v5 + 24) = sub_26115B794();
  v7 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26112E518, v7, v6);
}

uint64_t sub_26112E518()
{

  sub_26115A634();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26112E57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_26115B7D4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_26115B7A4();

  v11 = sub_26115B794();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a1;
  v12[5] = a2;
  sub_261112D1C(0, 0, v9, a4, v12);
}

uint64_t sub_26112E6A0()
{
  v0[2] = sub_26115B7A4();
  v0[3] = sub_26115B794();
  v3 = (*MEMORY[0x277D43428] + MEMORY[0x277D43428]);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26110E430;

  return v3();
}

char *sub_26112E76C()
{
  v0 = sub_26115A2C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26115A4E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AC64();
  sub_26115A4C4();
  (*(v5 + 8))(v7, v4);
  sub_26115A4A4();
  swift_dynamicCast();
  v8 = type metadata accessor for PASUIExtensionHostViewController(0);
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_finished] = 0;
  *&v9[OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___exHostViewController] = 0;
  *&v9[OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___sceneProxy] = 0;
  (*(v1 + 16))(&v9[OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_identity], v3, v0);
  v10 = &v9[OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_sceneID];
  *v10 = 0x746C7561666564;
  v10[1] = 0xE700000000000000;
  v13.receiver = v9;
  v13.super_class = v8;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  (*(v1 + 8))(v3, v0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE816C8, &qword_26115FA30);
  sub_26115B214();
  *&v11[OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_delegate + 8] = &off_287399748;
  swift_unknownObjectWeakAssign();

  return v11;
}

uint64_t sub_26112EA20()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26112EA60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  _s30ExtensionViewControllerWrapperV11CoordinatorCMa();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = v4;
}

uint64_t sub_26112EAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26112F4CC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26112EB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26112F4CC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26112EB7C(uint64_t a1)
{
  sub_26112F4CC();
  sub_26115B1C4();
  __break(1u);
}

void sub_26112EBA4(uint64_t a1@<X8>)
{
  v2 = sub_26115A4E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AC64();
  v6 = sub_26115A4D4();
  (*(v3 + 8))(v5, v2);
  v7 = sub_26115A4F4();

  if (v7)
  {
    *a1 = 1;
  }

  else
  {
    v8 = _s20EmptyProxCardAdapterCMa();
    v9 = swift_allocObject();
    *(a1 + 24) = v8;
    *(a1 + 32) = &off_287399738;
    *a1 = v9;
  }

  *(a1 + 40) = v7 & 1;
}

uint64_t sub_26112ECD0(uint64_t a1)
{
  sub_26112DCD8();

  sub_26115AF34();
  sub_26112DD30();
  return sub_26115B574();
}

uint64_t sub_26112EDB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26115A644();
  *a1 = result & 1;
  return result;
}

unint64_t sub_26112EE10()
{
  result = qword_27FE816B8;
  if (!qword_27FE816B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE816B8);
  }

  return result;
}

uint64_t sub_26112EE64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26112EF10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110CAC4;

  return sub_26112E6A0();
}

uint64_t sub_26112EFD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26110DB28;

  return sub_26112E480(a1, v4, v5, v7, v6);
}

uint64_t sub_26112F090(void *a1, void *a2)
{
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v8 = a1;
  v9 = a2;
  v10 = sub_26115AD54();
  v11 = sub_26115B7F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v8;
    v27 = v15;
    v16 = v15;
    *v13 = 141558530;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2080;
    v17 = sub_26115AA34();
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    v20 = sub_26111C268(v17, v19, &v27);
    v24 = v4;
    v21 = v20;

    *(v13 + 14) = v21;
    *(v13 + 22) = 2114;
    *(v13 + 24) = v9;
    *v14 = v9;
    v22 = v9;
    _os_log_impl(&dword_261107000, v10, v11, "ExtensionViewControllerWrapper.Coordinator hostViewController didPick account: %{mask.hash}s, context: %{public}@", v13, 0x20u);
    sub_26112F444(v14);
    MEMORY[0x2666FA930](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x2666FA930](v16, -1, -1);
    MEMORY[0x2666FA930](v13, -1, -1);

    (*(v25 + 8))(v7, v24);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return sub_26115AC74();
}

uint64_t sub_26112F2FC()
{
  v0 = sub_26115AD64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v4 = sub_26115AD54();
  v5 = sub_26115B7F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_261107000, v4, v5, "ExtensionViewControllerWrapper.Coordinator hostViewControllerWantsToPromptForFlowCancel", v6, 2u);
    MEMORY[0x2666FA930](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return sub_26115A604();
}

uint64_t sub_26112F444(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81EB0, &qword_26115F960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26112F4CC()
{
  result = qword_27FE816C0;
  if (!qword_27FE816C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE816C0);
  }

  return result;
}

uint64_t PASFlowStepSendSelectedAccount.buildView()()
{
  sub_26110CC00();

  return sub_26115B574();
}

uint64_t sub_26112F55C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PASUIProgressViewProxCardAdapter();
  swift_allocObject();

  result = sub_2611519E8(v3);
  *(a1 + 24) = v2;
  *(a1 + 32) = &off_28739AD30;
  *a1 = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_26112F5C8()
{
  sub_26110CC00();

  return sub_26115B574();
}

uint64_t PASFlowStepLocalAuth.buildView()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE816D0, &unk_26115FA60);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  v7 = type metadata accessor for PASUIAppleIDAuthContextProvider();
  v8 = [objc_allocWithZone(v7) init];
  v16 = v7;
  v17 = &off_287399F58;
  v15 = v8;
  sub_26112F820();

  v13 = sub_26115AF34();
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81378, qword_26115EF58);
  swift_allocObject();
  v18 = sub_26115A2E4();
  v10 = sub_26112F878();
  sub_26115B414();
  sub_26112F8CC(&v13);
  (*(v1 + 16))(v4, v6, v0);
  v13 = &type metadata for PASUILocalAuthView;
  v14 = v10;
  swift_getOpaqueTypeConformance2();
  v11 = sub_26115B574();
  (*(v1 + 8))(v6, v0);
  return v11;
}

unint64_t sub_26112F820()
{
  result = qword_27FE816D8;
  if (!qword_27FE816D8)
  {
    sub_26115A524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE816D8);
  }

  return result;
}

unint64_t sub_26112F878()
{
  result = qword_27FE816E0;
  if (!qword_27FE816E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE816E0);
  }

  return result;
}

uint64_t sub_26112F94C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_26112FC98(v1, &v18);
  v4 = swift_allocObject();
  v5 = v19;
  v4[1] = v18;
  v4[2] = v5;
  v6 = v21;
  v4[3] = v20;
  v4[4] = v6;
  sub_26115A514();
  v7 = sub_26115A414();
  v9 = v8;

  if (v9 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v12 = sub_26115A1F4();
    v10 = [v11 initWithData_];

    sub_26112B158(v7, v9);
  }

  sub_26112FC98(v2, &v18);
  v13 = swift_allocObject();
  v14 = v19;
  v13[1] = v18;
  v13[2] = v14;
  v15 = v21;
  v13[3] = v20;
  v13[4] = v15;
  result = sub_26111BED4(v2 + 16, a1 + 72);
  *(a1 + 112) = &unk_26115FB40;
  *(a1 + 120) = v13;
  *a1 = sub_26112FCD4;
  *(a1 + 8) = v4;
  *(a1 + 16) = sub_261127804;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0;
  v17 = MEMORY[0x277D84F90];
  *(a1 + 56) = 0;
  *(a1 + 64) = v17;
  return result;
}

uint64_t sub_26112FAD4()
{
  sub_26115A514();
  sub_26115A404();

  v0 = sub_26115B6E4();

  return v0;
}

uint64_t sub_26112FB5C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_26115B7A4();
  v2[4] = sub_26115B794();
  v4 = sub_26115B774();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_26112FBF4, v4, v3);
}

uint64_t sub_26112FBF4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_261127E00;
  v2 = *(v0 + 16);

  return MEMORY[0x2821A4758](v2);
}

uint64_t objectdestroyTm_4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26112FD24(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26110CAC4;

  return sub_26112FB5C(a1, v1 + 16);
}

uint64_t sub_26112FDE4()
{
  v3 = (*(*(v0 + 16) + 24) + **(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26112FED0;

  return v3();
}

uint64_t sub_26112FED0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2611300D0()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_261130134()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261130174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26110CAC4;

  return sub_26112FDC4(a1, v4, v5, v6);
}

void sub_261130250(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2611302B8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    [v2 setInterruptionHandler_];
    [v2 setInvalidationHandler_];
    [v2 invalidate];

    v1 = *(v0 + 16);
  }

  swift_unknownObjectRelease();
  sub_26111D830(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_261130374(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = objc_opt_self();
  v8 = [v7 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  [a1 setExportedObject_];
  v9 = [v7 interfaceWithProtocol_];
  [a1 setExportedInterface_];

  v10 = swift_allocObject();
  *(v10 + 16) = sub_261131454;
  *(v10 + 24) = v6;
  v14[4] = sub_261131494;
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_26113432C;
  v14[3] = &block_descriptor_4;
  v11 = _Block_copy(v14);

  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_261131454;
  *(v12 + 24) = v6;

  sub_261130D14(sub_2611314B4, v12);
}

uint64_t sub_2611305BC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26115B5D4();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26115B5F4();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26112B474(0, &qword_27FE81E90, 0x277D85C78);
  v12 = sub_26115B874();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;
  aBlock[4] = sub_26113152C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26113432C;
  aBlock[3] = &block_descriptor_37;
  v14 = _Block_copy(aBlock);

  v15 = a1;

  sub_26115B5E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_261131538();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81EA0, &qword_261160190);
  sub_261131590();
  sub_26115B904();
  MEMORY[0x2666F9F60](0, v11, v8, v14);
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_261130874(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = *(v5 + 16);
      if (v8)
      {
        sub_26112B474(0, &qword_27FE81700, 0x277CCAE80);
        v9 = v7;
        v10 = v8;
        v11 = sub_26115B8D4();

        if ((v11 & 1) == 0)
        {

          return;
        }

        sub_261130EF8();
        if (swift_unknownObjectWeakLoadStrong())
        {
          if (![objc_opt_self() isMainThread])
          {
            __break(1u);
            return;
          }

          sub_26114A0B8(a3, 0, 1);
          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }
}

void sub_2611309C0(void (*a1)(void))
{
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v6 = sub_26115AD54();
  v7 = sub_26115B814();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_261107000, v6, v7, "PASUIExtensionProxy configure.interruptionHandler host's XPC connection to extension scene interrupted", v8, 2u);
    MEMORY[0x2666FA930](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4097 userInfo:0];
  a1();
}

void sub_261130B48(void *a1, void (*a2)(void *))
{
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    sub_26115AD44();
    v9 = a1;
    v10 = sub_26115AD54();
    v11 = sub_26115B814();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_261107000, v10, v11, "PASUIExtensionProxy configure.hello.completion hello message from host to extension scene failed: %{public}@", v12, 0xCu);
      sub_26112F444(v13);
      MEMORY[0x2666FA930](v13, -1, -1);
      MEMORY[0x2666FA930](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    a2(a1);
  }
}

uint64_t sub_261130D14(uint64_t (*a1)(), uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v16 = sub_2611314BC;
  v17 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_261130250;
  v15 = &block_descriptor_28;
  v7 = _Block_copy(&aBlock);

  v8 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_26115B8F4();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE816E8, qword_26115FCB0);
  swift_dynamicCast();
  v16 = a1;
  v17 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_261149B54;
  v15 = &block_descriptor_31;
  v9 = _Block_copy(&aBlock);

  [v11 helloWithCompletion_];
  _Block_release(v9);
  return swift_unknownObjectRelease();
}

void sub_261130EF8()
{
  v1 = v0;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = v6;
      sub_26115AD44();
      v8 = sub_26115AD54();
      v9 = sub_26115B7F4();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_261107000, v8, v9, "PASUIExtensionProxy tearDownConnection invalidating host's XPC connection to extension scene", v10, 2u);
        MEMORY[0x2666FA930](v10, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      v11 = *(v1 + 16);
      *(v1 + 16) = 0;

      [v7 setInterruptionHandler_];
      [v7 setInvalidationHandler_];
      [v7 invalidate];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2611310EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_26115AD64();
  MEMORY[0x28223BE20](v3);
  v4 = objc_opt_self();
  if (![v4 isMainThread])
  {
    __break(1u);
    __break(1u);
    goto LABEL_7;
  }

  v5 = sub_26114AAE0();
  if (![v4 isMainThread])
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_261130EF8();
  sub_261130374(v5);
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
  v7 = v5;

  [v7 activate];
}

uint64_t sub_2611313A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2611313DC()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261131414()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26113145C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2611314E4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_261131538()
{
  result = qword_27FE816F0;
  if (!qword_27FE816F0)
  {
    sub_26115B5D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE816F0);
  }

  return result;
}

unint64_t sub_261131590()
{
  result = qword_27FE816F8;
  if (!qword_27FE816F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE81EA0, &qword_261160190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE816F8);
  }

  return result;
}

void sub_261131730()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = objc_allocWithZone(PASUIMicaPlayer);
  v5 = sub_26115B674();
  v6 = [v4 initWithFileName:v5 retinaScale:v3];

  v7 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI13PASUIMicaView_micaPlayer;
  v8 = *&v0[OBJC_IVAR____TtC23ProximityAppleIDSetupUI13PASUIMicaView_micaPlayer];
  *&v0[OBJC_IVAR____TtC23ProximityAppleIDSetupUI13PASUIMicaView_micaPlayer] = v6;
  v9 = v6;

  if (!v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = [v0 layer];
  [v9 addToLayer:v10 onTop:1 gravity:*MEMORY[0x277CDA710]];

  v11 = *&v0[v7];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v11 pause];
  v12 = *&v0[v7];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = [v12 rootLayer];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = [objc_opt_self() systemBlueColor];
  v16 = [v15 CGColor];

  [v14 mp:v16 setFillOfAllShapeLayersToColor:?];
}

id sub_2611319CC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PASUIMicaView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_261131A34@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_2611122C8(v2, v3);

  return sub_2611122C8(v4, v5);
}

uint64_t sub_261131A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26115A3F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D433B8], v4);
  v8 = sub_26115A3E4();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_26115B954();

  v13 = 0xD000000000000017;
  v14 = 0x80000002611643E0;
  if (a2)
  {

    v10 = a2;
  }

  else
  {
    a1 = v8;
  }

  MEMORY[0x2666F9DF0](a1, v10);

  v11 = sub_26115B6F4();

  return v11;
}

uint64_t sub_261131C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26115A3F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x277D433B8], v8);
  v12 = sub_26115A3E4();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_26115B954();

  v18 = 0xD000000000000010;
  v19 = 0x80000002611643C0;
  v15 = a4;
  if (!a4)
  {

    a3 = v12;
    v15 = v14;
  }

  MEMORY[0x2666F9DF0](a3, v15);

  MEMORY[0x2666F9DF0](95, 0xE100000000000000);
  if (a2)
  {

    v14 = a2;
  }

  else
  {
    a1 = v12;
  }

  MEMORY[0x2666F9DF0](a1, v14);

  v16 = sub_26115B6F4();

  return v16;
}

uint64_t sub_261131DFC(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_261131E58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

unint64_t sub_261131EDC()
{
  result = qword_27FE81710[0];
  if (!qword_27FE81710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE81710);
  }

  return result;
}

uint64_t sub_261131F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_261131FC8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a4;
  v39 = a3;
  v43 = a7;
  v9 = *(a5 - 8);
  v41 = a6;
  v42 = v9;
  MEMORY[0x28223BE20](a1);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v12;
  v34 = type metadata accessor for PASPresentationControllerView.ViewControllerRepresentable(255, v12, v14, v13);
  v35 = sub_26115AF84();
  WitnessTable = swift_getWitnessTable();
  v50 = WitnessTable;
  v51 = MEMORY[0x277CDF900];
  v40 = MEMORY[0x277CDFAD8];
  v36 = swift_getWitnessTable();
  v37 = sub_26115B0F4();
  v15 = sub_26115AF84();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  v22 = a1;
  v48 = a1;
  v49 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE81798, &qword_26115FED8);
  sub_26115B524();
  v23 = v46;
  v39(v46);

  v48 = v22;
  v49 = a2;
  sub_26115B524();
  v24 = v46;
  sub_26115B444();

  v25 = v48;
  v46 = v48;
  v47 = v49;
  sub_26115B5C4();
  v26 = v32;
  v27 = v41;
  sub_26115B344();

  (*(v42 + 8))(v11, v26);
  v28 = swift_getWitnessTable();
  v44 = v27;
  v45 = v28;
  swift_getWitnessTable();
  sub_2611295EC();
  v29 = *(v16 + 8);
  v29(v19, v15);
  sub_2611295EC();
  return (v29)(v21, v15);
}

uint64_t sub_261132368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2611323A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PASPresentationControllerView.ViewControllerRepresentable(255, *a1, a1[1], a4);
  sub_26115AF84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26115B0F4();
  sub_26115AF84();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

id sub_2611324C0()
{
  nullsub_1();

  return v0;
}

uint64_t sub_2611324F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_261132570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_2611325EC(uint64_t a1)
{
  swift_getWitnessTable();
  sub_26115B1C4();
  __break(1u);
}

uint64_t PASFlowStepSendAuthResults.buildView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81820, qword_261160010);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v11[0] = v0;
  v8 = sub_2611327AC();
  sub_26115B414();
  (*(v2 + 16))(v5, v7, v1);
  v11[0] = &type metadata for PASUISendAuthResultsView;
  v11[1] = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_26115B574();
  (*(v2 + 8))(v7, v1);
  return v9;
}

unint64_t sub_2611327AC()
{
  result = qword_27FE81828;
  if (!qword_27FE81828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81828);
  }

  return result;
}

uint64_t sub_261132800()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81820, qword_261160010);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v11[0] = *v0;
  v8 = sub_2611327AC();
  sub_26115B414();
  (*(v2 + 16))(v5, v7, v1);
  v11[0] = &type metadata for PASUISendAuthResultsView;
  v11[1] = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_26115B574();
  (*(v2 + 8))(v7, v1);
  return v9;
}

double sub_2611329B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C48, &unk_261160100) + 36));
  sub_26115AF04();
  swift_retain_n();
  sub_26115B7B4();
  *v4 = &unk_2611600F8;
  v4[1] = a1;
  *a2 = sub_26110C934;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  *(a2 + 24) = sub_26110C93C;
  *(a2 + 32) = 0;
  *(a2 + 40) = sub_26110C970;
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 1;
  *(a2 + 88) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_261132A90()
{
  v0[2] = sub_26115B7A4();
  v0[3] = sub_26115B794();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26110E430;

  return MEMORY[0x2821A4A28]();
}

uint64_t sub_261132B48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110CAC4;

  return sub_261132A90();
}

id sub_261132BDC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    [v3 setSuspended_];
    v4 = sub_261132C7C();
    [v3 setUnderlyingQueue_];

    v5 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_261132C7C()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[4];
  }

  else
  {
    v3 = sub_261132CD8(v0);
    v4 = v0[4];
    v0[4] = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_261132CD8(void *a1)
{
  v10 = sub_26115B864();
  v1 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26115B844();
  MEMORY[0x28223BE20](v4);
  v5 = sub_26115B5F4();
  MEMORY[0x28223BE20](v5 - 8);
  sub_26112B474(0, &qword_27FE81E90, 0x277D85C78);
  v6 = sub_26115BAC4();
  v9[2] = v7;
  v9[3] = v6;
  v9[1] = sub_26115B874();
  sub_26115B5E4();
  v11 = MEMORY[0x277D84F90];
  sub_261134CC0(&qword_27FE81830, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81838, &unk_261160198);
  sub_261134D08(&qword_27FE81840, &qword_27FE81838, &unk_261160198);
  sub_26115B904();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v10);
  return sub_26115B894();
}

uint64_t sub_261132F64()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    type metadata accessor for PASUIExtensionHostProxy.InfoProvider();
    v1 = swift_allocObject();
    *(v0 + 40) = v1;
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t PASUIExtensionHostProxy.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    [v2 setInterruptionHandler_];
    [v2 setInvalidationHandler_];
    [v2 invalidate];

    v1 = *(v0 + 16);
  }

  swift_unknownObjectRelease();
  return v0;
}

uint64_t PASUIExtensionHostProxy.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    [v2 setInterruptionHandler_];
    [v2 setInvalidationHandler_];
    [v2 invalidate];

    v1 = *(v0 + 16);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void sub_2611330E0(void *a1)
{
  v2 = v1;
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  if ([objc_opt_self() isMainThread])
  {
    sub_26115AD44();
    v11 = sub_26115AD54();
    v12 = sub_26115B7F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_261107000, v11, v12, "PASUIExtensionHostProxy connectToHost extension is accepting new connection from the host", v13, 2u);
      MEMORY[0x2666FA930](v13, -1, -1);
    }

    v14 = *(v5 + 8);
    v14(v10, v4);
    sub_261133A88();
    sub_26113334C(a1);
    v15 = *(v2 + 16);
    *(v2 + 16) = a1;
    v16 = a1;

    [v16 activate];
    sub_26115AD44();
    v17 = sub_26115AD54();
    v18 = sub_26115B7F4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_261107000, v17, v18, "PASUIExtensionHostProxy connectToHost resuming queue for sending messages back to extension host", v19, 2u);
      MEMORY[0x2666FA930](v19, -1, -1);
    }

    v14(v8, v4);
    v20 = sub_261132BDC();
    [v20 setSuspended_];
  }

  else
  {
    __break(1u);
  }
}

void sub_26113334C(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  swift_unknownObjectRelease();
  v4 = [v2 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v9[4] = sub_261134C70;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26113432C;
  v9[3] = &block_descriptor_35;
  v8 = _Block_copy(v9);

  [a1 setInterruptionHandler_];
  _Block_release(v8);
}

uint64_t sub_261133514(uint64_t a1, uint64_t a2)
{
  v2 = sub_26115B5D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26115B5F4();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26112B474(0, &qword_27FE81E90, 0x277D85C78);
  v16 = sub_26115B874();
  v9 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v10 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  aBlock[4] = sub_261134CB8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26113432C;
  aBlock[3] = &block_descriptor_43;
  v13 = _Block_copy(aBlock);

  sub_26115B5E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_261134CC0(&qword_27FE816F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81EA0, &qword_261160190);
  sub_261134D08(&qword_27FE816F8, &unk_27FE81EA0, &qword_261160190);
  sub_26115B904();
  v14 = v16;
  MEMORY[0x2666F9F60](0, v8, v5, v13);
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v6 + 8))(v8, v17);
}

void sub_261133880(uint64_t a1, uint64_t a2)
{
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
LABEL_10:

    return;
  }

  v9 = v8;
  v10 = *(v7 + 16);
  if (!v10)
  {

    goto LABEL_10;
  }

  sub_26112B474(0, &qword_27FE81700, 0x277CCAE80);
  v11 = v9;
  v12 = v10;
  v13 = sub_26115B8D4();

  if (v13)
  {
    sub_26115AD44();
    v14 = sub_26115AD54();
    v15 = sub_26115B814();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_261107000, v14, v15, "PASUIExtensionHostProxy configure.interruptionHandler connection from extension to host interrupted. Invalidating it.", v16, 2u);
      MEMORY[0x2666FA930](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_261133A88();
  }
}

void sub_261133A88()
{
  v1 = v0;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  if ([objc_opt_self() isMainThread])
  {
    v9 = *(v1 + 16);
    if (v9)
    {
      v10 = v9;
      sub_26115AD44();
      v11 = sub_26115AD54();
      v12 = sub_26115B814();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_261107000, v11, v12, "PASUIExtensionHostProxy tearDownConnection extension received another host connection. Invalidating the first connection.", v13, 2u);
        MEMORY[0x2666FA930](v13, -1, -1);
      }

      v14 = *(v3 + 8);
      v14(v8, v2);
      v15 = *(v1 + 16);
      *(v1 + 16) = 0;

      [v10 setInterruptionHandler_];
      [v10 setInvalidationHandler_];
      [v10 invalidate];
      sub_26115AD44();
      v16 = sub_26115AD54();
      v17 = sub_26115B7F4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261107000, v16, v17, "PASUIExtensionHostProxy tearDownConnection suspending queue for sending messages back to extension host", v18, 2u);
        MEMORY[0x2666FA930](v18, -1, -1);
      }

      v14(v6, v2);
      v19 = sub_261132BDC();
      [v19 setSuspended_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_261133D14(void *a1, void *a2)
{
  v4 = sub_261132BDC();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v10[4] = sub_261134118;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_26113432C;
  v10[3] = &block_descriptor_5;
  v7 = _Block_copy(v10);
  v8 = a1;
  v9 = a2;

  [v4 addOperationWithBlock_];
  _Block_release(v7);
}

uint64_t sub_261133E30()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_261133E68(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_26115AD64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 16);
    if (v10)
    {
      v26 = Strong;
      v11 = v10;
      sub_26115AD44();
      v12 = a2;
      v13 = sub_26115AD54();
      v14 = sub_26115B7F4();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v11;
        v27 = v24;
        *v15 = 141558274;
        *(v15 + 4) = 1752392040;
        *(v15 + 12) = 2080;
        v16 = sub_26115AA24();
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v16 = 0;
          v18 = 0xE000000000000000;
        }

        v19 = v12;
        v20 = a3;
        v21 = sub_26111C268(v16, v18, &v27);

        *(v15 + 14) = v21;
        a3 = v20;
        v12 = v19;
        _os_log_impl(&dword_261107000, v13, v14, "PASUIExtensionHostProxy didPick informing host about picked account %{mask.hash}s", v15, 0x16u);
        v22 = v24;
        __swift_destroy_boxed_opaque_existential_1(v24);
        v11 = v25;
        MEMORY[0x2666FA930](v22, -1, -1);
        MEMORY[0x2666FA930](v15, -1, -1);
      }

      (*(v6 + 8))(v8, v5);
      sub_261134130(v12, a3, sub_261134124, 0);
    }

    else
    {
    }
  }
}

uint64_t sub_2611340D0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261134130(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v20 = sub_261134DDC;
  v21 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_261130250;
  v19 = &block_descriptor_59;
  v11 = _Block_copy(&aBlock);

  v12 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v11);
  sub_26115B8F4();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81848, &qword_2611601A8);
  swift_dynamicCast();
  v20 = a3;
  v21 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_261149B54;
  v19 = &block_descriptor_62_0;
  v13 = _Block_copy(&aBlock);

  [v15 extensionDidFinishWith:a1 context:a2 completion:v13];
  _Block_release(v13);
  return swift_unknownObjectRelease();
}

uint64_t sub_26113432C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_261134388()
{
  v0 = sub_261132BDC();
  v1 = swift_allocObject();
  swift_weakInit();
  v3[4] = sub_261134618;
  v3[5] = v1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_26113432C;
  v3[3] = &block_descriptor_7;
  v2 = _Block_copy(v3);

  [v0 addOperationWithBlock_];
  _Block_release(v2);
}

void sub_26113446C(uint64_t a1)
{
  v1 = sub_26115AD64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 16);
    if (v6)
    {
      v7 = v6;
      sub_26115AD44();
      v8 = sub_26115AD54();
      v9 = sub_26115B7F4();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_261107000, v8, v9, "PASUIExtensionHostProxy promptForFlowCancel", v10, 2u);
        MEMORY[0x2666FA930](v10, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      sub_261134874(sub_2611346A4, 0);
    }

    else
    {
    }
  }
}

uint64_t sub_2611346B0(void *a1, const char *a2, ...)
{
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    sub_26115AD44();
    v10 = a1;
    v11 = sub_26115AD54();
    v12 = sub_26115B814();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_261107000, v11, v12, a2, v13, 0xCu);
      sub_26112F444(v14);
      MEMORY[0x2666FA930](v14, -1, -1);
      MEMORY[0x2666FA930](v13, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_261134874(uint64_t (*a1)(uint64_t a1), uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v16 = sub_261134D94;
  v17 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_261130250;
  v15 = &block_descriptor_49;
  v7 = _Block_copy(&aBlock);

  v8 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_26115B8F4();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81848, &qword_2611601A8);
  swift_dynamicCast();
  v16 = a1;
  v17 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_261149B54;
  v15 = &block_descriptor_52;
  v9 = _Block_copy(&aBlock);

  [v11 promptForFlowCancelWithCompletion_];
  _Block_release(v9);
  return swift_unknownObjectRelease();
}

uint64_t sub_261134AE0(uint64_t a1)
{
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v6 = sub_26115AD54();
  v7 = sub_26115B7F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_261107000, v6, v7, "PASUIExtensionHostProxy hello received hello from host", v8, 2u);
    MEMORY[0x2666FA930](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return (*(a1 + 16))(a1, 0);
}

uint64_t sub_261134C34()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_31Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261134CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261134D08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_261134D5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t PASFlowStepSendSignInResults.buildView()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81850, qword_2611601B0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  sub_261134FF4();

  v7 = sub_26115AF34();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81378, qword_26115EF58);
  swift_allocObject();
  v10 = sub_26115A2E4();
  v15 = v7;
  v16 = v9;
  v17 = v10;
  v11 = sub_26113504C();
  sub_26115B414();

  (*(v1 + 16))(v4, v6, v0);
  v15 = &type metadata for PASUISendSignInResultsView;
  v16 = v11;
  swift_getOpaqueTypeConformance2();
  v12 = sub_26115B574();
  (*(v1 + 8))(v6, v0);
  return v12;
}

unint64_t sub_261134FF4()
{
  result = qword_27FE81858;
  if (!qword_27FE81858)
  {
    sub_26115AAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81858);
  }

  return result;
}

unint64_t sub_26113504C()
{
  result = qword_27FE81860;
  if (!qword_27FE81860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81860);
  }

  return result;
}

uint64_t sub_2611350A0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81850, qword_2611601B0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  sub_261134FF4();

  v8 = sub_26115AF34();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81378, qword_26115EF58);
  swift_allocObject();
  v11 = sub_26115A2E4();
  v16 = v8;
  v17 = v10;
  v18 = v11;
  v12 = sub_26113504C();
  sub_26115B414();

  (*(v2 + 16))(v5, v7, v1);
  v16 = &type metadata for PASUISendSignInResultsView;
  v17 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = sub_26115B574();
  (*(v2 + 8))(v7, v1);
  return v13;
}

uint64_t sub_2611352C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;

  sub_26115AAC4();
  __swift_project_boxed_opaque_existential_1Tm(v18, v18[3]);
  v9 = sub_26115A494();
  if (v10 >> 60 == 15)
  {
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    v12 = 0;
  }

  else
  {
    v13 = v9;
    v14 = v10;
    __swift_destroy_boxed_opaque_existential_1(v18);
    v15 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v16 = sub_26115A1F4();
    v12 = [v15 initWithData_];

    result = sub_26112B158(v13, v14);
  }

  *a4 = sub_261135500;
  *(a4 + 8) = v8;
  *(a4 + 16) = sub_261127804;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  *(a4 + 40) = v12;
  *(a4 + 48) = 0;
  v17 = MEMORY[0x277D84F90];
  *(a4 + 56) = 0;
  *(a4 + 64) = v17;
  return result;
}

uint64_t sub_261135414(uint64_t a1)
{
  sub_26115AAC4();
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_26115A484();
  v1 = sub_26115B6E4();

  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1;
}

uint64_t sub_2611354C0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261135560@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2611368B4(a3, v13);
  v7 = swift_allocObject();
  v8 = v13[1];
  *(v7 + 16) = v13[0];
  *(v7 + 32) = v8;
  *(v7 + 48) = v13[2];
  *(v7 + 64) = v14;
  *(v7 + 72) = a1;
  v9 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818F8, &qword_2611603E8) + 36));
  sub_26115AF04();
  v10 = a1;
  sub_26115B7B4();
  *v9 = &unk_2611603E0;
  v9[1] = v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E8, &qword_2611603D0);
  return (*(*(v11 - 8) + 16))(a4, a2, v11);
}

uint64_t sub_261135670(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_26115B7A4();
  v2[4] = sub_26115B794();
  v4 = sub_26115B774();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_261135708, v4, v3);
}

uint64_t sub_261135708()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[5];
  v4 = *__swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  v5 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  v0[7] = v5;
  [v5 setPresentingViewController_];
  [v5 setDelegate_];
  v8 = (v3 + *v3);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_261135858;

  return v8(v5);
}

uint64_t sub_261135858()
{
  v1 = *v0;
  v2 = *(*v0 + 56);

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_261127F20, v4, v3);
}

void *sub_261135998@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E8, &qword_2611603D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  (*(v6 + 16))(v16 - v8, a1, v5);
  sub_2611368B4(v2, v17);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  v12 = v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = v17[1];
  *v12 = v17[0];
  *(v12 + 16) = v13;
  *(v12 + 32) = v17[2];
  *(v12 + 48) = v18;
  v16[0] = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  sub_261122758();
  result = sub_26115B514();
  v15 = v16[2];
  *a2 = v16[1];
  a2[1] = v15;
  a2[2] = sub_2611369A0;
  a2[3] = v11;
  return result;
}

uint64_t sub_261136088(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_261136134;

  return sub_261136634();
}

uint64_t sub_261136134(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v4)
  {
    v6 = *(v3 + 16);
    (v6)[2](v6, a1);

    _Block_release(v6);
  }

  else
  {
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_261136278()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2611362C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26110DB28;

  return sub_261136088(v2, v3);
}

uint64_t sub_261136378()
{
  v0 = sub_26115AD64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v4 = sub_26115AD54();
  v5 = sub_26115B834();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_261107000, v4, v5, "PASUIAppleIDAuthContextProvider remoteUIStyle", v6, 2u);
    MEMORY[0x2666FA930](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_2611364B0(const char *a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = v2;
  v6 = sub_26115AD64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v10 = sub_26115AD54();
  v11 = sub_26115B834();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_261107000, v10, v11, a1, v12, 2u);
    MEMORY[0x2666FA930](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v13 = v5 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI31PASUIAppleIDAuthContextProvider_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    a2(ObjectType, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261136634()
{
  v1 = sub_26115AD64();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611366F0, 0, 0);
}

uint64_t sub_2611366F0(uint64_t a1)
{
  sub_26115AD44();
  v2 = sub_26115AD54();
  v3 = sub_26115B834();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261107000, v2, v3, "PASUIAppleIDAuthContextProvider signAdditionalHeaders", v4, 2u);
    MEMORY[0x2666FA930](v4, -1, -1);
  }

  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8(0);
}

uint64_t sub_2611367F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26113683C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2611368EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E8, &qword_2611603D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, v5 + 56, v3 | 7);
}

uint64_t sub_2611369A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E8, &qword_2611603D0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_261135560(a1, v2 + v6, v7, a2);
}

uint64_t sub_261136A58()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_261136AA0()
{
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26110CAC4;

  return sub_261135670(v0 + 16, v2);
}

unint64_t sub_261136B40()
{
  result = qword_27FE81900;
  if (!qword_27FE81900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81908, &unk_2611603F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81900);
  }

  return result;
}

uint64_t sub_261136BA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE900000000000065;
  v4 = 0x636E614372657375;
  if (a1 == 2)
  {
    v4 = 0x7669746341746F6ELL;
  }

  else
  {
    v3 = 0xED000064656C6C65;
  }

  v5 = 0xD000000000000010;
  v6 = 0x8000000261162890;
  if (a1)
  {
    v5 = 0x4179646165726C61;
    v6 = 0xED00006576697463;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x7669746341746F6ELL;
    }

    else
    {
      v11 = 0x636E614372657375;
    }

    if (a2 == 2)
    {
      v10 = 0xE900000000000065;
    }

    else
    {
      v10 = 0xED000064656C6C65;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x4179646165726C61;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2)
    {
      v10 = 0xED00006576697463;
    }

    else
    {
      v10 = 0x8000000261162890;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_26115B9F4();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_261136D18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006576697463;
  v3 = 0x4179646165726C61;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0x636E614372657375;
    }

    if (v4 == 2)
    {
      v6 = 0x8000000261162920;
    }

    else
    {
      v6 = 0xED000064656C6C65;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x7669746341746F6ELL;
    }

    else
    {
      v5 = 0x4179646165726C61;
    }

    if (v4)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0xED00006576697463;
    }
  }

  v7 = 0xD000000000000016;
  v8 = 0x8000000261162920;
  if (a2 != 2)
  {
    v7 = 0x636E614372657375;
    v8 = 0xED000064656C6C65;
  }

  if (a2)
  {
    v3 = 0x7669746341746F6ELL;
    v2 = 0xE900000000000065;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26115B9F4();
  }

  return v11 & 1;
}

ProximityAppleIDSetupUI::PASUISourceViewPresenterError_optional __swiftcall PASUISourceViewPresenterError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26115B9D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PASUISourceViewPresenterError.rawValue.getter()
{
  v1 = 0x4179646165726C61;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0x636E614372657375;
  }

  if (*v0)
  {
    v1 = 0x7669746341746F6ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_261136F88()
{
  sub_26115BA94();
  sub_26115B704();

  return sub_26115BAB4();
}

uint64_t sub_26113706C(uint64_t a1)
{
  sub_26115B704();
}

uint64_t sub_26113713C(uint64_t a1)
{
  sub_26115BA94();
  sub_26115B704();

  return sub_26115BAB4();
}

void sub_261137228(unint64_t *a1@<X8>)
{
  v2 = 0xED00006576697463;
  v3 = 0x4179646165726C61;
  v4 = 0x8000000261162920;
  v5 = 0xD000000000000016;
  if (*v1 != 2)
  {
    v5 = 0x636E614372657375;
    v4 = 0xED000064656C6C65;
  }

  if (*v1)
  {
    v3 = 0x7669746341746F6ELL;
    v2 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2611372D4(uint64_t a1)
{
  v2 = sub_26114079C();

  return MEMORY[0x2821A4B70](a1, v2);
}

uint64_t sub_261137310(uint64_t a1)
{
  v2 = sub_26114079C();

  return MEMORY[0x2821A4B88](a1, v2);
}

uint64_t sub_26113734C(uint64_t a1)
{
  v2 = sub_26114079C();

  return MEMORY[0x2821A4B78](a1, v2);
}

uint64_t sub_261137388(uint64_t a1)
{
  v2 = sub_26114079C();

  return MEMORY[0x2821A4B80](a1, v2);
}

uint64_t sub_2611373C4(uint64_t a1)
{
  v2 = sub_26114079C();
  v3 = sub_2611407F0();

  return MEMORY[0x2821A4B90](a1, v2, v3);
}

uint64_t sub_261137414(uint64_t a1)
{
  v2 = sub_26114009C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261137450(uint64_t a1)
{
  v2 = sub_26114009C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASUISourceViewPresenter.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PASUISourceViewPresenter.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___PASUIGuardianViewPresenter_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_261113830;
}

uint64_t sub_261137684()
{
  v1 = OBJC_IVAR___PASUIGuardianViewPresenter____lazy_storage___analytics;
  if (*(v0 + OBJC_IVAR___PASUIGuardianViewPresenter____lazy_storage___analytics))
  {
    v2 = *(v0 + OBJC_IVAR___PASUIGuardianViewPresenter____lazy_storage___analytics);
  }

  else
  {
    v2 = sub_2611376EC(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2611376EC(uint64_t a1)
{
  v1 = sub_26115A254();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_26115A2D4();

  __swift_project_boxed_opaque_existential_1Tm(&v13, v15);
  sub_261140BF0();
  v5 = sub_26115AA94();
  __swift_destroy_boxed_opaque_existential_1(&v13);
  sub_26115A244();
  v6 = sub_26115A234();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D435B0];
  v15 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D435B0];
  v13 = v6;
  v14 = v8;
  sub_26115A364();
  __swift_destroy_boxed_opaque_existential_1(&v13);
  v15 = v9;
  v16 = v10;
  v13 = 0x656372756F73;
  v14 = 0xE600000000000000;
  sub_26115A364();
  __swift_destroy_boxed_opaque_existential_1(&v13);
  sub_26115A354();
  return v5;
}

id PASUISourceViewPresenter.init(previewViewController:flowController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___PASUIGuardianViewPresenter_cardContentView] = 0;
  v8 = &v3[OBJC_IVAR___PASUIGuardianViewPresenter_cardAdapter];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *&v3[OBJC_IVAR___PASUIGuardianViewPresenter_flowTimer] = 0;
  v9 = OBJC_IVAR___PASUIGuardianViewPresenter__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F18, &qword_26115DD20);
  swift_allocObject();
  *&v3[v9] = sub_26115A2E4();
  v10 = OBJC_IVAR___PASUIGuardianViewPresenter__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F28, &qword_26115DD28);
  swift_allocObject();
  *&v3[v10] = sub_26115A2E4();
  v11 = OBJC_IVAR___PASUIGuardianViewPresenter__viewControllerProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  swift_allocObject();
  *&v3[v11] = sub_26115A2E4();
  v12 = OBJC_IVAR___PASUIGuardianViewPresenter__analyticsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F68, &qword_26115DD48);
  swift_allocObject();
  *&v3[v12] = sub_26115A2E4();
  *&v3[OBJC_IVAR___PASUIGuardianViewPresenter____lazy_storage___analytics] = 0;
  *&v3[OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController] = a1;
  v13 = &v3[OBJC_IVAR___PASUIGuardianViewPresenter_flowController];
  *v13 = a2;
  *(v13 + 1) = a3;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

id PASUISourceViewPresenter.__allocating_init(sharingViewController:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_26113F8E8(a1);

  return v4;
}

id PASUISourceViewPresenter.init(sharingViewController:)(void *a1)
{
  v2 = sub_26113F8E8(a1);

  return v2;
}

id PASUISourceViewPresenter.init(parentViewController:flowController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a2;
  v31 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_26115AD64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___PASUIGuardianViewPresenter_cardContentView] = 0;
  v14 = &v3[OBJC_IVAR___PASUIGuardianViewPresenter_cardAdapter];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  *&v3[OBJC_IVAR___PASUIGuardianViewPresenter_flowTimer] = 0;
  v15 = OBJC_IVAR___PASUIGuardianViewPresenter__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F18, &qword_26115DD20);
  swift_allocObject();
  *&v3[v15] = sub_26115A2E4();
  v16 = OBJC_IVAR___PASUIGuardianViewPresenter__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F28, &qword_26115DD28);
  swift_allocObject();
  *&v3[v16] = sub_26115A2E4();
  v17 = OBJC_IVAR___PASUIGuardianViewPresenter__viewControllerProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  swift_allocObject();
  *&v3[v17] = sub_26115A2E4();
  v18 = OBJC_IVAR___PASUIGuardianViewPresenter__analyticsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F68, &qword_26115DD48);
  swift_allocObject();
  *&v3[v18] = sub_26115A2E4();
  *&v3[OBJC_IVAR___PASUIGuardianViewPresenter____lazy_storage___analytics] = 0;
  sub_26115AD44();
  v19 = sub_26115AD54();
  v20 = sub_26115B834();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_261107000, v19, v20, "PAS=== Welcome to ProximityAppleIDSetup - Source ===PAS", v21, 2u);
    MEMORY[0x2666FA930](v21, -1, -1);
  }

  v22 = *(v8 + 8);
  v22(v13, v7);
  sub_26115AD44();
  v23 = sub_26115AD54();
  v24 = sub_26115B834();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_261107000, v23, v24, "PASUISourceViewPresenter parentVC and flow controller", v25, 2u);
    MEMORY[0x2666FA930](v25, -1, -1);
  }

  v22(v11, v7);
  sub_26115A344();
  sub_26115A324();
  sub_26115A304();

  sub_26115A324();
  type metadata accessor for PASUIViewControllerProvider();
  *(swift_allocObject() + 16) = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F88, &unk_261160410);
  v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F90, &unk_26115DD60);
  v33[0] = v26;
  sub_26115A334();

  sub_26110CEE0(v33, &qword_27FE80F98, &qword_261160420);
  *&v4[OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController] = a1;
  v27 = &v4[OBJC_IVAR___PASUIGuardianViewPresenter_flowController];
  v28 = v31;
  *v27 = v30;
  v27[1] = v28;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  return objc_msgSendSuper2(&v32, sel_init);
}

id PASUISourceViewPresenter.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_26115AD64();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  sub_26115AD44();
  v10 = sub_26115AD54();
  v11 = sub_26115B834();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_261107000, v10, v11, "PASUISourceViewPresenter deinit", v12, 2u);
    MEMORY[0x2666FA930](v12, -1, -1);
  }

  v13 = *(v4 + 8);
  v13(v9, v3);
  sub_26115A344();
  sub_26115A324();
  sub_26115A2F4();

  sub_26115AD44();
  v14 = sub_26115AD54();
  v15 = sub_26115B834();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_261107000, v14, v15, "PAS=== Goodbye ===PAS", v16, 2u);
    MEMORY[0x2666FA930](v16, -1, -1);
  }

  v13(v7, v3);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

uint64_t PASUISourceViewPresenter.activate(withTemplate:)(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_26115AD64();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  sub_26115B7A4();
  v2[18] = sub_26115B794();
  v5 = sub_26115B774();
  v2[19] = v5;
  v2[20] = v4;

  return MEMORY[0x2822009F8](sub_261138404, v5, v4);
}

uint64_t sub_261138404()
{
  v1 = v0[13];

  sub_26115A2D4();

  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v2);
  v4 = sub_26112B474(0, &qword_27FE80FA8, 0x277D02880);
  v5 = MEMORY[0x277D435B8];
  v0[10] = v4;
  v0[11] = v5;
  v0[7] = v1;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_261138520;

  return MEMORY[0x2821A4B28](v0 + 7, v2, v3);
}

uint64_t sub_261138520()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = v2[19];
    v4 = v2[20];
    v5 = sub_261138868;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 7);
    v3 = v2[19];
    v4 = v2[20];
    v5 = sub_26113863C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26113863C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_2611386D4;

  return sub_261138A94();
}

uint64_t sub_2611386D4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 192) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return MEMORY[0x2822009F8](sub_2611387FC, v4, v3);
}

uint64_t sub_2611387FC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 192);

  return v1(v2);
}

uint64_t sub_261138868()
{
  v21 = v0;
  v1 = *(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_26115AD44();
  v2 = v1;
  v3 = sub_26115AD54();
  v4 = sub_26115B814();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 128);
    v19 = *(v0 + 136);
    v7 = *(v0 + 120);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v0 + 96) = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v11 = sub_26115B6B4();
    v13 = sub_26111C268(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_261107000, v3, v4, "Failed to activate PASUISourceViewPresenter with message session: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2666FA930](v9, -1, -1);
    MEMORY[0x2666FA930](v8, -1, -1);

    (*(v6 + 8))(v19, v7);
  }

  else
  {
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);

    (*(v15 + 8))(v14, v16);
  }

  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = sub_2611386D4;

  return sub_261138A94();
}

uint64_t sub_261138A94()
{
  v1[10] = v0;
  v2 = sub_26115AD64();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_26115B7A4();
  v1[15] = sub_26115B794();
  v4 = sub_26115B774();
  v1[16] = v4;
  v1[17] = v3;

  return MEMORY[0x2822009F8](sub_261138B94, v4, v3);
}

uint64_t sub_261138B94()
{
  v1 = sub_261137684();
  *(v0 + 200) = 0;
  *(v0 + 144) = v1;
  v4 = (*MEMORY[0x277D433B0] + MEMORY[0x277D433B0]);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_261138C54;

  return v4(v0 + 200);
}

uint64_t sub_261138C54()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_261138D98, v3, v2);
}

uint64_t sub_261138D98()
{
  v1 = *(v0 + 80);
  *(v0 + 201) = 1;

  v2 = sub_26115A374();

  *(v1 + OBJC_IVAR___PASUIGuardianViewPresenter_flowTimer) = v2;

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26115AD44();
    v3 = sub_26115AD54();
    v4 = sub_26115B824();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 112);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261107000, v3, v4, "PASUISourceViewPresenter delegate is nil in activate", v9, 2u);
      MEMORY[0x2666FA930](v9, -1, -1);
    }

    (*(v8 + 8))(v6, v7);
  }

  v10 = *(v0 + 80);
  v11 = v10 + OBJC_IVAR___PASUIGuardianViewPresenter_flowController;
  *(v0 + 160) = *(v10 + OBJC_IVAR___PASUIGuardianViewPresenter_flowController);
  v12 = *(v11 + 8);
  *(v0 + 168) = v12;
  ObjectType = swift_getObjectType();
  *(v0 + 176) = ObjectType;
  sub_261140BB0(&qword_27FE819F8, &protocol conformance descriptor for PASUISourceViewPresenter);
  swift_unknownObjectRetain();
  sub_26115ABD4();
  v14 = [*(v10 + OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController) viewController];
  *(v0 + 184) = v14;

  sub_26115A2D4();

  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v15);
  (*(v16 + 24))(v14, v15, v16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v17 = swift_task_alloc();
  *(v0 + 192) = v17;
  *v17 = v0;
  v17[1] = sub_26113905C;

  return MEMORY[0x2821A4AC8](ObjectType, v12);
}

uint64_t sub_26113905C()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_26113917C, v3, v2);
}

uint64_t sub_26113917C()
{

  sub_26115ABA4();
  sub_26115ABB4();
  swift_unknownObjectRelease();
  sub_26115AD44();
  v1 = sub_26115AD54();
  v2 = sub_26115B834();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_261107000, v1, v2, "PASUISourceViewPresenter activated", v3, 2u);
    MEMORY[0x2666FA930](v3, -1, -1);
  }

  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[12];

  (*(v6 + 8))(v4, v5);

  v7 = v0[1];
  v8 = v0[23];

  return v7(v8);
}

uint64_t sub_261139450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_26115B7A4();
  v3[5] = sub_26115B794();
  v5 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_2611394EC, v5, v4);
}

uint64_t sub_2611394EC()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_261115C18;
  v7 = v0[2];

  return PASUISourceViewPresenter.activate(withTemplate:)(v7);
}

uint64_t sub_2611395B0()
{
  v1[5] = v0;
  v2 = sub_26115AD64();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_26115B7A4();
  v1[10] = sub_26115B794();
  v4 = sub_26115B774();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x2822009F8](sub_2611396B0, v4, v3);
}

uint64_t sub_2611396B0(uint64_t a1)
{
  sub_26115AD44();
  v2 = sub_26115AD54();
  v3 = sub_26115B834();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261107000, v2, v3, "PASUISourceViewPresenter flowDidReset", v4, 2u);
    MEMORY[0x2666FA930](v4, -1, -1);
  }

  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];

  v8 = *(v7 + 8);
  v8(v5, v6);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26115AD44();
    v9 = sub_26115AD54();
    v10 = sub_26115B824();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v1[8];
    v13 = v1[6];
    if (v11)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261107000, v9, v10, "PASUISourceViewPresenter delegate is nil in flowDidReset", v14, 2u);
      MEMORY[0x2666FA930](v14, -1, -1);
    }

    v8(v12, v13);
  }

  v15 = swift_task_alloc();
  v1[13] = v15;
  *v15 = v1;
  v15[1] = sub_2611398BC;

  return sub_261139AA0();
}

uint64_t sub_2611398BC()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_2611399DC, v3, v2);
}

uint64_t sub_2611399DC()
{

  swift_getObjectType();
  sub_26115ABA4();
  sub_26115ABB4();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261139AA0()
{
  v1[7] = v0;
  v2 = sub_26115AD64();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = sub_26115B7A4();
  v1[13] = sub_26115B794();
  v4 = sub_26115B774();
  v1[14] = v4;
  v1[15] = v3;

  return MEMORY[0x2822009F8](sub_261139BA4, v4, v3);
}

uint64_t sub_261139BA4(uint64_t a1)
{
  sub_26115AD44();
  v2 = sub_26115AD54();
  v3 = sub_26115B804();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261107000, v2, v3, "PASUISourceViewPresenter dismissPresentedViewController if exists", v4, 2u);
    MEMORY[0x2666FA930](v4, -1, -1);
  }

  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[7];

  v9 = *(v7 + 8);
  v1[16] = v9;
  v9(v5, v6);
  v10 = *(v8 + OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController);
  v1[17] = v10;
  v11 = [v10 viewController];
  v12 = [v11 presentedViewController];
  v1[18] = v12;

  if (v12)
  {
    v1[19] = sub_26115B794();
    v13 = swift_task_alloc();
    v1[20] = v13;
    *(v13 + 16) = v12;
    v14 = swift_task_alloc();
    v1[21] = v14;
    *v14 = v1;
    v14[1] = sub_261139E7C;

    return MEMORY[0x2822007B8]();
  }

  else
  {

    v15 = v1[17];

    sub_26115A2D4();

    v16 = v1[6];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v1[5]);
    v17 = [v15 viewController];
    (*(v16 + 24))();

    __swift_destroy_boxed_opaque_existential_1(v1 + 2);

    v18 = v1[1];

    return v18();
  }
}

uint64_t sub_261139E7C()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_261139FDC, v3, v2);
}

uint64_t sub_261139FDC()
{

  sub_26115AD44();
  v1 = sub_26115AD54();
  v2 = sub_26115B804();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[10];
  v7 = v0[8];
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_261107000, v1, v2, "PASUISourceViewPresenter dismissed presentedViewController for card", v8, 2u);
    MEMORY[0x2666FA930](v8, -1, -1);
  }

  v5(v6, v7);
  v9 = v0[17];

  sub_26115A2D4();

  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
  v11 = [v9 viewController];
  (*(v10 + 24))();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v12 = v0[1];

  return v12();
}

uint64_t _s23ProximityAppleIDSetupUI24PASUISourceViewPresenterC12handleCancelyyF_0()
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81968, &qword_261160470);
  v0 = MEMORY[0x28223BE20](v27);
  v26 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v0);
  v3 = (&v25 - v2);
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  sub_26115AD44();
  v11 = sub_26115AD54();
  v12 = sub_26115B834();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_261107000, v11, v12, "PASUISourceViewPresenter flowDidCancel", v13, 2u);
    MEMORY[0x2666FA930](v13, -1, -1);
  }

  v14 = *(v5 + 8);
  v14(v10, v4);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26115AD44();
    v15 = sub_26115AD54();
    v16 = sub_26115B824();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_261107000, v15, v16, "PASUISourceViewPresenter delegate is nil in flowDidCancel", v17, 2u);
      MEMORY[0x2666FA930](v17, -1, -1);
    }

    v14(v8, v4);
  }

  sub_26111CF88();
  v18 = swift_allocError();
  *v19 = 3;
  *v3 = v18;
  swift_storeEnumTagMultiPayload();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_26110CE78(v3, v26, &qword_27FE81968, &qword_261160470);
    v22 = objc_allocWithZone(sub_26115A8A4());
    v23 = sub_26115A894();
    [v21 proximitySetupCompletedWithResult_];
    swift_unknownObjectRelease();
  }

  return sub_26110CEE0(v3, &qword_27FE81968, &qword_261160470);
}

uint64_t PASUISourceViewPresenter.setTemplate(_:)(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_26115AD64();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  sub_26115B7A4();
  v2[18] = sub_26115B794();
  v5 = sub_26115B774();
  v2[19] = v5;
  v2[20] = v4;

  return MEMORY[0x2822009F8](sub_26113A5E4, v5, v4);
}

uint64_t sub_26113A5E4()
{
  v1 = v0[13];

  sub_26115A2D4();

  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v2);
  v4 = sub_26112B474(0, &qword_27FE80FA8, 0x277D02880);
  v5 = MEMORY[0x277D435B8];
  v0[10] = v4;
  v0[11] = v5;
  v0[7] = v1;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_26113A700;

  return MEMORY[0x2821A4B28](v0 + 7, v2, v3);
}

uint64_t sub_26113A700()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = v2[19];
    v4 = v2[20];
    v5 = sub_26113A81C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 7);
    v3 = v2[19];
    v4 = v2[20];
    v5 = sub_2611181F0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26113A81C()
{
  v21 = v0;
  v1 = *(v0 + 176);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_26115AD44();
  v2 = v1;
  v3 = sub_26115AD54();
  v4 = sub_26115B814();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 128);
    v19 = *(v0 + 136);
    v7 = *(v0 + 120);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v0 + 96) = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v11 = sub_26115B6B4();
    v13 = sub_26111C268(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_261107000, v3, v4, "Failed to set PASUISourceViewPresenter message session: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2666FA930](v9, -1, -1);
    MEMORY[0x2666FA930](v8, -1, -1);

    (*(v6 + 8))(v19, v7);
  }

  else
  {
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_26113ABA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_26115B7A4();
  v3[5] = sub_26115B794();
  v5 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26113AC40, v5, v4);
}

uint64_t sub_26113AC40()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_261118748;
  v7 = v0[2];

  return PASUISourceViewPresenter.setTemplate(_:)(v7);
}

void sub_26113AD04(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v3 = OBJC_IVAR___PASUIGuardianViewPresenter_cardContentView;
  v4 = *(v2 + OBJC_IVAR___PASUIGuardianViewPresenter_cardContentView);
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  v5 = sub_26113AD84(&v7, a2, MEMORY[0x277CE11C8], MEMORY[0x277CE11C0]);
  v6 = *(v2 + v3);
  *(v2 + v3) = v5;
}

id sub_26113AD84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_26115B204();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 1);
  MEMORY[0x28223BE20](v10);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v5 mainView];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v60 = v5;
    v18 = [v17 subviews];
    sub_26112B474(0, &qword_27FE819F0, 0x277D75D18);
    v19 = sub_26115B754();

    v58 = a1;
    v59 = a3;
    v57[2] = v12;
    if (v19 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26115B9A4())
    {
      v21 = 0;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x2666FA050](v21, v19);
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        [v22 removeFromSuperview];

        ++v21;
        if (v24 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    a3 = v59;
    v5 = v60;
    a1 = v58;
  }

  swift_unknownObjectRelease();
  sub_26115B0E4();
  (*(v13 + 16))(v15, a1, a3);
  v25 = sub_26115B0C4();
  sub_26115B1F4();
  sub_26115B0A4();
  v26 = sub_26115AF94();
  v28 = sub_26115B0B4();
  if ((*v27 & v26) != 0)
  {
    *v27 &= ~v26;
  }

  v28(v61, 0);
  result = [v25 view];
  if (result)
  {
    v30 = result;
    [v5 addChildViewController_];
    [objc_msgSend(v5 mainView)];
    swift_unknownObjectRelease();
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v32 = v31;
      swift_unknownObjectRetain();
      [v25 didMoveToParentViewController_];
      swift_unknownObjectRelease();
    }

    [v30 setTranslatesAutoresizingMaskIntoConstraints_];
    v60 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E0, &qword_261161EF0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_261160400;
    v34 = [v30 topAnchor];
    v35 = [v5 mainView];
    v36 = v5;
    v59 = v25;
    v37 = [v35 mainContentGuide];
    swift_unknownObjectRelease();
    v38 = [v37 topAnchor];

    v39 = [v34 constraintGreaterThanOrEqualToAnchor_];
    *(v33 + 32) = v39;
    v40 = [v30 bottomAnchor];
    v41 = [objc_msgSend(v36 mainView)];
    swift_unknownObjectRelease();
    v42 = [v41 bottomAnchor];

    v43 = [v40 constraintLessThanOrEqualToAnchor_];
    *(v33 + 40) = v43;
    v44 = [v30 leadingAnchor];
    v45 = [objc_msgSend(v36 mainView)];
    swift_unknownObjectRelease();
    v46 = [v45 leadingAnchor];

    v47 = [v44 constraintEqualToAnchor_];
    *(v33 + 48) = v47;
    v48 = [v30 trailingAnchor];
    v49 = [objc_msgSend(v36 mainView)];
    swift_unknownObjectRelease();
    v50 = [v49 trailingAnchor];

    v51 = [v48 constraintEqualToAnchor_];
    *(v33 + 56) = v51;
    v52 = [v30 centerYAnchor];
    v53 = [objc_msgSend(v36 mainView)];
    swift_unknownObjectRelease();
    v54 = [v53 centerYAnchor];

    v55 = [v52 constraintEqualToAnchor_];
    *(v33 + 64) = v55;
    sub_26112B474(0, &qword_27FE81050, 0x277CCAAD0);
    v56 = sub_26115B744();

    [v60 activateConstraints_];

    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26113B4B4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController);
  [v4 setTitle_];
  [v4 setSubtitle_];
  [v4 setAttributedSubtitle_];
  [v4 setDismissalType_];
  [v4 setActivityStatusWithText_];
  v5 = [v4 actions];
  sub_26112B474(0, &qword_27FE819E8, 0x277D432F0);
  v6 = sub_26115B754();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:

    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v11);
    (*(v12 + 8))(v4, v11, v12);
    sub_26111BED4(a1, v14);
    v13 = OBJC_IVAR___PASUIGuardianViewPresenter_cardAdapter;
    swift_beginAccess();
    sub_261140B40(v14, v2 + v13);
    swift_endAccess();
    return;
  }

  v7 = sub_26115B9A4();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2666FA050](i, v6);
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      [v4 removeAction_];
    }

    goto LABEL_10;
  }

  __break(1u);
}

id PASUISourceViewPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t PASUISourceViewPresenter.present(step:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_26115AD64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  swift_unknownObjectRetain();
  v13 = sub_26115AD54();
  v14 = sub_26115B834();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v10;
    v16 = v15;
    v28 = swift_slowAlloc();
    v31 = a2;
    v32 = v28;
    *v16 = 136446210;
    v30 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC8, &qword_26115DDE0);
    v17 = sub_26115B6B4();
    v27 = v9;
    v19 = sub_26111C268(v17, v18, &v32);

    *(v16 + 4) = v19;
    _os_log_impl(&dword_261107000, v13, v14, "PASUISourceViewPresenter present step %{public}s", v16, 0xCu);
    v20 = v28;
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x2666FA930](v20, -1, -1);
    MEMORY[0x2666FA930](v16, -1, -1);

    (*(v29 + 8))(v12, v27);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v21 = sub_26115B7D4();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  sub_26115B7A4();
  swift_unknownObjectRetain();
  v22 = v3;
  v23 = sub_26115B794();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v22;
  v24[5] = a1;
  v24[6] = a2;
  sub_261112D1C(0, 0, v8, &unk_261160458, v24);
}

uint64_t sub_26113BA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[54] = a5;
  v6[55] = a6;
  v6[53] = a4;
  sub_26115B204();
  v6[56] = swift_task_alloc();
  v7 = sub_26115AD64();
  v6[57] = v7;
  v6[58] = *(v7 - 8);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  sub_26115B7A4();
  v6[62] = sub_26115B794();
  v9 = sub_26115B774();
  v6[63] = v9;
  v6[64] = v8;

  return MEMORY[0x2822009F8](sub_26113BBBC, v9, v8);
}

uint64_t sub_26113BBBC()
{
  v1 = *(v0[53] + OBJC_IVAR___PASUIGuardianViewPresenter_flowController + 8);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[65] = v3;
  *v3 = v0;
  v3[1] = sub_26113BC84;
  v5 = v0[54];
  v4 = v0[55];

  return MEMORY[0x2821A4AE0](v5, v4, ObjectType, v1);
}

uint64_t sub_26113BC84()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  v3 = *(v2 + 512);
  v4 = *(v2 + 504);
  if (v0)
  {
    v5 = sub_26113C74C;
  }

  else
  {
    v5 = sub_26113BDC0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26113BDC0()
{
  v42 = v0;
  *(v0 + 392) = *(v0 + 432);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC8, &qword_26115DDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819D0, &qword_261160940);
  if (swift_dynamicCast())
  {
    sub_261110928((v0 + 104), v0 + 64);
    sub_26115AD44();
    sub_26111BED4(v0 + 64, v0 + 144);
    v1 = sub_26115AD54();
    v2 = sub_26115B804();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 488);
    v5 = *(v0 + 456);
    v6 = *(v0 + 464);
    if (v3)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v41 = v8;
      *v7 = 136446210;
      sub_26111BED4(v0 + 144, v0 + 304);
      v9 = sub_26115B6B4();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1((v0 + 144));
      v12 = sub_26111C268(v9, v11, &v41);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_261107000, v1, v2, "PASUISourceViewPresenter has viewBuilder: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x2666FA930](v8, -1, -1);
      MEMORY[0x2666FA930](v7, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 144));
    }

    v15 = *(v6 + 8);
    v15(v4, v5);
    v16 = *(v0 + 88);
    v17 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 64), v16);
    (*(v17 + 16))(v16, v17);
    if (*(v0 + 56) == 1)
    {
      v18 = *(v0 + 16);
      v20 = *(v0 + 88);
      v19 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 64), v20);
      *(v0 + 416) = (*(*(v19 + 8) + 8))(v20);
      v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81228, &qword_26115E618));
      v22 = sub_26115B0D4();
      *(v0 + 536) = v22;
      sub_26115B1F4();
      sub_26115B0A4();
      v23 = sub_26115AF94();
      v25 = sub_26115B0B4();
      if ((*v24 & v23) != 0)
      {
        *v24 &= ~v23;
      }

      v25(v0 + 344, 0);
      v26 = swift_task_alloc();
      *(v0 + 544) = v26;
      *v26 = v0;
      v26[1] = sub_26113C37C;

      return sub_26113C9E0(v22, v18);
    }

    else
    {
      sub_261110928((v0 + 16), v0 + 184);
      sub_26115AD44();
      sub_26111BED4(v0 + 184, v0 + 224);
      v27 = sub_26115AD54();
      v28 = sub_26115B804();
      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 480);
      v31 = *(v0 + 456);
      if (v29)
      {
        v40 = *(v0 + 480);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v41 = v33;
        *v32 = 136446210;
        sub_26111BED4(v0 + 224, v0 + 264);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819E0, &unk_261160950);
        v34 = sub_26115B6B4();
        v36 = v35;
        __swift_destroy_boxed_opaque_existential_1((v0 + 224));
        v37 = sub_26111C268(v34, v36, &v41);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_261107000, v27, v28, "PASUISourceViewPresenter viewBuilder presents card %{public}s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x2666FA930](v33, -1, -1);
        MEMORY[0x2666FA930](v32, -1, -1);

        v38 = v40;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1((v0 + 224));
        v38 = v30;
      }

      v15(v38, v31);
      v39 = swift_task_alloc();
      *(v0 + 552) = v39;
      *v39 = v0;
      v39[1] = sub_26113C53C;

      return sub_261139AA0();
    }
  }

  else
  {

    *(v0 + 136) = 0;
    *(v0 + 120) = 0u;
    *(v0 + 104) = 0u;
    sub_26110CEE0(v0 + 104, &qword_27FE819D8, &qword_261160948);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_26113C37C()
{
  v1 = *v0;

  v2 = *(v1 + 512);
  v3 = *(v1 + 504);

  return MEMORY[0x2822009F8](sub_26113C49C, v3, v2);
}

uint64_t sub_26113C49C()
{
  v1 = v0[67];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26113C53C()
{
  v1 = *v0;

  v2 = *(v1 + 512);
  v3 = *(v1 + 504);

  return MEMORY[0x2822009F8](sub_26113C65C, v3, v2);
}

uint64_t sub_26113C65C()
{

  v2 = v0[11];
  v1 = v0[12];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 8, v2);
  v3 = (*(*(v1 + 8) + 8))(v2);
  sub_26113AD04(v3, v4);

  sub_26113B4B4(v0 + 23);
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26113C74C()
{
  v25 = v0;
  v1 = *(v0 + 528);

  sub_26115AD44();
  swift_unknownObjectRetain();
  v2 = v1;
  v3 = sub_26115AD54();
  v4 = sub_26115B834();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 528);
    v6 = *(v0 + 464);
    v23 = *(v0 + 472);
    v7 = *(v0 + 456);
    v22 = *(v0 + 432);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136446466;
    *(v0 + 376) = v22;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC8, &qword_26115DDE0);
    v10 = sub_26115B6B4();
    v12 = sub_26111C268(v10, v11, &v24);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 408) = v5;
    v13 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v14 = sub_26115B6B4();
    v16 = sub_26111C268(v14, v15, &v24);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_261107000, v3, v4, "PASUISourceViewPresenter did not present %{public}s.\n%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666FA930](v9, -1, -1);
    MEMORY[0x2666FA930](v8, -1, -1);

    (*(v6 + 8))(v23, v7);
  }

  else
  {
    v18 = *(v0 + 464);
    v17 = *(v0 + 472);
    v19 = *(v0 + 456);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_26113C9E0(uint64_t a1, char a2)
{
  *(v3 + 168) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = sub_26115AD64();
  *(v3 + 72) = v4;
  *(v3 + 80) = *(v4 - 8);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  sub_26115B7A4();
  *(v3 + 120) = sub_26115B794();
  v6 = sub_26115B774();
  *(v3 + 128) = v6;
  *(v3 + 136) = v5;

  return MEMORY[0x2822009F8](sub_26113CAFC, v6, v5);
}

uint64_t sub_26113CAFC(uint64_t a1)
{
  if (*(v1 + 168) == 1)
  {
    sub_26115AD44();
    v2 = sub_26115AD54();
    v3 = sub_26115B804();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_261107000, v2, v3, "PASUISourceViewPresenter is presenting a modal view controller without a nav controller", v4, 2u);
      MEMORY[0x2666FA930](v4, -1, -1);
    }

    v5 = *(v1 + 112);
    v6 = *(v1 + 72);
    v7 = *(v1 + 80);
    v8 = *(v1 + 56);

    (*(v7 + 8))(v5, v6);
    [v8 setModalInPresentation_];
    v9 = swift_task_alloc();
    *(v1 + 144) = v9;
    *v9 = v1;
    v10 = sub_26113D050;
LABEL_23:
    v9[1] = v10;

    return sub_261139AA0();
  }

  v11 = *(*(v1 + 64) + OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController);
  *(v1 + 152) = v11;
  v12 = [v11 viewController];
  v13 = [v12 presentedViewController];

  if (!v13)
  {
LABEL_11:
    v23 = [v11 viewController];
    v13 = [v23 presentedViewController];

    if (v13)
    {
      v24 = [v13 navigationController];
      if (v24)
      {
        v25 = v24;

        sub_26115AD44();
        v26 = sub_26115AD54();
        v27 = sub_26115B834();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_261107000, v26, v27, "PASUISourceViewPresenter is already presenting a view controller, but should be presenting a nav controller.", v28, 2u);
          MEMORY[0x2666FA930](v28, -1, -1);
        }

        v29 = *(v1 + 96);
        v30 = *(v1 + 72);
        v31 = *(v1 + 80);
        v32 = *(v1 + 56);

        (*(v31 + 8))(v29, v30);
        [v25 pushViewController:v32 animated:0];

        goto LABEL_16;
      }
    }

    sub_26115AD44();
    v38 = sub_26115AD54();
    v39 = sub_26115B804();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_261107000, v38, v39, "PASUISourceViewPresenter presenting modal nav controller", v40, 2u);
      MEMORY[0x2666FA930](v40, -1, -1);
    }

    v42 = *(v1 + 80);
    v41 = *(v1 + 88);
    v43 = *(v1 + 72);

    (*(v42 + 8))(v41, v43);
    v9 = swift_task_alloc();
    *(v1 + 160) = v9;
    *v9 = v1;
    v10 = sub_26113D2B8;
    goto LABEL_23;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

    goto LABEL_11;
  }

  v15 = v14;

  sub_26115AD44();
  v16 = sub_26115AD54();
  v17 = sub_26115B804();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_261107000, v16, v17, "PASUISourceViewPresenter reusing modal nav controller", v18, 2u);
    MEMORY[0x2666FA930](v18, -1, -1);
  }

  v19 = *(v1 + 104);
  v20 = *(v1 + 72);
  v21 = *(v1 + 80);
  v22 = *(v1 + 56);

  (*(v21 + 8))(v19, v20);
  [v15 pushViewController:v22 animated:0];
LABEL_16:

  v33 = *(v1 + 56);

  sub_26115A2D4();

  v34 = *(v1 + 40);
  v35 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 16), v34);
  (*(v35 + 24))(v33, v34, v35);
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  v36 = *(v1 + 8);

  return v36();
}

uint64_t sub_26113D050()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_26113D170, v3, v2);
}

uint64_t sub_26113D170()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = [*(v1 + OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController) viewController];
  [v3 presentViewController:v2 animated:1 completion:0];

  v4 = v0[7];

  sub_26115A2D4();

  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v5);
  (*(v6 + 24))(v4, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26113D2B8()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_26113D3D8, v3, v2);
}

uint64_t sub_26113D3D8()
{
  v1 = v0[19];
  v2 = v0[7];

  v3 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v3 setModalInPresentation_];
  v4 = [v1 viewController];
  [v4 presentViewController:v3 animated:1 completion:0];

  v5 = v0[7];

  sub_26115A2D4();

  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v6);
  (*(v7 + 24))(v5, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_26113D550(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819C8, &qword_261160918);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_26115B7D4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  sub_26115B7A4();
  v12 = a2;
  v13 = sub_26115B794();
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 2) = v13;
  *(v15 + 3) = v16;
  *(v15 + 4) = v12;
  (*(v5 + 32))(&v15[v14], v7, v4);
  sub_261112D1C(0, 0, v10, &unk_261160928, v15);
}

uint64_t sub_26113D75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819C8, &qword_261160918);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v5[12] = *(v7 + 64);
  v5[13] = swift_task_alloc();
  sub_26115B7A4();
  v5[14] = sub_26115B794();
  v9 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26113D864, v9, v8);
}

uint64_t sub_26113D864()
{
  v1 = v0[13];
  v2 = v0[11];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  (*(v2 + 16))(v1, v4, v3);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  (*(v2 + 32))(v7 + v6, v1, v3);
  v0[6] = sub_261140ABC;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_26113432C;
  v0[5] = &block_descriptor_6;
  v8 = _Block_copy(v0 + 2);

  [v5 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);

  v9 = v0[1];

  return v9();
}

uint64_t PASUISourceViewPresenter.flowDidComplete(with:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v2[6] = swift_task_alloc();
  v3 = sub_26115A224();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81968, &qword_261160470);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = sub_26115AD64();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = sub_26115B7A4();
  v2[17] = sub_26115B794();
  v6 = sub_26115B774();
  v2[18] = v6;
  v2[19] = v5;

  return MEMORY[0x2822009F8](sub_26113DBB0, v6, v5);
}

uint64_t sub_26113DBB0(uint64_t a1)
{
  v42 = v1;
  v2 = v1[12];
  v3 = v1[4];
  sub_26115AD44();
  sub_26110CE78(v3, v2, &qword_27FE81968, &qword_261160470);
  v4 = sub_26115AD54();
  v5 = sub_26115B834();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[14];
  v8 = v1[15];
  v10 = v1[12];
  v9 = v1[13];
  if (v6)
  {
    v11 = v1[11];
    v40 = v1[13];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v41 = v13;
    *v12 = 136446210;
    v39 = v8;
    sub_26110CE78(v10, v11, &qword_27FE81968, &qword_261160470);
    v14 = sub_26115B6B4();
    v16 = v15;
    sub_26110CEE0(v10, &qword_27FE81968, &qword_261160470);
    v17 = sub_26111C268(v14, v16, &v41);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_261107000, v4, v5, "PASUISourceViewPresenter flowDidComplete with result %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2666FA930](v13, -1, -1);
    MEMORY[0x2666FA930](v12, -1, -1);

    (*(v7 + 8))(v39, v40);
  }

  else
  {

    sub_26110CEE0(v10, &qword_27FE81968, &qword_261160470);
    (*(v7 + 8))(v8, v9);
  }

  v18 = v1[5];
  sub_26110CE78(v1[4], v1[11], &qword_27FE81968, &qword_261160470);
  v19 = objc_allocWithZone(sub_26115A8A4());
  v20 = sub_26115A894();
  v1[20] = v20;
  v21 = *(v18 + OBJC_IVAR___PASUIGuardianViewPresenter_flowTimer);
  v1[21] = v21;
  if (v21)
  {
    v22 = v20;
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    v24 = swift_allocObject();
    v1[22] = v24;
    *(v24 + 16) = &unk_261160480;
    *(v24 + 24) = v23;
    v1[2] = &unk_26115DE10;
    v1[3] = v24;

    v25 = v22;
    sub_26115A214();
    v26 = swift_task_alloc();
    v1[23] = v26;
    *v26 = v1;
    v26[1] = sub_26113E000;
    v27 = v1[9];

    return MEMORY[0x2821A4B98](v1 + 2, v27);
  }

  else
  {

    v28 = v1[20];
    v30 = v1[5];
    v29 = v1[6];
    v31 = sub_26115B7D4();
    (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
    v32 = v28;
    v33 = v30;
    v34 = sub_26115B794();
    v35 = swift_allocObject();
    v36 = MEMORY[0x277D85700];
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v33;
    v35[5] = v32;
    sub_261112D1C(0, 0, v29, &unk_261160498, v35);

    v37 = v1[1];

    return v37();
  }
}

uint64_t sub_26113E000()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);

  (*(v3 + 8))(v2, v4);

  v5 = *(v1 + 152);
  v6 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_26113E1C4, v6, v5);
}

uint64_t sub_26113E1C4()
{

  v1 = v0[20];
  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_26115B7D4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v1;
  v6 = v3;
  v7 = sub_26115B794();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  v8[5] = v5;
  sub_261112D1C(0, 0, v2, &unk_261160498, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26113E34C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81008, &unk_261160930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26115D860;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000261163730;
  sub_26115A874();
  v2 = sub_26115AAA4();
  v3 = MEMORY[0x277D837D0];
  v4 = MEMORY[0x277D435B0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v4;
  *(inited + 48) = v2;
  *(inited + 56) = v5;
  sub_2611107D0(inited);
  swift_setDeallocating();
  sub_26110CEE0(inited + 32, &qword_27FE80E50, &qword_26115E190);
  v6 = sub_26115A884();
  if (v6)
  {
    v7 = v6;
    swift_getErrorValue();
    v8 = sub_26115BA34();
    v10 = v9;
    v0[16] = v3;
    v0[17] = v4;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v0[15] = 0;
    v0[16] = 0;
    v0[17] = 0;
  }

  v0[13] = v8;
  v0[14] = v10;
  v0[26] = 0xD00000000000001ALL;
  v0[27] = 0x8000000261163820;
  v0[21] = v3;
  v0[22] = v4;
  v0[18] = 0;
  v0[19] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81028, &qword_26115E200);
  v11 = sub_26115B634();

  sub_26110CEE0((v0 + 18), &qword_27FE81030, &qword_26115E208);
  sub_26110CEE0((v0 + 13), &qword_27FE81030, &qword_26115E208);
  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_26113E554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_26115AD64();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_26115B7A4();
  v5[10] = sub_26115B794();
  v8 = sub_26115B774();
  v5[11] = v8;
  v5[12] = v7;

  return MEMORY[0x2822009F8](sub_26113E648, v8, v7);
}

uint64_t sub_26113E648()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26115AD44();
    v1 = sub_26115AD54();
    v2 = sub_26115B824();
    v3 = os_log_type_enabled(v1, v2);
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_261107000, v1, v2, "PASUISourceViewPresenter delegate is nil", v7, 2u);
      MEMORY[0x2666FA930](v7, -1, -1);
    }

    (*(v5 + 8))(v4, v6);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong proximitySetupCompletedWithResult_];
    swift_unknownObjectRelease();
  }

  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_26113E7E4;

  return sub_261139AA0();
}

uint64_t sub_26113E7E4()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_26113E904, v3, v2);
}

uint64_t sub_26113E904()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PASUISourceViewPresenter.stepDidRequestCancel(_:)()
{
  *(v1 + 16) = v0;
  sub_26115B7A4();
  *(v1 + 24) = sub_26115B794();
  v3 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26113EA04, v3, v2);
}

uint64_t sub_26113EA04()
{

  _s23ProximityAppleIDSetupUI24PASUISourceViewPresenterC12handleCancelyyF_0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PASUISourceViewPresenter.stepDidRequestReset(_:)()
{
  v0[2] = sub_26115B7A4();
  v0[3] = sub_26115B794();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26113EB18;

  return sub_2611395B0();
}

uint64_t sub_26113EB18()
{

  v1 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26110DB34, v1, v0);
}

uint64_t PASUISourceViewPresenter.handleReset()()
{
  v0[2] = sub_26115B7A4();
  v0[3] = sub_26115B794();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26113EB18;

  return sub_2611395B0();
}

uint64_t sub_26113ED00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26110CAC4;

  return PASUISourceViewPresenter.flowDidComplete(with:)(a1);
}

uint64_t sub_26113ED98()
{
  v0[2] = sub_26115B7A4();
  v0[3] = sub_26115B794();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26113EB18;

  return sub_2611395B0();
}

uint64_t sub_26113EE44()
{
  *(v1 + 16) = v0;
  sub_26115B7A4();
  *(v1 + 24) = sub_26115B794();
  v3 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26113EA04, v3, v2);
}

uint64_t sub_26113EEDC()
{
  v0[2] = sub_26115B7A4();
  v0[3] = sub_26115B794();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26110E430;

  return sub_2611395B0();
}

uint64_t sub_26113EF8C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "resenterActivated";
  }

  else
  {
    v2 = "noNavigationController";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "resenterActivated";
  }

  else
  {
    v4 = "noNavigationController";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26115B9F4();
  }

  return v5 & 1;
}

uint64_t sub_26113F030()
{
  sub_26115BA94();
  sub_26115B704();

  return sub_26115BAB4();
}

uint64_t sub_26113F0A8(uint64_t a1)
{
  sub_26115B704();
}

uint64_t sub_26113F10C(uint64_t a1)
{
  sub_26115BA94();
  sub_26115B704();

  return sub_26115BAB4();
}

uint64_t sub_26113F180@<X0>(char *a2@<X8>)
{
  v3 = sub_26115B9D4();

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

  *a2 = v5;
  return result;
}

void sub_26113F1E0(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "resenterActivated";
  }

  else
  {
    v2 = "noNavigationController";
  }

  *a1 = 0xD000000000000021;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_26113F218(uint64_t a1, uint64_t a2)
{
  v4 = sub_261140520();

  return MEMORY[0x2821A49D8](a1, a2, v4);
}

id sub_26113F274(void *a1)
{
  v1 = [a1 contentView];

  return v1;
}

id PRXCardContentViewController.mainView.getter()
{
  v1 = [v0 contentView];

  return v1;
}

Swift::Void __swiftcall PRXCardContentViewController.setActivityStatus(text:)(Swift::String_optional text)
{
  if (text.value._object)
  {
    v2 = sub_26115B674();
    [v1 showActivityIndicatorWithStatus_];
  }

  else
  {

    [v1 hideActivityIndicator];
  }
}

void sub_26113F35C(id a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_26115B6A4();
    v5 = a1;
    v4 = sub_26115B674();
    [v5 showActivityIndicatorWithStatus_];
  }

  else
  {

    [a1 hideActivityIndicator];
  }
}

uint64_t sub_26113F41C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_26110DB28;

  return v6();
}

uint64_t sub_26113F504(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_26110DB28;

  return v7();
}

uint64_t sub_26113F5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_26110CE78(a3, v23 - v10, &qword_27FE818E0, &qword_26115E4A0);
  v12 = sub_26115B7D4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26110CEE0(v11, &qword_27FE818E0, &qword_26115E4A0);
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

  sub_26115B7C4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_26115B774();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_26115B6C4() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_26110CEE0(a3, &qword_27FE818E0, &qword_26115E4A0);

    return v21;
  }

LABEL_8:
  sub_26110CEE0(a3, &qword_27FE818E0, &qword_26115E4A0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

id sub_26113F8E8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_26115AD64();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___PASUIGuardianViewPresenter_cardContentView] = 0;
  v12 = &v1[OBJC_IVAR___PASUIGuardianViewPresenter_cardAdapter];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v1[OBJC_IVAR___PASUIGuardianViewPresenter_flowTimer] = 0;
  v13 = OBJC_IVAR___PASUIGuardianViewPresenter__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F18, &qword_26115DD20);
  swift_allocObject();
  *&v1[v13] = sub_26115A2E4();
  v14 = OBJC_IVAR___PASUIGuardianViewPresenter__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F28, &qword_26115DD28);
  swift_allocObject();
  *&v1[v14] = sub_26115A2E4();
  v15 = OBJC_IVAR___PASUIGuardianViewPresenter__viewControllerProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  swift_allocObject();
  *&v1[v15] = sub_26115A2E4();
  v16 = OBJC_IVAR___PASUIGuardianViewPresenter__analyticsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F68, &qword_26115DD48);
  swift_allocObject();
  *&v1[v16] = sub_26115A2E4();
  *&v1[OBJC_IVAR___PASUIGuardianViewPresenter____lazy_storage___analytics] = 0;
  sub_26115AD44();
  v17 = sub_26115AD54();
  v18 = sub_26115B834();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_261107000, v17, v18, "PAS=== Welcome to ProximityAppleIDSetup - Source ===PAS", v19, 2u);
    MEMORY[0x2666FA930](v19, -1, -1);
  }

  v20 = *(v6 + 8);
  v20(v11, v5);
  sub_26115AD44();
  v21 = sub_26115AD54();
  v22 = sub_26115B834();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_261107000, v21, v22, "PASUISourceViewPresenter initWithSharingViewController", v23, 2u);
    MEMORY[0x2666FA930](v23, -1, -1);
  }

  v20(v9, v5);
  sub_26115A344();
  sub_26115A324();
  sub_26115A304();

  sub_26115A324();
  type metadata accessor for PASUIViewControllerProvider();
  *(swift_allocObject() + 16) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F88, &unk_261160410);
  v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F90, &unk_26115DD60);
  v31[0] = v24;
  sub_26115A334();

  sub_26110CEE0(v31, &qword_27FE80F98, &qword_261160420);
  *&v2[OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController] = a1;
  sub_26115A864();
  swift_allocObject();
  v25 = a1;
  v26 = sub_26115A854();
  v27 = &v2[OBJC_IVAR___PASUIGuardianViewPresenter_flowController];
  v28 = MEMORY[0x277D434A0];
  *v27 = v26;
  v27[1] = v28;
  v30.receiver = v2;
  v30.super_class = ObjectType;
  return objc_msgSendSuper2(&v30, sel_init);
}

uint64_t sub_26113FD24()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26113FD6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26110DB28;

  return sub_26113BA80(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26113FE34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26113FE6C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26111B874;

  return sub_26113E32C(v2);
}

uint64_t sub_26113FF00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26113FF38()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26113FF80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26110DB28;

  return sub_26113E554(a1, v4, v5, v7, v6);
}

unint64_t sub_261140044()
{
  result = qword_27FE81970;
  if (!qword_27FE81970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81970);
  }

  return result;
}

unint64_t sub_26114009C()
{
  result = qword_27FE81978;
  if (!qword_27FE81978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81978);
  }

  return result;
}

unint64_t sub_2611400F4()
{
  result = qword_27FE81980;
  if (!qword_27FE81980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81980);
  }

  return result;
}

unint64_t sub_26114014C()
{
  result = qword_27FE81988;
  if (!qword_27FE81988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81988);
  }

  return result;
}

unint64_t sub_2611401A0()
{
  result = qword_27FE81990;
  if (!qword_27FE81990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81990);
  }

  return result;
}

uint64_t sub_261140250@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PASUISourceViewPresenter.AnalyticsEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PASUISourceViewPresenter.AnalyticsEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2611404CC()
{
  result = qword_27FE819A0;
  if (!qword_27FE819A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE819A0);
  }

  return result;
}

unint64_t sub_261140520()
{
  result = qword_27FE819A8;
  if (!qword_27FE819A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE819A8);
  }

  return result;
}

uint64_t sub_261140578()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26110DB28;

  return sub_26113ABA4(v2, v3, v4);
}

uint64_t sub_261140630(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26110DB28;

  return sub_26111BFF4(a1, v4);
}

uint64_t sub_2611406E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26110DB28;

  return sub_261139450(v2, v3, v4);
}

unint64_t sub_26114079C()
{
  result = qword_27FE819B8;
  if (!qword_27FE819B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE819B8);
  }

  return result;
}

unint64_t sub_2611407F0()
{
  result = qword_27FE819C0;
  if (!qword_27FE819C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE819C0);
  }

  return result;
}

uint64_t sub_26114084C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819C8, &qword_261160918);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_261140924(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819C8, &qword_261160918) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26110CAC4;

  return sub_26113D75C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_261140A28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819C8, &qword_261160918);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261140B40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819B0, &qword_261160908);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_261140BB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PASUISourceViewPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261140BF0()
{
  result = qword_27FE81A00;
  if (!qword_27FE81A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81A00);
  }

  return result;
}

uint64_t sub_261140C90@<X0>(uint64_t a1@<X8>)
{
  sub_26115B6F4();
  sub_2611123E4();
  result = sub_26115B314();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_261140D00@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26115B074();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81A08, &qword_2611609F8) + 44);
  sub_26115AE84();
  *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81A10, &qword_261160A00) + 36)) = 257;
  v3 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81A18, &qword_261160A08) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81A20, &qword_261160A10) + 28);
  v5 = *MEMORY[0x277CDF420];
  v6 = sub_26115AE44();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  return result;
}

uint64_t sub_261140E54(uint64_t a1)
{
  v2 = sub_26115AE44();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x2666F96B0](v4);
}

unint64_t sub_261140F24()
{
  result = qword_27FE81A28;
  if (!qword_27FE81A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE81A30, &qword_261160A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81A28);
  }

  return result;
}

uint64_t PASFlowStepProxiedAuth.buildView()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81A40, &unk_261160A50);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v21[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v21[-1] - v5;
  v7 = type metadata accessor for PASUIAppleIDAuthContextProvider();
  v8 = [objc_allocWithZone(v7) init];
  v21[3] = v7;
  v21[4] = &off_287399F58;
  v21[0] = v8;
  v9 = objc_allocWithZone(type metadata accessor for PASUISignInViewModel());
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v21, v7);
  MEMORY[0x28223BE20](v10);
  v12 = (&v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;

  v16 = sub_261142EF8(v15, v14, v9);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v21[0] = v16;
  v17 = sub_2611430EC();
  sub_26115B414();
  (*(v1 + 16))(v4, v6, v0);
  v21[0] = &type metadata for PASUISignInView;
  v21[1] = v17;
  swift_getOpaqueTypeConformance2();
  v18 = sub_26115B574();

  (*(v1 + 8))(v6, v0);
  return v18;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id sub_2611412D8()
{
  v0 = sub_26115A6F4();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    sub_26115A6C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81B30, &qword_261160B70);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_26115D860;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_261121EE0();
    *(v4 + 32) = v2;
    *(v4 + 40) = v3;
    sub_26115B6D4();
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v5 setMinimumLineHeight_];
  [v5 setAlignment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B10, &unk_261160B60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26115F450;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = objc_opt_self();
  v9 = *MEMORY[0x277D743F8];
  v10 = v7;
  v11 = [v8 systemFontOfSize:34.0 weight:v9];
  v12 = sub_26112B474(0, &qword_27FE81B18, 0x277D74300);
  *(inited + 40) = v11;
  v13 = *MEMORY[0x277D74118];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  *(inited + 104) = sub_26112B474(0, &unk_27FE81B40, 0x277D74240);
  *(inited + 80) = v5;
  v14 = v13;
  v15 = v5;
  sub_261110940(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81B20, &qword_26115DA28);
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v17 = sub_26115B674();

  type metadata accessor for Key(0);
  sub_2611439C0();
  v18 = sub_26115B604();

  v19 = [v16 initWithString:v17 attributes:v18];

  return v19;
}

id sub_261141630()
{
  v0 = sub_26115A3F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26115A6E4();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
  }

  else
  {
    (*(v1 + 104))(v3, *MEMORY[0x277D433B8], v0);
    v6 = sub_26115A3E4();
    v7 = v8;
    (*(v1 + 8))(v3, v0);
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B10, &unk_261160B60);
  inited = swift_initStackObject();
  v48 = xmmword_26115D860;
  *(inited + 16) = xmmword_26115D860;
  v10 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v11 = objc_opt_self();
  v45 = v10;
  v46 = v11;
  v12 = [v11 systemFontOfSize_];
  v13 = sub_26112B474(0, &qword_27FE81B18, 0x277D74300);
  *(inited + 64) = v13;
  *(inited + 40) = v12;
  sub_261110940(inited);
  swift_setDeallocating();
  sub_26110CEE0(inited + 32, &unk_27FE81B20, &qword_26115DA28);
  v14 = sub_26115A6F4();
  if (!v15)
  {
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_26115B954();

    v49 = 0xD00000000000001FLL;
    v50 = 0x80000002611648D0;
    MEMORY[0x2666F9DF0](v6, v7);

    MEMORY[0x2666F9DF0](0x454D414E4F4E5FLL, 0xE700000000000000);
    sub_26115B6F4();

    v30 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v31 = sub_26115B674();

    type metadata accessor for Key(0);
    sub_2611439C0();
    v32 = sub_26115B604();

    v33 = [v30 initWithString:v31 attributes:v32];

LABEL_14:
    return v33;
  }

  v16 = v14;
  v17 = v15;
  if (sub_26115A6C4())
  {
    v18 = sub_26115A6D4();
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_26115B954();

      v49 = 0xD00000000000001FLL;
      v50 = 0x80000002611648D0;
      MEMORY[0x2666F9DF0](v6, v7);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81B30, &qword_261160B70);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_26115F450;
      v23 = MEMORY[0x277D837D0];
      *(v22 + 56) = MEMORY[0x277D837D0];
      v24 = sub_261121EE0();
      *(v22 + 32) = v16;
      *(v22 + 40) = v17;
      *(v22 + 96) = v23;
      *(v22 + 104) = v24;
      *(v22 + 64) = v24;
      *(v22 + 72) = v20;
      *(v22 + 80) = v21;

      sub_26115B6D4();

      v25 = sub_26115B674();
      v26 = sub_26115B674();

      v44 = [v25 rangeOfString_];
      v28 = v27;

      v29 = 0;
      goto LABEL_12;
    }

    v49 = 0;
    v50 = 0xE000000000000000;
    sub_26115B954();

    v49 = 0xD00000000000001FLL;
    v50 = 0x80000002611648D0;
    MEMORY[0x2666F9DF0](v6, v7);

    MEMORY[0x2666F9DF0](0x454D414E4F4E5FLL, 0xE700000000000000);
    sub_26115B6F4();
  }

  else
  {
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_26115B954();

    v49 = 0xD00000000000001BLL;
    v50 = 0x80000002611648F0;
    MEMORY[0x2666F9DF0](v6, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81B30, &qword_261160B70);
    v34 = swift_allocObject();
    *(v34 + 16) = v48;
    *(v34 + 56) = MEMORY[0x277D837D0];
    *(v34 + 64) = sub_261121EE0();
    *(v34 + 32) = v16;
    *(v34 + 40) = v17;
    sub_26115B6D4();
  }

  v44 = 0;
  v28 = 0;
  v29 = 1;
LABEL_12:
  v35 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v36 = sub_26115B674();

  type metadata accessor for Key(0);
  sub_2611439C0();
  v37 = sub_26115B604();

  v33 = [v35 initWithString:v36 attributes:v37];

  if ((v29 & 1) == 0)
  {
    v38 = swift_initStackObject();
    *(v38 + 16) = v48;
    v39 = v45;
    *(v38 + 32) = v45;
    v40 = *MEMORY[0x277D743F8];
    v41 = v39;
    v42 = [v46 systemFontOfSize:17.0 weight:v40];
    *(v38 + 64) = v13;
    *(v38 + 40) = v42;
    sub_261110940(v38);
    swift_setDeallocating();
    sub_26110CEE0(v38 + 32, &unk_27FE81B20, &qword_26115DA28);
    v32 = sub_26115B604();

    [v33 addAttributes:v32 range:{v44, v28}];
    goto LABEL_14;
  }

  return v33;
}

id PASUISignInViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASUISignInViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASUISignInViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261141EBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81AE0, &qword_261160B48);
  MEMORY[0x28223BE20](v3);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81AE8, &qword_261160B50);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v10 = objc_allocWithZone(MEMORY[0x277CECAE0]);
  v11 = a1;
  v12 = [v10 initWithNibName:0 bundle:0];
  v17 = v11;
  v18 = v12;
  v13 = sub_2611438C8();
  sub_26115B414();

  *v5 = sub_26115B024();
  *(v5 + 1) = 0;
  v5[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81AF8, &qword_261160B58);
  *(swift_allocObject() + 16) = v11;
  v14 = v11;
  sub_26115B554();
  v17 = &type metadata for AAUISignInViewControllerWrapper;
  v18 = v13;
  swift_getOpaqueTypeConformance2();
  sub_26114395C();
  sub_26115B3C4();
  sub_26110CEE0(v5, &qword_27FE81AE0, &qword_261160B48);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_261142154(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_continueSignInAction);
  if (v1)
  {
    v2 = *(result + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_continueSignInAction + 8);

    v1(v3);

    return sub_26111EE94(v1, v2);
  }

  return result;
}

uint64_t sub_2611421BC@<X0>(uint64_t a1@<X8>)
{
  sub_26115B6F4();
  sub_2611123E4();
  result = sub_26115B314();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

id sub_261142234(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_26115AD64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v9 = sub_26115AD54();
  v10 = sub_26115B834();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_261107000, v9, v10, "PASUISignInView makeUIViewController", v11, 2u);
    MEMORY[0x2666FA930](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = a3;
  [v12 setAllowsAccountCreation_];
  [v12 setShowServiceIcons_];
  [v12 setCanEditUsername_];
  sub_26115A6D4();
  if (v13)
  {
    v14 = sub_26115B674();
  }

  else
  {
    v14 = 0;
  }

  [v12 setUsername_];

  [v12 setDelegate_];
  v15 = sub_26115B744();
  [v12 setPrivacyLinkIdentifiers_];

  v16 = sub_261143140();
  [v12 setHeaderImage_];

  [v12 setFooterText_];
  [v12 setTableViewStyle_];
  v17 = [objc_opt_self() secondarySystemBackgroundColor];
  [v12 setCellBackgroundColor_];

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = (a2 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_continueSignInAction);
  v20 = *(a2 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_continueSignInAction);
  v21 = v19[1];
  *v19 = sub_261143B74;
  v19[1] = v18;

  sub_26111EE94(v20, v21);

  return v12;
}

void sub_261142530(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong nextButtonTapped];
  }
}

uint64_t sub_261142594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261143AE8();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2611425F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261143AE8();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26114265C(uint64_t a1)
{
  sub_261143AE8();
  sub_26115B1C4();
  __break(1u);
}

uint64_t sub_261142694(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E60, &qword_26115DA30);
    v2 = sub_26115B9B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2611105C8(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_261110684(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_261110684(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_261110684(v31, v32);
    result = sub_26115B914();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_261110684(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id PASUISignInViewModel.authenticationContext()()
{
  v1 = v0;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = v23 - v5 + 24;
  sub_26115AD44();
  v7 = sub_26115AD54();
  v8 = sub_26115B804();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_261107000, v7, v8, "PASUISignInViewModel authenticationContext", v9, 2u);
    MEMORY[0x2666FA930](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = __swift_project_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_contextProvider), *(v1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_contextProvider + 24));

  sub_26115A2D4();

  v11 = v24;
  v12 = v25;
  __swift_project_boxed_opaque_existential_1Tm(v23, v24);
  v13 = (*(v12 + 16))(v11, v12);
  v14 = *v10;
  v15 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  [v15 setPresentingViewController_];
  [v15 setDelegate_];

  __swift_destroy_boxed_opaque_existential_1(v23);
  v16 = v15;
  v17 = sub_2611412D8();
  v18 = [v17 string];

  if (!v18)
  {
    sub_26115B6A4();
    v18 = sub_26115B674();
  }

  [v16 setTitle_];

  v19 = sub_261141630();
  v20 = [v19 string];

  if (!v20)
  {
    sub_26115B6A4();
    v20 = sub_26115B674();
  }

  [v16 setReason_];

  sub_26115A704();
  [v16 setAuthenticationType_];

  return v16;
}

id sub_261142EF8(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_26115AD64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[3] = type metadata accessor for PASUIAppleIDAuthContextProvider();
  v20[4] = &off_287399F58;
  v20[0] = a2;
  v10 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel__viewControllerProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  swift_allocObject();
  *&a3[v10] = sub_26115A2E4();
  v11 = &a3[OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_continueSignInAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  sub_26115AD44();
  v12 = sub_26115AD54();
  v13 = sub_26115B804();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_261107000, v12, v13, "PASUISignInViewModel init", v14, 2u);
    MEMORY[0x2666FA930](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  *&a3[OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_step] = a1;
  sub_26111BED4(v20, &a3[OBJC_IVAR____TtC23ProximityAppleIDSetupUI20PASUISignInViewModel_contextProvider]);
  v15 = type metadata accessor for PASUISignInViewModel();
  v19.receiver = a3;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v16;
}

unint64_t sub_2611430EC()
{
  result = qword_27FE81A48;
  if (!qword_27FE81A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81A48);
  }

  return result;
}

id sub_261143140()
{
  v0 = [objc_opt_self() tintColor];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithHierarchicalColor_];

  v3 = [v1 configurationWithPointSize_];
  v4 = [v2 configurationByApplyingConfiguration_];
  v5 = sub_26115B674();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  return v6;
}

uint64_t _s23ProximityAppleIDSetupUI20PASUISignInViewModelC04signfG19ControllerDidCancelyySo08AAUISignfgJ0CF_0()
{
  v0 = sub_26115AD64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v4 = sub_26115AD54();
  v5 = sub_26115B834();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_261107000, v4, v5, "PASUISignInViewModel signInViewControllerDidCancel", v6, 2u);
    MEMORY[0x2666FA930](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2611433A0(uint64_t a1)
{
  v2 = sub_26115A3D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26115AD64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();

  v10 = sub_26115AD54();
  v11 = sub_26115B834();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = v7;
    v13 = v12;
    v26 = swift_slowAlloc();
    v29 = v26;
    *v13 = 141558274;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2080;
    v14 = sub_26115B624();
    v27 = v6;
    v25 = v5;
    v16 = v10;
    v17 = v11;
    v18 = a1;
    v19 = v3;
    v20 = v2;
    v21 = sub_26111C268(v14, v15, &v29);
    v5 = v25;

    *(v13 + 14) = v21;
    v2 = v20;
    v3 = v19;
    a1 = v18;
    _os_log_impl(&dword_261107000, v16, v17, "PASUISignInViewModel signInViewController didCompleteWithAuthenticationResults\n%{mask.hash}s", v13, 0x16u);
    v22 = v26;
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2666FA930](v22, -1, -1);
    MEMORY[0x2666FA930](v13, -1, -1);

    (*(v28 + 8))(v9, v27);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  sub_261142694(a1);
  sub_26115A3A4();
  sub_26115A6B4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t _s23ProximityAppleIDSetupUI20PASUISignInViewModelC27willAuthenticateWithContextyySo023AKAppleIDAuthenticationL0CF_0(void *a1)
{
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v6 = a1;
  v7 = sub_26115AD54();
  v8 = sub_26115B804();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 141558274;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2080;
    v11 = [v6 debugDescription];
    v12 = sub_26115B6A4();
    v14 = v13;

    v15 = sub_26111C268(v12, v14, &v18);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_261107000, v7, v8, "PASUISignInViewModel willAuthenticateWithContext\n%{mask.hash}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x2666FA930](v10, -1, -1);
    MEMORY[0x2666FA930](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2611438C8()
{
  result = qword_27FE81AF0;
  if (!qword_27FE81AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81AF0);
  }

  return result;
}

uint64_t sub_26114391C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_26114395C()
{
  result = qword_27FE81B00;
  if (!qword_27FE81B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81AE0, &qword_261160B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81B00);
  }

  return result;
}

unint64_t sub_2611439C0()
{
  result = qword_27FE80D18;
  if (!qword_27FE80D18)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80D18);
  }

  return result;
}

uint64_t sub_261143A28()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81AE8, &qword_261160B50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81AE0, &qword_261160B48);
  sub_2611438C8();
  swift_getOpaqueTypeConformance2();
  sub_26114395C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_261143AE8()
{
  result = qword_27FE81B58;
  if (!qword_27FE81B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81B58);
  }

  return result;
}

uint64_t sub_261143B3C()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double PASUIPickerView.init(presentables:showTitles:stackSize:selectedPresentable:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for CGSize(0);
  sub_26115B514();
  *a6 = a1;
  *(a6 + 8) = a2;
  sub_26115B514();

  result = *&v15;
  *(a6 + 16) = v15;
  *(a6 + 32) = v16;
  *(a6 + 40) = a3;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  return result;
}

uint64_t PASUIPickerView.presentables.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double PASUIPickerView.stackSize.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B60, &qword_261160CA0);
  sub_26115B524();
  return v1;
}

double sub_261143D18@<D0>(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B60, &qword_261160CA0);
  sub_26115B524();
  result = *&v3;
  *a1 = v3;
  return result;
}

void (*PASUIPickerView.stackSize.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[2];
  v6 = v1[3];
  *(v3 + 80) = v5;
  *(v3 + 88) = v6;
  v7 = v1[4];
  v4[12] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B60, &qword_261160CA0);
  sub_26115B524();
  return sub_261143EDC;
}

void sub_261143EDC(uint64_t *a1)
{
  v1 = *a1;
  *(*a1 + 24) = *(*a1 + 80);
  *(v1 + 40) = *(v1 + 96);
  *(v1 + 64) = *(v1 + 48);
  sub_26115B534();

  free(v1);
}

double PASUIPickerView.$stackSize.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B60, &qword_261160CA0);
  sub_26115B544();
  return v1;
}

uint64_t PASUIPickerView.selectedPresentable.getter()
{
  v1 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  MEMORY[0x2666F9C60](&v4, v2);
  return v4;
}

void *sub_261143FF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  result = MEMORY[0x2666F9C60](&v6, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_261144058(uint64_t *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  return sub_26115B594();
}

void (*PASUIPickerView.selectedPresentable.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[5];
  v6 = v1[6];
  *(v3 + 64) = v5;
  *(v3 + 72) = v6;
  v7 = v1[7];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  MEMORY[0x2666F9C60]();
  return sub_2611441DC;
}

void sub_2611441DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v2[3] = *(*a1 + 64);
  v2[7] = v2[6];
  v4 = v2[10];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    sub_26115B594();
  }

  else
  {
    sub_26115B594();
  }

  free(v2);
}

uint64_t PASUIPickerView.$selectedPresentable.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  sub_26115B5A4();
  return v1;
}

uint64_t PASUIPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v5[0] = *v1;
  v5[1] = v2;
  v3 = v1[3];
  v5[2] = v1[2];
  v5[3] = v3;
  return sub_26114434C(v5, a1);
}

uint64_t sub_26114434C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81BF8, &qword_261160E60);
  MEMORY[0x28223BE20](v41);
  v5 = v38 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C00, &qword_261160E68);
  MEMORY[0x28223BE20](v39);
  v7 = v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B98, &qword_261160D88);
  MEMORY[0x28223BE20](v8);
  v40 = v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C08, &qword_261160E70);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v38 - v13;
  v15 = *a1;
  if (!(*a1 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  v27 = v12;
  result = sub_26115B9A4();
  if (result != 1)
  {
LABEL_13:
    if (result >= 2)
    {
      v28 = swift_allocObject();
      v29 = *(a1 + 1);
      v28[1] = *a1;
      v28[2] = v29;
      v30 = *(a1 + 3);
      v31 = *(a1 + 1);
      v28[3] = *(a1 + 2);
      v28[4] = v30;
      v42 = v31;
      *&v43 = a1[4];
      sub_261146CD4(a1, &v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B60, &qword_261160CA0);
      sub_26115B524();
      sub_26115B5C4();
      sub_26115AEC4();
      v32 = v46;
      v33 = BYTE8(v46);
      v34 = v47;
      v35 = v48;
      v51 = BYTE8(v46);
      v50 = v48;
      *v7 = sub_261146CCC;
      *(v7 + 1) = v28;
      *(v7 + 2) = v32;
      v7[24] = v33;
      *(v7 + 4) = v34;
      v7[40] = v35;
      *(v7 + 3) = v49;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81BB0, &qword_261160D90);
      v36 = sub_261145854();
      *&v42 = &type metadata for PASUIPickerPresentableView;
      *(&v42 + 1) = v36;
      swift_getOpaqueTypeConformance2();
      sub_2611458A8();
      v37 = v40;
      sub_26115B104();
      sub_261146D0C(v37, v5);
      swift_storeEnumTagMultiPayload();
      sub_26114579C();
      sub_26110CC00();
      sub_26115B104();

      return sub_26110CEE0(v37, &qword_27FE81B98, &qword_261160D88);
    }

    goto LABEL_15;
  }

  result = sub_26115B9A4();
  v12 = v27;
  if (!result)
  {
LABEL_15:
    swift_storeEnumTagMultiPayload();
    sub_26114579C();
    sub_26110CC00();
    return sub_26115B104();
  }

LABEL_3:
  v38[2] = a2;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = v12;
    v18 = MEMORY[0x2666FA050](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v17 = v12;
    v18 = *(v15 + 32);
  }

  v46 = *(a1 + 5);
  v47 = a1[7];

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  MEMORY[0x2666F9C60](&v42, v19);
  *&v46 = v18;
  v38[1] = v8;
  if (v42)
  {
    sub_26115A5B4();
    sub_261147470(&qword_27FE81C10, MEMORY[0x277D433F0], MEMORY[0x277D433F8]);
    v20 = sub_26115B664();
  }

  else
  {

    v20 = 0;
  }

  v21 = *(a1 + 8);
  *&v42 = v18;
  BYTE8(v42) = v20 & 1;
  v43 = xmmword_261160C90;
  v44 = 0x405E000000000000;
  v45 = v21;
  v22 = swift_allocObject();
  v23 = *(a1 + 1);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v23;
  v24 = *(a1 + 3);
  *(v22 + 48) = *(a1 + 2);
  *(v22 + 64) = v24;
  *(v22 + 80) = v18;
  swift_retain_n();
  sub_261146CD4(a1, &v46);
  v25 = sub_261145854();
  sub_26115B364();

  (*(v11 + 16))(v7, v14, v17);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81BB0, &qword_261160D90);
  *&v46 = &type metadata for PASUIPickerPresentableView;
  *(&v46 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  sub_2611458A8();
  v26 = v40;
  sub_26115B104();
  sub_261146D0C(v26, v5);
  swift_storeEnumTagMultiPayload();
  sub_26114579C();
  sub_26110CC00();
  sub_26115B104();

  sub_26110CEE0(v26, &qword_27FE81B98, &qword_261160D88);
  return (*(v11 + 8))(v14, v17);
}

uint64_t sub_261144A78@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v45 = a3;
  v44 = sub_26115B134();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C18, &qword_261160E78);
  MEMORY[0x28223BE20](v34);
  v7 = &v34 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C20, &qword_261160E80);
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = &v34 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C28, &qword_261160E88);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C30, &qword_261160E90);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C38, &qword_261160E98);
  MEMORY[0x28223BE20](v35);
  v16 = &v34 - v15;
  sub_26115B224();
  v46 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C40, &qword_261160EA0);
  sub_261146D88();
  sub_26115AE34();
  v49 = *(a2 + 16);
  *&v50 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B60, &qword_261160CA0);
  sub_26115B524();
  v17 = v48;
  sub_26115AED4();
  v19 = v18;
  sub_26115B5C4();
  sub_26115AEC4();
  v20 = *(v12 + 16);
  v36 = v11;
  v21 = v11;
  v22 = v34;
  v20(v7, v14, v21);
  v23 = &v7[*(v22 + 36)];
  v24 = v50;
  *v23 = v49;
  *(v23 + 1) = v24;
  *(v23 + 2) = v51;
  v25 = sub_261146F24();
  sub_26115B394();
  sub_26110CEE0(v7, &qword_27FE81C18, &qword_261160E78);
  v42 = v5;
  sub_26115B124();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81CA0, &qword_261160EC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26115F450;
  v27 = sub_26115B244();
  *(inited + 32) = v27;
  v28 = sub_26115B224();
  *(inited + 33) = v28;
  sub_26115B234();
  sub_26115B234();
  if (sub_26115B234() != v27)
  {
    sub_26115B234();
  }

  sub_26115B234();
  if (sub_26115B234() != v28)
  {
    sub_26115B234();
  }

  v47 = v22;
  v48 = *&v25;
  swift_getOpaqueTypeConformance2();
  v29 = v37;
  v30 = v42;
  v31 = v41;
  sub_26115B3A4();
  (*(v43 + 8))(v30, v44);
  (*(v40 + 8))(v9, v31);
  (*(v12 + 8))(v14, v36);
  (*(v38 + 32))(v16, v29, v39);
  v32 = &v16[*(v35 + 36)];
  *v32 = v19 * 0.5;
  v32[1] = v17 * 0.5;
  sub_261146FDC();
  sub_26115B3D4();
  return sub_26110CEE0(v16, &qword_27FE81C38, &qword_261160E98);
}

uint64_t sub_2611450E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26115B024();
  *(a2 + 8) = 0x402C000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81CB0, &qword_261160ED0);
  v19 = *a1;
  v18[8] = v19;
  v4 = swift_allocObject();
  v5 = *(a1 + 1);
  v4[1] = *a1;
  v4[2] = v5;
  v6 = *(a1 + 3);
  v4[3] = *(a1 + 2);
  v4[4] = v6;
  sub_26110CE78(&v19, v18, &qword_27FE81CB8, &qword_261160ED8);
  sub_261146CD4(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81CB8, &qword_261160ED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C08, &qword_261160E70);
  sub_26111EDDC(&qword_27FE81CC0, &qword_27FE81CB8, &qword_261160ED8, MEMORY[0x277D83980]);
  v7 = sub_261145854();
  v18[0] = &type metadata for PASUIPickerPresentableView;
  v18[1] = v7;
  swift_getOpaqueTypeConformance2();
  sub_261147470(&qword_27FE81CC8, MEMORY[0x277D433F0], MEMORY[0x277D43400]);
  sub_26115B5B4();
  v8 = swift_allocObject();
  v9 = *(a1 + 1);
  v8[1] = *a1;
  v8[2] = v9;
  v10 = *(a1 + 3);
  v8[3] = *(a1 + 2);
  v8[4] = v10;
  sub_261146CD4(a1, v18);
  v11 = sub_26115B5C4();
  v13 = v12;
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C58, &qword_261160EA8) + 36));
  *v14 = sub_261157A1C;
  v14[1] = 0;
  v14[2] = v11;
  v14[3] = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_261147148;
  *(v15 + 24) = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81C40, &qword_261160EA0);
  v17 = (a2 + *(result + 36));
  *v17 = sub_2611471DC;
  v17[1] = v15;
  return result;
}