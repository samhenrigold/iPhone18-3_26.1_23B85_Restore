void sub_20BE83AD4(double a1, double a2)
{
  v3 = v2[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentContentInsetBehavior + 16];
  if (v3 > 0xFB || (v2[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_isTransitioningContentInset] & 1) != 0)
  {
    return;
  }

  if (v3 >> 6)
  {
    if (v3 >> 6 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v2[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentContentInsetBehavior + 16])
  {
LABEL_8:
    [*(*(*&v2[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) adjustedContentInset];
    v4 = v6 + a2 >= 4.0;
    goto LABEL_9;
  }

  v4 = sub_20BE8B400(&OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_page, a1, a2);
LABEL_9:
  v7 = [v2 navigationItem];
  v8 = [v7 leftBarButtonItems];

  if (v8)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v9 = sub_20C13CC74();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = [v2 navigationItem];
  v11 = [v10 rightBarButtonItems];

  if (v11)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v12 = sub_20C13CC74();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_20BEF6C10(v9);

  v45 = v13;
  v14 = sub_20BEF6C10(v12);

  v46 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 56) = type metadata accessor for CatalogModalityDetailViewController();
  *(inited + 32) = v2;
  v47 = inited;
  v16 = v2;
  v17 = MEMORY[0x277D84F90];
  for (i = 32; i != 56; i += 8)
  {
    v19 = *(&v44[6] + i);
    v20 = *(v19 + 16);
    v21 = *(v17 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v22 <= *(v17 + 3) >> 1)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v17 = sub_20BC067B0(isUniquelyReferenced_nonNull_native, v24, 1, v17);
      if (!*(v19 + 16))
      {
LABEL_16:

        if (v20)
        {
          goto LABEL_50;
        }

        continue;
      }
    }

    if ((*(v17 + 3) >> 1) - *(v17 + 2) < v20)
    {
      goto LABEL_51;
    }

    swift_arrayInitWithCopy();

    if (v20)
    {
      v25 = *(v17 + 2);
      v26 = __OFADD__(v25, v20);
      v27 = v25 + v20;
      if (v26)
      {
        goto LABEL_53;
      }

      *(v17 + 2) = v27;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FD68, &qword_20C181418);
  swift_arrayDestroy();
  v28 = *(v17 + 2);
  if (v28)
  {
    v29 = (v17 + 32);
    v30 = MEMORY[0x277D84F90];
    do
    {
      sub_20B51F1D8(v29, v44);
      sub_20B6B3B74(v44, &v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD70, &unk_20C181420);
      if (swift_dynamicCast() && v43)
      {
        v41 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_20BC073DC(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        v33 = v41;
        if (v32 >= v31 >> 1)
        {
          v34 = sub_20BC073DC((v31 > 1), v32 + 1, 1, v30);
          v33 = v41;
          v30 = v34;
        }

        v30[2] = v32 + 1;
        *&v30[2 * v32 + 4] = v33;
      }

      v29 += 32;
      --v28;
    }

    while (v28);

    v35 = v30[2];
    if (!v35)
    {
      goto LABEL_47;
    }
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
    v35 = *(MEMORY[0x277D84F90] + 16);
    if (!v35)
    {
LABEL_47:

      return;
    }
  }

  v36 = 0;
  v37 = v30 + 5;
  while (v36 < v30[2])
  {
    ++v36;
    v38 = *v37;
    ObjectType = swift_getObjectType();
    v40 = *(v38 + 8);
    swift_unknownObjectRetain();
    v40(v4 & 1, ObjectType, v38);
    swift_unknownObjectRelease();
    v37 += 2;
    if (v35 == v36)
    {
      goto LABEL_47;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_20BE83FD0(double a1, double a2)
{
  v3 = v2[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentContentInsetBehavior + 16];
  if (v3 > 0xFB || (v2[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_isTransitioningContentInset] & 1) != 0)
  {
    return;
  }

  if (v3 >> 6)
  {
    if (v3 >> 6 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v2[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentContentInsetBehavior + 16])
  {
LABEL_8:
    [*(*(*&v2[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) adjustedContentInset];
    v4 = v6 + a2 >= 4.0;
    goto LABEL_9;
  }

  v4 = sub_20BE8B400(&OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_page, a1, a2);
LABEL_9:
  v7 = [v2 navigationItem];
  v8 = [v7 leftBarButtonItems];

  if (v8)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v9 = sub_20C13CC74();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = [v2 navigationItem];
  v11 = [v10 rightBarButtonItems];

  if (v11)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v12 = sub_20C13CC74();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_20BEF6C10(v9);

  v45 = v13;
  v14 = sub_20BEF6C10(v12);

  v46 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 56) = type metadata accessor for CatalogProgramDetailViewController();
  *(inited + 32) = v2;
  v47 = inited;
  v16 = v2;
  v17 = MEMORY[0x277D84F90];
  for (i = 32; i != 56; i += 8)
  {
    v19 = *(&v44[6] + i);
    v20 = *(v19 + 16);
    v21 = *(v17 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v22 <= *(v17 + 3) >> 1)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v17 = sub_20BC067B0(isUniquelyReferenced_nonNull_native, v24, 1, v17);
      if (!*(v19 + 16))
      {
LABEL_16:

        if (v20)
        {
          goto LABEL_50;
        }

        continue;
      }
    }

    if ((*(v17 + 3) >> 1) - *(v17 + 2) < v20)
    {
      goto LABEL_51;
    }

    swift_arrayInitWithCopy();

    if (v20)
    {
      v25 = *(v17 + 2);
      v26 = __OFADD__(v25, v20);
      v27 = v25 + v20;
      if (v26)
      {
        goto LABEL_53;
      }

      *(v17 + 2) = v27;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FD68, &qword_20C181418);
  swift_arrayDestroy();
  v28 = *(v17 + 2);
  if (v28)
  {
    v29 = (v17 + 32);
    v30 = MEMORY[0x277D84F90];
    do
    {
      sub_20B51F1D8(v29, v44);
      sub_20B6B3B74(v44, &v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD70, &unk_20C181420);
      if (swift_dynamicCast() && v43)
      {
        v41 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_20BC073DC(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        v33 = v41;
        if (v32 >= v31 >> 1)
        {
          v34 = sub_20BC073DC((v31 > 1), v32 + 1, 1, v30);
          v33 = v41;
          v30 = v34;
        }

        v30[2] = v32 + 1;
        *&v30[2 * v32 + 4] = v33;
      }

      v29 += 32;
      --v28;
    }

    while (v28);

    v35 = v30[2];
    if (!v35)
    {
      goto LABEL_47;
    }
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
    v35 = *(MEMORY[0x277D84F90] + 16);
    if (!v35)
    {
LABEL_47:

      return;
    }
  }

  v36 = 0;
  v37 = v30 + 5;
  while (v36 < v30[2])
  {
    ++v36;
    v38 = *v37;
    ObjectType = swift_getObjectType();
    v40 = *(v38 + 8);
    swift_unknownObjectRetain();
    v40(v4 & 1, ObjectType, v38);
    swift_unknownObjectRelease();
    v37 += 2;
    if (v35 == v36)
    {
      goto LABEL_47;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_20BE844CC(uint64_t a1)
{
  v2 = v1;
  sub_20C132B24();
  v3 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v4 = sub_20C13C914();
  v5 = sub_20C13C914();

  v6 = [v3 initWithTitle:v4 message:v5];

  v7 = sub_20C13C914();
  v8 = [objc_opt_self() actionWithTitle_];

  [v6 addButtonAction_];
  v10 = [objc_allocWithZone(MEMORY[0x277CEE868]) initWithRequest:v6 presentingViewController:v2];
  v9 = [v10 present];
}

void sub_20BE8462C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI18RootViewController_dependencies];
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI18RootViewController_accountFitnessSettingsProvider];
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI18RootViewController_accountFitnessSettingsProvider + 8];
  swift_unknownObjectRetain();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  sub_20C133AA4();
  v5 = sub_20BE8DD50(v2, v3, v4, v2, v7, v8, v7);

  swift_unknownObjectRelease();
  v6 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v6 setModalPresentationStyle_];
  [v1 presentViewController:v6 animated:1 completion:0];
}

uint64_t sub_20BE84760()
{
  v43 = sub_20C135214();
  v0 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B858, &unk_20C171950);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v36 - v6;
  result = sub_20C1338A4();
  v9 = 0;
  v11 = result + 64;
  v10 = *(result + 64);
  v40 = v0;
  v41 = result;
  v12 = 1 << *(result + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v10;
  v15 = (v12 + 63) >> 6;
  v36[1] = v0 + 32;
  v36[2] = v0 + 16;
  v42 = (v0 + 8);
  v37 = v7;
  v38 = v4;
  if ((v13 & v10) != 0)
  {
    while (1)
    {
      v16 = v9;
LABEL_12:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = v19 | (v16 << 6);
      v21 = v40;
      v22 = v41;
      v23 = v39;
      v24 = v43;
      (*(v40 + 16))(v39, *(v41 + 48) + *(v40 + 72) * v20, v43);
      v25 = *(*(v22 + 56) + 8 * v20);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FDB0, &qword_20C155550);
      v27 = *(v26 + 48);
      v28 = *(v21 + 32);
      v4 = v38;
      v28(v38, v23, v24);
      *&v4[v27] = v25;
      (*(*(v26 - 8) + 56))(v4, 0, 1, v26);

      v18 = v16;
      v7 = v37;
LABEL_13:
      sub_20BE8ED14(v4, v7);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FDB0, &qword_20C155550);
      v30 = (*(*(v29 - 8) + 48))(v7, 1, v29);
      if (v30 == 1)
      {

        return v30 != 1;
      }

      v31 = *&v7[*(v29 + 48)];
      v32 = *(v31 + 16);
      v33 = sub_20B719E80(v31);

      v34 = *(v33 + 16);

      if (v32 != v34)
      {
        break;
      }

      result = (*v42)(v7, v43);
      v9 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    (*v42)(v7, v43);
    return v30 != 1;
  }

  else
  {
LABEL_5:
    if (v15 <= v9 + 1)
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = v15;
    }

    v18 = v17 - 1;
    while (1)
    {
      v16 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v16 >= v15)
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FDB0, &qword_20C155550);
        (*(*(v35 - 8) + 56))(v4, 1, 1, v35);
        v14 = 0;
        goto LABEL_13;
      }

      v14 = *(v11 + 8 * v16);
      ++v9;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

double sub_20BE84B54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9SeymourUI18RootViewController_resignActiveObserver;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return result;
}

double sub_20BE84BBC()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

double sub_20BE84C04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18RootViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BE84CBC(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior;
  v5 = *(v3 + OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior);
  v6 = *(v3 + OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior + 8);
  v7 = *(v3 + OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior + 16);
  *v4 = *&result;
  *(v4 + 8) = *&a2;
  *(v4 + 16) = a3;
  if (v7 > 0xFB)
  {
    if (a3 > 0xFBu)
    {
      return result;
    }

LABEL_5:
    *(v3 + OBJC_IVAR____TtC9SeymourUI18RootViewController_hasContentInsetChanged) = 1;
    return result;
  }

  if (a3 > 0xFBu)
  {
    goto LABEL_5;
  }

  if (v7 >> 6)
  {
    if (v7 >> 6 == 1)
    {
      if ((a3 & 0xC0) != 0x40)
      {
        goto LABEL_5;
      }

      if (LOBYTE(v6))
      {
        if ((a2 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else if (a2 & 1 | (v5 != *&result))
      {
        goto LABEL_5;
      }
    }

    else if ((a3 & 0xC0) != 0x80 || a2 | result || a3 != 128)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (a3 >= 0x40u)
    {
      goto LABEL_5;
    }

    v8 = v5 == *&result && v6 == *&a2;
    if (!v8 || v7 != a3)
    {
      goto LABEL_5;
    }
  }

  return result;
}

char *RootViewController.init(dependencies:fitnessSettingsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v8 - 8);
  *&v108 = v97 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = v97 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v12 - 8);
  v105 = v97 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v14 - 8);
  v104 = v97 - v15;
  v16 = sub_20C1333A4();
  MEMORY[0x28223BE20](v16 - 8);
  v106 = v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C13C654();
  v102 = *(v18 - 8);
  v103 = v18;
  MEMORY[0x28223BE20](v18);
  v100 = v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = sub_20C13A814();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_resignActiveObserver] = 0;
  v25 = &v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior];
  *v25 = 0;
  *(v25 + 1) = 0;
  v25[16] = -4;
  v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentability] = 0;
  v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_isTransitioningContentInset] = 0;
  v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_visibility] = 1;
  v26 = OBJC_IVAR____TtC9SeymourUI18RootViewController_controllerDisplayCoordinator;
  type metadata accessor for MarketingControllerDisplayCoordinator();
  v27 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710C0, &unk_20C180F80);
  v28 = swift_allocObject();
  *(v28 + 24) = 0;
  *(v28 + 16) = MEMORY[0x277D84F98];
  *(v27 + 16) = v28;
  *&v4[v26] = v27;
  v29 = OBJC_IVAR____TtC9SeymourUI18RootViewController_dynamicOfferCoordinator;
  *&v4[v29] = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v30 = OBJC_IVAR____TtC9SeymourUI18RootViewController_purchaseCoordinator;
  *&v4[v30] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v31 = OBJC_IVAR____TtC9SeymourUI18RootViewController_purchaseHandler;
  *&v4[v31] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  v32 = OBJC_IVAR____TtC9SeymourUI18RootViewController_webUserInterfaceCoordinator;
  *&v4[v32] = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_hasContentInsetChanged] = 0;
  v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_isBeyondScrollBoundary] = 0;
  (*(v22 + 104))(v24, *MEMORY[0x277D4F088], v21);
  *&v113 = 0;
  sub_20C13A384();
  v33 = &v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_accountFitnessSettingsProvider];
  *v33 = a2;
  v33[1] = a3;
  v109 = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FBE0, &qword_20C155000);
  sub_20C133AA4();
  *&v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_activeWorkoutPlanProvider] = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FBF0, &qword_20C180F90);
  sub_20C133AA4();
  sub_20B51C710(&v113, &v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_avatarSettingsProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  *&v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_bag] = v113;
  *&v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_dependencies] = a1;
  sub_20C13C734();

  v34 = sub_20C13C724();
  v35 = type metadata accessor for CatalogPageImpressionTracker();
  v36 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v37 = MEMORY[0x277D221C0];
  v36[2] = sub_20C13C6D4();
  v36[3] = v34;
  v36[4] = v37;
  v114 = v35;
  v98 = type metadata accessor for CatalogPageImpressionTracker;
  v115 = sub_20BE8F2DC(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  *&v113 = v36;
  v111 = v36;
  type metadata accessor for RootPageDataProvider(0);
  v38 = swift_allocObject();
  v39 = __swift_mutable_project_boxed_opaque_existential_1(&v113, v35);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = (v97 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42, v40);
  v44 = *v42;

  v45 = sub_20BB287A4(a1, v44, v38);
  __swift_destroy_boxed_opaque_existential_1(&v113);
  *&v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider] = v45;

  v97[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v101 = &v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_eventHub];
  *&v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_eventHub] = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E900, &qword_20C16DAE0);
  sub_20C133AA4();
  sub_20B51C710(&v113, &v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentationCoordinator]);

  v46 = sub_20C13C724();
  v47 = v100;
  sub_20C13C644();
  v48 = type metadata accessor for MarketingOverlayImpressionsTracker(0);
  v49 = swift_allocObject();
  *(v49 + 16) = v46;
  *(v49 + 24) = v37;
  (*(v102 + 32))(v49 + OBJC_IVAR____TtC9SeymourUI34MarketingOverlayImpressionsTracker_context, v47, v103);
  v114 = v48;
  v115 = sub_20BE8F2DC(&qword_27C76FC30, type metadata accessor for MarketingOverlayImpressionsTracker, &unk_20C161718);
  *&v113 = v49;
  type metadata accessor for MarketingHostedControllerCoordinator();
  v50 = swift_allocObject();
  v51 = __swift_mutable_project_boxed_opaque_existential_1(&v113, v48);
  v52 = MEMORY[0x28223BE20](v51);
  v54 = (v97 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54, v52);
  v56 = sub_20BE8C464(a1, *v54, v50);

  __swift_destroy_boxed_opaque_existential_1(&v113);
  *&v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_marketingHostedContentCoordinator] = v56;
  v110 = v45;
  v57 = *MEMORY[0x277D517F0];
  v58 = sub_20C1352F4();
  v59 = *(v58 - 8);
  v60 = v104;
  (*(v59 + 104))(v104, v57, v58);
  (*(v59 + 56))(v60, 0, 1, v58);

  v61 = v111;

  sub_20C132C04();
  v62 = sub_20C135ED4();
  (*(*(v62 - 8) + 56))(v107, 1, 1, v62);
  v63 = sub_20C136914();
  (*(*(v63 - 8) + 56))(v108, 1, 1, v63);
  v64 = v106;
  sub_20C133384();
  v65 = sub_20BE8E3F4(a1, v56, v61, v64, type metadata accessor for CatalogPageImpressionTracker, &qword_27C768B80, v98, &unk_20C167050);

  *&v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_marketingMessageViewControllerHandler] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762090, &unk_20C14F940);
  sub_20C133AA4();
  sub_20B51C710(&v113, &v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_marketingMetricFieldsProvider]);
  swift_retain_n();
  sub_20C133AA4();
  v108 = v113;
  sub_20C133AA4();

  LOBYTE(v56) = v113;
  v66 = &v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_pageNavigator];
  v66[3] = &type metadata for CatalogPageNavigator;
  v66[4] = &off_2822FB218;
  v67 = swift_allocObject();
  *v66 = v67;
  *(v67 + 16) = a1;
  *(v67 + 24) = v108;
  *(v67 + 40) = v56;
  sub_20C133AA4();
  v68 = OBJC_IVAR____TtC9SeymourUI18RootViewController_platform;
  v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_platform] = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(&v113, &v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(&v113, &v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_storefrontLocalizer]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(&v113, &v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_catalogClient]);
  v69 = 0;
  v70 = &v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_contentInsetInitialBehavior];
  *v70 = 0;
  v70[8] = 2;
  if (v4[v68] > 1u)
  {
    if (v4[v68] == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v4[v68])
  {
LABEL_3:
    type metadata accessor for AccountButton();
    v69 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

LABEL_4:
  *&v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_accountButton] = v69;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_subscriptionToken] = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80, &unk_20C14DA20);
  v99 = a1;
  sub_20C133AA4();
  sub_20B51C710(&v113, &v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_upNextQueueClient]);
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_upNextQueueButtonPresenter] = sub_20B887320(v71);
  v72 = sub_20BE8CCD8(&unk_28228E318, &unk_27C76FDF0, &qword_20C1814C8);

  v74 = sub_20BAB9360(v73, v72, 1);

  *&v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_largeTitleUpNextQueueButton] = v74;
  v75 = sub_20BE8CCD8(&unk_28228E340, &unk_27C76FDF0, &qword_20C1814C8);

  v77 = sub_20BAB9360(v76, v75, 0);

  *&v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_upNextQueueButton] = v77;
  v78 = type metadata accessor for RootViewController(0);
  v112.receiver = v4;
  v112.super_class = v78;
  v79 = objc_msgSendSuper2(&v112, sel_initWithNibName_bundle_, 0, 0);
  v80 = v110;
  v81 = v79;

  v82 = sub_20C13C914();

  [v81 setTitle_];

  *(v80 + 40) = &off_2822F0EA0;
  swift_unknownObjectWeakAssign();
  sub_20B51CC64(&v81[OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentationCoordinator], &v113);
  v83 = v114;
  v84 = v115;
  __swift_project_boxed_opaque_existential_1(&v113, v114);
  (*(v84 + 64))(v81, &protocol witness table for RootViewController, v83, v84);

  __swift_destroy_boxed_opaque_existential_1(&v113);
  v85 = &v81[OBJC_IVAR____TtC9SeymourUI18RootViewController_eventHub];
  *(*&v81[OBJC_IVAR____TtC9SeymourUI18RootViewController_purchaseHandler] + OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8) = *&v81[OBJC_IVAR____TtC9SeymourUI18RootViewController_eventHub + 8];
  swift_unknownObjectWeakAssign();
  v86 = OBJC_IVAR____TtC9SeymourUI18RootViewController_purchaseCoordinator;
  swift_unknownObjectWeakAssign();
  *(*&v81[v86] + OBJC_IVAR____TtC9SeymourUI28MarketingPurchaseCoordinator_eventHub + 8) = *(v85 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *(*&v81[OBJC_IVAR____TtC9SeymourUI18RootViewController_dynamicOfferCoordinator] + OBJC_IVAR____TtC9SeymourUI32MarketingDynamicOfferCoordinator_eventHub + 8) = *(v85 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20BC2D7AC();
  swift_unknownObjectRetain();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v113);

  swift_getObjectType();
  sub_20C139404();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20BE8F2DC(&unk_27C769C10, MEMORY[0x277D54398], MEMORY[0x277D54390]);
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v113);
  swift_getObjectType();
  sub_20C137384();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A7A4();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v113);

  v87 = *&v81[OBJC_IVAR____TtC9SeymourUI18RootViewController_marketingHostedContentCoordinator];
  v88 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v89 = *(v87 + 136);
  v90 = *(v87 + 144);
  *(v87 + 136) = sub_20BE8E644;
  *(v87 + 144) = v88;

  sub_20B583ECC(v89, v90);

  v91 = *&v81[OBJC_IVAR____TtC9SeymourUI18RootViewController_marketingMessageViewControllerHandler];

  v92 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v93 = &v91[OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_actionHandler];
  v94 = *&v91[OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_actionHandler];
  v95 = *&v91[OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_actionHandler + 8];
  *v93 = sub_20BE8E650;
  v93[1] = v92;

  sub_20B583ECC(v94, v95);

  return v81;
}

void sub_20BE86284(uint64_t a1)
{
  v1 = sub_20C132E94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_20C13B534();
    sub_20C13BB64();
    (*(v6 + 8))(v8, v5);
    v11 = v10;
    sub_20C132E84();
    type metadata accessor for RootViewController(0);
    sub_20BE8F2DC(&qword_27C76FCE8, type metadata accessor for RootViewController, &protocol conformance descriptor for RootViewController);
    sub_20C139274();
    (*(v2 + 8))(v4, v1);
  }
}

void sub_20BE864B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_20BE87F94();
  }
}

double sub_20BE8650C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC9SeymourUI18RootViewController_upNextQueueButtonPresenter);
    v7 = Strong;
    v8 = sub_20C13CDF4();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v6;

    sub_20B6383D0(0, 0, v3, &unk_20C1814C0, v9);
  }

  return result;
}

void sub_20BE86658(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a4)
    {
      if (a3)
      {
        if (!a6)
        {
          v17 = a4;
          sub_20BF9A428(v17, a1, a2);
          v18 = v16;
          v16 = v17;
LABEL_12:

          goto LABEL_13;
        }

LABEL_8:
        v18 = a6;
        v20 = [v16 viewIfLoaded];
        v21 = [v20 window];

        if (v21)
        {

          if (a3)
          {
            ObjectType = swift_getObjectType();
            v23 = *&v16[OBJC_IVAR____TtC9SeymourUI18RootViewController_marketingMessageViewControllerHandler];
            v24 = *(a7 + 16);
            v25 = v23;
            v24(v23, ObjectType, a7);
            v18 = v18;
            sub_20BF9A630(v18, a1, a2);
          }

          else
          {
            v26 = *(*&v16[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider] + 48);
            sub_20C0C1FA8(a1, a2);

            sub_20BF9AD74(v18, a7, a1, a2);
          }
        }

        goto LABEL_12;
      }

      v19 = a4;
      sub_20BF99484(a1, a2, 0, 0);
      sub_20BF9B18C(v19, a5, a1, a2);
      sub_20BE8A81C();
    }

    if (!a6)
    {
LABEL_13:

      return;
    }

    goto LABEL_8;
  }
}

void sub_20BE86844(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_20BE80BD0(a1, a2);
  }
}

uint64_t sub_20BE868DC()
{
  if (!*(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentability))
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentability) = 1;
  }

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentationCoordinator + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentationCoordinator + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentationCoordinator), v1);
  return (*(v2 + 48))(v1, v2);
}

void sub_20BE86950()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = type metadata accessor for RootViewController(0);
  v26.receiver = v0;
  v26.super_class = v4;
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() systemBackgroundColor];
    [v6 setBackgroundColor_];

    sub_20BE80628();
    sub_20BE879F8();
    sub_20B7959FC(0);
    sub_20BAD5BC8();
    v8 = [objc_opt_self() mainScreen];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v28.origin.x = v10;
    v28.origin.y = v12;
    v28.size.width = v14;
    v28.size.height = v16;
    Width = CGRectGetWidth(v28);
    sub_20B755B8C(v27, Width);
    sub_20B5F320C(v27);
    v18 = *v27;
    v19 = [v0 navigationItem];
    [v19 setLargeTitleInsets_];

    sub_20C13CDB4();
    v20 = sub_20C13CDF4();
    (*(*(v20 - 8) + 56))(v3, 0, 1, v20);
    sub_20C13CDA4();
    v21 = v0;
    v22 = sub_20C13CD94();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v21;
    sub_20B6383D0(0, 0, v3, &unk_20C180FA0, v23);
  }

  else
  {
    __break(1u);
  }
}

double sub_20BE86C14(char a1)
{
  v2 = v1;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for RootViewController(0);
  objc_msgSendSuper2(&v26, sel_viewWillAppear_, a1 & 1);
  if (*&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_accountButton])
  {
    v4 = *&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_avatarSettingsProvider + 24];
    v5 = *&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_avatarSettingsProvider + 32];
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_avatarSettingsProvider], v4);
    (*(v5 + 8))(&v19, v4, v5);
    v6 = v19;
    if (v19 == 1)
    {
      v6 = 0;
    }

    else
    {
      v8 = v22;
      v7 = v23;
      v10 = v20;
      v9 = v21;
      v11 = v19;
      sub_20B8FD958(v6, v10, v9, v8, v7);
    }

    sub_20B52EF60(v6);
  }

  v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentability] = 1;
  v12 = *&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentationCoordinator + 24];
  v13 = *&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentationCoordinator + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentationCoordinator], v12);
  (*(v13 + 56))(v12, v13);
  v15 = &v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior];
  v16 = v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior + 16];
  if (v16 <= 0xFB)
  {
    if (!(v16 >> 6))
    {
LABEL_10:
      sub_20BE8AD1C(v16);
      return result;
    }

    if (v16 >> 6 == 1)
    {
      LOBYTE(v16) = 0;
      goto LABEL_10;
    }

    v17 = *v15;
    v18 = *(v15 + 1);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_20C13DC94();
    v24 = v19;
    v25 = v20;
    MEMORY[0x20F2F4230](0xD000000000000023, 0x800000020C199DA0);
    v19 = v17;
    v20 = v18;
    LOBYTE(v21) = v16;
    sub_20C13DDF4();
    sub_20C1380E4();
  }

  return result;
}

uint64_t sub_20BE86F00(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  v26 = sub_20C1333A4();
  v12 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RootViewController(0);
  v16 = v1;
  v25 = v1;
  v29.receiver = v1;
  v29.super_class = v15;
  objc_msgSendSuper2(&v29, sel_viewDidAppear_, a1 & 1);
  v17 = *&v1[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider];
  sub_20B8F8E94();
  v28 = v16;
  v24[1] = *(*(v17 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v18 = *MEMORY[0x277D517F0];
  v19 = sub_20C1352F4();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v11, v18, v19);
  (*(v20 + 56))(v11, 0, 1, v19);

  sub_20C132C04();
  v21 = sub_20C135ED4();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  v22 = sub_20C136914();
  (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  sub_20C133384();
  sub_20BE8F2DC(&qword_27C76FCE0, type metadata accessor for RootViewController, &protocol conformance descriptor for RootViewController);
  sub_20C138C54();
  (*(v12 + 8))(v14, v26);
  sub_20BE8F2DC(&qword_27C76FCE8, type metadata accessor for RootViewController, &protocol conformance descriptor for RootViewController);
  sub_20BE8F2DC(&unk_27C76FCF0, type metadata accessor for RootViewController, &protocol conformance descriptor for RootViewController);
  return sub_20C139364();
}

void sub_20BE873C4(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RootViewController(0);
  v16.receiver = v2;
  v16.super_class = v8;
  objc_msgSendSuper2(&v16, sel_viewWillDisappear_, a1 & 1);
  v15 = v2;
  sub_20C132E84();
  sub_20BE8F2DC(&qword_27C76FCE8, type metadata accessor for RootViewController, &protocol conformance descriptor for RootViewController);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  v9 = [v2 navigationController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 viewControllers];
    sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
    v12 = sub_20C13CC74();

    v15 = v2;
    MEMORY[0x28223BE20](v13);
    *(&v14 - 2) = &v15;
    LOBYTE(v11) = sub_20B79AEEC(sub_20B5978BC, (&v14 - 4), v12);

    if ((v11 & 1) == 0)
    {
      v15 = v2;
      sub_20BE8F2DC(&qword_27C76FCE0, type metadata accessor for RootViewController, &protocol conformance descriptor for RootViewController);
      sub_20C138C64();
    }
  }
}

void sub_20BE8781C(uint64_t a1, double a2, double a3)
{
  v13.receiver = v3;
  v13.super_class = type metadata accessor for RootViewController(0);
  objc_msgSendSuper2(&v13, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = *(*&v3[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider] + 48);
  v8 = *&v7[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v9 = v7;
  v10 = [v8 collectionViewLayout];
  [v10 invalidateLayout];

  sub_20B755B8C(v14, a2);
  sub_20B5F320C(v14);
  v11 = *v14;
  v12 = [v3 navigationItem];
  [v12 setLargeTitleInsets_];
}

void sub_20BE879F8()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI18RootViewController_upNextQueueButton];
  v2 = type metadata accessor for DynamicScrollObservingBarButtonItem();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v4 = v1;
  *(v4 + 1) = &off_2822C8C68;
  v25.receiver = v3;
  v25.super_class = v2;
  v5 = v1;
  v6 = objc_msgSendSuper2(&v25, sel_init);
  [v6 setCustomView_];

  if (v0[OBJC_IVAR____TtC9SeymourUI18RootViewController_platform] == 1)
  {
    v7 = [v0 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_20C151490;
    *(v10 + 32) = [objc_opt_self() fixedSpaceItemOfWidth_];
    v9 = (v10 + 40);
  }

  else
  {
    if (v0[OBJC_IVAR____TtC9SeymourUI18RootViewController_platform])
    {
      goto LABEL_6;
    }

    v7 = [v0 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20C14F580;
    v9 = (v8 + 32);
  }

  *v9 = v6;
  sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
  v11 = v6;
  v12 = sub_20C13CC54();

  [v7 setRightBarButtonItems_];

LABEL_6:
  v13 = [v0 navigationItem];

  v14 = sub_20C13C914();

  [v13 setBackButtonTitle_];

  v15 = *&v0[OBJC_IVAR____TtC9SeymourUI18RootViewController_largeTitleUpNextQueueButton];
  LODWORD(v16) = 1148846080;
  [v15 setContentCompressionResistancePriority:0 forAxis:v16];
  v17 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setAxis_];
  [v17 setDistribution_];
  [v17 setSpacing_];
  [v17 addArrangedSubview_];
  v18 = *&v0[OBJC_IVAR____TtC9SeymourUI18RootViewController_accountButton];
  if (v18)
  {
    v19 = v18;
    [v19 addTarget:v0 action:sel_accountButtonTapped_ forControlEvents:64];
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = &v19[OBJC_IVAR____TtC9SeymourUI13AccountButton_onLongPressed];
    v22 = *&v19[OBJC_IVAR____TtC9SeymourUI13AccountButton_onLongPressed];
    v23 = *&v19[OBJC_IVAR____TtC9SeymourUI13AccountButton_onLongPressed + 8];
    *v21 = sub_20BE8F244;
    v21[1] = v20;

    sub_20B583ECC(v22, v23);

    [v17 addArrangedSubview_];
  }

  v24 = [v0 navigationItem];
  [v24 _setLargeTitleAccessoryView_alignToBaseline_];
}

char *sub_20BE87DF0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *&result[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider];
    v7 = result;

    __swift_project_boxed_opaque_existential_1((v6 + 200), *(v6 + 224));
    sub_20C139FB4();
    v8 = sub_20C137CB4();
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    v8(sub_20B52347C, v9);

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_20BE87F94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_20C1333A4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v0 presentedViewController];
  v18 = sub_20C1393F4();
  if (v17)
  {
    v28 = v18;
    sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
    v19 = sub_20C13D5F4();

    if (v19)
    {
      v29 = v1;
      v28 = *(*(*&v1[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider] + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
      v20 = *MEMORY[0x277D517F0];
      v21 = sub_20C1352F4();
      v27 = v13;
      v22 = v21;
      v23 = *(v21 - 8);
      (*(v23 + 104))(v11, v20, v21);
      (*(v23 + 56))(v11, 0, 1, v22);

      sub_20C132C04();
      v24 = sub_20C135ED4();
      (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
      v25 = sub_20C136914();
      (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
      sub_20C133384();
      type metadata accessor for RootViewController(0);
      sub_20BE8F2DC(&qword_27C76FCE0, type metadata accessor for RootViewController, &protocol conformance descriptor for RootViewController);
      sub_20C138C54();
      (*(v27 + 8))(v16, v12);
    }
  }

  else
  {
  }
}

uint64_t sub_20BE88414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  v4[5] = swift_task_alloc();
  v5 = sub_20C133954();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D5E0, &qword_20C177DB0);
  v4[9] = swift_task_alloc();
  v6 = sub_20C1364E4();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767FD0, &qword_20C164480);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = sub_20C132E94();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  sub_20C13CDA4();
  v4[19] = sub_20C13CD94();
  v10 = sub_20C13CD24();
  v4[20] = v10;
  v4[21] = v9;

  return MEMORY[0x2822009F8](sub_20BE88698, v10, v9);
}

uint64_t sub_20BE88698()
{
  if ((sub_20C1380B4() & 1) != 0 && (v2 = *(v0 + 136), v1 = *(v0 + 144), v4 = *(v0 + 120), v3 = *(v0 + 128), v5 = *(v0 + 104), v6 = *(v0 + 112), v7 = *(v0 + 32), sub_20C132E84(), sub_20C132E44(), v9 = v8, v10 = *(v2 + 8), *(v0 + 176) = v10, *(v0 + 184) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000, v10(v1, v3), v11 = OBJC_IVAR____TtC9SeymourUI18RootViewController__lastWorkoutPlanTapToRadarAlertTimestamp, *(v0 + 192) = OBJC_IVAR____TtC9SeymourUI18RootViewController__lastWorkoutPlanTapToRadarAlertTimestamp, v12 = *(v6 + 16), *(v0 + 200) = v12, *(v0 + 208) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000, v12(v4, v7 + v11, v5), sub_20C13A344(), v13 = *(v6 + 8), *(v0 + 216) = v13, *(v0 + 224) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000, v13(v4, v5), v9 - *(v0 + 16) > 86400.0))
  {
    v14 = swift_task_alloc();
    *(v0 + 232) = v14;
    *v14 = v0;
    v14[1] = sub_20BE888BC;
    v15 = *(v0 + 72);

    return sub_20BFC21AC(v15);
  }

  else
  {

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_20BE888BC()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20BE889DC, v3, v2);
}

uint64_t sub_20BE889DC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[9], &qword_27C76D5E0, &qword_20C177DB0);
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    sub_20C1364C4();
    sub_20C1364D4();
    v8 = sub_20BE88C48(v4, v7);
    sub_20B520158(v7, &unk_27C762300, &unk_20C151350);
    (*(v5 + 8))(v4, v6);
    if (v8)
    {
      v22 = v0[27];
      v21 = v0[25];
      v20 = v0[24];
      v9 = v0[22];
      v10 = v0[18];
      v12 = v0[15];
      v11 = v0[16];
      v13 = v0[13];
      v14 = v0[11];
      v23 = v0[10];
      v24 = v0[12];
      v15 = v0[4];
      sub_20C132E84();
      sub_20C132E44();
      v17 = v16;
      v9(v10, v11);
      v21(v12, &v15[v20], v13);
      v0[3] = v17;
      sub_20C13A354();
      v22(v12, v13);
      [v15 presentViewController:v8 animated:1 completion:0];

      (*(v14 + 8))(v24, v23);
    }

    else
    {
      (*(v0[11] + 8))(v0[12], v0[10]);
    }
  }

  v18 = v0[1];

  return v18();
}

id sub_20BE88C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &aBlock - v9;
  v11 = sub_20BE84760();
  v12 = *(sub_20C1338A4() + 16);

  if (v11)
  {
    aBlock = 0;
    v43 = 0xE000000000000000;
    sub_20C13DC94();
    MEMORY[0x20F2F4230](0xD00000000000003ELL, 0x800000020C1B5640);
    sub_20C133954();
    sub_20BE8F2DC(&unk_27C76FDA0, MEMORY[0x277D50180], MEMORY[0x277D50198]);
    v13 = sub_20C13DFA4();
    MEMORY[0x20F2F4230](v13);

    MEMORY[0x20F2F4230](0xD000000000000019, 0x800000020C1B5570);
    sub_20BE8EB58(a2, v10);
    v14 = sub_20C135814();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v10, 1, v14) == 1)
    {
      v16 = 1701736270;
      sub_20B520158(v10, &unk_27C762300, &unk_20C151350);
      v17 = 0xE400000000000000;
    }

    else
    {
      v16 = sub_20C1357E4();
      v17 = v19;
      (*(v15 + 8))(v10, v14);
    }

    MEMORY[0x20F2F4230](v16, v17);

    v20 = aBlock;
    v21 = v43;
    v22 = 0xD00000000000002ALL;
    v23 = "workouts, please file a Radar.";
LABEL_12:
    v30 = v23 | 0x8000000000000000;
    v31 = sub_20C13C914();

    v32 = sub_20C13C914();

    v18 = [objc_opt_self() alertControllerWithTitle:v31 message:v32 preferredStyle:1];

    v33 = swift_allocObject();
    v33[2] = v3;
    v33[3] = v22;
    v33[4] = v30;
    v33[5] = v20;
    v33[6] = v21;
    v34 = v3;
    v35 = sub_20C13C914();
    v46 = sub_20BE8EBC8;
    v47 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_20B762A80;
    v45 = &block_descriptor_143;
    v36 = _Block_copy(&aBlock);

    v37 = objc_opt_self();
    v38 = [v37 actionWithTitle:v35 style:0 handler:v36];
    _Block_release(v36);

    [v18 addAction_];
    v39 = sub_20C13C914();
    v40 = [v37 actionWithTitle:v39 style:1 handler:0];

    [v18 addAction_];
    return v18;
  }

  if (!v12)
  {
    aBlock = 0;
    v43 = 0xE000000000000000;
    sub_20C13DC94();
    MEMORY[0x20F2F4230](0xD00000000000002ELL, 0x800000020C1B5540);
    sub_20C133954();
    sub_20BE8F2DC(&unk_27C76FDA0, MEMORY[0x277D50180], MEMORY[0x277D50198]);
    v24 = sub_20C13DFA4();
    MEMORY[0x20F2F4230](v24);

    MEMORY[0x20F2F4230](0xD000000000000019, 0x800000020C1B5570);
    sub_20BE8EB58(a2, v7);
    v25 = sub_20C135814();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v7, 1, v25) == 1)
    {
      v27 = 1701736270;
      sub_20B520158(v7, &unk_27C762300, &unk_20C151350);
      v28 = 0xE400000000000000;
    }

    else
    {
      v27 = sub_20C1357E4();
      v28 = v29;
      (*(v26 + 8))(v7, v25);
    }

    MEMORY[0x20F2F4230](v27, v28);

    v20 = aBlock;
    v21 = v43;
    v22 = 0xD000000000000025;
    v23 = "e to include a sysdiagnose.";
    goto LABEL_12;
  }

  return 0;
}

double sub_20BE89288(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_20C13CDF4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_20C13CDA4();

  v15 = a2;
  v16 = sub_20C13CD94();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  v17[8] = a6;
  sub_20B6383D0(0, 0, v13, &unk_20C181468, v17);

  return result;
}

uint64_t sub_20BE893E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for TapToRadarDraft(0);
  v8[7] = swift_task_alloc();
  sub_20C13CDA4();
  v8[8] = sub_20C13CD94();
  v10 = sub_20C13CD24();
  v8[9] = v10;
  v8[10] = v9;

  return MEMORY[0x2822009F8](sub_20BE894B4, v10, v9);
}

uint64_t sub_20BE894B4()
{
  sub_20BE896FC(v0[3], v0[4], v0[5], v0[6], v0[7]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_20BE89554;

  return sub_20BFCC80C();
}

uint64_t sub_20BE89554()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_20BE8F768;
  }

  else
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_20BE89678;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20BE89678()
{
  v1 = *(v0 + 56);

  sub_20BE8ECB4(v1, type metadata accessor for TapToRadarDraft);

  v2 = *(v0 + 8);

  return v2();
}

double sub_20BE896FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a3;
  v34 = a4;
  v32 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for TapToRadarDraft(0);
  v11 = (a5 + v10[11]);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD90, &unk_20C181450) + 36);
  v13 = sub_20C132E94();
  v14 = *(*(v13 - 8) + 56);
  v14(&v11[v12], 1, 1, v13);
  *v11 = 0x7349664F656D6954;
  *(v11 + 1) = 0xEB00000000657573;
  *a5 = 0x4449656C646E7542;
  *(a5 + 8) = 0xE800000000000000;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = xmmword_20C180F50;
  *(a5 + 48) = xmmword_20C180F60;
  *(a5 + 64) = xmmword_20C180F70;
  *(a5 + 80) = 0xEE006E6F69746163;
  *(a5 + 88) = 10;
  *(a5 + 96) = 0x6375646F72706552;
  *(a5 + 104) = 0xEF7974696C696269;
  *(a5 + 112) = 6;
  *(a5 + 120) = 0x656C746954;
  *(a5 + 128) = 0xE500000000000000;
  *(a5 + 136) = 0;
  *(a5 + 144) = 0;
  *(a5 + 152) = 0x7470697263736544;
  *(a5 + 160) = 0xEB000000006E6F69;
  *(a5 + 168) = 0;
  *(a5 + 176) = 0;
  *(a5 + 184) = 0x7364726F7779654BLL;
  *(a5 + 192) = 0xE800000000000000;
  v15 = MEMORY[0x277D84F90];
  *(a5 + 200) = MEMORY[0x277D84F90];
  v16 = (a5 + v10[12]);
  *v16 = 0x656D686361747441;
  v16[1] = 0xEB0000000073746ELL;
  v16[2] = v15;
  v17 = (a5 + v10[13]);
  *v17 = 0xD000000000000011;
  v17[1] = 0x800000020C1B5400;
  v17[2] = v15;
  v18 = (a5 + v10[14]);
  *v18 = 0xD000000000000014;
  v18[1] = 0x800000020C1B5420;
  v18[2] = v15;
  v19 = (a5 + v10[15]);
  strcpy(v19, "DeleteOnAttach");
  v19[15] = -18;
  v19[16] = 0;
  v20 = (a5 + v10[16]);
  *v20 = 0x4449656369766544;
  v20[1] = 0xE900000000000073;
  v20[2] = v15;
  v21 = a5 + v10[17];
  strcpy(v21, "DeviceClasses");
  *(v21 + 14) = -4864;
  *(v21 + 16) = v15;
  v22 = a5 + v10[18];
  strcpy(v22, "DeviceModels");
  *(v22 + 13) = 0;
  *(v22 + 14) = -5120;
  *(v22 + 16) = v15;
  v23 = (a5 + v10[19]);
  *v23 = 0xD000000000000016;
  v23[1] = 0x800000020C1B5440;
  v23[2] = 0;
  v24 = a5 + v10[20];
  *v24 = 0xD00000000000001ALL;
  *(v24 + 8) = 0x800000020C1B5460;
  *(v24 + 16) = 0;
  v25 = a5 + v10[21];
  *v25 = 0x676169446F747541;
  *(v25 + 8) = 0xEF73636974736F6ELL;
  *(v25 + 16) = 0;
  v26 = (a5 + v10[22]);
  *v26 = 0xD00000000000001BLL;
  v26[1] = 0x800000020C1B5480;
  v26[2] = v15;
  v27 = (a5 + v10[23]);
  *v27 = 0xD000000000000018;
  v27[1] = 0x800000020C1B53C0;
  v27[2] = 0;
  v27[3] = 0;
  v28 = (a5 + v10[24]);
  *v28 = 0xD000000000000012;
  v28[1] = 0x800000020C1B53E0;
  v28[2] = 0;
  v28[3] = 0;
  *(a5 + 88) = 1;
  *(a5 + 112) = 5;
  *(a5 + 136) = v32;
  *(a5 + 144) = a2;

  sub_20C132E64();
  v14(v9, 0, 1, v13);
  sub_20BAC70D4(v9, &v11[v12]);
  *(v24 + 16) = 1;
  v29 = v34;
  *(a5 + 168) = v33;
  *(a5 + 176) = v29;

  return result;
}

id RootViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id RootViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BE89EB4(uint64_t a1, id *a2)
{
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI18RootViewController_accountButton))
  {
    if (*a2 == 1)
    {
      v3 = 0;
    }

    else
    {
      v5 = *a2;
      v4 = *a2;
      v3 = v5;
    }

    v6 = v3;
    sub_20B52EF60(v3);
  }
}

void sub_20BE89F40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  v2.n128_f64[0] = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  sub_20BEFF6CC(v2);
  if (((1 << *(*(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider) + 56)) & 0x1AB) != 0)
  {
    v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_largeTitleUpNextQueueButton);
    v5[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_prefersVisible] = 1;
    [v5 setHidden_];
    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_upNextQueueButton);
    v6[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_prefersVisible] = 1;
    [v6 setHidden_];
    v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_upNextQueueButtonPresenter);
    v8 = sub_20C13CDF4();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;

    sub_20B6383D0(0, 0, v4, &unk_20C181490, v9);
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_largeTitleUpNextQueueButton);
    v10[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_prefersVisible] = 0;
    [v10 setHidden_];
    v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_upNextQueueButton);
    v11[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_prefersVisible] = 0;

    [v11 setHidden_];
  }
}

void sub_20BE8A164(char a1)
{
  v2 = v1[OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior + 16];
  if (v2 > 0xFB || (v2 & 0xC0) != 0x40)
  {
    v12 = [v1 navigationController];
    if (!v12)
    {
      return;
    }

    v13 = v12;
    v14 = [v12 navigationBar];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460, &unk_20C15C490);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    v16 = *MEMORY[0x277D740C0];
    *(inited + 32) = *MEMORY[0x277D740C0];
    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 whiteColor];
    *(inited + 64) = sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
    *(inited + 40) = v19;
    sub_20B6B1650(inited);
    swift_setDeallocating();
    sub_20B520158(inited + 32, &qword_27C763978, &unk_20C163AF0);
    type metadata accessor for Key(0);
    sub_20BE8F2DC(&qword_27C761D80, type metadata accessor for Key, &unk_20C14F0C4);
    v10 = sub_20C13C744();

    [v14 setTitleTextAttributes_];

    goto LABEL_12;
  }

  if (v1[OBJC_IVAR____TtC9SeymourUI18RootViewController_isBeyondScrollBoundary] != (a1 & 1) || v1[OBJC_IVAR____TtC9SeymourUI18RootViewController_hasContentInsetChanged] == 1)
  {
    v1[OBJC_IVAR____TtC9SeymourUI18RootViewController_isBeyondScrollBoundary] = a1 & 1;
    v1[OBJC_IVAR____TtC9SeymourUI18RootViewController_hasContentInsetChanged] = 0;
    if (a1)
    {
      v3 = &selRef_whiteColor;
    }

    else
    {
      v3 = &selRef_clearColor;
    }

    v20 = [objc_opt_self() *v3];
    v4 = [v1 navigationController];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 navigationBar];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460, &unk_20C15C490);
      v7 = swift_initStackObject();
      *(v7 + 16) = xmmword_20C14F980;
      v8 = *MEMORY[0x277D740C0];
      *(v7 + 32) = *MEMORY[0x277D740C0];
      *(v7 + 64) = sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
      *(v7 + 40) = v20;
      v9 = v8;
      v10 = v20;
      sub_20B6B1650(v7);
      swift_setDeallocating();
      sub_20B520158(v7 + 32, &qword_27C763978, &unk_20C163AF0);
      type metadata accessor for Key(0);
      sub_20BE8F2DC(&qword_27C761D80, type metadata accessor for Key, &unk_20C14F0C4);
      v11 = sub_20C13C744();

      [v6 setTitleTextAttributes_];

LABEL_12:
      return;
    }
  }
}

uint64_t sub_20BE8A754(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20BE8A7B8(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139374();
}

uint64_t sub_20BE8A81C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v0 - 8);
  v24 = &v21 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v2 - 8);
  v23 = &v21 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v22 = sub_20C1333A4();
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13B884();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B874();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767750, "^[\t");
  sub_20C13B834();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  sub_20C13B824();
  sub_20C13B854();

  (*(v12 + 8))(v14, v11);
  v15 = *MEMORY[0x277D517F0];
  v16 = sub_20C1352F4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v7, v15, v16);
  (*(v17 + 56))(v7, 0, 1, v16);

  sub_20C132C04();
  v18 = sub_20C135ED4();
  (*(*(v18 - 8) + 56))(v23, 1, 1, v18);
  v19 = sub_20C136914();
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  sub_20C133384();
  sub_20B90D720(v10);
  return (*(v8 + 8))(v10, v22);
}

void sub_20BE8AD1C(char a1)
{
  v3 = [v1 navigationItem];
  v4 = v3;
  if (a1)
  {
    if (a1 == 1)
    {
      [v3 setLargeTitleDisplayMode_];

      v5 = [v1 navigationController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 navigationBar];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460, &unk_20C15C490);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_20C14F980;
        v9 = *MEMORY[0x277D740C0];
        *(inited + 32) = *MEMORY[0x277D740C0];
        v10 = objc_opt_self();
        v11 = v9;
        v12 = [v10 clearColor];
        *(inited + 64) = sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
        *(inited + 40) = v12;
        sub_20B6B1650(inited);
        swift_setDeallocating();
        sub_20B520158(inited + 32, &qword_27C763978, &unk_20C163AF0);
        type metadata accessor for Key(0);
        sub_20BE8F2DC(&qword_27C761D80, type metadata accessor for Key, &unk_20C14F0C4);
        v13 = sub_20C13C744();

        [v7 setTitleTextAttributes_];
      }

      v14 = [v1 navigationController];
      if (v14)
      {
        v15 = &selRef_clearColor;
LABEL_15:
        v34 = v14;
        v35 = [v14 navigationBar];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460, &unk_20C15C490);
        v36 = swift_initStackObject();
        *(v36 + 16) = xmmword_20C14F980;
        v37 = *MEMORY[0x277D740C0];
        *(v36 + 32) = *MEMORY[0x277D740C0];
        v38 = objc_opt_self();
        v39 = v37;
        v40 = [v38 *v15];
        *(v36 + 64) = sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
        *(v36 + 40) = v40;
        sub_20B6B1650(v36);
        swift_setDeallocating();
        sub_20B520158(v36 + 32, &qword_27C763978, &unk_20C163AF0);
        type metadata accessor for Key(0);
        sub_20BE8F2DC(&qword_27C761D80, type metadata accessor for Key, &unk_20C14F0C4);
        v41 = sub_20C13C744();

        [v35 setLargeTitleTextAttributes_];
      }
    }

    else
    {
      [v3 setLargeTitleDisplayMode_];

      v25 = [v1 navigationController];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 navigationBar];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460, &unk_20C15C490);
        v28 = swift_initStackObject();
        *(v28 + 16) = xmmword_20C14F980;
        v29 = *MEMORY[0x277D740C0];
        *(v28 + 32) = *MEMORY[0x277D740C0];
        v30 = objc_opt_self();
        v31 = v29;
        v32 = [v30 whiteColor];
        *(v28 + 64) = sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
        *(v28 + 40) = v32;
        sub_20B6B1650(v28);
        swift_setDeallocating();
        sub_20B520158(v28 + 32, &qword_27C763978, &unk_20C163AF0);
        type metadata accessor for Key(0);
        sub_20BE8F2DC(&qword_27C761D80, type metadata accessor for Key, &unk_20C14F0C4);
        v33 = sub_20C13C744();

        [v27 setTitleTextAttributes_];
      }

      v14 = [v1 navigationController];
      if (v14)
      {
        v15 = &selRef_whiteColor;
        goto LABEL_15;
      }
    }
  }

  else
  {
    [v3 setLargeTitleDisplayMode_];

    v16 = [v1 navigationController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationBar];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460, &unk_20C15C490);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_20C14F980;
      v20 = *MEMORY[0x277D740C0];
      *(v19 + 32) = *MEMORY[0x277D740C0];
      v21 = objc_opt_self();
      v22 = v20;
      v23 = [v21 whiteColor];
      *(v19 + 64) = sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
      *(v19 + 40) = v23;
      sub_20B6B1650(v19);
      swift_setDeallocating();
      sub_20B520158(v19 + 32, &qword_27C763978, &unk_20C163AF0);
      type metadata accessor for Key(0);
      sub_20BE8F2DC(&qword_27C761D80, type metadata accessor for Key, &unk_20C14F0C4);
      v24 = sub_20C13C744();

      [v18 setTitleTextAttributes_];
    }

    v14 = [v1 navigationController];
    if (v14)
    {
      v15 = &selRef_whiteColor;
      goto LABEL_15;
    }
  }
}

unint64_t sub_20BE8B400(void *a1, void *a2, double a3, double a4)
{
  result = [v4 navigationController];
  if (result)
  {
    v10 = result;
    v11 = [result navigationBar];

    if (!v11)
    {
      return 0;
    }

    v12 = [v11 _restingHeights];
    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = v12;
    sub_20B51C88C(0, &qword_27C765490, 0x277CCABB0);
    v14 = sub_20C13CC74();

    v15 = v14 & 0xFFFFFFFFFFFFFF8;
    if (v14 >> 62)
    {
      if (!sub_20C13DB34())
      {
        v5 = 0.0;
LABEL_10:
        v18 = sub_20C13DB34();
        if (!v18)
        {
          goto LABEL_11;
        }

LABEL_16:
        v20 = __OFSUB__(v18, 1);
        result = v18 - 1;
        if (!v20)
        {
          if ((v14 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (result < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v21 = *(v14 + 8 * result + 32);
              goto LABEL_21;
            }

            __break(1u);
            return result;
          }

LABEL_30:
          v21 = MEMORY[0x20F2F5430]();
LABEL_21:
          v22 = v21;

          [v22 doubleValue];
          v19 = v23;

          if (v5 != v19)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = 0.0;
      goto LABEL_15;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {

      v16 = MEMORY[0x20F2F5430](0, v14);
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v16 = *(v14 + 32);
    }

    [v16 doubleValue];
    v5 = v17;

    v15 = v14 & 0xFFFFFFFFFFFFFF8;
    if (v14 >> 62)
    {
      goto LABEL_10;
    }

LABEL_15:
    v18 = *(v15 + 16);
    if (!v18)
    {
LABEL_11:

      if (v5 != 0.0)
      {
        v19 = 0.0;
LABEL_23:
        [v11 frame];
        Height = CGRectGetHeight(v28);

        return (Height - v5 + -14.0) / (v19 + -14.0) < 0.05;
      }

LABEL_22:
      v24 = *(*(*&v4[*a1] + *a2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      [v24 adjustedContentInset];
      v26 = v25;

      return v26 + a4 >= 4.0;
    }

    goto LABEL_16;
  }

  return result;
}

unint64_t sub_20BE8B6B0(double a1, double a2)
{
  result = [v2 navigationController];
  if (result)
  {
    v6 = result;
    v7 = [result navigationBar];

    if (!v7)
    {
      return 0;
    }

    v8 = [v7 _restingHeights];
    if (!v8)
    {
      goto LABEL_22;
    }

    v9 = v8;
    sub_20B51C88C(0, &qword_27C765490, 0x277CCABB0);
    v10 = sub_20C13CC74();

    v11 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
      if (!sub_20C13DB34())
      {
        v3 = 0.0;
LABEL_10:
        v14 = sub_20C13DB34();
        if (!v14)
        {
          goto LABEL_11;
        }

LABEL_16:
        v16 = __OFSUB__(v14, 1);
        result = v14 - 1;
        if (!v16)
        {
          if ((v10 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (result < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v17 = *(v10 + 8 * result + 32);
              goto LABEL_21;
            }

            __break(1u);
            return result;
          }

LABEL_30:
          v17 = MEMORY[0x20F2F5430]();
LABEL_21:
          v18 = v17;

          [v18 doubleValue];
          v15 = v19;

          if (v3 != v15)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v3 = 0.0;
      goto LABEL_15;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {

      v12 = MEMORY[0x20F2F5430](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v12 = *(v10 + 32);
    }

    [v12 doubleValue];
    v3 = v13;

    v11 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
      goto LABEL_10;
    }

LABEL_15:
    v14 = *(v11 + 16);
    if (!v14)
    {
LABEL_11:

      if (v3 != 0.0)
      {
        v15 = 0.0;
LABEL_23:
        [v7 frame];
        Height = CGRectGetHeight(v24);

        return (Height - v3 + -14.0) / (v15 + -14.0) < 0.05;
      }

LABEL_22:
      v20 = *(*(*&v2[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_dataProvider] + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      [v20 adjustedContentInset];
      v22 = v21;

      return v22 + a2 >= 4.0;
    }

    goto LABEL_16;
  }

  return result;
}

unint64_t sub_20BE8B954(double a1, double a2)
{
  result = [v2 navigationController];
  if (result)
  {
    v6 = result;
    v7 = [result navigationBar];

    if (!v7)
    {
      return 0;
    }

    v8 = [v7 _restingHeights];
    if (!v8)
    {
      goto LABEL_22;
    }

    v9 = v8;
    sub_20B51C88C(0, &qword_27C765490, 0x277CCABB0);
    v10 = sub_20C13CC74();

    v11 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
      if (!sub_20C13DB34())
      {
        v3 = 0.0;
LABEL_10:
        v14 = sub_20C13DB34();
        if (!v14)
        {
          goto LABEL_11;
        }

LABEL_16:
        v16 = __OFSUB__(v14, 1);
        result = v14 - 1;
        if (!v16)
        {
          if ((v10 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (result < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v17 = *(v10 + 8 * result + 32);
              goto LABEL_21;
            }

            __break(1u);
            return result;
          }

LABEL_30:
          v17 = MEMORY[0x20F2F5430]();
LABEL_21:
          v18 = v17;

          [v18 doubleValue];
          v15 = v19;

          if (v3 != v15)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v3 = 0.0;
      goto LABEL_15;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {

      v12 = MEMORY[0x20F2F5430](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v12 = *(v10 + 32);
    }

    [v12 doubleValue];
    v3 = v13;

    v11 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
      goto LABEL_10;
    }

LABEL_15:
    v14 = *(v11 + 16);
    if (!v14)
    {
LABEL_11:

      if (v3 != 0.0)
      {
        v15 = 0.0;
LABEL_23:
        [v7 frame];
        Height = CGRectGetHeight(v24);

        return (Height - v3 + -14.0) / (v15 + -14.0) < 0.05;
      }

LABEL_22:
      v20 = *(*(*&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider] + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      [v20 adjustedContentInset];
      v22 = v21;

      return v22 + a2 >= 4.0;
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t sub_20BE8BBF4(uint64_t a1)
{
  v2 = sub_20C138034();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764138, &qword_20C155CA0);
    v9 = sub_20C13DC44();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_20BE8F2DC(&unk_27C764140, MEMORY[0x277D53BA0], MEMORY[0x277D53BA8]);
      v16 = sub_20C13C7B4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_20BE8F2DC(&qword_27C763F00, MEMORY[0x277D53BA0], MEMORY[0x277D53BB0]);
          v23 = sub_20C13C894();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_20BE8BF50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7647B0, &unk_20C156170);
    v3 = sub_20C13DC44();
    v4 = 0;
    v5 = v3 + 56;
    v15 = a1 + 32;
    while (2)
    {
      v6 = *(v15 + 8 * v4);
      sub_20C13E164();

      sub_20C13C344();
      v7 = sub_20C13E1B4();
      v8 = ~(-1 << *(v3 + 32));
      for (i = v7 & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        v11 = sub_20C13C324();

        if (v11)
        {

          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      *(*(v3 + 48) + 8 * i) = v6;
      v12 = *(v3 + 16);
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (!v13)
      {
        *(v3 + 16) = v14;
LABEL_4:
        if (++v4 == v1)
        {
          return;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }
}

uint64_t sub_20BE8C0B0(uint64_t a1)
{
  v2 = sub_20C135C84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7642E0, &qword_20C155E20);
    v10 = sub_20C13DC44();
    v11 = 0;
    v12 = v10 + 56;
    v13 = *(v3 + 80);
    v25 = v9;
    v26 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v3 + 72);
    while (2)
    {
      sub_20B747A04(v26 + v14 * v11, v8);
      sub_20C13E164();
      sub_20C135C74();
      v15 = sub_20C13E1B4();
      v16 = ~(-1 << *(v10 + 32));
      for (i = v15 & v16; ; i = (i + 1) & v16)
      {
        v18 = *(v12 + 8 * (i >> 6));
        if (((1 << i) & v18) == 0)
        {
          break;
        }

        sub_20B747A04(*(v10 + 48) + i * v14, v5);
        v19 = MEMORY[0x20F2ED3D0](v5, v8);
        sub_20BE8ECB4(v5, MEMORY[0x277D52060]);
        if (v19)
        {
          sub_20BE8ECB4(v8, MEMORY[0x277D52060]);
          goto LABEL_4;
        }
      }

      *(v12 + 8 * (i >> 6)) = (1 << i) | v18;
      result = sub_20B7479A0(v8, *(v10 + 48) + i * v14);
      v21 = *(v10 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (!v22)
      {
        *(v10 + 16) = v23;
LABEL_4:
        if (++v11 == v25)
        {
          return v10;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_20BE8C2E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764100, &unk_20C155C60);
    v3 = sub_20C13DC44();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_20C13E164();

      sub_20C13CA64();
      result = sub_20C13E1B4();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_20C13DFF4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_20BE8C464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = type metadata accessor for MarketingOverlayImpressionsTracker(0);
  v8[4] = sub_20BE8F2DC(&qword_27C76FC30, type metadata accessor for MarketingOverlayImpressionsTracker, &unk_20C161718);
  v8[0] = a2;
  v5 = MEMORY[0x277D84F98];
  *(a3 + 120) = MEMORY[0x277D84F98];
  *(a3 + 128) = v5;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(a3 + 16) = v7[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FE00, &unk_20C161230);
  sub_20C133AA4();
  sub_20B51C710(v7, a3 + 80);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(a3 + 32) = sub_20C13A914();
  sub_20B51CC64(v8, a3 + 40);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B8E0204();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return a3;
}

void sub_20BE8C680(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764440, &qword_20C155F18);
    v3 = sub_20C13DC44();
    v4 = 0;
    v5 = v3 + 56;
    v23 = v1;
    v24 = a1 + 32;
    while (1)
    {
      v6 = *(v24 + v4);
      v25 = v4 + 1;
      sub_20C13E164();
      sub_20C13CA64();

      v7 = sub_20C13E1B4();
      v8 = ~(-1 << *(v3 + 32));
      v9 = v7 & v8;
      v10 = (v7 & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (v7 & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xED000073676E6952;
          v14 = 0x7974697669746361;
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              v13 = 0xE700000000000000;
              v14 = 0x7261426E727562;
              break;
            case 2:
              v13 = 0xE700000000000000;
              v15 = 0x636E65646163;
              goto LABEL_20;
            case 3:
              v13 = 0xE800000000000000;
              v14 = 0x65636E6174736964;
              break;
            case 4:
              v13 = 0xE600000000000000;
              v14 = 0x796772656E65;
              break;
            case 5:
              v14 = 0x7461527472616568;
              v13 = 0xE900000000000065;
              break;
            case 6:
              v13 = 0xE900000000000074;
              v14 = 0x6867696C68676968;
              break;
            case 7:
              v13 = 0xE900000000000079;
              v14 = 0x7469736E65746E69;
              break;
            case 8:
              v13 = 0xE700000000000000;
              v15 = 0x6E696C636E69;
LABEL_20:
              v14 = v15 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              break;
            case 9:
              v13 = 0xE300000000000000;
              v14 = 7172210;
              break;
            case 0xA:
              v13 = 0xE900000000000072;
              v14 = 0x6F74617261706573;
              break;
            case 0xB:
              v14 = 7172211;
              v13 = 0xE300000000000000;
              break;
            case 0xC:
              v13 = 0xE800000000000000;
              v14 = 0x73736572676F7270;
              break;
            case 0xD:
              v13 = 0xE500000000000000;
              v14 = 0x72656D6974;
              break;
            default:
              break;
          }

          v16 = 0x7974697669746361;
          v17 = 0xED000073676E6952;
          switch(v6)
          {
            case 1:
              v17 = 0xE700000000000000;
              if (v14 == 0x7261426E727562)
              {
                goto LABEL_45;
              }

              goto LABEL_46;
            case 2:
              v17 = 0xE700000000000000;
              v18 = 0x636E65646163;
              goto LABEL_50;
            case 3:
              v17 = 0xE800000000000000;
              if (v14 != 0x65636E6174736964)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 4:
              v17 = 0xE600000000000000;
              if (v14 != 0x796772656E65)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 5:
              v17 = 0xE900000000000065;
              if (v14 != 0x7461527472616568)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 6:
              v17 = 0xE900000000000074;
              if (v14 != 0x6867696C68676968)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 7:
              v17 = 0xE900000000000079;
              if (v14 != 0x7469736E65746E69)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 8:
              v17 = 0xE700000000000000;
              v18 = 0x6E696C636E69;
LABEL_50:
              if (v14 != (v18 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 9:
              v17 = 0xE300000000000000;
              if (v14 != 7172210)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 10:
              v17 = 0xE900000000000072;
              v16 = 0x6F74617261706573;
              goto LABEL_44;
            case 11:
              v17 = 0xE300000000000000;
              if (v14 != 7172211)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 12:
              v17 = 0xE800000000000000;
              if (v14 != 0x73736572676F7270)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 13:
              v17 = 0xE500000000000000;
              if (v14 != 0x72656D6974)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            default:
LABEL_44:
              if (v14 != v16)
              {
                goto LABEL_46;
              }

LABEL_45:
              if (v13 == v17)
              {

                goto LABEL_4;
              }

LABEL_46:
              v19 = sub_20C13DFF4();

              if (v19)
              {
                goto LABEL_4;
              }

              v9 = (v9 + 1) & v8;
              v10 = v9 >> 6;
              v11 = *(v5 + 8 * (v9 >> 6));
              v12 = 1 << v9;
              if ((v11 & (1 << v9)) == 0)
              {
                goto LABEL_52;
              }

              break;
          }
        }
      }

LABEL_52:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      v4 = v25;
      if (v25 == v23)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20BE8CCD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_20C13DC44();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      sub_20C13E164();
      MEMORY[0x20F2F58E0](v12);
      result = sub_20C13E1B4();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (*(v19 + v15) != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20BE8CE0C(uint64_t a1)
{
  v2 = sub_20C137404();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FDC0, &qword_20C172878);
    v9 = sub_20C13DC44();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_20BE8F2DC(&qword_27C76BF30, MEMORY[0x277D53330], MEMORY[0x277D53338]);
      v16 = sub_20C13C7B4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_20BE8F2DC(&qword_27C76FDD0, MEMORY[0x277D53330], MEMORY[0x277D53340]);
          v23 = sub_20C13C894();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20BE8D12C(uint64_t a1)
{
  v2 = sub_20C133134();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FD18, &qword_20C1813F8);
    v9 = sub_20C13DC44();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_20BE8F2DC(&qword_27C76FD20, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_20C13C7B4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_20BE8F2DC(&qword_27C76FD28, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_20C13C894();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20BE8D44C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764688, &unk_20C181470);
    v3 = sub_20C13DC44();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_20C13E154();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20BE8D5B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_20C13DC44();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      sub_20C13E164();
      MEMORY[0x20F2F58E0](v12);
      result = sub_20C13E1B4();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (v12 != *(v19 + v15))
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20BE8D710(uint64_t a1)
{
  v2 = sub_20C132EE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641A8, &unk_20C155CE0);
    v9 = sub_20C13DC44();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_20BE8F2DC(&qword_27C7675A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v16 = sub_20C13C7B4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_20BE8F2DC(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v23 = sub_20C13C894();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20BE8DA30(uint64_t a1)
{
  v2 = sub_20C136064();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FD48, &unk_20C181408);
    v9 = sub_20C13DC44();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_20BE8F2DC(&qword_27C76FD50, MEMORY[0x277D52578], MEMORY[0x277D52580]);
      v16 = sub_20C13C7B4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_20BE8F2DC(&unk_27C76FD58, MEMORY[0x277D52578], MEMORY[0x277D52588]);
          v23 = sub_20C13C894();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

id sub_20BE8DD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(v41) = a7;
  v40 = a6;
  v43 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v11 - 8);
  v46 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v13 - 8);
  v45 = &v39 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v15 - 8);
  v42 = &v39 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v39 - v18;
  v44 = sub_20C1333A4();
  v20 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C1390D4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = &type metadata for CatalogPageNavigator;
  v50[4] = &off_2822FB218;
  v27 = swift_allocObject();
  v50[0] = v27;
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  *(v27 + 32) = v40;
  *(v27 + 40) = v41;
  (*(v24 + 104))(v26, *MEMORY[0x277D54278], v23);
  sub_20B51CC64(v50, v49);
  v41 = type metadata accessor for AccountViewController(0);
  v28 = objc_allocWithZone(v41);
  v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_visibility] = 1;
  *&v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_dependencies] = a1;
  sub_20B51CC64(v49, &v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_pageNavigator]);
  (*(v24 + 16))(&v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_metricPagePublishingBehavior], v26, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_eventHub] = v48;
  sub_20C133AA4();
  v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_platform] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(&v48, &v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_storefrontLocalizer]);
  type metadata accessor for AccountPageDataProvider();
  swift_allocObject();
  swift_unknownObjectRetain();

  v30 = sub_20B81E02C(v29, a2, v43);

  swift_unknownObjectRelease();
  *&v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_dataProvider] = v30;
  v31 = *MEMORY[0x277D51830];
  v32 = sub_20C1352F4();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v19, v31, v32);
  (*(v33 + 56))(v19, 0, 1, v32);
  v34 = sub_20C132C14();
  (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
  v35 = sub_20C135ED4();
  (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
  v36 = sub_20C136914();
  (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
  sub_20C133384();
  (*(v20 + 32))(&v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_metricPage], v22, v44);
  v47.receiver = v28;
  v47.super_class = v41;
  v37 = objc_msgSendSuper2(&v47, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v49);
  (*(v24 + 8))(v26, v23);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return v37;
}

id sub_20BE8E3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v27[3] = a5(0);
  v27[4] = sub_20BE8F2DC(a6, a7, a8);
  v27[0] = a3;
  v14 = type metadata accessor for MarketingControllerHandler(0);
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_actionHandler];
  *v16 = 0;
  *(v16 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v17 = v26;
  v18 = &v15[OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_eventHub];
  *v18 = v25;
  *(v18 + 1) = v17;
  sub_20B51CC64(v27, &v15[OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_impressionConsumer]);
  *&v15[OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_marketingHostedContentCoordinator] = a2;
  v19 = OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_metricPage;
  v20 = sub_20C1333A4();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v15[v19], a4, v20);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();

  *&v15[OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_subscriptionToken] = sub_20C13A914();
  v24.receiver = v15;
  v24.super_class = v14;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  (*(v21 + 8))(a4, v20);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v22;
}

uint64_t type metadata accessor for RootViewController(uint64_t a1)
{
  result = qword_27C76FD00;
  if (!qword_27C76FD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BE8E658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BE88414(a1, v4, v5, v6);
}

void sub_20BE8E72C(uint64_t a1)
{
  sub_20B95B744();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BE8E984()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20B887644();
}

uint64_t sub_20BE8EB58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BE8EBD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_20B52A9D4;

  return sub_20BE893E8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_20BE8ECB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BE8ED14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B858, &unk_20C171950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20BE8ED84()
{
  v1 = sub_20C13A814();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_resignActiveObserver) = 0;
  v5 = v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = -4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentability) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_isTransitioningContentInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_visibility) = 1;
  v6 = OBJC_IVAR____TtC9SeymourUI18RootViewController_controllerDisplayCoordinator;
  type metadata accessor for MarketingControllerDisplayCoordinator();
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710C0, &unk_20C180F80);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = MEMORY[0x277D84F98];
  *(v7 + 16) = v8;
  *(v0 + v6) = v7;
  v9 = OBJC_IVAR____TtC9SeymourUI18RootViewController_dynamicOfferCoordinator;
  *(v0 + v9) = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v10 = OBJC_IVAR____TtC9SeymourUI18RootViewController_purchaseCoordinator;
  *(v0 + v10) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v11 = OBJC_IVAR____TtC9SeymourUI18RootViewController_purchaseHandler;
  *(v0 + v11) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  v12 = OBJC_IVAR____TtC9SeymourUI18RootViewController_webUserInterfaceCoordinator;
  *(v0 + v12) = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_hasContentInsetChanged) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_isBeyondScrollBoundary) = 0;
  (*(v2 + 104))(v4, *MEMORY[0x277D4F088], v1);
  v13[1] = 0;
  sub_20C13A384();
  sub_20C13DE24();
  __break(1u);
}

id sub_20BE8F004(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();

  v10 = sub_20C13BB74();
  v11 = sub_20C13D1F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_20B51E694(a1, a2, v22);
    _os_log_impl(&dword_20B517000, v10, v11, "[UM] Providing marketing placement content for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F2F6A40](v13, -1, -1);
    MEMORY[0x20F2F6A40](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = *(v3 + OBJC_IVAR____TtC9SeymourUI18RootViewController_marketingHostedContentCoordinator);
  swift_beginAccess();
  v15 = *(v14 + 120);
  if (*(v15 + 16))
  {

    v16 = sub_20B65AA60(a1, a2);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 16 * v16);

      v19 = [v18 view];

      return v19;
    }
  }

  return 0;
}

uint64_t sub_20BE8F2DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20BE8F32C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FE08, &unk_20C1814D0);
    v3 = sub_20C13DC44();
    v4 = 0;
    v5 = v3 + 56;
    v28 = a1 + 32;
    v27 = v1;
    while (1)
    {
      v6 = *(v28 + v4);
      v29 = v4 + 1;
      sub_20C13E164();
      sub_20C13CA64();

      v7 = sub_20C13E1B4();
      v8 = ~(-1 << *(v3 + 32));
      v9 = v7 & v8;
      v10 = (v7 & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (v7 & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 > 3)
          {
            if (*(*(v3 + 48) + v9) <= 5u)
            {
              if (v13 == 4)
              {
                v14 = 0xD000000000000014;
                v15 = 0x800000020C191840;
                if (v6 > 3)
                {
                  goto LABEL_41;
                }

                goto LABEL_28;
              }

              v14 = 0xD000000000000015;
              v15 = 0x800000020C191860;
LABEL_27:
              if (v6 > 3)
              {
                goto LABEL_41;
              }

              goto LABEL_28;
            }

            if (v13 == 6)
            {
              v14 = 0xD000000000000015;
              v15 = 0x800000020C191880;
              if (v6 > 3)
              {
                goto LABEL_41;
              }
            }

            else
            {
              v14 = 0xD000000000000016;
              v15 = 0x800000020C1918A0;
              if (v6 > 3)
              {
                goto LABEL_41;
              }
            }
          }

          else
          {
            if (*(*(v3 + 48) + v9) > 1u)
            {
              v14 = 0x6E6E614274736574;
              v15 = 0xEB00000000317265;
              if (v13 != 2)
              {
                v14 = 0xD000000000000014;
                v15 = 0x800000020C191820;
                if (v6 > 3)
                {
                  goto LABEL_41;
                }

                goto LABEL_28;
              }

              goto LABEL_27;
            }

            if (*(*(v3 + 48) + v9))
            {
              v14 = 0xD000000000000013;
            }

            else
            {
              v14 = 0xD000000000000016;
            }

            if (*(*(v3 + 48) + v9))
            {
              v15 = 0x800000020C191800;
            }

            else
            {
              v15 = 0x800000020C1917E0;
            }

            if (v6 > 3)
            {
LABEL_41:
              v18 = 0xD000000000000016;
              if (v6 == 6)
              {
                v18 = 0xD000000000000015;
              }

              v19 = 0x800000020C1918A0;
              if (v6 == 6)
              {
                v19 = 0x800000020C191880;
              }

              if (v6 == 4)
              {
                v20 = 0xD000000000000014;
              }

              else
              {
                v20 = 0xD000000000000015;
              }

              v21 = 0x800000020C191860;
              if (v6 == 4)
              {
                v21 = 0x800000020C191840;
              }

              if (v6 <= 5)
              {
                v22 = v20;
              }

              else
              {
                v22 = v18;
              }

              if (v6 <= 5)
              {
                v16 = v21;
              }

              else
              {
                v16 = v19;
              }

              if (v14 != v22)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            }
          }

LABEL_28:
          if (v6 > 1)
          {
            if (v6 == 2)
            {
              v17 = 0x6E6E614274736574;
            }

            else
            {
              v17 = 0xD000000000000014;
            }

            if (v6 == 2)
            {
              v16 = 0xEB00000000317265;
            }

            else
            {
              v16 = 0x800000020C191820;
            }

            if (v14 != v17)
            {
              goto LABEL_58;
            }
          }

          else if (v6)
          {
            v16 = 0x800000020C191800;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v16 = 0x800000020C1917E0;
            if (v14 != 0xD000000000000016)
            {
              goto LABEL_58;
            }
          }

LABEL_57:
          if (v15 == v16)
          {

            goto LABEL_4;
          }

LABEL_58:
          v23 = sub_20C13DFF4();

          if (v23)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v3 + 16) = v26;
LABEL_4:
      v4 = v29;
      if (v29 == v27)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_20BE8F7E4(char a1, char a2)
{
  if (qword_27C760C58 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  if ((a2 & 1) == 0)
  {

    if ((a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  v6 = qword_27C76FE18;

  sub_20B6FFF90(&v5, 13);
  v3 = v6;
  if (a1)
  {
LABEL_7:
    v6 = v3;
    sub_20B6FFF90(&v5, 1);
  }
}

uint64_t sub_20BE8FA88()
{
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
  v1 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
  v2 = v6;
  if (v6)
  {
    v3 = swift_unknownObjectRetain();
    MEMORY[0x20F2F43B0](v3);
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();
    v1 = v5;
  }

  sub_20B520158(&v6, &unk_27C764C80, &unk_20C156F70);
  return v1;
}

char *sub_20BE8FB54(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_20C13A814();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayAndSettingsControlsView] = 0;
  v11 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_gymKitResumeMachineView;
  v12 = [objc_allocWithZone(type metadata accessor for GymKitResumeMachineView()) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v11] = v12;
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsPopoverSourceView] = 0;
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView] = 0;
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_videoBoundsObserver] = 0;
  (*(v8 + 104))(v10, *MEMORY[0x277D4EF20], v7);
  LOBYTE(aBlock) = 1;
  sub_20C13A384();
  v13 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:0 action:0];
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_tapGestureRecognizer] = v13;
  type metadata accessor for SessionVideoPlayerViewController.NoKeyCommandAVPlayerViewController();
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator] = a3;
  v14 = &v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_presenter];
  *v14 = a1;
  *(v14 + 1) = a2;
  v84 = a2;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v85 = a3;

  swift_unknownObjectRetain();
  v17 = [v16 bundleForClass_];
  sub_20C132964();

  v18 = objc_allocWithZone(MEMORY[0x277CB85A8]);
  v19 = sub_20C13C914();

  v20 = [v18 initWithTitle:v19 type:2];

  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayControlItem] = v20;
  v21 = qword_27C760C88;
  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = qword_27C770A90;
  v24 = sub_20C13C914();
  v25 = objc_opt_self();
  v26 = [v25 systemImageNamed:v24 withConfiguration:v23];

  if (v26)
  {
    v27 = [v26 imageWithRenderingMode_];
  }

  else
  {
    v27 = 0;
  }

  [v22 setImage_];

  v28 = [v16 bundleForClass_];
  sub_20C132964();

  v29 = objc_allocWithZone(MEMORY[0x277CB85A8]);
  v30 = sub_20C13C914();

  v31 = [v29 initWithTitle:v30 type:2];

  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsControlItem] = v31;
  v32 = v31;
  v33 = sub_20C13C914();
  v34 = [v25 smm:v33 systemImageNamed:?];

  v35 = [v34 imageWithConfiguration_];
  v36 = [v35 imageWithRenderingMode_];

  [v32 setImage_];
  v37 = type metadata accessor for SessionVideoPlayerViewController(0);
  v92.receiver = v3;
  v92.super_class = v37;
  v38 = objc_msgSendSuper2(&v92, sel_initWithNibName_bundle_, 0, 0);
  v39 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_tapGestureRecognizer;
  v40 = *&v38[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_tapGestureRecognizer];
  v41 = v38;
  [v40 addTarget:v41 action:sel_didTapMediaPlayerViewWithTapGestureRecognizer_];
  [*&v38[v39] setEnabled_];
  *(a1 + 24) = &off_2822F15B0;
  swift_unknownObjectWeakAssign();
  v42 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController;
  [*&v41[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController] setAllowsPictureInPicturePlayback_];
  v43 = *&v41[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayControlItem];
  v44 = swift_allocObject();
  v45 = v84;
  *(v44 + 16) = a1;
  *(v44 + 24) = v45;
  v90 = sub_20BE95C14;
  v91 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v87 = 1107296256;
  v88 = sub_20B7B548C;
  v89 = &block_descriptor_144;
  v46 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v47 = v43;

  [v47 setAction_];
  _Block_release(v46);

  v48 = *&v41[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsControlItem];
  v49 = swift_allocObject();
  *(v49 + 16) = a1;
  *(v49 + 24) = v45;
  v90 = sub_20BE95C1C;
  v91 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v87 = 1107296256;
  v88 = sub_20B7B548C;
  v89 = &block_descriptor_28_5;
  v50 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v51 = v48;

  [v51 setAction_];
  _Block_release(v50);

  v52 = [*&v41[v42] contentOverlayView];
  if (v52)
  {
    v53 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_gymKitResumeMachineView;
    v54 = v52;
    [v52 addSubview_];
    v84 = objc_opt_self();
    v56 = *MEMORY[0x277D768C8];
    v55 = *(MEMORY[0x277D768C8] + 8);
    v57 = *(MEMORY[0x277D768C8] + 16);
    v58 = *(MEMORY[0x277D768C8] + 24);
    v59 = *&v41[v53];
    v60 = [v59 leadingAnchor];
    v61 = [v54 leadingAnchor];
    v62 = [v60 constraintEqualToAnchor:v61 constant:v55];

    LODWORD(v63) = 1148846080;
    [v62 setPriority_];
    v83 = v62;
    v64 = [v59 trailingAnchor];
    v65 = [v54 trailingAnchor];
    v66 = [v64 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v67) = 1148846080;
    [v66 setPriority_];
    v68 = v66;
    v69 = [v59 topAnchor];
    v70 = [v54 topAnchor];
    v71 = [v69 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v72) = 1148846080;
    [v71 setPriority_];
    v73 = [v59 bottomAnchor];
    v74 = [v54 bottomAnchor];
    v75 = [v73 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v76) = 1148846080;
    [v75 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_20C14FE90;
    v78 = v83;
    *(v77 + 32) = v83;
    *(v77 + 40) = v68;
    *(v77 + 48) = v71;
    *(v77 + 56) = v75;
    v79 = v71;

    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v80 = sub_20C13CC54();

    [v84 activateConstraints_];
  }

  [*&v41[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_gymKitResumeMachineView] setAlpha_];

  swift_unknownObjectRelease();

  return v41;
}

uint64_t sub_20BE9061C(uint64_t result)
{
  v1 = *(result + 120);
  if (v1)
  {
    v2 = *(result + 128);

    v1(v3);

    return sub_20B583ECC(v1, v2);
  }

  return result;
}

uint64_t sub_20BE90678(uint64_t result)
{
  v1 = *(result + 72);
  if (v1)
  {
    v2 = *(result + 80);

    v1(v3);

    return sub_20B583ECC(v1, v2);
  }

  return result;
}

void sub_20BE906FC()
{
  v1 = v0;
  v44.receiver = v0;
  v44.super_class = type metadata accessor for SessionVideoPlayerViewController(0);
  objc_msgSendSuper2(&v44, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [objc_opt_self() blackColor];
  [v8 setBackgroundColor_];

  v10 = [v1 view];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  [v10 setOpaque_];

  v12 = [v2 view];
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  [v12 addGestureRecognizer_];

  v14 = [v2 view];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v1 view];
  if (v16)
  {
    v17 = v16;
    v18 = objc_opt_self();
    v20 = *MEMORY[0x277D768C8];
    v19 = *(MEMORY[0x277D768C8] + 8);
    v21 = *(MEMORY[0x277D768C8] + 16);
    v22 = *(MEMORY[0x277D768C8] + 24);
    v23 = [v15 leadingAnchor];
    v24 = [v17 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:v19];

    LODWORD(v26) = 1148846080;
    [v25 setPriority_];
    v27 = v25;
    v28 = [v15 trailingAnchor];
    v29 = [v17 trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:-v22];

    LODWORD(v31) = 1148846080;
    [v30 setPriority_];
    v32 = v30;
    v33 = [v15 topAnchor];
    v34 = [v17 topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:v20];

    LODWORD(v36) = 1148846080;
    [v35 setPriority_];
    v37 = [v15 bottomAnchor];
    v38 = [v17 bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:-v21];

    LODWORD(v40) = 1148846080;
    [v39 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_20C14FE90;
    *(v41 + 32) = v27;
    *(v41 + 40) = v32;
    *(v41 + 48) = v35;
    *(v41 + 56) = v39;
    v42 = v35;

    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v43 = sub_20C13CC54();

    [v18 activateConstraints_];

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_20BE90DB4(uint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v7 = v1;

  v8 = sub_20C13BB74();
  v9 = sub_20C13D1F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    *v10 = 138543618;
    v49 = v4;
    v50[0] = v12;
    v13 = v7;
    v14 = *&v7[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
    *(v10 + 4) = v14;
    *v11 = v14;
    *(v10 + 12) = 2082;
    sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
    sub_20BE95F24();
    v47 = v3;
    v15 = v14;
    v7 = v13;
    v16 = sub_20C13C764();
    v18 = sub_20B51E694(v16, v17, v50);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_20B517000, v8, v9, "Updating pre-session video transport controls on %{public}@: %{public}s", v10, 0x16u);
    sub_20B520158(v11, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v11, -1, -1);
    v19 = v48;
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x20F2F6A40](v19, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);

    (*(v49 + 8))(v6, v47);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  if (*(*&v7[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_presenter] + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_platform) != 3)
  {
    return;
  }

  if (*(a1 + 16))
  {
    v20 = sub_20B65CEBC();
    if (v21)
    {
      v22 = *(*(a1 + 56) + 8 * v20);
      v23 = *&v7[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_20C14F580;
      *(v24 + 32) = v22;
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
      v25 = v22;
      v26 = sub_20C13CC54();

      [v23 setTransportBarCustomMenuItems_];
    }
  }

  v27 = sub_20C13AAC4();
  v50[3] = v27;
  v50[4] = sub_20BE95C88();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(*(v27 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4F1F8], v27);
  LOBYTE(v27) = sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1(v50);
  if ((v27 & 1) == 0)
  {
    v36 = MEMORY[0x277D84F90];
    v50[0] = MEMORY[0x277D84F90];
    if (*(a1 + 16))
    {
      v37 = sub_20B65CEBC();
      if (v38)
      {
        v39 = *(*(a1 + 56) + 8 * v37);
        MEMORY[0x20F2F43B0]();
        if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20C13CCA4();
        }

        sub_20C13CCE4();

        v36 = v50[0];
      }

      if (*(a1 + 16))
      {
        v40 = sub_20B65CEBC();
        if (v41)
        {
          v42 = *(*(a1 + 56) + 8 * v40);
          MEMORY[0x20F2F43B0]();
          if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20C13CCA4();
          }

          sub_20C13CCE4();

          v36 = v50[0];
        }
      }
    }

    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v44 = [objc_opt_self() bundleForClass_];
    sub_20C132964();

    if (v36 >> 62)
    {
      if (sub_20C13DB34())
      {
        goto LABEL_30;
      }
    }

    else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_30:
      sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);

      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_20C14F580;
    sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
    *(v45 + 32) = sub_20C13D624();
    goto LABEL_30;
  }

  v29 = *&v7[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
  v30 = *(*&v7[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator] + 32);
  v50[0] = MEMORY[0x277D84F90];
  v31 = *(v30 + 16);
  if (v31)
  {

    v32 = 32;
    do
    {
      if (*(a1 + 16))
      {
        v33 = sub_20B65CEBC();
        if (v34)
        {
          v35 = *(*(a1 + 56) + 8 * v33);
          MEMORY[0x20F2F43B0]();
          if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20C13CCA4();
          }

          sub_20C13CCE4();
        }
      }

      ++v32;
      --v31;
    }

    while (v31);
  }

  sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
  v46 = sub_20C13CC54();

  [v29 setTransportBarCustomMenuItems_];
}

void sub_20BE91554(uint64_t a1, uint64_t a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v9 = v2;

  v10 = sub_20C13BB74();
  v11 = sub_20C13D1F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v41 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v13 = 138543618;
    v40 = v6;
    v15 = a1;
    v16 = *&v9[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
    *(v13 + 4) = v16;
    *v14 = v16;
    *(v13 + 12) = 2082;
    sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
    sub_20BE95F24();
    v38 = v5;
    v17 = v16;
    a1 = v15;
    v18 = sub_20C13C764();
    v20 = sub_20B51E694(v18, v19, &v42);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_20B517000, v10, v11, "Updating Airplay and Settings video transport controls on %{public}@: %{public}s", v13, 0x16u);
    sub_20B520158(v14, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v14, -1, -1);
    v21 = v39;
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x20F2F6A40](v21, -1, -1);
    MEMORY[0x20F2F6A40](v13, -1, -1);

    (*(v40 + 8))(v8, v38);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  if (*(*&v9[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_presenter] + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_platform) <= 1u)
  {
    v42 = MEMORY[0x277D84F90];
    if (sub_20B8DD11C())
    {
      v22 = *&v9[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayControlItem];
      MEMORY[0x20F2F43B0]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
    }

    if (*(a1 + 16))
    {
      v23 = sub_20B65CEBC();
      if (v24)
      {
        v25 = *(*(a1 + 56) + 8 * v23);
        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        if (v26)
        {
          v27 = v26;
          v28 = v9;
          v29 = objc_allocWithZone(MEMORY[0x277CB85A8]);
          v30 = v25;
          v31 = sub_20C13C914();
          v32 = [v29 initWithTitle:v31 type:2];

          v33 = [v27 image];
          [v32 setImage_];

          [v32 setMenu_];
          v34 = v32;
          MEMORY[0x20F2F43B0]();
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20C13CCA4();
          }

          sub_20C13CCE4();

          v9 = v28;
        }
      }
    }

    v35 = *&v9[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
    sub_20B51C88C(0, &qword_27C76FE98, 0x277CB85A8);
    v36 = sub_20C13CC54();

    [v35 setCustomControlItems_];
  }
}

void sub_20BE91A34(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370, &qword_20C153C70);
  v121 = *(v3 - 8);
  v122 = v3;
  MEMORY[0x28223BE20](v3);
  v118 = v4;
  v119 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v124 = &v114 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v123 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v120 = &v114 - v8;
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v13 = v1;

  v14 = sub_20C13BB74();
  v15 = sub_20C13D1F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v116 = v10;
    v17 = v16;
    v18 = swift_slowAlloc();
    v117 = v7;
    v19 = v18;
    v114 = swift_slowAlloc();
    v125[0] = v114;
    *v17 = 138543618;
    v20 = *&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
    *(v17 + 4) = v20;
    *v19 = v20;
    *(v17 + 12) = 2082;
    sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
    v115 = v9;
    sub_20BE95F24();
    v21 = v13;
    v22 = v20;
    v23 = sub_20C13C764();
    v25 = sub_20B51E694(v23, v24, v125);

    *(v17 + 14) = v25;
    v13 = v21;
    _os_log_impl(&dword_20B517000, v14, v15, "Updating in-session video transport controls on %{public}@: %{public}s", v17, 0x16u);
    sub_20B520158(v19, &unk_27C762E30, &unk_20C150580);
    v26 = v19;
    v7 = v117;
    MEMORY[0x20F2F6A40](v26, -1, -1);
    v27 = v114;
    __swift_destroy_boxed_opaque_existential_1(v114);
    MEMORY[0x20F2F6A40](v27, -1, -1);
    MEMORY[0x20F2F6A40](v17, -1, -1);

    (*(v116 + 8))(v12, v115);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v28 = *(*&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_presenter] + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_platform);
  if (v28 >= 2)
  {
    if (v28 == 2)
    {
      return;
    }

    if (*(a1 + 16))
    {
      v54 = sub_20B65CEBC();
      if (v55)
      {
        v56 = *(*(a1 + 56) + 8 * v54);
        v57 = *&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_20C14F580;
        *(v58 + 32) = v56;
        sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
        v59 = v56;
        v60 = sub_20C13CC54();

        [v57 setTransportBarCustomMenuItems_];
      }
    }

    v61 = sub_20C13AAC4();
    v125[3] = v61;
    v125[4] = sub_20BE95C88();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v125);
    (*(*(v61 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4F1F8], v61);
    LOBYTE(v61) = sub_20C1383C4();
    __swift_destroy_boxed_opaque_existential_1(v125);
    if (v61)
    {
      v43 = *&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
      v63 = [v43 player];
      if (v63)
      {
        v64 = v63;
        v65 = [v63 currentItem];

        if (v65)
        {
          v66 = [v65 asset];

          if (v66)
          {
            objc_opt_self();
            v67 = swift_dynamicCastObjCClass();
            if (v67)
            {
              v68 = v67;
              sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
              v69 = sub_20C13D374();
              v70 = swift_allocObject();
              *(v70 + 16) = v68;
              *(v70 + 24) = v69;
              sub_20B51C88C(0, &qword_27C763230, 0x277CE6510);
              v117 = v66;
              v71 = v124;
              sub_20C137C94();
              v72 = swift_allocObject();
              *(v72 + 16) = v13;
              *(v72 + 24) = a1;
              v73 = swift_allocObject();
              *(v73 + 16) = sub_20BE95DA0;
              *(v73 + 24) = v72;
              v75 = v121;
              v74 = v122;
              v76 = v119;
              (*(v121 + 16))(v119, v71, v122);
              v77 = (*(v75 + 80) + 16) & ~*(v75 + 80);
              v78 = (v118 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
              v79 = swift_allocObject();
              (*(v75 + 32))(v79 + v77, v76, v74);
              v80 = (v79 + v78);
              *v80 = sub_20B939E00;
              v80[1] = v73;
              v81 = v13;

              v82 = v120;
              sub_20C137C94();
              (*(v75 + 8))(v124, v74);
              v83 = sub_20C137CB4();
              v84 = swift_allocObject();
              *(v84 + 16) = 0;
              *(v84 + 24) = 0;
              v83(sub_20B5DF6DC, v84);

              (*(v123 + 8))(v82, v7);
              return;
            }
          }
        }
      }

      v108 = *(*&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator] + 32);
      v125[0] = MEMORY[0x277D84F90];
      v109 = *(v108 + 16);
      if (v109)
      {

        v110 = 32;
        do
        {
          if (*(a1 + 16))
          {
            v111 = sub_20B65CEBC();
            if (v112)
            {
              v113 = *(*(a1 + 56) + 8 * v111);
              MEMORY[0x20F2F43B0]();
              if (*((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_20C13CCA4();
              }

              sub_20C13CCE4();
            }
          }

          ++v110;
          --v109;
        }

        while (v109);
      }

      goto LABEL_74;
    }

    v93 = MEMORY[0x277D84F90];
    v125[0] = MEMORY[0x277D84F90];
    if (*(a1 + 16))
    {
      v94 = sub_20B65CEBC();
      if (v95)
      {
        v96 = *(*(a1 + 56) + 8 * v94);
        MEMORY[0x20F2F43B0]();
        if (*((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20C13CCA4();
        }

        sub_20C13CCE4();

        v93 = v125[0];
      }

      if (*(a1 + 16))
      {
        v97 = sub_20B65CEBC();
        if (v98)
        {
          v99 = *(*(a1 + 56) + 8 * v97);
          MEMORY[0x20F2F43B0]();
          if (*((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20C13CCA4();
          }

          sub_20C13CCE4();

          v93 = v125[0];
        }
      }
    }

    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v101 = [objc_opt_self() bundleForClass_];
    sub_20C132964();

    if (v93 >> 62)
    {
      if (sub_20C13DB34())
      {
        goto LABEL_53;
      }
    }

    else if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_53:
      sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);

      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_20C14F580;
    sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
    *(v102 + 32) = sub_20C13D624();
    goto LABEL_53;
  }

  if (!_UISolariumEnabled())
  {
    v85 = *&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
    v86 = *(*&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator] + 32);
    v125[0] = MEMORY[0x277D84F90];
    v87 = *(v86 + 16);
    if (v87)
    {

      v88 = 32;
      do
      {
        if (*(a1 + 16))
        {
          v89 = sub_20B65CEBC();
          if (v90)
          {
            v91 = *(*(a1 + 56) + 8 * v89);
            MEMORY[0x20F2F43B0]();
            if (*((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_20C13CCA4();
            }

            sub_20C13CCE4();
          }
        }

        ++v88;
        --v87;
      }

      while (v87);
    }

    sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
    v92 = sub_20C13CC54();

    [v85 setTransportBarCustomMenuItems_];
    goto LABEL_75;
  }

  if (*(a1 + 16))
  {
    v29 = sub_20B65CEBC();
    if (v30)
    {
      v31 = *(*(a1 + 56) + 8 * v29);
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (v32)
      {
        v33 = v32;
        v34 = objc_allocWithZone(MEMORY[0x277CB85A8]);
        v35 = v31;
        v36 = sub_20C13C914();
        v37 = [v34 initWithTitle:v36 type:2];

        v38 = [v33 image];
        [v37 setImage_];

        [v37 setMenu_];
        v39 = *&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_20C14F580;
        *(v40 + 32) = v37;
        sub_20B51C88C(0, &qword_27C76FE98, 0x277CB85A8);
        v41 = v37;
        v42 = sub_20C13CC54();

        [v39 setCustomControlItems_];
      }
    }
  }

  v43 = *&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
  v44 = *(*&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator] + 32);
  v45 = *(v44 + 16);
  v46 = MEMORY[0x277D84F90];
  if (v45)
  {
    v47 = *&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];

    v48 = MEMORY[0x277D84F90];
    v49 = 32;
    do
    {
      v52 = *(v44 + v49);
      if (v52 != 2)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125[0] = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5E974(0, *(v48 + 16) + 1, 1);
          v48 = v125[0];
        }

        v51 = *(v48 + 16);
        v50 = *(v48 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_20BB5E974((v50 > 1), v51 + 1, 1);
          v48 = v125[0];
        }

        *(v48 + 16) = v51 + 1;
        *(v48 + v51 + 32) = v52;
      }

      ++v49;
      --v45;
    }

    while (v45);

    v43 = v47;
    v46 = MEMORY[0x277D84F90];
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

  v125[0] = v46;
  v103 = *(v48 + 16);
  if (v103)
  {
    v104 = 32;
    do
    {
      if (*(a1 + 16))
      {
        v105 = sub_20B65CEBC();
        if (v106)
        {
          v107 = *(*(a1 + 56) + 8 * v105);
          MEMORY[0x20F2F43B0]();
          if (*((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20C13CCA4();
          }

          sub_20C13CCE4();
        }
      }

      ++v104;
      --v103;
    }

    while (v103);
  }

LABEL_74:
  sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
  v92 = sub_20C13CC54();

  [v43 setTransportBarCustomMenuItems_];
LABEL_75:
}

void sub_20BE92A30(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 customMediaSelectionScheme];
  if (v5)
  {

    v26 = *(a2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
    v6 = *(*(a2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator) + 32);
    v7 = *(v6 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {

      v9 = MEMORY[0x277D84F90];
      v10 = 32;
      do
      {
        v13 = *(v6 + v10);
        if (v13)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_20BB5E974(0, *(v9 + 16) + 1, 1);
          }

          v12 = *(v9 + 16);
          v11 = *(v9 + 24);
          if (v12 >= v11 >> 1)
          {
            sub_20BB5E974((v11 > 1), v12 + 1, 1);
          }

          *(v9 + 16) = v12 + 1;
          *(v9 + v12 + 32) = v13;
        }

        ++v10;
        --v7;
      }

      while (v7);

      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v28 = v8;
    v20 = *(v9 + 16);
    v14 = v26;
    if (v20)
    {
      v21 = 32;
      do
      {
        if (*(a3 + 16))
        {
          v22 = sub_20B65CEBC();
          if (v23)
          {
            v24 = *(*(a3 + 56) + 8 * v22);
            MEMORY[0x20F2F43B0]();
            if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_20C13CCA4();
            }

            sub_20C13CCE4();
          }
        }

        ++v21;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
    v27 = MEMORY[0x277D84F90];
    v15 = *(*(*(a2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator) + 32) + 16);
    if (v15)
    {

      v16 = 32;
      do
      {
        if (*(a3 + 16))
        {
          v17 = sub_20B65CEBC();
          if (v18)
          {
            v19 = *(*(a3 + 56) + 8 * v17);
            MEMORY[0x20F2F43B0]();
            if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_20C13CCA4();
            }

            sub_20C13CCE4();
          }
        }

        ++v16;
        --v15;
      }

      while (v15);
    }
  }

  sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
  v25 = sub_20C13CC54();

  [v14 setTransportBarCustomMenuItems_];
}

id sub_20BE92DC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for SessionVideoPlayerViewController(uint64_t a1)
{
  result = qword_27C76FE88;
  if (!qword_27C76FE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE92F80(uint64_t a1)
{
  sub_20B52432C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20BE93074()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v1 + 16) = sub_20BE95D70;
  *(v1 + 24) = v2;

  sub_20B583ECC(v3, v4);

  v9 = [objc_allocWithZone(MEMORY[0x277CB85E8]) init];
  [v9 setExcludedControls_];
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
  [v5 setConfiguration_];
  [v5 setSmu:0 includeTransportControls:?];
  if (_UISolariumEnabled())
  {
    [v5 setSmu:1 includeTransportControls:?];
    v6 = sub_20C138104();
    if (v6 != sub_20C138104())
    {
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
      v7 = sub_20C13CC54();
      [v5 setTransportBarCustomMenuItems_];
    }

    [v5 setShowsAudioLanguageMenu_];
  }

  else
  {
    sub_20B51C88C(0, &qword_27C76FE98, 0x277CB85A8);
    v8 = sub_20C13CC54();
    [v5 setCustomControlItems_];
  }
}

void sub_20BE9326C(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView);
  if (v5)
  {
    v10 = *(v4 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
    v18 = v5;
    v11 = [v10 view];
    if (v11)
    {
      v12 = v11;
      [v18 convertRect:v11 fromCoordinateSpace:{a1, a2, a3, a4}];
      sub_20C12E528(v13, v14, v15, v16);

      v17 = v12;
    }

    else
    {
      v17 = v18;
    }
  }
}

void sub_20BE9335C()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
  if ([v1 isPictureInPictureActive])
  {
    v2 = *MEMORY[0x277D768C8];
    v3 = *(MEMORY[0x277D768C8] + 8);
    v4 = *(MEMORY[0x277D768C8] + 16);
    v5 = *(MEMORY[0x277D768C8] + 24);
    v6 = v1;
LABEL_20:

    [v6 setLegibleContentInsets_];
    return;
  }

  sub_20C1380F4();
  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  [v8 nativeBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v46.origin.x = v10;
  v46.origin.y = v12;
  v46.size.width = v14;
  v46.size.height = v16;
  Width = CGRectGetWidth(v46);
  v18 = [v7 mainScreen];
  [v18 nativeScale];
  v20 = v19;

  v21 = sub_20C138104();
  v22 = sub_20C138104();
  v23 = 20.0;
  if (Width / v20 <= 375.0)
  {
    v23 = 16.0;
  }

  if (v21 == v22)
  {
    v24 = 80.0;
  }

  else
  {
    v24 = v23;
  }

  v25 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView];
  if (!v25)
  {
    v36 = [v0 view];
    if (v36)
    {
      v37 = v36;
      [v36 safeAreaInsets];
      v39 = v38;

      v40 = [v0 view];
      if (v40)
      {
        v41 = v40;
        [v40 safeAreaInsets];
        v43 = v42;

        v5 = v24 + v43;
        v2 = 0.0;
        v4 = 0.0;
        v6 = v1;
        v3 = v24 + v39;
        goto LABEL_20;
      }

LABEL_27:
      __break(1u);
      return;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v44 = v25;
  if (([v44 isHidden] & 1) != 0 || (objc_msgSend(v44, sel_alpha), v26 == 0.0))
  {
    v27 = [v0 view];
    if (!v27)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v28 = v27;
    [v27 safeAreaInsets];
    v30 = v29;

    MaxX = v24 + v30;
  }

  else
  {
    [*&v44[OBJC_IVAR____TtC9SeymourUI18SessionOverlayView_metricContainer] frame];
    MaxX = CGRectGetMaxX(v47);
  }

  v32 = [v0 view];
  if (!v32)
  {
    __break(1u);
    goto LABEL_25;
  }

  v33 = v32;
  [v32 safeAreaInsets];
  v35 = v34;

  [v1 setLegibleContentInsets_];
}

void sub_20BE93678(uint64_t a1)
{
  v2 = v1;
  if (_UISolariumEnabled())
  {
    v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a1;
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);
    *(v4 + 16) = sub_20BE95C48;
    *(v4 + 24) = v6;

    sub_20B583ECC(v7, v8);
  }

  else
  {
    v9 = objc_opt_self();
    v10 = [v9 buttonWithType_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = [v9 buttonWithType_];
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = objc_allocWithZone(type metadata accessor for AirplayAndSettingsControlsView());

    v13 = v10;
    v14 = v11;
    v15 = sub_20B832900(v13, v14, a1);
    [v15 setTranslatesAutoresizingMaskIntoConstraints_];
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = &v15[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_onTapAirplay];
    v18 = *&v15[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_onTapAirplay];
    v19 = *&v15[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_onTapAirplay + 8];
    *v17 = sub_20BE95C38;
    v17[1] = v16;

    sub_20B583ECC(v18, v19);

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = &v15[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_onTapSettings];
    v22 = *&v15[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_onTapSettings];
    v23 = *&v15[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_onTapSettings + 8];
    *v21 = sub_20BE95C40;
    v21[1] = v20;

    sub_20B583ECC(v22, v23);

    v24 = [*(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController) customControlsView];
    [v24 addSubview_];
    v25 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayAndSettingsControlsView);
    *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayAndSettingsControlsView) = v15;
    v26 = v15;

    v27 = *&v26[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_settingsButton];
    v28 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsPopoverSourceView);
    *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsPopoverSourceView) = v27;
    v29 = v27;

    v30 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_20C151490;
    v32 = [v26 bottomAnchor];
    v33 = [v24 safeAreaLayoutGuide];

    v34 = [v33 bottomAnchor];
    v35 = [v32 constraintEqualToAnchor:v34 constant:-12.0];

    *(v31 + 32) = v35;
    v36 = [v26 trailingAnchor];

    v37 = [v24 safeAreaLayoutGuide];
    v38 = [v37 trailingAnchor];

    v39 = [v36 constraintEqualToAnchor_];
    *(v31 + 40) = v39;
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v40 = sub_20C13CC54();

    [v30 activateConstraints_];
  }
}

void sub_20BE93B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_20BE91554(a1, a3);
  }
}

void sub_20BE93BAC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_presenter);
    v3 = Strong;
    swift_unknownObjectRetain();

    v4 = *(v2 + 120);
    v5 = *(v2 + 128);
    sub_20B584050(v4, v5);
    v6 = swift_unknownObjectRelease();
    if (v4)
    {
      v4(v6);
      sub_20B583ECC(v4, v5);
    }
  }
}

void sub_20BE93C48(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_presenter);
    v3 = Strong;
    swift_unknownObjectRetain();

    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    sub_20B584050(v4, v5);
    v6 = swift_unknownObjectRelease();
    if (v4)
    {
      v4(v6);
      sub_20B583ECC(v4, v5);
    }
  }
}

void sub_20BE93CE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370, &qword_20C153C70);
  v43 = *(v1 - 8);
  v44 = v1;
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v1);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  *(v10 + 16) = sub_20BE95C50;
  *(v10 + 24) = v11;

  sub_20B583ECC(v12, v13);

  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v49 = sub_20BE95C80;
  v50 = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  v48 = &block_descriptor_44_0;
  v16 = _Block_copy(aBlock);
  v17 = v0;

  [v14 animateWithDuration:v16 animations:0.2];
  _Block_release(v16);
  v18 = sub_20C13AAC4();
  v48 = v18;
  v49 = sub_20BE95C88();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
  (*(*(v18 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4F1F8], v18);
  LOBYTE(v18) = sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if ((v18 & 1) == 0)
  {
    goto LABEL_8;
  }

  v20 = [*&v17[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController] player];
  if (!v20)
  {
    goto LABEL_8;
  }

  v21 = v20;
  v22 = [v20 currentItem];

  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = [v22 asset];

  if (!v23)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {

LABEL_8:
    [*&v17[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController] setShowsAudioLanguageMenu_];
    goto LABEL_9;
  }

  v25 = v24;
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v26 = sub_20C13D374();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;
  sub_20B51C88C(0, &qword_27C763230, 0x277CE6510);
  v42 = v23;
  sub_20C137C94();
  v28 = swift_allocObject();
  *(v28 + 16) = v17;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_20BE95CE0;
  *(v29 + 24) = v28;
  v30 = v43;
  v31 = v44;
  (*(v43 + 16))(v3, v6, v44);
  v32 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v33 = swift_allocObject();
  (*(v30 + 32))(v33 + v32, v3, v31);
  v34 = (v33 + ((v2 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v34 = sub_20B939618;
  v34[1] = v29;
  v35 = v17;
  sub_20C137C94();
  (*(v30 + 8))(v6, v31);
  v36 = v46;
  v37 = sub_20C137CB4();
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  v37(sub_20B52347C, v38);

  (*(v45 + 8))(v9, v36);
LABEL_9:
  v39 = [*&v17[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsControlItem] view];
  v40 = *&v17[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsPopoverSourceView];
  *&v17[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsPopoverSourceView] = v39;
}

void sub_20BE942E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

void sub_20BE94358(uint64_t a1)
{
  v10 = [objc_allocWithZone(MEMORY[0x277CB85E8]) init];
  [v10 setExcludedControls_];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v4 = sub_20C13C914();

  [v10 setMediaPresentationSettingsAudioGroupTitle_];

  v5 = *(a1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
  [v5 setConfiguration_];
  sub_20BE9455C([v5 setSmu:1 includeTransportControls:?]);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_20C14F580;
    v7 = *(a1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsControlItem);
    *(v6 + 32) = v7;
    sub_20B51C88C(0, &qword_27C76FE98, 0x277CB85A8);
    v8 = v7;
    v9 = sub_20C13CC54();

    [v5 setCustomControlItems_];
  }
}

void sub_20BE9455C(uint64_t a1)
{
  if (_UISolariumEnabled())
  {
    v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
    v3 = [v2 customControlItems];
    if (v3)
    {
      v4 = v3;
      sub_20B51C88C(0, &qword_27C76FE98, 0x277CB85A8);
      v5 = sub_20C13CC74();

      if (v5 >> 62)
      {
        goto LABEL_21;
      }

      for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
      {
        v7 = 0;
        v18 = v2;
        v19 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayControlItem;
        v2 = (v5 & 0xC000000000000001);
        v8 = v5 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v2)
          {
            v9 = MEMORY[0x20F2F5430](v7, v5);
          }

          else
          {
            if (v7 >= *(v8 + 16))
            {
              goto LABEL_20;
            }

            v9 = *(v5 + 8 * v7 + 32);
          }

          v10 = v9;
          v11 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          v12 = v5;
          v13 = v1;
          v14 = *(v1 + v19);
          v15 = sub_20C13D5F4();

          if (v15)
          {
          }

          else
          {
            sub_20C13DD34();
            sub_20C13DD74();
            sub_20C13DD84();
            sub_20C13DD44();
          }

          v5 = v12;
          ++v7;
          v1 = v13;
          if (v11 == i)
          {
            v2 = v18;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        ;
      }

LABEL_22:

      v20 = sub_20C13CC54();

      v3 = v20;
    }

    v21 = v3;
    [v2 setCustomControlItems_];
    v17 = v21;
  }

  else
  {
    v16 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayAndSettingsControlsView;
    v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayAndSettingsControlsView);
    if (v17)
    {
      [v17 removeFromSuperview];
      v17 = *(v1 + v16);
    }

    *(v1 + v16) = 0;
  }
}

id sub_20BE947A8(id *a1, uint64_t a2)
{
  v3 = v2;
  v52 = sub_20C132FB4();
  v6 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0, &unk_20C166B80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB8, &unk_20C181630);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v44 - v16;
  v18 = *a1;
  v19 = [*a1 options];
  sub_20B51C88C(0, &qword_27C76FEC0, 0x277CE6518);
  v20 = sub_20C13CC74();

  if (v20 >> 62)
  {
LABEL_27:
    v55 = v20 & 0xFFFFFFFFFFFFFF8;
    v21 = sub_20C13DB34();
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_28:
    v48 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v55 = v20 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_28;
  }

LABEL_3:
  v22 = 0;
  v54 = v20 & 0xC000000000000001;
  v49 = (v6 + 8);
  v47 = v3;
  v48 = MEMORY[0x277D84F90];
  v53 = v21;
  v45 = v18;
  v46 = a2;
  v50 = v20;
  do
  {
    v18 = v22;
    while (1)
    {
      if (v54)
      {
        v23 = MEMORY[0x20F2F5430](v18, v20);
      }

      else
      {
        if (v18 >= *(v55 + 16))
        {
          goto LABEL_26;
        }

        v23 = *(v20 + 8 * v18 + 32);
      }

      v3 = v23;
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v24 = [v23 locale];
      v56 = (v18 + 1);
      if (v24)
      {
        v25 = v24;
        sub_20C132F84();

        v6 = 0;
      }

      else
      {
        v6 = 1;
      }

      v26 = sub_20C132FD4();
      a2 = *(v26 - 8);
      (*(a2 + 56))(v10, v6, 1, v26);
      sub_20BE95D00(v10, v13);
      if ((*(a2 + 48))(v13, 1, v26) != 1)
      {
        break;
      }

      sub_20B520158(v13, &qword_27C76FEB0, &unk_20C166B80);
LABEL_6:
      ++v18;
      if (v56 == v53)
      {
        a2 = v46;
        v18 = v45;
        goto LABEL_29;
      }
    }

    v27 = v10;
    v28 = v17;
    v29 = v51;
    sub_20C132FC4();
    (*(a2 + 8))(v13, v26);
    v6 = v29;
    sub_20C132FA4();
    v30 = v29;
    v17 = v28;
    (*v49)(v30, v52);
    v31 = sub_20C132F24();
    a2 = *(v31 - 8);
    if ((*(a2 + 48))(v28, 1, v31) == 1)
    {

      sub_20B520158(v28, &qword_27C76FEB8, &unk_20C181630);
      v10 = v27;
      v20 = v50;
      goto LABEL_6;
    }

    v6 = sub_20C132F14();
    v33 = v32;

    (*(a2 + 8))(v28, v31);
    v34 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_20BC05BA4(0, *(v34 + 2) + 1, 1, v34);
    }

    v10 = v27;
    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    v20 = v50;
    if (v36 >= v35 >> 1)
    {
      v34 = sub_20BC05BA4((v35 > 1), v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v48 = v34;
    v37 = &v34[16 * v36];
    *(v37 + 4) = v6;
    *(v37 + 5) = v33;
    v22 = v56;
    a2 = v46;
    v3 = v47;
    v18 = v45;
  }

  while (v56 != v53);
LABEL_29:

  v38 = sub_20B527580(v48);

  v39 = [v18 customMediaSelectionScheme];
  if (v39)
  {
    v40 = v39;

    v41 = 1;
  }

  else
  {
    v42 = *(v38 + 16);

    v41 = v42 > 1;
  }

  return [*(a2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController) setShowsAudioLanguageMenu_];
}

void sub_20BE94D74(void *a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  v7 = [*(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController) contentOverlayView];
  if (v7)
  {
    v8 = v7;
    [v7 addSubview_];
  }
}

id sub_20BE94E3C(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView;
  result = *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView);
  if (result)
  {
    [result setHidden_];
    result = *(v1 + v3);
    if (result)
    {
      v5 = 0.0;
      if (a1)
      {
        v5 = 1.0;
      }

      return [result setAlpha_];
    }
  }

  return result;
}

void sub_20BE94EC8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayAndSettingsControlsView);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_airplayButton];
    if (a1)
    {
      v4 = objc_allocWithZone(MEMORY[0x277D75348]);
      v5 = v2;
      v6 = [v4 initWithRed:0.0509803922 green:0.478431373 blue:1.0 alpha:1.0];
    }

    else
    {
      v7 = objc_opt_self();
      v8 = v2;
      v6 = [v7 whiteColor];
    }

    v9 = v6;
    [v3 setTintColor_];
  }
}

void sub_20BE94FC8()
{
  v1 = v0;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = v5;
  v3 = sub_20C132A84();

  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_videoBoundsObserver);
  *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_videoBoundsObserver) = v3;
}

void sub_20BE950A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FEA0, &unk_20C181620);
  sub_20C132A54();
  if ((v9 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      swift_unknownObjectRetain();

      sub_20B672EF4(v5, v6, v7, v8);
      swift_unknownObjectRelease();
    }
  }
}

void sub_20BE95168()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_videoBoundsObserver;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_videoBoundsObserver);
  if (v3)
  {
    v4 = v3;
    sub_20C132A14();

    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;

  v5 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView);
  if (v6)
  {
    [v6 removeFromSuperview];
    v6 = *(v1 + v5);
  }

  *(v1 + v5) = 0;
}

id sub_20BE95240()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController) contentOverlayView];

  return v1;
}

id sub_20BE95280()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController) customControlsView];

  return v1;
}

double sub_20BE952C0(uint64_t a1)
{
  [*(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController) setDelegate_];

  swift_unknownObjectRelease();
  return result;
}

void *sub_20BE95344()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsPopoverSourceView);
  v2 = v1;
  return v1;
}

id sub_20BE953A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController) setPlayer_];
}

id sub_20BE954C4()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  return [*(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController) setPlayer_];
}

void sub_20BE955E0(char a1)
{
  v3 = [v1 view];
  if (v3)
  {
    v4 = 0.0;
    if (a1)
    {
      v4 = 1.0;
    }

    v5 = v3;
    [v3 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

id sub_20BE9565C(char a1)
{
  v2 = 0.0;
  if (a1)
  {
    v2 = 1.0;
  }

  return [*(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_gymKitResumeMachineView) setAlpha_];
}

void sub_20BE9572C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_videoBoundsObserver;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_videoBoundsObserver);
  if (v3)
  {
    v4 = v3;
    sub_20C132A14();

    v5 = *(v1 + v2);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v2) = 0;
}

id sub_20BE957B4(char a1)
{
  result = *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayAndSettingsControlsView);
  if (result)
  {
    v4 = 0.0;
    if (a1)
    {
      v4 = 1.0;
    }

    return [result setAlpha_];
  }

  return result;
}

id sub_20BE9584C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
  [v1 willMoveToParentViewController_];
  result = [v1 view];
  if (result)
  {
    v3 = result;
    [result removeFromSuperview];

    return [v1 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_20BE958F4(void *a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator);
  swift_beginAccess();
  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v5[5];
  v5[5] = 0x8000000000000000;
  sub_20B91DA38(v6, a2, isUniquelyReferenced_nonNull_native);
  v5[5] = v12;
  swift_endAccess();
  v9 = v5[2];
  if (v9)
  {
    v10 = v5[3];
    sub_20B584050(v5[2], v10);

    v9(v11);
    sub_20B583ECC(v9, v10);
  }

  return result;
}

uint64_t sub_20BE959E4(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_20C137C94();
}

uint64_t sub_20BE95A84(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  v9 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
  (*(v5 + 16))(&v11[-v7], v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController__requiresLinearPlayback, v4, v6);
  sub_20C13A344();
  (*(v5 + 8))(v8, v4);
  [v9 setRequiresLinearPlayback_];
  [v9 setShowsPlaybackControls_];
  [v9 setShowsTimecodes_];
  [v9 setUpdatesNowPlayingInfoCenter_];
  [v9 setVideoGravity_];
  [v9 setVolumeControlsCanShowSlider_];
  return v2;
}

unint64_t sub_20BE95C88()
{
  result = qword_281103AF0;
  if (!qword_281103AF0)
  {
    sub_20C13AAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281103AF0);
  }

  return result;
}

uint64_t sub_20BE95D00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0, &unk_20C166B80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_55Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370, &qword_20C153C70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20BE95E68(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370, &qword_20C153C70) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E178C(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_20BE95F24()
{
  result = qword_27C76FEE0;
  if (!qword_27C76FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76FEE0);
  }

  return result;
}

void sub_20BE95F78()
{
  v1 = sub_20C13A814();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayAndSettingsControlsView) = 0;
  v5 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_gymKitResumeMachineView;
  v6 = [objc_allocWithZone(type metadata accessor for GymKitResumeMachineView()) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsPopoverSourceView) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_videoBoundsObserver) = 0;
  (*(v2 + 104))(v4, *MEMORY[0x277D4EF20], v1);
  v7[15] = 1;
  sub_20C13A384();
  sub_20C13DE24();
  __break(1u);
}

void *sub_20BE96148()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView);
  v2 = v1;
  return v1;
}

char *sub_20BE96178(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_layout];
  *v11 = xmmword_20C181640;
  *(v11 + 1) = xmmword_20C181650;
  v12 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView;
  v13 = [objc_allocWithZone(type metadata accessor for TVArtworkView(0)) initWithFrame_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v14 = *&qword_27C79ACA0;
  v15 = [v13 config];
  [v15 setCornerRadius_];

  v16 = [v13 config];
  [v16 setScaleSizeIncrease_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v12] = v13;
  v17 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_titleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v19 = sub_20C13C914();
  [v18 setText_];

  [v18 setNumberOfLines_];
  v20 = objc_opt_self();
  v21 = [v20 preferredFontForTextStyle_];
  [v18 setFont_];

  v22 = objc_opt_self();
  v23 = [v22 labelColor];
  [v18 setTextColor_];

  [v18 &selRef_count + 2];
  [v18 setAdjustsFontForContentSizeCategory_];
  *&v4[v17] = v18;
  v24 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_subtitleLabel;
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v26 = sub_20C13C914();
  [v25 setText_];

  [v25 setNumberOfLines_];
  v27 = [v20 preferredFontForTextStyle_];
  [v25 setFont_];

  v28 = [v22 secondaryLabelColor];
  [v25 setTextColor_];

  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 setAdjustsFontForContentSizeCategory_];
  *&v4[v24] = v25;
  v29 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_indexLabel;
  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  [v30 setAdjustsFontForContentSizeCategory_];
  v31 = [v20 preferredFontForTextStyle_];
  [v30 setFont_];

  v32 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v30 setBackgroundColor_];

  v33 = [v30 layer];
  [v33 setCornerRadius_];

  [v30 setClipsToBounds_];
  [v30 setTextAlignment_];
  v34 = [v22 blackColor];
  [v30 setTextColor_];

  *&v4[v29] = v30;
  v97.receiver = v4;
  v97.super_class = type metadata accessor for TVIndexedBrickItemCell(0);
  v35 = objc_msgSendSuper2(&v97, sel_initWithFrame_, a1, a2, a3, a4);
  v36 = [v35 contentView];
  v37 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView;
  v38 = *&v35[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView];
  [v36 addSubview_];

  v39 = [v35 &selRef_setMaximumFractionDigits_];
  v40 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_indexLabel;
  [v39 addSubview_];

  v41 = [v35 &selRef_setMaximumFractionDigits_];
  v94 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_titleLabel;
  [v41 addSubview_];

  v42 = [v35 &selRef_setMaximumFractionDigits_];
  v95 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_subtitleLabel;
  [v42 addSubview_];

  v43 = *&v35[v37];
  v44 = &v43[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets];
  *v44 = v14;
  v44[1] = v14;
  v44[2] = v14;
  v44[3] = v14;
  v96 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_20C1580B0;
  v46 = [v43 leadingAnchor];
  v47 = [v35 &selRef_setMaximumFractionDigits_];
  v48 = [v47 leadingAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  *(v45 + 32) = v49;
  v50 = [*&v35[v37] trailingAnchor];
  v51 = [v35 &selRef_setMaximumFractionDigits_];
  v52 = [v51 trailingAnchor];

  v53 = [v50 constraintEqualToAnchor_];
  *(v45 + 40) = v53;
  v54 = [*&v35[v37] topAnchor];
  v55 = [v35 &selRef_setMaximumFractionDigits_];
  v56 = [v55 &selRef_setLineBreakMode_];

  v57 = [v54 constraintEqualToAnchor_];
  *(v45 + 48) = v57;
  v58 = [*&v35[v37] heightAnchor];
  v59 = [v58 constraintEqualToConstant_];

  *(v45 + 56) = v59;
  v60 = [*&v35[v40] leadingAnchor];
  v61 = [v35 &selRef_setMaximumFractionDigits_];
  v62 = [v61 leadingAnchor];

  v63 = [v60 constraintEqualToAnchor_];
  *(v45 + 64) = v63;
  v64 = [*&v35[v40] widthAnchor];
  v65 = [v64 constraintEqualToConstant_];

  *(v45 + 72) = v65;
  v66 = [*&v35[v40] heightAnchor];
  v67 = [v66 constraintEqualToConstant_];

  *(v45 + 80) = v67;
  v68 = [*&v35[v40] centerYAnchor];
  v69 = [*&v35[v94] centerYAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v45 + 88) = v70;
  v71 = [*&v35[v94] leadingAnchor];
  v72 = [*&v35[v40] trailingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:10.0];

  *(v45 + 96) = v73;
  v74 = [*&v35[v94] topAnchor];
  v75 = [*&v35[v37] bottomAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:23.0];

  *(v45 + 104) = v76;
  v77 = [*&v35[v94] trailingAnchor];
  v78 = [v35 contentView];
  v79 = [v78 trailingAnchor];

  v80 = [v77 constraintLessThanOrEqualToAnchor_];
  *(v45 + 112) = v80;
  v81 = [*&v35[v95] topAnchor];
  v82 = [*&v35[v94] bottomAnchor];
  v83 = [v81 constraintEqualToAnchor_];

  *(v45 + 120) = v83;
  v84 = [*&v35[v95] leadingAnchor];
  v85 = [v35 contentView];
  v86 = [v85 leadingAnchor];

  v87 = [v84 constraintEqualToAnchor_];
  *(v45 + 128) = v87;
  v88 = [*&v35[v95] trailingAnchor];
  v89 = [v35 contentView];

  v90 = [v89 trailingAnchor];
  v91 = [v88 constraintLessThanOrEqualToAnchor_];

  *(v45 + 136) = v91;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v92 = sub_20C13CC54();

  [v96 activateConstraints_];

  return v35;
}

id sub_20BE96FB8(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v5 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    v25 = a1;
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v7 = [v3 contentView];
    v8 = [v7 subviews];

    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v9 = sub_20C13CC74();

    v26[0] = MEMORY[0x277D84FA0];
    if (v9 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F2F5430](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        sub_20B6FFB30(&v29, v12);

        ++v11;
        if (v13 == i)
        {
          v14 = v26[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v30 = v14;
    sub_20B6FFB30(v26, *&v4[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView]);

    sub_20B8E9218(v30);
    v16 = v15;

    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v16 + 32;
      do
      {
        sub_20B51CC64(v18, v26);
        v19 = *&v4[v5];
        v20 = v27;
        v21 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        (*(v21 + 16))(v19, a2 & 1, v20, v21);
        __swift_destroy_boxed_opaque_existential_1(v26);
        v18 += 40;
        --v17;
      }

      while (v17);
    }

    LOBYTE(a1) = v25;
  }

  v22 = *&v4[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_titleLabel];
  if ((a1 & 8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = 4;
  }

  [v22 setSmu:(a1 & 8) >> 3 marqueeEnabled:?];
  return [v22 setLineBreakMode_];
}

void sub_20BE9724C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v7 = [v3 contentView];
    v8 = [v7 subviews];

    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v9 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v9 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F2F5430](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        sub_20B6FFB30(&v30, v12);

        ++v11;
        if (v13 == i)
        {
          v14 = aBlock[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v31 = v14;
    sub_20B6FFB30(aBlock, *&v3[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView]);

    sub_20B8E9218(v31);
    v16 = v15;

    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v16 + 32;
      do
      {
        sub_20B51CC64(v18, aBlock);
        v19 = *&v3[v6];
        v20 = v27;
        v21 = v28;
        __swift_project_boxed_opaque_existential_1(aBlock, v27);
        (*(v21 + 3))(v19, a2, v20, v21);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v18 += 40;
        --v17;
      }

      while (v17);
    }

    v5 = a1;
  }

  if (a2)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = v3;
    *(v22 + 24) = v5;
    v28 = sub_20BE99764;
    v29 = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v27 = &block_descriptor_145;
    v23 = _Block_copy(aBlock);
    v24 = v3;

    [a2 addCoordinatedAnimations:v23 completion:0];
    _Block_release(v23);
  }
}

void sub_20BE97550()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_itemInfo, &qword_27C762550, &unk_20C1505A0);

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_indexLabel);
}

id sub_20BE975E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVIndexedBrickItemCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVIndexedBrickItemCell(uint64_t a1)
{
  result = qword_27C76FF10;
  if (!qword_27C76FF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE97708(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20BE977D0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BE9781C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550, &unk_20C1505A0);
}

uint64_t sub_20BE97884(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5DF2D4(a1, v1 + v3, &qword_27C762550, &unk_20C1505A0);
  return swift_endAccess();
}

double sub_20BE97908()
{
  [*(v0 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_titleLabel) intrinsicContentSize];
  v2 = v1 + 254.0;
  [*(v0 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_subtitleLabel) intrinsicContentSize];
  return v2 + v3;
}

uint64_t sub_20BE97988(uint64_t a1, char *a2, int a3)
{
  v35 = a3;
  v5 = sub_20C137C24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0, &qword_20C161880);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v12 - 8);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
  swift_beginAccess();
  (*(v6 + 16))(v16, a1, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v18 = *(v9 + 56);
  v34 = a2;
  sub_20B52F9E8(&a2[v17], v11, &unk_27C766680, &unk_20C14F920);
  sub_20B52F9E8(v16, &v11[v18], &unk_27C766680, &unk_20C14F920);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) != 1)
  {
    v21 = v36;
    sub_20B52F9E8(v11, v36, &unk_27C766680, &unk_20C14F920);
    if (v19(&v11[v18], 1, v5) != 1)
    {
      v22 = v33;
      (*(v6 + 32))(v33, &v11[v18], v5);
      sub_20B69ADFC();
      v23 = sub_20C13C894();
      v24 = *(v6 + 8);
      v24(v22, v5);
      sub_20B520158(v16, &unk_27C766680, &unk_20C14F920);
      v24(v21, v5);
      sub_20B520158(v11, &unk_27C766680, &unk_20C14F920);
      v20 = v23 ^ 1;
      if ((v23 ^ 1) & 1) != 0 || (v35)
      {
        return v20 & 1;
      }

      goto LABEL_10;
    }

    sub_20B520158(v16, &unk_27C766680, &unk_20C14F920);
    (*(v6 + 8))(v21, v5);
LABEL_7:
    sub_20B520158(v11, &qword_27C7626D0, &qword_20C161880);
    v20 = 1;
    return v20 & 1;
  }

  sub_20B520158(v16, &unk_27C766680, &unk_20C14F920);
  if (v19(&v11[v18], 1, v5) != 1)
  {
    goto LABEL_7;
  }

  sub_20B520158(v11, &unk_27C766680, &unk_20C14F920);
  if (v35)
  {
    v20 = 0;
    return v20 & 1;
  }

LABEL_10:
  v25 = v34;
  [v34 bounds];
  v26 = [v25 stackImage];
  if (v26)
  {
    v27 = v26;
    [v26 size];
  }

  sub_20C13D504();
  v30 = round(fabs(v29)) > 1.0;
  v20 = round(fabs(v28)) > 1.0 || v30;
  return v20 & 1;
}

id sub_20BE97E44(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v226 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v185 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v212 = &v185 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v185 - v9;
  v211 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v185 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v15 - 8);
  v219 = &v185 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v210 = &v185 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = v19;
  MEMORY[0x28223BE20](v20);
  v220 = &v185 - v21;
  v217 = sub_20C1391C4();
  v216 = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v218 = &v185 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_20C138A64();
  v213 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v221 = &v185 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v24 - 8);
  v215 = &v185 - v25;
  v26 = sub_20C13C554();
  v228 = *(v26 - 8);
  v229 = v26;
  MEMORY[0x28223BE20](v26);
  v227 = (&v185 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_20C137C24();
  v232 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v222 = v29;
  v223 = &v185 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v233 = &v185 - v31;
  v32 = sub_20C136CD4();
  v224 = *(v32 - 8);
  v225 = v32;
  MEMORY[0x28223BE20](v32);
  v230 = &v185 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C134E44();
  MEMORY[0x28223BE20](v34 - 8);
  v231 = &v185 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20C134014();
  MEMORY[0x28223BE20](v36);
  v234 = &v185 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v40 == 33)
  {
    v62 = v235;
    v63 = *&v235[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_titleLabel];
    v64 = sub_20C13C914();
    [v63 setText_];

    v65 = *&v62[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_subtitleLabel];
    v66 = sub_20C13C914();
    [v65 setText_];

    [*&v62[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_indexLabel] setHidden_];
    v67 = *&v62[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView];
    if (qword_27C760828 == -1)
    {
LABEL_7:
      v68 = qword_27C79AE50;

      return [v67 setBackgroundColor_];
    }

LABEL_30:
    v184 = v67;
    swift_once();
    v67 = v184;
    goto LABEL_7;
  }

  if (v40 == 32)
  {
    v207 = v28;
    v190 = v10;
    v194 = v18;
    v195 = v17;
    v191 = v14;
    v192 = v6;
    v193 = v5;
    v41 = v37;
    v42 = v38;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
    v44 = swift_projectBox();
    v45 = v44 + *(v43 + 64);
    v47 = *v45;
    v46 = *(v45 + 8);
    v48 = *(v45 + 16);
    v49 = *(v45 + 24);
    v50 = *(v45 + 40);
    v226 = *(v45 + 32);
    v51 = v44 + *(v43 + 80);
    v52 = *(v51 + 8);
    v208 = *v51;
    v53 = *(v51 + 24);
    v206 = *(v51 + 16);
    v205 = *(v51 + 32);
    LODWORD(v204) = *(v51 + 40);
    v200 = v42;
    v54 = *(v42 + 16);
    v201 = v41;
    v54(v234, v44, v41);
    v55 = v235;
    v56 = *&v235[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_titleLabel];
    v57 = v47;
    v58 = v46;
    v197 = v48;
    v203 = v49;

    v199 = v50;
    v59 = v204;

    v60 = v205;
    [v56 setAttributedText_];
    v61 = *&v55[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_subtitleLabel];
    v198 = v58;
    [v61 setAttributedText_];
    v202 = v57;
    if (v52 == 1 || (, , (v59 & 1) != 0))
    {
      [*&v55[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_indexLabel] setHidden_];
    }

    else
    {
      v81 = *&v55[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_indexLabel];
      v236[0] = v60;
      sub_20C13DFA4();
      v82 = sub_20C13C914();

      [v81 setText_];

      [v81 setHidden_];
    }

    v84 = v233;
    v83 = v234;
    v85 = v231;
    v86 = sub_20C133EB4() > 0;
    v87 = *&v55[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView];
    sub_20B6262FC(v86);
    v88 = sub_20C133E54();
    v206 = v87;
    sub_20B626760(v88, v89);

    if ((*&v55[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8) != 0)
    {
      v90 = 2;
    }

    else
    {
      v90 = 4;
    }

    [v56 setSmu:(*&v55[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8uLL) >> 3 marqueeEnabled:?];
    [v56 setLineBreakMode_];
    sub_20C133F04();
    v204 = sub_20C138054();
    v208 = v91;
    v92 = v230;
    sub_20C134E34();
    sub_20C136CB4();
    v196 = sub_20C136CC4();
    v205 = v93;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    v94 = sub_20C13D374();
    v95 = v227;
    v96 = v228;
    *v227 = v94;
    v97 = v229;
    (*(v96 + 104))(v95, *MEMORY[0x277D85200], v229);
    v98 = sub_20C13C584();
    v67 = (*(v96 + 8))(v95, v97);
    v99 = v207;
    if (v98)
    {
      v100 = v206;
      [v206 setContentMode_];
      if (sub_20BE97988(v84, v100, 0))
      {
        v101 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v102 = v232;
        v103 = *(v232 + 16);
        v104 = v223;
        v188 = v232 + 16;
        v187 = v103;
        v103(v223, v84, v99);
        v105 = *(v102 + 80);
        v106 = (v105 + 24) & ~v105;
        v186 = v222 + 7;
        v107 = (v222 + 7 + v106) & 0xFFFFFFFFFFFFFFF8;
        v108 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
        v109 = (v108 + 23) & 0xFFFFFFFFFFFFFFF8;
        v228 = v105;
        v229 = (v109 + 15) & 0xFFFFFFFFFFFFFFF8;
        v110 = swift_allocObject();
        *(v110 + 16) = v101;
        v111 = v102;
        v112 = v104;
        v113 = *(v111 + 32);
        v227 = (v111 + 32);
        v189 = v113;
        v113(v110 + v106, v104, v99);
        v114 = (v110 + v107);
        v115 = v205;
        *v114 = v196;
        v114[1] = v115;
        v116 = (v110 + v108);
        v117 = v208;
        *v116 = v204;
        v116[1] = v117;
        *(v110 + v109) = 2;
        v118 = v110 + v229;
        *v118 = MEMORY[0x277D84F90];
        *(v118 + 8) = 0;
        v119 = (v110 + ((v109 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v119 = 0;
        v119[1] = 0;
        v120 = v206;
        v121 = &v206[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        v122 = *&v206[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        v123 = *&v206[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler + 8];
        *v121 = sub_20BE9951C;
        v121[1] = v110;

        sub_20B583ECC(v122, v123);

        [v120 bounds];
        if (v124 <= 0.0 || (v126 = v125, v125 <= 0.0))
        {

          v99 = v207;
          v148 = v225;
          v84 = v233;
        }

        else
        {
          v127 = v124;
          v128 = ~v228;
          [v120 setStackImage_];
          v129 = v215;
          v84 = v233;
          v130 = v207;
          v131 = v187;
          v187(v215, v233, v207);
          (*(v232 + 56))(v129, 0, 1, v130);
          v132 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
          swift_beginAccess();
          sub_20B5DF2D4(v129, &v120[v132], &unk_27C766680, &unk_20C14F920);
          swift_endAccess();
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v133 = sub_20C13D5A4();
          [v120 setBackgroundColor_];

          v134 = &v120[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize];
          *v134 = v127;
          v134[1] = v126;
          *(v134 + 16) = 0;
          v135 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v131(v112, v84, v130);
          v215 = v128;
          v136 = (v228 + 16) & v128;
          v137 = (v186 + v136) & 0xFFFFFFFFFFFFFFF8;
          v138 = (v137 + 15) & 0xFFFFFFFFFFFFFFF8;
          v139 = (v138 + 23) & 0xFFFFFFFFFFFFFFF8;
          v140 = swift_allocObject();
          v189(v140 + v136, v223, v130);
          *(v140 + v137) = v135;
          v141 = (v140 + v138);
          v142 = v223;
          *v141 = v127;
          v141[1] = v126;
          v229 = v140;
          v143 = (v140 + v139);
          *v143 = 0;
          v143[1] = 0;
          v99 = v130;
          v131(v142, v84, v130);
          (*(v216 + 104))(v218, *MEMORY[0x277D542A8], v217);

          v144 = v221;
          sub_20C138A54();
          v145 = v219;
          sub_20B5F1AA0(v144, v219);
          v146 = v194;
          v147 = v195;
          if ((*(v194 + 48))(v145, 1, v195) == 1)
          {
            sub_20B520158(v145, &unk_27C766670, &unk_20C151580);
            sub_20BA1DA34();

            (*(v213 + 8))(v144, v214);
          }

          else
          {
            v150 = *(v146 + 32);
            v150(v220, v145, v147);
            v151 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v152 = v223;
            v131(v223, v233, v99);
            v153 = (v228 + 40) & v215;
            v154 = v153 + v222;
            v155 = (v153 + v222) & 0xFFFFFFFFFFFFFFF8;
            v156 = v146;
            v157 = swift_allocObject();
            *(v157 + 2) = v151;
            v157[3] = v127;
            v157[4] = v126;
            v189(v157 + v153, v152, v99);
            *(v157 + v154) = 0;
            v158 = v157 + v155;
            *(v158 + 1) = 0;
            *(v158 + 2) = 0;
            v159 = swift_allocObject();
            *(v159 + 16) = sub_20BE996B0;
            *(v159 + 24) = v157;
            v160 = v156;
            v161 = *(v156 + 16);
            v162 = v210;
            v163 = v195;
            v161(v210, v220, v195);
            v164 = (*(v160 + 80) + 16) & ~*(v160 + 80);
            v165 = (v209 + v164 + 7) & 0xFFFFFFFFFFFFFFF8;
            v166 = swift_allocObject();
            v150((v166 + v164), v162, v163);
            v167 = (v166 + v165);
            *v167 = sub_20B5F67A4;
            v167[1] = v159;
            v168 = v190;
            sub_20C137C94();
            v169 = swift_allocObject();
            v170 = v229;
            *(v169 + 16) = sub_20BE995F4;
            *(v169 + 24) = v170;
            v171 = swift_allocObject();
            *(v171 + 16) = sub_20B5F67D4;
            *(v171 + 24) = v169;
            v172 = v192;
            v173 = v212;
            v174 = v193;
            (*(v192 + 16))(v212, v168, v193);
            v175 = (*(v172 + 80) + 16) & ~*(v172 + 80);
            v176 = (v211 + v175 + 7) & 0xFFFFFFFFFFFFFFF8;
            v177 = swift_allocObject();
            (*(v172 + 32))(v177 + v175, v173, v174);
            v178 = (v177 + v176);
            *v178 = sub_20B5DF204;
            v178[1] = v171;

            v179 = v191;
            sub_20C137C94();
            v180 = *(v172 + 8);
            v180(v168, v174);
            v181 = sub_20C137CB4();
            v182 = swift_allocObject();
            *(v182 + 16) = 0;
            *(v182 + 24) = 0;
            v181(sub_20B52347C, v182);

            v84 = v233;
            v180(v179, v174);
            (*(v194 + 8))(v220, v195);
            (*(v213 + 8))(v221, v214);
            v99 = v207;
          }

          v148 = v225;
        }

        v92 = v230;
        v85 = v231;
        v149 = v224;
        v83 = v234;
      }

      else
      {

        v149 = v224;
        v148 = v225;
      }

      v183 = v202;
      (*(v232 + 8))(v84, v99);
      (*(v149 + 8))(v92, v148);

      sub_20B62A2AC(v85);
      return (*(v200 + 8))(v83, v201);
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_20C13B534();

  v70 = v235;
  v71 = sub_20C13BB74();
  v72 = sub_20C13D1D4();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v236[0] = v75;
    *v73 = 138543618;
    *(v73 + 4) = v70;
    *v74 = v70;
    *(v73 + 12) = 2082;
    v236[3] = a1;
    v76 = sub_20B5F66D0();
    v77 = v70;
    v78 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v76);
    v80 = sub_20B51E694(v78, v79, v236);

    *(v73 + 14) = v80;
    _os_log_impl(&dword_20B517000, v71, v72, "Attempted to configure %{public}@ with item: %{public}s", v73, 0x16u);
    sub_20B520158(v74, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v74, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x20F2F6A40](v75, -1, -1);
    MEMORY[0x20F2F6A40](v73, -1, -1);
  }

  return (*(v226 + 8))(v4, v2);
}

void sub_20BE9951C()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA43DE4(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BE995F4(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63610(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BE996B0(uint64_t *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2E6C(*a1, *(v1 + 16), v1 + v4, *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

id sub_20BE99764()
{
  v1 = (*(v0 + 24) & 8uLL) >> 3;
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_titleLabel);
  if ((*(v0 + 24) & 8) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  [v2 setSmu:v1 marqueeEnabled:?];

  return [v2 setLineBreakMode_];
}

void sub_20BE997D4()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_layout);
  *v3 = xmmword_20C181640;
  v3[1] = xmmword_20C181650;
  v4 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView;
  v5 = [objc_allocWithZone(type metadata accessor for TVArtworkView(0)) initWithFrame_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v6 = *&qword_27C79ACA0;
  v7 = [v5 config];
  [v7 setCornerRadius_];

  v8 = [v5 config];
  [v8 setScaleSizeIncrease_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  v9 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_titleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = sub_20C13C914();
  [v10 setText_];

  [v10 setNumberOfLines_];
  v12 = objc_opt_self();
  v13 = [v12 preferredFontForTextStyle_];
  [v10 setFont_];

  v14 = objc_opt_self();
  v15 = [v14 labelColor];
  [v10 setTextColor_];

  [v10 &selRef_count + 2];
  [v10 setAdjustsFontForContentSizeCategory_];
  *(v0 + v9) = v10;
  v16 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_subtitleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v18 = sub_20C13C914();
  [v17 setText_];

  [v17 setNumberOfLines_];
  v19 = [v12 preferredFontForTextStyle_];
  [v17 setFont_];

  v20 = [v14 secondaryLabelColor];
  [v17 setTextColor_];

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setAdjustsFontForContentSizeCategory_];
  *(v0 + v16) = v17;
  v21 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_indexLabel;
  v22 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v22 setAdjustsFontForContentSizeCategory_];
  v23 = [v12 preferredFontForTextStyle_];
  [v22 setFont_];

  v24 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v22 setBackgroundColor_];

  v25 = [v22 layer];
  [v25 setCornerRadius_];

  [v22 setClipsToBounds_];
  [v22 setTextAlignment_];
  v26 = [v14 blackColor];
  [v22 setTextColor_];

  *(v0 + v21) = v22;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BE99D2C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0, &unk_20C14FE50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FF40, &unk_20C181860);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_20C137514();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_item;
  swift_beginAccess();
  sub_20B5DF2D4(v9, v2 + v12, &qword_27C76FF40, &unk_20C181860);
  swift_endAccess();
  sub_20C137504();
  v13 = sub_20C134284();
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  v14 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_preview;
  swift_beginAccess();
  sub_20B5DF2D4(v6, v2 + v14, &unk_27C7623C0, &unk_20C14FE50);
  swift_endAccess();
  v15 = sub_20C1374E4();
  v16 = (v2 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_contentIdentifier);
  *v16 = v15;
  v16[1] = v17;

  v18 = sub_20C1374F4();
  if (v19)
  {
    v20 = sub_20BE9A4E8(v18, v19);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v2 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_title);
  *(v2 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_title) = v20;
}

void sub_20BE99FA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0, &unk_20C14FE50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_20C137F24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C134204();
  sub_20C137F14();
  v9 = *(v6 + 8);
  v9(v8, v5);
  v10 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_preview;
  swift_beginAccess();
  sub_20B5DF2D4(v4, v1 + v10, &unk_27C7623C0, &unk_20C14FE50);
  swift_endAccess();
  sub_20C134204();
  v11 = sub_20C137EB4();
  v13 = v12;
  v9(v8, v5);
  v14 = (v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_contentIdentifier);
  *v14 = v11;
  v14[1] = v13;

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_storefrontLocalizer + 24));
  sub_20C138D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20C14F980;
  sub_20C134204();
  v16 = sub_20C137F04();
  v18 = v17;
  v9(v8, v5);
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_20B5D91B8();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v19 = sub_20C13C924();
  v21 = v20;

  v22 = sub_20BE9A4E8(v19, v21);

  v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_title);
  *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_title) = v22;

  sub_20BE9A740(1);
}

void sub_20BE9A29C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0, &unk_20C14FE50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_20C134734();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C135CB4();
  sub_20C134714();
  v9 = *(v6 + 8);
  v9(v8, v5);
  v10 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_preview;
  swift_beginAccess();
  sub_20B5DF2D4(v4, v1 + v10, &unk_27C7623C0, &unk_20C14FE50);
  swift_endAccess();
  sub_20C135CB4();
  v11 = sub_20C1346C4();
  v13 = v12;
  v9(v8, v5);
  v14 = (v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_contentIdentifier);
  *v14 = v11;
  v14[1] = v13;

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_storefrontLocalizer + 24));
  v15 = sub_20C138D34();
  v17 = sub_20BE9A4E8(v15, v16);

  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_title);
  *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_title) = v17;

  sub_20BE9A740(1);
}

uint64_t sub_20BE9A4E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_20C138094();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  *v14 = 0xD000000000000010;
  v14[1] = 0x800000020C1A5120;
  swift_storeEnumTagMultiPayload();
  *v11 = 3;
  swift_storeEnumTagMultiPayload();
  *v8 = a1;
  v8[1] = a2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
  v15 = *(v6 + 72);
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20C1517D0;
  v18 = v17 + v16;
  sub_20B634348(v14, v18);
  sub_20B634348(v11, v18 + v15);
  sub_20B634348(v8, v18 + 2 * v15);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_mediaTagStringBuilder), *(v2 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_mediaTagStringBuilder + 24));

  v19 = sub_20C138544();

  v20 = MEMORY[0x277D53BC8];
  sub_20BE9B9EC(v8, MEMORY[0x277D53BC8]);
  sub_20BE9B9EC(v11, v20);
  sub_20BE9B9EC(v14, v20);
  return v19;
}

void sub_20BE9A740(int a1)
{
  v45 = a1;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C554();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0, &unk_20C14FE50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v12 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_preview;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v12, v11, &unk_27C7623C0, &unk_20C14FE50);
  v13 = sub_20C134284();
  LODWORD(v12) = (*(*(v13 - 8) + 48))(v11, 1, v13);
  sub_20B520158(v11, &unk_27C7623C0, &unk_20C14FE50);
  if (v12 == 1 || (v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_title)) == 0)
  {
    sub_20C13B534();
    v40 = sub_20C13BB74();
    v41 = sub_20C13D1F4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_20B517000, v40, v41, "No title or preview for this shelf provided. Not building row", v42, 2u);
      MEMORY[0x20F2F6A40](v42, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_20C14F980;
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v15 + 32) = v16 | 0x5000000000000007;
    v48 = 0uLL;
    LOBYTE(v49) = 1;
    *(&v49 + 1) = 0;
    *&v50 = 0;
    WORD4(v50) = 384;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    LOBYTE(v54) = 0;
    *(&v54 + 1) = v15;
    *&v55[0] = MEMORY[0x277D84F90];
    *(v55 + 8) = 0u;
    *(&v55[1] + 8) = 0u;
    *(&v55[2] + 1) = 0;
    v56 = 2;
    nullsub_1();
    v17 = v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row;
    v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 144);
    v57[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 128);
    v57[9] = v18;
    v58 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 160);
    v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 80);
    v57[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 64);
    v57[5] = v19;
    v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 112);
    v57[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 96);
    v57[7] = v20;
    v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 16);
    v57[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row);
    v57[1] = v21;
    v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 48);
    v57[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 32);
    v57[3] = v22;
    v23 = v55[2];
    *(v17 + 128) = v55[1];
    *(v17 + 144) = v23;
    *(v17 + 160) = v56;
    v24 = v53;
    *(v17 + 64) = v52;
    *(v17 + 80) = v24;
    v25 = v55[0];
    *(v17 + 96) = v54;
    *(v17 + 112) = v25;
    v26 = v49;
    *v17 = v48;
    *(v17 + 16) = v26;
    v27 = v51;
    *(v17 + 32) = v50;
    *(v17 + 48) = v27;
    v28 = v14;
    sub_20B520158(v57, &qword_27C762340, &unk_20C150290);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      return;
    }

    v30 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61CE98(v1, Strong);
      if (v32)
      {
        v34 = v31;
        v35 = v32;
        v36 = v33;
        v44 = v1;
        sub_20B5E2E18();
        *v8 = sub_20C13D374();
        v38 = v46;
        v37 = v47;
        (*(v46 + 104))(v8, *MEMORY[0x277D85200], v47);
        v39 = sub_20C13C584();
        (*(v38 + 8))(v8, v37);
        if ((v39 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B6203EC(v34, v35, v36, v44, v45 & 1, v30);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20BE9AC44()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_storefrontLocalizer));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_mediaTagStringBuilder));
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_preview, &unk_27C7623C0, &unk_20C14FE50);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_item, &qword_27C76FF40, &unk_20C181860);
  return v0;
}

uint64_t sub_20BE9ADB0()
{
  sub_20BE9AC44();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PreviewVideoLinkShelf(uint64_t a1)
{
  result = qword_27C76FF28;
  if (!qword_27C76FF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE9AE5C(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20BE9AFE4(319, &qword_27C76A130, MEMORY[0x277D50760]);
    if (v2 <= 0x3F)
    {
      sub_20BE9AFE4(319, &qword_27C76FF38, MEMORY[0x277D53478]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20BE9AFE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20BE9B038@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BE9B0B0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

void sub_20BE9B16C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FF40, &unk_20C181860);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  v4 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_item;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v4, v3, &qword_27C76FF40, &unk_20C181860);
  v5 = sub_20C137514();
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_20B520158(v3, &qword_27C76FF40, &unk_20C181860);
  if (v4 != 1)
  {
    sub_20BE9A740(0);
  }
}

uint64_t sub_20BE9B28C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_canonicalIdentifier);

  return v1;
}

uint64_t sub_20BE9B2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v6 = v3 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row;
  sub_20B5D8060(v20);
  v7 = v20[9];
  *(v6 + 128) = v20[8];
  *(v6 + 144) = v7;
  *(v6 + 160) = v21;
  v8 = v20[5];
  *(v6 + 64) = v20[4];
  *(v6 + 80) = v8;
  v9 = v20[7];
  *(v6 + 96) = v20[6];
  *(v6 + 112) = v9;
  v10 = v20[1];
  *v6 = v20[0];
  *(v6 + 16) = v10;
  v11 = v20[3];
  *(v6 + 32) = v20[2];
  *(v6 + 48) = v11;
  *(v3 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_titleTags) = MEMORY[0x277D84F90];
  v12 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_preview;
  v13 = sub_20C134284();
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  v14 = (v3 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_contentIdentifier);
  *v14 = 0;
  v14[1] = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_title) = 0;
  v15 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_item;
  v16 = sub_20C137514();
  (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  v17 = (v3 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_canonicalIdentifier);
  *v17 = a2;
  v17[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v19, v3 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v19, v3 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_mediaTagStringBuilder);
  return v3;
}

uint64_t sub_20BE9B4D8()
{
  v1 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0, &unk_20C14FE50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_20C134284();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_preview;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v11, v6, &unk_27C7623C0, &unk_20C14FE50);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_20B520158(v6, &unk_27C7623C0, &unk_20C14FE50);
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_contentIdentifier + 8);
  if (v13)
  {
    v44 = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_contentIdentifier);
    v14 = sub_20C136664();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    v15 = v1[5];
    v16 = *MEMORY[0x277D513F8];
    v17 = sub_20C134F24();
    (*(*(v17 - 8) + 104))(&v3[v15], v16, v17);
    v18 = v1[6];
    v19 = sub_20C132C14();
    (*(*(v19 - 8) + 56))(&v3[v18], 1, 1, v19);
    v20 = v1[8];
    v21 = *MEMORY[0x277D52388];
    v22 = sub_20C135ED4();
    v23 = *(v22 - 8);
    v45 = v13;
    v24 = v23;
    (*(v23 + 104))(&v3[v20], v21, v22);
    v25 = &v3[v20];
    v26 = v44;
    (*(v24 + 56))(v25, 0, 1, v22);
    v27 = v1[10];
    v28 = *MEMORY[0x277D51768];
    v29 = sub_20C1352E4();
    (*(*(v29 - 8) + 104))(&v3[v27], v28, v29);
    v30 = v1[11];
    v31 = sub_20C136E94();
    v32 = &v3[v30];
    v33 = v45;
    (*(*(v31 - 8) + 56))(v32, 1, 1, v31);
    swift_bridgeObjectRetain_n();
    v34 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    v35 = &v3[v1[7]];
    *v35 = v26;
    *(v35 + 1) = v33;
    v36 = &v3[v1[9]];
    *v36 = 0;
    *(v36 + 1) = 0;
    *&v3[v1[12]] = v34;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BFA03E4(v0, v3, Strong);
      swift_unknownObjectRelease();
    }

    v38 = swift_unknownObjectWeakLoadStrong();
    if (v38)
    {
      v39 = v38;
      v40 = v38 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v41 = *(v40 + 8);
        ObjectType = swift_getObjectType();
        (*(v41 + 80))(v39, v10, v26, v33, ObjectType, v41);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_20BE9B9EC(v3, type metadata accessor for ShelfMetricAction);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_20BE9B9EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MarketingPaletteBannerDisplaying<>.attachMarketingPaletteBanner(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_20C13BB84();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  sub_20C13CDA4();
  v4[28] = sub_20C13CD94();
  v7 = sub_20C13CD24();
  v4[29] = v7;
  v4[30] = v6;

  return MEMORY[0x2822009F8](sub_20BE9BB78, v7, v6);
}

uint64_t sub_20BE9BB78(__n128 a1)
{
  sub_20C13B424();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20B517000, v2, v3, "[UM] Adding palette banner", v4, 2u);
    MEMORY[0x20F2F6A40](v4, -1, -1);
  }

  super_class = v1[13].super_class;
  receiver = v1[12].receiver;
  v6 = v1[12].super_class;
  v8 = v1[11].receiver;
  v10 = v1[10].receiver;
  v9 = v1[10].super_class;

  v11 = *(v6 + 1);
  v1[15].super_class = v11;
  (v11)(super_class, receiver);
  v12 = v8[5](v9, v8);
  v13 = type metadata accessor for SummaryBannerViewController();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC9SeymourUI27SummaryBannerViewController_presenter] = v12;
  v1[9].receiver = v14;
  v1[9].super_class = v13;

  v15 = objc_msgSendSuper2(v1 + 9, sel_initWithRequest_, v10);
  v1[16].receiver = v15;
  v16 = v15;
  [v16 setDelegate_];

  v17 = [v16 loadPromise];
  v1[16].super_class = v17;

  v1[1].receiver = v1;
  v1[3].super_class = &v1[17].super_class;
  v1[1].super_class = sub_20BE9BE04;
  v18 = swift_continuation_init();
  v1[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FF48, &unk_20C181878);
  v1[5].receiver = MEMORY[0x277D85DD0];
  v1[5].super_class = 1107296256;
  v1[6].receiver = sub_20BE9C60C;
  v1[6].super_class = &block_descriptor_146;
  v1[7].receiver = v18;
  [(objc_class *)v17 resultWithCompletion:?];

  return MEMORY[0x282200938](&v1[1]);
}

uint64_t sub_20BE9BE04()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_20BE9C57C;
  }

  else
  {
    v5 = sub_20BE9BF34;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

void sub_20BE9BF34()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);

  v5 = *(v3 + 24);
  v6 = v1;
  v5(v1, v4, v3);
  v7 = [v2 view];
  if (!v7)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v7 window];

  v10 = *(v0 + 256);
  if (!v9)
  {

    sub_20C13B424();
    v54 = sub_20C13BB74();
    v55 = sub_20C13D1D4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_20B517000, v54, v55, "[UM] Attempted to attach to the top palette when the view has not yet loaded.", v56, 2u);
      MEMORY[0x20F2F6A40](v56, -1, -1);
    }

    v58 = *(v0 + 248);
    v57 = *(v0 + 256);
    v59 = *(v0 + 208);
    v60 = *(v0 + 192);

    v58(v59, v60);
    v61 = sub_20C134894();
    sub_20BE9C6D8(v62);
    swift_allocError();
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x277D50B30], v61);
    swift_willThrow();

    v53 = *(v0 + 8);
    goto LABEL_9;
  }

  v11 = *(v0 + 176);
  v12 = *(v0 + 168);

  v13 = [objc_allocWithZone(MEMORY[0x277D76118]) init];
  v14 = (*(v11 + 8))(v12, v11);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v10 view];

  if (!v21)
  {
    goto LABEL_13;
  }

  v64 = *(v0 + 184);
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = [v13 contentView];
  [v22 addSubview_];

  v23 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20C150040;
  v25 = [v21 bottomAnchor];
  v26 = [v13 contentView];
  v27 = [v26 bottomAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:-v18];
  *(v24 + 32) = v28;
  v29 = [v21 leadingAnchor];
  v30 = [v13 contentView];
  v31 = [v30 leadingAnchor];

  v32 = [v29 constraintEqualToAnchor:v31 constant:v16];
  *(v24 + 40) = v32;
  v33 = [v21 trailingAnchor];
  v34 = [v13 contentView];
  v35 = [v34 trailingAnchor];

  v36 = [v33 constraintEqualToAnchor:v35 constant:-v20];
  *(v24 + 48) = v36;
  sub_20B5E29D0();
  v37 = sub_20C13CC54();

  [v23 activateConstraints_];

  [v21 layoutIfNeeded];
  v38 = [v13 contentView];
  [v38 layoutIfNeeded];

  v39 = [v64 view];
  if (!v39)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v40 = v39;
  v41 = *(v0 + 256);
  v42 = *(v0 + 184);

  [v40 bounds];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v66.origin.x = v44;
  v66.origin.y = v46;
  v66.size.width = v48;
  v66.size.height = v50;
  [v21 sizeThatFits_];
  [v13 setPreferredHeight_];
  [v13 setMinimumHeight_];
  v52 = [v42 navigationItem];
  [v52 _setTopPalette_];

  v53 = *(v0 + 8);
LABEL_9:

  v53();
}

uint64_t sub_20BE9C57C()
{
  v1 = v0[33];
  v2 = v0[32];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_20BE9C60C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

unint64_t sub_20BE9C6D8(__n128 a1)
{
  result = qword_27C767820;
  if (!qword_27C767820)
  {
    sub_20C134894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767820);
  }

  return result;
}

uint64_t MarketingPaletteBannerDisplaying<>.removeMarketingPaletteBanner()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_20B517000, v10, v11, "[UM] Removing palette banner", v12, 2u);
    MEMORY[0x20F2F6A40](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v13 = [v3 navigationItem];
  [v13 _setTopPalette_];

  return (*(a2 + 24))(0, a1, a2);
}

uint64_t MarketingPaletteBannerDisplaying<>.showMarketingPaletteBanner(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = v3;
  v4[3] = sub_20C13CDA4();
  v4[4] = sub_20C13CD94();
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_20BE9C9AC;

  return MarketingPaletteBannerDisplaying<>.attachMarketingPaletteBanner(request:)(a1, a2, a3);
}

{
  v4[2] = v3;
  v4[3] = sub_20C13CDA4();
  v4[4] = sub_20C13CD94();
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_20BE9CD78;

  return MarketingPaletteBannerDisplaying<>.attachMarketingPaletteBanner(request:)(a1, a2, a3);
}

uint64_t sub_20BE9C9AC()
{
  *(*v1 + 48) = v0;

  v3 = sub_20C13CD24();
  if (v0)
  {
    v4 = sub_20BE9CC3C;
  }

  else
  {
    v4 = sub_20BE9CB08;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

id sub_20BE9CB08()
{
  result = [*(v0 + 16) tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = result;
  v3 = *(v0 + 16);
  [result contentOffset];
  v5 = v4;

  result = [v3 tableView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  [result adjustedContentInset];
  v8 = v7;

  if (v5 <= -v8)
  {
    result = [*(v0 + 16) tableView];
    if (result)
    {
      v9 = result;

      [v9 _scrollToTopIfPossible_];

      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    return result;
  }

LABEL_7:
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_20BE9CC3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BE9CD78()
{
  *(*v1 + 48) = v0;

  v3 = sub_20C13CD24();
  if (v0)
  {
    v4 = sub_20BE9D1A8;
  }

  else
  {
    v4 = sub_20BE9CED4;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

id sub_20BE9CED4()
{
  result = [*(v0 + 16) collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = result;
  v3 = *(v0 + 16);
  [result contentOffset];
  v5 = v4;

  result = [v3 collectionView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  [result adjustedContentInset];
  v8 = v7;

  if (v5 <= -v8)
  {
    result = [*(v0 + 16) collectionView];
    if (result)
    {
      v9 = result;

      [v9 _scrollToTopIfPossible_];

      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    return result;
  }

LABEL_7:
  v10 = *(v0 + 8);

  return v10();
}

uint64_t dispatch thunk of MarketingPaletteBannerDisplaying.showMarketingPaletteBanner(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20B52A9D4;

  return v9(a1, a2, a3);
}

uint64_t TopShelfMarketingItem.title.getter()
{
  v1 = *v0;

  return v1;
}

void TopShelfMarketingItem.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t TopShelfMarketingItem.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void TopShelfMarketingItem.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t TopShelfMarketingItem.artworkURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TopShelfMarketingItem(0) + 32);

  return sub_20B6A6860(v3, a1);
}

uint64_t TopShelfMarketingItem.artworkURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TopShelfMarketingItem(0) + 32);

  return sub_20B9E754C(a1, v3);
}

uint64_t TopShelfMarketingItem.LinkAction.title.getter()
{
  v1 = *v0;

  return v1;
}

void TopShelfMarketingItem.LinkAction.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t TopShelfMarketingItem.LinkAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TopShelfMarketingItem.LinkAction(0) + 20);
  v4 = sub_20C132C14();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TopShelfMarketingItem.LinkAction.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TopShelfMarketingItem.LinkAction(0) + 20);
  v4 = sub_20C132C14();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void TopShelfMarketingItem.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v108 = sub_20C139054();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F278, &unk_20C17E3E0);
  MEMORY[0x28223BE20](v6 - 8);
  v110 = v102 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v8 - 8);
  v109 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v102 - v11;
  MEMORY[0x28223BE20](v13);
  v130 = v102 - v14;
  v126 = sub_20C1388B4();
  v116 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v128 = v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C132C14();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v129 = v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v123 = v102 - v20;
  v21 = type metadata accessor for TopShelfMarketingItem.LinkAction(0);
  v121 = *(v21 - 8);
  v122 = v21;
  MEMORY[0x28223BE20](v21);
  v120 = (v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v25 = v102 - v24;
  v125 = sub_20C138B94();
  v26 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_20C139594();
  v134 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v137 = (v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v132 = sub_20C138E94();
  v29 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v133 = v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_20C138894();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v112 = v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(type metadata accessor for TopShelfMarketingItem(0) + 32);
  v127 = v17;
  v33 = *(v17 + 56);
  v105 = v32;
  v139 = v16;
  v135 = v33;
  v136 = v17 + 56;
  v33(a2 + v32, 1, 1, v16);
  v34 = a1;
  v35 = [a1 title];
  if (v35)
  {
    v36 = v35;
    v37 = sub_20C13C954();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  *a2 = v37;
  a2[1] = v39;
  v40 = [v34 subtitle];
  v41 = v128;
  if (v40)
  {
    v42 = v40;
    v43 = sub_20C13C954();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  a2[2] = v43;
  a2[3] = v45;
  (*(v29 + 104))(v133, *MEMORY[0x277D541A8], v132);
  (*(v134 + 104))(v137, *MEMORY[0x277D54408], v138);
  v113 = v34;
  sub_20C138854();
  v46 = sub_20C138824();
  v47 = *(v46 + 16);
  v111 = a2;
  v138 = v12;
  if (v47)
  {
    v50 = *(v26 + 16);
    v48 = v26 + 16;
    v49 = v50;
    v51 = (*(v48 + 64) + 32) & ~*(v48 + 64);
    v102[1] = v46;
    v52 = v46 + v51;
    v134 = *(v48 + 56);
    v133 = (v116 + 11);
    LODWORD(v132) = *MEMORY[0x277D540D0];
    v131 = (v48 - 8);
    v117 = v116 + 1;
    v116 += 12;
    v115 = (v127 + 32);
    v137 = MEMORY[0x277D84F90];
    v53 = v125;
    v54 = v126;
    v55 = v124;
    v119 = v48;
    v118 = v50;
    v114 = v25;
    v50(v124, v46 + v51, v125);
    while (1)
    {
      sub_20C138B74();
      v56 = (*v133)(v41, v54);
      if (v56 == v132)
      {
        (*v116)(v41, v54);
        v57 = v41;
        v58 = *v115;
        v59 = v123;
        v60 = v139;
        (*v115)(v123, v57, v139);
        v61 = sub_20C138B64();
        v63 = v62;
        (*v131)(v55, v53);
        v64 = v120;
        v65 = v59;
        v66 = v114;
        v58(v120 + *(v122 + 20), v65, v60);
        *v64 = v61;
        v64[1] = v63;
        sub_20BE9E464(v64, v66);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v67 = v137;
        }

        else
        {
          v67 = sub_20BC08590(0, v137[2] + 1, 1, v137);
        }

        v69 = v67[2];
        v68 = v67[3];
        v53 = v125;
        v54 = v126;
        v41 = v128;
        v49 = v118;
        if (v69 >= v68 >> 1)
        {
          v67 = sub_20BC08590((v68 > 1), v69 + 1, 1, v67);
        }

        v67[2] = v69 + 1;
        v70 = (*(v121 + 80) + 32) & ~*(v121 + 80);
        v137 = v67;
        sub_20BE9E464(v66, v67 + v70 + *(v121 + 72) * v69);
        v12 = v138;
        v55 = v124;
      }

      else
      {
        (*v131)(v55, v53);
        (*v117)(v41, v54);
      }

      v52 += v134;
      if (!--v47)
      {
        break;
      }

      v49(v55, v52, v53);
    }

    a2 = v111;
    v71 = v137;
  }

  else
  {

    v71 = MEMORY[0x277D84F90];
  }

  a2[4] = v71;
  v72 = [v113 videos];
  v73 = v139;
  if (v72)
  {
    v74 = v72;
    sub_20BE9E418();
    v75 = sub_20C13CC74();

    if (!(v75 >> 62))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v75 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_23:
      v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v76)
      {
        goto LABEL_24;
      }

LABEL_43:
      v79 = MEMORY[0x277D84F90];
LABEL_44:

      v92 = v111;
      v111[5] = v79;
      v93 = v92;
      v94 = v107;
      v95 = v106;
      v96 = v108;
      (*(v107 + 104))(v106, *MEMORY[0x277D54260], v108);
      v97 = v110;
      v98 = v112;
      sub_20C138874();
      (*(v94 + 8))(v95, v96);
      v99 = sub_20C138954();
      v100 = *(v99 - 8);
      if ((*(v100 + 48))(v97, 1, v99) == 1)
      {
        (*(v103 + 8))(v98, v104);

        sub_20B520158(v97, &qword_27C76F278, &unk_20C17E3E0);
        v101 = v109;
        v135(v109, 1, 1, v73);
      }

      else
      {
        v101 = v109;
        sub_20C138944();

        (*(v103 + 8))(v98, v104);
        (*(v100 + 8))(v97, v99);
      }

      sub_20B9E754C(v101, v93 + v105);
      return;
    }
  }

  v76 = sub_20C13DB34();
  if (!v76)
  {
    goto LABEL_43;
  }

LABEL_24:
  v77 = 0;
  v137 = (v75 & 0xC000000000000001);
  v134 = v75 & 0xFFFFFFFFFFFFFF8;
  v78 = (v127 + 48);
  v79 = MEMORY[0x277D84F90];
  v80 = (v127 + 32);
  while (1)
  {
    if (v137)
    {
      v81 = MEMORY[0x20F2F5430](v77, v75);
    }

    else
    {
      if (v77 >= *(v134 + 16))
      {
        goto LABEL_49;
      }

      v81 = *(v75 + 8 * v77 + 32);
    }

    v82 = v81;
    v83 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      break;
    }

    v84 = v75;
    v85 = [v81 URL];
    if (v85)
    {
      v86 = v85;
      sub_20C132B94();

      v12 = v138;
      v87 = 0;
    }

    else
    {
      v87 = 1;
    }

    v73 = v139;
    v135(v12, v87, 1, v139);
    v88 = v130;
    sub_20B6A69B4(v12, v130);
    if ((*v78)(v88, 1, v73) == 1)
    {
      sub_20B520158(v88, &unk_27C7617F0, &unk_20C151A10);
    }

    else
    {
      v89 = *v80;
      (*v80)(v129, v88, v73);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_20BC08108(0, *(v79 + 2) + 1, 1, v79);
      }

      v91 = *(v79 + 2);
      v90 = *(v79 + 3);
      if (v91 >= v90 >> 1)
      {
        v79 = sub_20BC08108((v90 > 1), v91 + 1, 1, v79);
      }

      *(v79 + 2) = v91 + 1;
      v73 = v139;
      v89(&v79[((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v91], v129, v139);
      v12 = v138;
    }

    ++v77;
    v75 = v84;
    if (v83 == v76)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
}

unint64_t sub_20BE9E418()
{
  result = qword_27C76FF50;
  if (!qword_27C76FF50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C76FF50);
  }

  return result;
}

uint64_t sub_20BE9E464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopShelfMarketingItem.LinkAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20BE9E4F0(uint64_t a1)
{
  sub_20B52CA84();
  if (v1 <= 0x3F)
  {
    sub_20BE9E634(319, &qword_27C76FF68, type metadata accessor for TopShelfMarketingItem.LinkAction, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20BE9E634(319, &qword_27C76FF70, MEMORY[0x277CC9260], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_20BE9E634(319, &qword_281103E28, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20BE9E634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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