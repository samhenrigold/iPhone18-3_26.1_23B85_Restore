uint64_t sub_2282F6A7C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_47;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = sub_228392A60();
      v18 = v17;
      v20 = v16 == sub_228392A60() && v18 == v19;
      if (v20)
      {
        break;
      }

      v21 = sub_228393460();

      if ((v21 & 1) == 0)
      {
        goto LABEL_22;
      }

      v15 = v6;
      v20 = v7 == v6;
      v6 += 8;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

LABEL_22:
    v15 = v4;
    v20 = v7 == v4;
    v4 += 8;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_30:
    v31 = v6;
    v22 = v6 - 8;
    v5 -= 8;
    v23 = v14;
    while (1)
    {
      v23 -= 8;
      v6 = v22;
      v24 = sub_228392A60();
      v26 = v25;
      if (v24 == sub_228392A60() && v26 == v27)
      {
      }

      else
      {
        v29 = sub_228393460();

        if (v29)
        {
          if (v5 + 8 != v31)
          {
            *v5 = *v6;
          }

          if (v14 <= v4 || v6 <= v7)
          {
            break;
          }

          goto LABEL_30;
        }
      }

      v22 = v6;
      if (v5 + 8 != v14)
      {
        *v5 = *v23;
      }

      v5 -= 8;
      v14 = v23;
      if (v23 <= v4)
      {
        v14 = v23;
        v6 = v31;
        break;
      }
    }
  }

LABEL_47:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

void *sub_2282F6D70(uint64_t a1, uint64_t a2)
{
  sub_2282F6FA4(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  *(v2 + qword_27D828E68) = &unk_283B66780;
  v8 = (v2 + qword_27D828E70);
  v13 = sub_228392000();
  v14 = v9;

  MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283B31A0);

  v10 = v14;
  *v8 = v13;
  v8[1] = v10;
  sub_228181FB4(a1, v7);
  v11 = sub_228340DF0(v7, a2);
  sub_2282F6F34(a1, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  return v11;
}

unint64_t sub_2282F6EDC()
{
  result = qword_27D824520;
  if (!qword_27D824520)
  {
    sub_228390170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824520);
  }

  return result;
}

uint64_t sub_2282F6F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282F6FA4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2282F6FA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2282F7010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormStepResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282F7074(uint64_t a1)
{
  v2 = type metadata accessor for FormStepResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2282F70D0(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  sub_2282FE8F8(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_2283911B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v13 = sub_2283911A0();
  v14 = sub_2283925C0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34 = v10;
    v16 = v15;
    v32 = swift_slowAlloc();
    v35 = v32;
    *v16 = 136315138;
    v17 = sub_228393600();
    v19 = sub_2281C96FC(v17, v18, &v35);
    v33 = v9;
    v20 = v8;
    v21 = v3;
    v22 = a1;
    v23 = a2;
    v24 = v19;

    *(v16 + 4) = v24;
    a2 = v23;
    a1 = v22;
    v3 = v21;
    v8 = v20;
    _os_log_impl(&dword_22816B000, v13, v14, "[%s] start search", v16, 0xCu);
    v25 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AAB7B80](v25, -1, -1);
    MEMORY[0x22AAB7B80](v16, -1, -1);

    (*(v34 + 8))(v12, v33);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v26 = sub_2282F7668();
  [v26 setHidden_];

  [*&v3[qword_27D827708] setAlpha_];
  v27 = sub_2283922D0();
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  sub_2283922A0();
  v28 = v3;
  v29 = sub_228392290();
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v28;
  sub_2281DC568(0, 0, v8, &unk_2283A3238, v30);

  sub_2282FD7C4(a1, a2);
}

id sub_2282F7440()
{
  v1 = qword_27D8276F8;
  v2 = *(v0 + qword_27D8276F8);
  if (v2)
  {
    v3 = *(v0 + qword_27D8276F8);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D10388]) initWithHealthStore_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_2282F74E4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27D8276F0);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_2282F7550()
{
  v1 = (v0 + qword_27D8276F0);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_2282F75A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27D8276F0);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_2282F7668()
{
  v1 = qword_27D827708;
  v2 = *(v0 + qword_27D827708);
  if (v2)
  {
    v3 = *(v0 + qword_27D827708);
  }

  else
  {
    v4 = sub_2282F76F0();
    v5 = [v4 searchBar];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2282F76F0()
{
  v1 = qword_27D827710;
  v2 = *(v0 + qword_27D827710);
  if (v2)
  {
    v3 = *(v0 + qword_27D827710);
  }

  else
  {
    v4 = sub_2282F7754(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282F7754(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D759F0]) init];
  v3 = [v2 searchBar];
  [v3 setDelegate_];

  v4 = [v2 searchBar];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v5 = sub_228391FC0();

  [v4 setPlaceholder_];

  [v2 setHidesNavigationBarDuringPresentation_];
  return v2;
}

id sub_2282F789C()
{
  v1 = qword_27D827718;
  v2 = *(v0 + qword_27D827718);
  if (v2)
  {
    v3 = *(v0 + qword_27D827718);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_cancelTapped_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282F7924()
{
  v1 = qword_27D827720;
  v2 = *(v0 + qword_27D827720);
  if (v2)
  {
    v3 = *(v0 + qword_27D827720);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:15 target:v0 action:sel_cameraTapped_];
    v5 = [objc_opt_self() labelColor];
    [v4 setTintColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2282F79EC()
{
  v0 = [objc_opt_self() searchConfiguration];
  v1 = sub_2282F7668();
  v2 = [v1 text];

  if (v2)
  {
    v3 = sub_228392000();
    v5 = v4;

    v6 = sub_2282AE540(v3, v5);
    v8 = v7;
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v6 = sub_2282AE540(0, 0xE000000000000000);
    v8 = v9;
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22819A064(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], 1);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228397F40;
  *(v10 + 56) = MEMORY[0x277D837D0];
  v11 = sub_22818E210();
  *(v10 + 64) = v11;
  *(v10 + 32) = v6;
  *(v10 + 40) = v8;

  sub_22838F0C0();
  if (*(v10 + 16))
  {
    sub_228391FD0();
  }

  v12 = sub_228391FC0();

  [v0 setSecondaryText_];

  v13 = [v0 buttonProperties];
  v14 = [objc_opt_self() tintedButtonConfiguration];
  [v13 setConfiguration_];

  v15 = [v0 buttonProperties];
  v16 = [v15 configuration];

  [v16 setCornerStyle_];
  v17 = [v0 buttonProperties];
  v18 = [v17 configuration];

  v19 = [objc_opt_self() systemGrayColor];
  [v18 setBaseBackgroundColor_];

  v20 = [v0 buttonProperties];
  sub_22817A958(0, &qword_27D827890, 0x277D750C8);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_228392C90();
  [v20 setPrimaryAction_];

  v23 = [v0 buttonProperties];
  v24 = [v23 configuration];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_228397F40;
  *(v25 + 56) = MEMORY[0x277D837D0];
  *(v25 + 64) = v11;
  *(v25 + 32) = v6;
  *(v25 + 40) = v8;
  sub_22838F0C0();
  if (*(v25 + 16))
  {
    sub_228391FD0();
  }

  v26 = sub_228391FC0();

  [v24 setTitle_];

  return v0;
}

void sub_2282F7F28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2282FA14C(0);
  }
}

id NewMedicationOnboardingViewController.init(healthStore:listManager:analyticsContext:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + qword_27D8276F8) = 0;
  v8 = (v3 + qword_27D8276F0);
  v19 = sub_228392000();
  v20 = v9;

  MEMORY[0x22AAB5C80](0x7461636964654D2ELL, 0xEC000000736E6F69);

  *v8 = v19;
  v8[1] = v20;
  *(v3 + qword_27D827700) = 0x4046000000000000;
  *(v3 + qword_27D827708) = 0;
  *(v3 + qword_27D827710) = 0;
  *(v3 + qword_27D827718) = 0;
  *(v3 + qword_27D827720) = 0;
  *(v3 + qword_27D827728) = 0;
  *(v3 + qword_27D827730) = 0;
  *(v3 + qword_27D827738) = a1;
  *(v3 + qword_27D8276E0) = a2;
  sub_228390EA0();
  swift_allocObject();
  v10 = a1;

  v11 = sub_228390E90();
  *(v4 + qword_27D827740) = v11;
  type metadata accessor for NewMedicationsOnboardingDataSource(0);
  v12 = swift_allocObject();
  v13 = v10;

  v14 = sub_2282FE344(a2, v11, v13, v12);

  *(v4 + qword_27D827748) = v14;
  *(v4 + qword_27D8276E8) = a3;
  sub_2283901F0();
  sub_22819A064(0, &qword_27D827750, &qword_27D8238E8, MEMORY[0x277D10F28], 0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_228397F40;
  v16 = MEMORY[0x277D10F80];
  *(v15 + 32) = v14;
  *(v15 + 40) = v16;

  sub_228390220();
  v17 = sub_228390480();
  sub_2282F88C4();

  return v17;
}

id sub_2282F8274()
{
  v1 = qword_27D827730;
  v2 = *(v0 + qword_27D827730);
  if (v2)
  {
    v3 = *(v0 + qword_27D827730);
  }

  else
  {
    v4 = objc_allocWithZone(MEMORY[0x277D37698]);
    v5 = sub_228391FC0();
    v6 = [v4 initWithTitle:v5 detailText:0 icon:0];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_2282F8314()
{
  v1 = v0;
  v36.receiver = v0;
  v36.super_class = type metadata accessor for NewMedicationOnboardingViewController(0);
  objc_msgSendSuper2(&v36, sel_viewDidLoad);
  result = [v0 collectionView];
  if (!result)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v3 = result;
  [result setPreservesSuperviewLayoutMargins_];

  v4 = [v1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 2)
  {
    result = [v1 collectionView];
    if (!result)
    {
LABEL_28:
      __break(1u);
      return result;
    }

    v6 = result;
    [result setDirectionalLayoutMargins_];
  }

  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    goto LABEL_26;
  }

  v7 = result;
  v8 = [result isiPad];

  if (v8)
  {
    v9 = sub_2282F7668();
    [v9 setHidden_];

    [*&v1[qword_27D827708] setAlpha_];
  }

  v10 = [v1 navigationItem];
  v11 = sub_2282F76F0();
  [v10 setSearchController_];

  v12 = [v1 navigationItem];
  v13 = sub_2282F789C();
  [v12 setRightBarButtonItem_];

  result = [v1 collectionView];
  if (!result)
  {
    goto LABEL_27;
  }

  v14 = result;
  [result setKeyboardDismissMode_];

  sub_228390600();
  if (sub_2283905D0())
  {
    v15 = [v1 navigationItem];
    v16 = [v15 searchController];

    v33 = [v16 _inlineToolbarSearchBarItem];
    v17 = objc_opt_self();
    v18 = v33;
    v34 = [v17 flexibleSpaceItem];
    result = sub_2282F7924();
    v19 = 0;
    v35 = result;
    v31 = MEMORY[0x277D84F90];
LABEL_11:
    if (v19 <= 3)
    {
      v20 = 3;
    }

    else
    {
      v20 = v19;
    }

    while (v19 != 3)
    {
      if (v20 == v19)
      {
        __break(1u);
        goto LABEL_25;
      }

      v21 = v32[v19++ + 4];
      if (v21)
      {
        v22 = v21;
        MEMORY[0x22AAB5D20]();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2283921E0();
        }

        result = sub_228392230();
        goto LABEL_11;
      }
    }

    sub_2281BC2E4(0, &qword_27D827760, &qword_27D824138, 0x277D751E0);
    swift_arrayDestroy();
    sub_22817A958(0, &qword_27D824138, 0x277D751E0);
    v23 = sub_228392190();

    [v1 setToolbarItems_];

    v24 = [v1 navigationController];
    if (v24)
    {
      v25 = v24;
      [v24 setToolbarHidden_];
    }
  }

  [v1 setModalInPresentation_];
  v26 = sub_2282F8274();
  [v26 preferredContentSize];
  v28 = v27;
  v30 = v29;

  return [v1 setPreferredContentSize_];
}

void sub_2282F87B4(void *a1)
{
  v1 = a1;
  sub_2282F8314();
}

void sub_2282F87FC(void *a1, uint64_t a2, uint64_t a3)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for NewMedicationOnboardingViewController(0);
  v4 = v8.receiver;
  objc_msgSendSuper2(&v8, sel_viewIsAppearing_, a3);
  v5 = [v4 collectionView];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() systemBackgroundColor];
    [v6 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2282F88C4()
{
  sub_2282FE8F8(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = MEMORY[0x277D839B0];
  sub_2282FFD10(0, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  sub_2282FFC14(0);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2282FFD10(0, &qword_280DDBBD0, v3, MEMORY[0x277CBCED0]);
  sub_228391930();
  swift_endAccess();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v13 = sub_228392790();
  v22 = v13;
  v14 = sub_228392730();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  sub_22824EB64();
  sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
  sub_228391A70();
  sub_2281A16F0(v2);

  (*(v6 + 8))(v8, v5);
  swift_allocObject();
  v15 = v19;
  swift_unknownObjectWeakInit();
  sub_2282FF744(&qword_27D8278A8, sub_2282FFC14, MEMORY[0x277CBCD60]);
  v16 = v20;
  v17 = sub_228391AC0();

  (*(v21 + 8))(v12, v16);
  *(v15 + qword_27D827728) = v17;
}

void sub_2282F8C9C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2 && (swift_beginAccess(), (v5 = swift_unknownObjectWeakLoadStrong()) != 0))
    {
      v6 = v5;
      v7 = sub_2282F79EC();
    }

    else
    {
      v7 = 0;
    }

    [v4 _setContentUnavailableConfiguration_];
  }
}

void sub_2282F8D64(void *a1)
{
  v1 = a1;
  sub_2282FAE4C();
}

void sub_2282F8DAC(void *a1)
{
  v2 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v2 animated:1];

  v3 = sub_22838F710();
  v4 = [a1 cellForItemAtIndexPath_];

  if (v4)
  {
    v8 = v4;
    sub_22817A958(0, &qword_27D827770, 0x277D752A8);
    sub_22818217C(0, &qword_27D8243E0, MEMORY[0x277D10F68], 1);
    v5 = v4;
    if (swift_dynamicCast())
    {
      sub_22819A62C(v6, v9);
      __swift_project_boxed_opaque_existential_0(v9, v9[3]);
      sub_22838FE30();

      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    else
    {

      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_2282FEDC0(v6, sub_2281ED284);
    }
  }
}

uint64_t sub_2282F8F14(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_22838F760();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2282F8DAC(v10);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2282F9010(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v100 = type metadata accessor for MedicationSearchItem(0);
  v4 = MEMORY[0x28223BE20](v100);
  v99 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v117 = &v96 - v6;
  v103 = sub_2283911B0();
  v108 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v110 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_2282FE8F8(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v107 = &v96 - v10;
  sub_2282FE8F8(0, &qword_280DDBD20, MEMORY[0x277D116C8], v8);
  MEMORY[0x28223BE20](v11 - 8);
  v113 = &v96 - v12;
  sub_2282FE8F8(0, &qword_27D8238A8, MEMORY[0x277D11640], v8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v96 - v14;
  sub_2282FE8F8(0, &unk_27D827790, type metadata accessor for FormStepResult, v8);
  MEMORY[0x28223BE20](v16 - 8);
  v112 = &v96 - v17;
  sub_2282FE8F8(0, &qword_27D827160, MEMORY[0x277CC95F0], v8);
  MEMORY[0x28223BE20](v18 - 8);
  v111 = &v96 - v19;
  v114 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v104 = *(v114 - 8);
  v20 = MEMORY[0x28223BE20](v114);
  v106 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v96 - v23;
  v105 = v25;
  MEMORY[0x28223BE20](v22);
  v116 = &v96 - v26;
  v27 = type metadata accessor for MedicationSearchItem.Source(0);
  MEMORY[0x28223BE20](v27);
  v29 = (&v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v31 = MEMORY[0x28223BE20](v30);
  v118 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v96 - v33;
  sub_2282FEB84(a1, v29, type metadata accessor for MedicationSearchItem.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v109 = v30;
    swift_beginAccess();
    sub_228390DC0();
    sub_2282FEB84(a1, v34, type metadata accessor for MedicationSearchItem);
    swift_storeEnumTagMultiPayload();
    sub_2282FEDC0(v29, type metadata accessor for MedicationSearchItem.Source);
    v35 = 4;
  }

  else
  {

    sub_22818DE38(0);
    v37 = *(v36 + 48);
    sub_2282FEB84(a1, v34, type metadata accessor for MedicationSearchItem);
    swift_storeEnumTagMultiPayload();
    v38 = sub_2282F7668();
    [v38 setHidden_];

    [*&v2[qword_27D827708] setAlpha_];
    v39 = sub_228390C30();
    (*(*(v39 - 8) + 8))(v29 + v37, v39);
    v35 = 0;
  }

  v40 = sub_22826FA64();
  if (v40)
  {
    v41 = v40;
    v42 = *&v2[qword_27D8276E0];
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v44 = _sSo17UIAlertControllerC19HealthMedicationsUIE27makeAlertForExsitingConcept7concept11listManager11showHandlerABSgSo9HKConceptC_25UserDomainConceptsSupport04ListjM0CySo012HKMedicationqrJ0CctFZ_0(v41, v42, sub_2281C0884, v43);

    if (v44)
    {
      [v2 presentViewController:v44 animated:1 completion:0];

LABEL_21:
      v94 = v34;
      return sub_2282FEDC0(v94, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    }
  }

  v97 = a1;
  v101 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode;
  v102 = v34;
  v45 = v118;
  sub_2282FEB84(v34, v118, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  v109 = v2;
  v46 = *&v2[qword_27D8276E8];
  v47 = v114;
  v48 = *(v114 + 36);
  v49 = sub_22838F4A0();
  (*(*(v49 - 8) + 56))(v111, 1, 1, v49);
  sub_2282FEB08(0, &qword_27D8277A0, &qword_27D827160, MEMORY[0x277CC95F0]);
  swift_allocObject();
  *&v24[v48] = sub_228391890();
  v50 = v47[10];
  *&v120 = 0;
  sub_2282FE95C(0);
  swift_allocObject();
  *&v24[v50] = sub_228391890();
  v51 = v47[11];
  LOBYTE(v120) = 0;
  sub_22817D780();
  swift_allocObject();
  *&v24[v51] = sub_228391890();
  v52 = v47[12];
  v53 = type metadata accessor for FormStepResult(0);
  (*(*(v53 - 8) + 56))(v112, 1, 1, v53);
  sub_2282FEB08(0, &qword_27D8253A0, &unk_27D827790, type metadata accessor for FormStepResult);
  swift_allocObject();
  *&v24[v52] = sub_228391890();
  v54 = v47[13];
  sub_2282FE9DC(0, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
  v120 = 0uLL;
  swift_allocObject();
  *&v24[v54] = sub_228391890();
  v55 = v47[14];
  v120 = 0uLL;
  swift_allocObject();

  *&v24[v55] = sub_228391890();
  v56 = v47[15];
  *&v120 = 0;
  sub_228257A7C(0);
  swift_allocObject();
  *&v24[v56] = sub_228391890();
  v57 = v47[16];
  v58 = sub_2283909E0();
  (*(*(v58 - 8) + 56))(v15, 1, 1, v58);
  sub_2282FEB08(0, &qword_27D8238C8, &qword_27D8238A8, MEMORY[0x277D11640]);
  swift_allocObject();
  *&v24[v57] = sub_228391890();
  v59 = v47[17];
  v60 = sub_228390D50();
  (*(*(v60 - 8) + 56))(v113, 1, 1, v60);
  sub_2282FEB08(0, &qword_27D827800, &qword_280DDBD20, MEMORY[0x277D116C8]);
  swift_allocObject();
  *&v24[v59] = sub_228391890();
  v61 = v47[18];
  sub_2282FE9DC(0, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
  v120 = 0u;
  v121 = 0u;
  swift_allocObject();
  *&v24[v61] = sub_228391890();
  v62 = v47[19];
  *&v120 = 0;
  sub_2281BC72C(0);
  swift_allocObject();
  *&v24[v62] = sub_228391890();
  v63 = v47[21];
  *&v120 = 0;
  sub_2282FEB08(0, &qword_27D827820, &qword_27D826D70, sub_2282FEA58);
  swift_allocObject();
  *&v24[v63] = sub_228391890();
  v64 = v47[22];
  sub_228390890();
  *&v24[v64] = sub_228390880();
  sub_2282FEB84(v45, v24, v101);
  v24[v47[7]] = 64;
  *&v24[v47[5]] = v46;

  sub_228390DF0();
  *&v24[v47[6]] = v35;
  v24[v47[8]] = 0;
  *&v120 = sub_228371268();
  *(&v120 + 1) = v65;
  sub_228391850();

  *&v120 = 0;
  sub_2282FEB08(0, &qword_27D827848, &qword_27D827850, sub_2282B9CF8);
  swift_allocObject();
  *&v24[v47[20]] = sub_228391890();
  sub_228391870();
  if (v120)
  {
  }

  else
  {
    v66 = sub_2283922D0();
    v67 = v24;
    v68 = v107;
    (*(*(v66 - 8) + 56))(v107, 1, 1, v66);
    v69 = v106;
    sub_2282FEB84(v67, v106, type metadata accessor for MedicationOnboardingFlowManager);
    v70 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = 0;
    *(v71 + 24) = 0;
    sub_2282FEC6C(v69, v71 + v70);
    v72 = v68;
    v24 = v67;
    sub_2281DC568(0, 0, v72, &unk_2283A3060, v71);
  }

  v74 = v116;
  v73 = v117;
  sub_2282FEDC0(v118, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  sub_2282FEC6C(v24, v74);
  v75 = &v122;
  v34 = v102;
  if (EnumCaseMultiPayload != 1)
  {
    v76 = v109;
    swift_beginAccess();
    v77 = *&v76[qword_27D827738];
    sub_228390D90();
    swift_allocObject();

    v77;
    sub_228390D80();
    sub_228390E70();
    sub_228390E60();
  }

  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(v75);
  if (v78)
  {
    v79 = v78;
    v80 = [v109 navigationController];
    if (v80)
    {
      v81 = v80;
      [v80 pushViewController:v79 animated:1];
    }

    else
    {
    }

    goto LABEL_20;
  }

  sub_228391150();
  sub_2282FEB84(v97, v73, type metadata accessor for MedicationSearchItem);
  v82 = sub_2283911A0();
  v83 = sub_2283925C0();
  if (!os_log_type_enabled(v82, v83))
  {

    sub_2282FEDC0(v73, type metadata accessor for MedicationSearchItem);
    (*(v108 + 8))(v110, v103);
LABEL_20:
    sub_2282FEDC0(v74, type metadata accessor for MedicationOnboardingFlowManager);
    goto LABEL_21;
  }

  v84 = swift_slowAlloc();
  v85 = swift_slowAlloc();
  v119 = v85;
  *v84 = 136315394;
  v86 = sub_228393600();
  v87 = v34;
  v89 = sub_2281C96FC(v86, v88, &v119);

  *(v84 + 4) = v89;
  *(v84 + 12) = 2080;
  sub_2282FEB84(v73, v99, type metadata accessor for MedicationSearchItem);
  v90 = sub_228392020();
  v92 = v91;
  sub_2282FEDC0(v73, type metadata accessor for MedicationSearchItem);
  v93 = sub_2281C96FC(v90, v92, &v119);

  *(v84 + 14) = v93;
  _os_log_impl(&dword_22816B000, v82, v83, "[%s] MedicationOnboardingFlowManager wasn't able to find next ViewController! Encountered unexpected medication concept type: %s", v84, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AAB7B80](v85, -1, -1);
  MEMORY[0x22AAB7B80](v84, -1, -1);

  (*(v108 + 8))(v110, v103);
  sub_2282FEDC0(v74, type metadata accessor for MedicationOnboardingFlowManager);
  v94 = v87;
  return sub_2282FEDC0(v94, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
}

uint64_t sub_2282FA14C(char a1)
{
  v73[1] = swift_getObjectType();
  v2 = sub_2283911B0();
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x28223BE20](v2);
  v78 = v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2282FE8F8(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = v73 - v6;
  sub_2282FE8F8(0, &qword_280DDBD20, MEMORY[0x277D116C8], v4);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = v73 - v8;
  sub_2282FE8F8(0, &qword_27D8238A8, MEMORY[0x277D11640], v4);
  MEMORY[0x28223BE20](v9 - 8);
  v83 = v73 - v10;
  sub_2282FE8F8(0, &unk_27D827790, type metadata accessor for FormStepResult, v4);
  MEMORY[0x28223BE20](v11 - 8);
  v82 = v73 - v12;
  sub_2282FE8F8(0, &qword_27D827160, MEMORY[0x277CC95F0], v4);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v73 - v14;
  v16 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  MEMORY[0x28223BE20](v16);
  v87 = (v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v74 = *(v18 - 1);
  v19 = MEMORY[0x28223BE20](v18);
  v76 = v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v73 - v22;
  v75 = v24;
  MEMORY[0x28223BE20](v21);
  v86 = v73 - v25;
  swift_beginAccess();
  v26 = *&v1[qword_27D8276E8];
  v27 = *&v1[qword_27D827738];
  sub_228390D90();
  swift_allocObject();

  v27;
  v28 = sub_228390D80();
  sub_228390E70();

  sub_228390E60();
  v85 = v28;

  v81 = v1;
  v29 = sub_2282F7668();
  v30 = [v29 text];

  if (v30)
  {
    v31 = sub_228392000();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = v87;
  *v87 = v31;
  v34[1] = v33;
  swift_storeEnumTagMultiPayload();
  v35 = v18[9];
  v36 = sub_22838F4A0();
  (*(*(v36 - 8) + 56))(v15, 1, 1, v36);
  sub_2282FEB08(0, &qword_27D8277A0, &qword_27D827160, MEMORY[0x277CC95F0]);
  swift_allocObject();
  *&v23[v35] = sub_228391890();
  v37 = v18[10];
  *&v88[0] = 0;
  sub_2282FE95C(0);
  swift_allocObject();
  *&v23[v37] = sub_228391890();
  v38 = v18[11];
  LOBYTE(v88[0]) = 0;
  sub_22817D780();
  swift_allocObject();
  *&v23[v38] = sub_228391890();
  v39 = v18[12];
  v40 = type metadata accessor for FormStepResult(0);
  (*(*(v40 - 8) + 56))(v82, 1, 1, v40);
  sub_2282FEB08(0, &qword_27D8253A0, &unk_27D827790, type metadata accessor for FormStepResult);
  swift_allocObject();
  *&v23[v39] = sub_228391890();
  v41 = v18[13];
  sub_2282FE9DC(0, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
  v88[0] = 0uLL;
  swift_allocObject();
  *&v23[v41] = sub_228391890();
  v42 = v18[14];
  v88[0] = 0uLL;
  swift_allocObject();

  *&v23[v42] = sub_228391890();
  v43 = v18[15];
  *&v88[0] = 0;
  sub_228257A7C(0);
  swift_allocObject();
  *&v23[v43] = sub_228391890();
  v44 = v18[16];
  v45 = sub_2283909E0();
  (*(*(v45 - 8) + 56))(v83, 1, 1, v45);
  sub_2282FEB08(0, &qword_27D8238C8, &qword_27D8238A8, MEMORY[0x277D11640]);
  swift_allocObject();
  *&v23[v44] = sub_228391890();
  v46 = v18[17];
  v47 = sub_228390D50();
  (*(*(v47 - 8) + 56))(v84, 1, 1, v47);
  sub_2282FEB08(0, &qword_27D827800, &qword_280DDBD20, MEMORY[0x277D116C8]);
  swift_allocObject();
  *&v23[v46] = sub_228391890();
  v48 = v18[18];
  sub_2282FE9DC(0, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
  memset(v88, 0, sizeof(v88));
  swift_allocObject();
  *&v23[v48] = sub_228391890();
  v49 = v18[19];
  *&v88[0] = 0;
  sub_2281BC72C(0);
  swift_allocObject();
  *&v23[v49] = sub_228391890();
  v50 = v18[21];
  *&v88[0] = 0;
  sub_2282FEB08(0, &qword_27D827820, &qword_27D826D70, sub_2282FEA58);
  swift_allocObject();
  *&v23[v50] = sub_228391890();
  v51 = v18[22];
  sub_228390890();
  *&v23[v51] = sub_228390880();
  sub_2282FEB84(v34, v23, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  v23[v18[7]] = 64;
  *&v23[v18[5]] = v26;

  sub_228390DF0();
  *&v23[v18[6]] = 1;
  v23[v18[8]] = 0;
  *&v88[0] = sub_228371268();
  *(&v88[0] + 1) = v52;
  sub_228391850();

  *&v88[0] = 0;
  sub_2282FEB08(0, &qword_27D827848, &qword_27D827850, sub_2282B9CF8);
  swift_allocObject();
  *&v23[v18[20]] = sub_228391890();
  sub_228391870();
  if (*&v88[0])
  {
  }

  else
  {
    v53 = sub_2283922D0();
    v54 = v77;
    (*(*(v53 - 8) + 56))(v77, 1, 1, v53);
    v55 = v76;
    sub_2282FEB84(v23, v76, type metadata accessor for MedicationOnboardingFlowManager);
    v56 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    *(v57 + 24) = 0;
    sub_2282FEC6C(v55, v57 + v56);
    sub_2281DC568(0, 0, v54, &unk_2283A63D0, v57);
  }

  v58 = v86;
  sub_2282FEDC0(v87, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  sub_2282FEC6C(v23, v58);
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(v59);
  if (!v60)
  {
    v64 = v78;
    sub_228391150();
    v65 = sub_2283911A0();
    v66 = sub_2283925C0();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v88[0] = v68;
      *v67 = 136315138;
      v69 = sub_228393600();
      v71 = sub_2281C96FC(v69, v70, v88);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_22816B000, v65, v66, "[%s] MedicationOnboardingFlowManager wasn't able to find next ViewController", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x22AAB7B80](v68, -1, -1);
      MEMORY[0x22AAB7B80](v67, -1, -1);
    }

    (*(v79 + 8))(v64, v80);
    return sub_2282FEDC0(v58, type metadata accessor for MedicationOnboardingFlowManager);
  }

  v61 = v60;
  v62 = [v81 navigationController];
  if (v62)
  {
    v63 = v62;
    [v62 pushViewController:v61 animated:1];

    return sub_2282FEDC0(v58, type metadata accessor for MedicationOnboardingFlowManager);
  }

  sub_2282FEDC0(v58, type metadata accessor for MedicationOnboardingFlowManager);
}

uint64_t sub_2282FAE4C()
{
  swift_beginAccess();
  v1 = *(v0 + qword_27D827738);
  sub_228390D90();
  swift_allocObject();

  v1;
  sub_228390D80();
  sub_228390E70();
  sub_228390E60();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22838FB00();
}

void sub_2282FAFBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1 == 2)
    {
      v7 = Strong;
      sub_22838FB10();
    }

    else
    {
      if (a1 != 3)
      {
LABEL_7:

        return;
      }

      v5 = *&Strong[qword_27D827738];
      objc_allocWithZone(sub_228390600());
      v6 = v5;

      v7 = sub_2283905E0();
      sub_2282FF744(&unk_27D827880, type metadata accessor for NewMedicationOnboardingViewController, &protocol conformance descriptor for NewMedicationOnboardingViewController);
      v8 = v4;
      sub_2283905F0();
      [v8 presentViewController:v7 animated:1 completion:0];
    }

    goto LABEL_7;
  }
}

uint64_t sub_2282FB0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a4;
  v5 = sub_2283911B0();
  v4[38] = v5;
  v4[39] = *(v5 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  sub_2283922A0();
  v4[42] = sub_228392290();
  v7 = sub_228392250();
  v4[43] = v7;
  v4[44] = v6;

  return MEMORY[0x2822009F8](sub_2282FB1F4, v7, v6);
}

uint64_t sub_2282FB1F4(uint64_t a1)
{
  v25 = v1;
  v2 = v1[37];
  sub_228391150();
  v3 = v2;
  v4 = sub_2283911A0();
  v5 = sub_2283925A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[41];
    v7 = v1[38];
    v8 = v1[39];
    v9 = v1[37];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446210;
    v1[36] = v9;
    type metadata accessor for NewMedicationOnboardingViewController(0);
    v12 = v9;
    v13 = sub_228392040();
    v15 = sub_2281C96FC(v13, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_22816B000, v4, v5, "[%{public}s] Marking medication education/interaction shards as required during add medication flow", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAB7B80](v11, -1, -1);
    MEMORY[0x22AAB7B80](v10, -1, -1);

    v16 = *(v8 + 8);
    v16(v6, v7);
  }

  else
  {
    v17 = v1[41];
    v18 = v1[38];
    v19 = v1[39];

    v16 = *(v19 + 8);
    v16(v17, v18);
  }

  v1[45] = v16;
  v20 = sub_2282F7440();
  v1[46] = v20;
  v1[2] = v1;
  v1[3] = sub_2282FB468;
  v21 = swift_continuation_init();
  sub_2281E0600(0);
  v1[47] = v22;
  v1[25] = v22;
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = sub_2282B4368;
  v1[21] = &block_descriptor_68;
  v1[22] = v21;
  [v20 markMedsEducationAsRequiredWithCompletion_];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_2282FB468()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 384) = v2;
  v3 = *(v1 + 352);
  v4 = *(v1 + 344);
  if (v2)
  {
    v5 = sub_2282FB854;
  }

  else
  {
    v5 = sub_2282FB598;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2282FB598()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 296);

  v3 = *(v2 + qword_27D8276F8);
  *(v0 + 392) = v3;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_2282FB6AC;
  v4 = swift_continuation_init();
  *(v0 + 264) = v1;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_2282B4368;
  *(v0 + 232) = &block_descriptor_71;
  *(v0 + 240) = v4;
  [v3 markInteractionsShardAsRequiredWithCompletion_];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_2282FB6AC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 400) = v2;
  v3 = *(v1 + 352);
  v4 = *(v1 + 344);
  if (v2)
  {
    v5 = sub_2282FBACC;
  }

  else
  {
    v5 = sub_2282FB7DC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2282FB7DC()
{
  v1 = *(v0 + 392);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2282FB854()
{
  v27 = v0;

  swift_willThrow();
  v1 = *(v0 + 384);
  v2 = *(v0 + 296);

  sub_228391150();
  v3 = v2;
  v4 = v1;
  v5 = sub_2283911A0();
  v6 = sub_2283925C0();

  if (os_log_type_enabled(v5, v6))
  {
    v24 = *(v0 + 320);
    v25 = *(v0 + 360);
    v8 = *(v0 + 296);
    v7 = *(v0 + 304);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = v10;
    *v9 = 136446466;
    *(v0 + 272) = v8;
    type metadata accessor for NewMedicationOnboardingViewController(0);
    v11 = v8;
    v12 = sub_228392040();
    v14 = sub_2281C96FC(v12, v13, v26);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2082;
    *(v0 + 280) = v1;
    v15 = v1;
    sub_22818217C(0, &qword_280DDB860, MEMORY[0x277D84948], 1);
    v16 = sub_228392020();
    v18 = sub_2281C96FC(v16, v17, v26);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_22816B000, v5, v6, "[%{public}s] Could not mark medication education/interaction shards as required: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v10, -1, -1);
    MEMORY[0x22AAB7B80](v9, -1, -1);

    v25(v24, v7);
  }

  else
  {
    v19 = *(v0 + 360);
    v20 = *(v0 + 320);
    v21 = *(v0 + 304);

    v19(v20, v21);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2282FBACC()
{
  v27 = v0;

  swift_willThrow();
  v1 = *(v0 + 400);
  v2 = *(v0 + 296);

  sub_228391150();
  v3 = v2;
  v4 = v1;
  v5 = sub_2283911A0();
  v6 = sub_2283925C0();

  if (os_log_type_enabled(v5, v6))
  {
    v24 = *(v0 + 320);
    v25 = *(v0 + 360);
    v8 = *(v0 + 296);
    v7 = *(v0 + 304);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = v10;
    *v9 = 136446466;
    *(v0 + 272) = v8;
    type metadata accessor for NewMedicationOnboardingViewController(0);
    v11 = v8;
    v12 = sub_228392040();
    v14 = sub_2281C96FC(v12, v13, v26);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2082;
    *(v0 + 280) = v1;
    v15 = v1;
    sub_22818217C(0, &qword_280DDB860, MEMORY[0x277D84948], 1);
    v16 = sub_228392020();
    v18 = sub_2281C96FC(v16, v17, v26);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_22816B000, v5, v6, "[%{public}s] Could not mark medication education/interaction shards as required: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v10, -1, -1);
    MEMORY[0x22AAB7B80](v9, -1, -1);

    v25(v24, v7);
  }

  else
  {
    v19 = *(v0 + 360);
    v20 = *(v0 + 320);
    v21 = *(v0 + 304);

    v19(v20, v21);
  }

  v22 = *(v0 + 8);

  return v22();
}

void sub_2282FBD40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = sub_2282F7668();
    v17 = a1;
    v18 = a2;

    MEMORY[0x22AAB5C80](0x426863726165532ELL, 0xEA00000000007261);
    v9 = sub_228391FC0();

    [v8 setAccessibilityIdentifier_];

    v10 = sub_2282F789C();
    v17 = a1;
    v18 = a2;

    MEMORY[0x22AAB5C80](0x426C65636E61432ELL, 0xED00006E6F747475);
    v16 = sub_228391FC0();

    [v10 setAccessibilityIdentifier_];

    v11 = v16;
  }

  else
  {
    sub_228391150();
    v12 = sub_2283911A0();
    v13 = sub_2283925C0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22816B000, v12, v13, "Unable to set automation identifiers as there is no base identifier.", v14, 2u);
      MEMORY[0x22AAB7B80](v14, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

id NewMedicationOnboardingViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

void sub_2282FC06C()
{

  v1 = *(v0 + qword_27D827730);
}

id NewMedicationOnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewMedicationOnboardingViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2282FC198(uint64_t a1)
{

  v2 = *(a1 + qword_27D827730);
}

uint64_t sub_2282FC2BC()
{
  v1 = (*v0 + qword_27D8276F0);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_2282FC318(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + qword_27D8276F0);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_2282FC3E8(void *a1, char *a2, void *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v97 = a5;
  v98 = a6;
  v90 = a4;
  v92 = sub_2283911B0();
  v99 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v88 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_2282FE8F8(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v87 = &v83 - v12;
  sub_2282FE8F8(0, &qword_280DDBD20, MEMORY[0x277D116C8], v10);
  MEMORY[0x28223BE20](v13 - 8);
  v94 = &v83 - v14;
  sub_2282FE8F8(0, &qword_27D8238A8, MEMORY[0x277D11640], v10);
  MEMORY[0x28223BE20](v15 - 8);
  v93 = &v83 - v16;
  sub_2282FE8F8(0, &unk_27D827790, type metadata accessor for FormStepResult, v10);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v83 - v18;
  sub_2282FE8F8(0, &qword_27D827160, MEMORY[0x277CC95F0], v10);
  MEMORY[0x28223BE20](v19 - 8);
  v89 = &v83 - v20;
  v21 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  MEMORY[0x28223BE20](v21);
  v96 = (&v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v86 = *(v95 - 8);
  v23 = *(v86 + 64);
  v24 = MEMORY[0x28223BE20](v95);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v83 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v83 - v28;
  v30 = *&a2[qword_27D8276E0];
  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  *(v31 + 24) = a2;
  v32 = a3;
  v33 = a2;
  v100 = _sSo17UIAlertControllerC19HealthMedicationsUIE27makeAlertForExsitingConcept7concept11listManager11showHandlerABSgSo9HKConceptC_25UserDomainConceptsSupport04ListjM0CySo012HKMedicationqrJ0CctFZ_0(a1, v30, sub_2282FF858, v31);

  if (v100)
  {
    [v32 presentViewController:v100 animated:1 completion:0];
    v34 = v100;
  }

  else
  {
    v83 = v23;
    v84 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v85 = v32;
    v100 = v29;
    sub_2282FEBEC(0);
    v35 = v33;
    v37 = *(v36 + 48);
    v38 = v96;
    *v96 = a1;
    v39 = sub_22838F4A0();
    v40 = *(v39 - 8);
    (*(v40 + 16))(v38 + v37, v90, v39);
    swift_storeEnumTagMultiPayload();
    v90 = v35;
    v41 = *&v35[qword_27D8276E8];
    v42 = v95;
    v43 = *(v95 + 36);
    (*(v40 + 56))(v89, 1, 1, v39);
    sub_2282FEB08(0, &qword_27D8277A0, &qword_27D827160, MEMORY[0x277CC95F0]);
    swift_allocObject();
    v44 = a1;
    *&v27[v43] = sub_228391890();
    v45 = v42[10];
    *&v101[0] = 0;
    sub_2282FE95C(0);
    swift_allocObject();
    *&v27[v45] = sub_228391890();
    v46 = v42[11];
    LOBYTE(v101[0]) = 0;
    sub_22817D780();
    swift_allocObject();
    *&v27[v46] = sub_228391890();
    v47 = v42[12];
    v48 = type metadata accessor for FormStepResult(0);
    (*(*(v48 - 8) + 56))(v91, 1, 1, v48);
    sub_2282FEB08(0, &qword_27D8253A0, &unk_27D827790, type metadata accessor for FormStepResult);
    swift_allocObject();
    *&v27[v47] = sub_228391890();
    v49 = v42[13];
    sub_2282FE9DC(0, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
    v101[0] = 0uLL;
    swift_allocObject();
    *&v27[v49] = sub_228391890();
    v50 = v42[14];
    v101[0] = 0uLL;
    swift_allocObject();

    *&v27[v50] = sub_228391890();
    v51 = v42[15];
    *&v101[0] = 0;
    sub_228257A7C(0);
    swift_allocObject();
    *&v27[v51] = sub_228391890();
    v52 = v42[16];
    v53 = sub_2283909E0();
    (*(*(v53 - 8) + 56))(v93, 1, 1, v53);
    sub_2282FEB08(0, &qword_27D8238C8, &qword_27D8238A8, MEMORY[0x277D11640]);
    swift_allocObject();
    *&v27[v52] = sub_228391890();
    v54 = v42[17];
    v55 = sub_228390D50();
    (*(*(v55 - 8) + 56))(v94, 1, 1, v55);
    sub_2282FEB08(0, &qword_27D827800, &qword_280DDBD20, MEMORY[0x277D116C8]);
    swift_allocObject();
    *&v27[v54] = sub_228391890();
    v56 = v42[18];
    sub_2282FE9DC(0, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
    memset(v101, 0, 32);
    swift_allocObject();
    *&v27[v56] = sub_228391890();
    v57 = v42[19];
    *&v101[0] = 0;
    sub_2281BC72C(0);
    swift_allocObject();
    *&v27[v57] = sub_228391890();
    v58 = v42[21];
    *&v101[0] = 0;
    sub_2282FEB08(0, &qword_27D827820, &qword_27D826D70, sub_2282FEA58);
    swift_allocObject();
    *&v27[v58] = sub_228391890();
    v59 = v42[22];
    sub_228390890();
    *&v27[v59] = sub_228390880();
    sub_2282FEB84(v38, v27, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    v27[v42[7]] = 64;
    *&v27[v42[5]] = v41;

    v60 = v97;
    sub_228390DF0();
    *&v27[v42[6]] = v60;
    v27[v42[8]] = 0;
    *&v101[0] = sub_228371268();
    *(&v101[0] + 1) = v61;
    sub_228391850();

    *&v101[0] = 0;
    sub_2282FEB08(0, &qword_27D827848, &qword_27D827850, sub_2282B9CF8);
    swift_allocObject();
    *&v27[v42[20]] = sub_228391890();
    sub_228391870();
    if (*&v101[0])
    {
    }

    else
    {
      v62 = sub_2283922D0();
      v63 = v87;
      (*(*(v62 - 8) + 56))(v87, 1, 1, v62);
      v64 = v84;
      sub_2282FEB84(v27, v84, type metadata accessor for MedicationOnboardingFlowManager);
      v65 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = 0;
      *(v66 + 24) = 0;
      sub_2282FEC6C(v64, v66 + v65);
      sub_2281DC568(0, 0, v63, &unk_2283A3240, v66);
    }

    v67 = v92;
    v68 = v99;
    sub_2282FEDC0(v38, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    v69 = v100;
    sub_2282FEC6C(v27, v100);
    MedicationOnboardingFlowManager.makeNextViewControllerForStep()(v70);
    if (v71)
    {
      v72 = v71;
      v73 = [v90 navigationController];
      if (v73)
      {
        v74 = v73;
        [v73 pushViewController:v72 animated:1];
      }
    }

    else
    {
      v75 = v88;
      sub_228391150();
      v76 = sub_2283911A0();
      v77 = sub_2283925C0();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *&v101[0] = v79;
        *v78 = 136315138;
        v80 = sub_228393600();
        v82 = sub_2281C96FC(v80, v81, v101);

        *(v78 + 4) = v82;
        _os_log_impl(&dword_22816B000, v76, v77, "[%s] MedicationOnboardingFlowManager wasn't able to find next ViewController!", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x22AAB7B80](v79, -1, -1);
        MEMORY[0x22AAB7B80](v78, -1, -1);
      }

      (*(v68 + 8))(v75, v67);
    }

    [v85 dismissViewControllerAnimated:1 completion:0];
    sub_2282FEDC0(v69, type metadata accessor for MedicationOnboardingFlowManager);
  }
}

void sub_2282FD0A8(uint64_t a1, void *a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v8[4] = sub_2282FFBFC;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_228191E9C;
  v8[3] = &block_descriptor_91;
  v6 = _Block_copy(v8);
  v7 = a3;

  [a2 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

Swift::Void __swiftcall NewMedicationOnboardingViewController.searchBar(_:textDidChange:)(UISearchBar *_, Swift::String textDidChange)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_228391970();
}

uint64_t sub_2282FD234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_228392000();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

Swift::Void __swiftcall NewMedicationOnboardingViewController.searchBarTextDidBeginEditing(_:)(UISearchBar *a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_2282FE8F8(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_2283911B0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v11 = sub_2283911A0();
  v12 = sub_2283925C0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136315138;
    v16 = sub_228393600();
    v18 = sub_2281C96FC(v16, v17, &v30);
    v28 = v7;
    v19 = v6;
    v20 = v2;
    v21 = v18;

    *(v14 + 4) = v21;
    v2 = v20;
    v6 = v19;
    _os_log_impl(&dword_22816B000, v11, v12, "[%s] start search", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AAB7B80](v15, -1, -1);
    v22 = v14;
    a1 = v29;
    MEMORY[0x22AAB7B80](v22, -1, -1);

    (*(v8 + 8))(v10, v28);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v23 = sub_2283922D0();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  sub_2283922A0();
  v24 = v2;
  v25 = sub_228392290();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v24;
  sub_2281DC568(0, 0, v6, &unk_2283A30C0, v26);

  [(UISearchBar *)a1 becomeFirstResponder];
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = 1;

  sub_228391970();
}

void sub_2282FD62C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NewMedicationOnboardingViewController.searchBarTextDidBeginEditing(_:)(v4);
}

Swift::Void __swiftcall NewMedicationOnboardingViewController.searchBarCancelButtonClicked(_:)(UISearchBar *a1)
{
  [(UISearchBar *)a1 resignFirstResponder];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_228391970();
}

void sub_2282FD718(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  [v4 resignFirstResponder];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_228391970();
}

void sub_2282FD7C4(void *a1, uint64_t a2)
{
  v55 = sub_2282F7668();
  v5 = [a1 snapshotViewAfterScreenUpdates_];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 navigationItem];
    v8 = [v7 searchController];

    if (v8)
    {
      v9 = [v8 searchBar];

      if (v9)
      {
        v10 = [v2 view];
        if (v10)
        {
          v11 = v10;
          [v6 frame];
          [v11 convertRect:a2 fromCoordinateSpace:?];
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v19 = v18;

          [v6 setFrame_];
          [a1 setAlpha_];
          v20 = [v2 view];
          if (v20)
          {
            v21 = v20;
            [v20 addSubview_];

            v22 = [v2 collectionView];
            if (v22)
            {
              v23 = v22;
              v24 = [v22 visibleCells];

              sub_22817A958(0, &qword_27D827770, 0x277D752A8);
              v25 = sub_2283921A0();

              v26 = [*&v2[qword_27D827708] searchTextField];
              [v26 frame];
              v28 = v27;
              v30 = v29;
              v32 = v31;
              v34 = v33;

              v35 = [v2 view];
              [v9 convertRect:v35 toView:{v28, v30, v32, v34}];
              v37 = v36;
              v39 = v38;
              v41 = v40;
              v43 = v42;

              v44 = objc_opt_self();
              v45 = swift_allocObject();
              *(v45 + 16) = v25;
              v60 = sub_2282FF6D0;
              v61 = v45;
              aBlock = MEMORY[0x277D85DD0];
              v57 = 1107296256;
              v58 = sub_228191E9C;
              v59 = &block_descriptor_22;
              v46 = _Block_copy(&aBlock);

              [v44 animateWithDuration:v46 animations:0.1];
              _Block_release(v46);
              v47 = swift_allocObject();
              v47[2] = v6;
              v47[3] = v37;
              v47[4] = v39;
              v47[5] = v41;
              v47[6] = v43;
              v60 = sub_2282FF6F0;
              v61 = v47;
              aBlock = MEMORY[0x277D85DD0];
              v57 = 1107296256;
              v58 = sub_228191E9C;
              v59 = &block_descriptor_41;
              v48 = _Block_copy(&aBlock);
              v49 = v6;

              v50 = swift_allocObject();
              v50[2] = 0x3FD999999999999ALL;
              v50[3] = v55;
              v50[4] = v49;
              v50[5] = v2;
              v60 = sub_2282FF708;
              v61 = v50;
              aBlock = MEMORY[0x277D85DD0];
              v57 = 1107296256;
              v58 = sub_2282C49D0;
              v59 = &block_descriptor_47;
              v51 = _Block_copy(&aBlock);
              v52 = v49;
              v53 = v55;
              v54 = v2;

              [v44 animateWithDuration:v48 animations:v51 completion:0.36];
              _Block_release(v51);
              _Block_release(v48);

              return;
            }

            goto LABEL_14;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }
  }
}

void sub_2282FDCCC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x22AAB6D80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v4 setAlpha_];

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_2282FDDA4(double a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v22 = sub_2282FF718;
  v23 = v10;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_228191E9C;
  v21 = &block_descriptor_53_0;
  v11 = _Block_copy(&v18);
  v12 = a3;
  v13 = a4;
  v14 = a5;

  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v22 = sub_2282FF724;
  v23 = v15;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2282C49D0;
  v21 = &block_descriptor_59_0;
  v16 = _Block_copy(&v18);
  v17 = v13;

  [v9 animateWithDuration:v11 animations:v16 completion:a1 * 0.1];
  _Block_release(v16);
  _Block_release(v11);
}

uint64_t sub_2282FDF58(void *a1, void *a2, void *a3)
{
  v6 = sub_228391DC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228391DF0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setHidden_];
  [a1 setAlpha_];
  [a2 setAlpha_];
  v14 = [a3 navigationItem];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v15 = sub_228391FC0();

  [v14 setTitle_];

  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v16 = sub_228392790();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  aBlock[4] = sub_2282FF734;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_65_0;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2282FF744(&qword_280DDCF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2282FE8F8(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  sub_228393030();
  MEMORY[0x22AAB6340](0, v13, v9, v18);
  _Block_release(v18);

  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2282FE344(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v36 = a3;
  v37 = a1;
  v6 = sub_22838F4A0();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CBCED0];
  sub_2282FFD10(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  sub_2282FFD10(0, &unk_27D8278B0, MEMORY[0x277D837D0], v9);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  v41[3] = sub_228390EA0();
  v41[4] = MEMORY[0x277D11710];
  v41[0] = a2;
  v20 = a4 + qword_27D823950;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(a4 + qword_27D823968 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + qword_27D823980) = 0;
  *(a4 + qword_27D823988) = 0;
  *(a4 + qword_27D823990) = 0;
  *(a4 + qword_27D823998) = 0;
  *(a4 + qword_27D8239A0) = 0;
  *(a4 + qword_27D8239A8) = 0;
  *(a4 + qword_27D8239F8) = 1;
  v21 = qword_27D823930;
  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_228391920();
  (*(v17 + 32))(a4 + v21, v19, v16);
  v22 = qword_27D823940;
  LOBYTE(v40[0]) = 0;
  sub_228391920();
  v23 = *(v12 + 32);
  v23(a4 + v22, v14, v11);
  v24 = qword_27D823948;
  LOBYTE(v40[0]) = 0;
  sub_228391920();
  v23(a4 + v24, v14, v11);
  *(a4 + qword_27D8239B8) = MEMORY[0x277D84FA0];
  *(a4 + qword_27D823A00) = 0;
  v25 = MEMORY[0x277D84F90];
  *(a4 + qword_27D828998) = MEMORY[0x277D84F90];
  *(a4 + qword_27D8239C0) = v25;
  v26 = v36;
  *(a4 + qword_27D8239B0) = v36;
  sub_228180FB0(v41, a4 + qword_27D823970);
  *(a4 + qword_27D823978) = v37;
  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  v27 = v26;

  sub_2283931D0();

  strcpy(v40, "MutableArray<");
  HIWORD(v40[1]) = -4864;
  sub_22838F490();
  v28 = sub_22838F450();
  v30 = v29;
  (*(v38 + 8))(v8, v39);
  MEMORY[0x22AAB5C80](v28, v30);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v31 = sub_22838FF30();

  sub_228183554();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);

  v32 = sub_228392790();
  sub_228391B10();

  v33 = swift_allocObject();
  swift_weakInit();

  sub_228176FA8(sub_2282FFD60, v33);
  sub_228391B00();

  sub_2281864C0();
  sub_228187770();
  sub_228185D08();

  __swift_destroy_boxed_opaque_existential_0(v41);
  return v31;
}

uint64_t type metadata accessor for NewMedicationOnboardingViewController(uint64_t a1)
{
  result = qword_27D827870;
  if (!qword_27D827870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2282FE8F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2282FE95C(uint64_t a1)
{
  if (!qword_27D8277A8)
  {
    sub_2281BC2E4(255, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8277A8);
    }
  }
}

void sub_2282FE9DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_2282FFD10(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_228391880();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2282FEA58(uint64_t a1)
{
  if (!qword_27D827830)
  {
    sub_22817A958(255, &qword_27D824240, 0x277CCDA00);
    sub_22818C470(&qword_27D827840, &qword_27D824240, 0x277CCDA00, MEMORY[0x277D85378]);
    v1 = sub_228391F40();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827830);
    }
  }
}

void sub_2282FEB08(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2282FE8F8(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_228391880();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2282FEB84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2282FEBEC(uint64_t a1)
{
  if (!qword_27D827868)
  {
    sub_22817A958(255, &qword_27D823BD8, 0x277CCD1B0);
    sub_22838F4A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D827868);
    }
  }
}

uint64_t sub_2282FEC6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationOnboardingFlowManager(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282FECD0(uint64_t a1)
{
  v4 = *(type metadata accessor for MedicationOnboardingFlowManager(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22837E1E4(a1, v6, v7, v1 + v5);
}

uint64_t sub_2282FEDC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2282FEE20()
{
  *(v0 + qword_27D8276F8) = 0;
  v1 = (v0 + qword_27D8276F0);
  v3 = sub_228392000();
  v4 = v2;

  MEMORY[0x22AAB5C80](0x7461636964654D2ELL, 0xEC000000736E6F69);

  *v1 = v3;
  v1[1] = v4;
  *(v0 + qword_27D827700) = 0x4046000000000000;
  *(v0 + qword_27D827708) = 0;
  *(v0 + qword_27D827710) = 0;
  *(v0 + qword_27D827718) = 0;
  *(v0 + qword_27D827720) = 0;
  *(v0 + qword_27D827728) = 0;
  *(v0 + qword_27D827730) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_2282FEF4C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a4;
  ObjectType = swift_getObjectType();
  v35 = sub_228391DC0();
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228391DF0();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22838F4A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v33 = sub_228392790();
  (*(v13 + 16))(v15, a3, v12);
  v16 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = v5;
  *(v18 + 4) = a1;
  (*(v13 + 32))(&v18[v16], v15, v12);
  v19 = ObjectType;
  *&v18[v17] = v32;
  *&v18[(v17 + 15) & 0xFFFFFFFFFFFFFFF8] = v19;
  aBlock[4] = sub_2282FF7B8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_77;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  v22 = v5;
  v23 = a1;

  v24 = v30;
  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2282FF744(&qword_280DDCF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2282FE8F8(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  v26 = v34;
  v25 = v35;
  sub_228393030();
  v27 = v33;
  MEMORY[0x22AAB6340](0, v24, v26, v20);
  _Block_release(v20);

  (*(v38 + 8))(v26, v25);
  return (*(v36 + 8))(v24, v37);
}

uint64_t sub_2282FF350(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22819DA1C;

  return sub_2282FB0F4(a1, v4, v5, v6);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2282FF744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2282FF7B8()
{
  v1 = *(sub_22838F4A0() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = *&v0[v3];
  v8 = *&v0[(v3 + 15) & 0xFFFFFFFFFFFFFFF8];

  sub_2282FC3E8(v4, v5, v6, &v0[v2], v7, v8);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(type metadata accessor for MedicationOnboardingFlowManager(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = (v0 + v3);
  type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

      sub_2282FEBEC(0);
      v11 = *(v10 + 48);
      v12 = sub_22838F4A0();
      (*(*(v12 - 8) + 8))(v5 + v11, v12);
    }

    else if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    type metadata accessor for MedicationSearchItem.Source(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_228390B70();
      v8 = (v0 + v3);
    }

    else
    {

      sub_22818DE38(0);
      v8 = v5 + *(v9 + 48);
      v7 = sub_228390C30();
    }

    (*(*(v7 - 8) + 8))(v8);
    type metadata accessor for MedicationSearchItem(0);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2282FFB0C(uint64_t a1)
{
  v4 = *(type metadata accessor for MedicationOnboardingFlowManager(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819D87C;

  return sub_22837E1E4(a1, v6, v7, v1 + v5);
}

void sub_2282FFC14(uint64_t a1)
{
  if (!qword_27D827898)
  {
    sub_2282FFD10(255, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22824EB64();
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827898);
    }
  }
}

void sub_2282FFD10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double *MedicationsDoseLogViewModel.__allocating_init(medication:doseEvent:scheduleItem:logDate:dosage:index:)(void *a1, void *a2, uint64_t a3, char *a4, uint64_t a5, double a6)
{
  v43 = a5;
  v11 = sub_22838F440();
  v39 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = swift_allocObject();
  *(v17 + 2) = a1;
  *(v17 + 3) = a2;
  *(v17 + 4) = a3;
  v40 = a1;
  v41 = v14;
  if (a2)
  {

    v18 = a2;
    v19 = a1;
    v20 = COERCE_DOUBLE(sub_2283928B0());
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      a6 = v20;
      v17[5] = v20;
      goto LABEL_11;
    }

    v23 = COERCE_DOUBLE(sub_2283928A0());
    if ((v24 & 1) == 0)
    {
      a6 = v23;
      v17[5] = v23;
LABEL_11:
      v27 = [v18 logStatus];
      *(v17 + 6) = v27;
      v28 = [v18 logStatus];
      goto LABEL_12;
    }
  }

  else
  {

    v25 = a1;
  }

  if (a3)
  {
    sub_2283908F0();
    a6 = v26;
  }

  v17[5] = a6;
  if (a2)
  {
    v18 = a2;
    goto LABEL_11;
  }

  v28 = 1;
  *(v17 + 6) = 1;
  v27 = 1;
LABEL_12:
  *(v17 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) = v28;
  v29 = qword_283B66B60 == v27 || qword_283B66B58 == v27;
  v42 = a4;
  if (v29 && a2)
  {
    v30 = [a2 startDate];
    sub_22838F3E0();

    v31 = v39;
  }

  else
  {
    v31 = v39;
    (*(v39 + 16))(v16, a4, v11);
  }

  v32 = *(v31 + 32);
  v32(v17 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate, v16, v11);
  if (qword_283B66B58 != v27 && qword_283B66B60 != v27)
  {

LABEL_27:
    v36 = v41;
    v32(v41, v42, v11);
    goto LABEL_28;
  }

  if (!a2)
  {

    goto LABEL_27;
  }

  v33 = a2;
  v34 = v31;
  v35 = [v33 startDate];

  v36 = v41;
  sub_22838F3E0();

  (*(v34 + 8))(v42, v11);
LABEL_28:
  v32(v17 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v36, v11);
  *(v17 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount) = a6;
  *(v17 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index) = v43;
  return v17;
}

uint64_t MedicationDoseLogListViewModel.__allocating_init(date:title:medicationDoses:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date;
  v10 = sub_22838F440();
  (*(*(v10 - 8) + 32))(v8 + v9, a1, v10);
  v11 = (v8 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
  *v11 = a2;
  v11[1] = a3;
  *(v8 + 16) = a4;
  return v8;
}

double *MedicationsDoseLogViewModel.init(medication:doseEvent:scheduleItem:logDate:dosage:index:)(void *a1, void *a2, uint64_t a3, char *a4, uint64_t a5, double a6)
{
  v7 = v6;
  v42 = a5;
  v13 = sub_22838F440();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v40 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  *(v6 + 4) = a3;
  v39 = a1;
  if (a2)
  {
    v19 = v14;

    v20 = a2;
    v21 = a1;
    v22 = sub_2283928B0();
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      *(v7 + 5) = v22;
      v14 = v19;
      goto LABEL_11;
    }

    v25 = sub_2283928A0();
    v14 = v19;
    if ((v26 & 1) == 0)
    {
      *(v7 + 5) = v25;
LABEL_11:
      *(v7 + 6) = [v20 logStatus];
      v29 = [v20 logStatus];
      goto LABEL_12;
    }
  }

  else
  {

    v27 = a1;
  }

  if (a3)
  {
    sub_2283908F0();
    a6 = v28;
  }

  v7[5] = a6;
  if (a2)
  {
    v20 = a2;
    goto LABEL_11;
  }

  v29 = 1;
  *(v7 + 6) = 1;
LABEL_12:
  *(v7 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) = v29;
  v30 = *(v7 + 6);
  v31 = qword_283B66F60 == v30 || qword_283B66F58 == v30;
  v41 = a4;
  if (v31 && a2)
  {
    v32 = [a2 startDate];
    sub_22838F3E0();
  }

  else
  {
    (*(v14 + 16))(v18, a4, v13);
  }

  v33 = *(v14 + 32);
  v33(v7 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate, v18, v13);
  v34 = *(v7 + 6);
  if (qword_283B66F58 != v34 && qword_283B66F60 != v34)
  {

LABEL_27:
    v37 = v40;
    v33(v40, v41, v13);
    goto LABEL_28;
  }

  if (!a2)
  {

    goto LABEL_27;
  }

  v35 = a2;
  v36 = [v35 startDate];

  v37 = v40;
  sub_22838F3E0();

  (*(v14 + 8))(v41, v13);
LABEL_28:
  v33(v7 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v37, v13);
  *(v7 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount) = v7[5];
  *(v7 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index) = v42;
  return v7;
}

uint64_t sub_228300540()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  v3 = [v2 metadata];
  if (!v3)
  {

LABEL_11:
    v13 = [*(v0 + 16) semanticIdentifier];
    v14 = [v13 stringValue];

    v12 = sub_228392000();
    return v12;
  }

  v4 = v3;
  v5 = sub_228391F20();

  v6 = sub_228392000();
  if (!*(v5 + 16))
  {

    goto LABEL_11;
  }

  v8 = v0;
  v9 = sub_2281A76E0(v6, v7);
  v11 = v10;

  if ((v11 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_2281BC4A4(*(v5 + 56) + 32 * v9, v17);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v0 = v8;
    goto LABEL_11;
  }

  return v16;
}

BOOL sub_2283006D8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return [v1 logOrigin] == 2;
  }

  else
  {
    return *(v0 + 32) != 0;
  }
}

uint64_t sub_22830071C@<X0>(uint64_t a1@<X8>)
{
  sub_228301654(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 24);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 scheduledDate];
    if (v8)
    {
      v9 = v8;
      sub_22838F3E0();

      v10 = sub_22838F440();
      (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    }

    else
    {

      v16 = sub_22838F440();
      (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    }

    return sub_2281E793C(v5, a1);
  }

  else
  {
    if (*(v1 + 32))
    {

      sub_228390920();

      v11 = sub_22838F440();
      v12 = *(*(v11 - 8) + 56);
      v13 = v11;
      v14 = a1;
      v15 = 0;
    }

    else
    {
      v18 = sub_22838F440();
      v12 = *(*(v18 - 8) + 56);
      v13 = v18;
      v14 = a1;
      v15 = 1;
    }

    return v12(v14, v15, 1, v13);
  }
}

uint64_t sub_228300900@<X0>(uint64_t *a1@<X8>)
{
  sub_228301654(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 24);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
    swift_beginAccess();
    v8 = sub_22838F440();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, v1 + v7, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v10 = v6;
    sub_228390D70();
    v11 = MEMORY[0x277D116E0];
  }

  else
  {
    v12 = *(v1 + 32);
    if (v12)
    {
      sub_228301C7C(0);
      v14 = v13;
      v15 = v13[16];
      v16 = v13[20];
      v17 = a1 + v13[24];
      v18 = *(v1 + 16);

      v19 = [v18 semanticIdentifier];
      v20 = [v19 stringValue];

      v21 = sub_228392000();
      v23 = v22;

      *a1 = v21;
      a1[1] = v23;
      a1[2] = v12;
      v24 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      v25 = sub_22838F440();
      (*(*(v25 - 8) + 16))(a1 + v15, v1 + v24, v25);
      v26 = *(v1 + 40);
      *(a1 + v16) = *(v1 + 48);
      *v17 = v26;
      v17[8] = 0;
      v27 = *(v1 + 16);

      v28 = [v27 canonicalDoseUnitString];
      if (v28)
      {
        v29 = v28;
        v30 = sub_228392000();
        v32 = v31;
      }

      else
      {

        v30 = 0;
        v32 = 0;
      }

      v51 = (a1 + v14[28]);
      *v51 = v30;
      v51[1] = v32;
      v52 = MEMORY[0x277D116C0];
    }

    else
    {
      sub_228301AC4(0);
      v34 = v33;
      v35 = v33[12];
      v36 = v33[16];
      v37 = a1 + v33[20];
      v38 = [*(v1 + 16) semanticIdentifier];
      v39 = [v38 stringValue];

      v40 = sub_228392000();
      v42 = v41;

      *a1 = v40;
      a1[1] = v42;
      v43 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      v44 = sub_22838F440();
      (*(*(v44 - 8) + 16))(a1 + v35, v1 + v43, v44);
      v45 = *(v1 + 40);
      *(a1 + v36) = *(v1 + 48);
      *v37 = v45;
      v37[8] = 0;
      v46 = [*(v1 + 16) canonicalDoseUnitString];
      if (v46)
      {
        v47 = v46;
        v48 = sub_228392000();
        v50 = v49;
      }

      else
      {
        v48 = 0;
        v50 = 0;
      }

      v53 = (a1 + v34[24]);
      *v53 = v48;
      v53[1] = v50;
      v52 = MEMORY[0x277D116B8];
    }

    v54 = *v52;
    v55 = sub_228390CC0();
    (*(*(v55 - 8) + 104))(a1, v54, v55);
    v11 = MEMORY[0x277D116D8];
  }

  v56 = *v11;
  v57 = sub_228390D60();
  return (*(*(v57 - 8) + 104))(a1, v56, v57);
}

uint64_t sub_228300D60()
{
  v1 = sub_22838F440();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23 - v7;
  v9 = *(v0 + 24);
  if (v9)
  {
    v10 = v6;
    v11 = v9;
    if ([v11 logStatus] == *(v0 + 48) && (v12 = v0, v13 = COERCE_DOUBLE(sub_2283928B0()), (v14 & 1) == 0) && *(v0 + 40) == v13)
    {
      v15 = [v11 startDate];
      sub_22838F3E0();

      v16 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      v17 = v12 + v16;
      v18 = v10;
      (*(v2 + 16))(v5, v17, v10);
      sub_228301A7C(&unk_27D827B20, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v19 = sub_228391FB0();

      v20 = *(v2 + 8);
      v20(v5, v18);
      v20(v8, v18);
      v21 = v19 ^ 1;
    }

    else
    {

      v21 = 1;
    }
  }

  else
  {
    v21 = *(v0 + 48) != *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus);
  }

  return v21 & 1;
}

uint64_t sub_228300F90(uint64_t a1)
{
  sub_228300540();
  sub_2283920B0();
}

uint64_t static MedicationsDoseLogViewModel.== infix(_:_:)()
{
  v0 = sub_228300540();
  v2 = v1;
  if (v0 == sub_228300540() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_228393460();
  }

  return v4 & 1;
}

uint64_t MedicationsDoseLogViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
  v2 = sub_22838F440();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v2);
  return v0;
}

uint64_t MedicationsDoseLogViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
  v2 = sub_22838F440();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2283011F8()
{
  sub_228393520();
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_228301254()
{
  sub_228393520();
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_2283012B4(uint64_t a1)
{
  sub_228300540();
  sub_2283920B0();
}

uint64_t sub_228301308(uint64_t a1)
{
  sub_228393520();
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_228301364()
{
  v0 = sub_228300540();
  v2 = v1;
  if (v0 == sub_228300540() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_228393460();
  }

  return v5 & 1;
}

uint64_t MedicationDoseLogListViewModel.init(date:title:medicationDoses:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date;
  v10 = sub_22838F440();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  v11 = (v4 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
  *v11 = a2;
  v11[1] = a3;
  *(v4 + 16) = a4;
  return v4;
}

uint64_t MedicationDoseLogListViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date;
  v2 = sub_22838F440();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t MedicationDoseLogListViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date;
  v2 = sub_22838F440();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2283015B8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI32MedicationDoseRecordAllViewModel_logDate;
  v2 = sub_22838F440();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_228301654(uint64_t a1)
{
  if (!qword_280DDCDB0)
  {
    sub_22838F440();
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDCDB0);
    }
  }
}

uint64_t sub_22830171C(uint64_t a1)
{
  result = sub_22838F440();
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

uint64_t sub_2283018E4(uint64_t a1)
{
  result = sub_22838F440();
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

uint64_t sub_2283019E0(uint64_t a1)
{
  result = sub_22838F440();
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

uint64_t sub_228301A7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228301AC4(uint64_t a1)
{
  if (!qword_27D8278D0)
  {
    MEMORY[0x28223BE20](a1);
    v1 = MEMORY[0x277D837D0];
    sub_22838F440();
    type metadata accessor for LogStatus(255);
    sub_228301C30(255, &qword_27D8278D8, MEMORY[0x277D839F8]);
    sub_228301C30(255, &qword_27D825070, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27D8278D0);
    }
  }
}

void sub_228301C30(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_228301C7C(uint64_t a1)
{
  if (!qword_27D8278E0)
  {
    MEMORY[0x28223BE20](a1);
    v1 = MEMORY[0x277D837D0];
    sub_228390930();
    sub_22838F440();
    type metadata accessor for LogStatus(255);
    sub_228301C30(255, &qword_27D8278D8, MEMORY[0x277D839F8]);
    sub_228301C30(255, &qword_27D825070, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27D8278E0);
    }
  }
}

uint64_t MedicationInfoItem.__allocating_init(medmoji:name:strength:ingredients:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  type metadata accessor for MedicationInfoItemCell();
  sub_228303588(&qword_27D824338, v13, type metadata accessor for MedicationInfoItemCell, &protocol conformance descriptor for MedicationInfoItemCell);
  *(v12 + 16) = sub_22838FBB0();
  *(v12 + 24) = v14;
  sub_2281AA8D4(a1, v12 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_medmoji);
  v15 = (v12 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_name);
  *v15 = a2;
  v15[1] = a3;
  v16 = (v12 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_strength);
  *v16 = a4;
  v16[1] = a5;
  *(v12 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_ingredients) = a6;
  return v12;
}

uint64_t MedicationInfoItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t _s19HealthMedicationsUI18MedicationInfoItemC15reuseIdentifierSSvg_0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MedicationInfoItem.init(medmoji:name:strength:ingredients:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for MedicationInfoItemCell();
  sub_228303588(&qword_27D824338, v13, type metadata accessor for MedicationInfoItemCell, &protocol conformance descriptor for MedicationInfoItemCell);
  *(v6 + 16) = sub_22838FBB0();
  *(v6 + 24) = v14;
  sub_2281AA8D4(a1, v6 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_medmoji);
  v15 = (v6 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_name);
  *v15 = a2;
  v15[1] = a3;
  v16 = (v6 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_strength);
  *v16 = a4;
  v16[1] = a5;
  *(v6 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_ingredients) = a6;
  return v6;
}

uint64_t MedicationInfoItem.deinit()
{

  sub_228302A04(v0 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_medmoji, &qword_280DDBD20, MEMORY[0x277D116C8]);

  return v0;
}

uint64_t MedicationInfoItem.__deallocating_deinit()
{

  sub_228302A04(v0 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_medmoji, &qword_280DDBD20, MEMORY[0x277D116C8]);

  return swift_deallocClassInstance();
}

uint64_t sub_228302230()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_228302280(uint64_t a1)
{
  v2 = sub_228303588(&qword_27D827930, 255, type metadata accessor for MedicationInfoItem, &protocol conformance descriptor for MedicationInfoItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t MedicationInfoItemCell.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item;
  swift_beginAccess();
  return sub_2283039E4(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

void sub_228302374(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2283023C8(uint64_t a1, uint64_t *a2)
{
  sub_2283039E4(a1, v6, &qword_280DDCD50, sub_22817A700);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2283024F4();
  return sub_228302A04(v6, &qword_280DDCD50, sub_22817A700);
}

uint64_t MedicationInfoItemCell.item.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2283024F4();
  return sub_228302A04(a1, &qword_280DDCD50, sub_22817A700);
}

void sub_2283024F4()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228302374(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item;
  swift_beginAccess();
  sub_2283039E4(v1 + v9, v29, &qword_280DDCD50, sub_22817A700);
  if (v29[3])
  {
    sub_22817A700();
    type metadata accessor for MedicationInfoItem(0);
    if (swift_dynamicCast())
    {
      v10 = v28;
      v11 = sub_228302AF8();
      sub_2283039E4(v10 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_medmoji, v8, &qword_280DDBD20, MEMORY[0x277D116C8]);
      sub_228390950();

      v12 = sub_228302CA0(&OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___nameLabel, 2, &selRef_labelColor, &unk_283B66F68);

      v13 = sub_228391FC0();

      [v12 setText_];

      v14 = sub_228302CA0(&OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___strengthLabel, 0, &selRef_labelColor, &unk_283B66FA8);

      v15 = sub_228391FC0();

      [v14 setText_];

      v16 = sub_228302CA0(&OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___ingredientsLabel, 0, &selRef_secondaryLabelColor, &unk_283B66FE8);
      v29[0] = *(v10 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_ingredients);
      sub_228222D8C(0, &qword_27D827E10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_2281BF13C();

      sub_228391F90();

      v17 = sub_228391FC0();

      [v16 setText_];

      return;
    }
  }

  else
  {
    sub_228302A04(v29, &qword_280DDCD50, sub_22817A700);
  }

  sub_228391150();
  v18 = v1;
  v19 = sub_2283911A0();
  v20 = sub_2283925C0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v2;
    v28 = v22;
    v23 = v22;
    *v21 = 136446210;
    sub_2283039E4(v1 + v9, v29, &qword_280DDCD50, sub_22817A700);
    sub_228302374(0, &qword_280DDCD50, sub_22817A700);
    v24 = sub_228392040();
    v26 = sub_2281C96FC(v24, v25, &v28);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_22816B000, v19, v20, "Incorrect view model for MedicationInfoItem: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AAB7B80](v23, -1, -1);
    MEMORY[0x22AAB7B80](v21, -1, -1);

    (*(v3 + 8))(v5, v27);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_228302A04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228302374(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void (*MedicationInfoItemCell.item.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228302AC4;
}

void sub_228302AC4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_2283024F4();
  }
}

id sub_228302AF8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___medmojiView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___medmojiView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___medmojiView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    sub_228392B00();
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];

    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_228302BC8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setDistribution_];
    [v4 setSpacing_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_228302CA0(uint64_t *a1, uint64_t a2, SEL *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v9 = v4;
    v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v11 = sub_228392AD0();
    [v10 setFont_];

    [v10 setAdjustsFontForContentSizeCategory_];
    v12 = [objc_opt_self() *a3];
    [v10 setTextColor_];

    [v10 setNumberOfLines_];
    v13 = v10;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    v14 = sub_228392190();
    v15 = HKUIJoinStringsForAutomationIdentifier();

    [v13 setAccessibilityIdentifier_];
    v16 = *(v9 + v5);
    *(v9 + v5) = v13;
    v7 = v13;

    v6 = 0;
  }

  v17 = v6;
  return v7;
}

char *sub_228302E50(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___medmojiView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___stackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___nameLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___strengthLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___ingredientsLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_width] = 0x4040800000000000;
  v54.receiver = v4;
  v54.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v54, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setUserInteractionEnabled_];
  v12 = sub_228302BC8();
  v13 = sub_228302CA0(&OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___nameLabel, 2, &selRef_labelColor, &unk_283B66F68);
  [v12 addArrangedSubview_];

  v14 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___stackView;
  v15 = *&v11[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___stackView];
  v16 = sub_228302CA0(&OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___strengthLabel, 0, &selRef_labelColor, &unk_283B66FA8);
  [v15 addArrangedSubview_];

  v17 = *&v11[v14];
  v18 = sub_228302CA0(&OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___ingredientsLabel, 0, &selRef_secondaryLabelColor, &unk_283B66FE8);
  [v17 addArrangedSubview_];

  v19 = [v11 contentView];
  v20 = sub_228302AF8();
  [v19 addSubview_];

  v21 = [v11 contentView];
  [v21 addSubview_];

  v53 = objc_opt_self();
  sub_228222D8C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_228399190;
  v23 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___medmojiView;
  v24 = [*&v11[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___medmojiView] topAnchor];
  v25 = [v11 contentView];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:16.0];
  *(v22 + 32) = v27;
  v28 = [*&v11[v23] leadingAnchor];
  v29 = [v11 contentView];
  v30 = [v29 leadingAnchor];

  v31 = [v28 constraintEqualToAnchor:v30 constant:16.0];
  *(v22 + 40) = v31;
  v32 = [*&v11[v23] widthAnchor];
  v33 = [v32 constraintEqualToConstant_];

  *(v22 + 48) = v33;
  v34 = [*&v11[v23] heightAnchor];
  v35 = [v34 constraintEqualToConstant_];

  *(v22 + 56) = v35;
  v36 = [*&v11[v14] leadingAnchor];
  v37 = [*&v11[v23] trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:16.0];

  *(v22 + 64) = v38;
  v39 = [*&v11[v14] trailingAnchor];
  v40 = [v11 contentView];
  v41 = [v40 trailingAnchor];

  v42 = [v39 constraintEqualToAnchor:v41 constant:-16.0];
  *(v22 + 72) = v42;
  v43 = [*&v11[v14] topAnchor];
  v44 = [v11 contentView];
  v45 = [v44 topAnchor];

  v46 = [v43 constraintEqualToAnchor:v45 constant:16.0];
  *(v22 + 80) = v46;
  v47 = [*&v11[v14] bottomAnchor];
  v48 = [v11 contentView];

  v49 = [v48 bottomAnchor];
  v50 = [v47 constraintEqualToAnchor:v49 constant:-16.0];

  *(v22 + 88) = v50;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v51 = sub_228392190();

  [v53 activateConstraints_];

  return v11;
}

id MedicationInfoItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228303588(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MedicationInfoItem(uint64_t a1)
{
  result = qword_27D8278F0;
  if (!qword_27D8278F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2283036C4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item;
  swift_beginAccess();
  return sub_2283039E4(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228303738(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2283024F4();
  return sub_228302A04(a1, &qword_280DDCD50, sub_22817A700);
}

void (*sub_2283037C0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228302AC4;
}

void sub_22830382C(uint64_t a1)
{
  sub_228302374(319, &qword_280DDBD20, MEMORY[0x277D116C8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_228303920()
{
  v1 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___medmojiView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___nameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___strengthLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___ingredientsLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_width) = 0x4040800000000000;
  sub_228393300();
  __break(1u);
}

uint64_t sub_2283039E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228302374(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_228303A58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C756465686373;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6874676E65727473;
    }

    else
    {
      v4 = 1836216166;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656863536174656DLL;
    }

    else
    {
      v4 = 0x656C756465686373;
    }

    if (v3)
    {
      v5 = 0xEC000000656C7564;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6874676E65727473;
  if (a2 != 2)
  {
    v8 = 1836216166;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x656863536174656DLL;
    v6 = 0xEC000000656C7564;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_228393460();
  }

  return v11 & 1;
}

id sub_228303B9C(char a1)
{
  v2 = v1;
  v4 = sub_22838F6C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22838F440();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  result = [v2 endDateTime];
  if (result)
  {
    v16 = result;
    sub_22838F3E0();

    sub_22838F680();
    sub_22838F3F0();
    v17 = sub_22838F600();
    v18 = *(v9 + 8);
    v18(v12, v8);
    (*(v5 + 8))(v7, v4);
    if (a1)
    {
      if (v17 < 0)
      {
        sub_2283074B4(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_228397F40;
        v20 = Date.formattedWithYearIfDifferent()();
        *(v19 + 56) = MEMORY[0x277D837D0];
        *(v19 + 64) = sub_22818E210();
        *(v19 + 32) = v20;
        if (qword_280DDCF18 == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_24;
      }
    }

    else
    {
      sub_22838F340();
      sub_228306F40(&qword_280DDCDB8, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v21 = sub_228391FA0();
      v18(v12, v8);
      if ((v21 & 1) != 0 || v17 < 0)
      {
        v18(v14, v8);
        return 0;
      }
    }

    if (v17 == 1)
    {
      if (qword_280DDCF18 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v17)
      {
        sub_2283074B4(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_228397F40;
        v23 = Date.formattedWithYearIfDifferent()();
        *(v19 + 56) = MEMORY[0x277D837D0];
        *(v19 + 64) = sub_22818E210();
        *(v19 + 32) = v23;
        if (qword_280DDCF18 == -1)
        {
LABEL_17:
          v24 = qword_280DDCF20;

          v25 = sub_22838F0C0();
          if (*(v19 + 16))
          {
            v22 = sub_228391FD0();
          }

          else
          {
            v22 = v25;
          }

          v18(v14, v8);

          return v22;
        }

LABEL_24:
        swift_once();
        goto LABEL_17;
      }

      if (qword_280DDCF18 == -1)
      {
LABEL_15:
        v22 = sub_22838F0C0();
        v18(v14, v8);
        return v22;
      }
    }

    swift_once();
    goto LABEL_15;
  }

  return result;
}

char *MedicationListViewData.items.getter()
{
  v1 = *v0;
  v43 = v0[1];
  sub_2283045C4(0);
  v2 = swift_allocObject();
  v3 = sub_228392A30();
  v5 = v4;
  if (v4)
  {
    v6 = v3;
    v7 = [objc_opt_self() labelColor];
    *(v2 + 32) = 3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v2 + 32) = 0;
  }

  *(v2 + 40) = v7;
  *(v2 + 48) = v6;
  *(v2 + 56) = v5;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  v8 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8strengthSSSgvg_0();
  v10 = v9;
  if (v9)
  {
    v11 = v8;
    v12 = [objc_opt_self() labelColor];
    *(v2 + 96) = 2;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v2 + 96) = 0;
  }

  v13 = 0;
  *(v2 + 104) = v12;
  *(v2 + 112) = v11;
  *(v2 + 120) = v10;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  v14 = MEMORY[0x277D84F90];
  do
  {
    v15 = (v2 + 48 + (v13++ << 6));
    while (1)
    {
      v16 = *(v15 - 2);
      v17 = *(v15 - 1);
      v18 = v15[1];
      v52 = *v15;
      v53 = v18;
      v54 = v15[2];
      if (v17)
      {
        break;
      }

      v15 += 4;
      if (++v13 == 3)
      {
        goto LABEL_17;
      }
    }

    v47 = v16;
    v48 = v17;
    v19 = v15[1];
    v49 = *v15;
    v50 = v19;
    v51 = v15[2];
    sub_228211388(&v47, &v44);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_228198390(0, *(v14 + 2) + 1, 1, v14);
    }

    v21 = *(v14 + 2);
    v20 = *(v14 + 3);
    if (v21 >= v20 >> 1)
    {
      v14 = sub_228198390((v20 > 1), v21 + 1, 1, v14);
    }

    v45 = v53;
    v46 = v54;
    v44 = v52;
    *(v14 + 2) = v21 + 1;
    v22 = &v14[64 * v21];
    *(v22 + 4) = v16;
    *(v22 + 5) = v17;
    v23 = v44;
    v24 = v46;
    *(v22 + 4) = v45;
    *(v22 + 5) = v24;
    *(v22 + 3) = v23;
  }

  while (v13 != 2);
LABEL_17:
  swift_setDeallocating();
  sub_228307574(0, &qword_280DDC6C0, MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v55 = v14;
  v47 = v1;
  v48 = v43;
  v25 = sub_228304FD0();
  sub_2281D54DC(v25);
  *&v44 = v1;
  *(&v44 + 1) = v43;
  sub_2283051B8(&v47);
  v26 = v47;
  v27 = v48;
  v44 = v49;
  v45 = v50;
  v46 = v51;
  if (v48)
  {
    v28 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_228198390(0, *(v28 + 2) + 1, 1, v28);
    }

    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_228198390((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    v31 = &v28[64 * v30];
    *(v31 + 4) = v26;
    *(v31 + 5) = v27;
    v32 = v44;
    v33 = v46;
    *(v31 + 4) = v45;
    *(v31 + 5) = v33;
    *(v31 + 3) = v32;
    v55 = v28;
  }

  *&v52 = v1;
  *(&v52 + 1) = v43;
  sub_228305320(&v47);
  v34 = v47;
  v35 = v48;
  v52 = v49;
  v53 = v50;
  v54 = v51;
  v36 = v55;
  if (v48)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_228198390(0, *(v36 + 2) + 1, 1, v36);
    }

    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_228198390((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v39 = &v36[64 * v38];
    *(v39 + 4) = v34;
    *(v39 + 5) = v35;
    v40 = v52;
    v41 = v54;
    *(v39 + 4) = v53;
    *(v39 + 5) = v41;
    *(v39 + 3) = v40;
  }

  return v36;
}

void sub_2283045C4(uint64_t a1)
{
  if (!qword_280DDB8B0)
  {
    sub_228307574(255, &qword_280DDC6C0, MEMORY[0x277D83D88]);
    v1 = sub_228393430();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDB8B0);
    }
  }
}

uint64_t sub_228304638(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    v3 = 1;
LABEL_8:

    return v3 & 1;
  }

  v2 = sub_228393460();

  if ((v2 & 1) == 0)
  {
    if (a1 > 1u)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_228393460();
    }

    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_228304784()
{
  sub_228393520();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_228304848(uint64_t a1)
{
  sub_2283920B0();
}

uint64_t sub_2283048F8(uint64_t a1)
{
  sub_228393520();
  sub_2283920B0();

  return sub_228393570();
}

unint64_t sub_2283049B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_228306E00(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2283049E8(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x656C756465686373;
  v4 = 0xE800000000000000;
  v5 = 0x6874676E65727473;
  if (*v1 != 2)
  {
    v5 = 1836216166;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x656863536174656DLL;
    v2 = 0xEC000000656C7564;
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

uint64_t MedicationCellItem.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 56);
  sub_2283920B0();

  sub_228392C70();
  sub_2283920B0();
  if (!v2)
  {
    sub_228393540();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_228393540();
  }

  sub_228393540();
  sub_2283920B0();
  if (!v3)
  {
    return sub_228393540();
  }

LABEL_3:
  sub_228393540();

  return sub_2283920B0();
}

uint64_t MedicationCellItem.hashValue.getter()
{
  sub_228393520();
  MedicationCellItem.hash(into:)(v1);
  return sub_228393570();
}

uint64_t sub_228304C24()
{
  sub_228393520();
  MedicationCellItem.hash(into:)(v1);
  return sub_228393570();
}

uint64_t sub_228304C68(uint64_t a1)
{
  sub_228393520();
  MedicationCellItem.hash(into:)(v2);
  return sub_228393570();
}

void *MedicationListViewData.schedule.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t MedicationListViewData.init(medication:schedule:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MedicationListViewData.id.getter()
{
  v1 = sub_22838F4A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = *(v0 + 8);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_2283931D0();

  v19 = 0x3A747065636E6F63;
  v20 = 0xE800000000000000;
  v7 = [v6 UUID];
  sub_22838F480();

  v8 = sub_22838F450();
  v10 = v9;
  v11 = *(v2 + 8);
  v11(v4, v1);
  MEMORY[0x22AAB5C80](v8, v10);

  MEMORY[0x22AAB5C80](0x6C7564656863735FLL, 0xEA00000000003A65);
  if (v5)
  {
    v12 = [v5 UUID];
    sub_22838F480();

    v13 = sub_22838F450();
    v15 = v14;
    v11(v4, v1);
  }

  else
  {
    v15 = 0xE400000000000000;
    v13 = 1819047278;
  }

  MEMORY[0x22AAB5C80](v13, v15);

  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  v18[1] = v5;
  sub_2281DFB88(0);
  sub_228306458();
  v18[0] = sub_228392F10();
  v16 = sub_228393420();
  MEMORY[0x22AAB5C80](v16);

  return v19;
}

uint64_t MedicationListViewData.incompatibleSchedules.getter()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    return 0;
  }

  sub_228390890();
  v2 = v1;
  sub_228390880();
  v3 = sub_228390870();

  v4 = sub_228390800();

  return v4;
}

uint64_t sub_228304FD0()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    v2 = v1;
    v3 = HKMedicationSchedule.makeItems()();

    return v3;
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v5 = sub_22838F0C0();
    v7 = v6;
    sub_228307574(0, &qword_280DDB8B8, MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_228397F40;
    v9 = [objc_opt_self() secondaryLabelColor];
    v10 = sub_22838F0C0();
    MEMORY[0x22AAB5C80](v10);

    MEMORY[0x22AAB5C80](32, 0xE100000000000000);
    MEMORY[0x22AAB5C80](v5, v7);
    *(v8 + 32) = 0;
    *(v8 + 40) = v9;
    *(v8 + 48) = v5;
    *(v8 + 56) = v7;
    *(v8 + 64) = xmmword_2283A3520;
    *(v8 + 80) = 0;
    *(v8 + 88) = 0xE000000000000000;
    return v8;
  }
}

double sub_2283051B8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = sub_228303B9C(0);
  if (!v6)
  {

LABEL_7:
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v7 = v5;
  v8 = v6;
  v9 = [objc_opt_self() secondaryLabelColor];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v10 = sub_22838F0C0();
  MEMORY[0x22AAB5C80](v10);

  MEMORY[0x22AAB5C80](32, 0xE100000000000000);
  MEMORY[0x22AAB5C80](v7, v8);

  *a1 = 1;
  *(a1 + 8) = v9;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  return result;
}

double sub_228305320@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (v3 && (sub_228390890(), v4 = v3, sub_228390880(), v5 = sub_228390870(), , v6 = sub_228390800(), v4, v5, v6))
  {

    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v7 = sub_22838F0C0();
    v9 = v8;
    v10 = [objc_opt_self() secondaryLabelColor];
    v11 = sub_22838F0C0();
    MEMORY[0x22AAB5C80](v11);

    MEMORY[0x22AAB5C80](32, 0xE100000000000000);
    MEMORY[0x22AAB5C80](v7, v9);
    *a1 = 1;
    *(a1 + 8) = v10;
    *(a1 + 16) = v7;
    *(a1 + 24) = v9;
    *(a1 + 32) = 0xD00000000000001BLL;
    *(a1 + 40) = 0x80000002283A9BE0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0xE000000000000000;
  }

  else
  {
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void MedicationListViewData.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_228392C70();
  if (v2)
  {
    sub_228393540();
    v3 = v2;
    sub_228392C70();
  }

  else
  {
    sub_228393540();
  }
}

uint64_t MedicationListViewData.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_228393520();
  sub_228392C70();
  sub_228393540();
  if (v1)
  {
    v2 = v1;
    sub_228392C70();
  }

  return sub_228393570();
}

uint64_t sub_22830562C()
{
  v1 = *(v0 + 8);
  sub_228393520();
  sub_228392C70();
  sub_228393540();
  if (v1)
  {
    v2 = v1;
    sub_228392C70();
  }

  return sub_228393570();
}

void sub_2283056AC(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_228392C70();
  if (v2)
  {
    sub_228393540();
    v3 = v2;
    sub_228392C70();
  }

  else
  {
    sub_228393540();
  }
}

uint64_t sub_228305744(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_228393520();
  sub_228392C70();
  sub_228393540();
  if (v2)
  {
    v3 = v2;
    sub_228392C70();
  }

  return sub_228393570();
}

id MedicationListItem.itemRepresentable.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v5 = *(v1 + 16);
  *a1 = v5;
  a1[1] = v2;
  v3 = v2;

  return v5;
}

id MedicationListItem.healthStore.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void MedicationListItem.healthStore.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

id MedicationListItem.conceptStore.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void MedicationListItem.conceptStore.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t MedicationListItem.listManager.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

void *MedicationListItem.__allocating_init(viewData:healthStore:)(uint64_t *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_228306E4C(a1, a2);

  return v4;
}

void *MedicationListItem.init(viewData:healthStore:)(uint64_t *a1, void *a2)
{
  v3 = sub_228306E4C(a1, a2);

  return v3;
}

void *MedicationListItem.__allocating_init(itemRepresentable:indexInList:accessories:healthStore:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v9 = *a1;
  v10 = a1[1];
  type metadata accessor for MedicationListItemCell(0);
  sub_228306F40(&unk_280DDC4B8, 255, type metadata accessor for MedicationListItemCell, &protocol conformance descriptor for MedicationListItemCell);
  v8[9] = sub_22838FBB0();
  v8[10] = v11;
  v8[4] = a4;
  sub_228390890();
  v12 = a4;
  sub_228390880();
  v13 = sub_228390820();

  v8[5] = v13;
  v8[2] = v9;
  v8[3] = v10;
  v8[7] = a3;
  v8[8] = a2;
  sub_228390880();
  v14 = sub_228390840();

  v8[6] = v14;
  return v8;
}

void *MedicationListItem.init(itemRepresentable:indexInList:accessories:healthStore:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *a1;
  v9 = a1[1];
  type metadata accessor for MedicationListItemCell(0);
  sub_228306F40(&unk_280DDC4B8, 255, type metadata accessor for MedicationListItemCell, &protocol conformance descriptor for MedicationListItemCell);
  v4[9] = sub_22838FBB0();
  v4[10] = v10;
  v4[4] = a4;
  sub_228390890();
  v11 = a4;
  sub_228390880();
  v12 = sub_228390820();

  v4[5] = v12;
  v4[2] = v8;
  v4[3] = v9;
  v4[7] = a3;
  v4[8] = a2;
  sub_228390880();
  v13 = sub_228390840();

  v4[6] = v13;
  return v4;
}

uint64_t MedicationListItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t MedicationListItem.uniqueIdentifier.getter()
{
  v3 = *(v0 + 72);

  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  v1 = MedicationListViewData.id.getter();
  MEMORY[0x22AAB5C80](v1);

  return v3;
}

uint64_t MedicationListItem.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t MedicationListItem.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_228305EAC()
{
  v1 = *(*v0 + 72);

  return v1;
}

id sub_228305EE0@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  *a1 = v5;
  a1[1] = v2;
  v3 = v2;

  return v5;
}

id sub_228305F24()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

void sub_228305F74(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  swift_allocObject();
  v6 = sub_228306E4C(a1, a2);

  *a3 = v6;
}

uint64_t sub_228305FD0()
{
  v3 = *(*v0 + 72);

  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  v1 = MedicationListViewData.id.getter();
  MEMORY[0x22AAB5C80](v1);

  return v3;
}

uint64_t sub_22830603C(uint64_t a1, uint64_t a2)
{
  v3 = sub_228306F40(&qword_280DDC6B8, a2, type metadata accessor for MedicationListItem, &protocol conformance descriptor for MedicationListItem);

  return MEMORY[0x282169440](a1, v3);
}

uint64_t MedicationListItem.hash(into:)(uint64_t a1)
{
  MedicationListViewData.id.getter();
  sub_2283920B0();
}

uint64_t MedicationListItem.hashValue.getter()
{
  sub_228393520();
  MedicationListViewData.id.getter();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_228306188()
{
  sub_228393520();
  MedicationListViewData.id.getter();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_2283061F4(uint64_t a1)
{
  MedicationListViewData.id.getter();
  sub_2283920B0();
}

uint64_t sub_22830625C(uint64_t a1)
{
  sub_228393520();
  MedicationListViewData.id.getter();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t _s19HealthMedicationsUI18MedicationCellItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a1 + 48);
  v13 = *(a2 + 56);
  v14 = *(a1 + 56);
  if ((sub_228303A58(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  if ((sub_228392C60() & 1) == 0)
  {
    return 0;
  }

  if ((v2 != v6 || v3 != v7) && (sub_228393460() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v8 || v5 != v9) && (sub_228393460() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v14)
  {
    if (v13 && (v12 == v11 && v14 == v13 || (sub_228393460() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v13)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_228306458()
{
  result = qword_280DDBA58;
  if (!qword_280DDBA58)
  {
    sub_22817A958(255, &unk_280DDBA68, 0x277D11570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBA58);
  }

  return result;
}

uint64_t _s19HealthMedicationsUI22MedicationListViewDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  if (sub_228392C60())
  {
    if (v2)
    {
      if (v3)
      {
        sub_22817A958(0, &unk_280DDBA68, 0x277D11570);
        v4 = v3;
        v5 = v2;
        v6 = sub_228392C60();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s19HealthMedicationsUI18MedicationListItemC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_228390D50();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228228644(0);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283074B4(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v52 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v56 = &v51 - v16;
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  v59 = v18;
  v60 = v17;
  v19 = MedicationListViewData.id.getter();
  v21 = v20;
  v23 = *(a2 + 16);
  v22 = *(a2 + 24);
  v57 = v23;
  v58 = v22;
  if (v19 == MedicationListViewData.id.getter() && v21 == v24)
  {
  }

  else
  {
    v25 = sub_228393460();

    if ((v25 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v51 = v6;
  v59 = v18;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v26 = sub_228390F20();
  v28 = v27;
  v59 = v23;
  if (v26 == sub_228390F20() && v28 == v29)
  {
  }

  else
  {
    v30 = sub_228393460();

    if ((v30 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v31 = *(a1 + 24);
  v59 = *(a1 + 16);
  v60 = v31;
  v32 = MedicationListViewData.items.getter();
  v34 = *(a2 + 16);
  v33 = *(a2 + 24);
  v57 = v34;
  v58 = v33;
  v35 = MedicationListViewData.items.getter();
  v36 = sub_2282103D0(v32, v35);

  if ((v36 & 1) == 0)
  {
    goto LABEL_16;
  }

  v37 = v56;
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
  v38 = v37;
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
  v39 = *(v53 + 48);
  sub_2281BF64C(v38, v9);
  sub_2281BF64C(v15, &v9[v39]);
  v41 = v54;
  v40 = v55;
  v42 = *(v54 + 48);
  if (v42(v9, 1, v55) != 1)
  {
    v43 = v52;
    sub_2281BF64C(v9, v52);
    if (v42(&v9[v39], 1, v40) == 1)
    {
      sub_2281A9A08(v15);
      sub_2281A9A08(v56);
      (*(v41 + 8))(v43, v40);
      goto LABEL_15;
    }

    v46 = v51;
    (*(v41 + 32))(v51, &v9[v39], v40);
    sub_228306F40(&qword_27D8257B8, 255, MEMORY[0x277D116C8], MEMORY[0x277D116D0]);
    v47 = sub_228391FB0();
    v48 = *(v41 + 8);
    v48(v46, v40);
    sub_2281A9A08(v15);
    sub_2281A9A08(v56);
    v48(v43, v40);
    sub_2281A9A08(v9);
    if (v47)
    {
      goto LABEL_19;
    }

LABEL_16:
    v44 = 0;
    return v44 & 1;
  }

  sub_2281A9A08(v15);
  sub_2281A9A08(v38);
  if (v42(&v9[v39], 1, v40) != 1)
  {
LABEL_15:
    sub_228307518(v9);
    goto LABEL_16;
  }

  sub_2281A9A08(v9);
LABEL_19:
  v44 = (v31 | v33) == 0;
  if (v31 && v33)
  {
    sub_22817A958(0, &unk_280DDBA68, 0x277D11570);
    v49 = v33;
    v50 = v31;
    v44 = sub_228392C60();
  }

  return v44 & 1;
}

void sub_228306ADC(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v2 + 32);
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = type metadata accessor for MedicationConceptDetailViewController(0);
  v7 = objc_allocWithZone(v6);
  v8 = &v7[qword_27D824AB0];
  v26 = sub_228392000();
  v27 = v9;
  v10 = v3;
  v11 = v4;

  MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283AA520);

  v12 = v27;
  *v8 = v26;
  v8[1] = v12;
  *&v7[qword_27D824AB8] = 0;
  *&v7[qword_27D824AC0] = 0;
  *&v7[qword_27D824AC8] = 0;
  *&v7[qword_27D824A90] = v10;
  *&v7[qword_27D824A98] = v5;
  *&v7[qword_27D824AA0] = v11;
  v13 = v10;
  v14 = v11;

  v15 = [v13 localizedOntologyEducationContent];
  if (v15)
  {
    v26 = v15;
    v16 = v15;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA70();
    v18 = v17;

    if (v18)
    {
    }
  }

  v19 = [v13 localizedOntologyEducationContent];
  if (v19)
  {
    v26 = v19;
    v20 = v19;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA90();
    v22 = v21;

    if (v22)
    {
    }
  }

  sub_228391020();
  swift_allocObject();
  *&v7[qword_27D824AA8] = sub_228390FF0();
  v25.receiver = v7;
  v25.super_class = v6;
  v23 = objc_msgSendSuper2(&v25, sel_initWithCollectionViewLayout_, 0);
  (*((*MEMORY[0x277D85000] & *v23) + class metadata base offset for MedicationConceptDetailViewController + 224))(v13);

  [a1 showViewController:v23 sender:v2];
}

unint64_t sub_228306E00(uint64_t a1, uint64_t a2)
{
  v2 = sub_228393390();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void *sub_228306E4C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for MedicationListItemCell(0);
  sub_228306F40(&unk_280DDC4B8, 255, type metadata accessor for MedicationListItemCell, &protocol conformance descriptor for MedicationListItemCell);
  v2[9] = sub_22838FBB0();
  v2[10] = v6;
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = a2;
  sub_228390890();
  v7 = a2;
  sub_228390880();
  v8 = sub_228390820();

  v2[5] = v8;
  v2[7] = MEMORY[0x277D84F90];
  v2[8] = 0;
  sub_228390880();
  v9 = sub_228390840();

  v2[6] = v9;
  return v2;
}

uint64_t sub_228306F40(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_228306F8C()
{
  result = qword_27D827938;
  if (!qword_27D827938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827938);
  }

  return result;
}

unint64_t sub_228306FE4()
{
  result = qword_27D827940;
  if (!qword_27D827940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827940);
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

uint64_t sub_228307190(uint64_t a1, int a2)
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

uint64_t sub_2283071D8(uint64_t result, int a2, int a3)
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

uint64_t sub_228307238(uint64_t *a1, int a2)
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

uint64_t sub_228307280(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MedicationCellItem.ItemKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MedicationCellItem.ItemKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_228307460()
{
  result = qword_27D827950;
  if (!qword_27D827950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827950);
  }

  return result;
}

void sub_2283074B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_228307518(uint64_t a1)
{
  sub_228228644(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228307574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for MedicationCellItem);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id InteractionFactorsInfoViewController.__allocating_init()()
{
  v2.receiver = objc_allocWithZone(v0);
  v2.super_class = v0;
  return objc_msgSendSuper2(&v2, sel_initWithCollectionViewLayout_, 0);
}

id InteractionFactorsInfoViewController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionFactorsInfoViewController(0);
  return objc_msgSendSuper2(&v2, sel_initWithCollectionViewLayout_, 0);
}

uint64_t type metadata accessor for InteractionFactorsInfoViewController(uint64_t a1)
{
  result = qword_27D827960;
  if (!qword_27D827960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2283076F0()
{
  v1 = type metadata accessor for InteractionFactorsInfoDataSourceProvider();
  v2 = swift_allocObject();
  v9 = v1;
  v10 = sub_228307870();
  v8 = v2;
  sub_2283904B0();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v3 = sub_228391FC0();

  [v0 setTitle_];

  v4 = [v0 navigationItem];
  v5 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_doneButtonTapped_];
  [v4 setRightBarButtonItem_];

  v7.receiver = v0;
  v7.super_class = type metadata accessor for InteractionFactorsInfoViewController(0);
  return objc_msgSendSuper2(&v7, sel_viewDidLoad);
}

unint64_t sub_228307870()
{
  result = qword_27D827958;
  if (!qword_27D827958)
  {
    type metadata accessor for InteractionFactorsInfoDataSourceProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827958);
  }

  return result;
}

void sub_2283078C8(void *a1)
{
  v1 = a1;
  sub_2283076F0();
}

void sub_228307910(void *a1, uint64_t a2)
{
  v3 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v3 animated:1];

  v4 = sub_22838F710();
  v5 = [a1 cellForItemAtIndexPath_];

  if (v5)
  {
    sub_228390470();
    sub_2283901F0();
    sub_22838FD60();

    sub_228180FB0(v12, v9);
    sub_22818217C(0, &qword_27D827E00, MEMORY[0x277D10D40], 1);
    sub_22818217C(0, &qword_27D8243E0, MEMORY[0x277D10F68], 1);
    if (swift_dynamicCast())
    {
      v6 = v7;
LABEL_6:
      sub_22816DFFC(v6, v11);
      __swift_project_boxed_opaque_existential_0(v11, v11[3]);
      sub_22838FE30();

      __swift_destroy_boxed_opaque_existential_0(v12);
      __swift_destroy_boxed_opaque_existential_0(v11);
      return;
    }

    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_2281AC828(v7, &qword_27D827780, &qword_27D8243E0, MEMORY[0x277D10F68]);
    *&v7[0] = v5;
    sub_2281ED1D8();
    v5 = v5;
    if (swift_dynamicCast())
    {
      v6 = v9;
      goto LABEL_6;
    }

    v10 = 0;
    memset(v9, 0, sizeof(v9));
    __swift_destroy_boxed_opaque_existential_0(v12);
    sub_2281AC828(v9, &qword_27D827780, &qword_27D8243E0, MEMORY[0x277D10F68]);
  }
}

uint64_t sub_228307B34(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_22838F760();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_228307910(v10, v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_228307C30(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_228392F90();
  swift_unknownObjectRelease();
  [v4 dismissViewControllerAnimated:1 completion:0];

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

id InteractionFactorsInfoViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id InteractionFactorsInfoViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionFactorsInfoViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t NetworkStateObserver.$connectionState.getter()
{
  swift_beginAccess();
  sub_2283087E4(0, &qword_27D823B40, MEMORY[0x277CBCED0]);
  sub_228391930();
  return swift_endAccess();
}

uint64_t NetworkStateObserver.ConnectionStatus.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t NetworkStateObserver.connectionState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();
}

uint64_t sub_228307FC0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  *a2 = v4;
  return result;
}

uint64_t sub_228308040(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t sub_2283080B4(void *a1)
{
  swift_beginAccess();
  sub_2283087E4(0, &qword_27D823B40, MEMORY[0x277CBCED0]);
  sub_228391930();
  return swift_endAccess();
}

uint64_t sub_22830813C(char *a1, uint64_t *a2)
{
  sub_2283087E4(0, &qword_27D823B08, MEMORY[0x277CBCEC0]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = *(v5 + 16);
  v11(&v13 - v9, a1, v4);
  v11(v8, v10, v4);
  swift_beginAccess();
  sub_2283087E4(0, &qword_27D823B40, MEMORY[0x277CBCED0]);
  sub_228391940();
  swift_endAccess();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_2283082E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_228391B60();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228391B70();
    (*(v3 + 104))(v6, *MEMORY[0x277CD8F78], v2);
    v10 = sub_228391B50();
    v11 = *(v3 + 8);
    v11(v6, v2);
    v11(v8, v2);
    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v13[7] = v12;
    return sub_228391970();
  }

  return result;
}

uint64_t NetworkStateObserver.deinit()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_228391970();

  sub_228391B20();

  v2 = OBJC_IVAR____TtC19HealthMedicationsUI20NetworkStateObserver__connectionState;
  sub_2283087E4(0, &qword_27D823B40, MEMORY[0x277CBCED0]);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return v1;
}

uint64_t NetworkStateObserver.__deallocating_deinit()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_228391970();

  sub_228391B20();

  v2 = OBJC_IVAR____TtC19HealthMedicationsUI20NetworkStateObserver__connectionState;
  sub_2283087E4(0, &qword_27D823B40, MEMORY[0x277CBCED0]);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkStateObserver(uint64_t a1)
{
  result = qword_27D827980;
  if (!qword_27D827980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228308704(uint64_t a1)
{
  sub_2283087E4(319, &qword_27D823B40, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2283087E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for NetworkStateObserver.ConnectionStatus);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22830884C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2283088F8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2283089A0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x22AAB6D80](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_2283930D0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void ListConceptManager.toggleMedicationPinState(for:onCommitHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_228206298(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228390670();
  v9 = sub_2283906D0();
  v17 = a1;
  v16 = &v17;
  v10 = sub_2283089A0(sub_228309338, v15, v9);

  if ((v10 & 1) == 0)
  {
    v11 = sub_2283922D0();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v4;
    v12[5] = a1;

    v13 = a1;
    sub_2281DC568(0, 0, v8, &unk_2283A3AA0, v12);

    v14 = [objc_opt_self() sharedInstance];
    [v14 removeMedication_];
  }
}

uint64_t sub_228308CAC()
{
  v1 = [*(v0 + 16) semanticIdentifier];
  v2 = [v1 stringValue];

  v3 = sub_228392000();
  v5 = v4;

  *(v0 + 24) = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_228308D98;

  return sub_22830953C(v3, v5);
}

uint64_t sub_228308D98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ListConceptManager.toggleMedicationPinState(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_228308EC8, 0, 0);
}

uint64_t sub_228308EC8()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_228308FBC;
  v3 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](&v0[3], 0, 0, 0xD00000000000001ELL, 0x80000002283B39E0, sub_228309460, v1, v3);
}

uint64_t sub_228308FBC()
{

  return MEMORY[0x2822009F8](sub_2283090D4, 0, 0);
}

uint64_t sub_2283090EC(uint64_t a1, uint64_t a2, void *a3)
{
  v16[1] = a2;
  sub_228309468();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = sub_2283906E0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  ListConceptManager.toggleMedicationPinState(for:onCommitHandler:)(a3, sub_2283094C8, v14);

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2283093A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819D87C;

  return sub_228308C8C(a1, v4, v5, v7, v6);
}

void sub_228309468()
{
  if (!qword_27D827990)
  {
    v0 = sub_228392270();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827990);
    }
  }
}

uint64_t sub_22830953C(uint64_t a1, uint64_t a2)
{
  v2[36] = a1;
  v2[37] = a2;
  v3 = sub_2283911B0();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2283095FC, 0, 0);
}

uint64_t sub_2283095FC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277D11578]) initWithHealthStore_];
  v0[41] = v2;

  v3 = sub_228391FC0();
  v0[42] = v3;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_228309778;
  v4 = swift_continuation_init();
  sub_2281BC3FC(0);
  v0[25] = v5;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_2281B1080;
  v0[21] = &block_descriptor_23;
  v0[22] = v4;
  [v2 fetchScheduleWithMedicationIdentifier:v3 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_228309778()
{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_228309B74;
  }

  else
  {
    v2 = sub_228309888;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228309888()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 272);
  *(v0 + 352) = v2;

  if (v2)
  {
    v3 = *(v0 + 328);
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_2283099F4;
    v4 = swift_continuation_init();
    sub_2281E0600(0);
    *(v0 + 264) = v5;
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_2282B4368;
    *(v0 + 232) = &block_descriptor_9;
    *(v0 + 240) = v4;
    [v3 deleteSchedule:v2 completion:v0 + 208];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2283099F4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 360) = v1;
  if (v1)
  {
    v2 = sub_228309DA0;
  }

  else
  {
    v2 = sub_228309B04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228309B04()
{
  v1 = *(v0 + 352);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_228309B74(uint64_t a1)
{
  v25 = v1;
  v2 = *(v1 + 336);
  swift_willThrow();

  v3 = *(v1 + 344);
  sub_228391150();

  v4 = v3;
  v5 = sub_2283911A0();
  v6 = sub_2283925C0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 328);
    v8 = *(v1 + 312);
    v22 = *(v1 + 304);
    v23 = *(v1 + 320);
    v10 = *(v1 + 288);
    v9 = *(v1 + 296);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24[0] = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_2281C96FC(v10, v9, v24);
    *(v11 + 12) = 2082;
    *(v1 + 280) = v3;
    v13 = v3;
    sub_228192C1C();
    v14 = sub_228392040();
    v16 = sub_2281C96FC(v14, v15, v24);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_22816B000, v5, v6, "Could not delete schedule after archiving medication %{public}s error %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v12, -1, -1);
    MEMORY[0x22AAB7B80](v11, -1, -1);

    (*(v8 + 8))(v23, v22);
  }

  else
  {
    v17 = *(v1 + 320);
    v18 = *(v1 + 304);
    v19 = *(v1 + 312);

    (*(v19 + 8))(v17, v18);
  }

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_228309DA0(uint64_t a1)
{
  v25 = v1;
  v2 = *(v1 + 352);
  swift_willThrow();

  v3 = *(v1 + 360);
  sub_228391150();

  v4 = v3;
  v5 = sub_2283911A0();
  v6 = sub_2283925C0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 328);
    v8 = *(v1 + 312);
    v22 = *(v1 + 304);
    v23 = *(v1 + 320);
    v10 = *(v1 + 288);
    v9 = *(v1 + 296);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24[0] = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_2281C96FC(v10, v9, v24);
    *(v11 + 12) = 2082;
    *(v1 + 280) = v3;
    v13 = v3;
    sub_228192C1C();
    v14 = sub_228392040();
    v16 = sub_2281C96FC(v14, v15, v24);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_22816B000, v5, v6, "Could not delete schedule after archiving medication %{public}s error %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v12, -1, -1);
    MEMORY[0x22AAB7B80](v11, -1, -1);

    (*(v8 + 8))(v23, v22);
  }

  else
  {
    v17 = *(v1 + 320);
    v18 = *(v1 + 304);
    v19 = *(v1 + 312);

    (*(v19 + 8))(v17, v18);
  }

  v20 = *(v1 + 8);

  return v20();
}

id sub_22830A030(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) initWithHealthStore_];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t OptionsDataSource.__allocating_init(with:listManager:healthStore:analyticsManager:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_228391150();
  v9 = (v8 + qword_27D8279A0);
  *v9 = 0xD000000000000020;
  v9[1] = 0x80000002283B3A00;
  *(v8 + qword_27D8279A8) = 0;
  *(v8 + qword_27D8279B0) = 0;
  *(v8 + qword_27D8279B8) = 0;
  *(v8 + qword_27D8279C0) = a2;
  *(v8 + qword_27D8279C8) = a1;
  *(v8 + qword_27D8279D0) = a3;
  *(v8 + qword_27D8279D8) = a4;
  sub_22830ED24(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = xmmword_228398270;

  v10 = a3;

  sub_22838FED0();
  sub_22838FED0();
  sub_22838FED0();
  v11 = sub_22838F920();

  sub_22830A5B0(v12);
  sub_22830A824();

  return v11;
}

uint64_t OptionsDataSource.init(with:listManager:healthStore:analyticsManager:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_228391150();
  v9 = (v4 + qword_27D8279A0);
  *v9 = 0xD000000000000020;
  v9[1] = 0x80000002283B3A00;
  *(v4 + qword_27D8279A8) = 0;
  *(v4 + qword_27D8279B0) = 0;
  *(v4 + qword_27D8279B8) = 0;
  *(v4 + qword_27D8279C0) = a2;
  *(v4 + qword_27D8279C8) = a1;
  *(v4 + qword_27D8279D0) = a3;
  *(v4 + qword_27D8279D8) = a4;
  sub_22830ED24(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = xmmword_228398270;

  v10 = a3;

  sub_22838FED0();
  sub_22838FED0();
  sub_22838FED0();
  v11 = sub_22838F920();

  sub_22830A5B0(v12);
  sub_22830A824();

  return v11;
}

uint64_t sub_22830A5B0(uint64_t a1)
{
  sub_22838F910();
  sub_22838FCD0();

  v1 = sub_22830B158();
  sub_228195594(v1);

  sub_22838FF60();

  sub_22838F910();
  sub_22838FCD0();

  sub_22830EC90(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F40;
  v3 = sub_228390660();
  sub_228391870();
  v4 = v15;
  v14 = v15;
  v13 = &v14;
  v5 = sub_228309FEC(sub_22830F564, v12, v3);

  v6 = sub_228390170();
  *(v2 + 56) = v6;
  v7 = sub_22830F45C(&qword_27D823AB0, MEMORY[0x277D11000], MEMORY[0x277D10FF0]);
  *(v2 + 64) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  sub_22830BFEC(v5 & 1, boxed_opaque_existential_1);
  sub_22838FF60();

  sub_22838F910();
  sub_22838FCD0();

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228397F40;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  v10 = __swift_allocate_boxed_opaque_existential_1((v9 + 32));
  sub_22830C660(v10);
  sub_22838FF60();
}

uint64_t sub_22830A824()
{
  sub_22830ED24(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v44 = &v34 - v2;
  sub_22830EE80(0);
  v34 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22830F104(0);
  v8 = *(v7 - 8);
  v35 = v7;
  v36 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22830F258(0);
  v12 = *(v11 - 8);
  v37 = v11;
  v38 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22830F2F4(0);
  v16 = *(v15 - 8);
  v40 = v15;
  v41 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22830F388(0);
  v20 = *(v19 - 8);
  v42 = v19;
  v43 = v20;
  MEMORY[0x28223BE20](v19);
  v39 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v0 + qword_27D8279C8);
  sub_228180ED0();
  *(swift_allocObject() + 16) = xmmword_228396260;

  sub_228391870();
  sub_2281A65B4(0);
  sub_22830F45C(&qword_27D8241C0, sub_2281A65B4, MEMORY[0x277CBCE48]);
  sub_228391A60();

  v22 = v0;
  v45 = sub_2283906C0();
  sub_22830F1F0(0);
  sub_22830F45C(&qword_27D827A20, sub_22830EE80, MEMORY[0x277CBCB40]);
  sub_22830F45C(&qword_27D827D00, sub_22830F1F0, MEMORY[0x277CBCD90]);
  v23 = v34;
  sub_2283919E0();

  (*(v4 + 8))(v6, v23);
  sub_22830F45C(&qword_27D827A30, sub_22830F104, MEMORY[0x277CBCAF0]);
  v24 = v35;
  sub_2283919F0();
  (*(v36 + 8))(v10, v24);
  sub_22830F45C(&qword_27D827A40, sub_22830F258, MEMORY[0x277CBCC08]);
  v25 = v37;
  sub_228391AA0();
  (*(v38 + 8))(v14, v25);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v26 = sub_228392790();
  v45 = v26;
  v27 = sub_228392730();
  v28 = v44;
  (*(*(v27 - 8) + 56))(v44, 1, 1, v27);
  sub_22830F45C(&qword_27D827A50, sub_22830F2F4, MEMORY[0x277CBCBE0]);
  sub_2281A1504();
  v29 = v39;
  v30 = v40;
  sub_228391A70();
  sub_2281A16F0(v28);

  (*(v41 + 8))(v18, v30);
  swift_allocObject();
  swift_weakInit();
  sub_22830F45C(&qword_27D827A58, sub_22830F388, MEMORY[0x277CBCD60]);
  v31 = v42;
  v32 = sub_228391AC0();

  (*(v43 + 8))(v29, v31);
  *(v22 + qword_27D8279B8) = v32;
}

uint64_t sub_22830AF64@<X0>(_BYTE *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  sub_22830F4A4(0);
  v4 = sub_2283906D0();
  v8 = v3;
  v7[2] = &v8;
  v5 = sub_228309FEC(sub_22830F524, v7, v4);

  *a1 = v5 & 1;
  return result;
}

uint64_t sub_22830AFF8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_22838F910();

    sub_22838FCD0();

    sub_22830EC90(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_228397F40;
    *(v4 + 56) = sub_228390170();
    *(v4 + 64) = sub_22830F45C(&qword_27D823AB0, MEMORY[0x277D11000], MEMORY[0x277D10FF0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
    sub_22830BFEC(v2, boxed_opaque_existential_1);
    sub_22838FF60();
  }

  return result;
}

uint64_t sub_22830B158()
{
  v111 = sub_228390460();
  v103 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v100 = v64 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = MEMORY[0x277D83D88];
  sub_22830ED24(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v97 = v64 - v3;
  v110 = sub_22838FFC0();
  v113 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v106 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22830ED24(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v1);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v64 - v6;
  v8 = sub_2283912A0();
  v112 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v98 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_228391220();
  v10 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_228390170();
  v101 = *(v13 - 8);
  v102 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v99 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v109 = v64 - v16;
  v17 = sub_228391590();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391580();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v85 = qword_280DDCF20;
  v84 = *algn_280DDCF28;
  v83 = qword_280DDCF30;
  sub_22838F0C0();
  v105 = v20;
  sub_228391540();
  v118 = v17;
  v119 = MEMORY[0x277D74C30];
  v104 = v17;
  v21 = __swift_allocate_boxed_opaque_existential_1(&v116);
  v22 = *(v18 + 16);
  v93 = v18 + 16;
  v94 = v22;
  v22(v21, v20, v17);
  v96 = MEMORY[0x277D84560];
  sub_22830ED24(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  v91 = v23;
  v24 = *(sub_2283912F0() - 8);
  v92 = *(v24 + 72);
  v90 = *(v24 + 80);
  v73 = (v90 + 32) & ~v90;
  v25 = swift_allocObject();
  v89 = xmmword_228397F40;
  *(v25 + 16) = xmmword_228397F40;
  v64[1] = v25;
  v88 = *MEMORY[0x277D74A98];
  v26 = *(v10 + 104);
  v86 = v10 + 104;
  v87 = v26;
  v27 = v108;
  v26(v12);
  v81 = sub_228391230();
  v28 = *(v81 - 8);
  v80 = *(v28 + 56);
  v82 = v28 + 56;
  v66 = v7;
  v80(v7, 1, 1, v81);
  v29 = v98;
  sub_228391290();
  sub_228391260();
  v30 = *(v112 + 8);
  v112 += 8;
  v79 = v30;
  v30(v29, v8);
  v31 = *(v10 + 8);
  v77 = v10 + 8;
  v78 = v31;
  v31(v12, v27);
  v32 = swift_allocObject();
  v74 = v8;
  v33 = v32;
  v34 = v107;
  swift_weakInit();
  v35 = *(v34 + qword_27D8279C8);
  v36 = swift_allocObject();
  v95 = v18;
  *(v36 + 16) = v33;
  *(v36 + 24) = v35;
  v67 = v35;
  v37 = v106;
  *v106 = 1;
  v76 = *MEMORY[0x277D10F90];
  v38 = *(v113 + 104);
  v113 += 104;
  v75 = v38;
  v38(v37);
  v71 = sub_2283913A0();
  v39 = *(v71 - 8);
  v70 = *(v39 + 56);
  v72 = v39 + 56;
  v40 = v97;
  v70(v97, 1, 1, v71);
  v41 = *(v34 + qword_27D8279A0 + 8);
  v69 = *(v34 + qword_27D8279A0);
  v114 = v69;
  v115 = v41;
  v65 = v41;

  MEMORY[0x22AAB5C80](0xD000000000000013, 0x80000002283B3CA0);
  v68 = *MEMORY[0x277D11140];
  v103 = *(v103 + 104);
  v42 = v100;
  (v103)(v100);
  sub_228390160();

  sub_22838F0C0();
  v43 = v105;
  sub_228391540();
  v116 = 0;
  v117 = 0xE000000000000000;
  sub_2283931D0();

  v116 = 0xD000000000000010;
  v117 = 0x80000002283B3CC0;
  v44 = v43;
  v45 = sub_228391530();
  if (v46)
  {
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0xE000000000000000;
  }

  MEMORY[0x22AAB5C80](v45, v47);

  v85 = v116;
  v84 = v117;
  v48 = v104;
  v118 = v104;
  v119 = MEMORY[0x277D74C30];
  v49 = __swift_allocate_boxed_opaque_existential_1(&v116);
  v94(v49, v44, v48);
  *(swift_allocObject() + 16) = v89;
  v50 = v108;
  v87(v12, v88, v108);
  v80(v66, 1, 1, v81);
  sub_228391290();
  sub_228391260();
  v79(v29, v74);
  v78(v12, v50);
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  v53 = v67;
  *(v52 + 16) = v51;
  *(v52 + 24) = v53;
  v54 = v106;
  *v106 = 1;
  v75(v54, v76, v110);
  v70(v40, 1, 1, v71);
  v114 = v69;
  v115 = v65;

  MEMORY[0x22AAB5C80](0xD00000000000001BLL, 0x80000002283B3CE0);
  (v103)(v42, v68, v111);
  v55 = v99;
  sub_228390160();

  sub_22830ED24(0, &qword_27D824800, MEMORY[0x277D11000], v96);
  v56 = v101;
  v57 = *(v101 + 72);
  v58 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_228397F30;
  v60 = v59 + v58;
  v61 = v109;
  v62 = v102;
  (*(v56 + 16))(v60, v109, v102);
  (*(v56 + 32))(v60 + v57, v55, v62);
  (*(v56 + 8))(v61, v62);
  (*(v95 + 8))(v105, v104);
  return v59;
}

void sub_22830BF18(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_228391870();
    v5 = *(v4 + qword_27D8279D0);
    v6 = objc_allocWithZone(type metadata accessor for MedicationSourceListViewController(0));
    v7 = v5;
    v8 = v10;
    v9 = sub_22822F190(v7, v8);
    [a1 showAdaptively:v9 sender:a1];
  }
}

uint64_t sub_22830BFEC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v25[1] = a1;
  v31 = a2;
  v2 = sub_228390460();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v28 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22830ED24(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v27 = v25 - v5;
  v6 = sub_22838FFC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228391590();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391580();
  v14 = [objc_opt_self() tintColor];
  v15 = sub_228391450();
  sub_228391420();
  v15(v34, 0);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();

  sub_228391540();
  v34[3] = v10;
  v34[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  (*(v11 + 16))(boxed_opaque_existential_1, v13, v10);
  v17 = swift_allocObject();
  v18 = v26;
  swift_weakInit();
  v19 = *(v18 + qword_27D8279C8);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  *v9 = 1;
  (*(v7 + 104))(v9, *MEMORY[0x277D10F90], v6);
  v21 = sub_2283913A0();
  (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  v22 = *(v18 + qword_27D8279A0);
  v23 = *(v18 + qword_27D8279A0 + 8);
  v32 = v22;
  v33 = v23;

  MEMORY[0x22AAB5C80](0x657669686372412ELL, 0xEF6E6F747475422ELL);
  (*(v29 + 104))(v28, *MEMORY[0x277D11140], v30);
  sub_228390160();
  (*(v11 + 8))(v13, v10);
}

void sub_22830C51C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_228391870();
    if (sub_2283906B0())
    {
      v5 = *(v4 + qword_27D8279D8);
      v6 = swift_allocObject();
      v6[2] = v5;
      v6[3] = v4;
      v6[4] = v9;

      v7 = v9;
      v8 = _sSo17UIAlertControllerC19HealthMedicationsUIE31makeAlertForArchivingMedication9onConfirm0K6CancelAByyc_yycSgtFZ_0(sub_22830EDC0, v6, 0, 0);

      [a1 presentViewController:v8 animated:1 completion:0];
    }

    else
    {
      sub_22830DDBC(v9);
    }
  }
}

uint64_t sub_22830C660@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_228390460();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x28223BE20](v1);
  v26 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22830ED24(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = v24 - v4;
  v5 = sub_22838FFC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391580();
  v13 = [objc_opt_self() systemRedColor];
  v14 = sub_228391450();
  sub_228391420();
  v14(v32, 0);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391540();
  v32[3] = v9;
  v32[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(v10 + 16))(boxed_opaque_existential_1, v12, v9);
  v16 = swift_allocObject();
  v17 = v24[1];
  swift_weakInit();
  v18 = *(v17 + qword_27D8279C8);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;
  *v8 = 1;
  (*(v6 + 104))(v8, *MEMORY[0x277D10F90], v5);
  v20 = sub_2283913A0();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  v21 = *(v17 + qword_27D8279A0);
  v22 = *(v17 + qword_27D8279A0 + 8);
  v30 = v21;
  v31 = v22;

  MEMORY[0x22AAB5C80](0xD000000000000018, 0x80000002283B3C10);
  (*(v27 + 104))(v26, *MEMORY[0x277D11140], v28);
  sub_228390160();
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_22830CB4C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228391870();
    a4(v7, a1);
  }

  return result;
}

uint64_t sub_22830CBE0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2283900D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    sub_228390040();
  }

  else
  {
    sub_228390010();
  }

  v7 = sub_228390090();
  *(v8 + 16) = 0x4024000000000000;
  v7(v11, 0);
  v9 = sub_2283900C0();
  (*(v4 + 8))(v6, v3);
  return v9;
}

void sub_22830CCFC(void *a1, void *a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedInstanceForHealthStore_];
  v7 = [v6 profile];

  v8 = [v7 displayTypeController];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() medicationDoseEventType];
    v11 = [v9 displayTypeForObjectType_];

    if (v11)
    {
      v12 = type metadata accessor for MedicationListAllDataProvider();
      v13 = objc_allocWithZone(v12);
      v14 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate;
      *&v13[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate] = 0;
      *&v13[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_medication] = a1;
      *&v13[v14] = 0;
      v19.receiver = v13;
      v19.super_class = v12;
      v15 = a1;
      v16 = objc_msgSendSuper2(&v19, sel_initWithDisplayType_profile_, v11, v7);
      v17 = [objc_allocWithZone(MEMORY[0x277D12540]) initWithDisplayType:v11 profile:v7 dataProvider:v16 usingInsetStyling:1];
      [a2 showAdaptively:v17 sender:a2];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  sub_2283931D0();
  v18 = sub_228393600();
  MEMORY[0x22AAB5C80](v18);

  MEMORY[0x22AAB5C80](0xD000000000000039, 0x80000002283B3BB0);
  sub_228393300();
  __break(1u);
}

void sub_22830CF70(void *a1, void *a2)
{
  v3 = v2;
  v22 = *v2;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22830EC90(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228397F40;
  aBlock = a1;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v6 = sub_228390F20();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_22818E210();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_22838F0C0();
  if (*(v5 + 16))
  {
    sub_228391FD0();
  }

  sub_22838F0C0();
  v9 = sub_228391FC0();

  v10 = sub_228391FC0();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:{1, 0xE000000000000000}];

  sub_22838F0C0();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v3;
  v12[4] = a2;
  v12[5] = v22;
  v13 = a1;

  v23 = a2;
  v14 = sub_228391FC0();

  v28 = sub_22830ECF8;
  v29 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_228281980;
  v27 = &block_descriptor_9_0;
  v15 = _Block_copy(&aBlock);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:2 handler:{v15, 0xE000000000000000}];
  _Block_release(v15);

  [v11 addAction_];
  sub_22838F0C0();
  v18 = sub_228391FC0();

  v28 = nullsub_1;
  v29 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_228281980;
  v27 = &block_descriptor_12_1;
  v19 = _Block_copy(&aBlock);

  v20 = [v16 actionWithTitle:v18 style:1 handler:{v19, 0xE000000000000000}];
  _Block_release(v19);

  [v11 addAction_];
  [v23 presentViewController:v11 animated:1 completion:0];
}

void sub_22830D46C(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_2283911B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391190();
  v13 = a2;
  v14 = sub_2283911A0();
  v15 = sub_2283925C0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v39 = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315394;
    v19 = sub_228393600();
    v38 = a5;
    v21 = sub_2281C96FC(v19, v20, aBlock);
    v37 = a3;
    v22 = v21;

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = [v13 semanticIdentifier];
    v24 = [v23 stringValue];

    v25 = sub_228392000();
    v36 = v9;
    v27 = v26;

    a5 = v38;
    v28 = sub_2281C96FC(v25, v27, aBlock);

    *(v17 + 14) = v28;
    a3 = v37;
    _os_log_impl(&dword_22816B000, v14, v15, "[%s] Attempting to delete medication with semantic identifier %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v18, -1, -1);
    v29 = v17;
    a4 = v39;
    MEMORY[0x22AAB7B80](v29, -1, -1);

    (*(v10 + 8))(v12, v36);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v30 = sub_22830A008();
  v31 = *(a3 + qword_27D8279D8);
  v32 = swift_allocObject();
  v32[2] = v13;
  v32[3] = a4;
  v32[4] = v31;
  v32[5] = a5;
  aBlock[4] = sub_22830ED04;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2283282E4;
  aBlock[3] = &block_descriptor_18_0;
  v33 = _Block_copy(aBlock);
  v34 = v13;

  v35 = a4;

  [v30 deleteUserDomainConcept:v34 completion:v33];
  _Block_release(v33);
}

uint64_t sub_22830D7BC(char a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v11 = sub_228391DC0();
  v27 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_228391DF0();
  v14 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v25 = sub_228392790();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a2;
  *(v17 + 56) = v24;
  aBlock[4] = sub_22830ED10;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_24_1;
  v18 = _Block_copy(aBlock);
  v19 = a3;
  v20 = a4;

  v21 = a2;

  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22830F45C(&qword_280DDCF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22830ED24(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  sub_228393030();
  v22 = v25;
  MEMORY[0x22AAB6340](0, v16, v13, v18);
  _Block_release(v18);

  (*(v27 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v26);
}

uint64_t sub_22830DAE0(char a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = sub_2283911B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = [objc_opt_self() sharedInstance];
    [v14 removeMedication_];

    v15 = [a3 navigationController];
    if (v15)
    {
      v16 = v15;
    }

    return sub_228390FE0();
  }

  else
  {
    sub_228391190();
    v18 = a5;
    v19 = sub_2283911A0();
    v20 = sub_2283925C0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136315394;
      v23 = sub_228393600();
      v25 = sub_2281C96FC(v23, v24, &v31);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v30 = a5;
      v26 = a5;
      sub_22830EC90(0, &qword_27D823B00, &qword_280DDB860, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
      v27 = sub_228392020();
      v29 = sub_2281C96FC(v27, v28, &v31);

      *(v21 + 14) = v29;
      _os_log_impl(&dword_22816B000, v19, v20, "[%s] Error deleting medication %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v22, -1, -1);
      MEMORY[0x22AAB7B80](v21, -1, -1);
    }

    return (*(v11 + 8))(v13, v10);
  }
}

void sub_22830DDBC(void *a1)
{
  v3 = *v1;
  v4 = sub_2283906E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2283906B0();
  ListConceptManager.toggleMedicationPinState(for:onCommitHandler:)(a1, 0, 0);
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = [a1 firstOntologyCoding];
    if (v9)
    {

      v10 = sub_22830A01C();
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = a1;
      v12[4] = v3;
      aBlock[4] = sub_22830EC6C;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2283282E4;
      aBlock[3] = &block_descriptor_24;
      v13 = _Block_copy(aBlock);
      v14 = a1;

      [v10 deleteDismissedPregnancyLactationInteractionsForMedication:v14 interactionTypes:0 completion:v13];
      _Block_release(v13);
    }
  }
}

uint64_t sub_22830DFF4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = sub_2283911B0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  if (a2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v8 + 16))(v11, result + qword_27D827998, v7);

      v15 = a4;
      v16 = a2;
      v17 = sub_2283911A0();
      v18 = sub_2283925C0();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v49 = v46;
        *v19 = 136315906;
        v20 = sub_228393600();
        v22 = sub_2281C96FC(v20, v21, &v49);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        v47 = 0xD000000000000015;
        v48 = 0x80000002283ACED0;
        v23 = sub_228392070();
        v25 = sub_2281C96FC(v23, v24, &v49);

        *(v19 + 14) = v25;
        *(v19 + 22) = 2112;
        v26 = [v15 semanticIdentifier];
        *(v19 + 24) = v26;
        v27 = v45;
        *v45 = v26;
        *(v19 + 32) = 2080;
        v47 = a2;
        sub_22830EC90(0, &qword_27D823B00, &qword_280DDB860, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
        v28 = sub_228392EE0();
        v30 = sub_2281C96FC(v28, v29, &v49);

        *(v19 + 34) = v30;
        _os_log_impl(&dword_22816B000, v17, v18, "%s] Unexpected error deleting dismissed %s interactions for medication: %@, error: %s", v19, 0x2Au);
        sub_228193354(v27);
        MEMORY[0x22AAB7B80](v27, -1, -1);
        v31 = v46;
        swift_arrayDestroy();
        MEMORY[0x22AAB7B80](v31, -1, -1);
        MEMORY[0x22AAB7B80](v19, -1, -1);
      }

      return (*(v8 + 8))(v11, v7);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v8 + 16))(v13, result + qword_27D827998, v7);

      v32 = a4;
      v33 = sub_2283911A0();
      v34 = sub_2283925E0();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v49 = v46;
        *v35 = 136315650;
        v37 = sub_228393600();
        v39 = sub_2281C96FC(v37, v38, &v49);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2080;
        v47 = 0xD000000000000015;
        v48 = 0x80000002283ACED0;
        v40 = sub_228392070();
        v42 = sub_2281C96FC(v40, v41, &v49);

        *(v35 + 14) = v42;
        *(v35 + 22) = 2112;
        v43 = [v32 semanticIdentifier];
        *(v35 + 24) = v43;
        *v36 = v43;
        _os_log_impl(&dword_22816B000, v33, v34, "%s] Successfully deleted dismissed %s interactions for medication: %@", v35, 0x20u);
        sub_228193354(v36);
        MEMORY[0x22AAB7B80](v36, -1, -1);
        v44 = v46;
        swift_arrayDestroy();
        MEMORY[0x22AAB7B80](v44, -1, -1);
        MEMORY[0x22AAB7B80](v35, -1, -1);
      }

      return (*(v8 + 8))(v13, v7);
    }
  }

  return result;
}

uint64_t sub_22830E55C()
{
  v1 = qword_27D827998;
  v2 = sub_2283911B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t OptionsDataSource.deinit(uint64_t a1)
{
  v1 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  v2 = qword_27D827998;
  v3 = sub_2283911B0();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return v1;
}

uint64_t OptionsDataSource.__deallocating_deinit(uint64_t a1)
{
  OptionsDataSource.deinit(a1);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall OptionsDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_228390420();
  sub_2283926D0();
  sub_2283904F0();
  sub_2283926B0();
}

uint64_t sub_22830E834()
{
  sub_228390420();
  sub_2283926D0();
  sub_2283904F0();
  return sub_2283926B0();
}

uint64_t OptionsDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_228391590();
  MEMORY[0x28223BE20](v2 - 8);
  if (sub_22838F750())
  {
    a1[3] = sub_22838FC00();
    a1[4] = sub_22830F45C(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_22838FBF0();
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228391500();
    v4 = sub_22838FB60();
    swift_allocObject();
    v5 = sub_22838FB50();
    a1[3] = v4;
    result = sub_22830F45C(&qword_27D823960, MEMORY[0x277D10E18], MEMORY[0x277D10E08]);
    a1[4] = result;
    *a1 = v5;
  }

  return result;
}

uint64_t type metadata accessor for OptionsDataSource(uint64_t a1)
{
  result = qword_27D8279E8;
  if (!qword_27D8279E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22830EB20(uint64_t a1)
{
  result = sub_2283911B0();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22830EC90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2281810DC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22830ED24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22830EDC0()
{
  v1 = *(v0 + 32);
  sub_228390FE0();
  sub_22830DDBC(v1);
}

uint64_t objectdestroy_27Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22830EE80(uint64_t a1)
{
  if (!qword_27D8279F8)
  {
    sub_22830EF6C(255);
    sub_2281A65B4(255);
    sub_22830F45C(&qword_27D827A10, sub_22830EF6C, MEMORY[0x277CBCD18]);
    sub_22830F45C(&qword_27D8241C0, sub_2281A65B4, MEMORY[0x277CBCE48]);
    v1 = sub_2283916E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8279F8);
    }
  }
}

void sub_22830EF6C(uint64_t a1)
{
  if (!qword_27D827A00)
  {
    sub_22830F018(255, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8, MEMORY[0x277D83940]);
    sub_22830F080();
    v1 = sub_2283917A0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827A00);
    }
  }
}

void sub_22830F018(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22817A958(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_22830F080()
{
  result = qword_27D827A08;
  if (!qword_27D827A08)
  {
    sub_22830F018(255, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827A08);
  }

  return result;
}

void sub_22830F104(uint64_t a1)
{
  if (!qword_27D827A18)
  {
    sub_22830EE80(255);
    sub_22830F1F0(255);
    sub_22830F45C(&qword_27D827A20, sub_22830EE80, MEMORY[0x277CBCB40]);
    sub_22830F45C(&qword_27D827D00, sub_22830F1F0, MEMORY[0x277CBCD90]);
    v1 = sub_228391670();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827A18);
    }
  }
}

void sub_22830F1F0(uint64_t a1)
{
  if (!qword_27D824108)
  {
    sub_2283906E0();
    v1 = sub_2283917F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824108);
    }
  }
}

void sub_22830F258(uint64_t a1)
{
  if (!qword_27D827A28)
  {
    sub_22830F104(255);
    sub_22830F45C(&qword_27D827A30, sub_22830F104, MEMORY[0x277CBCAF0]);
    v1 = sub_228391740();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827A28);
    }
  }
}

void sub_22830F2F4(uint64_t a1)
{
  if (!qword_27D827A38)
  {
    sub_22830F258(255);
    sub_22830F45C(&qword_27D827A40, sub_22830F258, MEMORY[0x277CBCC08]);
    v1 = sub_228391730();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827A38);
    }
  }
}

void sub_22830F388(uint64_t a1)
{
  if (!qword_27D827A48)
  {
    sub_22830F2F4(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22830F45C(&qword_27D827A50, sub_22830F2F4, MEMORY[0x277CBCBE0]);
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827A48);
    }
  }
}

uint64_t sub_22830F45C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22830F4A4(uint64_t a1)
{
  if (!qword_27D827A60)
  {
    sub_22817A958(255, &qword_280DDB9E0, 0x277D115B8);
    sub_2283906E0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D827A60);
    }
  }
}

void sub_22830F590(uint64_t a1@<X8>)
{
  v3 = [v1 timeIntervals];
  sub_2281DC17C();
  v4 = sub_2283921A0();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  v5 = sub_2283930D0();
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_3:
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
  }

  else if ((v4 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v4 + 8 * v7 + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_19;
  }

  v8 = MEMORY[0x22AAB6D80](v7, v4);
LABEL_8:
  v9 = v8;

  v10 = [v9 cycleIntervalDays];

  if (!v10)
  {
LABEL_13:
    v12 = 0;
    v13 = 1;
    goto LABEL_14;
  }

  v11 = [v10 integerValue];

  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    v13 = 0;
LABEL_14:
    *a1 = v12;
    *(a1 + 8) = v13;
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_22830F6D4(char a1)
{
  v2 = *v1;
  if ((a1 & 1) == 0)
  {
    if (v2 != 2)
    {
      if (qword_280DDCF18 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

LABEL_17:
    swift_once();
    return sub_22838F0C0();
  }

  if (v2 == 2)
  {
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_17;
  }

  if (v2 == 1)
  {
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_17;
  }

  if (qword_280DDCF18 != -1)
  {
LABEL_16:
    swift_once();
  }

LABEL_14:
  sub_22838F0C0();
  sub_2281BC044(0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D83B88];
  *(v4 + 16) = xmmword_228397F40;
  v6 = MEMORY[0x277D83C10];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  v7 = sub_228391FD0();

  return v7;
}

uint64_t getEnumTagSinglePayload for FrequencyInterval(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FrequencyInterval(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_22830F9DC()
{
  v4 = MEMORY[0x277D84F90];
  sub_2281C9E24(0, 98, 0);
  v0 = 2;
  result = v4;
  do
  {
    v5 = result;
    v3 = *(result + 16);
    v2 = *(result + 24);
    if (v3 >= v2 >> 1)
    {
      sub_2281C9E24((v2 > 1), v3 + 1, 1);
      result = v5;
    }

    *(result + 8 * v3 + 32) = v0;
    *(result + 16) = v3 + 1;
    ++v0;
  }

  while (v0 != 100);
  return result;
}

uint64_t InteractionSeparatorLineItem.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_22838F490();
  v1 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);
  type metadata accessor for InteractionSeparatorLineCell();
  sub_228310120(&qword_27D824090, type metadata accessor for InteractionSeparatorLineCell, &protocol conformance descriptor for InteractionSeparatorLineCell);
  *v1 = sub_22838FBB0();
  v1[1] = v2;
  return v0;
}

uint64_t InteractionSeparatorLineItem.reuseIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);

  return v1;
}

uint64_t sub_22830FB68(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);
  v3 = sub_22838F450();
  v5 = v4;

  MEMORY[0x22AAB5C80](v3, v5);

  return v2;
}

uint64_t InteractionSeparatorLineItem.init()(uint64_t a1)
{
  sub_22838F490();
  v2 = (v1 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);
  type metadata accessor for InteractionSeparatorLineCell();
  sub_228310120(&qword_27D824090, type metadata accessor for InteractionSeparatorLineCell, &protocol conformance descriptor for InteractionSeparatorLineCell);
  *v2 = sub_22838FBB0();
  v2[1] = v3;
  return v1;
}

uint64_t sub_22830FC98(uint64_t a1)
{
  sub_2283920B0();
  sub_22838F4A0();
  sub_228310120(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_228391F70();
}

uint64_t InteractionSeparatorLineItem.deinit()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_uuid;
  v2 = sub_22838F4A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t InteractionSeparatorLineItem.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_uuid;
  v2 = sub_22838F4A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_22830FE54()
{
  sub_228393520();
  sub_2283920B0();
  sub_22838F4A0();
  sub_228310120(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  return sub_228393570();
}

uint64_t sub_22830FF08()
{
  v1 = *(*v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);

  return v1;
}

uint64_t sub_22830FFA8(uint64_t a1)
{
  sub_2283920B0();
  sub_22838F4A0();
  sub_228310120(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_228391F70();
}

uint64_t type metadata accessor for InteractionSeparatorLineItem(uint64_t a1)
{
  result = qword_27D827A70;
  if (!qword_27D827A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228310120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_228310168(uint64_t a1)
{
  sub_228393520();
  sub_2283920B0();
  sub_22838F4A0();
  sub_228310120(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  return sub_228393570();
}

uint64_t sub_22831021C(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);
  v3 = sub_22838F450();
  v5 = v4;

  MEMORY[0x22AAB5C80](v3, v5);

  return v2;
}

uint64_t sub_2283102A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_228310310(uint64_t a1)
{
  result = sub_22838F4A0();
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

uint64_t DosageItem.init(uuid:isEditEnabled:medication:conceptBackedLoggingUnits:dataProvider:updateHandler:deletionHandler:validationHandler:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  type metadata accessor for DosageCollectionViewCell(0);
  sub_228318D68(&qword_27D8261F8, type metadata accessor for DosageCollectionViewCell, &protocol conformance descriptor for DosageCollectionViewCell);
  *a9 = sub_22838FBB0();
  *(a9 + 1) = v19;
  *(a9 + 2) = 0;
  *(a9 + 3) = 0xE000000000000000;
  v20 = type metadata accessor for DosageItem(0);
  *(a9 + 4) = 0;
  *(a9 + 5) = 0;
  v21 = &a9[v20[11]];
  v22 = &a9[v20[12]];
  v23 = &a9[v20[13]];
  v24 = &a9[v20[14]];
  v25 = v20[7];
  v26 = sub_22838F4A0();
  result = (*(*(v26 - 8) + 32))(&a9[v25], a1, v26);
  a9[v20[8]] = a2;
  *&a9[v20[9]] = a3;
  v28 = &a9[v20[10]];
  *v28 = a4;
  *(v28 + 1) = a5;
  *(v28 + 2) = a6;
  *(v28 + 3) = a7;
  *v21 = a8;
  *(v21 + 1) = a10;
  *v22 = a11;
  *(v22 + 1) = a12;
  *v24 = a13;
  *(v24 + 1) = a14;
  *v23 = a15;
  *(v23 + 1) = a16;
  return result;
}

uint64_t DosageItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DosageItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DosageItem.uniqueIdentifier.getter()
{
  type metadata accessor for DosageItem(0);
  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0x7449656761736F44;
}

uint64_t DosageItem.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DosageItem.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DosageItem.placeholderText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DosageItem.placeholderText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t DosageItem.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DosageItem(0) + 28);
  v4 = sub_22838F4A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DosageItem.isEditEnabled.setter(char a1)
{
  result = type metadata accessor for DosageItem(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

id DosageItem.medication.getter()
{
  v1 = *(v0 + *(type metadata accessor for DosageItem(0) + 36));

  return v1;
}

uint64_t DosageItem.conceptBackedLoggingUnits.getter()
{
  v1 = (v0 + *(type metadata accessor for DosageItem(0) + 40));
  v2 = *v1;
  sub_228267888(*v1, v1[1], v1[2], v1[3]);
  return v2;
}

uint64_t sub_2283109E8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 + *(type metadata accessor for DosageItem(0) + 44));
  v6 = *v5;
  v7 = v5[1];
  sub_228176FA8(v2, v3);
  result = sub_228176EC8(v6, v7);
  *v5 = v2;
  v5[1] = v4;
  return result;
}

uint64_t DosageItem.dataProvider.getter()
{
  v1 = (v0 + *(type metadata accessor for DosageItem(0) + 44));
  v2 = *v1;
  sub_228176FA8(*v1, v1[1]);
  return v2;
}

uint64_t DosageItem.dataProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DosageItem(0) + 44));
  result = sub_228176EC8(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_228310B28@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DosageItem(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_22822F100;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_228176FA8(v4, v5);
}

uint64_t sub_228310BBC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22822F0A8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for DosageItem(0) + 48));
  v8 = *v7;
  v9 = v7[1];
  sub_228176FA8(v3, v4);
  result = sub_228176EC8(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t DosageItem.updateHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for DosageItem(0) + 48));
  v2 = *v1;
  sub_228176FA8(*v1, v1[1]);
  return v2;
}

uint64_t DosageItem.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DosageItem(0) + 48));
  result = sub_228176EC8(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_228310D3C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DosageItem(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_228318D14;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_228176FA8(v4, v5);
}

uint64_t sub_228310DD0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_228318CD4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for DosageItem(0) + 52));
  v8 = *v7;
  v9 = v7[1];
  sub_228176FA8(v3, v4);
  result = sub_228176EC8(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t DosageItem.validationHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for DosageItem(0) + 52));
  v2 = *v1;
  sub_228176FA8(*v1, v1[1]);
  return v2;
}

uint64_t DosageItem.validationHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DosageItem(0) + 52));
  result = sub_228176EC8(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_228310F50@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DosageItem(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_22822F0D0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_228176FA8(v4, v5);
}

uint64_t sub_228310FE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22822F0F8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for DosageItem(0) + 56));
  v8 = *v7;
  v9 = v7[1];
  sub_228176FA8(v3, v4);
  result = sub_228176EC8(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t DosageItem.deletionHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for DosageItem(0) + 56));
  v2 = *v1;
  sub_228176FA8(*v1, v1[1]);
  return v2;
}

uint64_t DosageItem.deletionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DosageItem(0) + 56));
  result = sub_228176EC8(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*sub_228311164(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 44);
  *(a1 + 24) = v3;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  return sub_22822C53C;
}

uint64_t sub_2283111A8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  sub_228176FA8(*v2, v2[1]);
  return v3;
}

uint64_t sub_2283111E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = (v3 + *(a3 + 48));
  result = sub_228176EC8(*v6, v6[1]);
  *v6 = a1;
  v6[1] = v5;
  return result;
}

uint64_t (*sub_22831122C(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 48);
  *(a1 + 24) = v3;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  return sub_22822F0FC;
}

uint64_t sub_228311270(uint64_t a1)
{
  v1 = sub_22838F450();
  MEMORY[0x22AAB5C80](v1);

  return 0x7449656761736F44;
}

uint64_t sub_2283112D8(uint64_t a1)
{
  v2 = sub_228318D68(&qword_27D826210, type metadata accessor for DosageItem, &protocol conformance descriptor for DosageItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_228311354(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_2283113C0()
{
  v1 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_228311418(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2283114D8(uint64_t a1, void **a2)
{
  sub_228317208(a1, v7, sub_228181D50);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_22818FD64(v7, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v3) + 0x160))(v5);
  return sub_228317270(v7, sub_228181D50);
}

uint64_t sub_2283115B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  return sub_228317208(v1 + v3, a1, sub_228181D50);
}

uint64_t sub_228311620(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v1) + 0x160))(v4);
  return sub_228317270(a1, sub_228181D50);
}

uint64_t (*sub_2283116E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228311748;
}

uint64_t sub_228311748(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0x160))(result);
  }

  return result;
}

uint64_t sub_2283117B4@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x277D74AE0];
  sub_22831713C(0, &qword_280DDBCE0, MEMORY[0x277D74AE0], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___deleteAccessory;
  swift_beginAccess();
  sub_228318BCC(v1 + v11, v10, &qword_280DDBCE0, v4);
  v12 = sub_2283912F0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v10, v12);
  }

  v14 = MEMORY[0x277D74AE0];
  sub_228318DB0(v10, &qword_280DDBCE0, MEMORY[0x277D74AE0]);
  sub_2283119FC(ObjectType, a1);
  (*(v13 + 16))(v8, a1, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  swift_beginAccess();
  sub_228318C4C(v8, v1 + v11, &qword_280DDBCE0, v14);
  return swift_endAccess();
}

uint64_t sub_2283119FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  sub_22831713C(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_228391210();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228391220();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, *MEMORY[0x277D74A98], v10);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  v16 = sub_228391230();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);

  sub_228391200();
  sub_2283912C0();

  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

uint64_t sub_228311CDC(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v2 = sub_2283911B0();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v48 - v6;
  v8 = MEMORY[0x277D83D88];
  sub_22831713C(0, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for Dosage(0);
  v50 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v49 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831713C(0, &qword_27D827AA0, type metadata accessor for DosageItem, v8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - v15;
  v17 = type metadata accessor for DosageItem(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    goto LABEL_10;
  }

  v22 = Strong;
  v48 = v7;
  v23 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_228317208(v22 + v23, &v55, sub_228181D50);

  if (!*(&v56 + 1))
  {
LABEL_10:
    sub_228317270(&v55, sub_228181D50);
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_11;
  }

  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  v24 = swift_dynamicCast();
  (*(v18 + 56))(v16, v24 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v25 = v20;
    sub_2283171A0(v16, v20, type metadata accessor for DosageItem);
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentDosage;
      v28 = v26;
      swift_beginAccess();
      sub_228318BCC(v28 + v27, v11, &qword_27D826200, type metadata accessor for Dosage);

      v29 = (*(v50 + 48))(v11, 1, v12);
      v30 = v48;
      if (v29 != 1)
      {
        v31 = v49;
        sub_2283171A0(v11, v49, type metadata accessor for Dosage);
        v32 = *&v20[*(v17 + 56)];
        if (v32)
        {
          v32(v20, v31);
        }

        sub_228317270(v31, type metadata accessor for Dosage);
        return sub_228317270(v25, type metadata accessor for DosageItem);
      }
    }

    else
    {
      (*(v50 + 56))(v11, 1, 1, v12);
      v30 = v48;
    }

    sub_228318DB0(v11, &qword_27D826200, type metadata accessor for Dosage);
    sub_228391170();
    v41 = sub_2283911A0();
    v42 = sub_2283925C0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54 = v44;
      *v43 = 136315138;
      v45 = sub_228393600();
      v47 = sub_2281C96FC(v45, v46, &v54);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_22816B000, v41, v42, "[%s] Unable to continue with cell selection as Dosage is nil", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AAB7B80](v44, -1, -1);
      MEMORY[0x22AAB7B80](v43, -1, -1);
    }

    (*(v52 + 8))(v30, v53);
    return sub_228317270(v25, type metadata accessor for DosageItem);
  }

LABEL_11:
  sub_228318DB0(v16, &qword_27D827AA0, type metadata accessor for DosageItem);
  sub_228391170();
  v33 = sub_2283911A0();
  v34 = sub_2283925C0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v55 = v36;
    *v35 = 136315138;
    v37 = sub_228393600();
    v39 = sub_2281C96FC(v37, v38, &v55);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_22816B000, v33, v34, "[%s] item is not a DatePickerItem", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x22AAB7B80](v36, -1, -1);
    MEMORY[0x22AAB7B80](v35, -1, -1);
  }

  return (*(v52 + 8))(v5, v53);
}

id sub_228312440()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField];
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = sub_2283124B0(v0, ObjectType);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2283124B0(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v4 = sub_228392AD0();
  [v3 setFont_];

  v5 = sub_228392000();
  v7 = v6;
  sub_228318D68(&qword_27D8261F8, type metadata accessor for DosageCollectionViewCell, &protocol conformance descriptor for DosageCollectionViewCell);
  v8 = v3;
  v9 = sub_22838FBB0();
  MEMORY[0x22AAB5C80](v9);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x694665756C61562ELL, 0xEB00000000646C65);

  v10 = sub_228391FC0();

  [v8 setAccessibilityIdentifier_];

  v11 = [objc_opt_self() systemBlueColor];
  [v8 setTextColor_];

  [v8 setAdjustsFontForContentSizeCategory_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  LOBYTE(v10) = [a1 effectiveUserInterfaceLayoutDirection] == 1;
  v12 = [a1 traitCollection];
  v13 = [v12 preferredContentSizeCategory];

  LOBYTE(v12) = sub_2283928C0();
  if ((v12 ^ v10))
  {
    v14 = 0;
  }

  else
  {
    v14 = 2;
  }

  [v8 setTextAlignment_];
  return v8;
}

void (*sub_228312794(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_228312440();
  return sub_2283127DC;
}

void sub_2283127DC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField);
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField) = v2;
}

id sub_2283127F4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = sub_22831285C(ObjectType);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_22831285C(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = sub_228392000();
  v4 = v3;
  sub_228318D68(&qword_27D8261F8, type metadata accessor for DosageCollectionViewCell, &protocol conformance descriptor for DosageCollectionViewCell);
  v5 = v1;
  v6 = sub_22838FBB0();
  MEMORY[0x22AAB5C80](v6);

  v11 = v4;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x614C65756C61562ELL, 0xEB000000006C6562);

  v7 = sub_228391FC0();

  [v5 setAccessibilityIdentifier_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v8 = sub_228392AD0();
  [v5 setFont_];

  [v5 setTextAlignment_];
  [v5 setAdjustsFontForContentSizeCategory_];
  v9 = [objc_opt_self() systemBlueColor];
  [v5 setTextColor_];

  [v5 setNumberOfLines_];
  [v5 setUserInteractionEnabled_];
  return v5;
}

id sub_228312AD8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentDosage;
  v11 = type metadata accessor for Dosage(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_baseIdentifier];
  v28 = sub_228392000();
  v29 = v13;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AF450);

  v14 = v29;
  *v12 = v28;
  v12[1] = v14;
  v15 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___deleteAccessory;
  v17 = sub_2283912F0();
  v18 = *(*(v17 - 8) + 56);
  v18(&v5[v16], 1, 1, v17);
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_timePicker;
  v20 = [objc_allocWithZone(MEMORY[0x277D753E8]) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setPreferredDatePickerStyle_];
  [v20 setDatePickerMode_];
  [v20 setMinuteInterval_];
  [v20 setContentHorizontalAlignment_];
  [v20 setRoundsToMinuteInterval_];
  *&v5[v19] = v20;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel] = 0;
  v18(&v5[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___spacerAccessory], 1, 1, v17);
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentLayoutConstraints] = MEMORY[0x277D84F90];
  v27.receiver = v5;
  v27.super_class = type metadata accessor for DosageCollectionViewCell(0);
  v21 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  v22 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v23 = v21;
  v24 = [v22 init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  v25 = sub_228392BD0();
  [v24 setBackgroundColor_];

  [v23 setBackgroundView_];
  sub_228312E90();

  return v23;
}

id DosageCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_228312E90()
{
  v1 = MEMORY[0x277D84560];
  sub_22831713C(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  v2 = *(sub_2283912F0() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228397F40;
  sub_2283117B4(v4 + v3);
  sub_2283928F0();
  v5 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_timePicker];
  [v5 addTarget:v0 action:sel_timePickerChanged_ forControlEvents:4096];
  v6 = sub_228312440();
  [v6 setDelegate_];

  v7 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField;
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField] setKeyboardType_];
  [*&v0[v7] addTarget:v0 action:sel_textFieldChanged_ forControlEvents:0x20000];
  v8 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_valueLabelTapped_];
  [v8 setNumberOfTapsRequired_];
  v9 = sub_2283127F4();
  [v9 addGestureRecognizer_];

  v10 = [v0 contentView];
  [v10 addSubview_];

  v11 = [v0 contentView];
  [v11 addSubview_];

  v12 = [v0 contentView];
  [v12 addSubview_];

  sub_228315110();
  v13 = &v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_baseIdentifier];
  swift_beginAccess();
  v15 = *v13;
  v14 = v13[1];

  sub_228314FDC(v15, v14);

  sub_22831713C(0, &qword_27D825090, sub_2281D51F0, v1);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_228397F40;
  v17 = sub_228391640();
  v18 = MEMORY[0x277D74DB8];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();
}

void sub_2283131FC(void *a1, void *a2, uint64_t a3)
{
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LODWORD(v4) = sub_2283928C0() & 1;
  v6 = [a2 preferredContentSizeCategory];
  LODWORD(v5) = sub_2283928C0() & 1;

  if (v4 != v5)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_228315110();
    }
  }
}

uint64_t sub_2283132D4()
{
  ObjectType = swift_getObjectType();
  v1 = sub_2283911B0();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x28223BE20](v1);
  v50 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22838F580();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_22831713C(0, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = type metadata accessor for Dosage(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v45 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831713C(0, &qword_27D827AA0, type metadata accessor for DosageItem, v5);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - v16;
  v18 = type metadata accessor for DosageItem(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_228317208(&v0[v22], v53, sub_228181D50);
  if (!v53[3])
  {
    sub_228317270(v53, sub_228181D50);
    (*(v19 + 56))(v17, 1, 1, v18);
    return sub_228318DB0(v17, &qword_27D827AA0, type metadata accessor for DosageItem);
  }

  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  v23 = swift_dynamicCast();
  (*(v19 + 56))(v17, v23 ^ 1u, 1, v18);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_228318DB0(v17, &qword_27D827AA0, type metadata accessor for DosageItem);
  }

  v24 = v21;
  sub_2283171A0(v17, v21, type metadata accessor for DosageItem);
  v25 = *&v21[*(v18 + 44)];
  if (!v25)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_9;
  }

  v25(v21);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_9:
    sub_228318DB0(v11, &qword_27D826200, type metadata accessor for Dosage);
    v37 = v50;
    sub_228391170();
    v38 = sub_2283911A0();
    v39 = sub_2283925C0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v53[0] = v41;
      *v40 = 136315138;
      v42 = sub_228393600();
      v44 = sub_2281C96FC(v42, v43, v53);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_22816B000, v38, v39, "[%s] Unable to continue with item update as Dosage is nil", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x22AAB7B80](v41, -1, -1);
      MEMORY[0x22AAB7B80](v40, -1, -1);
    }

    (*(v51 + 8))(v37, v52);
    v35 = v24;
    return sub_228317270(v35, type metadata accessor for DosageItem);
  }

  v26 = v11;
  v27 = v45;
  sub_2283171A0(v26, v45, type metadata accessor for Dosage);
  sub_228317208(v27, v9, type metadata accessor for Dosage);
  (*(v13 + 56))(v9, 0, 1, v12);
  v28 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentDosage;
  swift_beginAccess();
  sub_228318C4C(v9, &v0[v28], &qword_27D826200, type metadata accessor for Dosage);
  swift_endAccess();
  [v0 setUserInteractionEnabled_];
  v29 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_timePicker];
  v30 = sub_22838F380();
  [v29 setDate:v30 animated:1];

  sub_228316290();
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v31 = v46;
  sub_22838F540();
  v32 = sub_228390A90();
  v34 = v33;
  (*(v47 + 8))(v31, v48);
  sub_228313AB8(v32, v34);

  sub_228315110();
  sub_228317270(v27, type metadata accessor for Dosage);
  v35 = v21;
  return sub_228317270(v35, type metadata accessor for DosageItem);
}

void sub_228313AB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_22838F580();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_22838F540();
  sub_228390AA0();
  v7 = v6;
  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_22838F540();
  sub_228390A90();
  v8(v5, v2);
  v9 = sub_228312440();
  v10 = sub_228391FC0();

  [v9 setText_];

  v11 = sub_2283127F4();
  sub_228313CA8(v7);
  v12 = sub_228391FC0();

  [v11 setText_];
}

uint64_t sub_228313CA8(double a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22831713C(0, &qword_27D827AA0, type metadata accessor for DosageItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29[-v9];
  v11 = type metadata accessor for DosageItem(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_228317208(v2 + v15, v30, sub_228181D50);
  if (v30[3])
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v16 = swift_dynamicCast();
    (*(v12 + 56))(v10, v16 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_2283171A0(v10, v14, type metadata accessor for DosageItem);
      v17 = &v14[*(v11 + 40)];
      if (v17[1])
      {
        v18 = *v17;
        v19 = v17[2];

        sub_228317270(v14, type metadata accessor for DosageItem);

        if (a1 == 1.0)
        {
          return v18;
        }

        else
        {
          return v19;
        }
      }

      else
      {
        v28 = sub_2283929E0();
        sub_228317270(v14, type metadata accessor for DosageItem);
        return v28;
      }
    }
  }

  else
  {
    sub_228317270(v30, sub_228181D50);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_228318DB0(v10, &qword_27D827AA0, type metadata accessor for DosageItem);
  sub_228391170();
  v21 = sub_2283911A0();
  v22 = sub_2283925C0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30[0] = v24;
    *v23 = 136315138;
    v25 = sub_228393600();
    v27 = sub_2281C96FC(v25, v26, v30);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_22816B000, v21, v22, "[%s] item is not a DosageItem", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AAB7B80](v24, -1, -1);
    MEMORY[0x22AAB7B80](v23, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}