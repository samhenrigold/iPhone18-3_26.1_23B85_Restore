void sub_2516F1410(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_2517034F4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = sub_2517033A4();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

uint64_t sub_2516F161C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_2517034A4();

    if (v6)
    {
      v7 = sub_2516F1804(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for ENManagerAdapter.StatusChangeObserver();
  v10 = sub_2517033A4();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_2517033B4();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2516F1098(&qword_27F454088, &qword_251708910);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_2516F1958(v12);
  result = v18;
  *v9 = v19;
  return result;
}

unint64_t sub_2516F17B0()
{
  result = qword_27F454410;
  if (!qword_27F454410)
  {
    type metadata accessor for ENManagerAdapter.StatusChangeObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454410);
  }

  return result;
}

uint64_t sub_2516F1804(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_251703474();
  v5 = swift_unknownObjectRetain();
  v6 = sub_2516A5B1C(v5, v4);
  v15 = v6;

  v7 = sub_2517033A4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for ENManagerAdapter.StatusChangeObserver();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_2517033B4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_2516F1958(v9);
  result = sub_2517033B4();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2516F1958(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_251703444();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_2517033A4();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

id VerificationTravelStatusViewController.__allocating_init(flow:agencyModel:)(unint64_t a1, unint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_2516F3C94(a1, a3, v7, ObjectType, a2);
}

id VerificationTravelStatusViewController.init(flow:agencyModel:)(unint64_t a1, unint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return sub_2516F3C94(a1, a3, v3, ObjectType, a2);
}

void sub_2516F1BB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4539F0, &qword_251706F70);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v27[-v6];
  v8 = [v0 viewIfLoaded];
  [v8 setNeedsLayout];

  v9 = [v1 tableView];
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource];
  if (!v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = v9;
  v27[15] = 1;
  v12 = v10;
  sub_251703034();

  v13 = sub_251702EE4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = sub_251702EB4();
  (*(v14 + 8))(v7, v13);
  v16 = [v11 cellForRowAtIndexPath_];

  if (v16)
  {
    type metadata accessor for VerificationCheckmarkCell();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v17[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled] & 1;
      [v17 setNeedsLayout];
    }
  }

LABEL_8:
  v18 = [v1 tableView];
  if (!v18)
  {
    return;
  }

  v19 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource];
  if (!v19)
  {
    goto LABEL_18;
  }

  v20 = v18;
  v27[14] = 2;
  v21 = v19;
  sub_251703034();

  v22 = sub_251702EE4();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v5, 1, v22) == 1)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v24 = sub_251702EB4();
  (*(v23 + 8))(v5, v22);
  v25 = [v20 cellForRowAtIndexPath_];

  if (v25)
  {
    type metadata accessor for VerificationCheckmarkCell();
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v26[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = ((v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled] != 2) ^ v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled]) & 1;
      [v26 setNeedsLayout];
    }
  }
}

void *sub_2516F1F34@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

Swift::Void __swiftcall VerificationTravelStatusViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_2516F2190();
  v1 = [v0 navigationItem];
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v5 = 0u;
  v6 = 0u;
  v2 = sub_251703134();

  v3 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v4 = [v3 initWithTitle:v2 style:0 target:0 action:{0, v5, v6}];

  swift_unknownObjectRelease();
  [v1 setBackBarButtonItem_];
}

void sub_2516F2190()
{
  v1 = v0;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_primaryButton];
  v3 = sub_251703134();
  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v4 = [v0 buttonTray];
  [v4 addButton_];

  sub_251702C94();
  v5 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_secondaryButton];
  v6 = sub_251703134();
  [v5 setTitle:v6 forState:{0, 0xE000000000000000}];

  [v5 addTarget:v0 action:sel_didTapSecondaryButton forControlEvents:64];
  v7 = [v0 buttonTray];
  [v7 addButton_];

  v8 = [objc_allocWithZone(type metadata accessor for VerificationTableView()) init];
  [v0 setTableView_];

  v9 = [v0 tableView];
  if (!v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  [v9 setDelegate_];

  v11 = [v0 tableView];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  type metadata accessor for AuthorityTextCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = sub_251703134();
  [v12 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v14];

  v15 = [v0 tableView];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  type metadata accessor for VerificationCheckmarkCell();
  v17 = swift_getObjCClassFromMetadata();
  v18 = sub_251703134();
  [v16 registerClass:v17 forCellReuseIdentifier:v18];

  v19 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_traveledCell];
  v20 = *&v19[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label];
  sub_251702C94();
  v21 = sub_251703134();

  [v20 setText_];

  v22 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled;
  v19[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled] & 1;
  [v19 setNeedsLayout];
  v23 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_notTraveledCell];
  v24 = *&v23[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label];
  sub_251702C94();
  v25 = sub_251703134();

  [v24 setText_];

  v23[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = ((v1[v22] != 2) ^ v1[v22]) & 1;
  [v23 setNeedsLayout];
  if (![v1 tableView])
  {
LABEL_13:
    __break(1u);
    return;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454708, &qword_251709C40));
  v27 = sub_251702FE4();
  v28 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource];
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource] = v27;
  v29 = v27;

  sub_251703004();
  sub_2516F2B14(0);
  v30 = [v1 navigationItem];
  v31 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_didTapCancel];
  [v30 setRightBarButtonItem_];

  v32 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_251708140;
  v34 = [v1 scrollView];
  v35 = [v34 contentLayoutGuide];

  v36 = [v35 heightAnchor];
  v37 = [v1 scrollView];
  v38 = [v37 safeAreaLayoutGuide];

  v39 = [v38 heightAnchor];
  v40 = [v36 constraintGreaterThanOrEqualToAnchor_];

  *(v33 + 32) = v40;
  sub_25168B5B4();
  v41 = sub_2517031F4();

  [v32 activateConstraints_];
}

char *sub_2516F294C(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  if (v5)
  {
    if (v5 == 1)
    {
      v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_traveledCell;
    }

    else
    {
      v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_notTraveledCell;
    }

    v9 = *(Strong + v8);
  }

  else
  {
    v10 = sub_251703134();
    v11 = sub_251702EB4();
    v12 = [a1 dequeueReusableCellWithIdentifier:v10 forIndexPath:v11];

    type metadata accessor for AuthorityTextCell();
    v9 = swift_dynamicCastClassUnconditional();
    v13 = *&v7[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_healthAgencyModel];
    v14 = *(v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header);
    v15 = (v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText);
    v16 = *v15;
    v17 = v15[1];
    v18 = objc_allocWithZone(type metadata accessor for OnboardingAuthorityTextView());
    v19 = v14;

    v20 = sub_2516DD44C(v19, v16, v17, 20.0, 20.0, 20.0, 20.0);
    v21 = *&v9[OBJC_IVAR____TtC28HealthExposureNotificationUI17AuthorityTextCell_authorityTextView];
    *&v9[OBJC_IVAR____TtC28HealthExposureNotificationUI17AuthorityTextCell_authorityTextView] = v20;
    v22 = v20;
    sub_2516FDCBC(v21);

    v7 = v21;
  }

  return v9;
}

id sub_2516F2B14(char a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4546F8, &unk_251709C30);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  result = [v1 isViewLoaded];
  if (!result)
  {
    return result;
  }

  sub_2516F42E4();
  sub_2516F4338();
  sub_251702FD4();
  sub_251702FB4();
  v16[15] = 0;
  sub_251702FA4();
  v16[14] = 1;
  result = sub_251702FA4();
  v11 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource];
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  (*(v4 + 16))(v7, v9, v3);
  v12 = v11;
  result = [v2 tableView];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = [result window];

  if (v14)
  {
  }

  sub_251703014();

  v15 = *(v4 + 8);
  v15(v7, v3);
  return (v15)(v9, v3);
}

Swift::Void __swiftcall VerificationTravelStatusViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  [*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_primaryButton] setEnabled_];
}

void VerificationTravelStatusViewController.tableView(_:shouldHighlightRowAt:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource);
  if (!v3)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return;
  }

  v4 = v3;
  sub_251702FF4();

  if (v5 - 1 >= 2 && v5)
  {
    goto LABEL_6;
  }
}

void VerificationTravelStatusViewController.tableView(_:didSelectRowAt:)(void *a1, uint64_t a2)
{
  v4 = sub_251702EB4();
  [a1 deselectRowAtIndexPath:v4 animated:1];

  v5 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource);
  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  sub_251702FF4();

  if (v11 > 1u)
  {
    if (v11 == 2)
    {
      v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled;
      v10 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled);
      if (v10 == 2 || (v10 & 1) != 0)
      {
        v9 = 0;
        goto LABEL_12;
      }

LABEL_11:
      v9 = 2;
      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    return;
  }

  if (!v11)
  {
    return;
  }

  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled;
  v8 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled);
  if (v8 != 2 && (v8 & 1) != 0)
  {
    goto LABEL_11;
  }

  v9 = 1;
LABEL_12:
  *(v2 + v7) = v9;
  sub_2516F1BB8();
}

void VerificationTravelStatusViewController.tableView(_:heightForRowAt:)(void *a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource);
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v3;
  sub_251702FF4();

  if (v8 > 1u)
  {
    if (v8 == 2)
    {
      v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_notTraveledCell;
LABEL_8:
      v7 = *(v2 + v6);
      [a1 bounds];
      [v7 systemLayoutSizeFittingSize_];
      return;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (v8)
  {
    v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_traveledCell;
    goto LABEL_8;
  }
}

uint64_t sub_2516F3480()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_flow + 8);
  type metadata accessor for VerificationOnboardingFlow(0);
  if (swift_dynamicCastClass())
  {
    v2 = swift_dynamicCastClassUnconditional();
    v3 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled);
    v4 = &OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_hasTraveled;
LABEL_5:
    v5 = *v4;
    swift_beginAccess();
    *(v2 + v5) = v3;
    goto LABEL_6;
  }

  type metadata accessor for PreAuthorizationFlow(0);
  if (swift_dynamicCastClass())
  {
    v2 = swift_dynamicCastClassUnconditional();
    v3 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled);
    v4 = &OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_hasTraveled;
    goto LABEL_5;
  }

LABEL_6:
  ObjectType = swift_getObjectType();
  return (*(v1 + 120))(v0, &protocol witness table for VerificationTravelStatusViewController, ObjectType, v1);
}

id VerificationTravelStatusViewController.__allocating_init(title:detailText:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_251703134();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_251703134();

LABEL_6:
  v12 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 symbolName:v11];

  return v12;
}

id VerificationTravelStatusViewController.__allocating_init(title:detailText:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = sub_251703134();

  if (a4)
  {
    v10 = sub_251703134();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 icon:a5];

  return v11;
}

id VerificationTravelStatusViewController.__allocating_init(title:detailText:symbolName:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 adoptTableViewScrollView:a7 & 1];

  return v15;
}

id VerificationTravelStatusViewController.__allocating_init(title:detailText:icon:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 adoptTableViewScrollView:a6 & 1];

  return v13;
}

id VerificationTravelStatusViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2516F3C94(unint64_t a1, void *a2, _BYTE *a3, uint64_t a4, unint64_t a5)
{
  ObjectType = swift_getObjectType();
  a3[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled] = 2;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource] = 0;
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_traveledCell;
  v11 = type metadata accessor for VerificationCheckmarkCell();
  *&a3[v10] = [objc_allocWithZone(v11) initWithStyle:0 reuseIdentifier:0];
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_notTraveledCell;
  *&a3[v12] = [objc_allocWithZone(v11) initWithStyle:0 reuseIdentifier:0];
  v13 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_primaryButton;
  *&a3[v13] = [objc_opt_self() boldButton];
  v14 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_secondaryButton;
  *&a3[v14] = [objc_opt_self() linkButton];
  if (sub_25168A810())
  {
    v15 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_flow];
    *v15 = a1;
    v15[1] = a5;
    *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_healthAgencyModel] = a2;
    v16 = qword_28151EB58;
    swift_unknownObjectRetain();
    v17 = a2;
    if (v16 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    v18 = sub_251703134();

    v23.receiver = a3;
    v23.super_class = ObjectType;
    v19 = objc_msgSendSuper2(&v23, sel_initWithTitle_detailText_icon_, v18, 0, 0, 0xE000000000000000);

    v20 = v19;
    [v20 set:1 shouldInlineButtontray:?];

    swift_unknownObjectRelease();
    return v20;
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453A10, &unk_251706F80);
    v22 = sub_251703194();
    MEMORY[0x25307F580](v22);

    result = sub_251703584();
    __break(1u);
  }

  return result;
}

uint64_t sub_2516F3F70(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4546F8, &unk_251709C30);
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource);
  if (v8)
  {
    v9 = v8;
    sub_251703024();

    v10 = sub_251702FC4();
    result = (*(v4 + 8))(v7, v3);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v10 + 16) > a1)
    {
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2516F40AC(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4546F8, &unk_251709C30);
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource);
  if (v8)
  {
    v9 = v8;
    sub_251703024();

    v10 = sub_251702FC4();
    result = (*(v4 + 8))(v7, v3);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v10 + 16) > a1)
    {
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2516F4230()
{
  result = qword_27F4546E8;
  if (!qword_27F4546E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4546E8);
  }

  return result;
}

unint64_t sub_2516F4288()
{
  result = qword_27F4546F0;
  if (!qword_27F4546F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4546F0);
  }

  return result;
}

unint64_t sub_2516F42E4()
{
  result = qword_27F454710;
  if (!qword_27F454710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454710);
  }

  return result;
}

unint64_t sub_2516F4338()
{
  result = qword_27F454718;
  if (!qword_27F454718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454718);
  }

  return result;
}

id VerificationWelcomeViewController.init(flow:agencyModel:)(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v58 = &v53 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v60 = &v53 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  v19 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_primaryButton;
  v20 = objc_opt_self();
  v21 = v3;
  *&v3[v19] = [v20 boldButton];
  v22 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_secondaryButton;
  *&v21[v22] = [objc_opt_self() linkButton];
  *&v21[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_flow] = a1;
  v23 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_healthAgencyModel;
  *&v21[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_healthAgencyModel] = a2;

  v24 = a2;
  v25 = [v24 supportsFeatures_];
  v59 = ObjectType;
  if (v25)
  {
    v55 = v23;
    v56 = a1;
    v26 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL;
    sub_251699D18(v24 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL, v18, &qword_27F453E10, &unk_251708160);
    v27 = sub_251702DA4();
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    v30 = v29(v18, 1, v27);
    sub_25168B718(v18, &qword_27F453E10, &unk_251708160);
    if (v30 == 1)
    {
      v31 = 0;
      v32 = 0xE000000000000000;
      ObjectType = v59;
    }

    else
    {
      v54 = v24;
      sub_251699D18(v24 + v26, v16, &qword_27F453E10, &unk_251708160);
      result = v29(v16, 1, v27);
      if (result == 1)
      {
        __break(1u);
        goto LABEL_26;
      }

      v36 = sub_251702D64();
      v32 = v37;
      (*(v28 + 8))(v16, v27);
      v31 = v36 & 0xFFFFFFFFFFFFLL;
      ObjectType = v59;
      v24 = v54;
    }

    v38 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v38 = v31;
    }

    v33 = v38 != 0;
    v34 = v60;
    v23 = v55;
  }

  else
  {
    v33 = 0;
    v34 = v60;
  }

  v21[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_regionSupportsWebReport] = v33;
  if ([v24 supportsFeatures_])
  {
    sub_251699D18(v24 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL, v34, &qword_27F453E10, &unk_251708160);
    v39 = sub_251702DA4();
    v40 = *(v39 - 8);
    v41 = *(v40 + 48);
    if (v41(v34, 1, v39) != 1)
    {

      sub_25168B718(v34, &qword_27F453E10, &unk_251708160);
      v46 = 0;
LABEL_21:
      ObjectType = v59;
      goto LABEL_22;
    }

    v54 = v24;
    sub_25168B718(v34, &qword_27F453E10, &unk_251708160);
    v42 = v58;
    sub_251699D18(*&v21[v23] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationCodeHelpURL, v58, &qword_27F453E10, &unk_251708160);
    v43 = v41(v42, 1, v39);
    sub_25168B718(v42, &qword_27F453E10, &unk_251708160);
    if (v43 == 1)
    {
      v44 = 0;
      v45 = 0xE000000000000000;
LABEL_18:
      v24 = v54;

      v50 = HIBYTE(v45) & 0xF;
      if ((v45 & 0x2000000000000000) == 0)
      {
        v50 = v44;
      }

      v46 = v50 != 0;
      goto LABEL_21;
    }

    v47 = v57;
    sub_251699D18(*&v21[v23] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationCodeHelpURL, v57, &qword_27F453E10, &unk_251708160);
    result = (v41)(v47, 1, v39);
    if (result != 1)
    {
      v48 = sub_251702D64();
      v45 = v49;
      (*(v40 + 8))(v47, v39);
      v44 = v48 & 0xFFFFFFFFFFFFLL;
      goto LABEL_18;
    }

LABEL_26:
    __break(1u);
    return result;
  }

  v46 = 0;
LABEL_22:
  v21[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_regionSupportsSelfReportV1] = v46;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v51 = sub_251703134();

  v61.receiver = v21;
  v61.super_class = ObjectType;
  v52 = objc_msgSendSuper2(&v61, sel_initWithTitle_detailText_icon_contentLayout_, v51, 0, 0, 2);

  return v52;
}

Swift::Void __swiftcall VerificationWelcomeViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2516F4A2C();
}

void sub_2516F4A2C()
{
  v1 = v0;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_primaryButton];
  v3 = sub_251703134();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v4 = [v0 buttonTray];
  [v4 addButton_];

  sub_251702C94();
  v5 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_secondaryButton];
  v6 = sub_251703134();

  [v5 setTitle:v6 forState:{0, 0xE000000000000000}];

  [v5 addTarget:v0 action:sel_didTapCancel forControlEvents:64];
  v7 = [v0 buttonTray];
  [v7 addButton_];

  v8 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_healthAgencyModel];
  v9 = *(v8 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header);
  v10 = (v8 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationIntroductoryText);
  v11 = *v10;
  v12 = v10[1];
  v13 = objc_allocWithZone(type metadata accessor for OnboardingAuthorityTextView());
  v14 = v9;

  v15 = sub_2516DD44C(v14, v11, v12, 20.0, 20.0, 20.0, 20.0);
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [v1 contentView];
  [v16 addSubview_];

  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2517068A0;
  v19 = [v15 leadingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v18 + 32) = v22;
  v23 = [v15 trailingAnchor];
  v24 = [v1 contentView];
  v25 = [v24 trailingAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v18 + 40) = v26;
  v27 = [v15 topAnchor];
  v28 = [v1 contentView];
  v29 = [v28 topAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v18 + 48) = v30;
  v31 = [v15 bottomAnchor];

  v32 = [v1 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v18 + 56) = v34;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v35 = sub_2517031F4();

  [v17 activateConstraints_];
}

void sub_2516F4FC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v32[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32[-v5];
  v7 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_flow];
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  swift_beginAccess();
  sub_251699D18(v7 + v8, v6, &qword_27F454000, &unk_251708500);
  v9 = sub_251702E64();
  LODWORD(v8) = (*(*(v9 - 8) + 48))(v6, 1, v9);
  sub_25168B718(v6, &qword_27F454000, &unk_251708500);
  if (v8 != 1)
  {
    [*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_primaryButton] setUserInteractionEnabled_];
    v16 = swift_allocObject();
    *(v16 + 16) = v0;
    sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
    v17 = v0;
    v18 = sub_251703364();
    sub_2516AAE70(sub_2516F5AE8, v16);

    return;
  }

  if ((*(v7 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_enteredFromMainScreen) & 1) == 0 && ![*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_healthAgencyModel] supportsFeatures_])
  {
    v26 = sub_2516A3614(v7);
    if (v26)
    {
      v27 = v26;
      v28 = [v0 navigationController];
      if (!v28)
      {
LABEL_13:

        return;
      }

LABEL_12:
      v29 = v28;
      [v28 pushViewController:v27 animated:1];

      goto LABEL_13;
    }

LABEL_17:
    swift_beginAccess();
    v31 = *(v7 + 16);

    v31(1);

    return;
  }

  if (v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_regionSupportsSelfReportV1] != 1)
  {
    if (v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_regionSupportsWebReport] == 1)
    {
      v19 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_healthAgencyModel];
      v20 = objc_allocWithZone(type metadata accessor for WebReportViewController());
      v21 = v19;
      v22 = v19;
      v23 = v0;
      v24 = WebReportViewController.init(agencyModel:)(v22);
      v25 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      [v25 setModalPresentationStyle_];
      [v23 presentViewController:v25 animated:1 completion:0];

      return;
    }

    v30 = sub_2516A3614(v7);
    if (v30)
    {
      v27 = v30;
      v28 = [v0 navigationController];
      if (!v28)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v10 = v0;
  sub_251699D18(*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_healthAgencyModel] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationCodeHelpURL, v3, &qword_27F453E10, &unk_251708160);
  v11 = sub_251702DA4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v3, 1, v11) == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = objc_allocWithZone(MEMORY[0x277CDB700]);
    v14 = sub_251702D74();
    v15 = [v13 initWithURL_];

    (*(v12 + 8))(v3, v11);
    [v15 setModalPresentationStyle_];
    [v10 presentViewController:v15 animated:1 completion:0];
  }
}

double sub_2516F5488(void *a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_primaryButton] setUserInteractionEnabled_];
  if (a1)
  {
    v4 = a1;
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v5 = sub_251702F84();
    __swift_project_value_buffer(v5, static Logger.testVerification);
    v6 = a1;
    v7 = sub_251702F64();
    v8 = sub_251703324();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22[0] = v10;
      *v9 = 136315138;
      v11 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v12 = sub_251703194();
      v14 = sub_251693FCC(v12, v13, v22);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_25167E000, v7, v8, "Failed to receive test metadata %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x2530803C0](v10, -1, -1);
      MEMORY[0x2530803C0](v9, -1, -1);

      return result;
    }

    v19 = a1;

    goto LABEL_9;
  }

  v16 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_flow];
  v17 = sub_2516A3614(v16);
  if (v17)
  {
    v21 = v17;
    v18 = [a2 navigationController];
    [v18 pushViewController:v21 animated:1];

    v19 = v21;

LABEL_9:

    return result;
  }

  swift_beginAccess();
  v20 = *(v16 + 16);

  v20(1);

  return result;
}

id VerificationWelcomeViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id VerificationWelcomeViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id VerificationWelcomeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::String __swiftcall OnboardingSource.sourceBundleIdentifier()()
{
  v1 = 0xE000000000000000;
  v2 = 0x800000025170EC50;
  v3 = 0x800000025170EC30;
  v4 = 0xD00000000000001ALL;
  if (v0 != 4)
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  if (v0 == 3)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v2 = v3;
  }

  v5 = 0xD00000000000001ELL;
  if (v0 == 2)
  {
    v1 = 0x800000025170EC70;
  }

  else
  {
    v5 = 0;
  }

  if (v0 == 1)
  {
    v5 = 0xD000000000000015;
    v1 = 0x800000025170E650;
  }

  v6 = v0 <= 2;
  if (v0 <= 2)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v6)
  {
    v8 = v1;
  }

  else
  {
    v8 = v2;
  }

  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

id sub_2516F5BC4()
{
  result = [objc_allocWithZone(type metadata accessor for ViewControllerFactory()) init];
  static ViewControllerFactory.shared = result;
  return result;
}

id ViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *ViewControllerFactory.shared.unsafeMutableAddressor()
{
  if (qword_28151EB48 != -1)
  {
    swift_once();
  }

  return &static ViewControllerFactory.shared;
}

id static ViewControllerFactory.shared.getter()
{
  if (qword_28151EB48 != -1)
  {
    swift_once();
  }

  v1 = static ViewControllerFactory.shared;

  return v1;
}

uint64_t (*ViewControllerFactory.inflightOnboardingStack.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___ENUIViewControllerFactory_inflightOnboardingStack;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2516F5DF8;
}

uint64_t (*ViewControllerFactory.inflightVerificationStack.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___ENUIViewControllerFactory_inflightVerificationStack;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2516F79D4;
}

id sub_2516F5ED0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

void sub_2516F5FE8(void *a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t (*ViewControllerFactory.inflightPreAuthorizationStack.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___ENUIViewControllerFactory_inflightPreAuthorizationStack;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2516F79D4;
}

void sub_2516F60D8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id ViewControllerFactory.createOnboardingStack(forAgencyModel:exposureManager:fromAvailabilityAlert:fromDeepLink:subsequentFlow:completion:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (static ENUIPublicHealthAgencyModel.activeRegion)
  {
    goto LABEL_6;
  }

  if (qword_28151EBA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static ENUIPublicHealthAgencyModel.authorizedRegions >> 62)
  {
    if (sub_251703474())
    {
      goto LABEL_6;
    }

LABEL_9:
    v25 = swift_allocObject();
    v25[2] = v7;
    v25[3] = a6;
    v25[4] = a7;
    type metadata accessor for StandardOnboardingFlow();
    v26 = swift_allocObject();
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0u;
    v27 = MEMORY[0x277D84F90];
    *(v26 + 64) = 0;
    *(v26 + 72) = v27;
    *(v26 + 97) = 0;
    swift_beginAccess();
    *(v26 + 32) = a1;
    *(v26 + 16) = sub_2516F7530;
    *(v26 + 24) = v25;
    *(v26 + 96) = a3 & 1;
    *(v26 + 97) = a4 & 1;
    *(v26 + 80) = a2;
    *(v26 + 88) = a5;
    v18 = &protocol witness table for StandardOnboardingFlow;
    goto LABEL_7;
  }

  if (!*((static ENUIPublicHealthAgencyModel.authorizedRegions & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_6:
  v15 = swift_allocObject();
  v15[2] = v7;
  v15[3] = a6;
  v15[4] = a7;
  type metadata accessor for AddRegionOnboardingFlow();
  v16 = swift_allocObject();
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  v17 = MEMORY[0x277D84F90];
  *(v16 + 64) = 0;
  *(v16 + 72) = v17;
  *(v16 + 80) = 0;
  swift_beginAccess();
  *(v16 + 32) = a1;
  *(v16 + 16) = sub_2516F7508;
  *(v16 + 24) = v15;
  *(v16 + 88) = a2;
  *(v16 + 80) = a4 & 1;
  v18 = &protocol witness table for AddRegionOnboardingFlow;
LABEL_7:
  swift_getObjectType();
  v19 = v18[11];
  v20 = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = v7;

  v22 = v19();
  swift_unknownObjectRelease();
  v23 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [v23 setModalInPresentation_];
  swift_unknownObjectRelease();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v23;
}

uint64_t sub_2516F6454(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, const char *a5)
{
  if (qword_27F453878 != -1)
  {
    swift_once();
  }

  v8 = sub_251702F84();
  __swift_project_value_buffer(v8, static Logger.general);
  v9 = sub_251702F64();
  v10 = sub_251703314();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a1;
    _os_log_impl(&dword_25167E000, v9, v10, a5, v11, 0xCu);
    MEMORY[0x2530803C0](v11, -1, -1);
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return a3(a1);
}

id ViewControllerFactory.createVerificationStack(forAgencyModel:exposureManager:sessionIdentifier:reportType:enteredFromMainScreen:completion:)(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v38 = a5;
  v37 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - v14;
  sub_2516F7688(a3, &v36 - v14);
  v16 = swift_allocObject();
  v16[2] = v7;
  v16[3] = a6;
  v16[4] = a7;
  type metadata accessor for VerificationOnboardingFlow(0);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  v19 = sub_251702E64();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel;
  *(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel) = 0;
  v21 = (v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion);
  *v21 = 0u;
  v21[1] = 0u;
  *(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegionSubdivisionCodes) = MEMORY[0x277D84F90];
  v22 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset;
  v23 = type metadata accessor for SymptomOnset(0);
  (*(*(v23 - 8) + 56))(v17 + v22, 1, 1, v23);
  *(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_hasTraveled) = 2;
  *(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_isVaccinated) = 2;
  swift_beginAccess();
  v24 = v7;

  sub_2516D8CF4(v15, v17 + v18);
  swift_endAccess();
  *(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_reportType) = a4;
  swift_beginAccess();
  v25 = *(v17 + v20);
  *(v17 + v20) = a1;
  v26 = a1;

  v27 = v37;
  *(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel) = v26;
  *(v17 + 16) = sub_2516F76F8;
  *(v17 + 24) = v16;
  *(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_exposureManager) = v27;
  *(v17 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_enteredFromMainScreen) = v38;
  v28 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_reportType;
  swift_beginAccess();
  if (*(v17 + v28) == 3)
  {
    objc_allocWithZone(type metadata accessor for SelfReportVerificationWelcomeViewController());
    v29 = v26;
    swift_unknownObjectRetain();

    v31 = sub_25169E258(v30, v29);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for VerificationWelcomeViewController());
    v32 = v26;
    swift_unknownObjectRetain();

    v31 = VerificationWelcomeViewController.init(flow:agencyModel:)(v33, v32);
  }

  v34 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [v34 setModalInPresentation_];

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v34;
}

id ViewControllerFactory.createPreAuthorizationStack(forAgencyModel:exposureManager:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PreAuthorizationFlow(0);
  swift_allocObject();
  v8 = *(PreAuthorizationFlow.init(agencyModel:exposureManager:completion:)(a1, a2, a3, a4) + 24);
  v9 = objc_allocWithZone(type metadata accessor for PreAuthorizationWelcomeViewController());
  v10 = a1;
  swift_unknownObjectRetain();

  v11 = v8;

  v13 = PreAuthorizationWelcomeViewController.init(flow:agencyModel:)(v12, v11);
  v14 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [v14 setModalInPresentation_];

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v14;
}

id ViewControllerFactory.createKeyReleaseDialogue(with:region:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;

  sub_2516E4F44(v15);
  v11 = objc_allocWithZone(type metadata accessor for KeyReleaseAuthorizationViewController(0));
  v12 = a3;

  v13 = _s28HealthExposureNotificationUI37KeyReleaseAuthorizationViewControllerC4with16bundleIdentifier6region17completionHandlerAcA0eF8DialogueV_SSSgSo8ENRegionCSgySbcSgtcfc_0(v15, a1, a2, a3, sub_2516F7824, v10);
  [v13 setModalPresentationStyle_];
  return v13;
}

id ViewControllerFactory.createPreApprovalDialogue(with:region:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;

  sub_25168D904(v15);
  v11 = objc_allocWithZone(type metadata accessor for PreApprovalViewController(0));
  v12 = a3;

  v13 = sub_25168D49C(v15, a1, a2, a3, sub_2516F79DC, v10);
  [v13 setModalPresentationStyle_];
  return v13;
}

id ViewControllerFactory.init()()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ViewControllerFactory.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ViewControllerFactory();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id _s28HealthExposureNotificationUI21ViewControllerFactoryC27createAnalyticsConsentStack14forAgencyModel15exposureManager10completionSo06UIViewF0CAA010ENUIPublicamN0C_AA0B9Notifying_pyAA10FlowResultOctF_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnalyticsConsentOnboardingFlow();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *(v8 + 16) = a1;
  *(v8 + 24) = a1;
  *(v8 + 80) = a3;
  *(v8 + 88) = a4;
  *(v8 + 72) = a2;
  v9 = objc_allocWithZone(type metadata accessor for OnboardingAnalyticsViewController());
  v10 = a1;
  swift_unknownObjectRetain();

  v12 = sub_2516AA1D8(v11, v10, v9);
  v13 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  v14 = v13;
  [v14 setModalInPresentation_];

  return v14;
}

uint64_t sub_2516F7688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2516F76F8(uint64_t a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v3(a1);
}

id _s28HealthExposureNotificationUI21ViewControllerFactoryC19createTurndownStack21enteredFromMainScreen10completionSo06UIViewF0CSgSb_yAA10FlowResultOctF_0()
{
  swift_beginAccess();
  v0 = static ENUIPublicHealthAgencyModel.turndownEntity;
  if (static ENUIPublicHealthAgencyModel.turndownEntity)
  {
    v1 = objc_allocWithZone(type metadata accessor for TurndownViewController());
    v2 = v0;
    v3 = TurndownViewController.init(turndownEntity:)(v2);
    v0 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    [v0 setModalInPresentation_];
  }

  return v0;
}

unint64_t sub_2516F7874()
{
  result = qword_27F454768;
  if (!qword_27F454768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454768);
  }

  return result;
}

unint64_t sub_2516F78CC()
{
  result = qword_27F454770;
  if (!qword_27F454770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454770);
  }

  return result;
}

uint64_t sub_2516F7958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id OnboardingOpenAppStoreViewController.__allocating_init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_2516F8BDC(a1, a3, v7, ObjectType, a2);
}

id OnboardingOpenAppStoreViewController.init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return sub_2516F8BDC(a1, a3, v3, ObjectType, a2);
}

Swift::Void __swiftcall OnboardingOpenAppStoreViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2516F7AE0();
}

void sub_2516F7AE0()
{
  v1 = [objc_opt_self() buttonWithType_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v2 = sub_251703134();

  [v1 setTitle:v2 forState:{0, 0xE000000000000000}];

  [v1 addTarget:v0 action:sel_openAppStoreButtonTapped forControlEvents:64];
  v3 = [v1 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() preferredFontForTextStyle_];
    [v4 setFont_];
  }

  v6 = [v1 titleLabel];
  if (v6)
  {
    v7 = v6;
    [v6 setAdjustsFontForContentSizeCategory_];
  }

  v8 = [v0 contentView];
  [v8 addSubview_];

  v33 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_251709E60;
  v10 = [v1 topAnchor];
  v11 = [v0 contentView];
  v12 = [v11 topAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:8.0];
  *(v9 + 32) = v13;
  v14 = [v1 centerXAnchor];
  v15 = [v0 contentView];
  v16 = [v15 centerXAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v9 + 40) = v17;
  v18 = [v1 leadingAnchor];
  v19 = [v0 contentView];
  v20 = [v19 leadingAnchor];

  v21 = [v18 constraintGreaterThanOrEqualToAnchor_];
  *(v9 + 48) = v21;
  v22 = [v1 trailingAnchor];
  v23 = [v0 contentView];
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintLessThanOrEqualToAnchor_];
  *(v9 + 56) = v25;
  v26 = [v1 bottomAnchor];

  v27 = [v0 contentView];
  v28 = [v27 bottomAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v9 + 64) = v29;
  sub_25168B5B4();
  v30 = sub_2517031F4();

  [v33 activateConstraints_];

  sub_251702C94();
  v31 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_primaryButton];
  v32 = sub_251703134();

  [v31 setTitle:v32 forState:{0, 0xE000000000000000}];

  [v31 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v34 = [v0 buttonTray];
  [v34 addButton_];
}

void sub_2516F8104()
{
  v1 = type metadata accessor for AppStoreAssetManager();
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_healthAgencyModel];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
    v6 = v0;
    if ((ENUIPublicHealthAgencyModel.isAppInstalled.getter() & 1) == 0)
    {
      v10 = [v6 view];
      if (v10)
      {
        v11 = v10;
        [v10 setUserInteractionEnabled_];

        v12 = swift_allocObject();
        v12[2] = v6;
        v12[3] = v1;
        v12[4] = sub_2516F8F8C;
        v12[5] = v3;
        v13 = v6;

        sub_2516C39D0(0, 0, v5, v4);
        v15 = v14;
        v16 = swift_allocObject();
        v16[2] = sub_2516C4694;
        v16[3] = v12;
        v16[4] = v5;
        v16[5] = v4;
        v18[4] = sub_2516C4040;
        v18[5] = v16;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 1107296256;
        v18[2] = sub_2516C2438;
        v18[3] = &block_descriptor_14;
        v17 = _Block_copy(v18);

        [v15 addFinishBlock_];

        _Block_release(v17);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    v7 = [objc_opt_self() defaultWorkspace];
    if (v7)
    {
      v8 = v7;
      v9 = sub_251703134();
      [v8 openApplicationWithBundleID_];
    }
  }

  else
  {
    sub_2516F83A4(0, v0);
  }
}

void sub_2516F83A4(char a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_251702DA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_251702D94();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_2516B5AC4(v5);
      if (qword_27F453878 != -1)
      {
        swift_once();
      }

      v10 = sub_251702F84();
      __swift_project_value_buffer(v10, static Logger.general);
      v11 = sub_251702F64();
      v12 = sub_251703324();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_25167E000, v11, v12, "Error: Invalid URL used as parameter", v13, 2u);
        MEMORY[0x2530803C0](v13, -1, -1);
      }
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v14 = objc_opt_self();
      v15 = [v14 sharedApplication];
      v16 = sub_251702D74();
      v17 = [v15 canOpenURL_];

      if (v17)
      {
        v18 = [v14 sharedApplication];
        v19 = sub_251702D74();
        sub_2516991DC(MEMORY[0x277D84F90]);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_251699304();
        v20 = sub_2517030F4();

        [v18 openURL:v19 options:v20 completionHandler:0];
      }

      else
      {
        v21 = [objc_opt_self() defaultWorkspace];
        if (!v21)
        {
          __break(1u);
          return;
        }

        v22 = v21;
        v23 = sub_251703134();
        [v22 openApplicationWithBundleID_];

        if (qword_27F453878 != -1)
        {
          swift_once();
        }

        v24 = sub_251702F84();
        __swift_project_value_buffer(v24, static Logger.general);
        v25 = sub_251702F64();
        v26 = sub_251703324();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_25167E000, v25, v26, "Error: Could not open URL", v27, 2u);
          MEMORY[0x2530803C0](v27, -1, -1);
        }
      }

      (*(v7 + 8))(v9, v6);
    }
  }
}

id OnboardingOpenAppStoreViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id OnboardingOpenAppStoreViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id OnboardingOpenAppStoreViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2516F8BDC(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v9 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_appStoreURL];
  *v9 = 0xD000000000000029;
  *(v9 + 1) = 0x800000025170A8C0;
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_primaryButton;
  *&a3[v10] = [objc_opt_self() boldButton];
  v11 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_flow];
  *v11 = a1;
  *(v11 + 1) = a5;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_healthAgencyModel] = a2;
  v12 = qword_28151EB58;
  swift_unknownObjectRetain();
  v13 = a2;
  if (v12 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_251708520;
  v15 = *&v13[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
  v16 = *&v13[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name + 8];
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_25169F41C();
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;

  sub_251703184();

  v17 = sub_251703134();

  v18 = sub_251703134();

  v19 = sub_251703134();
  v20 = [objc_opt_self() systemImageNamed_];

  v29.receiver = a3;
  v29.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v29, sel_initWithTitle_detailText_icon_contentLayout_, v17, v18, v20, 3);

  v22 = v21;
  v23 = [v22 headerView];
  v24 = [objc_opt_self() systemBlueColor];
  [v23 setTintColor_];

  v25 = [v22 headerView];
  LODWORD(v26) = 1036831949;
  [v25 setTitleHyphenationFactor_];

  swift_unknownObjectRelease();
  return v22;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id VaccinationQuestionViewController.__allocating_init(flow:agencyModel:)(unint64_t a1, unint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_2516FB118(a1, a3, v7, ObjectType, a2);
}

id VaccinationQuestionViewController.init(flow:agencyModel:)(unint64_t a1, unint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return sub_2516FB118(a1, a3, v3, ObjectType, a2);
}

void sub_2516F906C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4539F0, &qword_251706F70);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v27[-v6];
  v8 = [v0 viewIfLoaded];
  [v8 setNeedsLayout];

  v9 = [v1 tableView];
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource];
  if (!v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = v9;
  v27[15] = 1;
  v12 = v10;
  sub_251703034();

  v13 = sub_251702EE4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = sub_251702EB4();
  (*(v14 + 8))(v7, v13);
  v16 = [v11 cellForRowAtIndexPath_];

  if (v16)
  {
    type metadata accessor for VerificationCheckmarkCell();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v17[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated] & 1;
      [v17 setNeedsLayout];
    }
  }

LABEL_8:
  v18 = [v1 tableView];
  if (!v18)
  {
    return;
  }

  v19 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource];
  if (!v19)
  {
    goto LABEL_18;
  }

  v20 = v18;
  v27[14] = 2;
  v21 = v19;
  sub_251703034();

  v22 = sub_251702EE4();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v5, 1, v22) == 1)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v24 = sub_251702EB4();
  (*(v23 + 8))(v5, v22);
  v25 = [v20 cellForRowAtIndexPath_];

  if (v25)
  {
    type metadata accessor for VerificationCheckmarkCell();
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v26[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = ((v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated] != 2) ^ v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated]) & 1;
      [v26 setNeedsLayout];
    }
  }
}

Swift::Void __swiftcall VaccinationQuestionViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_2516F9624();
  v1 = [v0 navigationItem];
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v5 = 0u;
  v6 = 0u;
  v2 = sub_251703134();

  v3 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v4 = [v3 initWithTitle:v2 style:0 target:0 action:{0, v5, v6}];

  swift_unknownObjectRelease();
  [v1 setBackBarButtonItem_];
}

void sub_2516F9624()
{
  v1 = v0;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_primaryButton];
  v3 = sub_251703134();
  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v4 = [v0 buttonTray];
  [v4 addButton_];

  sub_251702C94();
  v5 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_secondaryButton];
  v6 = sub_251703134();
  [v5 setTitle:v6 forState:{0, 0xE000000000000000}];

  [v5 addTarget:v0 action:sel_didTapSecondaryButton forControlEvents:64];
  v7 = [v0 buttonTray];
  [v7 addButton_];

  v8 = [objc_allocWithZone(type metadata accessor for VerificationTableView()) init];
  [v0 setTableView_];

  v9 = [v0 tableView];
  if (!v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  [v9 setDelegate_];

  v11 = [v0 tableView];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  type metadata accessor for AuthorityTextCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = sub_251703134();
  [v12 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v14];

  v15 = [v0 tableView];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  type metadata accessor for VerificationCheckmarkCell();
  v17 = swift_getObjCClassFromMetadata();
  v18 = sub_251703134();
  [v16 registerClass:v17 forCellReuseIdentifier:v18];

  v19 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_vaccinatedCell];
  v20 = *&v19[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label];
  sub_251702C94();
  v21 = sub_251703134();

  [v20 setText_];

  v22 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated;
  v19[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated] & 1;
  [v19 setNeedsLayout];
  v23 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_notVaccinatedCell];
  v24 = *&v23[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label];
  sub_251702C94();
  v25 = sub_251703134();

  [v24 setText_];

  v23[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = ((v1[v22] != 2) ^ v1[v22]) & 1;
  [v23 setNeedsLayout];
  if (![v1 tableView])
  {
LABEL_13:
    __break(1u);
    return;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454808, &qword_25170A068));
  v27 = sub_251702FE4();
  v28 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource];
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource] = v27;
  v29 = v27;

  sub_251703004();
  sub_2516F9F98(0);
  v30 = [v1 navigationItem];
  v31 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_didTapCancel];
  [v30 setRightBarButtonItem_];

  v32 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_251708140;
  v34 = [v1 scrollView];
  v35 = [v34 contentLayoutGuide];

  v36 = [v35 heightAnchor];
  v37 = [v1 scrollView];
  v38 = [v37 safeAreaLayoutGuide];

  v39 = [v38 heightAnchor];
  v40 = [v36 constraintGreaterThanOrEqualToAnchor_];

  *(v33 + 32) = v40;
  sub_25168B5B4();
  v41 = sub_2517031F4();

  [v32 activateConstraints_];
}

char *sub_2516F9DD0(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  if (v5)
  {
    if (v5 == 1)
    {
      v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_vaccinatedCell;
    }

    else
    {
      v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_notVaccinatedCell;
    }

    v9 = *(Strong + v8);
  }

  else
  {
    v10 = sub_251703134();
    v11 = sub_251702EB4();
    v12 = [a1 dequeueReusableCellWithIdentifier:v10 forIndexPath:v11];

    type metadata accessor for AuthorityTextCell();
    v9 = swift_dynamicCastClassUnconditional();
    v13 = *&v7[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_healthAgencyModel];
    v14 = *(v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header);
    v15 = (v13 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText);
    v16 = *v15;
    v17 = v15[1];
    v18 = objc_allocWithZone(type metadata accessor for OnboardingAuthorityTextView());
    v19 = v14;

    v20 = sub_2516DD44C(v19, v16, v17, 20.0, 20.0, 20.0, 20.0);
    v21 = *&v9[OBJC_IVAR____TtC28HealthExposureNotificationUI17AuthorityTextCell_authorityTextView];
    *&v9[OBJC_IVAR____TtC28HealthExposureNotificationUI17AuthorityTextCell_authorityTextView] = v20;
    v22 = v20;
    sub_2516FDCBC(v21);

    v7 = v21;
  }

  return v9;
}

id sub_2516F9F98(char a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4547F8, &unk_25170A058);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  result = [v1 isViewLoaded];
  if (!result)
  {
    return result;
  }

  sub_2516FB768();
  sub_2516FB7BC();
  sub_251702FD4();
  sub_251702FB4();
  v16[15] = 0;
  sub_251702FA4();
  v16[14] = 1;
  result = sub_251702FA4();
  v11 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource];
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  (*(v4 + 16))(v7, v9, v3);
  v12 = v11;
  result = [v2 tableView];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = [result window];

  if (v14)
  {
  }

  sub_251703014();

  v15 = *(v4 + 8);
  v15(v7, v3);
  return (v15)(v9, v3);
}

Swift::Void __swiftcall VaccinationQuestionViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  [*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_primaryButton] setEnabled_];
}

void VaccinationQuestionViewController.tableView(_:shouldHighlightRowAt:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource);
  if (!v3)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return;
  }

  v4 = v3;
  sub_251702FF4();

  if (v5 - 1 >= 2 && v5)
  {
    goto LABEL_6;
  }
}

void VaccinationQuestionViewController.tableView(_:didSelectRowAt:)(void *a1, uint64_t a2)
{
  v4 = sub_251702EB4();
  [a1 deselectRowAtIndexPath:v4 animated:1];

  v5 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource);
  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  sub_251702FF4();

  if (v11 > 1u)
  {
    if (v11 == 2)
    {
      v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated;
      v10 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated);
      if (v10 == 2 || (v10 & 1) != 0)
      {
        v9 = 0;
        goto LABEL_12;
      }

LABEL_11:
      v9 = 2;
      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    return;
  }

  if (!v11)
  {
    return;
  }

  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated;
  v8 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated);
  if (v8 != 2 && (v8 & 1) != 0)
  {
    goto LABEL_11;
  }

  v9 = 1;
LABEL_12:
  *(v2 + v7) = v9;
  sub_2516F906C();
}

void VaccinationQuestionViewController.tableView(_:heightForRowAt:)(void *a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource);
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v3;
  sub_251702FF4();

  if (v8 > 1u)
  {
    if (v8 == 2)
    {
      v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_notVaccinatedCell;
LABEL_8:
      v7 = *(v2 + v6);
      [a1 bounds];
      [v7 systemLayoutSizeFittingSize_];
      return;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (v8)
  {
    v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_vaccinatedCell;
    goto LABEL_8;
  }
}

uint64_t sub_2516FA904()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_flow + 8);
  type metadata accessor for VerificationOnboardingFlow(0);
  if (swift_dynamicCastClass())
  {
    v2 = swift_dynamicCastClassUnconditional();
    v3 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated);
    v4 = &OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_isVaccinated;
LABEL_5:
    v5 = *v4;
    swift_beginAccess();
    *(v2 + v5) = v3;
    goto LABEL_6;
  }

  type metadata accessor for PreAuthorizationFlow(0);
  if (swift_dynamicCastClass())
  {
    v2 = swift_dynamicCastClassUnconditional();
    v3 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated);
    v4 = &OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_isVaccinated;
    goto LABEL_5;
  }

LABEL_6:
  ObjectType = swift_getObjectType();
  return (*(v1 + 120))(v0, &protocol witness table for VaccinationQuestionViewController, ObjectType, v1);
}

id VaccinationQuestionViewController.__allocating_init(title:detailText:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_251703134();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_251703134();

LABEL_6:
  v12 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 symbolName:v11];

  return v12;
}

id VaccinationQuestionViewController.__allocating_init(title:detailText:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = sub_251703134();

  if (a4)
  {
    v10 = sub_251703134();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 icon:a5];

  return v11;
}

id VaccinationQuestionViewController.__allocating_init(title:detailText:symbolName:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 adoptTableViewScrollView:a7 & 1];

  return v15;
}

id VaccinationQuestionViewController.__allocating_init(title:detailText:icon:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 adoptTableViewScrollView:a6 & 1];

  return v13;
}

id VaccinationQuestionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2516FB118(unint64_t a1, void *a2, _BYTE *a3, uint64_t a4, unint64_t a5)
{
  ObjectType = swift_getObjectType();
  a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated] = 2;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource] = 0;
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_vaccinatedCell;
  v11 = type metadata accessor for VerificationCheckmarkCell();
  *&a3[v10] = [objc_allocWithZone(v11) initWithStyle:0 reuseIdentifier:0];
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_notVaccinatedCell;
  *&a3[v12] = [objc_allocWithZone(v11) initWithStyle:0 reuseIdentifier:0];
  v13 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_primaryButton;
  *&a3[v13] = [objc_opt_self() boldButton];
  v14 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_secondaryButton;
  *&a3[v14] = [objc_opt_self() linkButton];
  if (sub_25168A810())
  {
    v15 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_flow];
    *v15 = a1;
    v15[1] = a5;
    *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_healthAgencyModel] = a2;
    v16 = qword_28151EB58;
    swift_unknownObjectRetain();
    v17 = a2;
    if (v16 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    v18 = sub_251703134();

    v23.receiver = a3;
    v23.super_class = ObjectType;
    v19 = objc_msgSendSuper2(&v23, sel_initWithTitle_detailText_icon_, v18, 0, 0, 0xE000000000000000);

    v20 = v19;
    [v20 set:1 shouldInlineButtontray:?];

    swift_unknownObjectRelease();
    return v20;
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453A10, &unk_251706F80);
    v22 = sub_251703194();
    MEMORY[0x25307F580](v22);

    result = sub_251703584();
    __break(1u);
  }

  return result;
}

uint64_t sub_2516FB3F4(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4547F8, &unk_25170A058);
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource);
  if (v8)
  {
    v9 = v8;
    sub_251703024();

    v10 = sub_251702FC4();
    result = (*(v4 + 8))(v7, v3);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v10 + 16) > a1)
    {
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2516FB530(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4547F8, &unk_25170A058);
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource);
  if (v8)
  {
    v9 = v8;
    sub_251703024();

    v10 = sub_251702FC4();
    result = (*(v4 + 8))(v7, v3);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v10 + 16) > a1)
    {
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2516FB6B4()
{
  result = qword_27F4547E8;
  if (!qword_27F4547E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4547E8);
  }

  return result;
}

unint64_t sub_2516FB70C()
{
  result = qword_27F4547F0;
  if (!qword_27F4547F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4547F0);
  }

  return result;
}

unint64_t sub_2516FB768()
{
  result = qword_27F454810;
  if (!qword_27F454810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454810);
  }

  return result;
}

unint64_t sub_2516FB7BC()
{
  result = qword_27F454818;
  if (!qword_27F454818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454818);
  }

  return result;
}

void sub_2516FB810()
{
  if ((*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI23NotificationPreviewView_isPresented) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI23NotificationPreviewView_isPresented) = 1;
    v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI23NotificationPreviewView_content);
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *&v35 = sub_2516FD620;
    *(&v35 + 1) = v3;
    *&v33 = MEMORY[0x277D85DD0];
    *(&v33 + 1) = 1107296256;
    *&v34 = sub_251693A80;
    *(&v34 + 1) = &block_descriptor_24_0;
    v4 = _Block_copy(&v33);
    v5 = v1;

    [v2 animateWithDuration:4 delay:v4 usingSpringWithDamping:0 initialSpringVelocity:1.0 options:0.5 animations:1.0 completion:0.0];
    _Block_release(v4);
    v6 = sub_251703134();
    v7 = objc_opt_self();
    v8 = [v7 animationWithKeyPath_];

    v9 = *(MEMORY[0x277CD9DE8] + 80);
    v37 = *(MEMORY[0x277CD9DE8] + 64);
    v38 = v9;
    v10 = *(MEMORY[0x277CD9DE8] + 112);
    v39 = *(MEMORY[0x277CD9DE8] + 96);
    v40 = v10;
    v11 = *(MEMORY[0x277CD9DE8] + 16);
    v33 = *MEMORY[0x277CD9DE8];
    v34 = v11;
    v12 = *(MEMORY[0x277CD9DE8] + 48);
    v35 = *(MEMORY[0x277CD9DE8] + 32);
    v36 = v12;
    v13 = sub_251703304();
    [v8 setToValue_];

    v14 = sub_251703134();
    v15 = [v7 animationWithKeyPath_];

    v16 = sub_251702EF4();
    [v15 setToValue_];

    v17 = sub_251703134();
    v18 = [v7 animationWithKeyPath_];

    v19 = sub_251702EF4();
    [v18 setToValue_];

    v20 = sub_251703134();
    v21 = [v7 animationWithKeyPath_];

    v22 = sub_251703394();
    [v21 setToValue_];

    v23 = [objc_allocWithZone(MEMORY[0x277CD9E00]) init];
    [v23 setDuration_];
    [v23 setFillMode_];
    [v23 setRemovedOnCompletion_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_2517068A0;
    *(v24 + 32) = v8;
    *(v24 + 40) = v15;
    *(v24 + 48) = v18;
    *(v24 + 56) = v21;
    sub_25168CD90(0, &unk_28151E958, 0x277CD9DF8);
    v25 = v8;
    v26 = v15;
    v27 = v18;
    v28 = v21;
    v29 = sub_2517031F4();

    [v23 setAnimations_];

    v30 = [objc_opt_self() functionWithName_];
    [v23 setTimingFunction_];

    v31 = [v5 layer];
    v32 = sub_251703134();
    [v31 addAnimation:v23 forKey:v32];
  }
}

void sub_2516FBCEC()
{
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI23NotificationPreviewView_isPresented) = 0;
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI23NotificationPreviewView_content);
  v2 = OBJC_IVAR____TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F719NotificationContent_notificationContainer;
  [*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F719NotificationContent_notificationContainer] setAlpha_];
  v3 = *&v1[v2];
  CGAffineTransformMakeScale(&v11, 0.6, 0.6);
  [v3 setTransform_];
  v4 = [v1 layer];
  CATransform3DMakeTranslation(&v11, 0.0, 40.0, 0.0);
  CATransform3DScale(&v10, &v11, 0.8, 0.8, 1.0);
  [v4 setTransform_];

  v5 = [v1 layer];
  LODWORD(v6) = 0.5;
  [v5 setShadowOpacity_];

  v7 = [v1 layer];
  [v7 setShadowRadius_];

  v8 = [v1 layer];
  [v8 setShadowOffset_];

  v9 = [v1 layer];
  [v9 removeAllAnimations];
}

id sub_2516FBEA8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI23NotificationPreviewView_content;
  type metadata accessor for NotificationContent();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC28HealthExposureNotificationUI23NotificationPreviewView_isPresented] = 0;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_allocWithZone(MEMORY[0x277D75348]);
  v17[4] = sub_2516FD534;
  v17[5] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2516FD5A0;
  v17[3] = &block_descriptor_18_0;
  v13 = _Block_copy(v17);
  v14 = v11;
  v15 = [v12 initWithDynamicProvider_];
  _Block_release(v13);

  [v14 setBackgroundColor_];

  sub_2516FC030();
  return v14;
}

void sub_2516FC030()
{
  [v0 setClipsToBounds_];
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23NotificationPreviewView_content];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2517068A0;
  v4 = [v1 widthAnchor];
  v5 = [v0 widthAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 multiplier:0.5];

  *(v3 + 32) = v6;
  v7 = [v1 centerXAnchor];
  v8 = [v0 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v9;
  v10 = [v1 centerYAnchor];
  v11 = [v0 centerYAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v3 + 48) = v12;
  v13 = [v0 heightAnchor];
  v14 = [v1 heightAnchor];
  v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14 constant:32.0];

  *(v3 + 56) = v15;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v16 = sub_2517031F4();

  [v2 activateConstraints_];

  sub_2516FBCEC();
}

void sub_2516FC3C4()
{
  v1 = [v0 layer];
  [v1 setCornerRadius_];

  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v6[4] = sub_2516FD6A8;
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2516FD5A0;
  v6[3] = &block_descriptor_15;
  v4 = _Block_copy(v6);
  v5 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  [v0 setBackgroundColor_];
}

void sub_2516FC60C()
{
  v0 = [objc_opt_self() systemBackgroundColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_28151EB78 = v1;
}

void sub_2516FC678()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F719NotificationContent_notificationContainer);
  v2 = [v1 layer];
  [v2 setCornerRadius_];

  if (qword_28151EB70 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v85 = v1;
    [v1 setBackgroundColor_];
    if (qword_28151E860 != -1)
    {
      swift_once();
    }

    v3 = static NSBundle.exposureNotificationUI;
    v4 = sub_251703134();
    v5 = [objc_opt_self() imageNamed:v4 inBundle:v3];

    if (!v5)
    {
      goto LABEL_21;
    }

    v6 = [v5 imageWithRenderingMode_];

    v83 = v6;
    v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    [v7 setContentMode_];
    v8 = [objc_opt_self() systemRedColor];
    [v7 setTintColor_];

    type metadata accessor for NotificationCapsuleView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    v11 = swift_allocObject();
    *(v11 + 16) = 1;
    v12 = objc_allocWithZone(MEMORY[0x277D75348]);
    *&aBlock.tx = sub_2516FD52C;
    *&aBlock.ty = v11;
    *&aBlock.a = MEMORY[0x277D85DD0];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_2516FD5A0;
    *&aBlock.d = &block_descriptor_15;
    v13 = _Block_copy(&aBlock);
    v1 = v10;
    v14 = [v12 initWithDynamicProvider_];
    _Block_release(v13);

    [v1 setBackgroundColor_];

    v15 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_251707F70;
    *(v17 + 32) = v1;
    *(v17 + 40) = v15;
    *(v17 + 48) = v16;
    v18 = objc_allocWithZone(MEMORY[0x277D75A68]);
    sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
    v19 = v15;
    v20 = v16;
    v87 = v1;
    v82 = v19;
    v81 = v20;
    v21 = sub_2517031F4();

    v22 = [v18 initWithArrangedSubviews_];

    [v22 setAxis_];
    [v22 setAlignment_];
    [v22 setDistribution_];
    [v22 setSpacing_];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251707F60;
    *(inited + 32) = v7;
    *(inited + 40) = v22;
    v24 = v22;
    v25 = v7;
    v26 = v24;
    if ((inited & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x25307F910](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v27 = v25;
    }

    v28 = v27;
    v1 = &selRef_setDidEnterDigit_;
    [v27 setTranslatesAutoresizingMaskIntoConstraints_];
    [v85 addSubview_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v29 = *(inited + 40);
      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  v29 = MEMORY[0x25307F910](1, inited);
LABEL_11:
  v30 = v29;
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  [v85 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_251708140;
  *(v31 + 32) = v85;
  v32 = v85;
  v33 = v32;
  if ((v31 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x25307F910](0, v31);
    goto LABEL_14;
  }

  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = v32;
LABEL_14:
    v35 = v34;
    [v34 setTranslatesAutoresizingMaskIntoConstraints_];
    [v84 addSubview_];

    swift_setDeallocating();
    swift_arrayDestroy();
    v86 = objc_opt_self();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_25170A080;
    v37 = [v33 widthAnchor];
    v38 = [v84 &selRef_init + 6];
    v39 = [v37 constraintEqualToAnchor_];

    *(v36 + 32) = v39;
    v40 = [v33 topAnchor];
    v41 = [v84 &selRef_navigationController];
    v42 = [v40 &selRef:v41 notifyChangeObserversForChangeFrom:? to:? + 5];

    *(v36 + 40) = v42;
    v43 = [v33 bottomAnchor];
    v44 = [v84 bottomAnchor];
    v45 = [v43 &selRef:v44 notifyChangeObserversForChangeFrom:? to:? + 5];

    *(v36 + 48) = v45;
    v46 = [v33 centerXAnchor];
    v47 = [v84 centerXAnchor];
    v48 = [v46 &selRef:v47 notifyChangeObserversForChangeFrom:? to:? + 5];

    *(v36 + 56) = v48;
    v49 = [v25 centerYAnchor];
    v50 = [v87 centerYAnchor];
    v51 = [v49 &selRef:v50 notifyChangeObserversForChangeFrom:? to:? + 5];

    *(v36 + 64) = v51;
    v52 = [v25 leadingAnchor];
    v53 = [v33 leadingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:6.0];

    *(v36 + 72) = v54;
    v55 = [v25 widthAnchor];
    v56 = [v55 constraintEqualToConstant_];

    *(v36 + 80) = v56;
    v57 = [v25 heightAnchor];
    v58 = [v57 constraintEqualToConstant_];

    *(v36 + 88) = v58;
    v59 = [v26 topAnchor];
    v60 = [v33 topAnchor];
    v61 = [v59 constraintEqualToAnchor:v60 constant:20.0];

    *(v36 + 96) = v61;
    v62 = [v26 bottomAnchor];
    v63 = [v33 bottomAnchor];
    v64 = [v62 constraintEqualToAnchor:v63 constant:-20.0];

    *(v36 + 104) = v64;
    v65 = [v26 leadingAnchor];
    v66 = [v25 trailingAnchor];

    v67 = [v65 constraintEqualToAnchor:v66 constant:8.0];
    *(v36 + 112) = v67;
    v68 = [v26 trailingAnchor];
    v69 = [v33 trailingAnchor];
    v70 = [v68 constraintEqualToAnchor:v69 constant:-14.0];

    *(v36 + 120) = v70;
    v71 = [v87 widthAnchor];

    v72 = [v26 widthAnchor];
    v73 = [v71 constraintEqualToAnchor_];

    *(v36 + 128) = v73;
    v74 = [v82 widthAnchor];

    v75 = [v26 widthAnchor];
    v76 = [v74 constraintEqualToAnchor:v75 multiplier:0.7];

    *(v36 + 136) = v76;
    v77 = [v81 widthAnchor];

    v78 = [v26 widthAnchor];
    v79 = [v77 constraintEqualToAnchor:v78 multiplier:0.5];

    *(v36 + 144) = v79;
    sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
    v80 = sub_2517031F4();

    [v86 activateConstraints_];

    [v33 setAlpha_];
    CGAffineTransformMakeScale(&aBlock, 0.6, 0.6);
    [v33 setTransform_];

    return;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

id sub_2516FD4A0(void *a1, char a2)
{
  v3 = [a1 userInterfaceStyle];
  v4 = objc_opt_self();
  v5 = &selRef_systemGrayColor;
  if (v3 != 2)
  {
    v5 = &selRef_systemGray2Color;
  }

  v6 = &selRef_systemGray4Color;
  if (v3 != 2)
  {
    v6 = &selRef_systemGray5Color;
  }

  if ((a2 & 1) == 0)
  {
    v5 = v6;
  }

  v7 = [v4 *v5];

  return v7;
}

id sub_2516FD534(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemGray4Color;
  if (v1 != 2)
  {
    v3 = &selRef_systemGray6Color;
  }

  v4 = [v2 *v3];

  return v4;
}

id sub_2516FD5A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2516FD620()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F719NotificationContent_notificationContainer);
  [v1 setAlpha_];
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

id sub_2516FD6AC()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI21VerificationTableView____lazy_storage___heightConstraint;
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI21VerificationTableView____lazy_storage___heightConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI21VerificationTableView____lazy_storage___heightConstraint];
  }

  else
  {
    v4 = [v0 heightAnchor];
    v5 = [v4 constraintEqualToConstant_];

    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_2516FD74C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI21VerificationTableView____lazy_storage___heightConstraint] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for VerificationTableView();
  v2 = objc_msgSendSuper2(&v11, sel_initWithFrame_style_, 2, 0.0, 0.0, 0.0, 0.0);
  v3 = sub_2516FD6AC();
  [v3 setActive_];

  v4 = *&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI21VerificationTableView____lazy_storage___heightConstraint];
  type metadata accessor for UILayoutPriority(0);
  sub_2516FED64();
  v5 = v4;
  sub_251702F94();
  LODWORD(v6) = v10;
  [v5 setPriority_];

  [v2 setBackgroundColor_];
  v7 = v2;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setScrollEnabled_];

  [v7 setClipsToBounds_];
  [v7 setEstimatedSectionHeaderHeight_];
  [v7 setEstimatedSectionFooterHeight_];
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v7 setTableHeaderView_];

  return v7;
}

id sub_2516FD99C(uint64_t a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for VerificationTableView();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  result = [v1 contentSize];
  if (v4 != 0.0 || v3 != 0.0)
  {
    do
    {
      [v1 contentSize];
      v9 = v8;
      v11 = v10;
      v12 = sub_2516FD6AC();
      [v12 setConstant_];

      v13 = [v1 superview];
      if (v13)
      {
        v14 = v13;
        [v13 layoutIfNeeded];
      }

      result = [v1 contentSize];
    }

    while (v6 != v9 || v5 != v11);
  }

  return result;
}

id sub_2516FDB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI17AuthorityTextCell_authorityTextView] = 0;
  if (a3)
  {
    v5 = sub_251703134();
  }

  else
  {
    v5 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for AuthorityTextCell();
  v6 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v5);

  v7 = v6;
  [v7 setBackgroundColor_];
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v7 setBackgroundView_];

  return v7;
}

void sub_2516FDCBC(void *a1)
{
  v2 = v1;
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v3 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI17AuthorityTextCell_authorityTextView];
  if (v3)
  {
    v4 = v3;
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [v1 contentView];
    [v5 addSubview_];

    v6 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2517068A0;
    v8 = [v4 leadingAnchor];
    v9 = [v2 contentView];
    v10 = [v9 leadingAnchor];

    v11 = [v8 constraintEqualToAnchor_];
    *(v7 + 32) = v11;
    v12 = [v4 trailingAnchor];
    v13 = [v2 contentView];
    v14 = [v13 trailingAnchor];

    v15 = [v12 constraintEqualToAnchor_];
    *(v7 + 40) = v15;
    v16 = [v4 topAnchor];
    v17 = [v2 contentView];
    v18 = [v17 topAnchor];

    v19 = [v16 constraintEqualToAnchor:v18 constant:25.0];
    *(v7 + 48) = v19;
    v20 = [v4 bottomAnchor];

    v21 = [v2 contentView];
    v22 = [v21 bottomAnchor];

    v23 = [v20 constraintEqualToAnchor_];
    *(v7 + 56) = v23;
    sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
    v24 = sub_2517031F4();

    [v6 activateConstraints_];
  }
}

void sub_2516FE058()
{
  v0 = *MEMORY[0x277D74420];
  v1 = *MEMORY[0x277D76918];
  v2 = sub_2516C19DC(v1, v0, 0, 0, 0, 0);

  qword_27F457EA8 = v2;
}

void sub_2516FE0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_251703134();
  }

  else
  {
    v5 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for VerificationCell();
  v6 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_, a1, v5);

  v7 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v8 = v6;
  v9 = [v7 init];
  [v8 setBackgroundView_];

  v10 = [v8 backgroundView];
  if (v10)
  {

    v11 = [objc_opt_self() secondarySystemBackgroundColor];
    [v10 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id sub_2516FE30C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_2516FE37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_accessoryImageView;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v3[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = 0;
  if (a3)
  {
    v9 = sub_251703134();
  }

  else
  {
    v9 = 0;
  }

  v57.receiver = v3;
  v57.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v57, sel_initWithStyle_reuseIdentifier_, a1, v9);

  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label;
  v12 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label];
  v13 = qword_27F4538A8;
  v14 = v10;
  v15 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  [v15 setFont_];

  [*&v10[v11] setAdjustsFontForContentSizeCategory_];
  [*&v10[v11] setNumberOfLines_];
  v16 = OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_accessoryImageView;
  [*&v14[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_accessoryImageView] setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  LODWORD(v17) = 1148846080;
  [*&v14[v16] setContentHuggingPriority:0 forAxis:v17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_251707F60;
  v19 = *&v10[v11];
  *(v18 + 32) = v19;
  v20 = *&v14[v16];
  *(v18 + 40) = v20;
  v21 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
  v22 = v19;
  v23 = v20;
  v24 = sub_2517031F4();

  v25 = [v21 initWithArrangedSubviews_];

  v26 = v25;
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 setAlignment_];
  [v26 setSpacing_];
  v27 = [v14 contentView];
  [v27 addSubview_];

  v56 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_251708A20;
  v29 = [v26 leadingAnchor];
  v30 = [v14 contentView];
  v31 = [v30 layoutMarginsGuide];

  v32 = [v31 leadingAnchor];
  v33 = [v29 constraintEqualToAnchor_];

  *(v28 + 32) = v33;
  v34 = [v26 trailingAnchor];
  v35 = [v14 contentView];
  v36 = [v35 layoutMarginsGuide];

  v37 = [v36 trailingAnchor];
  v38 = [v34 constraintEqualToAnchor_];

  *(v28 + 40) = v38;
  v39 = [v26 centerYAnchor];
  v40 = [v14 contentView];
  v41 = [v40 centerYAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  *(v28 + 48) = v42;
  v43 = [v26 topAnchor];
  v44 = [v14 contentView];
  v45 = [v44 topAnchor];

  v46 = [v43 constraintGreaterThanOrEqualToAnchor:v45 constant:8.0];
  *(v28 + 56) = v46;
  v47 = [v26 bottomAnchor];

  v48 = [v14 contentView];
  v49 = [v48 bottomAnchor];

  v50 = [v47 constraintLessThanOrEqualToAnchor:v49 constant:8.0];
  *(v28 + 64) = v50;
  v51 = [v14 contentView];

  v52 = [v51 heightAnchor];
  v53 = [v52 constraintGreaterThanOrEqualToConstant_];

  *(v28 + 72) = v53;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v54 = sub_2517031F4();

  [v56 activateConstraints_];

  return v14;
}

uint64_t sub_2516FE9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    a4 = sub_251703164();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a5(a3, a4, v8);
}

void sub_2516FEB2C()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_accessoryImageView];
  v2 = OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked;
  v3 = sub_251703134();

  v4 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
  if (v0[v2])
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_opt_self() secondaryLabelColor];
  }

  [v1 setTintColor_];
}

void sub_2516FECB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_accessoryImageView);
}

unint64_t sub_2516FED64()
{
  result = qword_28151E948;
  if (!qword_28151E948)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151E948);
  }

  return result;
}

id OnboardingAddRegionWelcomeViewController.__allocating_init(flow:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  ObjectType = swift_getObjectType();

  return sub_2516FFAFC(a1, v5, ObjectType, a2);
}

id OnboardingAddRegionWelcomeViewController.init(flow:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_2516FFAFC(a1, v2, ObjectType, a2);
}

Swift::Void __swiftcall OnboardingAddRegionWelcomeViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2516FEEA8();
}

void sub_2516FEEA8()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_primaryButton];
  v2 = sub_251703134();

  [v1 setTitle:v2 forState:{0, 0xE000000000000000}];

  [v1 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];

  sub_251702C94();
  v4 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_secondaryButton];
  v5 = sub_251703134();

  [v4 setTitle:v5 forState:{0, 0xE000000000000000}];

  [v4 addTarget:v0 action:sel_didTapSecondaryButton forControlEvents:64];
  v6 = [v0 buttonTray];
  [v6 addButton_];

  type metadata accessor for MultilineButton();
  v7 = [swift_getObjCClassFromMetadata() buttonWithType_];
  sub_251702C94();
  v8 = sub_251703134();

  [v7 setTitle:v8 forState:{0, 0xE000000000000000}];

  [v7 addTarget:v0 action:sel_didTapHowExposureNotificationsWork forControlEvents:64];
  v9 = [v7 titleLabel];
  if (v9)
  {
    v10 = v9;
    [v9 setTextAlignment_];
  }

  v11 = [v7 titleLabel];
  [v11 setNumberOfLines_];

  v12 = [v7 titleLabel];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() preferredFontForTextStyle_];
    [v13 setFont_];
  }

  v15 = [v7 titleLabel];
  if (v15)
  {
    v16 = v15;
    [v15 setAdjustsFontForContentSizeCategory_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_251708140;
  *(v17 + 32) = v7;
  v18 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
  v41 = v7;
  v19 = sub_2517031F4();

  v20 = [v18 initWithArrangedSubviews_];

  [v20 setAxis_];
  [v20 setAlignment_];
  v21 = v20;
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = [v0 contentView];
  [v22 addSubview_];

  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2517068A0;
  v25 = [v21 leadingAnchor];
  v26 = [v0 contentView];
  v27 = [v26 leadingAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  *(v24 + 32) = v28;
  v29 = [v21 trailingAnchor];
  v30 = [v0 contentView];
  v31 = [v30 trailingAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  *(v24 + 40) = v32;
  v33 = [v21 topAnchor];
  v34 = [v0 contentView];
  v35 = [v34 topAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  *(v24 + 48) = v36;
  v37 = [v21 bottomAnchor];

  v38 = [v0 contentView];
  v39 = [v38 bottomAnchor];

  v40 = [v37 constraintEqualToAnchor_];
  *(v24 + 56) = v40;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v42 = sub_2517031F4();

  [v23 activateConstraints_];
}

id OnboardingAddRegionWelcomeViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id OnboardingAddRegionWelcomeViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id OnboardingAddRegionWelcomeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2516FFAFC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_primaryButton;
  *&a2[v8] = [objc_opt_self() boldButton];
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_secondaryButton;
  *&a2[v9] = [objc_opt_self() linkButton];
  v10 = &a2[OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_flow];
  *v10 = a1;
  *(v10 + 1) = a4;
  v11 = qword_28151EB58;
  swift_unknownObjectRetain();
  if (v11 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v12 = sub_251703134();

  sub_251702C94();
  v13 = sub_251703134();

  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v14 = static NSBundle.exposureNotificationUI;
  v15 = sub_251703134();
  v16 = [objc_opt_self() imageNamed:v15 inBundle:{v14, 0xE000000000000000}];

  v24.receiver = a2;
  v24.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v24, sel_initWithTitle_detailText_icon_contentLayout_, v12, v13, v16, 2);

  v18 = v17;
  v19 = [v18 headerView];
  v20 = [objc_opt_self() systemPinkColor];
  [v19 setTintColor_];

  v21 = [v18 headerView];
  LODWORD(v22) = 1036831949;
  [v21 setTitleHyphenationFactor_];

  swift_unknownObjectRelease();
  return v18;
}

id OnboardingAnalyticsViewController.__allocating_init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_251701190(a1, a3, v7, ObjectType, a2);
}

id OnboardingAnalyticsViewController.init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return sub_251701190(a1, a3, v3, ObjectType, a2);
}

Swift::Void __swiftcall OnboardingAnalyticsViewController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_2516FFF7C();
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton_];
}

void sub_2516FFF7C()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];

    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    v5 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_primaryButton];
    v6 = sub_251703134();

    [v5 setTitle:v6 forState:{0, 0xE000000000000000}];

    [v5 addTarget:v1 action:sel_didTapPrimaryButton forControlEvents:64];
    v7 = [v1 buttonTray];
    [v7 addButton_];

    sub_251702C94();
    v8 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_secondaryButton];
    v9 = sub_251703134();

    [v8 setTitle:v9 forState:{0, 0xE000000000000000}];

    [v8 addTarget:v1 action:sel_didTapSecondaryButton forControlEvents:64];
    v10 = [v1 buttonTray];
    [v10 addButton_];

    v11 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_healthAgencyModel];
    v12 = *(v11 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header);
    v13 = (v11 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentText);
    v14 = v13[1];
    if (v14)
    {
      v15 = *v13;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v13[1];
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = objc_allocWithZone(type metadata accessor for OnboardingAuthorityTextView());
    v18 = v12;

    v19 = sub_2516DD44C(v18, v15, v16, 20.0, 20.0, 20.0, 20.0);
    v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v21 = sub_251701388();
    [v20 setAttributedText_];

    [v20 setAdjustsFontForContentSizeCategory_];
    [v20 setNumberOfLines_];
    [v20 setTextAlignment_];
    [v20 setUserInteractionEnabled_];
    v22 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_didTapLearnMore];
    v23 = v20;
    [v23 addGestureRecognizer_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_251707F60;
    *(v24 + 32) = v19;
    *(v24 + 40) = v23;
    v25 = objc_allocWithZone(MEMORY[0x277D75A68]);
    sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
    v48 = v19;
    v26 = sub_2517031F4();

    v27 = [v25 initWithArrangedSubviews_];

    [v27 setSpacing_];
    [v27 setAxis_];
    v28 = v27;
    [v28 setTranslatesAutoresizingMaskIntoConstraints_];
    v29 = [v1 contentView];
    [v29 addSubview_];

    v47 = objc_opt_self();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2517068A0;
    v31 = [v28 leadingAnchor];
    v32 = [v1 contentView];
    v33 = [v32 leadingAnchor];

    v34 = [v31 constraintEqualToAnchor:v33 constant:20.0];
    *(v30 + 32) = v34;
    v35 = [v28 trailingAnchor];
    v36 = [v1 contentView];
    v37 = [v36 trailingAnchor];

    v38 = [v35 constraintEqualToAnchor:v37 constant:-20.0];
    *(v30 + 40) = v38;
    v39 = [v28 topAnchor];
    v40 = [v1 contentView];
    v41 = [v40 topAnchor];

    v42 = [v39 constraintEqualToAnchor_];
    *(v30 + 48) = v42;
    v43 = [v28 bottomAnchor];

    v44 = [v1 contentView];
    v45 = [v44 bottomAnchor];

    v46 = [v43 constraintEqualToAnchor_];
    *(v30 + 56) = v46;
    sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
    v49 = sub_2517031F4();

    [v47 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

void sub_25170075C()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];

    if (!v3)
    {
      __break(1u);
      return;
    }

    [v3 setUserInteractionEnabled_];
  }

  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_healthAgencyModel];
  v5 = static ENManagerAdapter.defaultAdapter;
  v6 = *(v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
  v7 = (v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentVersion);
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  *(v11 + 32) = 1;
  *(v11 + 40) = v5;
  *(v11 + 48) = v6;
  *(v11 + 56) = sub_251701368;
  *(v11 + 64) = v10;
  v12 = v5;
  v13 = v6;
  v14 = v12;
  v15 = v13;

  v16 = v0;

  sub_2516C59C8(sub_2516CFC48, v11);
}

void sub_251700980()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];

    if (!v3)
    {
      __break(1u);
      return;
    }

    [v3 setUserInteractionEnabled_];
  }

  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_healthAgencyModel];
  v5 = static ENManagerAdapter.defaultAdapter;
  v6 = *(v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
  v7 = (v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentVersion);
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  *(v11 + 32) = 0;
  *(v11 + 40) = v5;
  *(v11 + 48) = v6;
  *(v11 + 56) = sub_251701348;
  *(v11 + 64) = v10;
  v12 = v5;
  v13 = v6;
  v14 = v12;
  v15 = v13;

  v16 = v0;

  sub_2516C59C8(sub_2516CA030, v11);
}

void sub_251700B58(void *a1, char *a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v5 = sub_251702F84();
    __swift_project_value_buffer(v5, static Logger.general);
    v6 = a1;
    v7 = sub_251702F64();
    v8 = sub_251703324();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25[0] = v10;
      *v9 = 136315138;
      v11 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454898, qword_25170A288);
      v12 = sub_251703194();
      v14 = sub_251693FCC(v12, v13, v25);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_25167E000, v7, v8, "Failed to set share analytics: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x2530803C0](v10, -1, -1);
      MEMORY[0x2530803C0](v9, -1, -1);
    }

    v15 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_healthAgencyModel];
    v16 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus;
    swift_beginAccess();
    *(v15 + v16) = 0;
  }

  else
  {
    v18 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_healthAgencyModel];
    v19 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus;
    swift_beginAccess();
    *(v18 + v19) = a3;
  }

  v20 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_flow + 8];
  ObjectType = swift_getObjectType();
  (*(v20 + 120))(a2, &protocol witness table for OnboardingAnalyticsViewController, ObjectType, v20);
  v22 = [a2 navigationController];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 view];

    if (v24)
    {
      [v24 setUserInteractionEnabled_];
    }

    else
    {
      __break(1u);
    }
  }
}

id OnboardingAnalyticsViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id OnboardingAnalyticsViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id OnboardingAnalyticsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_251701190(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_primaryButton;
  *&a3[v10] = [objc_opt_self() boldButton];
  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_secondaryButton;
  *&a3[v11] = [objc_opt_self() linkButton];
  v12 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_flow];
  *v12 = a1;
  *(v12 + 1) = a5;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_healthAgencyModel] = a2;
  v13 = qword_28151EB58;
  swift_unknownObjectRetain();
  v14 = a2;
  if (v13 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v15 = sub_251703134();

  v18.receiver = a3;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithTitle_detailText_icon_contentLayout_, v15, 0, 0, 3, 0xE000000000000000);

  swift_unknownObjectRelease();
  return v16;
}

id sub_251701388()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454188, &qword_251708B28);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v40 - v1;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v3 = sub_251702C94();
  v5 = v4;
  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v6 = swift_allocObject();
  v45 = xmmword_251708520;
  *(v6 + 16) = xmmword_251708520;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_25169F41C();
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;

  v7 = sub_251703184();
  v9 = v8;

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454190, &unk_251708B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2517068B0;
  v11 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v12 = *MEMORY[0x277D76968];
  v13 = *MEMORY[0x277D74418];
  v14 = v11;
  v15 = sub_2516C19DC(v12, v13, 0, 0, 0, 0);
  v16 = sub_25168CD90(0, &unk_28151E890, 0x277D74300);
  *(inited + 40) = v15;
  v17 = *MEMORY[0x277D740C0];
  *(inited + 64) = v16;
  *(inited + 72) = v17;
  v18 = objc_opt_self();
  v42 = v17;
  v43 = v18;
  v19 = [v18 secondaryLabelColor];
  v41 = sub_25168CD90(0, &qword_28151E880, 0x277D75348);
  *(inited + 104) = v41;
  *(inited + 80) = v19;
  sub_251698DC4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F18, &qword_2517083C0);
  swift_arrayDestroy();
  v20 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v21 = sub_251703134();
  type metadata accessor for Key(0);
  v23 = v22;
  sub_2516AE954();
  v40[1] = v23;
  v24 = sub_2517030F4();

  v25 = [v20 initWithString:v21 attributes:v24];

  v48 = v7;
  v49 = v9;
  v46 = v3;
  v47 = v5;
  v26 = sub_251702EA4();
  (*(*(v26 - 8) + 56))(v2, 1, 1, v26);
  sub_2516B4924();
  v27 = sub_251703404();
  v29 = v28;
  LOBYTE(v24) = v30;
  sub_25168B718(v2, &qword_27F454188, &qword_251708B28);

  if (v24)
  {
  }

  else
  {
    v48 = v27;
    v49 = v29;
    v46 = v7;
    v47 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4541A0, qword_251708B40);
    sub_2516B4978();
    v31 = sub_2517033D4();
    v33 = v32;
    v34 = swift_initStackObject();
    *(v34 + 16) = v45;
    v35 = v42;
    *(v34 + 32) = v42;
    v36 = v35;
    v37 = [v43 systemBlueColor];
    *(v34 + 64) = v41;
    *(v34 + 40) = v37;
    sub_251698DC4(v34);
    swift_setDeallocating();
    sub_25168B718(v34 + 32, &qword_27F453F18, &qword_2517083C0);
    v38 = sub_2517030F4();

    [v25 addAttributes:v38 range:{v31, v33}];
  }

  return v25;
}

void sub_251701920(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 3)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  if (sub_251703474() != 3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x25307F910](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v3 = *(a1 + 32);
  }

  v4 = v3;
  [v3 floatValue];
  v6 = v5;

  if (v2)
  {
    v7 = MEMORY[0x25307F910](1, a1);
LABEL_10:
    v8 = v7;
    [v7 floatValue];
    v10 = v9;

    if (v2)
    {
      v11 = MEMORY[0x25307F910](2, a1);
LABEL_14:
      v12 = v11;

      v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      [v12 floatValue];
      v15 = v14;

      [v13 initWithRed:v6 green:v10 blue:v15 alpha:1.0];
      return;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v11 = *(a1 + 48);
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v7 = *(a1 + 40);
    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_251701AB4()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = 0.0;
  v14[0] = 0.0;
  v12 = 0.0;
  [v0 getRed:v14 green:&v13 blue:&v12 alpha:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_251707F70;
  v2 = v14[0];
  v3 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v4 = v2;
  *(v1 + 32) = [v3 initWithFloat_];
  v5 = v13;
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v7 = v5;
  *(v1 + 40) = [v6 initWithFloat_];
  v8 = v12;
  v9 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v10 = v8;
  *(v1 + 48) = [v9 initWithFloat_];
  return v1;
}

id sub_251701D50(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MultilineButton();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_251701E00()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionAlreadyExistsViewController_healthAgencyModel];
  if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
  {
    if (*(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion) < 2)
    {
      goto LABEL_9;
    }

    v3 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8);
    if (v3)
    {
      v4 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
      if (qword_28151EB60 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v5 = static ENManagerAdapter.defaultAdapter;
      _s28HealthExposureNotificationUI16ENManagerAdapterC17tccContainsRecord19forBundleIdentifierSbSS_tF_0(v4, v3);
      v7 = v6;

      if (v7)
      {
        goto LABEL_9;
      }
    }
  }

  if ((ENUIPublicHealthAgencyModel.isAppInstalled.getter() & 1) != 0 && (*(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isAuthorized) & 1) == 0)
  {
LABEL_9:
    v8 = [objc_opt_self() buttonWithType_];
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_251708520;
    v11 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
    v10 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name + 8);
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_25169F41C();
    *(v9 + 32) = v11;
    *(v9 + 40) = v10;

    sub_251703184();

    v12 = sub_251703134();

    [v8 setTitle:v12 forState:{0, 0xE000000000000000}];

    v13 = [v8 titleLabel];
    if (v13)
    {
      v14 = v13;
      [v13 setLineBreakMode_];
    }

    v15 = [v8 titleLabel];
    [v15 setNumberOfLines_];

    [v8 addTarget:v1 action:sel_openAppButtonTapped forControlEvents:64];
    v16 = [v8 titleLabel];
    if (v16)
    {
      v17 = v16;
      v18 = [objc_opt_self() preferredFontForTextStyle_];
      [v17 setFont_];
    }

    v19 = [v8 titleLabel];
    if (v19)
    {
      v20 = v19;
      [v19 setAdjustsFontForContentSizeCategory_];
    }

    v21 = [v1 contentView];
    [v21 addSubview_];

    v22 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_251709E60;
    v24 = [v8 topAnchor];
    v25 = [v1 contentView];
    v26 = [v25 topAnchor];

    v27 = [v24 constraintEqualToAnchor:v26 constant:8.0];
    *(v23 + 32) = v27;
    v28 = [v8 centerXAnchor];
    v29 = [v1 contentView];
    v30 = [v29 centerXAnchor];

    v31 = [v28 constraintEqualToAnchor_];
    *(v23 + 40) = v31;
    v32 = [v8 leadingAnchor];
    v33 = [v1 contentView];
    v34 = [v33 leadingAnchor];

    v35 = [v32 constraintGreaterThanOrEqualToAnchor_];
    *(v23 + 48) = v35;
    v36 = [v8 trailingAnchor];
    v37 = [v1 contentView];
    v38 = [v37 trailingAnchor];

    v39 = [v36 constraintLessThanOrEqualToAnchor_];
    *(v23 + 56) = v39;
    v40 = [v8 bottomAnchor];

    v41 = [v1 contentView];
    v42 = [v41 bottomAnchor];

    v43 = [v40 constraintEqualToAnchor_];
    *(v23 + 64) = v43;
    sub_25168B5B4();
    v44 = sub_2517031F4();

    [v22 activateConstraints_];
  }

  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v45 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionAlreadyExistsViewController_primaryButton];
  v46 = sub_251703134();

  [v45 setTitle:v46 forState:{0, 0xE000000000000000}];

  [v45 addTarget:v1 action:sel_didTapPrimaryButton forControlEvents:64];
  v47 = [v1 buttonTray];
  [v47 addButton_];
}

void sub_25170263C()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    if (*(*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionAlreadyExistsViewController_healthAgencyModel) + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8))
    {

      v3 = sub_251703134();
    }

    else
    {
      v3 = 0;
    }

    [v2 openApplicationWithBundleID_];
  }
}

id sub_2517027C8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for OnboardingRegionAlreadyExistsViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}