uint64_t sub_24369E2F4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436D09E0);
  swift_getKeyPath(asc_2436D0A08);

  return sub_2436CAEE8();
}

uint64_t sub_24369E378@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(aH_0);
  swift_getKeyPath(asc_2436D0A50);
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_24369E3F8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(aH_0);
  swift_getKeyPath(asc_2436D0A50);

  return sub_2436CAEE8();
}

uint64_t sub_24369E474@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath(byte_2436D0AB8);
  swift_getKeyPath(byte_2436D0AE0);
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_24369E4F4(char *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436D0AB8);
  swift_getKeyPath(byte_2436D0AE0);

  return sub_2436CAEE8();
}

double sub_24369E568(void *a1, uint64_t a2)
{
  *(a2 + 48) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v3 = [objc_msgSend(a1 nameComponents)];
  swift_unknownObjectRelease();
  if (!v3)
  {
    v3 = [objc_msgSend(a1 nameComponents)];
    swift_unknownObjectRelease();
    if (!v3)
    {
      v3 = [objc_msgSend(a1 nameComponents)];
      swift_unknownObjectRelease();
    }
  }

  v4 = sub_2436CBD38();
  v24 = v5;
  v25 = v4;

  v6 = [objc_msgSend(a1 nameComponents)];
  swift_unknownObjectRelease();
  v23 = sub_2436CBD38();
  v8 = v7;

  v9 = [a1 nameComponents];
  swift_getObjectType();
  v10 = sub_24369CD94();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  swift_unknownObjectRelease();
  v17 = [a1 appleID];
  v18 = sub_2436CBD38();
  v20 = v19;

  *&v22 = v25;
  *(&v22 + 1) = v24;
  sub_24369CE6C(v23, v8, v10, v12, v14, v16, v18, v20, [a1 isFederated], objc_msgSend(a1, sel_isAccountLockedDueToFailedLoginAttempts), objc_msgSend(a1, sel_isAccountATOLocked), v22);

  return result;
}

char *sub_24369E7E0(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v53 = a3;
  v54 = a5;
  v51 = a1;
  v52 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F750, &unk_2436D0E10);
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = &v42 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v55 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v11 = &v42 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F760, &unk_2436CF900);
  v12 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EFA8, &unk_2436D0940);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__facePortal;
  type metadata accessor for EMSFacePortalViewModel(0);
  v20 = swift_allocObject();
  *&v56 = 0;
  *(&v56 + 1) = 0xE000000000000000;
  sub_2436CAE98();
  LOBYTE(v56) = 7;
  sub_2436CAE98();
  *&v56 = v20;
  sub_2436CAE98();
  (*(v16 + 32))(&a4[v19], v18, v15);
  v21 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__name;
  v56 = 0u;
  v57 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F730, &qword_2436CF880);
  sub_2436CAE98();
  (*(v12 + 32))(&a4[v21], v14, v43);
  v22 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__subtitle;
  *&v56 = 0;
  *(&v56 + 1) = 0xE000000000000000;
  sub_2436CAE98();
  v23 = *(v55 + 32);
  v55 += 32;
  v24 = v44;
  v23(&a4[v22], v11, v44);
  v25 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__subtitleInfoButton;
  *&v56 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB90, &qword_2436CE990);
  v26 = v45;
  sub_2436CAE98();
  (*(v46 + 32))(&a4[v25], v26, v47);
  v27 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__isFederated;
  LOBYTE(v56) = 0;
  v28 = v48;
  sub_2436CAE98();
  v29 = v50;
  v30 = *(v49 + 32);
  v30(&a4[v27], v28, v50);
  v31 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__isDisabled;
  LOBYTE(v56) = 0;
  sub_2436CAE98();
  v30(&a4[v31], v28, v29);
  v32 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__sortName;
  *&v56 = 0;
  *(&v56 + 1) = 0xE000000000000000;
  sub_2436CAE98();
  v23(&a4[v32], v11, v24);
  v33 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel_alert;
  type metadata accessor for EMSAlertViewModel(0);
  v34 = swift_allocObject();
  LOBYTE(v56) = 0;
  sub_2436CAE98();
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v60 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F770, &qword_2436D2370);
  sub_2436CAE98();
  *&a4[v33] = v34;
  v35 = v51;
  v36 = [v51 identifier];
  v37 = sub_2436CBD38();
  v39 = v38;

  *(a4 + 2) = v37;
  *(a4 + 3) = v39;
  v40 = v53;
  *(a4 + 4) = v52;
  *(a4 + 5) = v40;
  *(a4 + 6) = v35;
  swift_unknownObjectRetain();

  sub_24369E568(v35, a4);
  return a4;
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24369EEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_getKeyPath(byte_2436D0CB0);
  swift_getKeyPath(aP_4);
  sub_2436CAED8();

  v6 = sub_24369EF88(v10);
  KeyPath = swift_getKeyPath(aX_0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *a3 = KeyPath;
  a3[1] = v6;
  a3[2] = sub_24369F684;
  a3[3] = v8;
}

uint64_t sub_24369EF88(unsigned __int8 a1)
{
  v2 = sub_2436CB908();
  MEMORY[0x28223BE20](v2);
  if (a1 > 6u)
  {
    v6 = objc_allocWithZone(MEMORY[0x277D75348]);
    aBlock[4] = sub_24367BCD4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24369F5D4;
    aBlock[3] = &block_descriptor_4;
    v7 = _Block_copy(aBlock);
    [v6 initWithDynamicProvider_];
    _Block_release(v7);

    return sub_2436CB8E8();
  }

  else
  {
    (*(v4 + 104))(aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
    return sub_2436CB988();
  }
}

uint64_t sub_24369F214@<X0>(void *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F790, &qword_2436D2640);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34[-v4];
  sub_2436CB078();
  swift_getKeyPath(asc_2436D0D30);
  swift_getKeyPath(asc_2436D0D58);
  sub_2436CAED8();

  sub_2436732AC();
  v6 = sub_2436CB698();
  v8 = v7;
  v10 = v9;
  sub_2436CB5B8();
  v11 = sub_2436CB5A8();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_2436CB5C8();
  sub_24369F694(v5);
  v12 = sub_2436CB658();
  v14 = v13;
  v16 = v15;

  sub_243679F68(v6, v8, v10 & 1);

  sub_2436CB948();
  v17 = sub_2436CB648();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_243679F68(v12, v14, v16 & 1);

  v24 = sub_2436CB538();
  sub_2436CAF88();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34[24] = v21 & 1;
  v34[40] = 0;
  result = swift_allocObject();
  *(result + 16) = v17;
  *(result + 24) = v19;
  *(result + 32) = v21 & 1;
  *(result + 40) = v23;
  *(result + 48) = v24;
  *(result + 56) = v26;
  *(result + 64) = v28;
  *(result + 72) = v30;
  *(result + 80) = v32;
  *(result + 88) = 0;
  *a2 = sub_24369F740;
  a2[1] = result;
  return result;
}

uint64_t sub_24369F4B0(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = sub_2436CBB48();
  v6 = v5;
  sub_24369EEA4(v3, v2, &v12);
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v12 = v4;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F780, &qword_2436D0CA8);
  sub_24369F570();
  sub_2436CB798();
}

unint64_t sub_24369F570()
{
  result = qword_27ED7F788;
  if (!qword_27ED7F788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F780, &qword_2436D0CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F788);
  }

  return result;
}

id sub_24369F5D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_24369F64C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24369F694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F790, &qword_2436D2640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24369F6FC()
{
  sub_243679F68(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_24369F740@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 73);
  v3 = *(v10 + 9);
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_24369F78C(v8, &v7);
}

uint64_t sub_24369F78C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F2E0, &qword_2436D0168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24369F818()
{
  result = qword_27ED7F798;
  if (!qword_27ED7F798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F7A0, &unk_2436D0D80);
    sub_24369F570();
    sub_24369F8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F798);
  }

  return result;
}

unint64_t sub_24369F8A4()
{
  result = qword_27ED7E870;
  if (!qword_27ED7E870)
  {
    sub_2436CB518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E870);
  }

  return result;
}

uint64_t sub_24369F8FC()
{
  swift_getKeyPath(byte_2436D0E70);
  swift_getKeyPath(aP_5);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24369F970()
{
  swift_getKeyPath(byte_2436D0E20);
  swift_getKeyPath(byte_2436D0E48);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24369F9E4()
{
  swift_getKeyPath(byte_2436D0F48);
  swift_getKeyPath(byte_2436D0F70);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24369FA58()
{
  swift_getKeyPath(asc_2436D0F00);
  swift_getKeyPath(byte_2436D0F28);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24369FAD0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (swift_getKeyPath(asc_2436D0F00), swift_getKeyPath(byte_2436D0F28), sub_2436CAED8(), , , v6 = , v8 == 1))
  {
    return a2(v6);
  }

  else
  {
    return a4();
  }
}

uint64_t sub_24369FBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!a1 || a1 == a2 || !a2 || a2 < a1)
    {
      swift_getKeyPath(asc_2436D0F00);
      swift_getKeyPath(byte_2436D0F28);

      sub_2436CAEE8();
      swift_getKeyPath(byte_2436D0F48);
      swift_getKeyPath(byte_2436D0F70);
      sub_2436CAED8();

      swift_getKeyPath(byte_2436D0F90);
      swift_getKeyPath(byte_2436D0FB8);
      sub_2436CAEE8();
    }
  }

  return result;
}

void sub_24369FEC8(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  a2(*a1, *(a1 + 8));
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath(byte_2436D0E70);
    swift_getKeyPath(aP_5);

    sub_2436CAEE8();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath(byte_2436D0E20);
    swift_getKeyPath(byte_2436D0E48);
    sub_2436CAED8();

    if (v4)
    {

      swift_getKeyPath(aX_1);
      swift_getKeyPath(a8);
      sub_2436CAEE8();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_2436A0068()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel__selectedCountLabel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED0, &qword_2436D1DC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel__selectButton;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F750, &unk_2436D0E10);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel__deleteButton;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F818, &qword_2436D0FD8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel__state;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F7F8, &qword_2436D0E08);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v9, v10);
}

uint64_t type metadata accessor for EMSSelectionToolbarViewModel(uint64_t a1)
{
  result = qword_27ED7F7D0;
  if (!qword_27ED7F7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436A0258(uint64_t a1)
{
  sub_2436803FC(319, &unk_27ED7FE10, &unk_27ED80380, &qword_2436CF6B0);
  if (v1 <= 0x3F)
  {
    sub_2436803FC(319, &unk_27ED7F740, &unk_27ED7EB90, &qword_2436CE990);
    if (v2 <= 0x3F)
    {
      sub_2436A03D4(319);
      if (v3 <= 0x3F)
      {
        sub_2436A042C();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2436A03D4(uint64_t a1)
{
  if (!qword_27ED7F7E0)
  {
    type metadata accessor for CRKUIButtonViewModel(255);
    v1 = sub_2436CAEF8();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED7F7E0);
    }
  }
}

void sub_2436A042C()
{
  if (!qword_27ED7F7E8)
  {
    v0 = sub_2436CAEF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED7F7E8);
    }
  }
}

uint64_t getEnumTagSinglePayload for EMSSelectionToolbarViewModel.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for EMSSelectionToolbarViewModel.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2436A0508(uint64_t a1)
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

uint64_t sub_2436A0520(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2436A0548@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EMSSelectionToolbarViewModel(0);
  result = sub_2436CAE38();
  *a2 = result;
  return result;
}

double sub_2436A0588@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(aX_1);
  swift_getKeyPath(a8);
  sub_2436CAED8();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_2436A0610(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_getKeyPath(aX_1);
  swift_getKeyPath(a8);
  sub_2436A170C(v2, v3);

  return sub_2436CAEE8();
}

uint64_t sub_2436A06A4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath(byte_2436D0F90);
  swift_getKeyPath(byte_2436D0FB8);
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_2436A0724(char *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436D0F90);
  swift_getKeyPath(byte_2436D0FB8);

  return sub_2436CAEE8();
}

uint64_t sub_2436A0798@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_2436D0F48);
  swift_getKeyPath(byte_2436D0F70);
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_2436A0818(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436D0F48);
  swift_getKeyPath(byte_2436D0F70);

  return sub_2436CAEE8();
}

uint64_t sub_2436A0894@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_2436D0E20);
  swift_getKeyPath(byte_2436D0E48);
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_2436A0914(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436D0E20);
  swift_getKeyPath(byte_2436D0E48);

  return sub_2436CAEE8();
}

double sub_2436A0990@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath(byte_2436D0E70);
  swift_getKeyPath(aP_5);
  sub_2436CAED8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_2436A0A10(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436D0E70);
  swift_getKeyPath(aP_5);

  return sub_2436CAEE8();
}

uint64_t sub_2436A0A94@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(asc_2436D0F00);
  swift_getKeyPath(byte_2436D0F28);
  sub_2436CAED8();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2436A0B1C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(asc_2436D0F00);
  swift_getKeyPath(byte_2436D0F28);

  return sub_2436CAEE8();
}

uint64_t sub_2436A0BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v72 = a8;
  v69 = a5;
  v70 = a7;
  v67 = a4;
  v68 = a6;
  v62 = a3;
  v61 = a2;
  v71 = a1;
  v74 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F7F0, &qword_2436D0E00);
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x28223BE20](v11);
  v73 = &v57 - v12;
  v77 = sub_2436CAD98();
  v64 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v63 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2436CAC58();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F7F8, &qword_2436D0E08);
  v15 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F750, &unk_2436D0E10);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED0, &qword_2436D1DC0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v57 - v24;
  v26 = OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel__selectedCountLabel;
  v81 = 0;
  v82 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80380, &qword_2436CF6B0);
  sub_2436CAE98();
  (*(v23 + 32))(v10 + v26, v25, v22);
  v27 = OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel__selectButton;
  v81 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB90, &qword_2436CE990);
  sub_2436CAE98();
  (*(v19 + 32))(v10 + v27, v21, v18);
  v28 = v10 + OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel__state;
  v81 = 0;
  LOBYTE(v82) = 2;
  sub_2436CAE98();
  v29 = *(v15 + 32);
  v66 = v28;
  v29(v28, v17, v78);
  v65 = v10 + OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel_cancellables;
  *(v10 + OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel_cancellables) = MEMORY[0x277D84FA0];
  if (qword_27ED7DEE8 != -1)
  {
    swift_once();
  }

  (*(v59 + 16))(v58, qword_27ED83B58 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_deleteButtonTitle, v60);
  v60 = sub_2436CBD58();
  v31 = v30;
  v32 = v62;

  v33 = v63;
  sub_2436CAD88();
  v34 = sub_2436CAD58();
  v36 = v35;
  v64 = *(v64 + 8);
  (v64)(v33, v77);
  type metadata accessor for CRKUIButtonViewModel(0);
  v37 = swift_allocObject();
  LOBYTE(v81) = 0;
  sub_2436CAE98();
  *(v37 + 16) = v34;
  *(v37 + 24) = v36;
  swift_beginAccess();
  *&v79 = v60;
  *(&v79 + 1) = v31;
  v80 = 1;
  sub_2436CAE98();
  swift_endAccess();
  v38 = (v37 + OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel_action);
  *v38 = v61;
  v38[1] = v32;
  swift_beginAccess();
  *&v79 = v37;
  sub_2436CAE98();
  swift_endAccess();
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  v42 = v67;
  v41 = v68;
  *(v40 + 2) = v39;
  *(v40 + 3) = v42;
  v43 = v70;
  *(v40 + 4) = v69;
  *(v40 + 5) = v41;
  *(v40 + 6) = v43;

  sub_2436CAD88();
  v44 = sub_2436CAD58();
  v46 = v45;
  (v64)(v33, v77);
  v47 = swift_allocObject();
  LOBYTE(v81) = 0;
  sub_2436CAE98();
  *(v47 + 16) = v44;
  *(v47 + 24) = v46;
  swift_beginAccess();
  v79 = xmmword_2436D0D90;
  v80 = 0;
  sub_2436CAE98();
  swift_endAccess();
  v48 = (v47 + OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel_action);
  *v48 = sub_2436A1628;
  v48[1] = v40;

  swift_getKeyPath(byte_2436D0E20);
  swift_getKeyPath(byte_2436D0E48);
  v81 = v47;

  sub_2436CAEE8();
  v81 = v71;
  v49 = swift_allocObject();
  swift_weakInit();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_2436A1640;
  *(v50 + 24) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F800, &qword_2436D0E68);
  sub_243671838(&qword_27ED7F808, &qword_27ED7F800, &qword_2436D0E68, MEMORY[0x277CBCD90]);
  sub_2436CAF68();

  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  swift_beginAccess();
  v51 = v73;
  sub_2436CAEA8();
  swift_endAccess();
  v52 = swift_allocObject();
  swift_weakInit();

  v53 = swift_allocObject();
  v54 = v74;
  v53[2] = v72;
  v53[3] = v54;
  v53[4] = v52;
  sub_243671838(&qword_27ED7F810, &qword_27ED7F7F0, &qword_2436D0E00, MEMORY[0x277CBCEC8]);

  v55 = v76;
  sub_2436CAF68();

  (*(v75 + 8))(v51, v55);
  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  return v10;
}

uint64_t sub_2436A15A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2436A15E0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2436A1648()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2436A16B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2436A1740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F820, &unk_2436D0FE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2436A1810(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F820, &unk_2436D0FE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EMSStudentPickerView(uint64_t a1)
{
  result = qword_27ED7F828;
  if (!qword_27ED7F828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436A190C(uint64_t a1)
{
  sub_2436A19D8(319);
  if (v1 <= 0x3F)
  {
    sub_2436A1A6C(319, &qword_27ED7F840, &unk_27ED7FEC0, &unk_2436D02E0);
    if (v2 <= 0x3F)
    {
      sub_2436A1A6C(319, &qword_27ED7F848, &qword_27ED7E6F0, &qword_2436CE0C0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2436A19D8(uint64_t a1)
{
  if (!qword_27ED7F838)
  {
    type metadata accessor for EMSStudentPickerViewModel(255);
    sub_2436A92D8(&qword_27ED7F330, type metadata accessor for EMSStudentPickerViewModel, &unk_2436D1AF0);
    v1 = sub_2436CB0C8();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED7F838);
    }
  }
}

void sub_2436A1A6C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2436CBA28();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_2436A1ADC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v60 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB08, &qword_2436D1408);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = sub_2436CB3C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2436CB3D8();
  v56 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB10, &unk_2436D1410);
  MEMORY[0x28223BE20](v59);
  v17 = &v44 - v16;
  if (a1)
  {
    v52 = v17;
    v54 = v15;
    sub_2436CBE68();
    v55 = v5;
    swift_retain_n();
    v18 = sub_2436CBE58();
    v19 = swift_allocObject();
    v53 = v12;
    v51 = v3;
    v20 = MEMORY[0x277D85700];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = a1;

    v21 = sub_2436CBE58();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = v20;
    v22[4] = a1;
    v50 = a1;
    sub_2436CBAA8();
    v57 = v62;
    v58 = v61;
    v48 = v64;
    v49 = v63;
    sub_2436CB3B8();
    v47 = v14;
    sub_2436CB3A8();
    (*(v9 + 8))(v11, v8);
    swift_getKeyPath(aP_6);
    swift_getKeyPath(a0_0);
    sub_2436CAED8();

    sub_2436732AC();
    v23 = sub_2436CB698();
    v45 = v24;
    v46 = v7;
    v44 = v25 & 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E708, &qword_2436CE248);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E700, &qword_2436CE240);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E7E0, &qword_2436CE2B0);
    v29 = sub_243679F80();
    v30 = sub_243671838(&qword_27ED7E800, &qword_27ED7E7E0, &qword_2436CE2B0, MEMORY[0x277CDDF68]);
    v61 = v27;
    v62 = v28;
    v63 = v29;
    v64 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = v52;
    v32 = v47;
    LOBYTE(v28) = v44;
    v33 = v45;
    sub_2436CB6D8();
    sub_243679F68(v23, v33, v28);

    (*(v56 + 8))(v32, v53);
    v34 = v54;
    v35 = v59;
    (*(v54 + 16))(v46, v31, v59);
    swift_storeEnumTagMultiPayload();
    v61 = v26;
    v62 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_2436CB398();

    return (*(v34 + 8))(v31, v35);
  }

  else
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E708, &qword_2436CE248);
    (*(*(v37 - 8) + 16))(v7, v3, v37);
    swift_storeEnumTagMultiPayload();
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E700, &qword_2436CE240);
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E7E0, &qword_2436CE2B0);
    v40 = sub_243679F80();
    v41 = sub_243671838(&qword_27ED7E800, &qword_27ED7E7E0, &qword_2436CE2B0, MEMORY[0x277CDDF68]);
    v61 = v38;
    v62 = v39;
    v63 = v40;
    v64 = v41;
    v42 = swift_getOpaqueTypeConformance2();
    v61 = v37;
    v62 = v42;
    swift_getOpaqueTypeConformance2();
    return sub_2436CB398();
  }
}

void *sub_2436A2184@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F928, &qword_2436D1188);
  MEMORY[0x28223BE20](v46);
  v5 = v37 - v4;
  v6 = sub_2436CB3C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2436CB3D8();
  v44 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F930, &unk_2436D1190);
  MEMORY[0x28223BE20](v13);
  v16 = v37 - v15;
  if (a1)
  {
    v38 = v16;
    v42 = v14;
    sub_2436CBE68();
    v41 = v10;
    swift_retain_n();
    v17 = sub_2436CBE58();
    v40 = v5;
    v18 = v17;
    v19 = swift_allocObject();
    v39 = v13;
    v43 = a2;
    v20 = MEMORY[0x277D85700];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = a1;

    v21 = sub_2436CBE58();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = v20;
    v22[4] = a1;
    sub_2436CBAA8();
    v37[1] = v48;
    v37[2] = v47;
    v37[3] = v50;
    v37[4] = v49;
    sub_2436CB3B8();
    sub_2436CB3A8();
    (*(v7 + 8))(v9, v6);
    swift_getKeyPath(aP_6);
    swift_getKeyPath(a0_0);
    sub_2436CAED8();

    sub_2436732AC();
    v23 = sub_2436CB698();
    v25 = v24;
    v27 = v26 & 1;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F860, &qword_2436D1068);
    v36 = sub_2436A7D08();
    v37[0] = a1;
    v28 = v12;
    v29 = v38;
    sub_2436CB6D8();
    sub_243679F68(v23, v25, v27);

    (*(v44 + 8))(v28, v41);
    v30 = v42;
    v31 = v39;
    (*(v42 + 16))(v40, v29, v39);
    swift_storeEnumTagMultiPayload();
    v47 = v35;
    v48 = v36;
    swift_getOpaqueTypeConformance2();
    sub_2436CB398();

    return (*(v30 + 8))(v29, v31);
  }

  else
  {
    sub_2436714A8(v45, v5, &qword_27ED7F860, &qword_2436D1068);
    swift_storeEnumTagMultiPayload();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F860, &qword_2436D1068);
    v34 = sub_2436A7D08();
    v47 = v33;
    v48 = v34;
    swift_getOpaqueTypeConformance2();
    return sub_2436CB398();
  }
}

uint64_t sub_2436A26F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA58, &qword_2436D1318);
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E888, &unk_2436CE3F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ED7FF30, &unk_2436D1E00);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - v12;
  sub_2436714A8(a1, v9, &qword_27ED7E888, &unk_2436CE3F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_243671AC8(v9, &qword_27ED7E888, &unk_2436CE3F0);
    return (*(v4 + 56))(a2, 1, 1, v20);
  }

  else
  {
    v15 = sub_24367A8C0(v9, v13, qword_27ED7FF30, &unk_2436D1E00);
    v19[2] = v19;
    v16 = MEMORY[0x28223BE20](v15);
    v17 = MEMORY[0x28223BE20](v16);
    MEMORY[0x28223BE20](v17);
    v19[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA60, &qword_2436D1320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA68, &qword_2436D1328);
    sub_243671838(&qword_27ED7FA70, &qword_27ED7FA60, &qword_2436D1320, MEMORY[0x277CDEFF0]);
    sub_2436A91C8();
    sub_2436CB468();
    v18 = v20;
    (*(v4 + 32))(a2, v6, v20);
    (*(v4 + 56))(a2, 0, 1, v18);
    return sub_243671AC8(v13, qword_27ED7FF30, &unk_2436D1E00);
  }
}

uint64_t sub_2436A2ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F108, &unk_2436D1470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F110, &qword_2436CFE08);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  sub_2436714A8(a1, v6, &qword_27ED7F108, &unk_2436D1470);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_243671AC8(v6, &qword_27ED7F108, &unk_2436D1470);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA58, &qword_2436D1318);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }

  else
  {
    v13 = sub_24367A8C0(v6, v10, &qword_27ED7F110, &qword_2436CFE08);
    v14 = MEMORY[0x28223BE20](v13);
    v15 = MEMORY[0x28223BE20](v14);
    MEMORY[0x28223BE20](v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA60, &qword_2436D1320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA68, &qword_2436D1328);
    sub_243671838(&qword_27ED7FA70, &qword_27ED7FA60, &qword_2436D1320, MEMORY[0x277CDEFF0]);
    sub_2436A91C8();
    sub_2436CB468();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA58, &qword_2436D1318);
    (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
    return sub_243671AC8(v10, &qword_27ED7F110, &qword_2436CFE08);
  }
}

uint64_t sub_2436A2E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F958, &qword_2436D1208);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE50, &qword_2436D11F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  sub_2436714A8(a1, v6, &qword_27ED7F958, &qword_2436D1208);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_243671AC8(v6, &qword_27ED7F958, &qword_2436D1208);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA58, &qword_2436D1318);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }

  else
  {
    v13 = sub_24367A8C0(v6, v10, &unk_27ED7FE50, &qword_2436D11F0);
    v14 = MEMORY[0x28223BE20](v13);
    v15 = MEMORY[0x28223BE20](v14);
    MEMORY[0x28223BE20](v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA60, &qword_2436D1320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA68, &qword_2436D1328);
    sub_243671838(&qword_27ED7FA70, &qword_27ED7FA60, &qword_2436D1320, MEMORY[0x277CDEFF0]);
    sub_2436A91C8();
    sub_2436CB468();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA58, &qword_2436D1318);
    (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
    return sub_243671AC8(v10, &unk_27ED7FE50, &qword_2436D11F0);
  }
}

uint64_t sub_2436A31F4(char *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_2436CAC58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(v7 + 16))(v9, &a1[*(v10 + 28)], v6);
  v13[0] = sub_2436CBD58();
  v13[1] = v11;
  sub_2436732AC();

  return sub_2436CB9D8();
}

uint64_t sub_2436A3324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v30 = a2;
  v28 = sub_2436CAC98();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2436CAC58();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA88, &qword_2436D1330);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB18, &unk_2436D1460);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC0, &qword_2436CEB30);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ED7FF30, &unk_2436D1E00);
  sub_2436714A8(v29 + *(v17 + 36), v12, &qword_27ED7FB18, &unk_2436D1460);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_243671AC8(v12, &qword_27ED7FB18, &unk_2436D1460);
    v18 = 1;
    v19 = v30;
  }

  else
  {
    sub_24367A8C0(v12, v16, &qword_27ED7EBC0, &qword_2436CEB30);
    (*(v24 + 16))(v5, v16, v25);
    v31 = sub_2436CBD58();
    v32 = v20;
    (*(v26 + 16))(v27, &v16[*(v13 + 28)], v28);
    sub_2436732AC();
    sub_2436CB5F8();
    sub_243671AC8(v16, &qword_27ED7EBC0, &qword_2436CEB30);
    v21 = v30;
    (*(v7 + 32))(v30, v9, v6);
    v18 = 0;
    v19 = v21;
  }

  return (*(v7 + 56))(v19, v18, 1, v6);
}

uint64_t sub_2436A370C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v2 = sub_2436CAC98();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2436CAC58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB20, &unk_2436D1480);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB28, &qword_2436D2170);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F110, &qword_2436CFE08);
  sub_2436714A8(v24 + *(v16 + 36), v11, &qword_27ED7FB20, &unk_2436D1480);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_243671AC8(v11, &qword_27ED7FB20, &unk_2436D1480);
    v17 = 1;
    v18 = v25;
  }

  else
  {
    sub_24367A8C0(v11, v15, &qword_27ED7FB28, &qword_2436D2170);
    (*(v6 + 16))(v8, v15, v5);
    v26 = sub_2436CBD58();
    v27 = v19;
    (*(v22 + 16))(v4, &v15[*(v12 + 28)], v23);
    sub_2436732AC();
    v18 = v25;
    sub_2436CB5F8();
    sub_243671AC8(v15, &qword_27ED7FB28, &qword_2436D2170);
    v17 = 0;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA88, &qword_2436D1330);
  return (*(*(v20 - 8) + 56))(v18, v17, 1, v20);
}

uint64_t sub_2436A3A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v2 = sub_2436CAC98();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2436CAC58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE40, &unk_2436D1338);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F968, &qword_2436D1260);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE50, &qword_2436D11F0);
  sub_2436714A8(v24 + *(v16 + 36), v11, &unk_27ED7FE40, &unk_2436D1338);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_243671AC8(v11, &unk_27ED7FE40, &unk_2436D1338);
    v17 = 1;
    v18 = v25;
  }

  else
  {
    sub_24367A8C0(v11, v15, &qword_27ED7F968, &qword_2436D1260);
    (*(v6 + 16))(v8, v15, v5);
    v26 = sub_2436CBD58();
    v27 = v19;
    (*(v22 + 16))(v4, &v15[*(v12 + 28)], v23);
    sub_2436732AC();
    v18 = v25;
    sub_2436CB5F8();
    sub_243671AC8(v15, &qword_27ED7F968, &qword_2436D1260);
    v17 = 0;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA88, &qword_2436D1330);
  return (*(*(v20 - 8) + 56))(v18, v17, 1, v20);
}

uint64_t sub_2436A3DEC@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for EMSStudentPickerView(0);
  v46 = *(v2 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2436CB2E8();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F850, &qword_2436D1058);
  MEMORY[0x28223BE20](v37);
  v8 = (v36 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F858, &qword_2436D1060);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v36[0] = v36 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F860, &qword_2436D1068) - 8;
  MEMORY[0x28223BE20](v39);
  v12 = v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F868, &qword_2436D1070);
  MEMORY[0x28223BE20](v13 - 8);
  v40 = (v36 - v14);
  v41 = v1;
  sub_2436A4350(v8);
  v36[1] = *(v1 + 8);
  swift_getKeyPath(aX_2);
  swift_getKeyPath(a8_0);
  sub_2436CAED8();

  v15 = v48;
  v16 = v49;
  if (!v49)
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v48 = v15;
  v49 = v16;
  sub_2436732AC();
  v17 = sub_2436CB698();
  v19 = v18;
  v21 = v20;
  v22 = v6;
  v23 = v6;
  v24 = v38;
  (*(v4 + 104))(v23, *MEMORY[0x277CDDDC0], v38);
  sub_2436A7424();
  sub_2436CB778();
  sub_243679F68(v17, v19, v21 & 1);

  (*(v4 + 8))(v22, v24);
  sub_243671AC8(v8, &qword_27ED7F850, &qword_2436D1058);
  v25 = [objc_opt_self() systemBackgroundColor];
  v26 = sub_2436CB8E8();
  v27 = sub_2436CB538();
  (*(v42 + 32))(v12, v36[0], v43);
  v28 = &v12[*(v39 + 44)];
  *v28 = v26;
  v28[8] = v27;
  swift_getKeyPath(byte_2436D1128);
  swift_getKeyPath(byte_2436D1150);
  sub_2436CAED8();

  v29 = v40;
  sub_2436A2184(v48, v40);

  sub_243671AC8(v12, &qword_27ED7F860, &qword_2436D1068);
  v30 = v44;
  sub_243693E74(v41, v44);
  v31 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v32 = swift_allocObject();
  sub_2436A7C44(v30, v32 + v31);
  v33 = v47;
  sub_24367A8C0(v29, v47, &qword_27ED7F868, &qword_2436D1070);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F920, &qword_2436D1178);
  v35 = (v33 + *(result + 36));
  *v35 = 0;
  v35[1] = 0;
  v35[2] = sub_2436A7CA8;
  v35[3] = v32;
  return result;
}

uint64_t sub_2436A4350@<X0>(void *a1@<X8>)
{
  v77 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F8E0, &qword_2436D10F0);
  MEMORY[0x28223BE20](v64);
  v58 = (&v57 - v2);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F940, &qword_2436D11E8);
  MEMORY[0x28223BE20](v61);
  v63 = (&v57 - v3);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F8D0, &qword_2436D10E8);
  MEMORY[0x28223BE20](v76);
  v66 = &v57 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE50, &qword_2436D11F0);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v57 = &v57 - v5;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F948, &qword_2436D11F8);
  MEMORY[0x28223BE20](v73);
  v75 = &v57 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F950, &qword_2436D1200);
  MEMORY[0x28223BE20](v60);
  v62 = (&v57 - v7);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F880, &qword_2436D10C0);
  MEMORY[0x28223BE20](v74);
  v65 = &v57 - v8;
  v9 = type metadata accessor for EMSStudentPickerView(0);
  v68 = *(v9 - 8);
  v10 = *(v68 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v72 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F958, &qword_2436D1208);
  v67 = *(v11 - 8);
  v12 = *(v67 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v70 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F890, &qword_2436D10C8);
  MEMORY[0x28223BE20](v59);
  v17 = (&v57 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
  MEMORY[0x28223BE20](v18);
  v20 = (&v57 - v19);
  swift_getKeyPath(byte_2436D1218);
  swift_getKeyPath(byte_2436D1240);
  sub_2436CAED8();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v22 = v57;
      sub_24367A8C0(v20, v57, &unk_27ED7FE50, &qword_2436D11F0);
      sub_2436714A8(v22, v15, &unk_27ED7FE50, &qword_2436D11F0);
      (*(v69 + 56))(v15, 0, 1, v71);
      v23 = v72;
      sub_243693E74(v1, v72);
      v24 = v70;
      sub_24367A8C0(v15, v70, &qword_27ED7F958, &qword_2436D1208);
      v25 = (*(v68 + 80) + 24) & ~*(v68 + 80);
      v26 = (v10 + *(v67 + 80) + v25) & ~*(v67 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = MEMORY[0x277D84F90];
      sub_2436A7C44(v23, v27 + v25);
      sub_24367A8C0(v24, v27 + v26, &qword_27ED7F958, &qword_2436D1208);
      v28 = v62;
      *v62 = sub_2436A9908;
      v28[1] = v27;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F8B0, &qword_2436D10D8);
      sub_2436A7568();
      sub_243671838(&qword_27ED7F8A8, &qword_27ED7F8B0, &qword_2436D10D8, MEMORY[0x277CDDB40]);
      v29 = v65;
      sub_2436CB398();
      sub_2436714A8(v29, v75, &qword_27ED7F880, &qword_2436D10C0);
      swift_storeEnumTagMultiPayload();
      sub_2436A74B0();
      sub_2436A76D8();
      sub_2436CB398();

      sub_243671AC8(v29, &qword_27ED7F880, &qword_2436D10C0);
      return sub_243671AC8(v22, &unk_27ED7FE50, &qword_2436D11F0);
    }

    v37 = *v20;
    (*(v69 + 56))(v15, 1, 1, v71);
    v38 = v72;
    sub_243693E74(v1, v72);
    v39 = v70;
    sub_24367A8C0(v15, v70, &qword_27ED7F958, &qword_2436D1208);
    v40 = (*(v68 + 80) + 24) & ~*(v68 + 80);
    v41 = (v10 + *(v67 + 80) + v40) & ~*(v67 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v37;
    sub_2436A7C44(v38, v42 + v40);
    sub_24367A8C0(v39, v42 + v41, &qword_27ED7F958, &qword_2436D1208);
    v43 = v63;
    *v63 = sub_2436A7E2C;
    v43[1] = v42;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F8B0, &qword_2436D10D8);
    sub_243671838(&qword_27ED7F8A8, &qword_27ED7F8B0, &qword_2436D10D8, MEMORY[0x277CDDB40]);
    sub_2436A7790();
    v44 = v66;
    sub_2436CB398();
    v45 = &qword_2436D10E8;
    sub_2436714A8(v44, v75, &qword_27ED7F8D0, &qword_2436D10E8);
    swift_storeEnumTagMultiPayload();
    sub_2436A74B0();
    sub_2436A76D8();
    sub_2436CB398();

    v34 = v44;
    v35 = &qword_27ED7F8D0;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 2)
  {
    (*(v69 + 56))(v15, 1, 1, v71);
    v46 = v72;
    sub_243693E74(v1, v72);
    v47 = v70;
    sub_24367A8C0(v15, v70, &qword_27ED7F958, &qword_2436D1208);
    v48 = (*(v68 + 80) + 24) & ~*(v68 + 80);
    v49 = (v10 + *(v67 + 80) + v48) & ~*(v67 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = MEMORY[0x277D84F90];
    sub_2436A7C44(v46, v50 + v48);
    sub_24367A8C0(v47, v50 + v49, &qword_27ED7F958, &qword_2436D1208);
    v51 = sub_2436CBB48();
    v53 = v52;
    v54 = v17 + *(v59 + 36);
    sub_2436CB008();
    v55 = &v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F8C0, &qword_2436D10E0) + 36)];
    *v55 = v51;
    v55[1] = v53;
    *v17 = sub_2436A9908;
    v17[1] = v50;
    v45 = &qword_2436D10C8;
    sub_2436714A8(v17, v62, &qword_27ED7F890, &qword_2436D10C8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F8B0, &qword_2436D10D8);
    sub_2436A7568();
    sub_243671838(&qword_27ED7F8A8, &qword_27ED7F8B0, &qword_2436D10D8, MEMORY[0x277CDDB40]);
    v56 = v65;
    sub_2436CB398();
    sub_2436714A8(v56, v75, &qword_27ED7F880, &qword_2436D10C0);
    swift_storeEnumTagMultiPayload();
    sub_2436A74B0();
    sub_2436A76D8();
    sub_2436CB398();
    sub_243671AC8(v56, &qword_27ED7F880, &qword_2436D10C0);
    v34 = v17;
    v35 = &qword_27ED7F890;
LABEL_8:
    v36 = v45;
    return sub_243671AC8(v34, v35, v36);
  }

  v31 = *v20;
  v32 = v58;
  sub_2436A518C(*v20, v58);
  sub_24367A1F8(v31);
  sub_2436714A8(v32, v63, &qword_27ED7F8E0, &qword_2436D10F0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F8B0, &qword_2436D10D8);
  sub_243671838(&qword_27ED7F8A8, &qword_27ED7F8B0, &qword_2436D10D8, MEMORY[0x277CDDB40]);
  sub_2436A7790();
  v33 = v66;
  sub_2436CB398();
  sub_2436714A8(v33, v75, &qword_27ED7F8D0, &qword_2436D10E8);
  swift_storeEnumTagMultiPayload();
  sub_2436A74B0();
  sub_2436A76D8();
  sub_2436CB398();
  sub_243671AC8(v33, &qword_27ED7F8D0, &qword_2436D10E8);
  v34 = v32;
  v35 = &qword_27ED7F8E0;
  v36 = &qword_2436D10F0;
  return sub_243671AC8(v34, v35, v36);
}

uint64_t sub_2436A4FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FEC0, &unk_2436D02E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = type metadata accessor for EMSStudentPickerView(0);
  sub_2436714A8(v7, v5, &unk_27ED7FEC0, &unk_2436D02E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F820, &unk_2436D0FE0);
  sub_2436CBA08();
  sub_243671AC8(v7, &unk_27ED7FEC0, &unk_2436D02E0);
  v10 = (a1 + *(v9 + 24));
  v11 = *(v10 + 16);
  v12 = *(v10 + 3);
  v16 = *v10;
  v17 = v11;
  v18 = v12;
  v14[1] = 0;
  v14[2] = 0;
  v15 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E828, &qword_2436D1180);
  return sub_2436CBA08();
}

uint64_t sub_2436A518C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FAA8, &qword_2436D13A0);
  MEMORY[0x28223BE20](v3);
  v5 = v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FAB0, &qword_2436D13A8);
  MEMORY[0x28223BE20](v6);
  v8 = (v21 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F8F0, &qword_2436D10F8);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F900, &qword_2436D1100);
  MEMORY[0x28223BE20](v12);
  v14 = v21 - v13;
  if (a1)
  {
    if (a1 == 1)
    {
      *v8 = sub_243678D50;
      v8[1] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E730, &qword_2436D1120);
      sub_2436A78D4();
      sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120, &unk_2436D1E70);
      sub_2436CB398();
      v15 = &qword_27ED7F8F0;
      v16 = &qword_2436D10F8;
      sub_2436714A8(v11, v5, &qword_27ED7F8F0, &qword_2436D10F8);
      swift_storeEnumTagMultiPayload();
      sub_2436A781C();
      sub_2436CB398();
      v17 = v11;
    }

    else
    {
      sub_2436A69F4(a1, v21 - v13);
      v15 = &qword_27ED7F900;
      v16 = &qword_2436D1100;
      sub_2436714A8(v14, v5, &qword_27ED7F900, &qword_2436D1100);
      swift_storeEnumTagMultiPayload();
      sub_2436A781C();
      sub_2436A78D4();
      sub_2436CB398();
      v17 = v14;
    }

    v18 = v15;
    v19 = v16;
  }

  else
  {
    sub_2436A69F4(MEMORY[0x277D84F90], v21 - v13);
    sub_2436714A8(v14, v8, &qword_27ED7F900, &qword_2436D1100);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E730, &qword_2436D1120);
    sub_2436A78D4();
    v21[0] = v3;
    sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120, &unk_2436D1E70);
    sub_2436CB398();
    sub_2436714A8(v11, v5, &qword_27ED7F8F0, &qword_2436D10F8);
    swift_storeEnumTagMultiPayload();
    sub_2436A781C();
    sub_2436CB398();
    sub_243671AC8(v11, &qword_27ED7F8F0, &qword_2436D10F8);
    v17 = v14;
    v18 = &qword_27ED7F900;
    v19 = &qword_2436D1100;
  }

  return sub_243671AC8(v17, v18, v19);
}

uint64_t sub_2436A55C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a4;
  v48 = a3;
  v64 = a1;
  v67 = a5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FEC0, &unk_2436D02E0);
  MEMORY[0x28223BE20](v66);
  v65 = &v47 - v6;
  v7 = sub_2436CB138();
  v61 = *(v7 - 8);
  v62 = v7;
  v63 = *(v61 + 64);
  MEMORY[0x28223BE20](v7);
  v60 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EMSStudentPickerView(0);
  v10 = v9 - 8;
  v59 = *(v9 - 8);
  v58 = *(v59 + 64);
  MEMORY[0x28223BE20](v9);
  v57 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2436CB0E8();
  v13 = *(v12 - 8);
  v55 = v12;
  v56 = v13;
  MEMORY[0x28223BE20](v12);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F970, &qword_2436D1268);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F978, &qword_2436D1270);
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v22 = &v47 - v21;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F980, &unk_2436D1278);
  MEMORY[0x28223BE20](v54);
  v24 = &v47 - v23;
  KeyPath = swift_getKeyPath(byte_2436D1288);
  v52 = *(v10 + 28);

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F820, &unk_2436D0FE0);
  sub_2436CBA18();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F988, &qword_2436D12A0);
  (*(*(v26 - 8) + 56))(v20, 0, 1, v26);
  v73 = a2;
  sub_2436714A8(v20, v18, &qword_27ED7F970, &qword_2436D1268);
  v69 = &v73;
  v70 = KeyPath;
  v71 = sub_2436A5D48;
  v72 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F990, &qword_2436D12A8);
  sub_243671838(&qword_27ED7F998, &qword_27ED80390, &qword_2436D1170, &unk_2436D1708);
  sub_2436A8788();
  sub_2436CB618();

  sub_243671AC8(v20, &qword_27ED7F970, &qword_2436D1268);

  v27 = v53;
  sub_2436CB0D8();
  sub_243671838(&qword_27ED7FA30, &qword_27ED7F978, &qword_2436D1270, MEMORY[0x277CDE5A0]);
  v28 = v49;
  v29 = v55;
  sub_2436CB878();
  (*(v56 + 8))(v27, v29);
  (*(v50 + 8))(v22, v28);
  v30 = v57;
  sub_243693E74(v48, v57);
  v32 = v60;
  v31 = v61;
  v33 = v62;
  (*(v61 + 16))(v60, v64, v62);
  v34 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v35 = v31;
  v36 = (v58 + *(v31 + 80) + v34) & ~*(v31 + 80);
  v37 = swift_allocObject();
  sub_2436A7C44(v30, v37 + v34);
  (*(v35 + 32))(v37 + v36, v32, v33);
  v38 = &v24[*(v54 + 36)];
  *v38 = sub_2436A8ED0;
  v38[1] = v37;
  v38[2] = 0;
  v38[3] = 0;
  v39 = v65;
  sub_2436CB9F8();
  sub_2436A8F9C();
  sub_2436A90B8();
  v40 = v67;
  sub_2436CB868();
  sub_243671AC8(v39, &unk_27ED7FEC0, &unk_2436D02E0);
  sub_243671AC8(v24, &qword_27ED7F980, &unk_2436D1278);
  v41 = sub_2436CBB48();
  v43 = v42;
  v44 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA50, &unk_2436D1308) + 36);
  sub_2436A2E68(v68, v44);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E760, &unk_2436CE270);
  v46 = (v44 + *(result + 36));
  *v46 = v41;
  v46[1] = v43;
  return result;
}

uint64_t sub_2436A5D48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v83 = a1;
  v88 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F9F8, &qword_2436D12E8);
  MEMORY[0x28223BE20](v87);
  v3 = &v71 - v2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FAA0, &qword_2436D1350);
  MEMORY[0x28223BE20](v85);
  v86 = &v71 - v4;
  v5 = sub_2436CB338();
  v6 = *(v5 - 8);
  v80 = v5;
  v81 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F9E8, &unk_2436D12D0);
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x28223BE20](v9);
  v75 = &v71 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F9E0, &qword_2436D12C8);
  MEMORY[0x28223BE20](v76);
  v77 = &v71 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F9C0, &qword_2436D12B8);
  MEMORY[0x28223BE20](v84);
  v82 = &v71 - v12;
  v13 = sub_2436CAC58();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  MEMORY[0x28223BE20](v17);
  v19 = (&v71 - v18);
  sub_2436714A8(v83, &v71 - v18, &qword_27ED80390, &qword_2436D1170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    type metadata accessor for EMSStudentViewModel(0);
    sub_2436A92D8(&qword_27ED7E9F0, type metadata accessor for EMSStudentViewModel, &unk_2436D0908);

    v21 = sub_2436CB098();
    v22 = *(v20 + 16);
    v23 = *(v20 + 24);
    *&v105 = v21;
    *(&v105 + 1) = v24;
    *&v106 = v22;
    *(&v106 + 1) = v23;

    sub_2436CB028();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA20, &qword_2436D1300);
    sub_243671838(&qword_27ED7FA28, &qword_27ED7FA20, &qword_2436D1300, MEMORY[0x277CE1148]);
    sub_2436CB7B8();

    v25 = sub_2436CB568();
    sub_2436CAF88();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA18, &qword_2436D12F8) + 36)];
    *v34 = v25;
    *(v34 + 1) = v27;
    *(v34 + 2) = v29;
    *(v34 + 3) = v31;
    *(v34 + 4) = v33;
    v34[40] = 0;
    v35 = sub_2436CB348();
    v36 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA08, &qword_2436D12F0) + 36)];
    *v36 = v35;
    v36[1] = sub_2436A98FC;
    v36[2] = 0;
    swift_getKeyPath(byte_2436D1358);
    swift_getKeyPath(byte_2436D1380);
    sub_2436CAED8();

    v37 = v86;
    v3[*(v87 + 36)] = (v105 & 1) == 0;
    sub_2436714A8(v3, v37, &qword_27ED7F9F8, &qword_2436D12E8);
    swift_storeEnumTagMultiPayload();
    sub_2436A8898();
    sub_2436A8B18();
    sub_2436CB398();

    return sub_243671AC8(v3, &qword_27ED7F9F8, &qword_2436D12E8);
  }

  else
  {
    v73 = v16;
    v74 = v14;
    (*(v14 + 32))(v16, v19, v13);
    v39 = sub_2436CB2F8();
    sub_2436A6654(v16, &v105);
    v40 = v105;
    v41 = v106;
    v72 = v8;
    v42 = *(&v106 + 1);
    v43 = v107;
    v83 = v13;
    v44 = BYTE8(v107);
    v102 = 1;
    v101 = v106;
    v100 = BYTE8(v107);
    v45 = sub_2436CB548();
    sub_2436CAF88();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    LOBYTE(v105) = 0;
    v54 = sub_2436CB558();
    sub_2436CAF88();
    v99 = 0;
    v89 = v39;
    v90[0] = 1;
    *&v90[8] = v40;
    v90[24] = v41;
    *&v91 = v42;
    *(&v91 + 1) = v43;
    LOBYTE(v92) = v44;
    BYTE8(v92) = v45;
    *&v93 = v47;
    *(&v93 + 1) = v49;
    *&v94 = v51;
    *(&v94 + 1) = v53;
    LOBYTE(v95) = 0;
    *(&v95 + 1) = *v104;
    DWORD1(v95) = *&v104[3];
    BYTE8(v95) = v54;
    HIDWORD(v95) = *&v103[3];
    *(&v95 + 9) = *v103;
    *&v96 = v55;
    *(&v96 + 1) = v56;
    *&v97 = v57;
    *(&v97 + 1) = v58;
    v98 = 0;
    sub_2436CB028();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E920, &qword_2436CE4F8);
    v60 = sub_24367A408();
    v61 = v75;
    sub_2436CB7B8();
    v113 = v96;
    v114 = v97;
    v115 = v98;
    v109 = v92;
    v110 = v93;
    v111 = v94;
    v112 = v95;
    v105 = v89;
    v106 = *v90;
    v107 = *&v90[16];
    v108 = v91;
    sub_243671AC8(&v105, &qword_27ED7E920, &qword_2436CE4F8);
    sub_2436CB028();
    *&v89 = v59;
    *(&v89 + 1) = v60;
    swift_getOpaqueTypeConformance2();
    v62 = v77;
    v63 = v79;
    sub_2436CB758();
    (*(v78 + 8))(v61, v63);
    *(v62 + *(v76 + 36)) = 0;
    v64 = v72;
    sub_2436CB328();
    sub_2436A89E0();
    v65 = v82;
    sub_2436CB7D8();
    (*(v81 + 8))(v64, v80);
    sub_243671AC8(v62, &qword_27ED7F9E0, &qword_2436D12C8);
    LOBYTE(v39) = sub_2436CB568();
    sub_2436CAF88();
    v66 = v65 + *(v84 + 36);
    *v66 = v39;
    *(v66 + 8) = v67;
    *(v66 + 16) = v68;
    *(v66 + 24) = v69;
    *(v66 + 32) = v70;
    *(v66 + 40) = 0;
    sub_2436714A8(v65, v86, &qword_27ED7F9C0, &qword_2436D12B8);
    swift_storeEnumTagMultiPayload();
    sub_2436A8898();
    sub_2436A8B18();
    sub_2436CB398();
    sub_243671AC8(v65, &qword_27ED7F9C0, &qword_2436D12B8);
    return (*(v74 + 8))(v73, v83);
  }
}

double sub_2436A6654@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2436CAC58();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v7 = sub_2436CB688();
  v9 = v8;
  v11 = v10;
  sub_2436CB598();
  v12 = sub_2436CB658();
  v14 = v13;
  v16 = v15;

  sub_243679F68(v7, v9, v11 & 1);

  sub_2436CB5B8();
  v17 = sub_2436CB628();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_243679F68(v12, v14, v16 & 1);

  *a2 = v17;
  *(a2 + 8) = v19;
  v21 &= 1u;
  *(a2 + 16) = v21;
  *(a2 + 24) = v23;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_24366C090(v17, v19, v21);

  sub_243679F68(v17, v19, v21);

  return result;
}

double sub_2436A6824()
{
  sub_2436AC6A0();
  if (v1)
  {
    sub_2436CBBB8();
    sub_2436CB128();
  }

  return result;
}

uint64_t sub_2436A689C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FEC0, &unk_2436D02E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_2436714A8(a2, &v12 - v4, &unk_27ED7FEC0, &unk_2436D02E0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    v7 = &unk_27ED7FEC0;
    v8 = &unk_2436D02E0;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = *(*v5 + 32);
      v10 = swift_unknownObjectRetain();
      v9(v10);

      return swift_unknownObjectRelease();
    }

    v7 = &qword_27ED80390;
    v8 = &qword_2436D1170;
  }

  return sub_243671AC8(v5, v7, v8);
}

uint64_t sub_2436A69F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E978, &unk_2436D13B0);
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x28223BE20](v4);
  v40 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E980, &unk_2436CE530);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v40 - v8;
  v46 = sub_2436CB0E8();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F910, &unk_2436D1110);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F908, &qword_2436D1108);
  v16 = *(v15 - 8);
  v48 = v15;
  v49 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  KeyPath = swift_getKeyPath(aH_3);
  v20 = v2 + *(type metadata accessor for EMSStudentPickerView(0) + 24);
  v44 = *v20;
  v43 = *(v20 + 8);
  v42 = *(v20 + 16);
  v41 = *(v20 + 24);
  v62 = v44;
  v63 = v43;
  v64 = v42;
  v65 = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E828, &qword_2436D1180);
  sub_2436CBA18();
  v62 = a1;
  v45 = a1;
  v54 = &v62;
  v55 = KeyPath;
  v56 = sub_2436A7044;
  v57 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FAB8, &qword_2436D13D8);
  sub_24367A614();
  sub_2436A9334();
  sub_2436CB618();

  sub_2436CB0D8();
  v21 = sub_243671838(&qword_27ED7F918, &qword_27ED7F910, &unk_2436D1110, MEMORY[0x277CDE5A0]);
  v22 = MEMORY[0x277CDD980];
  v23 = v46;
  sub_2436CB878();
  (*(v47 + 8))(v10, v23);
  (*(v12 + 8))(v14, v11);
  v58 = v44;
  v59 = v43;
  LOBYTE(v60) = v42;
  v61 = v41;
  v24 = v50;
  sub_2436CB9F8();
  v25 = v62;
  v26 = v63;
  LOBYTE(v12) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6F0, &qword_2436CE0C0);
  v58 = v11;
  v59 = v23;
  v60 = v21;
  v61 = v22;
  v27 = v51;
  v28 = 1;
  swift_getOpaqueTypeConformance2();
  sub_243679E90();
  v29 = v48;
  v30 = v52;
  sub_2436CB868();
  v31 = v26;
  v32 = v53;
  sub_24367A874(v25, v31, v12);
  (*(v49 + 8))(v18, v29);
  v33 = sub_2436CBB48();
  v35 = v34;
  if (!*(v45 + 16))
  {
    v36 = v40;
    sub_2436CB478();
    (*(v32 + 32))(v24, v36, v30);
    v28 = 0;
  }

  (*(v32 + 56))(v24, v28, 1, v30);
  v37 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F900, &qword_2436D1100) + 36);
  sub_24367A8C0(v24, v37, &qword_27ED7E980, &unk_2436CE530);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E7D8, &qword_2436CE2A8);
  v39 = (v37 + *(result + 36));
  *v39 = v33;
  v39[1] = v35;
  return result;
}

uint64_t sub_2436A7044@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FAE0, &qword_2436D13E8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v10 = *a1 & 0x7FFFFFFFFFFFFFFFLL;
    v27 = v5;
    type metadata accessor for EMSStudentViewModel(0);
    sub_2436A92D8(&qword_27ED7E9F0, type metadata accessor for EMSStudentViewModel, &unk_2436D0908);
    swift_retain_n();
    v11 = sub_2436CB098();
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    v28 = v11;
    v29 = v14;
    v30 = v12;
    v31 = v13;

    sub_2436CB028();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA20, &qword_2436D1300);
    sub_243671838(&qword_27ED7FA28, &qword_27ED7FA20, &qword_2436D1300, MEMORY[0x277CE1148]);
    sub_2436CB7B8();

    v15 = sub_2436CB348();
    v16 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB00, &unk_2436D13F8) + 36)];
    *v16 = v15;
    v16[1] = sub_2436A98FC;
    v16[2] = 0;
    swift_getKeyPath(byte_2436D1358);
    swift_getKeyPath(byte_2436D1380);
    sub_2436CAED8();

    LOBYTE(v15) = v28;
    v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FAF0, &qword_2436D13F0) + 36)] = (v15 & 1) == 0;
    LOBYTE(v15) = sub_2436CB568();
    sub_2436CAF88();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = &v7[*(v4 + 36)];
    *v25 = v15;
    *(v25 + 1) = v18;
    *(v25 + 2) = v20;
    *(v25 + 3) = v22;
    *(v25 + 4) = v24;
    v25[40] = 0;
    sub_24367A8C0(v7, a2, &qword_27ED7FAE0, &qword_2436D13E8);
    return (*(v27 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v8 = *(v5 + 56);

    return v8(a2, 1, 1, v4);
  }
}

void sub_2436A739C(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 16) != 255 && *a2 < 0)
  {
    v3 = *((*a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);

    v4 = swift_unknownObjectRetain();
    v3(v4);

    swift_unknownObjectRelease();
  }
}

unint64_t sub_2436A7424()
{
  result = qword_27ED7F870;
  if (!qword_27ED7F870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F850, &qword_2436D1058);
    sub_2436A74B0();
    sub_2436A76D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F870);
  }

  return result;
}

unint64_t sub_2436A74B0()
{
  result = qword_27ED7F878;
  if (!qword_27ED7F878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F880, &qword_2436D10C0);
    sub_2436A7568();
    sub_243671838(&qword_27ED7F8A8, &qword_27ED7F8B0, &qword_2436D10D8, MEMORY[0x277CDDB40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F878);
  }

  return result;
}

unint64_t sub_2436A7568()
{
  result = qword_27ED7F888;
  if (!qword_27ED7F888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F890, &qword_2436D10C8);
    sub_2436A7620();
    sub_243671838(&qword_27ED7F8B8, &qword_27ED7F8C0, &qword_2436D10E0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F888);
  }

  return result;
}

unint64_t sub_2436A7620()
{
  result = qword_27ED7F898;
  if (!qword_27ED7F898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F8A0, &qword_2436D10D0);
    sub_243671838(&qword_27ED7F8A8, &qword_27ED7F8B0, &qword_2436D10D8, MEMORY[0x277CDDB40]);
    sub_243692EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F898);
  }

  return result;
}

unint64_t sub_2436A76D8()
{
  result = qword_27ED7F8C8;
  if (!qword_27ED7F8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F8D0, &qword_2436D10E8);
    sub_243671838(&qword_27ED7F8A8, &qword_27ED7F8B0, &qword_2436D10D8, MEMORY[0x277CDDB40]);
    sub_2436A7790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F8C8);
  }

  return result;
}

unint64_t sub_2436A7790()
{
  result = qword_27ED7F8D8;
  if (!qword_27ED7F8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F8E0, &qword_2436D10F0);
    sub_2436A781C();
    sub_2436A78D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F8D8);
  }

  return result;
}

unint64_t sub_2436A781C()
{
  result = qword_27ED7F8E8;
  if (!qword_27ED7F8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F8F0, &qword_2436D10F8);
    sub_2436A78D4();
    sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120, &unk_2436D1E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F8E8);
  }

  return result;
}

unint64_t sub_2436A78D4()
{
  result = qword_27ED7F8F8;
  if (!qword_27ED7F8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F900, &qword_2436D1100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F908, &qword_2436D1108);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E6F0, &qword_2436CE0C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F910, &unk_2436D1110);
    sub_2436CB0E8();
    sub_243671838(&qword_27ED7F918, &qword_27ED7F910, &unk_2436D1110, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    sub_243679E90();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7E7D0, &qword_27ED7E7D8, &qword_2436CE2A8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F8F8);
  }

  return result;
}

uint64_t sub_2436A7A8C()
{
  v1 = type metadata accessor for EMSStudentPickerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v7 = sub_2436CAC58();
      (*(*(v7 - 8) + 8))(v5, v7);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F820, &unk_2436D0FE0);

  if (*(v0 + v3 + *(v1 + 24) + 16) != 255)
  {

    swift_unknownObjectRelease();
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2436A7C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EMSStudentPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2436A7CA8()
{
  v1 = *(type metadata accessor for EMSStudentPickerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2436A4FE0(v2);
}

unint64_t sub_2436A7D08()
{
  result = qword_27ED7F938;
  if (!qword_27ED7F938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F860, &qword_2436D1068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F850, &qword_2436D1058);
    sub_2436A7424();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7E7F0, &qword_27ED7E7F8, &qword_2436CE2B8, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F938);
  }

  return result;
}

uint64_t objectdestroy_33Tm()
{
  v1 = type metadata accessor for EMSStudentPickerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(*(v1 - 8) + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F958, &qword_2436D1208) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);

  v8 = v0 + v3;

  v9 = v0 + v3 + *(v1 + 20);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v11 = sub_2436CAC58();
      (*(*(v11 - 8) + 8))(v9, v11);
    }
  }

  v12 = (v4 + v6) & ~v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F820, &unk_2436D0FE0);

  if (*(v8 + *(v1 + 24) + 16) != 255)
  {

    swift_unknownObjectRelease();
  }

  v13 = v0 + v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE50, &qword_2436D11F0);
  if (!(*(*(v14 - 1) + 48))(v0 + v12, 1, v14))
  {
    v25 = v7;

    v15 = v14[7];
    v16 = sub_2436CAC58();
    v17 = *(v16 - 8);
    v24 = *(v17 + 8);
    v24(v13 + v15, v16);
    v18 = v14[8];
    if (!(*(v17 + 48))(v13 + v18, 1, v16))
    {
      v24(v13 + v18, v16);
    }

    v19 = v13 + v14[9];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F968, &qword_2436D1260);
    v7 = v25;
    if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
    {
      v24(v19, v16);
      v21 = *(v20 + 28);
      v22 = sub_2436CAC98();
      (*(*(v22 - 8) + 8))(v19 + v21, v22);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v12 + v7, v2 | v6 | 7);
}

uint64_t sub_2436A820C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for EMSStudentPickerView(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F958, &qword_2436D1208) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2436A55C4(a1, v9, v2 + v6, v10, a2);
}

uint64_t sub_2436A8300@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8C0, &unk_2436CE980);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_2436CAC58();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_2436714A8(a1 + *(v15 + 32), v10, &qword_27ED7E8C0, &unk_2436CE980);
  v16 = *(v12 + 48);
  if (v16(v10, 1, v11) == 1)
  {
    sub_2436CAC38();
    if (v16(v10, 1, v11) != 1)
    {
      sub_243671AC8(v10, &qword_27ED7E8C0, &unk_2436CE980);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  result = sub_2436CB688();
  *a4 = result;
  *(a4 + 8) = v18;
  *(a4 + 16) = v19 & 1;
  *(a4 + 24) = v20;
  return result;
}

uint64_t sub_2436A84E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E9E0, &qword_2436CE580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FAD0, &qword_2436D13E0);
  sub_243671838(&qword_27ED7E9E8, &qword_27ED7E9E0, &qword_2436CE580, MEMORY[0x277D83980]);
  sub_24367A614();
  sub_2436A93B8();
  return sub_2436CBAB8();
}

uint64_t sub_2436A861C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA90, &qword_2436D1348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F9B0, &qword_2436D12B0);
  sub_243671838(&qword_27ED7FA98, &qword_27ED7FA90, &qword_2436D1348, MEMORY[0x277D83980]);
  sub_243671838(&qword_27ED7F998, &qword_27ED80390, &qword_2436D1170, &unk_2436D1708);
  sub_2436A880C();
  return sub_2436CBAB8();
}

unint64_t sub_2436A8788()
{
  result = qword_27ED7F9A0;
  if (!qword_27ED7F9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F990, &qword_2436D12A8);
    sub_2436A880C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F9A0);
  }

  return result;
}

unint64_t sub_2436A880C()
{
  result = qword_27ED7F9A8;
  if (!qword_27ED7F9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F9B0, &qword_2436D12B0);
    sub_2436A8898();
    sub_2436A8B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F9A8);
  }

  return result;
}

unint64_t sub_2436A8898()
{
  result = qword_27ED7F9B8;
  if (!qword_27ED7F9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F9C0, &qword_2436D12B8);
    sub_2436A8924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F9B8);
  }

  return result;
}

unint64_t sub_2436A8924()
{
  result = qword_27ED7F9C8;
  if (!qword_27ED7F9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F9D0, &qword_2436D12C0);
    sub_2436A89E0();
    sub_2436A92D8(&qword_27ED7E870, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F9C8);
  }

  return result;
}

unint64_t sub_2436A89E0()
{
  result = qword_27ED7F9D8;
  if (!qword_27ED7F9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F9E0, &qword_2436D12C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F9E8, &unk_2436D12D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E920, &qword_2436CE4F8);
    sub_24367A408();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7EA18, &qword_27ED7EA20, &qword_2436D12E0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F9D8);
  }

  return result;
}

unint64_t sub_2436A8B18()
{
  result = qword_27ED7F9F0;
  if (!qword_27ED7F9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F9F8, &qword_2436D12E8);
    sub_2436A8BD0();
    sub_243671838(&qword_27ED7EA18, &qword_27ED7EA20, &qword_2436D12E0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F9F0);
  }

  return result;
}

unint64_t sub_2436A8BD0()
{
  result = qword_27ED7FA00;
  if (!qword_27ED7FA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7FA08, &qword_2436D12F0);
    sub_2436A95A0(&qword_27ED7FA10, &qword_27ED7FA18, &qword_2436D12F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FA00);
  }

  return result;
}

uint64_t sub_2436A8C7C()
{
  v1 = type metadata accessor for EMSStudentPickerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(*(v1 - 8) + 64);
  v4 = sub_2436CB138();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v13 = *(v5 + 64);

  v7 = v0 + v3 + *(v1 + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v9 = sub_2436CAC58();
      (*(*(v9 - 8) + 8))(v7, v9);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F820, &unk_2436D0FE0);

  if (*(v0 + v3 + *(v1 + 24) + 16) != 255)
  {

    swift_unknownObjectRelease();
  }

  v10 = (v3 + v12 + v6) & ~v6;

  (*(v5 + 8))(v0 + v10, v4);

  return MEMORY[0x2821FE8E8](v0, v10 + v13, v2 | v6 | 7);
}

double sub_2436A8ED0()
{
  type metadata accessor for EMSStudentPickerView(0);
  sub_2436CB138();

  return sub_2436A6824();
}

unint64_t sub_2436A8F9C()
{
  result = qword_27ED7FA38;
  if (!qword_27ED7FA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F980, &unk_2436D1278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F978, &qword_2436D1270);
    sub_2436CB0E8();
    sub_243671838(&qword_27ED7FA30, &qword_27ED7F978, &qword_2436D1270, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FA38);
  }

  return result;
}

unint64_t sub_2436A90B8()
{
  result = qword_27ED7FA40;
  if (!qword_27ED7FA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED7FEC0, &unk_2436D02E0);
    sub_243671838(&qword_27ED7FA48, &qword_27ED80390, &qword_2436D1170, &unk_2436D16A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FA40);
  }

  return result;
}

unint64_t sub_2436A91C8()
{
  result = qword_27ED7FA78;
  if (!qword_27ED7FA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7FA68, &qword_2436D1328);
    sub_243671838(&qword_27ED7FA80, &qword_27ED7FA88, &qword_2436D1330, MEMORY[0x277CDE598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FA78);
  }

  return result;
}

uint64_t sub_2436A9278()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2436A92D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2436A9334()
{
  result = qword_27ED7FAC0;
  if (!qword_27ED7FAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7FAB8, &qword_2436D13D8);
    sub_2436A93B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FAC0);
  }

  return result;
}

unint64_t sub_2436A93B8()
{
  result = qword_27ED7FAC8;
  if (!qword_27ED7FAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7FAD0, &qword_2436D13E0);
    sub_2436A943C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FAC8);
  }

  return result;
}

unint64_t sub_2436A943C()
{
  result = qword_27ED7FAD8;
  if (!qword_27ED7FAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7FAE0, &qword_2436D13E8);
    sub_2436A94C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FAD8);
  }

  return result;
}

unint64_t sub_2436A94C8()
{
  result = qword_27ED7FAE8;
  if (!qword_27ED7FAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7FAF0, &qword_2436D13F0);
    sub_2436A95A0(&qword_27ED7FAF8, &qword_27ED7FB00, &unk_2436D13F8);
    sub_243671838(&qword_27ED7EA18, &qword_27ED7EA20, &qword_2436D12E0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FAE8);
  }

  return result;
}

uint64_t sub_2436A95A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7FA20, &qword_2436D1300);
    sub_243671838(&qword_27ED7FA28, &qword_27ED7FA20, &qword_2436D1300, MEMORY[0x277CE1148]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_15Tm(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

unint64_t sub_2436A978C()
{
  result = qword_27ED7FB30;
  if (!qword_27ED7FB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F920, &qword_2436D1178);
    sub_2436A9818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FB30);
  }

  return result;
}

unint64_t sub_2436A9818()
{
  result = qword_27ED7FB38;
  if (!qword_27ED7FB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F868, &qword_2436D1070);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F860, &qword_2436D1068);
    sub_2436A7D08();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FB38);
  }

  return result;
}

uint64_t sub_2436A990C()
{
  v1 = v0;
  v2 = sub_2436CAD98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 32))
  {
    v6 = *(v0 + 24);
  }

  else
  {
    sub_2436CAD88();
    v6 = sub_2436CAD58();
    v8 = v7;
    (*(v3 + 8))(v5, v2);
    *(v1 + 24) = v6;
    *(v1 + 32) = v8;
  }

  return v6;
}

void sub_2436A9A24()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  if ((v1 & 0xC000000000000001) != 0)
  {

    v2 = sub_2436CC008();

    if (v2)
    {
      return;
    }

    goto LABEL_3;
  }

  if (!*(v1 + 16))
  {
LABEL_3:
    sub_2436744F8(*(v0 + 40) + 16, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_0(v7, v8);
    (*(v4 + 8))(v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED70, &qword_2436CEDB0);
    sub_2436AA110(&qword_27ED7EC60, &unk_27ED7ED70, &qword_2436CEDB0);
    sub_2436CAF68();

    swift_beginAccess();
    sub_2436CAE08();
    swift_endAccess();

    v5 = v8;
    v6 = v9;
    __swift_project_boxed_opaque_existential_0(v7, v8);
    (*(v6 + 16))(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB40, &qword_2436D1538);
    sub_2436AA110(qword_27ED7FB48, &qword_27ED7FB40, &qword_2436D1538);
    sub_2436CAF68();

    swift_beginAccess();
    sub_2436CAE08();
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_0(v7);
  }
}

uint64_t sub_2436A9C64()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2436A9CE0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EMSFlowViewModel();
  result = sub_2436CAE38();
  *a2 = result;
  return result;
}

uint64_t sub_2436A9D1C(void *a1)
{
  v2 = v1;
  result = sub_2436AA040();
  if (result)
  {
    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v5 = sub_2436CADE8();
    __swift_project_value_buffer(v5, qword_27ED7FD78);
    v6 = sub_2436CADC8();
    v7 = sub_2436CBED8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24366A000, v6, v7, "Pushing done view model due to running in the test app", v8, 2u);
      MEMORY[0x245D3CD90](v8, -1, -1);
    }

    v9 = [a1 appleID];
    v10 = sub_2436CBD38();
    v12 = v11;

    type metadata accessor for EMSDoneViewModel();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = v10;
    *(v13 + 32) = v12;
    *(v13 + 40) = 0;
    swift_unownedRetainStrong();

    sub_243683944(v13 | 0xC000000000000000);
  }

  else if (*(v1 + 56))
  {
    v14 = *(v1 + 64);
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 16);
    swift_unknownObjectRetain();
    v16(a1, ObjectType, v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2436A9EFC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  swift_unknownObjectRelease();
  swift_unownedRelease();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void *sub_2436A9F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v3[4] = 0;
  v3[7] = MEMORY[0x277D84FA0];
  v3[2] = a1;
  v3[3] = 0;
  type metadata accessor for EMSNavigationStackViewModel(0);
  swift_allocObject();

  v8 = sub_243682F1C();
  v4[6] = v8;
  sub_2436744F8(a1 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_dataSource, v11);
  type metadata accessor for EMSFlowContext();
  v9 = swift_allocObject();
  v9[7] = 0;
  v9[8] = 0;
  sub_2436854AC(v11, (v9 + 2));
  v9[7] = a2;
  v9[8] = a3;
  v9[9] = v8;
  v4[5] = v9;
  swift_unownedRetain();
  return v4;
}

uint64_t sub_2436AA040()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_2436CBD38();
    v4 = v3;

    if (v2 == 0xD000000000000028 && 0x80000002436E8180 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_2436CC2E8();
    }
  }

  return v1 & 1;
}

uint64_t sub_2436AA110(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2436AA164(uint64_t a1)
{
  result = sub_2436CAC58();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2436AA1DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_2436CAC58() - 8) + 64);
  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_25:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_25;
  }

LABEL_14:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_2436AA338(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_2436CAC58() - 8) + 64);
  v9 = *(*(a4 + 16) - 8);
  if (*(v9 + 64) > v8)
  {
    v8 = *(v9 + 64);
  }

  v10 = v8 + 1;
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 254) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v10 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v8 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_39:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_24;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_2436AA53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for EMSViewModelContent.EmptyDetails(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    result = sub_2436CBE48();
    if (v6 <= 0x3F)
    {
      result = sub_2436AA650();
      if (v7 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

ValueMetadata *sub_2436AA650()
{
  result = qword_27ED7FC50[0];
  if (!qword_27ED7FC50[0])
  {
    result = &type metadata for EMSViewModelSearchState;
    atomic_store(&type metadata for EMSViewModelSearchState, qword_27ED7FC50);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14ClassroomUIKit23EMSViewModelSearchStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2436AA698(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 9))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2436AA6EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_2436AA764(uint64_t a1)
{
  sub_2436CAC58();
  if (v2 <= 0x3F)
  {
    sub_2436AAB70(319);
    if (v5 <= 0x3F)
    {
      type metadata accessor for EMSViewModelContent.EmptyDetails.LinkAction(255, *(a1 + 16), v3, v4);
      sub_2436CBF38();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2436AA834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_2436CAC58();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = *(a3 + 28);
LABEL_9:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8C0, &unk_2436CE980);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = *(a3 + 32);
    goto LABEL_9;
  }

  type metadata accessor for EMSViewModelContent.EmptyDetails.LinkAction(255, *(a3 + 16), v13, v14);
  v16 = sub_2436CBF38();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + *(a3 + 36);

  return v17(v18, a2, v16);
}

uint64_t sub_2436AA9E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_2436CAC58();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = *(a4 + 28);
LABEL_7:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8C0, &unk_2436CE980);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = *(a4 + 32);
    goto LABEL_7;
  }

  type metadata accessor for EMSViewModelContent.EmptyDetails.LinkAction(255, *(a4 + 16), v13, v14);
  v16 = sub_2436CBF38();
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + *(a4 + 36);

  return v17(v18, a2, a2, v16);
}

void sub_2436AAB70(uint64_t a1)
{
  if (!qword_27ED7FCD8[0])
  {
    sub_2436CAC58();
    v1 = sub_2436CBF38();
    if (!v2)
    {
      atomic_store(v1, qword_27ED7FCD8);
    }
  }
}

uint64_t sub_2436AABD0(uint64_t a1)
{
  result = sub_2436CAC58();
  if (v2 <= 0x3F)
  {
    result = sub_2436CAC98();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2436AAC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2436CAC58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2436CAC98();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2436AAD6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2436CAC58();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2436CAC98();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2436AAE68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2436AB7B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_2436AAE9C(uint64_t a1)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {

    sub_2436CBD88();
  }

  else
  {
    v2 = *(*v1 + 16);

    v4 = v2;
    sub_2436CBF28();
  }

  return result;
}

uint64_t sub_2436AAF6C(uint64_t a1)
{
  v2 = *v1;
  sub_2436CC368();
  if (v2 < 0)
  {

    sub_2436CBD88();
  }

  else
  {
    v3 = *(v2 + 16);

    v4 = v3;
    sub_2436CBF28();
  }

  return sub_2436CC398();
}

uint64_t sub_2436AB014(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_2436AB7B0(*a1);
  v5 = v4;
  if (v3 == sub_2436AB7B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2436CC2E8();
  }

  return v8 & 1;
}

uint64_t sub_2436AB09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for EMSViewModelListItem(0, a3, a4, a4);
  v5 = sub_2436AB148(v4);
  v7 = v6;
  if (v5 == sub_2436AB148(v4) && v7 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2436CC2E8();
  }

  return v9 & 1;
}

uint64_t sub_2436AB148(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2436CAC58();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v22 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v17, v4);
    sub_2436CC088();
    (*(v5 + 8))(v7, v4);
    return v22[0];
  }

  else
  {
    (*(v9 + 32))(v15, v17, v8);
    (*(v9 + 16))(v12, v15, v8);
    v20 = sub_2436CBD58();
    v22[0] = 0x2D656C746974;
    v22[1] = 0xE600000000000000;
    MEMORY[0x245D3C000](v20);

    v19 = v22[0];
    (*(v9 + 8))(v15, v8);
  }

  return v19;
}

uint64_t sub_2436AB420(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v6);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v2, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_2436CC088();
    sub_2436CBD88();

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_2436AB148(a2);
    sub_2436CBD88();

    return (*(v10 + 8))(v12, a2);
  }
}

uint64_t sub_2436AB61C(uint64_t a1)
{
  sub_2436CC368();
  sub_2436AB420(v3, a1);
  return sub_2436CC398();
}

uint64_t sub_2436AB66C(uint64_t a1, uint64_t a2)
{
  sub_2436CC368();
  sub_2436AB420(v4, a2);
  return sub_2436CC398();
}

uint64_t sub_2436AB6B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2436AB148(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

BOOL sub_2436AB6E4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v4 && v3 == v5;
  }

  v7 = sub_2436CC2E8();
  result = 0;
  if (v7)
  {
    return v2 == v4 && v3 == v5;
  }

  return result;
}

uint64_t sub_2436AB7B0(uint64_t a1)
{
  if (a1 < 0)
  {
    v10 = 0x2D746E6564757473;
    v7 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v8 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

    MEMORY[0x245D3C000](v7, v8);
  }

  else
  {
    v10 = 0x2D657372756F63;
    v1 = *(a1 + 16);

    v2 = v1;
    v3 = [v2 description];
    v4 = sub_2436CBD38();
    v6 = v5;

    MEMORY[0x245D3C000](v4, v6);
  }

  return v10;
}

uint64_t sub_2436AB8B8(uint64_t a1)
{
  sub_2436CC368();
  if (a1 < 0)
  {

    sub_2436CBD88();
  }

  else
  {
    v2 = *(a1 + 16);

    v3 = v2;
    sub_2436CBF28();
  }

  return sub_2436CC398();
}

uint64_t sub_2436AB964(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2436AB9C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRKUIStudentColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRKUIStudentColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2436ABBA0()
{
  result = qword_27ED7FD60;
  if (!qword_27ED7FD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7FD68, qword_2436D1968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FD60);
  }

  return result;
}

unint64_t sub_2436ABC18()
{
  result = qword_27ED7FD70;
  if (!qword_27ED7FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FD70);
  }

  return result;
}

uint64_t sub_2436ABC88()
{
  v0 = sub_2436CADE8();
  __swift_allocate_value_buffer(v0, qword_27ED7FD78);
  __swift_project_value_buffer(v0, qword_27ED7FD78);
  return sub_2436CADD8();
}

uint64_t static Logger.easyMAID.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ED7DF10 != -1)
  {
    swift_once();
  }

  v2 = sub_2436CADE8();
  v3 = __swift_project_value_buffer(v2, qword_27ED7FD78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

BOOL sub_2436ABDCC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v30 = a4;
  v31 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v30 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v30 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v30 - v22;
  sub_2436714A8(v5, &v30 - v22, a2, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_243671AC8(v23, a2, a3);
      sub_2436714A8(a1, v12, a2, a3);
      v25 = swift_getEnumCaseMultiPayload() == 2;
      v26 = v12;
    }

    else
    {
      sub_2436714A8(a1, v21, a2, a3);
      v25 = swift_getEnumCaseMultiPayload() == 3;
      v26 = v21;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
    sub_243671AC8(v23, a2, a3);
    sub_2436714A8(a1, v15, a2, a3);
    v25 = swift_getEnumCaseMultiPayload() == 1;
    v26 = v15;
LABEL_9:
    sub_243671AC8(v26, a2, a3);
    return v25;
  }

  sub_2436714A8(a1, v18, a2, a3);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_243671AC8(v18, a2, a3);
    sub_243671AC8(v23, v30, v31);
    return 0;
  }

  else
  {
    v29 = v30;
    v28 = v31;
    sub_243671AC8(v18, v30, v31);
    sub_243671AC8(v23, v29, v28);
    return 1;
  }
}

uint64_t sub_2436AC06C()
{
  swift_getKeyPath(byte_2436D1C18);
  swift_getKeyPath(byte_2436D1C40);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_2436AC0E0()
{
  swift_getKeyPath(byte_2436D1C60);
  swift_getKeyPath(aP_7);
  sub_2436CAED8();

  return v1;
}

void sub_2436AC17C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  swift_getKeyPath(byte_2436D1BD0);
  swift_getKeyPath(byte_2436D1BF8);
  sub_2436CAED8();

  LOBYTE(a1) = sub_2436ABDCC(a1, &qword_27ED7F960, &qword_2436D1210, &unk_27ED7FE50, &qword_2436D11F0);
  sub_243671AC8(v9, &qword_27ED7F960, &qword_2436D1210);
  if ((a1 & 1) == 0)
  {
    swift_getKeyPath(byte_2436D1BD0);
    swift_getKeyPath(byte_2436D1BF8);
    sub_2436CAED8();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 2)
    {
      sub_243671AC8(v7, &qword_27ED7F960, &qword_2436D1210);
      swift_getKeyPath(byte_2436D1C18);
      swift_getKeyPath(byte_2436D1C40);
      LOBYTE(v28) = 1;

      sub_2436CAEE8();
    }

    else
    {
      swift_getKeyPath(byte_2436D1C18);
      swift_getKeyPath(byte_2436D1C40);
      LOBYTE(v28) = 0;

      sub_2436CAEE8();
      sub_243671AC8(v7, &qword_27ED7F960, &qword_2436D1210);
    }

    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v11 = sub_2436CADE8();
    __swift_project_value_buffer(v11, qword_27ED7FD78);

    v12 = sub_2436CADC8();
    v13 = sub_2436CBED8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 136446722;
      v16 = [*(v2 + 16) stringValue];
      v17 = sub_2436CBD38();
      v19 = v18;

      v20 = sub_2436AFA70(v17, v19, &v30);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      swift_getKeyPath(byte_2436D1C60);
      swift_getKeyPath(aP_7);
      sub_2436CAED8();

      if (v29)
      {
        v21 = v28;
      }

      else
      {
        v21 = 7104878;
      }

      if (v29)
      {
        v22 = v29;
      }

      else
      {
        v22 = 0xE300000000000000;
      }

      v23 = sub_2436AFA70(v21, v22, &v30);

      *(v14 + 14) = v23;
      *(v14 + 22) = 2082;
      swift_getKeyPath(byte_2436D1BD0);
      swift_getKeyPath(byte_2436D1BF8);
      sub_2436CAED8();

      v24 = sub_2436CBD68();
      v26 = sub_2436AFA70(v24, v25, &v30);

      *(v14 + 24) = v26;
      _os_log_impl(&dword_24366A000, v12, v13, "New student picker: %{public}s name: %{public}s content: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D3CD90](v15, -1, -1);
      MEMORY[0x245D3CD90](v14, -1, -1);
    }
  }
}

uint64_t sub_2436AC628()
{
  swift_getKeyPath(byte_2436D1BD0);
  swift_getKeyPath(byte_2436D1BF8);
  sub_2436CAED8();
}

uint64_t sub_2436AC6A0()
{
  v1 = v0;
  v55 = sub_2436CAC58();
  v2 = *(v55 - 8);
  v3 = MEMORY[0x28223BE20](v55);
  v54 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v53 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FEC0, &unk_2436D02E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
  MEMORY[0x28223BE20](v15);
  v17 = (&v46 - v16);
  swift_getKeyPath(byte_2436D1BD0);
  swift_getKeyPath(byte_2436D1BF8);
  sub_2436CAED8();

  v18 = &qword_27ED7F000;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_243671AC8(v17, &qword_27ED7F960, &qword_2436D1210);
    goto LABEL_17;
  }

  v46 = v14;
  v47 = v1;
  v19 = *v17;
  v20 = *(v19 + 16);
  v18 = v56;
  if (!v20)
  {
LABEL_16:

    v38 = v46;
    (v18[7])(v46, 1, 1, v57);
    sub_243671AC8(v38, &unk_27ED7FEC0, &unk_2436D02E0);
    v1 = v47;
    v18 = &qword_27ED7F000;
LABEL_17:
    if (qword_27ED7DF10 != -1)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v21 = 0;
  v1 = (v47 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_scrollToUserIdentifierPrivate);
  v22 = v19 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
  v49 = (v2 + 16);
  v50 = (v2 + 32);
  v48 = (v2 + 8);
  v51 = v22;
  v52 = v9;
  while (v21 < *(v19 + 16))
  {
    sub_2436714A8(v22 + v18[9] * v21, v11, &qword_27ED80390, &qword_2436D1170);
    sub_2436714A8(v11, v9, &qword_27ED80390, &qword_2436D1170);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = *(*v9 + 16);
      v23 = *(*v9 + 24);

      v18 = v56;

      v25 = v1[1];
      if (!v25)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v26 = v1;
      v27 = v53;
      v28 = v9;
      v29 = v11;
      v30 = v20;
      v31 = v19;
      v32 = v18;
      v33 = v55;
      (*v50)(v53, v28, v55);
      (*v49)(v54, v27, v33);
      v34 = sub_2436CBD58();
      v58 = 0x2D656C746974;
      v59 = 0xE600000000000000;
      MEMORY[0x245D3C000](v34);

      v24 = v58;
      v23 = v59;
      v35 = v27;
      v1 = v26;
      v36 = v33;
      v18 = v32;
      v19 = v31;
      v20 = v30;
      v11 = v29;
      v22 = v51;
      v9 = v52;
      (*v48)(v35, v36);
      v25 = v1[1];
      if (!v25)
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    if (v24 == *v1 && v25 == v23)
    {

LABEL_22:

      v45 = v46;
      sub_24367A8C0(v11, v46, &qword_27ED80390, &qword_2436D1170);
      (v18[7])(v45, 0, 1, v57);
      sub_243671AC8(v45, &unk_27ED7FEC0, &unk_2436D02E0);
      result = *v1;
      *v1 = 0;
      v1[1] = 0;
      return result;
    }

    v37 = sub_2436CC2E8();

    if (v37)
    {
      goto LABEL_22;
    }

LABEL_5:
    ++v21;
    sub_243671AC8(v11, &qword_27ED80390, &qword_2436D1170);
    if (v20 == v21)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_24:
  swift_once();
LABEL_18:
  v39 = sub_2436CADE8();
  __swift_project_value_buffer(v39, qword_27ED7FD78);
  v40 = sub_2436CADC8();
  v41 = sub_2436CBEC8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_24366A000, v40, v41, "Student for scrollToUserIdentifierPrivate does not exist", v42, 2u);
    MEMORY[0x245D3CD90](v42, -1, -1);
  }

  v43 = (v1 + v18[440]);
  *v43 = 0;
  v43[1] = 0;

  return 0;
}

uint64_t sub_2436ACCF0(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
    }

    swift_getKeyPath(byte_2436D1D70);
    swift_getKeyPath(byte_2436D1D98);
    return sub_2436CAEE8();
  }

  return result;
}

uint64_t sub_2436ACD94(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        sub_2436ACF84(0);
      }

      v4 = [v2 courses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F5E0, &unk_2436D1DF0);
      v5 = sub_2436CBE08();

      if (v5 >> 62)
      {
        goto LABEL_19;
      }

      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_7:
        v7 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v2 = MEMORY[0x245D3C2F0](v7, v5);
            v8 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
LABEL_16:
              __break(1u);
LABEL_17:

              goto LABEL_21;
            }
          }

          else
          {
            if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_19:
              v6 = sub_2436CC008();
              if (!v6)
              {
                break;
              }

              goto LABEL_7;
            }

            v2 = *(v5 + 8 * v7 + 32);
            swift_unknownObjectRetain();
            v8 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              goto LABEL_16;
            }
          }

          sub_243671B28(0, &unk_27ED7FF20, 0x277D82BB8);
          v9 = [v2 identifier];
          v10 = sub_2436CBF18();

          if (v10)
          {
            goto LABEL_17;
          }

          swift_unknownObjectRelease();
          ++v7;
        }

        while (v8 != v6);
      }

      v2 = 0;
    }

LABEL_21:
    sub_2436ACF84(v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2436ACF84(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v56 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v56 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC40, &unk_2436CED90);
  MEMORY[0x28223BE20](v59);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FE80, &qword_2436D1CB8);
  MEMORY[0x28223BE20](v58);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE88, &qword_2436D1CC0);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - v15;
  if (a1)
  {
    v57 = v14;
    v17 = [swift_unknownObjectRetain() name];
    v18 = sub_2436CBD38();
    v20 = v19;

    swift_getKeyPath(byte_2436D1C60);
    swift_getKeyPath(aP_7);
    v60 = v18;
    v61 = v20;

    sub_2436CAEE8();
    swift_unknownObjectRelease();
    swift_getKeyPath(a8_1);
    swift_getKeyPath(byte_2436D1CF0);
    v60 = a1;
    swift_unknownObjectRetain();

    sub_2436CAEE8();
    type metadata accessor for EMSCourseStudentsResultProvider(0);
    swift_allocObject();
    v21 = swift_unknownObjectRetain();
    v22 = sub_2436BFE44(v21);
    type metadata accessor for EMSSearcher(0);
    v23 = swift_allocObject();
    v24 = sub_2436B121C(v22, v23);
    *(v2 + 32) = v24;
    swift_retain_n();

    v25 = [a1 name];
    v26 = sub_2436CBD38();
    v28 = v27;

    type metadata accessor for EMSSearchBarViewModel(0);
    swift_allocObject();
    v29 = sub_24368A650(v24, v26, v28, 0);

    swift_getKeyPath(byte_2436D1D10);
    swift_getKeyPath(byte_2436D1D38);
    v60 = v29;

    sub_2436CAEE8();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE98, &unk_2436D1D60);
    sub_2436CAEA8();
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC50, &qword_2436CF6A0);
    sub_2436CAEA8();
    swift_endAccess();
    v30 = MEMORY[0x277CBCEC8];
    sub_243671838(&qword_27ED7FEA8, &qword_27ED7FE80, &qword_2436D1CB8, MEMORY[0x277CBCEC8]);
    sub_243671838(&qword_27ED7FEB0, &qword_27ED7EC40, &unk_2436CED90, v30);
    sub_2436CADF8();
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = sub_2436B21EC;
    *(v32 + 24) = v31;
    sub_243671838(&qword_27ED7FEB8, &unk_27ED7FE88, &qword_2436D1CC0, MEMORY[0x277CBCAF0]);
    v33 = sub_2436CAF68();
    swift_unknownObjectRelease();

    (*(v57 + 8))(v16, v13);
    *(v2 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_searcherCancellable) = v33;
  }

  else
  {
    v59 = v7;
    swift_getKeyPath(a8_1);
    swift_getKeyPath(byte_2436D1CF0);
    v60 = 0;
    swift_unknownObjectRetain();

    sub_2436CAEE8();
    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v34 = sub_2436CADE8();
    __swift_project_value_buffer(v34, qword_27ED7FD78);

    v35 = sub_2436CADC8();
    v36 = sub_2436CBED8();

    v37 = os_log_type_enabled(v35, v36);
    v57 = v4;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v62 = v58;
      *v38 = 138543618;
      v40 = v10;
      v41 = *(v2 + 16);
      *(v38 + 4) = v41;
      *v39 = v41;
      *(v38 + 12) = 2082;
      swift_getKeyPath(byte_2436D1C60);
      swift_getKeyPath(aP_7);
      v42 = v41;
      v10 = v40;
      sub_2436CAED8();

      if (v61)
      {
        v43 = v60;
      }

      else
      {
        v43 = 7104878;
      }

      if (v61)
      {
        v44 = v61;
      }

      else
      {
        v44 = 0xE300000000000000;
      }

      v45 = sub_2436AFA70(v43, v44, &v62);

      *(v38 + 14) = v45;
      _os_log_impl(&dword_24366A000, v35, v36, "Course has been removed id: %{public}@ name: %{public}s", v38, 0x16u);
      sub_243671AC8(v39, &unk_27ED7ECA0, &unk_2436CEDC0);
      MEMORY[0x245D3CD90](v39, -1, -1);
      v46 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x245D3CD90](v46, -1, -1);
      MEMORY[0x245D3CD90](v38, -1, -1);
    }

    *(v2 + 32) = 0;

    swift_getKeyPath(byte_2436D1D10);
    swift_getKeyPath(byte_2436D1D38);
    v60 = 0;

    sub_2436CAEE8();
    *(v2 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_searcherCancellable) = 0;

    if (qword_27ED7DEE0 != -1)
    {
      swift_once();
    }

    v47 = qword_27ED83B50;
    v48 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_noLongerAvailable;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE50, &qword_2436D11F0);
    v50 = v49[7];
    v51 = sub_2436CAC58();
    v52 = *(v51 - 8);
    (*(v52 + 16))(&v12[v50], v47 + v48, v51);
    (*(v52 + 56))(&v12[v49[8]], 1, 1, v51);
    v53 = v49[9];
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F968, &qword_2436D1260);
    (*(*(v54 - 8) + 56))(&v12[v53], 1, 1, v54);
    *v12 = 0xD000000000000015;
    *(v12 + 1) = 0x80000002436E8320;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath(byte_2436D1BD0);
    swift_getKeyPath(byte_2436D1BF8);
    sub_2436CAED8();

    swift_getKeyPath(byte_2436D1BD0);
    swift_getKeyPath(byte_2436D1BF8);
    sub_2436714A8(v12, v59, &qword_27ED7F960, &qword_2436D1210);

    sub_2436CAEE8();
    sub_2436AC17C(v10);
    sub_243671AC8(v10, &qword_27ED7F960, &qword_2436D1210);
    sub_243671AC8(v12, &qword_27ED7F960, &qword_2436D1210);
    sub_2436AEA7C(0, v55);
  }
}

uint64_t sub_2436ADA0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = a3;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v6 = swift_unknownObjectRetain();
      sub_2436ADA9C(v6, a2, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2436ADA9C(char *a1, uint64_t a2, int a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v32 - v16;
  if (!a2)
  {
    sub_2436ADDB0(a1, &v32 - v16);
LABEL_21:
    swift_getKeyPath(byte_2436D1BD0);
    swift_getKeyPath(byte_2436D1BF8);
    sub_2436CAED8();

    swift_getKeyPath(byte_2436D1BD0);
    swift_getKeyPath(byte_2436D1BF8);
    sub_2436714A8(v17, v10, &qword_27ED7F960, &qword_2436D1210);

    sub_2436CAEE8();
    sub_2436AC17C(v13);
    sub_243671AC8(v13, &qword_27ED7F960, &qword_2436D1210);
    return sub_243671AC8(v17, &qword_27ED7F960, &qword_2436D1210);
  }

  v18 = *(a2 + 16);
  if (!v18)
  {
    *v17 = (a3 & 1) != 0;
    v17[8] = 0;
LABEL_20:
    swift_storeEnumTagMultiPayload();
    goto LABEL_21;
  }

  v19 = 0;
  v20 = a2 + 40;
  v21 = MEMORY[0x277D84F90];
LABEL_4:
  v22 = (v20 + 16 * v19);
  v23 = v19;
  while (1)
  {
    if (v18 == v23)
    {
      *v17 = v21;
      v17[8] = a3 & 1;
      goto LABEL_20;
    }

    if (v23 >= v18)
    {
      break;
    }

    v19 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_23;
    }

    v24 = *v22;
    v22 += 16;
    ++v23;
    if (v24 == 1)
    {
      v33 = v20;
      v34 = a3;
      v35 = v15;
      v25 = *(v22 - 3);
      ObjectType = swift_getObjectType();
      v27 = swift_unknownObjectRetain_n();
      v32 = sub_2436B1530(v27, v3, ObjectType);
      swift_unknownObjectRelease();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2436C1690(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
      }

      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_2436C1690((v28 > 1), v29 + 1, 1, v21);
        v21 = result;
      }

      v20 = v33;
      v30 = v32 | 0x8000000000000000;
      *(v21 + 16) = v29 + 1;
      v31 = v21 + 24 * v29;
      *(v31 + 32) = v30;
      *(v31 + 40) = v25;
      *(v31 + 48) = 1;
      v15 = v35;
      a3 = v34;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2436ADDB0@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v70 = a2;
  v69 = sub_2436CAC58();
  v71 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  KeyPath = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FE38, &qword_2436D1B30);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v61 - v7;
  v8 = sub_2436CAC98();
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v61 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE40, &unk_2436D1338);
  MEMORY[0x28223BE20](v10 - 8);
  v68 = &v61 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  v63 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v13 = (&v61 - v12);
  sub_2436AEA7C(a1, v14);
  v15 = *(v2 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_cachedStudentViewModelsByIdentifier);
  v16 = *(v15 + 16);
  if (v16)
  {
    v62 = KeyPath;
    KeyPath = a1;
    v17 = sub_2436C4670();
    v64 = sub_2436BA9AC(v74, v17 + 32, v16, v15);
    v18 = v74[0];
    a1 = v74[4];
    swift_bridgeObjectRetain_n();
    sub_243685438(v18);
    if (v64 != v16)
    {
      __break(1u);
      goto LABEL_43;
    }

    a1 = KeyPath;
    KeyPath = v62;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v74[0] = v17;
  sub_2436AF4EC(v74);

  v19 = v74[0];
  if ((v74[0] & 0x8000000000000000) == 0 && (v74[0] & 0x4000000000000000) == 0)
  {
    v64 = *(v74[0] + 16);
    v20 = v64;
    if (v64)
    {
      goto LABEL_8;
    }

LABEL_39:

    if (qword_27ED7DEE0 == -1)
    {
LABEL_40:
      v50 = [a1 name];
      v51 = sub_2436CBD38();
      v53 = v52;

      sub_24369AAC8(v51, v53);

      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE50, &qword_2436D11F0);
      v55 = v70;
      v56 = v71;
      v57 = v69;
      (*(v71 + 56))(&v70[v54[8]], 1, 1, v69);
      v58 = v54[9];
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F968, &qword_2436D1260);
      (*(*(v59 - 8) + 56))(&v55[v58], 1, 1, v59);
      strcpy(v55, "person.2.slash");
      v55[15] = -18;
      (*(v56 + 32))(&v55[v54[7]], KeyPath, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_43:
    swift_once();
    goto LABEL_40;
  }

LABEL_37:
  v64 = sub_2436CC008();
  if (v64 <= 0)
  {
    goto LABEL_39;
  }

  v20 = sub_2436CC008();
LABEL_8:
  v21 = 0;
  v22 = v19 & 0xC000000000000001;
  while (v20 != v21)
  {
    if (v22)
    {
      a1 = MEMORY[0x245D3C2F0](v21, v19);
      if (__OFADD__(v21, 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      a1 = *(v19 + 8 * v21 + 32);

      if (__OFADD__(v21, 1))
      {
LABEL_17:
        __break(1u);
        break;
      }
    }

    swift_getKeyPath(aX_3);
    KeyPath = swift_getKeyPath(aX_4);
    sub_2436CAED8();

    ++v21;
    if ((v74[0] & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE60, &qword_2436D1B80);
      v29 = *(v63 + 72);
      v30 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v31 = swift_allocObject();
      v32 = v31;
      *(v31 + 16) = xmmword_2436CFC20;
      if (qword_27ED7DEE0 != -1)
      {
        swift_once();
      }

      (*(v71 + 16))(v32 + v30, qword_27ED83B50 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_subtitle, v69);
      swift_storeEnumTagMultiPayload();
      v74[0] = v32;
      v73 = MEMORY[0x277D84F90];
      v33 = v64;
      sub_2436C1A28(0, v64, 0);
      v34 = v33;
      v35 = 0;
      v36 = v73;
      do
      {
        if (v22)
        {
          v37 = MEMORY[0x245D3C2F0](v35, v19);
        }

        else
        {
        }

        *v13 = v37;
        swift_storeEnumTagMultiPayload();
        v73 = v36;
        v39 = *(v36 + 16);
        v38 = *(v36 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_2436C1A28((v38 > 1), v39 + 1, 1);
          v34 = v64;
          v36 = v73;
        }

        ++v35;
        *(v36 + 16) = v39 + 1;
        sub_24367A8C0(v13, v36 + v30 + v39 * v29, &qword_27ED80390, &qword_2436D1170);
      }

      while (v34 != v35);

      sub_2436AE944(v36);
      *v70 = v74[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
      return swift_storeEnumTagMultiPayload();
    }
  }

  v23 = v65;
  sub_2436CAC88();
  v25 = v66;
  v24 = v67;
  if ((*(v66 + 48))(v23, 1, v67) == 1)
  {
    sub_243671AC8(v23, &qword_27ED7FE38, &qword_2436D1B30);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F968, &qword_2436D1260);
    (*(*(v26 - 8) + 56))(v68, 1, 1, v26);
    v28 = v69;
    v27 = v70;
  }

  else
  {
    v40 = *(v25 + 32);
    v41 = v61;
    v40(v61, v23, v24);
    v28 = v69;
    v27 = v70;
    if (qword_27ED7DEE0 != -1)
    {
      swift_once();
    }

    v42 = v68;
    (*(v71 + 16))(v68, qword_27ED83B50 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_learnMoreButtonTitle, v28);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F968, &qword_2436D1260);
    v40((v42 + *(v43 + 28)), v41, v24);
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  }

  if (qword_27ED7DEE0 != -1)
  {
    swift_once();
  }

  v44 = qword_27ED83B50;
  v45 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_notAvailableForThisClassTitle;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE50, &qword_2436D11F0);
  v47 = v71;
  v48 = *(v71 + 16);
  v48(&v27[v46[7]], v44 + v45, v28);
  v49 = v46[8];
  v48(&v27[v49], v44 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_allStudentAccountsAreFederatedSubtitle, v28);
  (*(v47 + 56))(&v27[v49], 0, 1, v28);
  strcpy(v27, "person.2.slash");
  v27[15] = -18;
  sub_24367A8C0(v68, &v27[v46[9]], &unk_27ED7FE40, &unk_2436D1338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
  return swift_storeEnumTagMultiPayload();
}

BOOL sub_2436AE820(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(a8_2);
  swift_getKeyPath(byte_2436D1BB0);
  sub_2436CAED8();

  swift_getKeyPath(a8_2);
  swift_getKeyPath(byte_2436D1BB0);
  sub_2436CAED8();

  sub_2436732AC();
  v2 = sub_2436CBF58();

  return v2 == -1;
}

void sub_2436AE944(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_2436C14A0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_2436AEA7C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 trustedUsers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F5F0, &qword_2436D0780);
    v3 = sub_2436CBE08();

    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }

LABEL_24:
    v4 = sub_2436CC008();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_25:
    v6 = MEMORY[0x277D84F98];
LABEL_26:

    *(v35 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_cachedStudentViewModelsByIdentifier) = v6;

    return;
  }

  v3 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_24;
  }

LABEL_3:
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_25;
  }

LABEL_4:
  v5 = 0;
  v34 = v3 & 0xC000000000000001;
  v32 = v3 & 0xFFFFFFFFFFFFFF8;
  v6 = MEMORY[0x277D84F98];
  v33 = v3;
  while (v34)
  {
    v9 = MEMORY[0x245D3C2F0](v5, v3);
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_29;
    }

LABEL_13:
    v11 = v4;
    ObjectType = swift_getObjectType();
    v13 = [v9 identifier];
    v14 = sub_2436CBD38();
    v16 = v15;

    v17 = swift_unknownObjectRetain();
    v18 = sub_2436B1530(v17, v35, ObjectType);
    swift_unknownObjectRelease();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_24366FE3C(v14, v16);
    v22 = v6[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_30;
    }

    v26 = v21;
    if (v6[3] < v25)
    {
      sub_2436B85B8(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_24366FE3C(v14, v16);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_33;
      }

LABEL_18:
      if (v26)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v31 = v20;
    sub_2436B8CD8();
    v20 = v31;
    if (v26)
    {
LABEL_5:
      v7 = v20;

      *(v6[7] + 8 * v7) = v18;
      swift_unknownObjectRelease();

      goto LABEL_6;
    }

LABEL_19:
    v6[(v20 >> 6) + 8] |= 1 << v20;
    v28 = (v6[6] + 16 * v20);
    *v28 = v14;
    v28[1] = v16;
    *(v6[7] + 8 * v20) = v18;
    swift_unknownObjectRelease();
    v29 = v6[2];
    v24 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v24)
    {
      goto LABEL_31;
    }

    v6[2] = v30;
LABEL_6:
    ++v5;
    v4 = v11;
    v8 = v10 == v11;
    v3 = v33;
    if (v8)
    {
      goto LABEL_26;
    }
  }

  if (v5 >= *(v32 + 16))
  {
    goto LABEL_32;
  }

  v9 = *(v3 + 8 * v5 + 32);
  swift_unknownObjectRetain();
  v10 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_13;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_2436CC318();
  __break(1u);
}

uint64_t sub_2436AED88(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E400, &qword_2436CF400);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - v4;
  v6 = type metadata accessor for EMSUserInterfaceRecord(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(result + 16);
    v13 = [a1 identifier];
    v14 = sub_2436CBD38();
    v16 = v15;

    sub_2436CAD28();
    *v9 = v12;
    v9[1] = v14;
    v9[2] = v16;
    sub_2436744F8(*(v11 + 24) + 16, v19);
    v17 = v20;
    v18 = v21;
    __swift_project_boxed_opaque_existential_0(v19, v20);
    sub_243682B6C(v9, v5);
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v18 + 72))(v5, v17, v18);
    sub_243671AC8(v5, &qword_27ED7E400, &qword_2436CF400);
    __swift_destroy_boxed_opaque_existential_0(v19);
    sub_2436A9D1C(a1);
    sub_243670FCC(v9);
  }

  return result;
}

uint64_t sub_2436AEFB8()
{

  v1 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__course;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE98, &unk_2436D1D60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__showSearchBar;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__title;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED0, &qword_2436D1DC0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__searchBar;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED8, &qword_2436D1DC8);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__internalSearchBar, v8);
  v10 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__content;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FEE0, &qword_2436D1DD0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  return v0;
}

uint64_t sub_2436AF1E0()
{
  sub_2436AEFB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for EMSStudentPickerViewModel(uint64_t a1)
{
  result = qword_27ED7FDE8;
  if (!qword_27ED7FDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436AF28C(uint64_t a1)
{
  sub_2436803FC(319, &qword_27ED7FDF8, &unk_27ED7FE00, &unk_2436D1A80);
  if (v1 <= 0x3F)
  {
    sub_2436803AC();
    if (v2 <= 0x3F)
    {
      sub_2436803FC(319, &unk_27ED7FE10, &unk_27ED80380, &qword_2436CF6B0);
      if (v3 <= 0x3F)
      {
        sub_2436803FC(319, &qword_27ED7FE20, &qword_27ED7FE28, &unk_2436D1A90);
        if (v4 <= 0x3F)
        {
          sub_2436803FC(319, &qword_27ED7FE30, &qword_27ED7F960, &qword_2436D1210);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_2436AF4AC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EMSStudentPickerViewModel(0);
  result = sub_2436CAE38();
  *a2 = result;
  return result;
}

uint64_t sub_2436AF4EC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2436C466C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2436B0018(v6);
  return sub_2436CC0D8();
}

uint64_t sub_2436AF590@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(a8_2);
  swift_getKeyPath(byte_2436D1BB0);
  sub_2436CAED8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2436AF610(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(a8_2);
  swift_getKeyPath(byte_2436D1BB0);

  return sub_2436CAEE8();
}

uint64_t sub_2436AF694(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(a8_1);
  swift_getKeyPath(byte_2436D1CF0);
  swift_unknownObjectRetain();

  return sub_2436CAEE8();
}

double sub_2436AF710@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath(byte_2436D1C60);
  swift_getKeyPath(aP_7);
  sub_2436CAED8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_2436AF790(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436D1C60);
  swift_getKeyPath(aP_7);

  return sub_2436CAEE8();
}

uint64_t sub_2436AF83C()
{
  swift_getKeyPath(byte_2436D1BD0);
  swift_getKeyPath(byte_2436D1BF8);
  sub_2436CAED8();
}

uint64_t sub_2436AF8B8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  sub_2436714A8(a1, &v13 - v10, &qword_27ED7F960, &qword_2436D1210);
  swift_getKeyPath(byte_2436D1BD0);
  swift_getKeyPath(byte_2436D1BF8);
  sub_2436CAED8();

  swift_getKeyPath(byte_2436D1BD0);
  swift_getKeyPath(byte_2436D1BF8);
  sub_2436714A8(v11, v6, &qword_27ED7F960, &qword_2436D1210);

  sub_2436CAEE8();
  sub_2436AC17C(v9);
  sub_243671AC8(v9, &qword_27ED7F960, &qword_2436D1210);
  return sub_243671AC8(v11, &qword_27ED7F960, &qword_2436D1210);
}

unint64_t sub_2436AFA70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2436AFB3C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_243670ED0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2436AFB3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2436AFC48(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_2436CC0B8();
    a6 = v11;
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

void *sub_2436AFC48(uint64_t a1, unint64_t a2)
{
  v3 = sub_2436AFC94(a1, a2);
  sub_2436AFDC4(&unk_285674798);
  return v3;
}

void *sub_2436AFC94(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2436AFEB0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2436CC0B8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2436CBDB8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2436AFEB0(v10, 0);
        result = sub_2436CC068();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_2436AFDC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_2436AFF24(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_2436AFEB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE70, &unk_2436D1CA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2436AFF24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE70, &unk_2436D1CA8);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

void sub_2436B0018(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2436CC2A8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for EMSStudentViewModel(0);
        v6 = sub_2436CBE28();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2436B02D4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2436B011C(0, v2, 1, a1);
  }
}

void sub_2436B011C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v13 = *a4;
    v4 = (*a4 + 8 * a3 - 8);
    v5 = a1 - a3;
LABEL_5:
    v12 = a3;
    v10 = v5;
    v11 = v4;
    while (1)
    {
      swift_getKeyPath(a8_2);
      swift_getKeyPath(byte_2436D1BB0);

      sub_2436CAED8();

      swift_getKeyPath(a8_2);
      swift_getKeyPath(byte_2436D1BB0);
      sub_2436CAED8();

      sub_2436732AC();
      v6 = sub_2436CBF58();

      if (v6 != -1)
      {
LABEL_4:
        a3 = v12 + 1;
        v4 = v11 + 1;
        v5 = v10 - 1;
        if (v12 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v13)
      {
        break;
      }

      v7 = *v4;
      *v4 = v4[1];
      v4[1] = v7;
      --v4;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2436B02D4(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a1;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_90:
    v5 = *v8;
    if (!*v8)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_92;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10;
    if (v10 + 1 >= v9)
    {
      v16 = v10 + 1;
    }

    else
    {
      v5 = v10;
      v13 = *v7;
      v97 = *(*v7 + 8 * (v10 + 1));
      v94 = v9;
      v96[0] = *(v13 + 8 * v10);

      v92 = sub_2436AE820(&v97, v96);
      if (v6)
      {

        return;
      }

      v85 = v11;

      v14 = v10 + 2;
      v87 = v5;
      v90 = 8 * v5;
      v15 = v13 + 8 * v5 + 16;
      while (1)
      {
        v16 = v94;
        if (v94 == v14)
        {
          break;
        }

        swift_getKeyPath(a8_2);
        v11 = 0;
        swift_getKeyPath(byte_2436D1BB0);

        sub_2436CAED8();

        swift_getKeyPath(a8_2);
        swift_getKeyPath(byte_2436D1BB0);
        sub_2436CAED8();

        v5 = v96[1];
        sub_2436732AC();
        v17 = sub_2436CBF58();

        ++v14;
        v15 += 8;
        if (((v92 ^ (v17 != -1)) & 1) == 0)
        {
          v16 = v14 - 1;
          break;
        }
      }

      v7 = a3;
      v12 = v87;
      v8 = a1;
      v18 = v90;
      if (v92)
      {
        if (v16 < v87)
        {
          goto LABEL_122;
        }

        if (v87 < v16)
        {
          v19 = 8 * v16 - 8;
          v20 = v16;
          v21 = v87;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v23 = *(v22 + v18);
              *(v22 + v18) = *(v22 + v19);
              *(v22 + v19) = v23;
            }

            ++v21;
            v19 -= 8;
            v18 += 8;
          }

          while (v21 < v20);
        }
      }

      v11 = v85;
    }

    v24 = v7[1];
    if (v16 < v24)
    {
      if (__OFSUB__(v16, v12))
      {
        goto LABEL_119;
      }

      if (v16 - v12 < a4)
      {
        if (__OFADD__(v12, a4))
        {
          goto LABEL_120;
        }

        if (v12 + a4 >= v24)
        {
          v25 = v7[1];
        }

        else
        {
          v25 = v12 + a4;
        }

        if (v25 < v12)
        {
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          v11 = sub_2436C3A7C(v11);
LABEL_92:
          v98 = v11;
          v78 = *(v11 + 2);
          if (v78 >= 2)
          {
            while (*v7)
            {
              v79 = *&v11[16 * v78];
              v80 = *&v11[16 * v78 + 24];
              sub_2436B0AC8((*v7 + 8 * v79), (*v7 + 8 * *&v11[16 * v78 + 16]), (*v7 + 8 * v80), v5);
              if (v6)
              {
                goto LABEL_100;
              }

              if (v80 < v79)
              {
                goto LABEL_116;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v11 = sub_2436C3A7C(v11);
              }

              if (v78 - 2 >= *(v11 + 2))
              {
                goto LABEL_117;
              }

              v81 = &v11[16 * v78];
              *v81 = v79;
              *(v81 + 1) = v80;
              v98 = v11;
              sub_2436C39F0(v78 - 1);
              v11 = v98;
              v78 = *(v98 + 2);
              if (v78 <= 1)
              {
                goto LABEL_100;
              }
            }

            goto LABEL_127;
          }

LABEL_100:

          return;
        }

        if (v16 != v25)
        {
          break;
        }
      }
    }

    v10 = v16;
    if (v16 < v12)
    {
      goto LABEL_118;
    }

LABEL_30:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2436C1290(0, *(v11 + 2) + 1, 1, v11);
    }

    v27 = *(v11 + 2);
    v26 = *(v11 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v11 = sub_2436C1290((v26 > 1), v27 + 1, 1, v11);
    }

    *(v11 + 2) = v28;
    v29 = &v11[16 * v27];
    *(v29 + 4) = v12;
    *(v29 + 5) = v10;
    v30 = *v8;
    if (!v30)
    {
      goto LABEL_128;
    }

    if (v27)
    {
      while (1)
      {
        v5 = v28 - 1;
        if (v28 >= 4)
        {
          break;
        }

        if (v28 == 3)
        {
          v31 = *(v11 + 4);
          v32 = *(v11 + 5);
          v41 = __OFSUB__(v32, v31);
          v33 = v32 - v31;
          v34 = v41;
LABEL_49:
          if (v34)
          {
            goto LABEL_107;
          }

          v47 = &v11[16 * v28];
          v49 = *v47;
          v48 = *(v47 + 1);
          v50 = __OFSUB__(v48, v49);
          v51 = v48 - v49;
          v52 = v50;
          if (v50)
          {
            goto LABEL_110;
          }

          v53 = &v11[16 * v5 + 32];
          v55 = *v53;
          v54 = *(v53 + 1);
          v41 = __OFSUB__(v54, v55);
          v56 = v54 - v55;
          if (v41)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v51, v56))
          {
            goto LABEL_114;
          }

          if (v51 + v56 >= v33)
          {
            if (v33 < v56)
            {
              v5 = v28 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v57 = &v11[16 * v28];
        v59 = *v57;
        v58 = *(v57 + 1);
        v41 = __OFSUB__(v58, v59);
        v51 = v58 - v59;
        v52 = v41;
LABEL_63:
        if (v52)
        {
          goto LABEL_109;
        }

        v60 = &v11[16 * v5];
        v62 = *(v60 + 4);
        v61 = *(v60 + 5);
        v41 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v41)
        {
          goto LABEL_112;
        }

        if (v63 < v51)
        {
          goto LABEL_3;
        }

LABEL_70:
        v68 = v5 - 1;
        if (v5 - 1 >= v28)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*v7)
        {
          goto LABEL_125;
        }

        v69 = *&v11[16 * v68 + 32];
        v70 = *&v11[16 * v5 + 40];
        sub_2436B0AC8((*v7 + 8 * v69), (*v7 + 8 * *&v11[16 * v5 + 32]), (*v7 + 8 * v70), v30);
        if (v6)
        {
          goto LABEL_100;
        }

        if (v70 < v69)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_2436C3A7C(v11);
        }

        if (v68 >= *(v11 + 2))
        {
          goto LABEL_104;
        }

        v71 = &v11[16 * v68];
        *(v71 + 4) = v69;
        *(v71 + 5) = v70;
        v98 = v11;
        sub_2436C39F0(v5);
        v11 = v98;
        v28 = *(v98 + 2);
        if (v28 <= 1)
        {
          goto LABEL_3;
        }
      }

      v35 = &v11[16 * v28 + 32];
      v36 = *(v35 - 64);
      v37 = *(v35 - 56);
      v41 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      if (v41)
      {
        goto LABEL_105;
      }

      v40 = *(v35 - 48);
      v39 = *(v35 - 40);
      v41 = __OFSUB__(v39, v40);
      v33 = v39 - v40;
      v34 = v41;
      if (v41)
      {
        goto LABEL_106;
      }

      v42 = &v11[16 * v28];
      v44 = *v42;
      v43 = *(v42 + 1);
      v41 = __OFSUB__(v43, v44);
      v45 = v43 - v44;
      if (v41)
      {
        goto LABEL_108;
      }

      v41 = __OFADD__(v33, v45);
      v46 = v33 + v45;
      if (v41)
      {
        goto LABEL_111;
      }

      if (v46 >= v38)
      {
        v64 = &v11[16 * v5 + 32];
        v66 = *v64;
        v65 = *(v64 + 1);
        v41 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v41)
        {
          goto LABEL_115;
        }

        if (v33 < v67)
        {
          v5 = v28 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v9 = v7[1];
    v8 = a1;
    if (v10 >= v9)
    {
      goto LABEL_90;
    }
  }

  v86 = v11;
  v82 = v6;
  v72 = *v7;
  v73 = (*v7 + 8 * v16 - 8);
  v74 = v12 - v16;
  v89 = v25;
LABEL_81:
  v93 = v73;
  v95 = v16;
  v5 = *(v72 + 8 * v16);
  v91 = v74;
  while (1)
  {
    swift_getKeyPath(a8_2, a2, v82);
    swift_getKeyPath(byte_2436D1BB0);

    sub_2436CAED8();

    swift_getKeyPath(a8_2);
    swift_getKeyPath(byte_2436D1BB0);
    sub_2436CAED8();

    sub_2436732AC();
    v75 = sub_2436CBF58();

    if (v75 != -1)
    {
LABEL_80:
      v16 = v95 + 1;
      v73 = v93 + 1;
      v10 = v89;
      v74 = v91 - 1;
      if (v95 + 1 != v89)
      {
        goto LABEL_81;
      }

      v6 = v82;
      v7 = a3;
      v11 = v86;
      v8 = a1;
      if (v89 < v12)
      {
        goto LABEL_118;
      }

      goto LABEL_30;
    }

    if (!v72)
    {
      break;
    }

    v76 = *v73;
    v5 = v73[1];
    *v73 = v5;
    v73[1] = v76;
    --v73;
    if (__CFADD__(v74++, 1))
    {
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
}

uint64_t sub_2436B0AC8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = __dst;
    if (a4 != __dst || &__dst[8 * v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __dst, 8 * v8);
      a4 = v13;
    }

    v26 = &a4[8 * v8];
    v14 = a4;
    if (v6 < 8)
    {
LABEL_10:
      v5 = v12;
      goto LABEL_36;
    }

    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_10;
      }

      v25 = v5;
      swift_getKeyPath(a8_2);
      swift_getKeyPath(byte_2436D1BB0);

      sub_2436CAED8();

      swift_getKeyPath(a8_2);
      swift_getKeyPath(byte_2436D1BB0);
      sub_2436CAED8();

      sub_2436732AC();
      v16 = sub_2436CBF58();

      if (v16 != -1)
      {
        break;
      }

      v15 = v5;
      v5 += 8;
      if (v12 != v25)
      {
        goto LABEL_12;
      }

LABEL_13:
      v12 += 8;
      if (v14 >= v26)
      {
        goto LABEL_10;
      }
    }

    v15 = v14;
    v17 = v12 == v14;
    v14 += 8;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v12 = *v15;
    goto LABEL_13;
  }

  v14 = a4;
  if (a4 != __src || &__src[8 * v11] <= a4)
  {
    memmove(a4, __src, 8 * v11);
  }

  v26 = &v14[8 * v11];
  if (v9 >= 8 && v5 > __dst)
  {
    v23 = v14;
LABEL_25:
    v4 -= 8;
    v18 = v26;
    v24 = v5 - 8;
    do
    {
      v19 = v4 + 8;
      v18 -= 8;
      swift_getKeyPath(a8_2);
      swift_getKeyPath(byte_2436D1BB0);

      sub_2436CAED8();

      swift_getKeyPath(a8_2);
      swift_getKeyPath(byte_2436D1BB0);
      sub_2436CAED8();

      sub_2436732AC();
      v20 = sub_2436CBF58();

      if (v20 == -1)
      {
        if (v19 != v5)
        {
          *v4 = *v24;
        }

        v14 = v23;
        if (v26 <= v23 || (v5 -= 8, v24 <= __dst))
        {
          v5 = v24;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v19 != v26)
      {
        *v4 = *v18;
      }

      v4 -= 8;
      v26 = v18;
      v14 = v23;
    }

    while (v18 > v23);
    v26 = v18;
  }

LABEL_36:
  if (v5 != v14 || v5 >= &v14[(v26 - v14 + (v26 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v5, v14, 8 * ((v26 - v14) / 8));
  }

  return 1;
}

uint64_t sub_2436B0F14(uint64_t a1, uint64_t a2)
{
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC40, &unk_2436CED90);
  v4 = *(v18[0] - 8);
  v5 = MEMORY[0x28223BE20](v18[0]);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC50, &qword_2436CF6A0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - v12;
  v21[3] = type metadata accessor for EMSUnionedResultProvider();
  v21[4] = &off_285676E10;
  v21[0] = a1;
  v14 = OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher__phase;
  v18[1] = 0;
  v19 = 0;
  sub_2436CAE98();
  (*(v11 + 32))(a2 + v14, v13, v10);
  v15 = (a2 + OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_query);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  sub_2436744F8(v21, a2 + OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_resultProvider);
  v20 = *(a1 + 48);
  swift_beginAccess();

  sub_2436CAEA8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED80, &qword_2436CF070);
  sub_243671838(&qword_27ED7EF48, &unk_27ED7ED80, &qword_2436CF070, MEMORY[0x277CBCE48]);
  sub_2436CAF78();

  v16 = v18[0];
  (*(v4 + 16))(v7, v9, v18[0]);
  swift_beginAccess();
  sub_2436CAEB8();
  swift_endAccess();
  (*(v4 + 8))(v9, v16);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return a2;
}

uint64_t sub_2436B121C(uint64_t a1, uint64_t a2)
{
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC40, &unk_2436CED90);
  v4 = *(v18[0] - 8);
  v5 = MEMORY[0x28223BE20](v18[0]);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC50, &qword_2436CF6A0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - v12;
  v21[3] = type metadata accessor for EMSCourseStudentsResultProvider(0);
  v21[4] = &off_285676D90;
  v21[0] = a1;
  v14 = OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher__phase;
  v18[1] = 0;
  v19 = 0;
  sub_2436CAE98();
  (*(v11 + 32))(a2 + v14, v13, v10);
  v15 = (a2 + OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_query);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  sub_2436744F8(v21, a2 + OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_resultProvider);
  v20 = *(a1 + OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider_phaseSubject);
  swift_beginAccess();

  sub_2436CAEA8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED80, &qword_2436CF070);
  sub_243671838(&qword_27ED7EF48, &unk_27ED7ED80, &qword_2436CF070, MEMORY[0x277CBCE48]);
  sub_2436CAF78();

  v16 = v18[0];
  (*(v4 + 16))(v7, v9, v18[0]);
  swift_beginAccess();
  sub_2436CAEB8();
  swift_endAccess();
  (*(v4 + 8))(v9, v16);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return a2;
}

char *sub_2436B1530(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 identifier];
  v7 = sub_2436CBD38();
  v9 = v8;

  v10 = *(a2 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_cachedStudentViewModelsByIdentifier);
  if (*(v10 + 16) && (, v11 = sub_24366FE3C(v7, v9), v13 = v12, , (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v11);

    sub_24369E568(a1, v14);
    return v14;
  }

  else
  {

    v16 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for EMSStudentViewModel(0);
    v17 = swift_allocObject();
    v18 = swift_unknownObjectRetain();
    v19 = sub_24369E7E0(v18, sub_2436B16CC, v16, v17, a3);
    swift_unknownObjectRelease();

    return v19;
  }
}

uint64_t sub_2436B1694()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

char *sub_2436B180C(void *a1, void *a2)
{
  v3 = v2;
  v61 = a1;
  v62 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FEE8, &qword_2436D1DD8);
  MEMORY[0x28223BE20](v66);
  v64 = &v49 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FEF0, &qword_2436D1DE0);
  MEMORY[0x28223BE20](v65);
  v60 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FEF8, &qword_2436D1DE8);
  v7 = *(v6 - 8);
  v67 = v6;
  v68 = v7;
  MEMORY[0x28223BE20](v6);
  v63 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FEE0, &qword_2436D1DD0);
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x28223BE20](v9);
  v57 = &v49 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
  v11 = MEMORY[0x28223BE20](v56);
  v55 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED8, &qword_2436D1DC8);
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED0, &qword_2436D1DC0);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v18 = &v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v51 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE98, &unk_2436D1D60);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v49 - v25;
  *(v3 + 4) = 0;
  v27 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__course;
  v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE00, &unk_2436D1A80);
  sub_2436CAE98();
  (*(v24 + 32))(&v3[v27], v26, v23);
  v28 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__showSearchBar;
  LOBYTE(v69) = 0;
  sub_2436CAE98();
  (*(v20 + 32))(&v3[v28], v22, v19);
  v29 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__title;
  v69 = 0;
  v70 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80380, &qword_2436CF6B0);
  sub_2436CAE98();
  (*(v49 + 32))(&v3[v29], v18, v50);
  v30 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__searchBar;
  v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FE28, &unk_2436D1A90);
  sub_2436CAE98();
  v31 = v53;
  v32 = *(v52 + 32);
  v32(&v3[v30], v16, v53);
  v33 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__internalSearchBar;
  v69 = 0;
  sub_2436CAE98();
  v32(&v3[v33], v16, v31);
  v34 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__content;
  v35 = v54;
  swift_storeEnumTagMultiPayload();
  sub_2436714A8(v35, v55, &qword_27ED7F960, &qword_2436D1210);
  v36 = v57;
  sub_2436CAE98();
  sub_243671AC8(v35, &qword_27ED7F960, &qword_2436D1210);
  (*(v58 + 32))(&v3[v34], v36, v59);
  v37 = &v3[OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_scrollToUserIdentifierPrivate];
  *v37 = 0;
  *(v37 + 1) = 0;
  *&v3[OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_cancellables] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_searcherCancellable] = 0;
  *&v3[OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_cachedStudentViewModelsByIdentifier] = MEMORY[0x277D84F98];
  v38 = v61;
  v39 = v62;
  *(v3 + 2) = v62;
  *(v3 + 3) = v38;
  swift_beginAccess();

  v40 = v39;
  sub_2436CAEA8();
  swift_endAccess();
  swift_beginAccess();
  sub_2436CAEA8();
  swift_endAccess();
  v41 = MEMORY[0x277CBCEC8];
  sub_243671838(&qword_27ED7FF00, &qword_27ED7FEF0, &qword_2436D1DE0, MEMORY[0x277CBCEC8]);
  sub_243671838(&qword_27ED7FF08, &qword_27ED7FEE8, &qword_2436D1DD8, v41);
  v42 = v63;
  sub_2436CADF8();
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_2436B2278;
  *(v44 + 24) = v43;
  sub_243671838(&unk_27ED7FF10, &qword_27ED7FEF8, &qword_2436D1DE8, MEMORY[0x277CBCAF0]);

  v45 = v67;
  sub_2436CAF68();

  (*(v68 + 8))(v42, v45);
  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  v46 = v38[5];
  v47 = v38[6];
  __swift_project_boxed_opaque_existential_0(v38 + 2, v46);
  v69 = (*(v47 + 8))(v46, v47);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED70, &qword_2436CEDB0);
  sub_243671838(&qword_27ED7EC60, &unk_27ED7ED70, &qword_2436CEDB0, MEMORY[0x277CBCD90]);
  sub_2436CAF68();

  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  return v3;
}

uint64_t sub_2436B2280()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2436B22F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2436B2340(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2436B2388(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2436B2420(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_2436CBB88();
}

uint64_t sub_2436B25F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v20 = a5;
  swift_getTupleTypeMetadata3();
  sub_2436CBB78();
  swift_getWitnessTable();
  sub_2436CBA88();
  swift_getTupleTypeMetadata3();
  sub_2436CBB78();
  swift_getWitnessTable();
  v9 = sub_2436CBA68();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v21 = a3;
  v22 = a4;
  v23 = a1;
  v24 = a2;
  sub_2436CB2F8();
  sub_2436CBA58();
  swift_getWitnessTable();
  v16 = *(v10 + 16);
  v16(v15, v13, v9);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v16(v20, v15, v9);
  return (v17)(v15, v9);
}

uint64_t sub_2436B2840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  swift_getTupleTypeMetadata3();
  sub_2436CBB78();
  swift_getWitnessTable();
  v9 = sub_2436CBA88();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a1;
  v20[7] = a2;
  sub_2436CB358();
  sub_2436CBA78();
  WitnessTable = swift_getWitnessTable();
  v17 = *(v10 + 16);
  v17(v15, v13, v9);
  v18 = *(v10 + 8);
  v18(v13, v9);
  v24 = 0;
  v25 = 1;
  v26[0] = &v24;
  v17(v13, v15, v9);
  v22 = 0;
  v23 = 1;
  v26[1] = v13;
  v26[2] = &v22;
  v21[0] = MEMORY[0x277CE1180];
  v21[1] = v9;
  v21[2] = MEMORY[0x277CE1180];
  v20[8] = MEMORY[0x277CE1170];
  v20[9] = WitnessTable;
  v20[10] = MEMORY[0x277CE1170];
  sub_2436B2420(v26, 3uLL, v21);
  v18(v15, v9);
  return (v18)(v13, v9);
}

uint64_t sub_2436B2AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v16 - v11;
  v10();
  v13 = *(v6 + 16);
  v13(v12, v9, a3);
  v14 = *(v6 + 8);
  v14(v9, a3);
  v20 = 0;
  v21 = 1;
  v22[0] = &v20;
  v13(v9, v12, a3);
  v18 = 0;
  v19 = 1;
  v22[1] = v9;
  v22[2] = &v18;
  v17[0] = MEMORY[0x277CE1180];
  v17[1] = a3;
  v17[2] = MEMORY[0x277CE1180];
  v16[1] = MEMORY[0x277CE1170];
  v16[2] = a4;
  v16[3] = MEMORY[0x277CE1170];
  sub_2436B2420(v22, 3uLL, v17);
  v14(v12, a3);
  return (v14)(v9, a3);
}

uint64_t sub_2436B2C9C(void *a1)
{
  swift_getTupleTypeMetadata3();
  sub_2436CBB78();
  swift_getWitnessTable();
  sub_2436CBA88();
  swift_getTupleTypeMetadata3();
  sub_2436CBB78();
  swift_getWitnessTable();
  sub_2436CBA68();

  return swift_getWitnessTable();
}

uint64_t sub_2436B2D94@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_2436D1F58);
  swift_getKeyPath(byte_2436D1F80);
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_2436B2E14(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436D1F58);
  swift_getKeyPath(byte_2436D1F80);

  return sub_2436CAEE8();
}

uint64_t sub_2436B2EF4()
{
  swift_getKeyPath(byte_2436D2208);
  swift_getKeyPath(byte_2436D2230);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_2436B2F90()
{
  swift_getKeyPath(byte_2436D1F58);
  swift_getKeyPath(byte_2436D1F80);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_2436B3018()
{
  swift_getKeyPath(byte_2436D20A8);
  swift_getKeyPath(byte_2436D20D0);
  sub_2436CAED8();

  return v1;
}

id sub_2436B30CC(uint64_t *a1, Class *a2, SEL *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v10 = [objc_allocWithZone(*a2) init];
    [v10 *a3];
    v11 = *(v4 + v5);
    *(v4 + v5) = v10;
    v7 = v10;

    v6 = 0;
  }

  v12 = v6;
  return v7;
}

uint64_t sub_2436B3158(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2436B3244(v2, v3, v4);
  }

  return result;
}

uint64_t sub_2436B31D0(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2436B42A4(v2);
  }

  return result;
}

uint64_t sub_2436B3244(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v79 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F128, &qword_2436D1EF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v72 - v10);
  if (a1)
  {
    if (a1 == 1)
    {
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath("p\vk;");
      swift_getKeyPath("P\vk;");
      sub_2436714A8(v11, v9, &qword_27ED7F128, &qword_2436D1EF0);

      sub_2436CAEE8();
      v12 = v11;
      return sub_243671AC8(v12, &qword_27ED7F128, &qword_2436D1EF0);
    }

    if (a1 >> 62)
    {
      if (sub_2436CC008())
      {
        v13 = sub_2436CC008();
        if (!v13)
        {
          v72 = a3;
          v73 = v11;
          v80 = v6;
          v81 = v9;
          v74 = v3;
          v15 = MEMORY[0x277D84F90];
LABEL_21:
          v26 = sub_2436BBD54(v15);

          swift_getKeyPath(byte_2436D1F58);
          swift_getKeyPath(byte_2436D1F80);
          sub_2436CAED8();

          v27 = v83 + 56;
          v28 = 1 << *(v83 + 32);
          if (v28 < 64)
          {
            v29 = ~(-1 << v28);
          }

          else
          {
            v29 = -1;
          }

          v30 = v29 & *(v83 + 56);
          v11 = ((v28 + 63) >> 6);
          v31 = v26 + 56;
          v75 = v83;

          v32 = 0;
          v76 = MEMORY[0x277D84F90];
          v78 = v26;
          while (v30)
          {
            v44 = v30;
LABEL_34:
            v30 = (v44 - 1) & v44;
            if (*(v26 + 16))
            {
              v77 = (v44 - 1) & v44;
              v46 = (*(v75 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v44)))));
              v47 = *v46;
              v48 = v46[1];
              sub_2436CC368();
              sub_2436CC388();
              swift_bridgeObjectRetain_n();
              sub_2436CBD88();
              v49 = sub_2436CC398();
              v50 = -1 << *(v26 + 32);
              v51 = v49 & ~v50;
              if ((*(v31 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
              {
                v52 = ~v50;
                v53 = *(v78 + 48);
                while (1)
                {
                  v54 = (v53 + 16 * v51);
                  v55 = v54[1];
                  if (v55)
                  {
                    v56 = *v54 == v47 && v55 == v48;
                    if (v56 || (sub_2436CC2E8() & 1) != 0)
                    {
                      break;
                    }
                  }

                  v51 = (v51 + 1) & v52;
                  if (((*(v31 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
                  {
                    goto LABEL_27;
                  }
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v76 = sub_2436C17AC(0, *(v76 + 2) + 1, 1, v76);
                }

                v26 = v78;
                v58 = *(v76 + 2);
                v57 = *(v76 + 3);
                if (v58 >= v57 >> 1)
                {
                  v76 = sub_2436C17AC((v57 > 1), v58 + 1, 1, v76);
                }

                v59 = v76;
                *(v76 + 2) = v58 + 1;
                v60 = &v59[16 * v58];
                *(v60 + 4) = v47;
                *(v60 + 5) = v48;
                v30 = v77;
              }

              else
              {
LABEL_27:
                swift_bridgeObjectRelease_n();
                v30 = v77;
                v26 = v78;
              }
            }
          }

          while (1)
          {
            v45 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              __break(1u);
              goto LABEL_61;
            }

            if (v45 >= v11)
            {
              break;
            }

            v44 = *(v27 + 8 * v45);
            ++v32;
            if (v44)
            {
              v32 = v45;
              goto LABEL_34;
            }
          }

          v61 = sub_2436BBE00(v76);

          swift_getKeyPath(byte_2436D1F58);
          swift_getKeyPath(byte_2436D1F80);
          v83 = v61;

          sub_2436CAEE8();
          v9 = 0x27ED7D000;
          if ((v79 & 1) == 0)
          {
            v62 = 0;
            v64 = 0;
            goto LABEL_53;
          }

          if (qword_27ED7DEE8 != -1)
          {
            goto LABEL_65;
          }

          while (1)
          {
            v62 = sub_24369C648(v72);
            v64 = v63;
LABEL_53:
            swift_getKeyPath(byte_2436D21C0, v72);
            swift_getKeyPath(byte_2436D21E8);
            v83 = v62;
            v84 = v64;

            sub_2436CAEE8();
            v82 = sub_2436B4024(a1);
            sub_2436B3FAC(&v82);
            v11 = v82;
            if (v82 >> 62)
            {
LABEL_63:
              v65 = sub_2436CC008();
            }

            else
            {
              v65 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            swift_getKeyPath(byte_2436D1FA0);
            swift_getKeyPath(byte_2436D1FC8);
            v83 = v65;

            sub_2436CAEE8();
            if (v9[477] != -1)
            {
              swift_once();
            }

            v66 = sub_24369CA08(v65);
            v68 = v67;
            swift_getKeyPath(byte_2436D2208);
            swift_getKeyPath(byte_2436D2230);
            v83 = v66;
            v84 = v68;

            sub_2436CAEE8();
            swift_getKeyPath("p\nk;");
            a1 = swift_getKeyPath("P\nk;");
            v9 = &v83;
            v69 = sub_2436CAEC8();
            if (!__OFADD__(*v70, 1))
            {
              break;
            }

            __break(1u);
LABEL_65:
            swift_once();
          }

          ++*v70;
          v69(&v83, 0);

          v71 = v73;
          *v73 = v11;
          swift_storeEnumTagMultiPayload();
          swift_getKeyPath("p\vk;");
          swift_getKeyPath("P\vk;");
          sub_2436714A8(v71, v81, &qword_27ED7F128, &qword_2436D1EF0);

          sub_2436CAEE8();
          v12 = v71;
          return sub_243671AC8(v12, &qword_27ED7F128, &qword_2436D1EF0);
        }

LABEL_6:
        v72 = a3;
        v73 = v11;
        v80 = v6;
        v81 = v9;
        v74 = v3;
        v83 = MEMORY[0x277D84F90];
        sub_2436C1A48(0, v13 & ~(v13 >> 63), 0);
        if (v13 < 0)
        {
          __break(1u);
          goto LABEL_63;
        }

        v14 = 0;
        v15 = v83;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x245D3C2F0](v14, a1);
          }

          else
          {
            v16 = *(a1 + 8 * v14 + 32);
          }

          v17 = v16;
          v18 = [v16 identifier];
          if (v18)
          {
            v19 = v18;
            v20 = sub_2436CBD38();
            v22 = v21;
          }

          else
          {

            v20 = 0;
            v22 = 0;
          }

          v83 = v15;
          v24 = *(v15 + 16);
          v23 = *(v15 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_2436C1A48((v23 > 1), v24 + 1, 1);
            v15 = v83;
          }

          ++v14;
          *(v15 + 16) = v24 + 1;
          v25 = v15 + 16 * v24;
          *(v25 + 32) = v20;
          *(v25 + 40) = v22;
        }

        while (v13 != v14);
        goto LABEL_21;
      }
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_6;
      }
    }
  }

  v80 = v6;
  v81 = v9;
  v79 = 0x80000002436E84B0;
  if (qword_27ED7DEE8 != -1)
  {
LABEL_61:
    swift_once();
  }

  v33 = qword_27ED83B58;
  v34 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_emptyDescriptionTitle;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F110, &qword_2436CFE08);
  v36 = v35[7];
  v37 = sub_2436CAC58();
  v38 = *(v37 - 8);
  v39 = *(v38 + 16);
  v39(v11 + v36, v33 + v34, v37);
  v40 = v35[8];
  v39(v11 + v40, v33 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_emptyDescriptionSubtitle, v37);
  (*(v38 + 56))(v11 + v40, 0, 1, v37);
  v41 = v35[9];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB28, &qword_2436D2170);
  (*(*(v42 - 8) + 56))(v11 + v41, 1, 1, v42);
  *v11 = 0xD000000000000011;
  v11[1] = v79;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath("p\vk;");
  swift_getKeyPath("P\vk;");
  sub_2436714A8(v11, v81, &qword_27ED7F128, &qword_2436D1EF0);

  sub_2436CAEE8();
  sub_243671AC8(v11, &qword_27ED7F128, &qword_2436D1EF0);
  swift_getKeyPath(byte_2436D2178);
  swift_getKeyPath(byte_2436D21A0);
  LOBYTE(v83) = 0;

  return sub_2436CAEE8();
}

uint64_t sub_2436B3C80(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-v8];
  v10 = sub_2436CAD38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v25[-v15];
  v17 = *a1;
  v18 = *a2;
  v19 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
  swift_beginAccess();
  sub_2436714A8(v17 + v19, v9, &qword_27ED7E4F0, &qword_2436CF910);
  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    sub_2436CACC8();
    if (v20(v9, 1, v10) != 1)
    {
      sub_243671AC8(v9, &qword_27ED7E4F0, &qword_2436CF910);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
  }

  v21 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
  swift_beginAccess();
  sub_2436714A8(v18 + v21, v7, &qword_27ED7E4F0, &qword_2436CF910);
  if (v20(v7, 1, v10) == 1)
  {
    sub_2436CACC8();
    if (v20(v7, 1, v10) != 1)
    {
      sub_243671AC8(v7, &qword_27ED7E4F0, &qword_2436CF910);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v7, v10);
  }

  v22 = sub_2436CACE8();
  v23 = *(v11 + 8);
  v23(v14, v10);
  v23(v16, v10);
  return v22 & 1;
}

void sub_2436B3FAC(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_2436BAC60(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_2436B65FC(v4);
  *a1 = v2;
}

unint64_t sub_2436B4024(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (result >> 62)
  {
    result = sub_2436CC008();
    v4 = result;
    v5 = &unk_27ED83000;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_18:
    v7 = MEMORY[0x277D84F98];
LABEL_19:
    v22 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_itemsByAssignmentIdentifier;
    *(v2 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_itemsByAssignmentIdentifier) = v7;

    v23 = *(v2 + v22);
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = sub_2436C4670();
      v26 = sub_2436BA9B0(&v29, (v25 + 32), v24, v23);
      v27 = v29;

      sub_243685438(v27);
      if (v26 == v24)
      {
        return v25;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = &unk_27ED83000;
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v6 = 0;
    v28 = v5[399];
    v7 = MEMORY[0x277D84F98];
    while (1)
    {
      v8 = (v3 & 0xC000000000000001) != 0 ? MEMORY[0x245D3C2F0](v6, v3) : *(v3 + 8 * v6 + 32);
      v9 = v8;
      v10 = [v8 identifier];
      if (v10)
      {
        break;
      }

LABEL_6:
      if (v4 == ++v6)
      {
        goto LABEL_19;
      }
    }

    v11 = v10;
    v12 = sub_2436CBD38();
    v14 = v13;

    v15 = *(v2 + v28);
    if (*(v15 + 16))
    {

      v16 = sub_24366FE3C(v12, v14);
      if (v17)
      {
        v18 = *(*(v15 + 56) + 8 * v16);

LABEL_16:
        sub_24368B818(v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v7;
        sub_2436B886C(v18, v12, v14, isUniquelyReferenced_nonNull_native);

        goto LABEL_6;
      }
    }

    v19 = sub_2436B308C();
    v20 = sub_2436B30AC();
    type metadata accessor for EMSHistoryItemViewModel(0);
    swift_allocObject();
    v18 = sub_24368B444(v12, v14, v19, v20);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2436B42A4(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80078, &qword_2436D2030);
  v41 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v42 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v43 = &v35 - v6;
  MEMORY[0x28223BE20](v5);
  v40 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80080, &qword_2436D2038);
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80088, &qword_2436D2040);
  MEMORY[0x28223BE20](v46);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80090, &qword_2436D2048);
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80098, &qword_2436D2050);
  v45 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800A0, &qword_2436D2058);
  v16 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  if (a1)
  {
    v37 = v2;
    v38 = v17;
    v39 = v16;
    swift_getKeyPath(byte_2436D20A8);
    swift_getKeyPath(byte_2436D20D0);
    sub_2436CAED8();

    if (v47)
    {
    }

    else
    {
      v36 = v12;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800A8, &qword_2436D20F0);
      sub_2436CAEA8();
      swift_endAccess();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800B0, &qword_2436D20F8);
      sub_2436CAEA8();
      swift_endAccess();
      v21 = MEMORY[0x277CBCEC8];
      sub_243671838(&qword_27ED800B8, &qword_27ED80080, &qword_2436D2038, MEMORY[0x277CBCEC8]);
      sub_2436CAF38();
      (*(v44 + 8))(v10, v8);
      sub_243671838(&qword_27ED800C0, &qword_27ED80090, &qword_2436D2048, v21);
      v22 = MEMORY[0x277CBCC08];
      sub_243671838(&qword_27ED800C8, &qword_27ED80088, &qword_2436D2040, MEMORY[0x277CBCC08]);
      sub_2436CADF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800D0, &unk_2436D2100);
      sub_243671838(&qword_27ED800D8, &qword_27ED80098, &qword_2436D2050, MEMORY[0x277CBCAF0]);
      v23 = v36;
      sub_2436CAF38();
      (*(v45 + 8))(v14, v23);
      sub_243671838(&qword_27ED800E0, &qword_27ED800A0, &qword_2436D2058, v22);
      v24 = v39;
      v25 = sub_2436CAF08();
      (*(v38 + 8))(v19, v24);
      v26 = swift_allocObject();
      swift_weakInit();
      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for EMSSelectionToolbarViewModel(0);
      swift_allocObject();
      v29 = sub_2436A0BA0(v25, sub_2436BBF60, v26, sub_2436BBF90, v27, sub_2436BBF98, v28, sub_2436B4FF4, 0);

      swift_getKeyPath(byte_2436D20A8);
      swift_getKeyPath(byte_2436D20D0);
      v47 = v29;

      sub_2436CAEE8();
      swift_getKeyPath(byte_2436D20A8);
      swift_getKeyPath(byte_2436D20D0);
      sub_2436CAED8();

      if (v47)
      {
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED0, &qword_2436D1DC0);
        v30 = v40;
        sub_2436CAEA8();
        swift_endAccess();

        swift_beginAccess();
        v31 = v43;
        sub_2436CAEA8();
        swift_endAccess();
        sub_243671838(&qword_27ED800E8, &qword_27ED80078, &qword_2436D2030, MEMORY[0x277CBCEC8]);
        v32 = v37;
        sub_2436CAF78();
        v33 = v41;
        v34 = *(v41 + 8);
        v34(v30, v32);
        (*(v33 + 16))(v42, v31, v32);
        swift_beginAccess();
        sub_2436CAEB8();
        swift_endAccess();
        return (v34)(v31, v32);
      }
    }
  }

  else
  {
    swift_getKeyPath(byte_2436D2060);
    swift_getKeyPath(byte_2436D2088);
    v47 = 0;
    v48 = 0;

    sub_2436CAEE8();
    swift_getKeyPath(byte_2436D20A8);
    swift_getKeyPath(byte_2436D20D0);
    v47 = 0;

    return sub_2436CAEE8();
  }

  return result;
}

__n128 sub_2436B4C4C@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2436B4C58(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath(byte_2436D1F58);
    swift_getKeyPath(byte_2436D1F80);
    v2 = sub_2436CAEC8();
    v4 = v3;

    *v4 = MEMORY[0x277D84FA0];
    v2(v5, 0);
  }

  return result;
}

void sub_2436B4D34(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F128, &qword_2436D1EF0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v15 - v2);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath("p\vk;");
    swift_getKeyPath("P\vk;");
    sub_2436CAED8();

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_243671AC8(v3, &qword_27ED7F128, &qword_2436D1EF0);
      return;
    }

    v4 = *v3;
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {

      return;
    }

    if (v4 >> 62)
    {
      v5 = sub_2436CC008();
      if (v5)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_6:
        v16 = MEMORY[0x277D84F90];
        sub_2436C1A68(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
          __break(1u);
          return;
        }

        v6 = 0;
        v7 = v16;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x245D3C2F0](v6, v4);
          }

          else
          {
            v8 = *(v4 + 8 * v6 + 32);
          }

          v10 = *(v8 + 16);
          v9 = *(v8 + 24);

          v16 = v7;
          v12 = *(v7 + 16);
          v11 = *(v7 + 24);
          if (v12 >= v11 >> 1)
          {
            sub_2436C1A68((v11 > 1), v12 + 1, 1);
            v7 = v16;
          }

          ++v6;
          *(v7 + 16) = v12 + 1;
          v13 = v7 + 16 * v12;
          *(v13 + 32) = v10;
          *(v13 + 40) = v9;
        }

        while (v5 != v6);

        goto LABEL_19;
      }
    }

    v7 = MEMORY[0x277D84F90];
LABEL_19:
    v14 = sub_2436BBE00(v7);

    swift_getKeyPath(byte_2436D1F58);
    swift_getKeyPath(byte_2436D1F80);
    v16 = v14;
    sub_2436CAEE8();
  }
}

uint64_t sub_2436B4FF4(uint64_t a1, char a2)
{
  v4 = sub_2436CAC58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if (qword_27ED7DEE8 != -1)
    {
      swift_once();
    }

    v9 = qword_27ED83B58;
    v10 = &OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_selectAllHistoryButtonTitle;
    goto LABEL_9;
  }

  if (a2 == 1)
  {
    if (qword_27ED7DEE8 != -1)
    {
      swift_once();
    }

    v9 = qword_27ED83B58;
    v10 = &OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_deselectAllHistoryButtonTitle;
LABEL_9:
    (*(v5 + 16))(v8, v9 + *v10);
    v11 = sub_2436CBD58();
    sub_24369C834(a1);
    return v11;
  }

  if (!a1)
  {
    return 0;
  }

  if (qword_27ED7DEE8 != -1)
  {
    v16 = v6;
    swift_once();
    v6 = v16;
  }

  v12 = qword_27ED83B58;
  v13 = *(v5 + 16);
  v14 = v6;
  v13(v8, qword_27ED83B58 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_selectAllHistoryButtonTitle);
  v11 = sub_2436CBD58();
  (v13)(v8, v12 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_selectItemsTitle, v14);
  sub_2436CBD58();
  return v11;
}

double sub_2436B5254()
{
  v1 = sub_2436CAC58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_alert);
  if (qword_27ED7DEE8 != -1)
  {
    swift_once();
  }

  v5 = qword_27ED83B58;
  swift_getKeyPath(byte_2436D1F58);
  swift_getKeyPath(byte_2436D1F80);
  sub_2436CAED8();

  v6 = *(v20 + 16);

  v7 = sub_24369C464(v6);
  v9 = v8;
  v10 = *(v2 + 16);
  v10(v4, v5 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_deleteEntriesConfirmationSubtitle, v1);
  v11 = sub_2436CBD58();
  v13 = v12;
  v10(v4, v5 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_deleteEntriesConfirmationButtonTitle, v1);
  v14 = sub_2436CBD58();
  v16 = v15;
  v17 = swift_allocObject();
  swift_weakInit();
  v29 = 1;
  swift_getKeyPath(aH_4);
  swift_getKeyPath(aH_5);
  v20 = v7;
  v21 = v9;
  v22 = v11;
  v23 = v13;
  v24 = v14;
  v25 = v16;
  v26 = sub_2436BBED0;
  v27 = v17;
  v28 = 1;
  swift_retain_n();

  sub_2436CAEE8();
  sub_2436C8CA0();

  return result;
}

uint64_t sub_2436B5504(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_2436B5564()
{
  swift_getKeyPath(byte_2436D1F58);
  swift_getKeyPath(byte_2436D1F80);
  sub_2436CAED8();

  v1 = *(v12[0] + 16);

  swift_getKeyPath(byte_2436D1FA0);
  swift_getKeyPath(byte_2436D1FC8);
  sub_2436CAED8();

  v2 = *(v0 + 16) + 16;
  if (v1 != v12[0])
  {
    sub_2436744F8(v2, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    swift_getKeyPath(byte_2436D1F58);
    swift_getKeyPath(byte_2436D1F80);
    sub_2436CAED8();

    v7 = *(v11 + 16);
    if (v7)
    {
      v8 = sub_2436C1944(*(v11 + 16), 0);
      v9 = sub_2436BAB04(&v11, v8 + 4, v7, v11);
      sub_243685438(v11);
      if (v9 == v7)
      {
LABEL_7:
        (*(v6 + 56))(v8, v5, v6);

        return __swift_destroy_boxed_opaque_existential_0(v12);
      }

      __break(1u);
    }

    v8 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  sub_2436744F8(v2, v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_0(v12, v13);
  (*(v4 + 64))(v3, v4);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_2436B576C()
{

  v1 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__allHistoryItemsCount;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800A8, &qword_2436D20F0);
  v22 = *(*(v2 - 8) + 8);
  v22(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__title;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80110, &qword_2436D2338);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__subtitle;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED0, &qword_2436D1DC0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v8 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_headerTitle;
  v9 = sub_2436CAC58();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__content;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80118, &qword_2436D2340);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__footerIsVisible;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v15 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__footerEntriesNumberTitle;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v7(v0 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__footerTitle, v6);
  v14(v0 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__isEditing, v13);
  v17 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__selectedItems;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800B0, &qword_2436D20F8);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v22(v0 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__animationGeneration, v2);
  v19 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__toolbar;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80120, &qword_2436D2348);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);

  return v0;
}

uint64_t sub_2436B5B14()
{
  sub_2436B576C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for EMSHistoryViewModel(uint64_t a1)
{
  result = qword_27ED80030;
  if (!qword_27ED80030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436B5BC0(uint64_t a1)
{
  sub_243686670(319, &qword_27ED80040, MEMORY[0x277D83B88]);
  if (v1 <= 0x3F)
  {
    sub_2436B5F00(319);
    if (v2 <= 0x3F)
    {
      sub_2436803FC(319, &unk_27ED7FE10, &unk_27ED80380, &qword_2436CF6B0);
      if (v3 <= 0x3F)
      {
        sub_2436CAC58();
        if (v4 <= 0x3F)
        {
          sub_2436803FC(319, &qword_27ED80050, &qword_27ED7F128, &qword_2436D1EF0);
          if (v5 <= 0x3F)
          {
            sub_243686670(319, &qword_27ED7EB70, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              sub_243686670(319, &qword_27ED80310, MEMORY[0x277D837D0]);
              if (v7 <= 0x3F)
              {
                sub_2436803FC(319, &qword_27ED80058, &qword_27ED80060, &qword_2436D1EF8);
                if (v8 <= 0x3F)
                {
                  sub_2436803FC(319, &qword_27ED80068, &qword_27ED80070, &qword_2436D1F00);
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2436B5F00(uint64_t a1)
{
  if (!qword_27ED80048)
  {
    sub_2436CAC58();
    v1 = sub_2436CAEF8();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED80048);
    }
  }
}

uint64_t sub_2436B5F58@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EMSHistoryViewModel(0);
  result = sub_2436CAE38();
  *a2 = result;
  return result;
}

uint64_t sub_2436B6004(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2436CAC58();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  swift_getKeyPath(byte_2436D22F0);
  swift_getKeyPath(byte_2436D2318);
  v10(v7, v9, v3);

  sub_2436CAEE8();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2436B61B0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F128, &qword_2436D1EF0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_2436714A8(a1, &v10 - v7, &qword_27ED7F128, &qword_2436D1EF0);
  swift_getKeyPath("p\vk;");
  swift_getKeyPath("P\vk;");
  sub_2436714A8(v8, v6, &qword_27ED7F128, &qword_2436D1EF0);

  sub_2436CAEE8();
  return sub_243671AC8(v8, &qword_27ED7F128, &qword_2436D1EF0);
}

uint64_t sub_2436B6308@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_2436D2208);
  swift_getKeyPath(byte_2436D2230);
  sub_2436CAED8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2436B6388(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436D2208);
  swift_getKeyPath(byte_2436D2230);

  return sub_2436CAEE8();
}

double sub_2436B6420@<D0>(const char *a2@<X3>, const char *a3@<X4>, _OWORD *a4@<X8>)
{
  swift_getKeyPath(a2);
  swift_getKeyPath(a3);
  sub_2436CAED8();

  result = *&v7;
  *a4 = v7;
  return result;
}

uint64_t sub_2436B6500@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_2436D20A8);
  swift_getKeyPath(byte_2436D20D0);
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_2436B6580(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436D20A8);
  swift_getKeyPath(byte_2436D20D0);

  return sub_2436CAEE8();
}

void sub_2436B65FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v42 - v7;
  v9 = sub_2436CAD38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = v42 - v14;
  v15 = a1[1];
  v16 = sub_2436CC2A8();
  v17 = v15;
  if (v16 < v15)
  {
    if (v15 >= -1)
    {
      v18 = v16;
      v19 = v17 / 2;
      if (v17 <= 1)
      {
        v20 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for EMSHistoryItemViewModel(0);
        v20 = sub_2436CBE28();
        *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) = v19;
      }

      v41 = v20 & 0xFFFFFFFFFFFFFF8;
      v57[0] = (v20 & 0xFFFFFFFFFFFFFF8) + 32;
      v57[1] = v19;
      sub_2436B6AC0(v57, v56, a1, v18);
      *(v41 + 16) = 0;

      return;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v15 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  if (v15 >= 2)
  {
    v51 = v13;
    v52 = v6;
    v42[1] = v1;
    v21 = *a1;
    v22 = (v10 + 48);
    v47 = (v10 + 8);
    v48 = (v10 + 32);
    v23 = -1;
    v24 = 1;
    v53 = v21;
    v49 = (v10 + 48);
    v50 = v8;
    v43 = v15;
    do
    {
      v45 = v24;
      v46 = v23;
      v25 = v53[v24];
      v44 = v21;
      do
      {
        v54 = v23;
        v26 = *v21;
        v27 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
        swift_beginAccess();
        sub_2436714A8(v25 + v27, v8, &qword_27ED7E4F0, &qword_2436CF910);
        v28 = *v22;
        if ((*v22)(v8, 1, v9) == 1)
        {

          sub_2436CACC8();
          if (v28(v8, 1, v9) != 1)
          {
            sub_243671AC8(v8, &qword_27ED7E4F0, &qword_2436CF910);
          }
        }

        else
        {
          (*v48)(v58, v8, v9);
        }

        v29 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
        swift_beginAccess();
        v55 = v26;
        v30 = v26 + v29;
        v31 = v52;
        sub_2436714A8(v30, v52, &qword_27ED7E4F0, &qword_2436CF910);
        if (v28(v31, 1, v9) == 1)
        {
          v32 = v51;
          sub_2436CACC8();
          v33 = v28(v31, 1, v9);
          v34 = v9;
          v35 = v54;
          if (v33 != 1)
          {
            sub_243671AC8(v31, &qword_27ED7E4F0, &qword_2436CF910);
          }
        }

        else
        {
          v32 = v51;
          (*v48)(v51, v31, v9);
          v34 = v9;
          v35 = v54;
        }

        v36 = v58;
        v37 = sub_2436CACE8();
        v38 = *v47;
        (*v47)(v32, v34);
        v38(v36, v34);

        v22 = v49;
        v8 = v50;
        v9 = v34;
        if ((v37 & 1) == 0)
        {
          break;
        }

        if (!v53)
        {
          goto LABEL_28;
        }

        v39 = *v21;
        v25 = v21[1];
        *v21 = v25;
        v21[1] = v39;
        --v21;
        v40 = __CFADD__(v35, 1);
        v23 = v35 + 1;
      }

      while (!v40);
      v24 = v45 + 1;
      v21 = v44 + 1;
      v23 = v46 - 1;
    }

    while (v45 + 1 != v43);
  }
}

void sub_2436B6AC0(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v128 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v146 = &v126 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v135 = &v126 - v15;
  MEMORY[0x28223BE20](v14);
  v134 = &v126 - v16;
  v17 = sub_2436CAD38();
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v148 = &v126 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v21);
  v138 = &v126 - v25;
  v137 = a3;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_112:
    a3 = *v128;
    if (!*v128)
    {
      goto LABEL_153;
    }

    a4 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v121 = a4;
LABEL_115:
      v151 = v121;
      a4 = *(v121 + 2);
      if (a4 >= 2)
      {
        while (*v137)
        {
          v122 = *&v121[16 * a4];
          v123 = v121;
          v124 = *&v121[16 * a4 + 24];
          sub_2436B7830((*v137 + 8 * v122), (*v137 + 8 * *&v121[16 * a4 + 16]), (*v137 + 8 * v124), a3);
          if (v5)
          {
            goto LABEL_123;
          }

          if (v124 < v122)
          {
            goto LABEL_140;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_2436C3A7C(v123);
          }

          if (a4 - 2 >= *(v123 + 2))
          {
            goto LABEL_141;
          }

          v125 = &v123[16 * a4];
          *v125 = v122;
          *(v125 + 1) = v124;
          v151 = v123;
          sub_2436C39F0(a4 - 1);
          v121 = v151;
          a4 = *(v151 + 2);
          if (a4 <= 1)
          {
            goto LABEL_123;
          }
        }

        goto LABEL_151;
      }

LABEL_123:

      return;
    }

LABEL_147:
    v121 = sub_2436C3A7C(a4);
    goto LABEL_115;
  }

  v133 = v24;
  v140 = v23;
  v126 = a4;
  v27 = 0;
  v28 = (v22 + 48);
  v144 = (v22 + 8);
  v145 = (v22 + 32);
  v29 = MEMORY[0x277D84F90];
  v141 = v11;
  v30 = v146;
  v143 = (v22 + 48);
  while (1)
  {
    v129 = v27;
    if (v27 + 1 >= v26)
    {
      v39 = v27 + 1;
    }

    else
    {
      v139 = v26;
      v127 = v29;
      v31 = *v137;
      v32 = *(*v137 + 8 * (v27 + 1));
      a3 = *(*v137 + 8 * v27);
      v149 = a3;
      v150 = v32;

      LODWORD(v142) = sub_2436B3C80(&v150, &v149);
      if (v5)
      {

        return;
      }

      a4 = v27 + 2;
      v132 = 8 * v27;
      v33 = (v31 + 8 * v27 + 16);
      v136 = 0;
      while (1)
      {
        v39 = v139;
        if (v139 == a4)
        {
          break;
        }

        v40 = *(v33 - 1);
        a3 = *v33;
        v41 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
        swift_beginAccess();
        v42 = v134;
        sub_2436714A8(a3 + v41, v134, &qword_27ED7E4F0, &qword_2436CF910);
        v43 = *v28;
        if ((*v28)(v42, 1, v17) == 1)
        {

          sub_2436CACC8();
          if (v43(v42, 1, v17) != 1)
          {
            sub_243671AC8(v42, &qword_27ED7E4F0, &qword_2436CF910);
          }
        }

        else
        {
          (*v145)(v138, v42, v17);
        }

        v44 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
        swift_beginAccess();
        v45 = &v40[v44];
        v46 = v135;
        sub_2436714A8(v45, v135, &qword_27ED7E4F0, &qword_2436CF910);
        v47 = v43(v46, 1, v17);
        v147 = v40;
        if (v47 == 1)
        {
          v34 = v133;
          sub_2436CACC8();
          if (v43(v46, 1, v17) != 1)
          {
            sub_243671AC8(v46, &qword_27ED7E4F0, &qword_2436CF910);
          }
        }

        else
        {
          v34 = v133;
          (*v145)(v133, v46, v17);
        }

        v35 = v138;
        v36 = sub_2436CACE8();
        v37 = *v144;
        (*v144)(v34, v17);
        v37(v35, v17);

        v38 = v142 ^ v36;
        ++a4;
        ++v33;
        v5 = v136;
        v28 = v143;
        if (v38)
        {
          v39 = a4 - 1;
          break;
        }
      }

      v29 = v127;
      v30 = v146;
      v48 = v132;
      if (v142)
      {
        v49 = v129;
        if (v39 < v129)
        {
          goto LABEL_146;
        }

        if (v129 < v39)
        {
          v50 = 8 * v39 - 8;
          v51 = v39;
          do
          {
            if (v49 != --v51)
            {
              v53 = *v137;
              if (!*v137)
              {
                goto LABEL_150;
              }

              v52 = *(v53 + v48);
              *(v53 + v48) = *(v53 + v50);
              *(v53 + v50) = v52;
            }

            ++v49;
            v50 -= 8;
            v48 += 8;
          }

          while (v49 < v51);
        }
      }
    }

    v54 = v137[1];
    if (v39 >= v54)
    {
      goto LABEL_38;
    }

    if (__OFSUB__(v39, v129))
    {
      goto LABEL_143;
    }

    if (v39 - v129 >= v126)
    {
LABEL_38:
      v57 = v39;
      goto LABEL_39;
    }

    if (__OFADD__(v129, v126))
    {
      goto LABEL_144;
    }

    if (v129 + v126 >= v54)
    {
      v55 = v137[1];
    }

    else
    {
      v55 = v129 + v126;
    }

    if (v55 < v129)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v56 = v129;
    if (v39 == v55)
    {
      v57 = v39;
      goto LABEL_40;
    }

    v127 = v29;
    v136 = v5;
    v142 = *v137;
    v105 = (v142 + 8 * v39 - 8);
    v106 = (v129 - v39);
    v130 = v55;
LABEL_94:
    v139 = v39;
    a3 = *(v142 + 8 * v39);
    v131 = v106;
    v132 = v105;
LABEL_95:
    v147 = v106;
    v107 = *v105;
    v108 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
    swift_beginAccess();
    sub_2436714A8(a3 + v108, v30, &qword_27ED7E4F0, &qword_2436CF910);
    v109 = *v28;
    if ((*v28)(v30, 1, v17) == 1)
    {

      sub_2436CACC8();
      if (v109(v30, 1, v17) != 1)
      {
        sub_243671AC8(v30, &qword_27ED7E4F0, &qword_2436CF910);
      }
    }

    else
    {
      (*v145)(v148, v30, v17);
    }

    v110 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
    swift_beginAccess();
    v111 = v107 + v110;
    v112 = v141;
    sub_2436714A8(v111, v141, &qword_27ED7E4F0, &qword_2436CF910);
    if (v109(v112, 1, v17) == 1)
    {
      v113 = v140;
      sub_2436CACC8();
      v114 = v17;
      if (v109(v112, 1, v17) != 1)
      {
        sub_243671AC8(v112, &qword_27ED7E4F0, &qword_2436CF910);
      }
    }

    else
    {
      v113 = v140;
      (*v145)(v140, v112, v17);
      v114 = v17;
    }

    v115 = v148;
    v116 = sub_2436CACE8();
    v117 = *v144;
    (*v144)(v113, v114);
    a4 = v114;
    v117(v115, v114);

    if (v116)
    {
      break;
    }

    v30 = v146;
    v28 = v143;
    v17 = v114;
LABEL_93:
    v39 = v139 + 1;
    v105 = (v132 + 8);
    v106 = v131 - 1;
    v57 = v130;
    if (v139 + 1 != v130)
    {
      goto LABEL_94;
    }

    v5 = v136;
    v29 = v127;
LABEL_39:
    v56 = v129;
LABEL_40:
    if (v57 < v56)
    {
      goto LABEL_142;
    }

    v130 = v57;
    v58 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v29 = v58;
    }

    else
    {
      v29 = sub_2436C1290(0, *(v58 + 2) + 1, 1, v58);
    }

    a3 = *(v29 + 2);
    v59 = *(v29 + 3);
    v60 = a3 + 1;
    if (a3 >= v59 >> 1)
    {
      v29 = sub_2436C1290((v59 > 1), a3 + 1, 1, v29);
    }

    *(v29 + 2) = v60;
    v61 = &v29[16 * a3];
    v62 = v130;
    *(v61 + 4) = v129;
    *(v61 + 5) = v62;
    v147 = *v128;
    if (!v147)
    {
      goto LABEL_152;
    }

    if (a3)
    {
      while (2)
      {
        a3 = v60 - 1;
        if (v60 >= 4)
        {
          v67 = &v29[16 * v60 + 32];
          v68 = *(v67 - 64);
          v69 = *(v67 - 56);
          v73 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          if (v73)
          {
            goto LABEL_129;
          }

          v72 = *(v67 - 48);
          v71 = *(v67 - 40);
          v73 = __OFSUB__(v71, v72);
          v65 = v71 - v72;
          v66 = v73;
          if (v73)
          {
            goto LABEL_130;
          }

          v74 = &v29[16 * v60];
          v76 = *v74;
          v75 = *(v74 + 1);
          v73 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v73)
          {
            goto LABEL_132;
          }

          v73 = __OFADD__(v65, v77);
          v78 = v65 + v77;
          if (v73)
          {
            goto LABEL_135;
          }

          if (v78 >= v70)
          {
            v96 = &v29[16 * a3 + 32];
            v98 = *v96;
            v97 = *(v96 + 1);
            v73 = __OFSUB__(v97, v98);
            v99 = v97 - v98;
            if (v73)
            {
              goto LABEL_139;
            }

            if (v65 < v99)
            {
              a3 = v60 - 2;
            }
          }

          else
          {
LABEL_60:
            if (v66)
            {
              goto LABEL_131;
            }

            v79 = &v29[16 * v60];
            v81 = *v79;
            v80 = *(v79 + 1);
            v82 = __OFSUB__(v80, v81);
            v83 = v80 - v81;
            v84 = v82;
            if (v82)
            {
              goto LABEL_134;
            }

            v85 = &v29[16 * a3 + 32];
            v87 = *v85;
            v86 = *(v85 + 1);
            v73 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v73)
            {
              goto LABEL_137;
            }

            if (__OFADD__(v83, v88))
            {
              goto LABEL_138;
            }

            if (v83 + v88 < v65)
            {
              goto LABEL_74;
            }

            if (v65 < v88)
            {
              a3 = v60 - 2;
            }
          }
        }

        else
        {
          if (v60 == 3)
          {
            v63 = *(v29 + 4);
            v64 = *(v29 + 5);
            v73 = __OFSUB__(v64, v63);
            v65 = v64 - v63;
            v66 = v73;
            goto LABEL_60;
          }

          v89 = &v29[16 * v60];
          v91 = *v89;
          v90 = *(v89 + 1);
          v73 = __OFSUB__(v90, v91);
          v83 = v90 - v91;
          v84 = v73;
LABEL_74:
          if (v84)
          {
            goto LABEL_133;
          }

          v92 = &v29[16 * a3];
          v94 = *(v92 + 4);
          v93 = *(v92 + 5);
          v73 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v73)
          {
            goto LABEL_136;
          }

          if (v95 < v83)
          {
            break;
          }
        }

        a4 = a3 - 1;
        if (a3 - 1 >= v60)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v137)
        {
          goto LABEL_149;
        }

        v100 = v29;
        v101 = *&v29[16 * a4 + 32];
        v102 = *&v29[16 * a3 + 40];
        sub_2436B7830((*v137 + 8 * v101), (*v137 + 8 * *&v29[16 * a3 + 32]), (*v137 + 8 * v102), v147);
        if (v5)
        {
          goto LABEL_123;
        }

        if (v102 < v101)
        {
          goto LABEL_127;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v103 = v100;
        }

        else
        {
          v103 = sub_2436C3A7C(v100);
        }

        v30 = v146;
        if (a4 >= *(v103 + 2))
        {
          goto LABEL_128;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v101;
        *(v104 + 5) = v102;
        v151 = v103;
        a4 = &v151;
        sub_2436C39F0(a3);
        v29 = v151;
        v60 = *(v151 + 2);
        if (v60 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v26 = v137[1];
    v27 = v130;
    if (v130 >= v26)
    {
      goto LABEL_112;
    }
  }

  v30 = v146;
  v118 = v147;
  if (v142)
  {
    v119 = *v105;
    a3 = v105[1];
    *v105 = a3;
    v105[1] = v119;
    --v105;
    v120 = __CFADD__(v118, 1);
    v106 = v118 + 1;
    v28 = v143;
    v17 = v114;
    if (v120)
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
}