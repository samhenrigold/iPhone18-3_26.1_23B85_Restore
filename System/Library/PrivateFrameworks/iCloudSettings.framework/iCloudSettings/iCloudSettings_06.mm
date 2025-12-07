unint64_t sub_2758E83E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10350;
  if (!qword_280A10350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10350);
  }

  return result;
}

unint64_t sub_2758E843C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10358;
  if (!qword_280A10358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10358);
  }

  return result;
}

unint64_t sub_2758E8494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10360;
  if (!qword_280A10360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10360);
  }

  return result;
}

uint64_t sub_2758E84E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
  sub_27585D258();
  v25[0] = v3;
  v25[1] = v5;
  v25[2] = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v25);

  sub_2759B9B18();

  v6 = OpaqueTypeMetadata2;
  v7 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(v25, OpaqueTypeMetadata2);
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E7F0, &unk_2759C1230);
  sub_27585D118();
  v22[0] = v6;
  v22[1] = v8;
  v22[2] = v7;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v22);

  sub_2759B9B18();

  v9 = v23;
  v10 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E808, &qword_2759CC1E0);
  sub_27585D1B8();
  v19[0] = v9;
  v19[1] = v11;
  v19[2] = v10;
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v19);

  sub_2759B9B18();

  v12 = v20;
  v13 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  swift_getKeyPath();
  v14 = sub_2759BA1B8();
  sub_2758E9FC8(&qword_280A10398, MEMORY[0x277D4D7B0], MEMORY[0x277D4D7D0]);
  v16[0] = v12;
  v16[1] = v14;
  v16[2] = v13;
  v17 = swift_getOpaqueTypeMetadata2();
  v18 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v16);

  sub_2759B9B18();

  __swift_project_boxed_opaque_existential_1(v16, v17);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E7D0, &qword_2759C1228);
  sub_27585D02C();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2759B9B18();

  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_2758E89EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759BA1B8();
  v7[3] = v4;
  v7[4] = &off_288480E90;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
  swift_beginAccess();
  sub_2758CE724(v7, a2 + 40, &qword_280A10388, &qword_2759C69C8);
  return swift_endAccess();
}

uint64_t sub_2758E8AA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 120) = a5;
  *(v5 + 136) = a4;
  sub_2759BA4C8();
  *(v5 + 128) = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E8B44, v7, v6);
}

uint64_t sub_2758E8B44()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 120);
  if ((v1 & 1) == 0)
  {
    v3 = *(v2 + 32);
    if (!v3 || *(v3 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_isPresented) != 1)
    {
      goto LABEL_22;
    }
  }

  v4 = *(v2 + 80);
  if (v4)
  {
    v5 = [v4 navigationController];
    if (v5)
    {
      v6 = v5;
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v7 = sub_2759B89A8();
      __swift_project_value_buffer(v7, qword_2815ADE70);
      v8 = sub_2759B8988();
      v9 = sub_2759BA668();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_275819000, v8, v9, "PopViewAction: performing presenting controller navigation", v10, 2u);
        MEMORY[0x277C85860](v10, -1, -1);
      }

      goto LABEL_22;
    }

    v2 = *(v0 + 120);
  }

  swift_beginAccess();
  sub_2758E9E84(v2 + 40, v0 + 56);
  if (!*(v0 + 80))
  {
    sub_27586BF04(v0 + 56, &qword_280A10388, &qword_2759C69C8);
LABEL_21:
    sub_2758E8E2C();
    goto LABEL_22;
  }

  sub_275827D1C((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  if ((sub_2759BA198() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_21;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v11 = sub_2759B89A8();
  __swift_project_value_buffer(v11, qword_2815ADE70);
  v12 = sub_2759B8988();
  v13 = sub_2759BA668();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_275819000, v12, v13, "PopViewAction: performing state driven navigation", v14, 2u);
    MEMORY[0x277C85860](v14, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2759BA1A8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_22:
  v15 = *(v0 + 8);

  return v15();
}

void sub_2758E8E2C()
{
  v1 = v0;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "PopViewAction: performing legacy navigation", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  if (*(v1 + 16) && (v6 = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v7 = v6;
    v14 = [v6 popViewControllerAnimated_];
  }

  else
  {
    v8 = *(v1 + 24);
    if (v8 && (swift_getKeyPath(), sub_2758E9FC8(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel), v9 = v8, sub_2759B8638(), , Strong = swift_unknownObjectWeakLoadStrong(), v9, Strong))
    {
      v11 = [Strong popViewControllerAnimated_];
    }

    else
    {
      v11 = sub_2759B8988();
      v12 = sub_2759BA648();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_275819000, v11, v12, "PopViewAction: Missing any view model or navigation controller", v13, 2u);
        MEMORY[0x277C85860](v13, -1, -1);
      }
    }
  }
}

uint64_t sub_2758E90C0()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_2758E9124(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

void sub_2758E9170(BOOL *a2@<X8>)
{
  v3 = sub_2759BAA48();

  *a2 = v3 != 0;
}

void sub_2758E91F0(BOOL *a3@<X8>)
{
  v4 = sub_2759BAA48();

  *a3 = v4 != 0;
}

uint64_t sub_2758E9248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2758EA010(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2758E9284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2758EA010(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2758E92C0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  MEMORY[0x28223BE20](v4 - 8);
  v26 = v23 - v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A103A0, &qword_2759C6AC8);
  v24 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = v23 - v6;
  *(v1 + 80) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v8 = OBJC_IVAR____TtC14iCloudSettings13PopViewAction_force;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v27 = v8;
  v11(v2 + v8, 1, 1, v9);
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2758EA010(v13, v14, v15);
  v25 = v7;
  v16 = v29;
  sub_2759BAC18();
  if (v16)
  {
  }

  else
  {
    v23[1] = v12;
    v29 = v11;
    v17 = v24;
    sub_2758EA064();
    v18 = v25;
    v19 = v26;
    v20 = v28;
    sub_2759BAA68();
    (*(v17 + 8))(v18, v20);
    v21 = v27;
    swift_beginAccess();
    sub_2758CE724(v19, v2 + v21, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_2758E958C()
{
  sub_27586BF04((v0 + 5), &qword_280A10388, &qword_2759C69C8);

  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings13PopViewAction_force, &qword_280A0FC48, &qword_2759C79C0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PopViewAction(uint64_t a1)
{
  result = qword_280A10368;
  if (!qword_280A10368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2758E968C(uint64_t a1)
{
  sub_2758E9738(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2758E9738(uint64_t a1)
{
  if (!qword_280A0FC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FC68, &qword_2759C7830);
    v1 = sub_2759BA7D8();
    if (!v2)
    {
      atomic_store(v1, &qword_280A0FC60);
    }
  }
}

uint64_t sub_2758E979C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27585A7E4;

  return sub_2758E99E8(a1);
}

uint64_t sub_2758E9900@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2758E92C0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2758E99E8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v2[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758E9AEC, 0, 0);
}

uint64_t sub_2758E9AEC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = OBJC_IVAR____TtC14iCloudSettings13PopViewAction_force;
  swift_beginAccess();
  if ((*(v1 + 48))(v3 + v4, 1, v2))
  {
    v5 = 0;
  }

  else
  {
    (*(*(v0 + 72) + 16))(*(v0 + 80), v3 + v4, *(v0 + 64));
    sub_2759B8AA8();
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v5 = *(v0 + 88);
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_2815ADE70);
  v7 = sub_2759B8988();
  v8 = sub_2759BA668();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5;
    _os_log_impl(&dword_275819000, v7, v8, "PopViewAction: performing action, force: %{BOOL}d", v9, 8u);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  v11 = *(v0 + 48);
  v10 = *(v0 + 56);

  v12 = sub_2759BA518();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_2759BA4C8();

  v13 = sub_2759BA4B8();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v5;
  *(v14 + 40) = v11;
  sub_27587D460(0, 0, v10, &unk_2759C69C0, v14);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2758E9DC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_2758E8AA8(a1, v4, v5, v6, v7);
}

uint64_t sub_2758E9E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10388, &qword_2759C69C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2758E9EF4(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + 24);
  *(v1 + 24) = *a1;
  v3 = v2;
}

void sub_2758E9F38(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + 32);
  *(v1 + 32) = *a1;
  v3 = v2;
}

void sub_2758E9F84(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + 80);
  *(v1 + 80) = *a1;
  v3 = v2;
}

uint64_t sub_2758E9FC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2758EA010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A103A8;
  if (!qword_280A103A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A103A8);
  }

  return result;
}

unint64_t sub_2758EA064()
{
  result = qword_280A100B0;
  if (!qword_280A100B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FC68, &qword_2759C7830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A100B0);
  }

  return result;
}

unint64_t sub_2758EA0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A103B0;
  if (!qword_280A103B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A103B0);
  }

  return result;
}

unint64_t sub_2758EA134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A103B8;
  if (!qword_280A103B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A103B8);
  }

  return result;
}

unint64_t sub_2758EA18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A103C0;
  if (!qword_280A103C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A103C0);
  }

  return result;
}

uint64_t sub_2758EA1E0@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_2758ED4A0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_2758EA294(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2758ED4A0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8628();
}

id sub_2758EA384()
{
  v1 = OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager;
  v2 = *(v0 + OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager);
LABEL_5:
    v8 = v2;
    return v3;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v5 = result;
    v6 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_2758EA438()
{
  v1 = OBJC_IVAR___ICSHomeViewController____lazy_storage___accountManager;
  v2 = *(v0 + OBJC_IVAR___ICSHomeViewController____lazy_storage___accountManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICSHomeViewController____lazy_storage___accountManager);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2758EA4D0()
{
  v1 = v0;
  *&v0[OBJC_IVAR___ICSHomeViewController_viewModel] = 0;
  *&v0[OBJC_IVAR___ICSHomeViewController_delayedDeeplinkInfo] = 0;
  *&v0[OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager] = 0;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    *&v0[OBJC_IVAR___ICSHomeViewController_accountStore] = result;
    *&v0[OBJC_IVAR___ICSHomeViewController____lazy_storage___accountManager] = 0;
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v3 = sub_2759B89A8();
    __swift_project_value_buffer(v3, qword_2815ADE70);
    v4 = sub_2759B8988();
    v5 = sub_2759BA668();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_275819000, v4, v5, "iCloudHomeViewController init called.", v6, 2u);
      MEMORY[0x277C85860](v6, -1, -1);
    }

    v7.receiver = v1;
    v7.super_class = type metadata accessor for iCloudHomeViewController();
    return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id iCloudHomeViewController.__deallocating_deinit()
{
  v1 = v0;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = sub_2759B8988();
  v4 = sub_2759BA638();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "iCloudHome deinitialized.", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for iCloudHomeViewController();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2758EA848(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_2759B8508();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = type metadata accessor for iCloudHomeViewController();
  v42.receiver = v2;
  v42.super_class = v17;
  objc_msgSendSuper2(&v42, sel_viewDidAppear_, a1 & 1);
  sub_2759B84F8();
  sub_2758BB4AC(v16, v14);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    sub_27586BF04(v14, &unk_280A0EB10, &qword_2759C0740);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v18 = sub_2759B89A8();
    __swift_project_value_buffer(v18, qword_2815ADE70);
    v19 = sub_2759B8988();
    v20 = sub_2759BA648();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_275819000, v19, v20, "Invalid deeplink url string.", v21, 2u);
      MEMORY[0x277C85860](v21, -1, -1);
    }
  }

  else
  {
    v41 = v6;
    (*(v8 + 32))(v10, v14, v7);
    v22 = sub_2759BA258();
    v23 = objc_opt_self();
    v24 = [v23 iCloudTitle];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102F0, &qword_2759C4560);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2759C2410;
    *(v25 + 32) = [v23 appleAccountTitle];
    sub_275861AF8(0, &qword_280A103C8, 0x277CCAEB8);
    v26 = sub_2759BA3D8();

    v27 = sub_2759B84B8();
    [v2 pe:v22 emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:v24 title:v26 localizedNavigationComponents:v27 deepLink:?];

    v28 = OBJC_IVAR___ICSHomeViewController_viewModel;
    v29 = *&v2[OBJC_IVAR___ICSHomeViewController_viewModel];
    if (v29)
    {
      v30 = v29;
      iCloudHomeViewModel.headerCardSubscriptionLabel.getter();
    }

    else
    {
      type metadata accessor for iCloudHomeViewModel(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v30 = [objc_opt_self() bundleForClass_];
      sub_2759B83C8();
    }

    v32 = sub_2759BA258();

    [v2 setTitle_];

    v33 = *&v2[v28];
    if (v33)
    {
      v34 = *(v33 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController);
      v35 = v41;
      sub_2759BA4D8();
      v36 = sub_2759BA518();
      (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
      v37 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      *(v38 + 24) = 0;
      *(v38 + 32) = v37;
      *(v38 + 40) = xmmword_2759C43F0;
      *(v38 + 56) = 6666;
      *(v38 + 58) = 1;
      *(v38 + 64) = 0;
      *(v38 + 72) = 1;
      *(v38 + 80) = 0;
      *(v38 + 88) = 0;
      *(v38 + 96) = -1;
      sub_275931D20(0, 0, v35, &unk_2759C4530, v38);

      sub_27586BF04(v35, &unk_280A0E510, &qword_2759C33C0);
    }

    (*(v8 + 8))(v10, v7);
  }

  return sub_27586BF04(v16, &unk_280A0EB10, &qword_2759C0740);
}

double sub_2758EAEC0(char a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for iCloudHomeViewController();
  objc_msgSendSuper2(&v14, sel_viewWillAppear_, a1 & 1);
  v4 = [v2 navigationItem];
  [v4 setLargeTitleDisplayMode_];

  v6 = OBJC_IVAR___ICSHomeViewController_viewModel;
  v7 = *&v2[OBJC_IVAR___ICSHomeViewController_viewModel];
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ED4A0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
    v9 = v7;
    sub_2759B8628();

    v10 = *&v2[v6];
    if (v10)
    {
      v11 = v10;
      sub_275878260([v2 navigationController]);
    }
  }

  v12 = OBJC_IVAR___ICSHomeViewController_delayedDeeplinkInfo;
  if (*&v2[OBJC_IVAR___ICSHomeViewController_delayedDeeplinkInfo])
  {

    v13 = sub_2759BA1C8();

    [v2 handleURL_];

    *&v2[v12] = 0;
  }

  return result;
}

void sub_2758EB124(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for iCloudHomeViewController();
  objc_msgSendSuper2(&v7, sel_willMoveToParentViewController_, a1);
  if (!a1)
  {
    v3 = [v1 parentViewController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 navigationItem];

      [v5 setTitleView_];
    }

    v6 = [v1 navigationItem];
    [v6 setTitleView_];
  }
}

void sub_2758EB264()
{
  v1 = v0;
  v2 = type metadata accessor for iCloudHomeView(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v122 - v6);
  v8 = type metadata accessor for iCloudHomeViewController();
  v128.receiver = v0;
  v128.super_class = v8;
  objc_msgSendSuper2(&v128, sel_viewDidLoad);
  v9 = [v0 specifier];
  if (!v9)
  {
    v126 = 0u;
    v127 = 0u;
LABEL_12:
    sub_27586BF04(&v126, &qword_280A0ED70, &qword_2759C6C60);
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2759BA258();
  v12 = [v10 propertyForKey_];

  if (v12)
  {
    sub_2759BA818();
    swift_unknownObjectRelease();
  }

  else
  {
    v124 = 0u;
    v125 = 0u;
  }

  v126 = v124;
  v127 = v125;
  if (!*(&v125 + 1))
  {
    goto LABEL_12;
  }

  sub_275861AF8(0, &qword_280A10430, 0x277CED1D0);
  if (swift_dynamicCast())
  {
    v13 = v124;
    v14 = [v124 accounts];
    if (!v14)
    {
LABEL_90:
      __break(1u);
      return;
    }

    v15 = v14;
    type metadata accessor for AIDAServiceType(0);
    sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
    sub_2758ED4A0(&qword_280A0E500, type metadata accessor for AIDAServiceType, &unk_2759C06F0);
    v16 = sub_2759BA1D8();

    if (*(v16 + 16))
    {
      v17 = sub_2758A342C();
      if (v18)
      {
        v19 = *(*(v16 + 56) + 8 * v17);

LABEL_71:
        if (qword_2815ADD30 != -1)
        {
          swift_once();
        }

        v112 = sub_2759B89A8();
        __swift_project_value_buffer(v112, qword_2815ADE70);
        v113 = sub_2759B8988();
        v114 = sub_2759BA668();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          *v115 = 0;
          _os_log_impl(&dword_275819000, v113, v114, "Found account manager instance w/ specifier. The flow is NOT launched from Settings root level.", v115, 2u);
          MEMORY[0x277C85860](v115, -1, -1);
        }

        v116 = objc_allocWithZone(MEMORY[0x277D7F4A8]);
        v117 = v13;
        v118 = v19;
        v119 = [v116 init];
        v120 = objc_allocWithZone(type metadata accessor for iCloudHomeViewModel(0));
        v121 = v119;
        v38 = sub_2758946C4(v117, v118, 0, v121, v120);

LABEL_23:
        v39 = *&v1[OBJC_IVAR___ICSHomeViewController_viewModel];
        *&v1[OBJC_IVAR___ICSHomeViewController_viewModel] = v38;
        goto LABEL_28;
      }
    }

    v19 = [*&v1[OBJC_IVAR___ICSHomeViewController_accountStore] aa_primaryAppleAccount];
    if (v19)
    {
      goto LABEL_71;
    }
  }

LABEL_13:
  v20 = sub_2758EA438();
  v21 = [v20 accounts];
  if (!v21)
  {
    __break(1u);
    goto LABEL_79;
  }

  v22 = v21;

  type metadata accessor for AIDAServiceType(0);
  sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
  sub_2758ED4A0(&qword_280A0E500, type metadata accessor for AIDAServiceType, &unk_2759C06F0);
  v23 = sub_2759BA1D8();

  if (*(v23 + 16))
  {
    v24 = sub_2758A342C();
    if (v25)
    {
      v26 = *(*(v23 + 56) + 8 * v24);

LABEL_18:
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v27 = sub_2759B89A8();
      __swift_project_value_buffer(v27, qword_2815ADE70);
      v28 = sub_2759B8988();
      v29 = sub_2759BA668();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_275819000, v28, v29, "No accountManager instance exist w/ specifier. The flow is launched from Settings root level for primary account.", v30, 2u);
        MEMORY[0x277C85860](v30, -1, -1);
      }

      v31 = *&v1[OBJC_IVAR___ICSHomeViewController____lazy_storage___accountManager];
      v32 = objc_allocWithZone(MEMORY[0x277D7F4A8]);
      v33 = v31;
      v34 = v26;
      v35 = [v32 init];
      v36 = objc_allocWithZone(type metadata accessor for iCloudHomeViewModel(0));
      v37 = v35;
      v38 = sub_2758946C4(v33, v34, 1, v37, v36);

      goto LABEL_23;
    }
  }

  v26 = [*&v1[OBJC_IVAR___ICSHomeViewController_accountStore] aa_primaryAppleAccount];
  if (v26)
  {
    goto LABEL_18;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v40 = sub_2759B89A8();
  __swift_project_value_buffer(v40, qword_2815ADE70);
  v39 = sub_2759B8988();
  v41 = sub_2759BA648();
  if (os_log_type_enabled(v39, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_275819000, v39, v41, "Unable to find an account for iCloudHomeViewController", v42, 2u);
    MEMORY[0x277C85860](v42, -1, -1);
  }

LABEL_28:

  v43 = *&v1[OBJC_IVAR___ICSHomeViewController_viewModel];
  if (v43)
  {
    swift_unknownObjectWeakAssign();
    *v7 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
    swift_storeEnumTagMultiPayload();
    v44 = v2[5];
    *(v7 + v44) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10410, &qword_2759C6CD0);
    swift_storeEnumTagMultiPayload();
    v45 = v2[7];
    *(v7 + v45) = 0;
    v46 = (v7 + v2[6]);
    *&v124 = v43;
    type metadata accessor for iCloudHomeViewModel(0);
    v47 = v43;
    sub_2759B9D58();
    v48 = *(&v126 + 1);
    *v46 = v126;
    v46[1] = v48;
    if (sub_27587C10C())
    {
      sub_2759B8878();
      *(v7 + v45) = sub_2759B8868();
    }

    sub_2758ED4E8(v7, v5);
    v49 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10418, &qword_2759C6CD8));
    v50 = sub_2759B9508();
    v51 = [v50 view];
    if (v51)
    {
      v52 = v51;
      [v51 setTranslatesAutoresizingMaskIntoConstraints_];

      [v1 addChildViewController_];
      v53 = [v1 view];
      if (v53)
      {
        v54 = v53;
        v55 = [v50 view];
        if (v55)
        {
          v56 = v55;
          [v54 addSubview_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102F0, &qword_2759C4560);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_2759C6C20;
          v58 = [v50 view];
          if (v58)
          {
            v59 = v58;
            v60 = [v58 topAnchor];

            v61 = [v1 view];
            if (v61)
            {
              v62 = v61;
              v63 = [v61 topAnchor];

              v64 = [v60 constraintEqualToAnchor:v63 constant:-10.0];
              *(v57 + 32) = v64;
              v65 = [v50 view];
              if (v65)
              {
                v66 = v65;
                v123 = v7;
                v67 = [v65 bottomAnchor];

                v68 = [v1 view];
                if (v68)
                {
                  v69 = v68;
                  v70 = [v68 bottomAnchor];

                  v71 = [v67 constraintEqualToAnchor_];
                  *(v57 + 40) = v71;
                  v72 = [v50 view];
                  if (v72)
                  {
                    v73 = v72;
                    v74 = [v72 leadingAnchor];

                    v75 = [v1 view];
                    if (v75)
                    {
                      v76 = v75;
                      v77 = v47;
                      v78 = [v75 leadingAnchor];

                      v79 = [v74 constraintEqualToAnchor_];
                      *(v57 + 48) = v79;
                      v80 = [v50 view];

                      if (v80)
                      {
                        v81 = [v80 trailingAnchor];

                        v82 = [v1 view];
                        if (v82)
                        {
                          v83 = v82;
                          v84 = objc_opt_self();
                          v85 = [v83 trailingAnchor];

                          v86 = [v81 constraintEqualToAnchor_];
                          *(v57 + 56) = v86;
                          sub_275861AF8(0, &qword_280A10420, 0x277CCAAD0);
                          v87 = sub_2759BA3D8();

                          [v84 activateConstraints_];

                          [v50 didMoveToParentViewController_];
                          v88 = sub_27587C10C();
                          if (v88)
                          {
                            v89 = v88;
                            v90 = [v88 aa_needsToVerifyTerms];
                            v91 = v123;
                            if (v90)
                            {
                              if (qword_2815ADD30 != -1)
                              {
                                swift_once();
                              }

                              v92 = sub_2759B89A8();
                              __swift_project_value_buffer(v92, qword_2815ADE70);
                              v93 = sub_2759B8988();
                              v94 = sub_2759BA668();
                              if (os_log_type_enabled(v93, v94))
                              {
                                v95 = swift_slowAlloc();
                                *v95 = 0;
                                _os_log_impl(&dword_275819000, v93, v94, "User has not accepted t&c yet, launching the flow.", v95, 2u);
                                MEMORY[0x277C85860](v95, -1, -1);
                              }

                              v96 = [objc_opt_self() defaultStore];
                              v97 = [objc_allocWithZone(MEMORY[0x277CECA50]) initWithAccount:v89 inStore:v96];

                              if (v97)
                              {
                                [v97 setDelegate_];
                                [v97 presentFromViewController:v1 modal:1];
                              }
                            }

                            if (([v89 aa_isPrimaryEmailVerified] & 1) == 0)
                            {
                              if (qword_2815ADD30 != -1)
                              {
                                swift_once();
                              }

                              v98 = sub_2759B89A8();
                              __swift_project_value_buffer(v98, qword_2815ADE70);
                              v99 = sub_2759B8988();
                              v100 = sub_2759BA648();
                              if (os_log_type_enabled(v99, v100))
                              {
                                v101 = swift_slowAlloc();
                                *v101 = 0;
                                _os_log_impl(&dword_275819000, v99, v100, "Primary email is not verified for this apple account. Navigating user back.", v101, 2u);
                                MEMORY[0x277C85860](v101, -1, -1);
                              }

                              [v1 PREFIX_popViewController];
                            }

                            v102 = [v89 aa_suspensionInfo];
                            if (v102)
                            {
                              v103 = v102;
                              if ([v102 isiCloudSuspended])
                              {
                                if (qword_2815ADD30 != -1)
                                {
                                  swift_once();
                                }

                                v104 = sub_2759B89A8();
                                __swift_project_value_buffer(v104, qword_2815ADE70);
                                v105 = sub_2759B8988();
                                v106 = sub_2759BA648();
                                if (os_log_type_enabled(v105, v106))
                                {
                                  v107 = swift_slowAlloc();
                                  *v107 = 0;
                                  _os_log_impl(&dword_275819000, v105, v106, "iCloud is suspended for this apple account. Navigating user back.", v107, 2u);
                                  MEMORY[0x277C85860](v107, -1, -1);
                                }

                                [v1 PREFIX_popViewController];
                                sub_2758ED54C(v91);
                              }

                              else
                              {
                                sub_2758ED54C(v91);
                              }
                            }

                            else
                            {
                              sub_2758ED54C(v91);
                            }
                          }

                          else
                          {
                            sub_2758ED54C(v123);
                          }

                          return;
                        }

                        goto LABEL_89;
                      }

LABEL_88:
                      __break(1u);
LABEL_89:
                      __break(1u);
                      goto LABEL_90;
                    }

LABEL_87:
                    __break(1u);
                    goto LABEL_88;
                  }

LABEL_86:
                  __break(1u);
                  goto LABEL_87;
                }

LABEL_85:
                __break(1u);
                goto LABEL_86;
              }

LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v108 = sub_2759B89A8();
  __swift_project_value_buffer(v108, qword_2815ADE70);
  v109 = sub_2759B8988();
  v110 = sub_2759BA648();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&dword_275819000, v109, v110, "No viewModel exist yet. Can't show iCloud settings.", v111, 2u);
    MEMORY[0x277C85860](v111, -1, -1);
  }
}

void sub_2758EC310(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_2815ADE70);

  v7 = sub_2759B8988();
  v8 = sub_2759BA668();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    if (a1)
    {
      v11 = v10;

      v12 = sub_2759BA1E8();
      v14 = sub_2758937B8(v12, v13, &v24);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_275819000, v7, v8, "handleURL: called w/ info: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x277C85860](v11, -1, -1);
      MEMORY[0x277C85860](v9, -1, -1);

LABEL_7:
      v15 = sub_2759BA518();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      sub_2759BA4C8();

      v16 = v1;
      v17 = sub_2759BA4B8();
      v18 = swift_allocObject();
      v19 = MEMORY[0x277D85700];
      v18[2] = v17;
      v18[3] = v19;
      v18[4] = v16;
      v18[5] = a1;
      sub_27587D460(0, 0, v5, &unk_2759C6CE8, v18);

      return;
    }

    __break(1u);
  }

  else
  {

    if (a1)
    {
      goto LABEL_7;
    }

    v23 = sub_2759B8988();
    v20 = sub_2759BA648();
    if (os_log_type_enabled(v23, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_275819000, v23, v20, "handleURL called w/o any info. Bailing.", v21, 2u);
      MEMORY[0x277C85860](v21, -1, -1);
    }

    v22 = v23;
  }
}

uint64_t sub_2758EC64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2759BA4C8();
  v5[4] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758EC6E4, v7, v6);
}

uint64_t sub_2758EC6E4()
{
  v1 = v0[2];

  v2 = [v1 navigationController];
  if (v2)
  {
    v3 = v0[2];

    v4 = *(v3 + OBJC_IVAR___ICSHomeViewController_viewModel);
    if (v4)
    {
      v5._rawValue = v0[3];
      v6 = v4;
      iCloudHomeViewModel.handleDeeplink(resourceDictionary:)(v5);
    }
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v7 = sub_2759B89A8();
    __swift_project_value_buffer(v7, qword_2815ADE70);
    v8 = sub_2759B8988();
    v9 = sub_2759BA648();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_275819000, v8, v9, "Failed to obtain navigation controller. Will try it later.", v10, 2u);
      MEMORY[0x277C85860](v10, -1, -1);
    }

    v12 = v0[2];
    v11 = v0[3];

    *(v12 + OBJC_IVAR___ICSHomeViewController_delayedDeeplinkInfo) = v11;
  }

  v13 = v0[1];

  return v13();
}

id iCloudHomeViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2759BA258();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_2758EC9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2759BA4C8();
  *(v4 + 24) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758ECA78, v6, v5);
}

uint64_t sub_2758ECA78()
{

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA648();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "genericTermsRemoteUI flow completed w/ no success. Navigating user back.", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  [v5 PREFIX_popViewController];
  v6 = *(v0 + 8);

  return v6();
}

NSObject *sub_2758ECCB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_2758EA384();
  v12 = [v11 accountForService_];

  if (!v12)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v38 = sub_2759B89A8();
    __swift_project_value_buffer(v38, qword_2815ADE70);
    v39 = a1;
    v12 = sub_2759B8988();
    v40 = sub_2759BA648();

    if (os_log_type_enabled(v12, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48 = v42;
      *v41 = 136315138;
      v43 = sub_2759BA298();
      v45 = sub_2758937B8(v43, v44, &v48);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_275819000, v12, v40, "No account exist for serviceType: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x277C85860](v42, -1, -1);
      MEMORY[0x277C85860](v41, -1, -1);
    }

    goto LABEL_23;
  }

  v13 = OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager;
  v14 = [*(v5 + OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager) altDSIDForAccount:v12 service:a1];
  if (v14)
  {
    v47 = a4;
    v15 = a5;
    v16 = v14;
    v17 = sub_2759BA298();
    v19 = v18;

    if (v17 == a2 && v19 == a3)
    {
      goto LABEL_24;
    }

    v21 = sub_2759BAAC8();

    a5 = v15;
    a4 = v47;
    if (v21)
    {
      return v12;
    }
  }

  v22 = [*(v5 + v13) DSIDForAccount:v12 service:{a1, v47}];
  if (!v22)
  {
LABEL_14:
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v29 = sub_2759B89A8();
    __swift_project_value_buffer(v29, qword_2815ADE70);
    v30 = a1;
    v31 = sub_2759B8988();
    v32 = sub_2759BA648();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v48 = v34;
      *v33 = 136315138;
      v35 = sub_2759BA298();
      v37 = sub_2758937B8(v35, v36, &v48);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_275819000, v31, v32, "No matching account found for serviceType: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x277C85860](v34, -1, -1);
      MEMORY[0x277C85860](v33, -1, -1);
    }

LABEL_23:
    return 0;
  }

  v23 = v22;
  v24 = sub_2759BA298();
  v26 = v25;

  if (v24 == a4 && v26 == a5)
  {
LABEL_24:

    return v12;
  }

  v28 = sub_2759BAAC8();

  if ((v28 & 1) == 0)
  {
    goto LABEL_14;
  }

  return v12;
}

Swift::Void __swiftcall iCloudHomeViewController.popViewController()()
{
  v1 = v0;
  v2 = sub_2759BA1B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 traitCollection];
  sub_2759BA6F8();

  LOBYTE(v6) = sub_2759BA198();
  v7 = *(v3 + 8);
  v7(v5, v2);
  if (v6)
  {
    v8 = [v1 traitCollection];
    sub_2759BA6F8();

    sub_2759BA1A8();
    v7(v5, v2);
  }

  else
  {
    v9 = [v1 navigationController];
    if (v9)
    {
      v10 = v9;
    }
  }
}

void iCloudHomeViewController.recipe(dataclass:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for iCloudSettingsNavigationPathHelper();
  v4 = sub_2758EA438();
  static iCloudSettingsNavigationPathHelper.recipe(dataclass:accountManager:)(a1, v4, a2);
}

uint64_t sub_2758ED3BC(uint64_t a1)
{
  v2 = sub_2759B94D8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2759B91D8();
}

uint64_t sub_2758ED4A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2758ED4E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iCloudHomeView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758ED54C(uint64_t a1)
{
  v2 = type metadata accessor for iCloudHomeView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2758ED5A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_2758EC64C(a1, v4, v5, v7, v6);
}

void sub_2758ED668()
{
  *(v0 + OBJC_IVAR___ICSHomeViewController_viewModel) = 0;
  *(v0 + OBJC_IVAR___ICSHomeViewController_delayedDeeplinkInfo) = 0;
  *(v0 + OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager) = 0;
  v1 = [objc_opt_self() defaultStore];
  if (!v1)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR___ICSHomeViewController_accountStore) = v1;
  *(v0 + OBJC_IVAR___ICSHomeViewController____lazy_storage___accountManager) = 0;
  sub_2759BA9D8();
  __break(1u);
}

void sub_2758ED728(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  if (a1)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v6 = sub_2759B89A8();
    __swift_project_value_buffer(v6, qword_2815ADE70);
    v16 = sub_2759B8988();
    v7 = sub_2759BA668();
    if (os_log_type_enabled(v16, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_275819000, v16, v7, "genericTermsRemoteUI flow completed successfully.", v8, 2u);
      MEMORY[0x277C85860](v8, -1, -1);
    }

    v9 = v16;
  }

  else
  {
    v10 = sub_2759BA518();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    sub_2759BA4C8();
    v11 = v1;
    v12 = sub_2759BA4B8();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    sub_27587D460(0, 0, v5, &unk_2759C6D38, v13);
  }
}

void sub_2758ED930(uint64_t a1)
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);

  oslog = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    if (!a1)
    {
      __break(1u);
      return;
    }

    v6 = v5;

    v7 = sub_2759BA1E8();
    v9 = sub_2758937B8(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_275819000, oslog, v3, "genericTermsRemoteUI flow completed w/ termsInfo: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x277C85860](v6, -1, -1);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t _s14iCloudSettings01iA18HomeViewControllerC8accounts3forSDySo15AIDAServiceTypeaSo9ACAccountCGSo18AIDAAccountManagerC_tF_0()
{
  v1 = v0;
  v25 = MEMORY[0x277D84F98];
  v2 = sub_2758EA384();
  v3 = *MEMORY[0x277CED1A0];
  v4 = [v2 accountForService_];

  if (v4)
  {
    v5 = v3;
    v6 = v4;
    sub_2758CDF90(v4, v5);
    v7 = OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager;
    v8 = [*(v1 + OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager) altDSIDForAccount:v6 service:v5];
    if (v8)
    {
      v9 = v8;
      v10 = sub_2759BA298();
      v12 = v11;

      v13 = [*(v1 + v7) DSIDForAccount:v6 service:v5];
      if (v13)
      {
        v14 = v13;
        v15 = sub_2759BA298();
        v17 = v16;

        v18 = *MEMORY[0x277CED1B0];
        v19 = sub_2758ECCB8(*MEMORY[0x277CED1B0], v10, v12, v15, v17);

        if (v19)
        {
          v20 = v19;
          sub_2758CDF90(v19, v18);
        }
      }

      else
      {
      }
    }
  }

  v21 = *(v1 + OBJC_IVAR___ICSHomeViewController____lazy_storage___serviceOwnersManager);
  v22 = *MEMORY[0x277CED1C0];
  v23 = [v21 accountForService_];
  if (v23)
  {
    sub_2758CDF90(v23, v22);
  }

  return v25;
}

uint64_t sub_2758EDCB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585A7E4;

  return sub_2758EC9E0(a1, v4, v5, v6);
}

uint64_t sub_2758EDDB0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104B8, &qword_2759C6DF0) - 8;
  v5 = MEMORY[0x28223BE20](v31);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104C0, &qword_2759C6DF8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  *v13 = sub_2759B94F8();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104C8, &unk_2759C6E00);
  sub_2758EE1A8(a1, a2, &v13[*(v14 + 44)]);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2758EF20C;
  *(v17 + 24) = v15;
  v37 = sub_2758F00BC;
  v38 = v17;
  swift_retain_n();
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104D0, &qword_2759D0E70);
  sub_2759B9D58();
  v35 = sub_2758EF214;
  v36 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104D8, &qword_2759C6E10);
  sub_27589B02C(&qword_280A104E0, &qword_280A104D8, &qword_2759C6E10, &unk_2759C5210);
  v18 = v8;
  sub_2759B9B38();

  v19 = swift_allocObject();
  v21 = v30;
  v20 = v31;
  *(v19 + 16) = v30;
  *(v19 + 24) = a2;
  v22 = (v18 + *(v20 + 44));
  *v22 = sub_2758F0124;
  v22[1] = v19;
  v22[2] = 0;
  v22[3] = 0;
  v23 = v34;
  sub_27586FBC8(v13, v34, &qword_280A104C0, &qword_2759C6DF8);
  v24 = v32;
  sub_27586FBC8(v18, v32, &qword_280A104B8, &qword_2759C6DF0);
  v25 = v23;
  v26 = v33;
  sub_27586FBC8(v25, v33, &qword_280A104C0, &qword_2759C6DF8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104E8, &qword_2759C6E18);
  sub_27586FBC8(v24, v26 + *(v27 + 48), &qword_280A104B8, &qword_2759C6DF0);
  v28 = v21;

  sub_27586BF04(v18, &qword_280A104B8, &qword_2759C6DF0);
  sub_27586BF04(v13, &qword_280A104C0, &qword_2759C6DF8);
  sub_27586BF04(v24, &qword_280A104B8, &qword_2759C6DF0);
  return sub_27586BF04(v34, &qword_280A104C0, &qword_2759C6DF8);
}

uint64_t sub_2758EE1A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104F0, &qword_2759C6E50);
  v89 = *(v5 - 8);
  v90 = v5;
  MEMORY[0x28223BE20](v5);
  v80 = (&v79 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104F8, &qword_2759C6E58);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v92 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v79 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  MEMORY[0x28223BE20](v12 - 8);
  v84 = &v79 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10500, &qword_2759C9C10);
  v14 = MEMORY[0x28223BE20](v83);
  v88 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v79 - v17;
  MEMORY[0x28223BE20](v16);
  v87 = &v79 - v19;
  v85 = a1;
  v95 = a1;
  v96 = a2;
  v86 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v20 = v99;
  swift_getKeyPath();
  v95 = v20;
  v81 = sub_2758F07C0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v21 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v22 = *&v20[v21];
  v23 = v22;

  v91 = v11;
  if (v22)
  {
    v27 = *&v23[OBJC_IVAR___ICSHomeDataModel_upsellCard];
    v28 = v27;

    if (v27)
    {
      v27 = *&v28[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_title];
      v29 = *&v28[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_title + 8];

      goto LABEL_6;
    }
  }

  else
  {
    v27 = 0;
  }

  v29 = 0xE000000000000000;
LABEL_6:
  v95 = v27;
  v96 = v29;
  sub_27589F2D4(v24, v25, v26);
  v30 = sub_2759B99C8();
  v32 = v31;
  v34 = v33;
  sub_2759B98F8();
  v35 = sub_2759B9988();
  v37 = v36;
  v39 = v38;

  sub_27589F328(v30, v32, v34 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v95 = qword_280A239B8;

  v40 = sub_2759B9958();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_27589F328(v35, v37, v39 & 1);

  v95 = v40;
  v96 = v42;
  v97 = v44 & 1;
  v98 = v46;
  v47 = v84;
  sub_2759B9B38();
  sub_27589F328(v40, v42, v44 & 1);

  v48 = sub_2759B97E8();
  sub_2759B8D78();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_27589F26C(v47, v18, &qword_280A0F600, &qword_2759C4210);
  v57 = &v18[*(v83 + 36)];
  *v57 = v48;
  *(v57 + 1) = v50;
  *(v57 + 2) = v52;
  *(v57 + 3) = v54;
  *(v57 + 4) = v56;
  v57[40] = 0;
  v58 = v18;
  v59 = v87;
  sub_27589F26C(v58, v87, &qword_280A10500, &qword_2759C9C10);
  v95 = v85;
  v96 = v86;
  sub_2759B9D68();
  v60 = v94;
  swift_getKeyPath();
  v95 = v60;
  sub_2759B8638();

  v61 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v62 = *&v60[v61];
  v63 = v62;

  if (v62)
  {
    v64 = *&v63[OBJC_IVAR___ICSHomeDataModel_upsellCard];
    v65 = v64;

    v66 = v91;
    if (v64)
    {
      v67 = *&v65[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_features];

      v68 = sub_2759B94F8();
      v69 = v80;
      *v80 = v68;
      *(v69 + 8) = 0;
      *(v69 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10510, &unk_2759C6E68);
      v94 = v67;
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10518, &qword_2759C6E90);
      sub_27589B02C(&qword_280A10520, &qword_280A10518, &qword_2759C6E90, MEMORY[0x277D83980]);
      v70 = sub_2758F07C0(&qword_280A10528, type metadata accessor for Feature, MEMORY[0x277D85378]);
      sub_2758F012C(v70, v71, v72);
      sub_2759B9ED8();
      sub_27589F26C(v69, v66, &qword_280A104F0, &qword_2759C6E50);
      v73 = 0;
    }

    else
    {
      v73 = 1;
    }
  }

  else
  {
    v73 = 1;
    v66 = v91;
  }

  (*(v89 + 56))(v66, v73, 1, v90);
  v74 = v88;
  sub_27586FBC8(v59, v88, &qword_280A10500, &qword_2759C9C10);
  v75 = v92;
  sub_27586FBC8(v66, v92, &qword_280A104F8, &qword_2759C6E58);
  v76 = v93;
  sub_27586FBC8(v74, v93, &qword_280A10500, &qword_2759C9C10);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10508, &qword_2759C6E60);
  sub_27586FBC8(v75, v76 + *(v77 + 48), &qword_280A104F8, &qword_2759C6E58);
  sub_27586BF04(v66, &qword_280A104F8, &qword_2759C6E58);
  sub_27586BF04(v59, &qword_280A10500, &qword_2759C9C10);
  sub_27586BF04(v75, &qword_280A104F8, &qword_2759C6E58);
  return sub_27586BF04(v74, &qword_280A10500, &qword_2759C9C10);
}

id sub_2758EEA24@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_2758EEA30(void *a1, void *a2)
{
  v16[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  swift_getKeyPath();
  v16[2] = v16[0];
  sub_2758F07C0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v5 = *(v16[0] + v4);
  v6 = v5;

  if (v5 && (v7 = *&v6[OBJC_IVAR___ICSHomeDataModel_upsellCard], v8 = v7, v6, v7))
  {
    v9 = *&v8[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_action];

    v16[0] = a1;
    v16[1] = a2;
    sub_2759B9D68();
    v10 = v15;
    LOBYTE(v16[0]) = 24;
    LOBYTE(v15) = 7;
    sub_27590A460(v9, 1, v16, &v15, 0);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v11 = sub_2759B89A8();
    __swift_project_value_buffer(v11, qword_2815ADE70);
    v12 = sub_2759B8988();
    v13 = sub_2759BA648();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_275819000, v12, v13, "No action found for getMoreWithiCloudPlus section.", v14, 2u);
      MEMORY[0x277C85860](v14, -1, -1);
    }
  }
}

double sub_2758EEC70(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  swift_getKeyPath();
  sub_2758F07C0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v2 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v3 = *&v18[v2];
  v4 = v3;

  if (!v3 || (v5 = *&v4[OBJC_IVAR___ICSHomeDataModel_upsellCard], v6 = v5, v4, !v5) || (v7 = *&v6[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_action], v6, v8 = *&v7[OBJC_IVAR____TtC14iCloudSettings6Action_title + 8], , v7, !v8))
  {
  }

  sub_27589F2D4(v9, v10, v11);
  v12 = sub_2759B99C8();
  v14 = v13;
  v16 = v15 & 1;
  sub_2759B9B38();
  sub_27589F328(v12, v14, v16);

  return result;
}

void sub_2758EEE60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v25 = a1;
  v26 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v7 = v23;
  swift_getKeyPath();
  v25 = v7;
  sub_2758F07C0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v8 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v9 = *&v7[v8];
  v10 = v9;

  if (v9)
  {
    v11 = *&v10[OBJC_IVAR___ICSHomeDataModel_upsellCard];
    v12 = v11;

    if (v11)
    {
      v13 = *&v12[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_action];

      v14 = sub_2759BA258();
      v15 = _ICQActionForString();

      if ((v15 - 114) > 0xD || ((1 << (v15 - 114)) & 0x20F1) == 0)
      {
      }

      else
      {
        v23 = a1;
        v24 = a2;
        sub_2759B9D68();
        v17 = v22;
        v18 = *&v22[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController];

        sub_2759BA4D8();
        v19 = sub_2759BA518();
        (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
        v20 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v21 = swift_allocObject();
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
        *(v21 + 32) = v20;
        *(v21 + 40) = 24;
        sub_275931D20(0, 0, v6, &unk_2759C3740, v21);

        sub_27586BF04(v6, &unk_280A0E510, &qword_2759C33C0);
      }
    }
  }
}

uint64_t sub_2758EF15C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104A8, &qword_2759C6DE8);
  sub_27589B02C(&qword_280A104B0, &qword_280A104A8, &qword_2759C6DE8, MEMORY[0x277CE14C0]);
  return sub_2759B9F38();
}

uint64_t sub_2758EF21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v58 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F728, &qword_2759C4380);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v56 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10558, &qword_2759C6F40);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v14 = &v47 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10560, &qword_2759C6F48);
  MEMORY[0x28223BE20](v49);
  v16 = &v47 - v15;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10568, &qword_2759C6F50);
  MEMORY[0x28223BE20](v54);
  v18 = &v47 - v17;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10570, &qword_2759C6F58);
  MEMORY[0x28223BE20](v51);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10578, &qword_2759C6F60);
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - v22;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10580, &qword_2759C6F68);
  MEMORY[0x28223BE20](v52);
  v25 = &v47 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10588, &qword_2759C6F70);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v55 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v53 = &v47 - v29;
  if ((sub_2759B9F98() & 1) != 0 && (v30 = sub_2758F0B74(*(v58 + OBJC_IVAR____TtC14iCloudSettings7Feature_featureId), *(v58 + OBJC_IVAR____TtC14iCloudSettings7Feature_featureId + 8))) != 0)
  {
    v31 = v30;
    sub_2758F0A2C();
    sub_2759B8888();
    sub_2759BA028();
    sub_2759B8F18();
    v32 = &v23[*(v21 + 36)];
    v33 = v60;
    *v32 = v59;
    *(v32 + 1) = v33;
    *(v32 + 2) = v61;
    sub_2758F0974();
    sub_2759B9B38();
    sub_27586BF04(v23, &qword_280A10578, &qword_2759C6F60);
    sub_27586FBC8(v25, v20, &qword_280A10580, &qword_2759C6F68);
    swift_storeEnumTagMultiPayload();
    sub_2758F08C0(&qword_280A105C0, &qword_280A10580, &qword_2759C6F68, sub_2758F0974);
    sub_2758F08C0(&qword_280A105D0, &qword_280A10568, &qword_2759C6F50, sub_2758F0808);
    v34 = v53;
    sub_2759B95E8();

    v35 = v25;
    v36 = &qword_280A10580;
    v37 = &qword_2759C6F68;
  }

  else
  {
    if (*(v58 + OBJC_IVAR____TtC14iCloudSettings7Feature_icons))
    {
      sub_2759889A0(v12);
    }

    else
    {
      v38 = sub_2759B8508();
      (*(*(v38 - 8) + 56))(v12, 1, 1, v38);
    }

    sub_27586FBC8(v12, v10, &unk_280A0EB10, &qword_2759C0740);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10590, &qword_2759C6F78);
    sub_2758F064C();
    sub_2759B8D38();
    sub_27586BF04(v12, &unk_280A0EB10, &qword_2759C0740);
    sub_2759BA028();
    sub_2759B8F18();
    (*(v48 + 32))(v16, v14, v50);
    v39 = &v16[*(v49 + 36)];
    v40 = v60;
    *v39 = v59;
    *(v39 + 1) = v40;
    *(v39 + 2) = v61;
    sub_2758F0808();
    sub_2759B9B38();
    sub_27586BF04(v16, &qword_280A10560, &qword_2759C6F48);
    sub_27586FBC8(v18, v20, &qword_280A10568, &qword_2759C6F50);
    swift_storeEnumTagMultiPayload();
    sub_2758F08C0(&qword_280A105C0, &qword_280A10580, &qword_2759C6F68, sub_2758F0974);
    sub_2758F08C0(&qword_280A105D0, &qword_280A10568, &qword_2759C6F50, sub_2758F0808);
    v34 = v53;
    sub_2759B95E8();
    v35 = v18;
    v36 = &qword_280A10568;
    v37 = &qword_2759C6F50;
  }

  sub_27586BF04(v35, v36, v37);
  *v6 = sub_2759B94F8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F740, &qword_2759C4398);
  sub_2758EFAC0(v58, &v6[*(v41 + 44)]);
  v42 = v55;
  sub_27586FBC8(v34, v55, &qword_280A10588, &qword_2759C6F70);
  v43 = v56;
  sub_27586FBC8(v6, v56, &qword_280A0F728, &qword_2759C4380);
  v44 = v57;
  sub_27586FBC8(v42, v57, &qword_280A10588, &qword_2759C6F70);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A105D8, &unk_2759C6F90);
  sub_27586FBC8(v43, v44 + *(v45 + 48), &qword_280A0F728, &qword_2759C4380);
  sub_27586BF04(v6, &qword_280A0F728, &qword_2759C4380);
  sub_27586BF04(v34, &qword_280A10588, &qword_2759C6F70);
  sub_27586BF04(v43, &qword_280A0F728, &qword_2759C4380);
  return sub_27586BF04(v42, &qword_280A10588, &qword_2759C6F70);
}

uint64_t sub_2758EFAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v64 = &v60 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v63 = &v60 - v9;
  MEMORY[0x28223BE20](v8);
  v62 = &v60 - v10;
  v61 = a1;
  v11 = (a1 + OBJC_IVAR____TtC14iCloudSettings7Feature_title);
  v12 = swift_beginAccess();
  v13 = *v11;
  v14 = v11[1];
  v67 = v13;
  v68 = v14;
  sub_27589F2D4(v12, v15, v16);

  v17 = sub_2759B99C8();
  v19 = v18;
  v21 = v20;
  sub_2759B9858();
  v22 = sub_2759B9988();
  v24 = v23;
  v26 = v25;

  sub_27589F328(v17, v19, v21 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v67 = qword_280A239B8;

  v27 = sub_2759B9958();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_27589F328(v22, v24, v26 & 1);

  v67 = v27;
  v68 = v29;
  v69 = v31 & 1;
  v70 = v33;
  v34 = v62;
  sub_2759B9B38();
  sub_27589F328(v27, v29, v31 & 1);

  v35 = (v61 + OBJC_IVAR____TtC14iCloudSettings7Feature_subtitle);
  swift_beginAccess();
  v36 = v35[1];
  v67 = *v35;
  v68 = v36;

  v37 = sub_2759B99C8();
  v39 = v38;
  LOBYTE(v29) = v40;
  sub_2759B9848();
  v41 = sub_2759B9988();
  v43 = v42;
  v45 = v44;

  sub_27589F328(v37, v39, v29 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v67 = qword_280A239C0;

  v46 = sub_2759B9958();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_27589F328(v41, v43, v45 & 1);

  v67 = v46;
  v68 = v48;
  v53 = v50 & 1;
  v69 = v50 & 1;
  v70 = v52;
  v54 = v63;
  sub_2759B9B38();
  sub_27589F328(v46, v48, v53);

  v55 = v64;
  sub_27586FBC8(v34, v64, &qword_280A0F600, &qword_2759C4210);
  v56 = v66;
  sub_27586FBC8(v54, v66, &qword_280A0F600, &qword_2759C4210);
  v57 = v65;
  sub_27586FBC8(v55, v65, &qword_280A0F600, &qword_2759C4210);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F750, &qword_2759C43A8);
  sub_27586FBC8(v56, v57 + *(v58 + 48), &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v54, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v34, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v56, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v55, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_2758EFFE0@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_2759B9418();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10548, &qword_2759C6F30);
  sub_2758EF21C(v4, a2 + *(v5 + 44));
  LOBYTE(v4) = sub_2759B9828();
  sub_2759B8D78();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10550, &qword_2759C6F38);
  v15 = a2 + *(result + 36);
  *v15 = v4;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t objectdestroyTm_4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2758F012C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10530;
  if (!qword_280A10530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10530);
  }

  return result;
}

unint64_t sub_2758F0190()
{
  result = qword_280A10538;
  if (!qword_280A10538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10540, &qword_2759C6ED8);
    sub_27589B02C(&qword_280A104B0, &qword_280A104A8, &qword_2759C6DE8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10538);
  }

  return result;
}

uint64_t sub_2758F0268@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FD08, &qword_2759C56A0);
  v17[0] = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v2 = v17 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A105E0, &qword_2759C6FA0);
  MEMORY[0x28223BE20](v3);
  v5 = v17 - v4;
  v6 = sub_2759B9CC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A105A8, &unk_2759C6F80);
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  if (sub_2759B9088())
  {
    (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
    v13 = sub_2759B9D28();
    (*(v7 + 8))(v9, v6);
    v19 = v13;
    sub_2759B9B38();

    sub_27586FBC8(v12, v5, &qword_280A105A8, &unk_2759C6F80);
    swift_storeEnumTagMultiPayload();
    sub_2758F0704();
    sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0, MEMORY[0x277CDD7F8]);
    sub_2759B95E8();

    return sub_27586BF04(v12, &qword_280A105A8, &unk_2759C6F80);
  }

  else
  {
    sub_2759B8E88();
    v15 = v17[0];
    v16 = v18;
    (*(v17[0] + 16))(v5, v2, v18);
    swift_storeEnumTagMultiPayload();
    sub_2758F0704();
    sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0, MEMORY[0x277CDD7F8]);
    sub_2759B95E8();
    return (*(v15 + 8))(v2, v16);
  }
}

unint64_t sub_2758F064C()
{
  result = qword_280A10598;
  if (!qword_280A10598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10590, &qword_2759C6F78);
    sub_2758F0704();
    sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10598);
  }

  return result;
}

unint64_t sub_2758F0704()
{
  result = qword_280A105A0;
  if (!qword_280A105A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A105A8, &unk_2759C6F80);
    sub_2758F07C0(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A105A0);
  }

  return result;
}

uint64_t sub_2758F07C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2758F0808()
{
  result = qword_280A105B0;
  if (!qword_280A105B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10560, &qword_2759C6F48);
    sub_27589B02C(&qword_280A105B8, &qword_280A10558, &qword_2759C6F40, MEMORY[0x277CDD638]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A105B0);
  }

  return result;
}

uint64_t sub_2758F08C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2758F07C0(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2758F0974()
{
  result = qword_280A105C8;
  if (!qword_280A105C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10578, &qword_2759C6F60);
    sub_27589B02C(&qword_280A0FF90, &qword_280A0FF88, qword_2759C5C20, MEMORY[0x277D7EA70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A105C8);
  }

  return result;
}

id sub_2758F0A2C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  v3 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:24.0 scale:{24.0, v2}];
  v4 = objc_opt_self();
  v5 = [v4 currentTraitCollection];
  v6 = [v5 layoutDirection];

  if (v6 == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v3 setLanguageDirection_];
  v8 = [v4 currentTraitCollection];
  v9 = [v8 accessibilityContrast];

  [v3 setContrast_];
  [v3 setDrawBorder_];
  return v3;
}

id sub_2758F0B74(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  iCloudPlusFeature.init(rawValue:)(v4);
  if (v9 > 5u && v9 != 6)
  {
    return 0;
  }

  v6 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v7 = sub_2759BA258();

  v8 = [v6 initWithType_];

  return v8;
}

unint64_t sub_2758F0CDC()
{
  result = qword_280A105E8;
  if (!qword_280A105E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10550, &qword_2759C6F38);
    sub_27589B02C(&qword_280A105F0, &qword_280A105F8, qword_2759C6FA8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A105E8);
  }

  return result;
}

uint64_t sub_2758F0DF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2758F0E18, 0, 0);
}

uint64_t sub_2758F0E18()
{
  v0[4] = *(v0[3] + OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_urlHelper);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2758F0ECC;
  v2 = v0[2];

  return sub_2758B5DEC(v2);
}

uint64_t sub_2758F0ECC()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2758F1008, 0, 0);
}

uint64_t sub_2758F1008()
{

  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238E8);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_275819000, v4, v5, "Unable to add attribution to AMS Flow %@", v8, 0xCu);
    sub_275875554(v9);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2758F11A4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2758F11C4, 0, 0);
}

uint64_t sub_2758F11C4()
{
  v1 = v0[3];
  v2 = *(v0[4] + OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_urlHelper);
  v0[5] = v2;

  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  type metadata accessor for AMSParserURLType(0);
  *v4 = v0;
  v4[1] = sub_2758F12D8;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x80000002759E0CE0, sub_2758F1AA0, v3, v5);
}

uint64_t sub_2758F12D8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2758F1464;
  }

  else
  {

    v2 = sub_2758F13F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2758F13F4()
{

  v1 = v0[2];
  v2 = v0[8] != 0;
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_2758F1464()
{

  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238E8);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_275819000, v4, v5, "Unable to parse url to determine flowController type. %@", v8, 0xCu);
    sub_275875554(v9);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 64) != 0;
  v13 = *(v0 + 8);

  return v13(0, v12);
}

uint64_t sub_2758F1618(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2 == 2)
  {
    v5 = type metadata accessor for DynamicUIFlowController();
    v6 = &off_288483EF0;
  }

  else
  {
    if (a2 != 1)
    {
      if (qword_280A0E358 != -1)
      {
        swift_once();
      }

      v23 = sub_2759B89A8();
      __swift_project_value_buffer(v23, qword_280A238E8);
      v24 = sub_2759B8988();
      v25 = sub_2759BA648();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = a2;
        _os_log_impl(&dword_275819000, v24, v25, "Unable to get flow controller presenterType: %ld", v26, 0xCu);
        MEMORY[0x277C85860](v26, -1, -1);
      }

      return 0;
    }

    v5 = type metadata accessor for WebViewFlowControllerProvider();
    v6 = &off_288485080;
  }

  [objc_allocWithZone(v5) init];
  v7 = v3 + OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_flowControllerProvider;
  *(v3 + OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_flowControllerProvider + 8) = v6;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    v11 = swift_unknownObjectRetain();
    v10(v11, &off_288482248, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v7 + 8);
    v13 = swift_getObjectType();
    v14 = *(v12 + 32);
    v15 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_account);
    v16 = v14(a1, v15, v13, v12);
    swift_unknownObjectRelease();

    if (v16)
    {
      swift_unknownObjectRelease();
      return v16;
    }
  }

  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v18 = sub_2759B89A8();
  __swift_project_value_buffer(v18, qword_280A238E8);
  v19 = sub_2759B8988();
  v20 = sub_2759BA648();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_275819000, v19, v20, "Unable to determine a controller to present AMSFlow.", v21, 2u);
    MEMORY[0x277C85860](v21, -1, -1);
  }

  swift_unknownObjectRelease();
  return 0;
}

id sub_2758F193C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommerceFlowManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2758F1A10(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_flowCompletionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2758F1AA8(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_flowControllerProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_flowCompletionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_amsBag] = a2;
  *&v2[OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_account] = a1;
  type metadata accessor for CommerceFlowHelper();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = objc_allocWithZone(MEMORY[0x277CEE6C8]);
  v7 = a2;
  v8 = a1;
  *(v5 + 24) = [v6 initWithBag_];
  *&v2[OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_urlHelper] = v5;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for CommerceFlowManager();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_2758F1BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10628, &unk_2759C70F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v17 = a1;
  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v10 = v16[1];
  swift_getKeyPath();
  v17 = v10;
  sub_2758F5660(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_8;
  }

  v12 = sub_275883098();

  if (!v12)
  {
    goto LABEL_8;
  }

  if (v12 >> 62)
  {
    v13 = sub_2759BA9E8();
    if (v13 >= 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13 < 1)
  {
LABEL_7:

LABEL_8:
    v14 = 1;
    return (*(v7 + 56))(a3, v14, 1, v6);
  }

LABEL_5:
  MEMORY[0x28223BE20](v13);
  v16[-4] = v12;
  v16[-3] = a1;
  v16[-2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10630, &qword_2759C7128);
  sub_2758F54C4(&qword_280A10638, &qword_280A10630, &qword_2759C7128, sub_2758F2300);
  sub_2759B9F38();

  (*(v7 + 32))(a3, v9, v6);
  v14 = 0;
  return (*(v7 + 56))(a3, v14, 1, v6);
}

uint64_t sub_2758F1E8C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10658, &qword_2759C7138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10648, &qword_2759C7130);
  sub_27589B02C(&qword_280A10660, &qword_280A10658, &qword_2759C7138, MEMORY[0x277D83980]);
  sub_2758F2300();
  sub_2758F5660(&qword_280A10668, type metadata accessor for ManageStorageSpecifier, &protocol conformance descriptor for ManageStorageSpecifier);
  return sub_2759B9EE8();
}

id sub_2758F1FE4@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  type metadata accessor for ManageStorageAppsListViewModel(0);
  v7 = v6;
  sub_2759B9D58();
  sub_2759B9D58();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = v7;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 40) = sub_2758F23E8;
  *(a4 + 48) = v8;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;

  v9 = v7;

  return a2;
}

uint64_t sub_2758F2104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  result = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  v10 = *(*(a1 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_action) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType) - 114;
  v11 = v10 > 0xD;
  v12 = (1 << v10) & 0x20F1;
  if (!v11 && v12 != 0)
  {
    v21 = a2;
    v22 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
    sub_2759B9D68();
    v14 = v20;
    v15 = *&v20[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController];

    sub_2759BA4D8();
    v16 = sub_2759BA518();
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v17;
    *(v18 + 40) = 15;
    sub_275931D20(0, 0, v9, &unk_2759C3740, v18);

    return sub_27586BF04(v9, &unk_280A0E510, &qword_2759C33C0);
  }

  return result;
}

unint64_t sub_2758F2300()
{
  result = qword_280A10640;
  if (!qword_280A10640)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10648, &qword_2759C7130);
    sub_2758F238C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10640);
  }

  return result;
}

unint64_t sub_2758F238C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10650;
  if (!qword_280A10650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10650);
  }

  return result;
}

uint64_t sub_2758F23F4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10688, &qword_2759C7200);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10690, &qword_2759C7208);
  MEMORY[0x28223BE20](v45);
  v7 = &v32 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10698, &unk_2759C7210);
  MEMORY[0x28223BE20](v44);
  v10 = &v32 - v9;
  v11 = *(*(*(v1 + 16) + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_action) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation);
  if (v11)
  {
    v43 = v8;
    v39 = v10;
    v12 = v11;
    sub_2758F2990(v7);
    v42 = v5;
    v13 = *&v12[OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_title + 8];
    v47 = *&v12[OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_title];
    v48 = v13;
    v46 = *(v1 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
    v14 = sub_2759B9D88();
    v38 = &v32;
    v35 = v50;
    v36 = v51;
    v15 = MEMORY[0x28223BE20](v14);
    v41 = v12;
    MEMORY[0x28223BE20](v15);
    v40 = a1;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F288, &unk_2759C3730);
    v16 = sub_2758F526C();
    v19 = sub_27589F2D4(v16, v17, v18);
    v37 = v3;
    v34 = v19;
    v31 = sub_2758F54C4(&qword_280A0F298, &qword_280A0F288, &unk_2759C3730, sub_27589F670);
    v20 = v45;
    v21 = v39;
    sub_2759B9B58();

    sub_27586BF04(v7, &qword_280A10690, &qword_2759C7208);
    v22 = v43;
    v23 = v44;
    (*(v43 + 16))(v42, v21, v44);
    swift_storeEnumTagMultiPayload();
    v49 = v20;
    v50 = MEMORY[0x277D837D0];
    v51 = v33;
    v52 = MEMORY[0x277CE0BD8];
    v53 = v16;
    v54 = v34;
    v55 = v31;
    v56 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_2759B95E8();

    return (*(v22 + 8))(v21, v23);
  }

  else
  {
    sub_2758F2990(v7);
    sub_27586FBC8(v7, v5, &qword_280A10690, &qword_2759C7208);
    swift_storeEnumTagMultiPayload();
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F288, &unk_2759C3730);
    v26 = sub_2758F526C();
    v29 = sub_27589F2D4(v26, v27, v28);
    v30 = sub_2758F54C4(&qword_280A0F298, &qword_280A0F288, &unk_2759C3730, sub_27589F670);
    v49 = v45;
    v50 = MEMORY[0x277D837D0];
    v51 = v25;
    v52 = MEMORY[0x277CE0BD8];
    v53 = v26;
    v54 = v29;
    v55 = v30;
    v56 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_2759B95E8();
    return sub_27586BF04(v7, &qword_280A10690, &qword_2759C7208);
  }
}

uint64_t sub_2758F2990@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A106D0, &qword_2759C7230);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - v3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A106C0, &qword_2759C7228);
  MEMORY[0x28223BE20](v27);
  v6 = &v23 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A106F0, &qword_2759C7260);
  MEMORY[0x28223BE20](v25);
  v8 = &v23 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A106B0, &qword_2759C7220);
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v23 - v10;
  v12 = *(v1 + 16);
  v13 = *v1;
  if (*(*&v12[OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_action] + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_isDefault) == 1)
  {
    v31 = *(v1 + 8);
    v30 = *(v1 + 24);
    v14 = swift_allocObject();
    v24 = &v23;
    v15 = *(v1 + 16);
    *(v14 + 16) = *v1;
    *(v14 + 32) = v15;
    *(v14 + 48) = *(v1 + 32);
    MEMORY[0x28223BE20](v14);
    *(&v23 - 2) = v1;
    v16 = v13;
    sub_27586FBC8(&v31, v29, &qword_280A106E8, &unk_2759C7250);
    v17 = v12;
    sub_27586FBC8(&v30, v29, &qword_280A0F280, &qword_2759C3728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10708, &qword_2759C7270);
    sub_27589B02C(&qword_280A10710, &qword_280A10708, &qword_2759C7270, MEMORY[0x277CE1138]);
    sub_2759B9DB8();
    v18 = v26;
    (*(v9 + 16))(v8, v11, v26);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A106A8, &qword_280A106B0, &qword_2759C7220, MEMORY[0x277CDF028]);
    sub_2758F5324();
    sub_2759B95E8();
    return (*(v9 + 8))(v11, v18);
  }

  else
  {
    v31 = *(v1 + 8);
    v30 = *(v1 + 24);
    v20 = swift_allocObject();
    v24 = &v23;
    v21 = *(v1 + 16);
    *(v20 + 16) = *v1;
    *(v20 + 32) = v21;
    *(v20 + 48) = *(v1 + 32);
    MEMORY[0x28223BE20](v20);
    *(&v23 - 2) = v1;
    v23 = v12;
    v22 = v13;
    sub_27586FBC8(&v31, v29, &qword_280A106E8, &unk_2759C7250);
    sub_27586FBC8(&v30, v29, &qword_280A0F280, &qword_2759C3728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A106F8, &qword_2759C7268);
    sub_27589B02C(&qword_280A10700, &qword_280A106F8, &qword_2759C7268, MEMORY[0x277CE1138]);
    sub_2759B9DB8();
    *&v4[*(v2 + 36)] = sub_2759B9668();
    sub_2758F53E0();
    sub_2759B9B38();
    sub_27586BF04(v4, &qword_280A106D0, &qword_2759C7230);
    sub_27586FBC8(v6, v8, &qword_280A106C0, &qword_2759C7228);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A106A8, &qword_280A106B0, &qword_2759C7220, MEMORY[0x277CDF028]);
    sub_2758F5324();
    sub_2759B95E8();
    return sub_27586BF04(v6, &qword_280A106C0, &qword_2759C7228);
  }
}

uint64_t sub_2758F2F78(uint64_t a1, uint64_t a2)
{
  v14 = *(a1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_actions);
  v3 = *a2;
  v16 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15 = *(a2 + 24);
  v5 = swift_allocObject();
  v6 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a2 + 32);

  v7 = v3;
  sub_27586FBC8(&v16, v13, &qword_280A106E8, &unk_2759C7250);
  v8 = v4;
  sub_27586FBC8(&v15, v13, &qword_280A0F280, &qword_2759C3728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F210, &qword_2759C3638);
  v9 = sub_27589B02C(&qword_280A0F218, &qword_280A0F210, &qword_2759C3638, MEMORY[0x277D83980]);
  sub_27589F670(v9, v10, v11);
  sub_2758F5660(&qword_280A0F228, type metadata accessor for ManageStorageAction, &protocol conformance descriptor for ManageStorageAction);
  return sub_2759B9EE8();
}

void *sub_2758F3118@<X0>(void **a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v12 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v6 = (*(a2 + 2) + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_identifier);
  v8 = *v6;
  v7 = v6[1];
  v9 = v5;

  result = sub_2759B9D58();
  *a3 = v11;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
  *(a3 + 32) = v12;
  *(a3 + 40) = *(&v12 + 1);
  return result;
}

void sub_2758F31DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = *(v0 + 2);
  v5 = *(v4 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_action);
  if (*(v5 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation))
  {
    v20 = *(v0 + 24);
    LOBYTE(v19) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
    sub_2759B9D78();
    v20 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
    sub_2759B9D68();
    v6 = v19;
    v7 = *&v19[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController];

    v9 = *(v5 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString);
    v8 = *(v5 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString + 8);
    swift_bridgeObjectRetain_n();
    sub_2759BA4D8();
    v10 = sub_2759BA518();
    (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v11;
    *(v12 + 40) = xmmword_2759C3450;
    *(v12 + 56) = 3850;
    *(v12 + 58) = 0;
    *(v12 + 64) = 0;
    *(v12 + 72) = 0;
    *(v12 + 80) = v9;
    *(v12 + 88) = v8;
    *(v12 + 96) = 8;

    sub_275931D20(0, 0, v3, &unk_2759C4530, v12);
    swift_bridgeObjectRelease_n();

    sub_27586BF04(v3, &unk_280A0E510, &qword_2759C33C0);
  }

  else
  {
    v20 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
    sub_2759B9D68();
    v13 = v19;
    v14 = sub_2758A1CD0();
    LOBYTE(v20) = 15;
    v15 = *(v4 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_identifier);
    v16 = *(v4 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_identifier + 8);

    v17._countAndFlagsBits = v15;
    v17._object = v16;
    iCloudPlusFeature.init(rawValue:)(v17);
    ManageStorageAppsListViewModel.performAction(_:componentContext:featureContext:)(v14, &v20, &v19);
  }
}

double sub_2758F34C8@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10720, &qword_2759C7280);
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10728, &qword_2759C7288);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - v11;
  v13 = *(a1 + 2);
  v14 = *(v13 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_title + 8);
  *&v45 = *(v13 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_title);
  *(&v45 + 1) = v14;
  sub_27589F2D4(v10, v15, v16);

  v17 = sub_2759B99C8();
  v19 = v18;
  v41 = v20;
  v42 = v21;
  v45 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v22 = v44;
  swift_getKeyPath();
  *&v45 = v22;
  sub_2758F5660(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v39 = v4;
    v24 = v13 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_identifier;
    v25 = *(v13 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_identifier);
    v26 = *(v24 + 8);
    swift_getKeyPath();
    *&v45 = Strong;
    sub_2758F5660(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
    sub_2759B8638();

    v27 = sub_2759AA368(v25, v26, *&Strong[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__loadingiCloudHomeSubview]);

    if (v27)
    {
      v28 = v40;
      sub_2759B8E88();
      v29 = sub_2759B9808();
      sub_2759B8D78();
      v4 = v39;
      v30 = v28 + *(v39 + 36);
      *v30 = v29;
      *(v30 + 8) = v31;
      *(v30 + 16) = v32;
      *(v30 + 24) = v33;
      *(v30 + 32) = v34;
      *(v30 + 40) = 0;
      sub_2758F56A8(v28, v12);
      v35 = 0;
    }

    else
    {
      v35 = 1;
      v4 = v39;
    }
  }

  else
  {
    v35 = 1;
  }

  (*(v43 + 56))(v12, v35, 1, v4);
  sub_27586FBC8(v12, v9, &qword_280A10728, &qword_2759C7288);
  *a2 = v17;
  *(a2 + 8) = v19;
  v36 = v41 & 1;
  *(a2 + 16) = v41 & 1;
  *(a2 + 24) = v42;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10730, &unk_2759C72B8);
  sub_27586FBC8(v9, a2 + *(v37 + 64), &qword_280A10728, &qword_2759C7288);
  sub_27589F3E4(v17, v19, v36);

  sub_27586BF04(v12, &qword_280A10728, &qword_2759C7288);
  sub_27586BF04(v9, &qword_280A10728, &qword_2759C7288);
  sub_27589F328(v17, v19, v36);

  return result;
}

uint64_t sub_2758F38F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_2759B9418();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return a4(a1);
}

void sub_2758F3960(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10740, &qword_2759C72D0);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v64 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10748, &qword_2759C72D8);
  MEMORY[0x28223BE20](v72);
  v74 = (&v64 - v6);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10720, &qword_2759C7280);
  MEMORY[0x28223BE20](v73);
  v64 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10750, &qword_2759C72E0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v78 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v79 = &v64 - v12;
  v13 = *(a1 + 16);
  v14 = *(v13 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_title + 8);
  *&v81 = *(v13 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_title);
  *(&v81 + 1) = v14;
  sub_27589F2D4(v11, v15, v16);

  v17 = sub_2759B99C8();
  v19 = v18;
  v21 = v20;
  LODWORD(v81) = sub_2759B9668();
  v22 = sub_2759B9958();
  v75 = v23;
  v76 = v22;
  v68 = v24;
  v77 = v25;
  sub_27589F328(v17, v19, v21 & 1);

  v26 = *(v13 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_subTitle + 8);
  *&v81 = *(v13 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_subTitle);
  *(&v81 + 1) = v26;

  v27 = sub_2759B99C8();
  v29 = v28;
  LOBYTE(v19) = v30;
  LODWORD(v81) = sub_2759B9688();
  v31 = sub_2759B9958();
  v69 = v32;
  v70 = v31;
  v67 = v33;
  v71 = v34;
  sub_27589F328(v27, v29, v19 & 1);

  v81 = *v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v35 = v80;
  swift_getKeyPath();
  *&v81 = v35;
  sub_2758F5660(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong && (v37 = *(v13 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_identifier), v38 = *(v13 + OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_identifier + 8), swift_getKeyPath(), *&v81 = Strong, sub_2758F5660(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel), sub_2759B8638(), , v39 = sub_2759AA368(v37, v38, *&Strong[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__loadingiCloudHomeSubview]), Strong, v39))
  {
    v40 = v64;
    sub_2759B8E88();
    v41 = sub_2759B9808();
    sub_2759B8D78();
    v42 = v74;
    v43 = v40 + *(v73 + 36);
    *v43 = v41;
    *(v43 + 8) = v44;
    *(v43 + 16) = v45;
    *(v43 + 24) = v46;
    *(v43 + 32) = v47;
    *(v43 + 40) = 0;
    sub_27586FBC8(v40, v42, &qword_280A10720, &qword_2759C7280);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10758, &unk_2759C7318);
    sub_2758F5718();
    sub_2758F57D0();
    v48 = v79;
    sub_2759B95E8();
    sub_27586BF04(v40, &qword_280A10720, &qword_2759C7280);
  }

  else
  {
    v49 = sub_2759B9CB8();
    [objc_opt_self() systemFontSize];
    sub_2759B9888();
    v50 = sub_2759B9878();
    v51 = v65;
    (*(*(v50 - 8) + 56))(v65, 1, 1, v50);
    v52 = sub_2759B9898();
    sub_27586BF04(v51, &qword_280A10740, &qword_2759C72D0);
    KeyPath = swift_getKeyPath();
    v54 = sub_2759B9678();
    v55 = v74;
    *v74 = v49;
    v55[1] = KeyPath;
    v55[2] = v52;
    *(v55 + 6) = v54;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10758, &unk_2759C7318);
    sub_2758F5718();
    sub_2758F57D0();
    v48 = v79;
    sub_2759B95E8();
  }

  v56 = v68 & 1;
  LOBYTE(v81) = v68 & 1;
  v57 = v78;
  sub_27586FBC8(v48, v78, &qword_280A10750, &qword_2759C72E0);
  v59 = v75;
  v58 = v76;
  *a2 = v76;
  *(a2 + 8) = v59;
  *(a2 + 16) = v56;
  *(a2 + 24) = v77;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v61 = v69;
  v60 = v70;
  *(a2 + 48) = v70;
  *(a2 + 56) = v61;
  v62 = v67 & 1;
  *(a2 + 64) = v67 & 1;
  *(a2 + 72) = v71;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10770, &qword_2759C7328);
  sub_27586FBC8(v57, a2 + *(v63 + 80), &qword_280A10750, &qword_2759C72E0);
  sub_27589F3E4(v58, v59, v56);

  sub_27589F3E4(v60, v61, v62);

  sub_27586BF04(v79, &qword_280A10750, &qword_2759C72E0);
  sub_27586BF04(v57, &qword_280A10750, &qword_2759C72E0);
  sub_27589F328(v60, v61, v62);

  sub_27589F328(v58, v59, v81);
}

uint64_t sub_2758F4130@<X0>(uint64_t a1@<X8>)
{
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10788, &qword_2759C73F0);
  MEMORY[0x28223BE20](v76);
  v79 = &v65 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10790, &qword_2759C73F8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v65 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10798, &qword_2759C7400);
  v10 = *(v78 - 8);
  v11 = MEMORY[0x28223BE20](v78);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v65 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A107A0, &qword_2759C7408);
  MEMORY[0x28223BE20](v77);
  v18 = *(v1 + 8);
  v19 = *&v18[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation];
  v80 = a1;
  if (v19)
  {
    v20 = v18[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_isDestructive] == 1;
    v75 = v10;
    v74 = v17;
    v73 = &v65 - v16;
    if (v20)
    {
      v21 = v15;
      v22 = v19;
      sub_2759B8D48();
    }

    else
    {
      v21 = v15;
      if (*&v18[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType] != 101)
      {
        v26 = sub_2759B8D68();
        (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
        v27 = v19;
        goto LABEL_14;
      }

      v23 = v19;
      sub_2759B8D58();
    }

    v24 = sub_2759B8D68();
    (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
LABEL_14:
    v28 = v19;
    v29 = *v1;
    v30 = *(v1 + 16);
    v92 = *(v1 + 32);
    v93 = v30;
    v31 = swift_allocObject();
    v32 = *(v1 + 16);
    v31[1] = *v1;
    v31[2] = v32;
    v31[3] = *(v1 + 32);
    MEMORY[0x28223BE20](v31);
    v33 = v29;
    v34 = v18;
    sub_2758F5AD0(&v93, &v84);
    sub_27586FBC8(&v92, &v84, &qword_280A0F280, &qword_2759C3728);
    v71 = v21;
    sub_2759B9DA8();
    v35 = *&v28[OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_title + 8];
    v82 = *&v28[OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_title];
    v83 = v35;
    v81 = v92;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
    v36 = sub_2759B9D88();
    v70 = &v65;
    v68 = v85;
    v69 = v86;
    v37 = MEMORY[0x28223BE20](v36);
    MEMORY[0x28223BE20](v37);
    v72 = v28;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F288, &unk_2759C3730);
    v38 = sub_27589B02C(&qword_280A107A8, &qword_280A10798, &qword_2759C7400, MEMORY[0x277CDF028]);
    v67 = sub_27589F2D4(v38, v39, v40);
    v64 = sub_2758F54C4(&qword_280A0F298, &qword_280A0F288, &unk_2759C3730, sub_27589F670);
    v41 = v78;
    v42 = v73;
    v43 = v71;
    sub_2759B9B58();

    (*(v75 + 8))(v43, v41);
    v44 = v74;
    v45 = v77;
    (*(v74 + 16))(v79, v42, v77);
    swift_storeEnumTagMultiPayload();
    v84 = v41;
    v85 = MEMORY[0x277D837D0];
    v86 = v66;
    v87 = MEMORY[0x277CE0BD8];
    v88 = v38;
    v89 = v67;
    v90 = v64;
    v91 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_2759B95E8();

    return (*(v44 + 8))(v42, v45);
  }

  if (v18[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_isDestructive] == 1)
  {
    sub_2759B8D48();
  }

  else
  {
    if (*&v18[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType] != 101)
    {
      v47 = sub_2759B8D68();
      (*(*(v47 - 8) + 56))(v7, 1, 1, v47);
      goto LABEL_16;
    }

    sub_2759B8D58();
  }

  v25 = sub_2759B8D68();
  (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
LABEL_16:
  v48 = *v1;
  v49 = *(v1 + 16);
  v92 = *(v1 + 32);
  v93 = v49;
  v50 = swift_allocObject();
  v51 = *(v1 + 16);
  v50[1] = *v1;
  v50[2] = v51;
  v50[3] = *(v1 + 32);
  MEMORY[0x28223BE20](v50);
  v52 = v18;
  v53 = v48;
  sub_2758F5AD0(&v93, &v84);
  sub_27586FBC8(&v92, &v84, &qword_280A0F280, &qword_2759C3728);
  v54 = MEMORY[0x277CE0BD8];
  sub_2759B9DA8();
  v55 = *(v10 + 16);
  v56 = v10;
  v57 = v78;
  v55(v79, v13, v78);
  swift_storeEnumTagMultiPayload();
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F288, &unk_2759C3730);
  v59 = sub_27589B02C(&qword_280A107A8, &qword_280A10798, &qword_2759C7400, MEMORY[0x277CDF028]);
  v62 = sub_27589F2D4(v59, v60, v61);
  v63 = sub_2758F54C4(&qword_280A0F298, &qword_280A0F288, &unk_2759C3730, sub_27589F670);
  v84 = v57;
  v85 = MEMORY[0x277D837D0];
  v86 = v58;
  v87 = v54;
  v88 = v59;
  v89 = v62;
  v90 = v63;
  v91 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_2759B95E8();
  return (*(v56 + 8))(v13, v57);
}

void sub_2758F4B48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = *(v0 + 8);
  if (*(v5 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation))
  {
    v15 = *(v0 + 32);
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
    sub_2759B9D78();
    v7 = *(v5 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString);
    v6 = *(v5 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString + 8);
    swift_bridgeObjectRetain_n();
    sub_2759BA4D8();
    v8 = sub_2759BA518();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v9;
    *(v10 + 40) = xmmword_2759C3450;
    *(v10 + 56) = 3850;
    *(v10 + 58) = 0;
    *(v10 + 64) = 0;
    *(v10 + 72) = 0;
    *(v10 + 80) = v7;
    *(v10 + 88) = v6;
    *(v10 + 96) = 8;

    sub_275931D20(0, 0, v4, &unk_2759C7410, v10);
    swift_bridgeObjectRelease_n();

    sub_27586BF04(v4, &unk_280A0E510, &qword_2759C33C0);
  }

  else
  {
    v11 = sub_2758A1CD0();
    LOBYTE(v15) = 15;
    v12 = *(v0 + 16);
    v13 = *(v1 + 24);

    v14._countAndFlagsBits = v12;
    v14._object = v13;
    iCloudPlusFeature.init(rawValue:)(v14);
    ManageStorageAppsListViewModel.performAction(_:componentContext:featureContext:)(v11, &v15, &v16);
  }
}

uint64_t sub_2758F4DB4(uint64_t a1, uint64_t a2)
{
  v15 = *(a1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_actions);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v16 = *(a2 + 32);
  v17 = v5;
  v6 = swift_allocObject();
  v7 = *(a2 + 16);
  v6[1] = *a2;
  v6[2] = v7;
  v6[3] = *(a2 + 32);

  v8 = v3;
  v9 = v4;
  sub_2758F5AD0(&v17, v14);
  sub_27586FBC8(&v16, v14, &qword_280A0F280, &qword_2759C3728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F210, &qword_2759C3638);
  v10 = sub_27589B02C(&qword_280A0F218, &qword_280A0F210, &qword_2759C3638, MEMORY[0x277D83980]);
  sub_27589F670(v10, v11, v12);
  sub_2758F5660(&qword_280A0F228, type metadata accessor for ManageStorageAction, &protocol conformance descriptor for ManageStorageAction);
  return sub_2759B9EE8();
}

void *sub_2758F4F3C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *a2;
  v8 = v4;

  result = sub_2759B9D58();
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = v6;
  *(a3 + 24) = v5;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  return result;
}

uint64_t sub_2758F4FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_27589F2D4(a1, a2, a3);

  result = sub_2759B99C8();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_2758F5044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_27589F2D4(a1, a2, a3);

  result = sub_2759B99C8();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

unint64_t sub_2758F5110()
{
  result = qword_280A10670;
  if (!qword_280A10670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10678, &qword_2759C71A8);
    sub_2758F5194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10670);
  }

  return result;
}

unint64_t sub_2758F5194()
{
  result = qword_280A10680;
  if (!qword_280A10680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10628, &unk_2759C70F0);
    sub_2758F54C4(&qword_280A10638, &qword_280A10630, &qword_2759C7128, sub_2758F2300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10680);
  }

  return result;
}

unint64_t sub_2758F526C()
{
  result = qword_280A106A0;
  if (!qword_280A106A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10690, &qword_2759C7208);
    sub_27589B02C(&qword_280A106A8, &qword_280A106B0, &qword_2759C7220, MEMORY[0x277CDF028]);
    sub_2758F5324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A106A0);
  }

  return result;
}

unint64_t sub_2758F5324()
{
  result = qword_280A106B8;
  if (!qword_280A106B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A106C0, &qword_2759C7228);
    sub_2758F53E0();
    sub_2758F5660(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A106B8);
  }

  return result;
}

unint64_t sub_2758F53E0()
{
  result = qword_280A106C8;
  if (!qword_280A106C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A106D0, &qword_2759C7230);
    sub_27589B02C(&qword_280A106D8, &qword_280A106E0, &qword_2759C7238, MEMORY[0x277CDF028]);
    sub_27589B02C(&qword_280A0F638, &qword_280A0F640, &unk_2759C7240, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A106C8);
  }

  return result;
}

uint64_t sub_2758F54C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

uint64_t objectdestroy_19Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2758F5660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2758F56A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10720, &qword_2759C7280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2758F5718()
{
  result = qword_280A10760;
  if (!qword_280A10760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10720, &qword_2759C7280);
    sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10760);
  }

  return result;
}

unint64_t sub_2758F57D0()
{
  result = qword_280A10768;
  if (!qword_280A10768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10758, &unk_2759C7318);
    sub_27589F1B4();
    sub_27589B02C(&qword_280A0F638, &qword_280A0F640, &unk_2759C7240, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10768);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2758F589C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2758F58E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2758F5940()
{
  result = qword_280A10778;
  if (!qword_280A10778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10780, &qword_2759C7398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10690, &qword_2759C7208);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F288, &unk_2759C3730);
    v1 = sub_2758F526C();
    sub_27589F2D4(v1, v2, v3);
    sub_2758F54C4(&qword_280A0F298, &qword_280A0F288, &unk_2759C3730, sub_27589F670);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10778);
  }

  return result;
}

uint64_t objectdestroy_47Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_2758F5BA8()
{
  result = qword_280A107B0;
  if (!qword_280A107B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A107B8, &qword_2759C7418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10798, &qword_2759C7400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F288, &unk_2759C3730);
    v1 = sub_27589B02C(&qword_280A107A8, &qword_280A10798, &qword_2759C7400, MEMORY[0x277CDF028]);
    sub_27589F2D4(v1, v2, v3);
    sub_2758F54C4(&qword_280A0F298, &qword_280A0F288, &unk_2759C3730, sub_27589F670);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A107B0);
  }

  return result;
}

uint64_t sub_2758F5D34(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  v24 = *(a1 + 16);
  sub_275950A30(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_2759BA838();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v13 = *(v25 + 16);
    v12 = *(v25 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_275950A30((v12 > 1), v13 + 1, 1);
      v6 = v24;
      v11 = v22;
      result = v23;
    }

    *(v25 + 16) = v13 + 1;
    v14 = v25 + 16 * v13;
    *(v14 + 32) = 0xD000000000000013;
    *(v14 + 40) = 0x80000002759DD0E0;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_2758F659C(result, v11, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_2758F659C(result, v11, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2758F5F6C()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_2758F5FE0(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

void sub_2758F6034(BOOL *a2@<X8>)
{
  v3 = sub_2759BAA48();

  *a2 = v3 != 0;
}

void sub_2758F60A8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = a2;
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a2 + 64);
  v11 = *(a1 + 16);

  v12 = 0;
  if (v11)
  {
    v13 = 0;
    v38 = v5;
    v39 = a1 + 32;
    v14 = (63 - v8) >> 6;
    v37 = a1;
    while (1)
    {
      if (v13 >= v11)
      {
        goto LABEL_26;
      }

      v15 = (v39 + 16 * v13);
      v17 = *v15;
      v16 = v15[1];
      v18 = v12;
      if (!v10)
      {
        while (1)
        {
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v19 >= v14)
          {
            goto LABEL_22;
          }

          v10 = *(v7 + 8 * v19);
          ++v18;
          if (v10)
          {
            v41 = a3;
            v12 = v19;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        sub_2759BAB38();
        __break(1u);
        goto LABEL_30;
      }

      v41 = a3;
LABEL_13:
      v40 = v12;
      v20 = *(*(v5 + 56) + (__clz(__rbit64(v10)) | (v12 << 6)));
      v21 = *a4;

      v23 = sub_27586F8A0(v17, v16);
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_27;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((v41 & 1) == 0)
        {
          sub_2759077C4();
        }
      }

      else
      {
        sub_275905B1C(v26, v41 & 1);
        v28 = sub_27586F8A0(v17, v16);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_29;
        }

        v23 = v28;
      }

      v10 &= v10 - 1;
      if (v27)
      {
        break;
      }

      v30 = *a4;
      *(*a4 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v17;
      v31[1] = v16;
      *(v30[7] + v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_28;
      }

      ++v13;
      v30[2] = v34;
      v5 = v38;
      v11 = *(v37 + 16);
      a3 = 1;
      v12 = v40;
      if (v13 == v11)
      {
        goto LABEL_22;
      }
    }

    v35 = swift_allocError();
    swift_willThrow();

    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_2758F6594(v38);

      return;
    }

LABEL_30:
    sub_2759BA8C8();
    MEMORY[0x277C840E0](0xD00000000000001BLL, 0x80000002759E0D70);
    sub_2759BA9C8();
    MEMORY[0x277C840E0](39, 0xE100000000000000);
    sub_2759BA9D8();
    __break(1u);
  }

  else
  {
LABEL_22:

    sub_2758F6594(v5);
  }
}

uint64_t sub_2758F649C()
{
  v0 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0;
  sub_275906C08(1, isUniquelyReferenced_nonNull_native);
  v2 = v0;
  v3 = sub_2758F5D34(v0);
  v4 = v3;
  if (*(v0 + 16) >= *(v3 + 16))
  {
    v5 = *(v3 + 16);
  }

  else
  {
    v5 = *(v0 + 16);
  }

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A107C0, qword_2759C7420);
    v0 = sub_2759BAA28();
  }

  v7 = v0;

  sub_2758F60A8(v4, v2, 1, &v7);

  return v7;
}

double sub_2758F659C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_2758F65BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A107C8;
  if (!qword_280A107C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A107C8);
  }

  return result;
}

uint64_t sub_2758F6610(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2758F6630, 0, 0);
}

uint64_t sub_2758F6630()
{
  v0[4] = objc_opt_self();
  v0[5] = sub_2759BA4C8();
  v0[6] = sub_2759BA4B8();
  v2 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758F66D8, v2, v1);
}

uint64_t sub_2758F66D8()
{
  v1 = *(v0 + 32);

  *(v0 + 56) = [v1 mainScreen];

  return MEMORY[0x2822009F8](sub_2758F6760, 0, 0);
}

uint64_t sub_2758F6760(uint64_t a1)
{
  *(v1 + 64) = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758F67EC, v3, v2);
}

uint64_t sub_2758F67EC()
{
  v1 = *(v0 + 56);

  [v1 scale];
  *(v0 + 72) = v2;

  return MEMORY[0x2822009F8](sub_2758F686C, 0, 0);
}

uint64_t sub_2758F686C()
{
  v2 = *(v0 + 72);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v3 = &OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url2x;
  if (v2 != 2)
  {
    v3 = &OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url1x;
  }

  if (v2 >= 3)
  {
    v4 = &OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url3x;
  }

  else
  {
    v4 = v3;
  }

  sub_2758BB4AC(*(v0 + 24) + *v4, *(v0 + 16));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2758F6ABC(const void *a1, void *a2)
{
  v2[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v2[3] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[4] = v5;
  v2[5] = _Block_copy(a1);
  a2;
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_2758F6BC4;

  return sub_2758F6610(v5);
}

uint64_t sub_2758F6BC4()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;

  sub_2758B4BD0(v2, v3);
  v6 = sub_2759B8508();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v3, 1, v6) != 1)
  {
    v9 = *(v1 + 24);
    v8 = sub_2759B84B8();
    (*(v7 + 8))(v9, v6);
  }

  v10 = *(v1 + 40);
  (v10)[2](v10, v8);
  _Block_release(v10);

  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_2758F6DD4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27585A7E4;

  return sub_2758F6ABC(v2, v3);
}

void iCloudHomeView.init(viewModel:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for iCloudHomeView(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10410, &qword_2759C6CD0);
  swift_storeEnumTagMultiPayload();
  v6 = v4[7];
  *(a2 + v6) = 0;
  v7 = (a2 + v4[6]);
  type metadata accessor for iCloudHomeViewModel(0);
  v8 = a1;
  sub_2759B9D58();
  *v7 = v10;
  v7[1] = v11;
  if (sub_27587C10C())
  {
    sub_2759B8878();
    v9 = sub_2759B8868();

    *(a2 + v6) = v9;
  }

  else
  {
  }
}

uint64_t sub_2758F6FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10410, &qword_2759C6CD0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for iCloudHomeView(0);
  sub_27586FBC8(v1 + *(v10 + 20), v9, &qword_280A10410, &qword_2759C6CD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2759B87B8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2759BA658();
    v13 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t iCloudHomeView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for iCloudHomeView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2758ED4E8(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_2758FAC60(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_2758FACC4;
  a1[1] = v7;
  return result;
}

uint64_t sub_2758F72AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v5 = type metadata accessor for iCloudHomeView(0);
  v6 = v5 - 8;
  v86 = *(v5 - 8);
  v103 = *(v86 + 64);
  MEMORY[0x28223BE20](v5);
  v100 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2759B9448();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10808, &qword_2759C75F8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v80 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10810, &qword_2759C7600);
  MEMORY[0x28223BE20](v99);
  v14 = &v80 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10818, &qword_2759C7608);
  MEMORY[0x28223BE20](v85);
  v98 = &v80 - v15;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10820, &qword_2759C7610);
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v80 - v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10828, &qword_2759C7618);
  v92 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v101 = &v80 - v17;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10830, &qword_2759C7620);
  MEMORY[0x28223BE20](v93);
  v88 = &v80 - v18;
  v102 = a2;
  v104 = a2;
  v105 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10838, &qword_2759C7628);
  sub_27589B02C(&qword_280A10840, &qword_280A10838, &qword_2759C7628, MEMORY[0x277CE14C0]);
  sub_2759B9938();
  v19 = (a2 + *(v6 + 32));
  v20 = *v19;
  v95 = v19[1];
  v106 = v20;
  v107 = v95;
  v21 = v20;
  v97 = v20;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v22 = v112;
  v23 = iCloudHomeViewModel.headerCardSubscriptionLabel.getter();
  v25 = v24;

  v106 = v23;
  v107 = v25;
  v26 = sub_27589B02C(&qword_280A10848, &qword_280A10808, &qword_2759C75F8, MEMORY[0x277CDE5A0]);
  sub_27589F2D4(v26, v27, v28);
  sub_2759B9AC8();

  (*(v10 + 8))(v12, v9);
  v29 = v83;
  sub_2759B9438();
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10850, &qword_2759C7630) + 36);
  v31 = v82;
  v32 = v14;
  v33 = v84;
  (*(v82 + 16))(&v14[v30], v29, v84);
  v34 = *(v31 + 56);
  v80 = v32;
  v34(&v32[v30], 0, 1, v33);
  KeyPath = swift_getKeyPath();
  v36 = &v32[*(v99 + 36)];
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F0C0, &unk_2759C3340) + 28);
  (*(v31 + 32))(v36 + v37, v29, v33);
  v34(v36 + v37, 0, 1, v33);
  *v36 = KeyPath;
  v106 = v21;
  v107 = v95;
  sub_2759B9D68();
  v38 = v112;
  swift_getKeyPath();
  v106 = v38;
  v84 = sub_2758FB2D4(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v39 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v40 = *&v38[v39];
  v41 = v40;

  v106 = v40;
  v42 = v102;
  v43 = v100;
  sub_2758ED4E8(v102, v100);
  v44 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v45 = *(v86 + 80);
  v46 = swift_allocObject();
  sub_2758FAC60(v43, v46 + v44);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10858, &qword_2759C7690);
  sub_2758FB02C();
  v86 = sub_2758FB220();
  v47 = v98;
  v48 = v80;
  sub_2759B9B88();

  sub_27586BF04(v48, &qword_280A10810, &qword_2759C7600);
  v49 = v43;
  sub_2758ED4E8(v42, v43);
  v82 = v45;
  v50 = swift_allocObject();
  sub_2758FAC60(v43, v50 + v44);
  v51 = v85;
  v52 = &v47[*(v85 + 36)];
  *v52 = sub_2758FB31C;
  v52[1] = v50;
  v52[2] = 0;
  v52[3] = 0;
  v53 = v95;
  v106 = v97;
  v107 = v95;
  sub_2759B9D68();
  v54 = v111;
  v55 = sub_27587B428();

  v106 = v55;
  sub_2758ED4E8(v42, v49);
  v81 = v44;
  v56 = swift_allocObject();
  sub_2758FAC60(v49, v56 + v44);
  v57 = sub_275861AF8(0, &qword_280A10880, 0x277CCA898);
  v58 = sub_2758FB34C();
  v59 = sub_2758FB440();
  v60 = v87;
  v61 = v51;
  v62 = v98;
  sub_2759B9B88();

  sub_27586BF04(v62, &qword_280A10818, &qword_2759C7608);
  v106 = v97;
  v107 = v53;
  sub_2759B9D68();
  v63 = v111;
  swift_getKeyPath();
  v106 = v63;
  sub_2759B8638();

  v64 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v65 = *&v63[v64];
  v66 = v65;

  v109 = v59;
  v110 = v65;
  v106 = v61;
  v107 = v57;
  v108 = v58;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = v89;
  v69 = v83;
  v70 = v86;
  sub_2759B9B88();

  (*(v90 + 8))(v60, v68);
  v71 = v100;
  sub_2758ED4E8(v102, v100);
  v72 = v81;
  v73 = swift_allocObject();
  sub_2758FAC60(v71, v73 + v72);
  v106 = v68;
  v107 = v69;
  v108 = OpaqueTypeConformance2;
  v109 = v70;
  swift_getOpaqueTypeConformance2();
  v74 = v88;
  v75 = v91;
  v76 = v101;
  sub_2759B9B28();

  (*(v92 + 8))(v76, v75);
  sub_2758ED4E8(v102, v71);
  v77 = swift_allocObject();
  sub_2758FAC60(v71, v77 + v72);
  v78 = (v74 + *(v93 + 36));
  *v78 = 0;
  v78[1] = 0;
  v78[2] = sub_2758FB6D8;
  v78[3] = v77;
  sub_2758FB764();
  sub_2759B9A08();
  return sub_27586BF04(v74, &qword_280A10830, &qword_2759C7620);
}

uint64_t sub_2758F7EF8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v203 = a2;
  v220 = a3;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108A8, &qword_2759C7740);
  v216 = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v200 = &v175 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108B0, &qword_2759C7748);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v219 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v230 = &v175 - v8;
  v199 = type metadata accessor for ADPSection(0);
  MEMORY[0x28223BE20](v199);
  v198 = (&v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108B8, &qword_2759C7750);
  v214 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v197 = &v175 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108C0, &qword_2759C7758);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v218 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v233 = &v175 - v14;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108C8, &qword_2759C7760);
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v183 = &v175 - v15;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108D0, &qword_2759C7768);
  MEMORY[0x28223BE20](v213);
  v196 = &v175 - v16;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108D8, &qword_2759C7770);
  MEMORY[0x28223BE20](v211);
  v212 = &v175 - v17;
  v182 = type metadata accessor for iCloudPlusSection(0);
  MEMORY[0x28223BE20](v182);
  v181 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108E0, &qword_2759C7778);
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v180 = &v175 - v19;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108E8, &qword_2759C7780);
  MEMORY[0x28223BE20](v210);
  v204 = &v175 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108F0, &qword_2759C7788);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v229 = &v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v231 = &v175 - v24;
  v191 = type metadata accessor for BackupSection(0);
  MEMORY[0x28223BE20](v191);
  v190 = (&v175 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108F8, &qword_2759C7790);
  v209 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v189 = &v175 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10900, &qword_2759C7798);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v228 = &v175 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v227 = &v175 - v31;
  v202 = sub_2759B8F58();
  v221 = *(v202 - 8);
  v32 = MEMORY[0x28223BE20](v202);
  v184 = &v175 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v185 = &v175 - v35;
  MEMORY[0x28223BE20](v34);
  v205 = &v175 - v36;
  v187 = type metadata accessor for AppsUsingiCloudSection(0);
  MEMORY[0x28223BE20](v187);
  v188 = (&v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10908, &qword_2759C77A0);
  v207 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v186 = &v175 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10910, &qword_2759C77A8);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v226 = &v175 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v225 = &v175 - v42;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10918, &qword_2759C77B0);
  v43 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v179 = &v175 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10920, &qword_2759C77B8);
  v46 = MEMORY[0x28223BE20](v45 - 8);
  v224 = &v175 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v232 = &v175 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10928, &qword_2759C77C0);
  v50 = MEMORY[0x28223BE20](v49 - 8);
  v223 = &v175 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v53 = &v175 - v52;
  v54 = type metadata accessor for iCloudHomeView(0);
  v55 = &a1[*(v54 + 24)];
  v56 = *(v55 + 1);
  *&v242 = *v55;
  v57 = v242;
  *(&v242 + 1) = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v59 = sub_2759A4DAC(&v242);
  v246 = v243;
  v247 = v244;
  v245 = *(&v242 + 1);
  v60 = v242;
  v239 = v242;
  v240 = v243;
  v241 = v244;
  sub_2758FB950(v59, v61, v62);
  v222 = v53;
  sub_2759B9B38();

  sub_27586BF04(&v245, &qword_280A10938, &qword_2759C77C8);
  sub_27586BF04(&v246, &qword_280A0F280, &qword_2759C3728);
  sub_27586BF04(&v247, &qword_280A0F280, &qword_2759C3728);
  *&v239 = v57;
  *(&v239 + 1) = v56;
  v235 = v56;
  v234 = v58;
  sub_2759B9D68();
  v63 = v237;
  v64 = sub_27587C10C();

  if (v64)
  {
    if (*&a1[*(v54 + 28)])
    {
      v201 = v26;
      *&v239 = v57;
      *(&v239 + 1) = v235;

      sub_2759B9D68();
      v65 = v237;
      v66 = sub_27589A198();

      if (v66)
      {
        *&v239 = v57;
        *(&v239 + 1) = v235;

        v67 = v64;
        sub_2759B9D68();
        v177 = v237;
        v237 = v67;
        sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
        v178 = v67;
        sub_2759B9D58();
        v68 = *(&v239 + 1);
        v175 = *(&v239 + 1);
        v176 = v239;
        sub_2759B8878();
        sub_2758FB2D4(&qword_280A10998, MEMORY[0x277CFB278], MEMORY[0x277CFB270]);

        v69 = sub_2759B9058();
        v71 = v70;
        type metadata accessor for iCloudHomeViewModel(0);
        sub_2758FB2D4(&qword_280A109A0, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
        v72 = sub_2759B9058();
        v177 = a1;
        v74 = v73;

        v76 = v176;
        *&v239 = v176;
        *(&v239 + 1) = v68;
        *&v240 = v72;
        *(&v240 + 1) = v74;
        *&v241 = v69;
        *(&v241 + 1) = v71;
        sub_2758FBCD0(v75, v77, v78);
        v79 = v179;
        sub_2759B9B38();

        a1 = v177;

        sub_27589F26C(v79, v232, &qword_280A10918, &qword_2759C77B0);
        v80 = 0;
      }

      else
      {

        v80 = 1;
      }

      v26 = v201;
    }

    else
    {

      v80 = 1;
    }
  }

  else
  {
    v80 = 1;
  }

  v81 = 1;
  (*(v43 + 56))(v232, v80, 1, v206);
  v82 = *&a1[*(v54 + 28)];
  if (v82)
  {
    *&v239 = v57;
    *(&v239 + 1) = v235;

    sub_2759B9D68();
    v83 = v237;
    v84 = sub_27587C10C();

    if (v84)
    {
      v85 = v235;
      *&v239 = v57;
      *(&v239 + 1) = v235;
      sub_2759B9D68();
      v86 = v237;
      *&v239 = v57;
      *(&v239 + 1) = v85;
      v87 = v84;
      v179 = v87;
      sub_2759B9D68();
      v88 = v237;
      v89 = objc_allocWithZone(type metadata accessor for ManageStorageAppsListViewModel(0));
      v178 = sub_2758A5B3C(v87, v88, 0);
      v201 = v26;
      v90 = *(v221 + 16);
      v91 = v205;
      v206 = v57;
      v92 = v202;
      v90(v205, v203, v202);
      KeyPath = swift_getKeyPath();
      v94 = v188;
      *v188 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10410, &qword_2759C6CD0);
      swift_storeEnumTagMultiPayload();
      v95 = v187;
      v96 = *(v187 + 20);
      *(v94 + v96) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
      swift_storeEnumTagMultiPayload();
      v97 = (v94 + *(v95 + 24));
      v237 = v86;
      type metadata accessor for iCloudHomeViewModel(0);

      v98 = v86;
      sub_2759B9D58();
      v99 = *(&v239 + 1);
      *v97 = v239;
      v97[1] = v99;
      *(v94 + *(v95 + 32)) = v82;
      v100 = v185;
      v90(v185, v91, v92);
      v90(v184, v100, v92);
      v26 = v201;

      sub_2759B9D58();

      v101 = *(v221 + 8);
      v101(v100, v92);
      v102 = v92;
      v57 = v206;
      v101(v205, v102);
      sub_2758FB2D4(&qword_280A10990, type metadata accessor for AppsUsingiCloudSection, &unk_2759CAA58);
      v103 = v186;
      sub_2759B9B38();

      sub_2758FBC70(v94, type metadata accessor for AppsUsingiCloudSection);
      v104 = v225;
      sub_27589F26C(v103, v225, &qword_280A10908, &qword_2759C77A0);
      v81 = 0;
      goto LABEL_14;
    }

    v81 = 1;
  }

  v104 = v225;
LABEL_14:
  v105 = 1;
  (*(v207 + 56))(v104, v81, 1, v208);
  *&v239 = v57;
  *(&v239 + 1) = v235;
  sub_2759B9D68();
  v106 = v237;
  v107 = sub_2758821BC();

  v108 = v227;
  if (v107)
  {
    *&v239 = v57;
    *(&v239 + 1) = v235;
    sub_2759B9D68();
    v109 = v237;
    v110 = swift_getKeyPath();
    v111 = v190;
    *v190 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
    swift_storeEnumTagMultiPayload();
    v112 = (v111 + *(v191 + 20));
    v237 = v109;
    type metadata accessor for iCloudHomeViewModel(0);
    sub_2759B9D58();
    v113 = *(&v239 + 1);
    *v112 = v239;
    v112[1] = v113;
    sub_2758FB2D4(&qword_280A10988, type metadata accessor for BackupSection, &unk_2759C7B60);
    v114 = v189;
    sub_2759B9B38();
    sub_2758FBC70(v111, type metadata accessor for BackupSection);
    sub_27589F26C(v114, v108, &qword_280A108F8, &qword_2759C7790);
    v105 = 0;
  }

  (*(v209 + 56))(v108, v105, 1, v26);
  *&v239 = v57;
  *(&v239 + 1) = v235;
  sub_2759B9D68();
  v115 = v237;
  swift_getKeyPath();
  *&v239 = v115;
  sub_2758FB2D4(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v116 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v117 = *&v115[v116];
  if (v117)
  {
    v118 = v117;

    v119 = *&v118[OBJC_IVAR___ICSHomeDataModel_headerCard];
    LODWORD(v118) = v119[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_isiCloudPlusSubscriber];

    if (v118 == 1)
    {
LABEL_18:
      v237 = v57;
      v238 = v235;
      v120 = sub_2759B9D68();
      v121 = v236;
      v122 = sub_2758825E0(v120);

      if (v122)
      {
        v237 = v57;
        v238 = v235;
        sub_2759B9D68();
        v123 = v236;
        v124 = *(v182 + 20);
        v125 = v221;
        v126 = v181;
        v127 = v57;
        v128 = v202;
        (*(v221 + 16))(&v181[v124], v203, v202);
        v129 = v128;
        v57 = v127;
        (*(v125 + 56))(&v126[v124], 0, 1, v129);
        *v126 = v123;
        sub_2758FB2D4(&qword_280A10950, type metadata accessor for iCloudPlusSection, &unk_2759C9B94);
        v130 = v180;
        sub_2759B9B38();
        sub_2758FBC70(v126, type metadata accessor for iCloudPlusSection);
        sub_27589F26C(v130, v204, &qword_280A108E0, &qword_2759C7778);
        v131 = 0;
      }

      else
      {
        v131 = 1;
      }

      v142 = v204;
      (*(v192 + 56))(v204, v131, 1, v193);
      v143 = &qword_2759C7780;
      sub_27586FBC8(v142, v212, &qword_280A108E8, &qword_2759C7780);
      swift_storeEnumTagMultiPayload();
      sub_2758FBA90(&qword_280A10940, &qword_280A108E8, &qword_2759C7780, sub_2758FB9A4);
      sub_2758FBA90(&qword_280A10958, &qword_280A108D0, &qword_2759C7768, sub_2758FBB0C);
      sub_2759B95E8();
      v144 = v142;
      v145 = &qword_280A108E8;
      goto LABEL_27;
    }
  }

  else
  {
    v132 = [objc_opt_self() isCloudSubscriber];

    if (v132)
    {
      goto LABEL_18;
    }
  }

  v237 = v57;
  v238 = v235;
  sub_2759B9D68();
  v133 = v236;
  v134 = sub_275882404();

  if (v134)
  {
    v237 = v57;
    v238 = v235;
    sub_2759B9D68();
    type metadata accessor for iCloudHomeViewModel(0);
    v135 = sub_2759B9D58();
    v136 = v237;
    sub_2758FBBC8(v135, v137, v138);
    v139 = v183;
    sub_2759B9B38();

    v140 = v196;
    sub_27589F26C(v139, v196, &qword_280A108C8, &qword_2759C7760);
    v141 = 0;
  }

  else
  {
    v141 = 1;
    v140 = v196;
  }

  (*(v194 + 56))(v140, v141, 1, v195);
  v143 = &qword_2759C7768;
  sub_27586FBC8(v140, v212, &qword_280A108D0, &qword_2759C7768);
  swift_storeEnumTagMultiPayload();
  sub_2758FBA90(&qword_280A10940, &qword_280A108E8, &qword_2759C7780, sub_2758FB9A4);
  sub_2758FBA90(&qword_280A10958, &qword_280A108D0, &qword_2759C7768, sub_2758FBB0C);
  sub_2759B95E8();
  v144 = v140;
  v145 = &qword_280A108D0;
LABEL_27:
  sub_27586BF04(v144, v145, v143);
  v237 = v57;
  v238 = v235;
  sub_2759B9D68();
  v146 = v236;
  v147 = sub_27589A198();

  if (v147)
  {
    v237 = v57;
    v238 = v235;
    sub_2759B9D68();
    v148 = v236;
    v149 = swift_getKeyPath();
    v150 = v198;
    *v198 = v149;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
    swift_storeEnumTagMultiPayload();
    v151 = (v150 + *(v199 + 20));
    v236 = v148;
    type metadata accessor for iCloudHomeViewModel(0);
    sub_2759B9D58();
    v152 = v238;
    *v151 = v237;
    v151[1] = v152;
    sub_2758FB2D4(&qword_280A10980, type metadata accessor for ADPSection, &unk_2759C41BC);
    v153 = v197;
    sub_2759B9B38();
    sub_2758FBC70(v150, type metadata accessor for ADPSection);
    sub_27589F26C(v153, v233, &qword_280A108B8, &qword_2759C7750);
    v154 = 0;
  }

  else
  {
    v154 = 1;
  }

  v155 = 1;
  (*(v214 + 56))(v233, v154, 1, v215);
  v237 = v57;
  v238 = v235;
  sub_2759B9D68();
  v156 = v236;
  v157 = iCloudHomeViewModel.shouldShowComplianceSection.getter();

  if (v157)
  {
    v237 = v57;
    v238 = v235;
    sub_2759B9D68();
    type metadata accessor for iCloudHomeViewModel(0);
    v158 = sub_2759B9D58();
    v159 = v237;
    sub_2758FBC1C(v158, v160, v161);
    v162 = v200;
    sub_2759B9B38();

    sub_27589F26C(v162, v230, &qword_280A108A8, &qword_2759C7740);
    v155 = 0;
  }

  v163 = v230;
  (*(v216 + 56))(v230, v155, 1, v217);
  v164 = v223;
  sub_27586FBC8(v222, v223, &qword_280A10928, &qword_2759C77C0);
  v165 = v224;
  sub_27586FBC8(v232, v224, &qword_280A10920, &qword_2759C77B8);
  v166 = v226;
  sub_27586FBC8(v104, v226, &qword_280A10910, &qword_2759C77A8);
  v167 = v228;
  sub_27586FBC8(v108, v228, &qword_280A10900, &qword_2759C7798);
  v168 = v229;
  sub_27586FBC8(v231, v229, &qword_280A108F0, &qword_2759C7788);
  v169 = v218;
  sub_27586FBC8(v233, v218, &qword_280A108C0, &qword_2759C7758);
  v170 = v219;
  sub_27586FBC8(v163, v219, &qword_280A108B0, &qword_2759C7748);
  v171 = v164;
  v172 = v220;
  sub_27586FBC8(v171, v220, &qword_280A10928, &qword_2759C77C0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10970, &unk_2759C77D0);
  sub_27586FBC8(v165, v172 + v173[12], &qword_280A10920, &qword_2759C77B8);
  sub_27586FBC8(v166, v172 + v173[16], &qword_280A10910, &qword_2759C77A8);
  sub_27586FBC8(v167, v172 + v173[20], &qword_280A10900, &qword_2759C7798);
  sub_27586FBC8(v168, v172 + v173[24], &qword_280A108F0, &qword_2759C7788);
  sub_27586FBC8(v169, v172 + v173[28], &qword_280A108C0, &qword_2759C7758);
  sub_27586FBC8(v170, v172 + v173[32], &qword_280A108B0, &qword_2759C7748);
  sub_27586BF04(v230, &qword_280A108B0, &qword_2759C7748);
  sub_27586BF04(v233, &qword_280A108C0, &qword_2759C7758);
  sub_27586BF04(v231, &qword_280A108F0, &qword_2759C7788);
  sub_27586BF04(v227, &qword_280A10900, &qword_2759C7798);
  sub_27586BF04(v225, &qword_280A10910, &qword_2759C77A8);
  sub_27586BF04(v232, &qword_280A10920, &qword_2759C77B8);
  sub_27586BF04(v222, &qword_280A10928, &qword_2759C77C0);
  sub_27586BF04(v170, &qword_280A108B0, &qword_2759C7748);
  sub_27586BF04(v169, &qword_280A108C0, &qword_2759C7758);
  sub_27586BF04(v229, &qword_280A108F0, &qword_2759C7788);
  sub_27586BF04(v228, &qword_280A10900, &qword_2759C7798);
  sub_27586BF04(v226, &qword_280A10910, &qword_2759C77A8);
  sub_27586BF04(v224, &qword_280A10920, &qword_2759C77B8);
  return sub_27586BF04(v223, &qword_280A10928, &qword_2759C77C0);
}

void sub_2758F9F1C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for iCloudHomeView(0) + 24));
  v3 = *v1;
  v2 = v1[1];
  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  swift_getKeyPath();
  v32 = v30;
  sub_2758FB2D4(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v5 = *&v30[v4];
  v6 = v5;

  if (v5)
  {
    v7 = *&v6[OBJC_IVAR___ICSHomeDataModel_preLaunchAction];
    v8 = v7;

    if (v7)
    {
      v28 = v8;
      v30 = v3;
      v31 = v2;
      sub_2759B9D68();

      if (qword_2815ADD40 != -1)
      {
        swift_once();
      }

      v9 = qword_2815ADE88;
      v10 = OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock;
      os_unfair_lock_lock(*(qword_2815ADE88 + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock));
      v11 = OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_preLaunchActionHasExecuted;
      v12 = *(v9 + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_preLaunchActionHasExecuted);
      os_unfair_lock_unlock(*(v9 + v10));
      if ((v12 & 1) == 0)
      {
        v30 = v3;
        v31 = v2;
        sub_2759B9D68();
        v27 = v29;
        LOBYTE(v30) = 19;
        LOBYTE(v29) = 7;
        sub_27590A460(v28, 1, &v30, &v29, 0);

        v30 = v3;
        v31 = v2;
        sub_2759B9D68();

        os_unfair_lock_lock(*(v9 + v10));
        *(v9 + v11) = 1;
        os_unfair_lock_unlock(*(v9 + v10));

        goto LABEL_10;
      }
    }
  }

  v30 = v3;
  v31 = v2;
  sub_2759B9D68();

  if (qword_2815ADD40 != -1)
  {
    swift_once();
  }

  v13 = qword_2815ADE88;
  v14 = OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock;
  os_unfair_lock_lock(*(qword_2815ADE88 + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock));
  *(v13 + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_preLaunchActionHasExecuted) = 1;
  os_unfair_lock_unlock(*(v13 + v14));
LABEL_10:
  v30 = v3;
  v31 = v2;
  sub_2759B9D68();
  v15 = v29;
  swift_getKeyPath();
  v30 = v15;
  sub_2759B8638();

  v17 = *&v15[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedAMSDeepLinkURLString];
  v16 = *&v15[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedAMSDeepLinkURLString + 8];

  if (v16)
  {
    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v18 = sub_2759B89A8();
    __swift_project_value_buffer(v18, qword_280A238E8);

    v19 = sub_2759B8988();
    v20 = sub_2759BA628();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_2758937B8(v17, v16, &v30);
      _os_log_impl(&dword_275819000, v19, v20, "Handling AMS deep link flow after dataModel load. %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x277C85860](v22, -1, -1);
      MEMORY[0x277C85860](v21, -1, -1);
    }

    v30 = v3;
    v31 = v2;
    sub_2759B9D68();
    v23 = v29;
    sub_27590E0CC(v17, v16);

    v30 = v3;
    v31 = v2;
    sub_2759B9D68();
    v24 = v29;
    v25 = &v29[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedAMSDeepLinkURLString];
    if (*&v29[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedAMSDeepLinkURLString + 8])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v30 = v24;
      sub_2759B8628();
    }

    else
    {
      *v25 = 0;
      *(v25 + 1) = 0;
    }
  }
}

void sub_2758FA464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v10 - v3;
  v5 = (a1 + *(type metadata accessor for iCloudHomeView(0) + 24));
  v7 = *v5;
  v6 = v5[1];
  v10[2] = v7;
  v10[3] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v8 = v10[1];
  sub_2758F6FB0(v4);
  v9 = sub_2759B87B8();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  sub_2758788FC(v4);
}

void sub_2758FA578(uint64_t a1)
{
  type metadata accessor for iCloudHomeView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  swift_getKeyPath();
  sub_2758FB2D4(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v1 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleLabel;
  swift_beginAccess();
  v2 = *&v8[v1];

  sub_2759B9D68();
  v3 = sub_27587B428();

  [v2 setAttributedText_];
  sub_2759B9D68();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v5 = [Strong navigationItem];

    sub_2759B9D68();
    swift_getKeyPath();
    sub_2759B8638();

    v6 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleLabel;
    swift_beginAccess();
    v7 = *&v9[v6];

    [v5 setTitleView_];
  }
}

double sub_2758FA7C4@<D0>(double *a1@<X8>)
{
  sub_2759B9068();
  v2 = CGRectGetMinY(v4) + 64.0;
  if (v2 > 96.0)
  {
    v2 = 96.0;
  }

  result = v2 / 96.0;
  *a1 = result;
  return result;
}

void sub_2758FA814(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = *a2;
  type metadata accessor for iCloudHomeView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  if (*&v5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleAlpha] == v3)
  {
    *&v5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleAlpha] = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758FB2D4(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
    sub_2759B8628();
  }
}

void sub_2758FA97C(uint64_t a1)
{
  type metadata accessor for iCloudHomeView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  swift_getKeyPath();
  sub_2758FB2D4(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v2 = [Strong navigationBar];

    [v2 _setTitleOpacity_];
  }

  sub_2759B9D68();
  v3 = *&v4[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_pushingLoadingTask];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    sub_2759BA538();
  }
}

uint64_t sub_2758FAB28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_2758ED4E8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_2758FAC60(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_2758FBD24;
  a2[1] = v7;
  return result;
}

uint64_t type metadata accessor for iCloudHomeView(uint64_t a1)
{
  result = qword_280A107D8;
  if (!qword_280A107D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758FAC60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iCloudHomeView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2758FAD0C(uint64_t a1)
{
  sub_2758FAE80(319, &qword_280A0F5F0, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2758FAE80(319, &qword_280A107E8, MEMORY[0x277D402D0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2758FAE80(319, &qword_280A0F5F8, type metadata accessor for iCloudHomeViewModel, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_2758FAE80(319, &qword_280A107F0, MEMORY[0x277CFB278], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2758FAE80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2758FAEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for iCloudHomeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2758F72AC(a1, v6, a2);
}

uint64_t sub_2758FAF6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A108A0, &qword_2759C7738);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_27586FBC8(a1, &v6 - v3, &qword_280A108A0, &qword_2759C7738);
  return MEMORY[0x277C82FD0](v4);
}

unint64_t sub_2758FB02C()
{
  result = qword_280A10860;
  if (!qword_280A10860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10810, &qword_2759C7600);
    sub_2758FB0E4();
    sub_27589B02C(&qword_280A0F0D8, &qword_280A0F0C0, &unk_2759C3340, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10860);
  }

  return result;
}

unint64_t sub_2758FB0E4()
{
  result = qword_280A10868;
  if (!qword_280A10868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10850, &qword_2759C7630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10808, &qword_2759C75F8);
    v1 = sub_27589B02C(&qword_280A10848, &qword_280A10808, &qword_2759C75F8, MEMORY[0x277CDE5A0]);
    sub_27589F2D4(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_27589B02C(&qword_280A0F0D0, &qword_280A0F0B8, &qword_2759C3338, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10868);
  }

  return result;
}

unint64_t sub_2758FB220()
{
  result = qword_280A10870;
  if (!qword_280A10870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10858, &qword_2759C7690);
    sub_2758FB2D4(&qword_280A10878, type metadata accessor for iCloudHomeDataModel, MEMORY[0x277D85380]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10870);
  }

  return result;
}

uint64_t sub_2758FB2D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2758FB34C()
{
  result = qword_280A10888;
  if (!qword_280A10888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10818, &qword_2759C7608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10810, &qword_2759C7600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10858, &qword_2759C7690);
    sub_2758FB02C();
    sub_2758FB220();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10888);
  }

  return result;
}

unint64_t sub_2758FB440()
{
  result = qword_280A10890;
  if (!qword_280A10890)
  {
    sub_275861AF8(255, &qword_280A10880, 0x277CCA898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10890);
  }

  return result;
}

void sub_2758FB4A8(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for iCloudHomeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_2758FA814(a1, a2, v6);
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for iCloudHomeView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2759B94D8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10410, &qword_2759C6CD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2759B87B8();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2758FB6F0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for iCloudHomeView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2758FB764()
{
  result = qword_280A10898;
  if (!qword_280A10898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10830, &qword_2759C7620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10828, &qword_2759C7618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10820, &qword_2759C7610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10858, &qword_2759C7690);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10818, &qword_2759C7608);
    sub_275861AF8(255, &qword_280A10880, 0x277CCA898);
    sub_2758FB34C();
    sub_2758FB440();
    swift_getOpaqueTypeConformance2();
    sub_2758FB220();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10898);
  }

  return result;
}

unint64_t sub_2758FB950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10930;
  if (!qword_280A10930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10930);
  }

  return result;
}

unint64_t sub_2758FB9A4()
{
  result = qword_280A10948;
  if (!qword_280A10948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A108E0, &qword_2759C7778);
    sub_2758FB2D4(&qword_280A10950, type metadata accessor for iCloudPlusSection, &unk_2759C9B94);
    sub_2758FB2D4(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10948);
  }

  return result;
}

uint64_t sub_2758FBA90(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_2758FBB0C()
{
  result = qword_280A10960;
  if (!qword_280A10960)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A108C8, &qword_2759C7760);
    sub_2758FBBC8(v1, v2, v3);
    sub_2758FB2D4(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10960);
  }

  return result;
}

unint64_t sub_2758FBBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10968;
  if (!qword_280A10968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10968);
  }

  return result;
}

unint64_t sub_2758FBC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10978;
  if (!qword_280A10978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10978);
  }

  return result;
}

uint64_t sub_2758FBC70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2758FBCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A109A8;
  if (!qword_280A109A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A109A8);
  }

  return result;
}

uint64_t sub_2758FBD28@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = v4;
  v34 = a3;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
  sub_27585D258();
  *&v30 = v8;
  *(&v30 + 1) = v10;
  v31 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(&v30);

  sub_2759B9B18();

  v11 = OpaqueTypeMetadata2;
  v12 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(&v30, OpaqueTypeMetadata2);
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E808, &qword_2759CC1E0);
  sub_27585D1B8();
  *&v26 = v11;
  *(&v26 + 1) = v13;
  v27 = v12;
  v28 = swift_getOpaqueTypeMetadata2();
  v29 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(&v26);

  sub_2759B9B18();

  v14 = v28;
  v15 = v29;
  __swift_project_boxed_opaque_existential_1(&v26, v28);
  swift_getKeyPath();
  v16 = sub_2759BA1B8();
  v17 = sub_2758FE88C(&qword_280A10398, MEMORY[0x277D4D7B0], MEMORY[0x277D4D7D0]);
  a4[3] = swift_getOpaqueTypeMetadata2();
  v24[0] = v14;
  v24[1] = v16;
  v24[2] = v15;
  v25 = v17;
  a4[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a4);

  sub_2759B9B18();

  __swift_destroy_boxed_opaque_existential_1(&v26);
  __swift_destroy_boxed_opaque_existential_1(&v30);
  v18 = *(v6 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_onCompletionActions);
  sub_27586E058(a4, &v26);
  v19 = *(v18 + 16);

  if (v19)
  {
    v21 = 0;
    v22 = v18 + 32;
    while (v21 < *(v18 + 16))
    {
      sub_27586E058(v22, v24);
      __swift_project_boxed_opaque_existential_1(v24, v25);
      sub_2759B8B28();
      if (v5)
      {
        __swift_destroy_boxed_opaque_existential_1(&v26);

        __swift_destroy_boxed_opaque_existential_1(v24);
        return __swift_destroy_boxed_opaque_existential_1(a4);
      }

      ++v21;
      __swift_destroy_boxed_opaque_existential_1(&v26);
      __swift_destroy_boxed_opaque_existential_1(v24);
      result = sub_275827D1C(&v23, &v26);
      v22 += 40;
      if (v19 == v21)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_275827D1C(&v26, &v30);
    __swift_destroy_boxed_opaque_existential_1(a4);
    return sub_275827D1C(&v30, a4);
  }

  return result;
}

uint64_t sub_2758FC15C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A109D8, &qword_2759D0B40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2759BA1B8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_navigationProxy;
  swift_beginAccess();
  sub_2758CE724(v6, v9 + a2, &qword_280A109D8, &qword_2759D0B40);
  return swift_endAccess();
}

uint64_t sub_2758FC2A0(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3[17] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758FC3CC, 0, 0);
}

uint64_t sub_2758FC3CC()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "ReloadAppsListAction: performing action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 128);

  v8 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_popView;
  swift_beginAccess();
  v9 = *(v6 + 48);
  if (v9(v7 + v8, 1, v5))
  {
    v10 = 0;
  }

  else
  {
    (*(*(v0 + 152) + 16))(*(v0 + 184), v7 + v8, *(v0 + 144));
    sub_2759B8AA8();
    (*(*(v0 + 152) + 8))(*(v0 + 184), *(v0 + 144));
    v10 = *(v0 + 232);
  }

  *(v0 + 236) = v10;
  v11 = *(v0 + 144);
  v12 = *(v0 + 128);
  v13 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_clearAppsList;
  swift_beginAccess();
  if (v9(v12 + v13, 1, v11))
  {
    v14 = 0;
  }

  else
  {
    (*(*(v0 + 152) + 16))(*(v0 + 176), v12 + v13, *(v0 + 144));
    sub_2759B8AA8();
    (*(*(v0 + 152) + 8))(*(v0 + 176), *(v0 + 144));
    v14 = *(v0 + 233);
  }

  v15 = *(v0 + 144);
  v16 = *(v0 + 128);
  v17 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_clearHomeData;
  swift_beginAccess();
  if (v9(v16 + v17, 1, v15))
  {
    v18 = 0;
  }

  else
  {
    (*(*(v0 + 152) + 16))(*(v0 + 168), v16 + v17, *(v0 + 144));
    sub_2759B8AA8();
    (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));
    v18 = *(v0 + 234);
  }

  *(v0 + 237) = v18;
  v19 = *(v0 + 144);
  v20 = *(v0 + 128);
  v21 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_refreshHomeViewModel;
  swift_beginAccess();
  v22 = 1;
  if (!v9(v20 + v21, 1, v19))
  {
    (*(*(v0 + 152) + 16))(*(v0 + 160), v20 + v21, *(v0 + 144));
    sub_2759B8AA8();
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    v22 = *(v0 + 235);
  }

  *(v0 + 238) = v22;
  v23 = *(*(v0 + 128) + 16);
  *(v0 + 192) = v23;
  if (!v23)
  {
    v30 = sub_2759B8988();
    v31 = sub_2759BA648();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_275819000, v30, v31, "ReloadAppsListAction: no view model available", v32, 2u);
      MEMORY[0x277C85860](v32, -1, -1);
    }

    v33 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v24 = v23;
  if (v14)
  {
    v25 = sub_2759B8988();
    v26 = sub_2759BA668();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_275819000, v25, v26, "ReloadAppsListAction: clearing apps list", v27, 2u);
      MEMORY[0x277C85860](v27, -1, -1);
    }

    sub_2759BA4C8();
    *(v0 + 200) = sub_2759BA4B8();
    v29 = sub_2759BA468();

    return MEMORY[0x2822009F8](sub_2758FCAA8, v29, v28);
  }

  else
  {
    v34 = swift_task_alloc();
    *(v0 + 208) = v34;
    *v34 = v0;
    v34[1] = sub_2758FCB5C;
    v35 = *(v0 + 238);

    return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(v35, 1);
  }
}

uint64_t sub_2758FCAA8()
{
  v1 = *(v0 + 237);

  ManageStorageAppsListViewModel.clearAppsList(clearHomeData:)(v1);
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_2758FCB5C;
  v3 = *(v0 + 238);

  return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(v3, 1);
}

uint64_t sub_2758FCB5C()
{

  return MEMORY[0x2822009F8](sub_2758FCC58, 0, 0);
}

uint64_t sub_2758FCC58()
{
  v1 = *(v0 + 128);
  if (*(v0 + 236) == 1 && (v2 = *(v1 + 24)) != 0 && *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_isPresented) == 1)
  {
    v3 = *(v0 + 192);
    v4 = *(v0 + 136);
    v5 = sub_2759BA518();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_2759BA4C8();
    v6 = v3;

    v7 = sub_2759BA4B8();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v1;
    v8[5] = v6;
    *(v0 + 216) = sub_27587D460(0, 0, v4, &unk_2759C7920, v8);
    v10 = swift_task_alloc();
    *(v0 + 224) = v10;
    *v10 = v0;
    v10[1] = sub_2758FCE90;

    return MEMORY[0x282200460]();
  }

  else
  {
    v11 = *(v0 + 192);

    sub_2759BA438();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_2758FCE90()
{

  return MEMORY[0x2822009F8](sub_2758FCFA8, 0, 0);
}

uint64_t sub_2758FCFA8()
{
  v1 = *(v0 + 192);

  sub_2759BA438();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2758FD078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A109D8, &qword_2759D0B40);
  v5[7] = swift_task_alloc();
  v6 = sub_2759BA1B8();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_2759BA4C8();
  v5[11] = sub_2759BA4B8();
  v8 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758FD1A4, v8, v7);
}

uint64_t sub_2758FD1A4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[5];

  v5 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_navigationProxy;
  swift_beginAccess();
  sub_2758FE7C0(v5 + v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_27586BF04(v0[7], &qword_280A109D8, &qword_2759D0B40);
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v6 = sub_2759BA198();
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];
    if (v6)
    {
      sub_2759BA1A8();
      (*(v8 + 8))(v7, v9);
      goto LABEL_8;
    }

    (*(v8 + 8))(v0[10], v0[8]);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
  }

LABEL_8:

  v12 = v0[1];

  return v12();
}

uint64_t sub_2758FD350()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_2758FD458(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_2758FD54C(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

unint64_t sub_2758FD650@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2758FE9EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2758FD680(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x77656956706F70;
  v5 = 0xED00006174614465;
  v6 = 0x6D6F487261656C63;
  v7 = 0x80000002759DD100;
  v8 = 0xD000000000000014;
  if (v2 != 3)
  {
    v8 = 0x656C706D6F436E6FLL;
    v7 = 0xEC0000006E6F6974;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7070417261656C63;
    v3 = 0xED00007473694C73;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2758FD744()
{
  v1 = *v0;
  v2 = 0x77656956706F70;
  v3 = 0x6D6F487261656C63;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x656C706D6F436E6FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7070417261656C63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2758FD804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2758FE9EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2758FD82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2758FE838(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2758FD868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2758FE838(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

id *sub_2758FD8A4(void *a1)
{
  v3 = v1;
  v66 = *v3;
  v67 = v2;
  v75 = sub_2759B8BD8();
  v60 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v76 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v64 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v63 = v58 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v61 = v58 - v12;
  MEMORY[0x28223BE20](v11);
  v62 = v58 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A109E8, &qword_2759C79C8);
  v65 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v15 = v58 - v14;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v16 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_navigationProxy;
  v74 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_navigationProxy;
  v17 = sub_2759BA1B8();
  (*(*(v17 - 8) + 56))(&v16[v3], 1, 1, v17);
  v18 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_popView;
  v70 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_popView;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v22 = v20 + 56;
  v21(v3 + v18, 1, 1, v19);
  v23 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_clearAppsList;
  v21(v3 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_clearAppsList, 1, 1, v19);
  v73 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_clearHomeData;
  v21(v3 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_clearHomeData, 1, 1, v19);
  v71 = OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_refreshHomeViewModel;
  v21(v3 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_refreshHomeViewModel, 1, 1, v19);
  v24 = a1[3];
  v68 = a1;
  v25 = __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_2758FE838(v25, v26, v27);
  v72 = v15;
  v28 = v70;
  v29 = v67;
  sub_2759BAC18();
  v30 = v74;
  if (v29)
  {

    sub_27586BF04(v30 + v3, &qword_280A109D8, &qword_2759D0B40);
    sub_27586BF04(v3 + v28, &qword_280A0FC48, &qword_2759C79C0);
    sub_27586BF04(v3 + v23, &qword_280A0FC48, &qword_2759C79C0);
    sub_27586BF04(v3 + v73, &qword_280A0FC48, &qword_2759C79C0);
    sub_27586BF04(v3 + v71, &qword_280A0FC48, &qword_2759C79C0);
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v68);
  }

  else
  {
    v31 = v61;
    v58[1] = v22;
    v67 = v21;
    v59 = v23;
    LOBYTE(v77[0]) = 0;
    v32 = sub_2758EA064();
    v33 = v62;
    v58[0] = v32;
    sub_2759BAA68();
    v34 = v28;
    v35 = v73;
    swift_beginAccess();
    sub_2758CE724(v33, v3 + v34, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
    LOBYTE(v77[0]) = 1;
    sub_2759BAA68();
    v36 = v59;
    v37 = v63;
    swift_beginAccess();
    sub_2758CE724(v31, v3 + v36, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
    LOBYTE(v77[0]) = 2;
    v38 = v69;
    sub_2759BAA68();
    v39 = v64;
    swift_beginAccess();
    sub_2758CE724(v37, v3 + v35, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
    LOBYTE(v77[0]) = 3;
    v40 = v39;
    sub_2759BAA68();
    v41 = v76;
    v42 = v65;
    v43 = v71;
    swift_beginAccess();
    sub_2758CE724(v40, v3 + v43, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
    LOBYTE(v78) = 4;
    sub_2758C7304();
    sub_2759BAA68();
    v67 = 0;
    if (*&v77[0])
    {
      v45 = *&v77[0];
    }

    else
    {
      v45 = MEMORY[0x277D84F90];
    }

    v46 = *(v45 + 16);
    if (v46)
    {
      v78 = MEMORY[0x277D84F90];
      sub_2759509B0(0, v46, 0);
      v47 = v78;
      v49 = v60 + 16;
      v48 = *(v60 + 16);
      v50 = *(v60 + 80);
      v71 = v45;
      v51 = v45 + ((v50 + 32) & ~v50);
      v73 = *(v60 + 72);
      v74 = v48;
      v52 = (v60 + 8);
      v53 = v75;
      do
      {
        v54 = v49;
        (v74)(v41, v51, v53);
        sub_2759B8BC8();
        v53 = v75;
        (*v52)(v41, v75);
        v78 = v47;
        v56 = *(v47 + 16);
        v55 = *(v47 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_2759509B0((v55 > 1), v56 + 1, 1);
          v53 = v75;
          v47 = v78;
        }

        *(v47 + 16) = v56 + 1;
        sub_275827D1C(v77, v47 + 40 * v56 + 32);
        v51 += v73;
        --v46;
        v49 = v54;
        v41 = v76;
      }

      while (v46);
      (*(v65 + 8))(v72, v69);
    }

    else
    {

      (*(v42 + 8))(v72, v38);
      v47 = MEMORY[0x277D84F90];
    }

    v57 = v68;
    *(v3 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_onCompletionActions) = v47;
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  return v3;
}

uint64_t sub_2758FE210()
{
  sub_27586BF04(OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_navigationProxy + v0, &qword_280A109D8, &qword_2759D0B40);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_popView, &qword_280A0FC48, &qword_2759C79C0);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_clearAppsList, &qword_280A0FC48, &qword_2759C79C0);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_clearHomeData, &qword_280A0FC48, &qword_2759C79C0);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings20ReloadAppsListAction_refreshHomeViewModel, &qword_280A0FC48, &qword_2759C79C0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReloadAppsListAction(uint64_t a1)
{
  result = qword_280A109B0;
  if (!qword_280A109B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2758FE378(uint64_t a1)
{
  sub_2758FE464(319);
  if (v1 <= 0x3F)
  {
    sub_2758E9738(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2758FE464(uint64_t a1)
{
  if (!qword_280A109C0)
  {
    sub_2759BA1B8();
    v1 = sub_2759BA7D8();
    if (!v2)
    {
      atomic_store(v1, &qword_280A109C0);
    }
  }
}

uint64_t sub_2758FE4BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return sub_2758FC2A0(a1, a2);
}

id *sub_2758FE618@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2758FD8A4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2758FE700(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_2758FD078(a1, v4, v5, v7, v6);
}

uint64_t sub_2758FE7C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A109D8, &qword_2759D0B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2758FE838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A109F0;
  if (!qword_280A109F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A109F0);
  }

  return result;
}

uint64_t sub_2758FE88C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2758FE8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A109F8;
  if (!qword_280A109F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A109F8);
  }

  return result;
}

unint64_t sub_2758FE940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10A00;
  if (!qword_280A10A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10A00);
  }

  return result;
}

unint64_t sub_2758FE998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10A08;
  if (!qword_280A10A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10A08);
  }

  return result;
}

unint64_t sub_2758FE9EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for BackupSection(uint64_t a1)
{
  result = qword_280A10A10;
  if (!qword_280A10A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758FEACC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586BDE8();
  sub_2759B8638();

  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupStatusDotColor);
}

uint64_t sub_2758FEBBC@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_27586BDE8();
  sub_2759B8638();

  v7 = (v6 + *a3);
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

uint64_t sub_2758FEC60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_2758FECA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2759B93D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_27586FBC8(v2, &v14 - v9, &qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2759B94D8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2759BA658();
    v13 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2758FEEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2759B94F8();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A30, &qword_2759C7BB8);
  return sub_2758FEF00(a1, a2 + *(v4 + 44));
}

uint64_t sub_2758FEF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for BackupSection(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A38, &qword_2759C7BC0);
  v51 = *(v54 - 8);
  v7 = MEMORY[0x28223BE20](v54);
  v52 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v49[-v9];
  sub_2759011E4(a1, &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_275901248(&v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A40, &qword_2759C7BC8);
  sub_275901314();
  v13 = v10;
  sub_2759B9DB8();
  v14 = (a1 + *(v4 + 28));
  v16 = *v14;
  v15 = v14[1];
  v57 = v16;
  v58 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v17 = v56;
  swift_getKeyPath();
  v57 = v17;
  sub_27586BDE8();
  sub_2759B8638();

  v19 = *&v17[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupSubtitle];
  v18 = *&v17[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupSubtitle + 8];

  v57 = v19;
  v58 = v18;
  sub_27589F2D4(v20, v21, v22);
  v23 = sub_2759B99C8();
  v25 = v24;
  v27 = v26;
  sub_2759B9848();
  v28 = sub_2759B9988();
  v30 = v29;
  v32 = v31;

  sub_27589F328(v23, v25, v27 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v57 = qword_280A239C0;

  v33 = sub_2759B9958();
  v35 = v34;
  v50 = v36;
  v38 = v37;
  sub_27589F328(v28, v30, v32 & 1);

  v39 = v51;
  v40 = v52;
  v41 = *(v51 + 16);
  v42 = v54;
  v41(v52, v13, v54);
  v43 = v53;
  v41(v53, v40, v42);
  v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A70, &qword_2759C7C08) + 48);
  *v44 = v33;
  *(v44 + 8) = v35;
  v45 = v50;
  v46 = v50 & 1;
  *(v44 + 16) = v50 & 1;
  *(v44 + 24) = v38;
  sub_27589F3E4(v33, v35, v45 & 1);
  v47 = *(v39 + 8);

  v47(v13, v42);
  sub_27589F328(v33, v35, v46);

  return (v47)(v40, v42);
}

void sub_2758FF378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = (a1 + *(type metadata accessor for BackupSection(0) + 20));
  v7 = v5[1];
  v16 = *v5;
  v6 = v16;
  v17 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v8 = v15;
  v9 = *&v15[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController];

  sub_2759BA4D8();
  v10 = sub_2759BA518();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v11;
  *(v12 + 40) = xmmword_2759C43F0;
  *(v12 + 56) = 266;
  *(v12 + 58) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = xmmword_2759C7B30;
  *(v12 + 96) = 10;
  sub_275931D20(0, 0, v4, &unk_2759C4530, v12);

  sub_27586BF04(v4, &unk_280A0E510, &qword_2759C33C0);
  v16 = v6;
  v17 = v7;
  sub_2759B9D68();
  v13 = v15;
  [v15 showBackupViewWithResourceDictionary_];
}

uint64_t sub_2758FF59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A68, &qword_2759C7BD8);
  MEMORY[0x28223BE20](v26);
  v4 = &v24 - v3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A78, &qword_2759C7C10);
  MEMORY[0x28223BE20](v24);
  v6 = &v24 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A58, &qword_2759C7BD0);
  MEMORY[0x28223BE20](v25);
  v8 = &v24 - v7;
  v9 = sub_2759B94D8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  sub_2758FECA8(&v24 - v14);
  (*(v10 + 104))(v13, *MEMORY[0x277CE0280], v9);
  v16 = sub_2758B2220(v15, v13);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
  if (v16)
  {
    *v8 = sub_2759B94E8();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A88, &qword_2759C7C20);
    sub_275900434(a1, &v8[*(v18 + 44)]);
    v19 = &qword_280A10A58;
    v20 = &qword_2759C7BD0;
    sub_27586FBC8(v8, v6, &qword_280A10A58, &qword_2759C7BD0);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A10A50, &qword_280A10A58, &qword_2759C7BD0, MEMORY[0x277CE1198]);
    sub_27589B02C(&qword_280A10A60, &qword_280A10A68, &qword_2759C7BD8, MEMORY[0x277CE1138]);
    sub_2759B95E8();
    v21 = v8;
  }

  else
  {
    *v4 = sub_2759B9418();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A80, &qword_2759C7C18);
    sub_2758FF9C0(a1, &v4[*(v22 + 44)]);
    v19 = &qword_280A10A68;
    v20 = &qword_2759C7BD8;
    sub_27586FBC8(v4, v6, &qword_280A10A68, &qword_2759C7BD8);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A10A50, &qword_280A10A58, &qword_2759C7BD0, MEMORY[0x277CE1198]);
    sub_27589B02C(&qword_280A10A60, &qword_280A10A68, &qword_2759C7BD8, MEMORY[0x277CE1138]);
    sub_2759B95E8();
    v21 = v4;
  }

  return sub_27586BF04(v21, v19, v20);
}

uint64_t sub_2758FF9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AB8, &qword_2759C7C48);
  v3 = MEMORY[0x28223BE20](v99);
  v105 = v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v100 = (v96 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v103 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v102 = v96 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v108 = v96 - v12;
  MEMORY[0x28223BE20](v11);
  v107 = v96 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AD8, &qword_2759C7D18);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v101 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v96 - v17;
  sub_2759BA028();
  sub_2759B8F18();
  v19 = v117;
  v20 = v118;
  v21 = v119;
  v22 = v120;
  v24 = v121;
  v23 = v122;
  v25 = (a1 + *(type metadata accessor for BackupSection(0) + 20));
  v27 = *v25;
  v26 = v25[1];
  v98 = v27;
  v109 = v27;
  v110 = v26;
  v97 = v26;
  v96[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v28 = v116;
  swift_getKeyPath();
  v109 = v28;
  v96[1] = sub_27586BDE8();
  sub_2759B8638();

  v29 = *&v28[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupStatusDotColor];

  v109 = v19;
  LOBYTE(v110) = v20;
  v111 = v21;
  LOBYTE(v112) = v22;
  v113 = v24;
  v114 = v23;
  v115 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AE0, &qword_2759C7D48);
  sub_2759015DC();
  v106 = v18;
  sub_2759B9B38();

  sub_2759B9498();
  type metadata accessor for iCloudHomeDataModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = [objc_opt_self() bundleForClass_];
  v32 = sub_2759B9998();
  v34 = v33;
  LOBYTE(v23) = v35;
  sub_2759B9858();
  v36 = sub_2759B9988();
  v38 = v37;
  v40 = v39;

  sub_27589F328(v32, v34, v23 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v109 = qword_280A239B8;

  v41 = sub_2759B9958();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_27589F328(v36, v38, v40 & 1);

  v109 = v41;
  v110 = v43;
  LOBYTE(v111) = v45 & 1;
  v112 = v47;
  sub_2759B9B38();
  sub_27589F328(v41, v43, v45 & 1);

  v109 = v98;
  v110 = v97;
  sub_2759B9D68();
  v48 = v116;
  swift_getKeyPath();
  v109 = v48;
  sub_2759B8638();

  v50 = *&v48[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupDetailLabel];
  v49 = *&v48[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupDetailLabel + 8];

  v109 = v50;
  v110 = v49;
  sub_27589F2D4(v51, v52, v53);
  v54 = sub_2759B99C8();
  v56 = v55;
  v58 = v57;
  sub_2759B9858();
  v59 = sub_2759B9988();
  v61 = v60;
  v63 = v62;

  sub_27589F328(v54, v56, v58 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v109 = qword_280A239C0;

  v64 = sub_2759B9958();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  sub_27589F328(v59, v61, v63 & 1);

  v109 = v64;
  v110 = v66;
  LOBYTE(v111) = v68 & 1;
  v112 = v70;
  v71 = v108;
  sub_2759B9B38();
  sub_27589F328(v64, v66, v68 & 1);

  v72 = sub_2759B9CB8();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC0, &qword_2759C7C78);
  v74 = v100;
  v75 = (v100 + *(v73 + 36));
  v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
  v77 = *MEMORY[0x277CE1050];
  v78 = sub_2759B9D18();
  (*(*(v78 - 8) + 104))(v75 + v76, v77, v78);
  *v75 = swift_getKeyPath();
  *v74 = v72;
  v79 = sub_2759B98F8();
  KeyPath = swift_getKeyPath();
  v81 = (v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC8, &qword_2759C7CE0) + 36));
  *v81 = KeyPath;
  v81[1] = v79;
  v82 = [objc_opt_self() tertiaryLabelColor];
  v83 = sub_2759B9BD8();
  v84 = swift_getKeyPath();
  v85 = (v74 + *(v99 + 36));
  *v85 = v84;
  v85[1] = v83;
  v86 = v101;
  sub_27586FBC8(v106, v101, &qword_280A10AD8, &qword_2759C7D18);
  v87 = v107;
  v88 = v102;
  sub_27586FBC8(v107, v102, &qword_280A0F600, &qword_2759C4210);
  v89 = v71;
  v90 = v103;
  sub_27586FBC8(v89, v103, &qword_280A0F600, &qword_2759C4210);
  v91 = v105;
  sub_27586FBC8(v74, v105, &qword_280A10AB8, &qword_2759C7C48);
  v92 = v104;
  sub_27586FBC8(v86, v104, &qword_280A10AD8, &qword_2759C7D18);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10B10, &qword_2759C7D60);
  sub_27586FBC8(v88, v92 + v93[12], &qword_280A0F600, &qword_2759C4210);
  v94 = v92 + v93[16];
  *v94 = 0x4024000000000000;
  *(v94 + 8) = 0;
  sub_27586FBC8(v90, v92 + v93[20], &qword_280A0F600, &qword_2759C4210);
  sub_27586FBC8(v91, v92 + v93[24], &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v74, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v108, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v87, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v106, &qword_280A10AD8, &qword_2759C7D18);
  sub_27586BF04(v91, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v90, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v88, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v86, &qword_280A10AD8, &qword_2759C7D18);
}

uint64_t sub_275900434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A90, &qword_2759CABF0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A98, &qword_2759C7C28);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  *v15 = sub_2759B9418();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AA0, &qword_2759C7C30);
  sub_27590067C(a1, &v15[*(v16 + 44)]);
  *v9 = sub_2759B9418();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AA8, &qword_2759C7C38);
  sub_275900BD4(a1, &v9[*(v17 + 44)]);
  sub_27586FBC8(v15, v13, &qword_280A10A98, &qword_2759C7C28);
  sub_27586FBC8(v9, v7, &qword_280A10A90, &qword_2759CABF0);
  sub_27586FBC8(v13, a2, &qword_280A10A98, &qword_2759C7C28);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AB0, &qword_2759C7C40);
  sub_27586FBC8(v7, a2 + *(v18 + 48), &qword_280A10A90, &qword_2759CABF0);
  sub_27586BF04(v9, &qword_280A10A90, &qword_2759CABF0);
  sub_27586BF04(v15, &qword_280A10A98, &qword_2759C7C28);
  sub_27586BF04(v7, &qword_280A10A90, &qword_2759CABF0);
  return sub_27586BF04(v13, &qword_280A10A98, &qword_2759C7C28);
}

uint64_t sub_27590067C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AD8, &qword_2759C7D18);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - v10;
  sub_2759BA028();
  sub_2759B8F18();
  v12 = v62;
  v13 = v63;
  v14 = v64;
  v15 = v65;
  v16 = v66;
  v17 = v67;
  v18 = (a1 + *(type metadata accessor for BackupSection(0) + 20));
  v20 = *v18;
  v19 = v18[1];
  v54 = v20;
  v55 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v21 = v61;
  swift_getKeyPath();
  v54 = v21;
  sub_27586BDE8();
  sub_2759B8638();

  v22 = *&v21[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupStatusDotColor];

  v54 = v12;
  LOBYTE(v55) = v13;
  v56 = v14;
  LOBYTE(v57) = v15;
  v58 = v16;
  v59 = v17;
  v60 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AE0, &qword_2759C7D48);
  sub_2759015DC();
  sub_2759B9B38();

  sub_2759B9498();
  type metadata accessor for iCloudHomeDataModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  v25 = sub_2759B9998();
  v27 = v26;
  v29 = v28;
  sub_2759B9858();
  v30 = sub_2759B9988();
  v32 = v31;
  v34 = v33;

  sub_27589F328(v25, v27, v29 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v54 = qword_280A239B8;

  v35 = sub_2759B9958();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_27589F328(v30, v32, v34 & 1);

  v54 = v35;
  v55 = v37;
  LOBYTE(v56) = v39 & 1;
  v57 = v41;
  v42 = v51;
  sub_2759B9B38();
  sub_27589F328(v35, v37, v39 & 1);

  v43 = v50;
  sub_27586FBC8(v11, v50, &qword_280A10AD8, &qword_2759C7D18);
  v44 = v52;
  sub_27586FBC8(v42, v52, &qword_280A0F600, &qword_2759C4210);
  v45 = v53;
  sub_27586FBC8(v43, v53, &qword_280A10AD8, &qword_2759C7D18);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10B08, &qword_2759C7D58);
  sub_27586FBC8(v44, v45 + *(v46 + 48), &qword_280A0F600, &qword_2759C4210);
  v47 = v45 + *(v46 + 64);
  *v47 = 0;
  *(v47 + 8) = 1;
  sub_27586BF04(v42, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v11, &qword_280A10AD8, &qword_2759C7D18);
  sub_27586BF04(v44, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v43, &qword_280A10AD8, &qword_2759C7D18);
}

uint64_t sub_275900BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AB8, &qword_2759C7C48);
  v3 = MEMORY[0x28223BE20](v55);
  v58 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = (&v55 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v57 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v55 - v10;
  v11 = (a1 + *(type metadata accessor for BackupSection(0) + 20));
  v13 = *v11;
  v12 = v11[1];
  v60 = v13;
  v61 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v14 = v64;
  swift_getKeyPath();
  v60 = v14;
  sub_27586BDE8();
  sub_2759B8638();

  v16 = *&v14[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupDetailLabel];
  v15 = *&v14[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupDetailLabel + 8];

  v60 = v16;
  v61 = v15;
  sub_27589F2D4(v17, v18, v19);
  v20 = sub_2759B99C8();
  v22 = v21;
  LOBYTE(v16) = v23;
  sub_2759B9858();
  v24 = sub_2759B9988();
  v26 = v25;
  v28 = v27;

  sub_27589F328(v20, v22, v16 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v60 = qword_280A239C0;

  v29 = sub_2759B9958();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_27589F328(v24, v26, v28 & 1);

  v60 = v29;
  v61 = v31;
  v62 = v33 & 1;
  v63 = v35;
  v36 = v56;
  sub_2759B9B38();
  sub_27589F328(v29, v31, v33 & 1);

  v37 = sub_2759B9CB8();
  v38 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC0, &qword_2759C7C78) + 36));
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
  v40 = *MEMORY[0x277CE1050];
  v41 = sub_2759B9D18();
  (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
  *v38 = swift_getKeyPath();
  *v6 = v37;
  v42 = sub_2759B98F8();
  KeyPath = swift_getKeyPath();
  v44 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC8, &qword_2759C7CE0) + 36));
  *v44 = KeyPath;
  v44[1] = v42;
  v45 = [objc_opt_self() tertiaryLabelColor];
  v46 = sub_2759B9BD8();
  v47 = swift_getKeyPath();
  v48 = (v6 + *(v55 + 36));
  *v48 = v47;
  v48[1] = v46;
  v49 = v57;
  sub_27586FBC8(v36, v57, &qword_280A0F600, &qword_2759C4210);
  v50 = v58;
  sub_27586FBC8(v6, v58, &qword_280A10AB8, &qword_2759C7C48);
  v51 = v59;
  sub_27586FBC8(v49, v59, &qword_280A0F600, &qword_2759C4210);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AD0, &qword_2759CACB0);
  v53 = v51 + *(v52 + 48);
  *v53 = 0x4020000000000000;
  *(v53 + 8) = 0;
  sub_27586FBC8(v50, v51 + *(v52 + 64), &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v6, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v36, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v50, &qword_280A10AB8, &qword_2759C7C48);
  return sub_27586BF04(v49, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_275901138()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A20, &qword_2759C7BB0);
  sub_27589B02C(&qword_280A10A28, &qword_280A10A20, &qword_2759C7BB0, MEMORY[0x277CE1198]);
  return sub_2759B9F38();
}

uint64_t sub_2759011E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackupSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275901248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackupSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2759012AC()
{
  v1 = *(type metadata accessor for BackupSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_2758FF378(v2);
}

unint64_t sub_275901314()
{
  result = qword_280A10A48;
  if (!qword_280A10A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10A40, &qword_2759C7BC8);
    sub_27589B02C(&qword_280A10A50, &qword_280A10A58, &qword_2759C7BD0, MEMORY[0x277CE1198]);
    sub_27589B02C(&qword_280A10A60, &qword_280A10A68, &qword_2759C7BD8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10A48);
  }

  return result;
}

uint64_t sub_2759013F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2759B92E8();
  *a1 = result;
  return result;
}

uint64_t sub_275901474(uint64_t a1)
{
  v2 = sub_2759B9D18();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2759B9198();
}

uint64_t sub_27590153C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2759B91E8();
  *a1 = result;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

unint64_t sub_2759015DC()
{
  result = qword_280A10AE8;
  if (!qword_280A10AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10AE0, &qword_2759C7D48);
    sub_275901694();
    sub_27589B02C(&qword_280A0F1F0, &qword_280A0F1F8, &unk_2759CB7B0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10AE8);
  }

  return result;
}

unint64_t sub_275901694()
{
  result = qword_280A10AF0;
  if (!qword_280A10AF0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10AF8, &qword_2759C7D50);
    sub_275901720(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10AF0);
  }

  return result;
}

unint64_t sub_275901720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10B00;
  if (!qword_280A10B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10B00);
  }

  return result;
}

unint64_t sub_275901774()
{
  result = qword_280A10B18;
  if (!qword_280A10B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10B20, qword_2759C7D68);
    sub_27589B02C(&qword_280A10A28, &qword_280A10A20, &qword_2759C7BB0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10B18);
  }

  return result;
}

uint64_t type metadata accessor for IfDataclassEnabledView(uint64_t a1)
{
  result = qword_280A10B28;
  if (!qword_280A10B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2759018A4(uint64_t a1)
{
  sub_275901A10(319, &qword_280A0E6C8, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_275901A10(319, &qword_280A0E6D0, MEMORY[0x277D231A8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_275901A10(319, &qword_280A0E888, MEMORY[0x277D23340], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_27585AF74(319);
        if (v4 <= 0x3F)
        {
          sub_275901A74(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_275901A10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_275901A74(uint64_t a1)
{
  if (!qword_280A10B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
    v1 = sub_2759B8DB8();
    if (!v2)
    {
      atomic_store(v1, &qword_280A10B38);
    }
  }
}

void *sub_275901AD8()
{
  v1 = sub_2759B93D8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for IfDataclassEnabledView(0) + 40);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_2759BA658();
    v8 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();
    sub_275827D68(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_275901C38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10B68, &qword_2759C7EC0);
  MEMORY[0x28223BE20](v40);
  v4 = &v33 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10B70, &qword_2759C7EC8);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10B78, &qword_2759C7ED0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10B80, &qword_2759C7ED8);
  MEMORY[0x28223BE20](v39);
  v38 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for IfDataclassEnabledView(0);
  sub_27586FBC8(v2 + *(v13 + 32), v12, &qword_280A0E8A8, qword_2759C2120);
  v14 = sub_2759B8C48();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_27586BF04(v12, &qword_280A0E8A8, qword_2759C2120);
LABEL_5:
    if (qword_280A0E360 != -1)
    {
      swift_once();
    }

    v16 = sub_2759B89A8();
    __swift_project_value_buffer(v16, qword_280A23900);
    v17 = sub_2759B8988();
    v18 = sub_2759BA648();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_275819000, v17, v18, "IfDataclassEnabledView: dataclass or viewmodel missing", v19, 2u);
      MEMORY[0x277C85860](v19, -1, -1);
    }

    swift_storeEnumTagMultiPayload();
    sub_275903480();
    return sub_2759B95E8();
  }

  if (!*(v2 + *(v13 + 36)))
  {
    sub_2759B8C08();
    sub_275903744(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    result = sub_2759B9158();
    __break(1u);
    return result;
  }

  v35 = sub_2759B8C38();
  v22 = v21;

  (*(v15 + 8))(v12, v14);
  v23 = sub_275901AD8();
  if (!v23)
  {

    goto LABEL_5;
  }

  v24 = v23;
  v25 = v35;
  v34 = sub_2759BA258();
  v26 = [*&v24[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_account] isEnabledForDataclass_];
  v27 = 24;
  if (!v26)
  {
    v27 = 28;
  }

  v33 = v24;
  if (v26)
  {
    v28 = &unk_2759C7EF8;
  }

  else
  {
    v28 = &unk_2759C7EE8;
  }

  v29 = *(v13 + v27);
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  *(v30 + 24) = v22;
  v31 = &v8[*(v6 + 36)];
  sub_2759B8FD8();
  sub_2759BA4E8();
  *v31 = v28;
  *(v31 + 1) = v30;
  sub_27586FBC8(v2 + v29, v8, &qword_280A0E6B0, &qword_2759C0D00);
  sub_27586FBC8(v8, v36, &qword_280A10B78, &qword_2759C7ED0);
  swift_storeEnumTagMultiPayload();
  sub_275903504();
  v32 = v38;
  sub_2759B95E8();
  sub_27586BF04(v8, &qword_280A10B78, &qword_2759C7ED0);
  sub_27586FBC8(v32, v4, &qword_280A10B80, &qword_2759C7ED8);
  swift_storeEnumTagMultiPayload();
  sub_275903480();
  sub_2759B95E8();

  return sub_27586BF04(v32, &qword_280A10B80, &qword_2759C7ED8);
}

uint64_t sub_27590226C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2759BA4C8();
  v2[4] = sub_2759BA4B8();
  v4 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275902304, v4, v3);
}

uint64_t sub_275902304()
{
  v11 = v0;

  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A23900);

  v2 = sub_2759B8988();
  v3 = sub_2759BA638();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2758937B8(v5, v4, &v10);
    _os_log_impl(&dword_275819000, v2, v3, "IfDataclassEnabledView: Dataclass is enabled %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x277C85860](v7, -1, -1);
    MEMORY[0x277C85860](v6, -1, -1);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_275902490(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2759BA4C8();
  v2[4] = sub_2759BA4B8();
  v4 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275902528, v4, v3);
}

uint64_t sub_275902528()
{
  v11 = v0;

  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A23900);

  v2 = sub_2759B8988();
  v3 = sub_2759BA638();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2758937B8(v5, v4, &v10);
    _os_log_impl(&dword_275819000, v2, v3, "IfDataclassEnabledView: Dataclass not disabled %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x277C85860](v7, -1, -1);
    MEMORY[0x277C85860](v6, -1, -1);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_2759026C0()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_275902770(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_27590280C(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

unint64_t sub_2759028B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_275903B30(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2759028E8(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE400000000000000;
  v5 = 1702063205;
  if (*v1 != 2)
  {
    v5 = 0x73616C6361746164;
    v4 = 0xEB00000000644973;
  }

  if (*v1)
  {
    v3 = 1852139636;
    v2 = 0xE400000000000000;
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

uint64_t sub_275902954()
{
  v1 = 25705;
  v2 = 1702063205;
  if (*v0 != 2)
  {
    v2 = 0x73616C6361746164;
  }

  if (*v0)
  {
    v1 = 1852139636;
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

unint64_t sub_2759029BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275903B30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2759029F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2759036F0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_275902A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2759036F0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_275902A68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = &v42 - v8;
  v9 = sub_2759B85A8();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10B98, &qword_2759C7F00);
  v12 = *(v11 - 8);
  v51 = v11;
  v52 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - v13;
  v15 = type metadata accessor for IfDataclassEnabledView(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18[2] = MEMORY[0x277D84F90];
  v19 = (v18 + *(v16 + 36));
  sub_2759B8C08();
  sub_275903744(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  *v19 = sub_2759B9168();
  v19[1] = v20;
  v21 = v18 + *(v15 + 40);
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2759036F0(v22, v23, v24);
  v25 = v53;
  sub_2759BAC18();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v43 = v15;
    v53 = a1;
    v57 = 0;
    v26 = v51;
    v27 = sub_2759BAA58();
    v42 = v14;
    if (!v28)
    {
      v30 = v44;
      sub_2759B8598();
      v31 = sub_2759B8588();
      v33 = v32;
      (*(v45 + 8))(v30, v46);
      v28 = v33;
      v27 = v31;
    }

    v34 = v18;
    *v18 = v27;
    v18[1] = v28;
    sub_2759B8A38();
    v56 = 1;
    sub_275903744(&qword_280A0E738, MEMORY[0x277D231A8], MEMORY[0x277D231B0]);
    v35 = v47;
    sub_2759BAA68();
    v36 = v43;
    v37 = v48;
    sub_27589F26C(v35, v34 + *(v43 + 24), &qword_280A0E6B0, &qword_2759C0D00);
    v55 = 2;
    sub_2759BAA68();
    sub_27589F26C(v37, v34 + *(v36 + 28), &qword_280A0E6B0, &qword_2759C0D00);
    sub_2759B8C48();
    v54 = 3;
    sub_275903744(&qword_280A0E8C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    v38 = v49;
    v39 = v42;
    sub_2759BAA68();
    (*(v52 + 8))(v39, v26);
    v40 = v53;
    v41 = v50;
    sub_27589F26C(v38, v34 + *(v43 + 32), &qword_280A0E8A8, qword_2759C2120);
    sub_27590378C(v34, v41);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return sub_2759037F0(v34);
  }
}

uint64_t sub_275903100(uint64_t a1, uint64_t a2)
{
  v4 = sub_275903744(&qword_280A10B40, type metadata accessor for IfDataclassEnabledView, &unk_2759C7E78);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_275903184(uint64_t a1, uint64_t a2)
{
  v4 = sub_275903744(&qword_280A10B48, type metadata accessor for IfDataclassEnabledView, &unk_2759C7E28);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_275903200(uint64_t a1)
{
  v2 = sub_275903744(&qword_280A10B48, type metadata accessor for IfDataclassEnabledView, &unk_2759C7E28);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_27590327C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275903744(&qword_280A10B60, type metadata accessor for IfDataclassEnabledView, &unk_2759C7DF0);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_275903338(uint64_t a1, uint64_t a2)
{
  sub_275903744(&qword_280A10B40, type metadata accessor for IfDataclassEnabledView, &unk_2759C7E78);
  sub_275903744(&qword_280A10B48, type metadata accessor for IfDataclassEnabledView, &unk_2759C7E28);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_275903480()
{
  result = qword_280A10B88;
  if (!qword_280A10B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10B80, &qword_2759C7ED8);
    sub_275903504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10B88);
  }

  return result;
}

unint64_t sub_275903504()
{
  result = qword_280A10B90;
  if (!qword_280A10B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10B78, &qword_2759C7ED0);
    sub_27585BE04();
    sub_275903744(&qword_280A0FCF0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10B90);
  }

  return result;
}

uint64_t sub_2759035C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27585A7E4;

  return sub_275902490(v2, v3);
}

uint64_t sub_275903658()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27585F7A0;

  return sub_27590226C(v2, v3);
}

unint64_t sub_2759036F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10BA0;
  if (!qword_280A10BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10BA0);
  }

  return result;
}

uint64_t sub_275903744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27590378C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IfDataclassEnabledView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2759037F0(uint64_t a1)
{
  v2 = type metadata accessor for IfDataclassEnabledView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for IfDataclassEnabledView.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IfDataclassEnabledView.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27590399C()
{
  result = qword_280A10BA8;
  if (!qword_280A10BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10BB0, &qword_2759C7F40);
    sub_275903480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10BA8);
  }

  return result;
}

unint64_t sub_275903A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10BB8;
  if (!qword_280A10BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10BB8);
  }

  return result;
}

unint64_t sub_275903A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10BC0;
  if (!qword_280A10BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10BC0);
  }

  return result;
}

unint64_t sub_275903ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10BC8;
  if (!qword_280A10BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10BC8);
  }

  return result;
}

unint64_t sub_275903B30(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t iCloudSettingsExperienceViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for iCloudHomeViewController()) init];
  return v0;
}

void sub_275903C08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_27589F2D4(a1, a2, a3);
  if (sub_2759BA7F8())
  {
    v5 = sub_2759BA258();
    type metadata accessor for iCloudSettingsNavigationPathHelper();
    v6 = sub_2758EA438();
    static iCloudSettingsNavigationPathHelper.recipe(dataclass:accountManager:)(v5, v6, a4);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v7 = sub_2759B89A8();
    __swift_project_value_buffer(v7, qword_2815ADE70);
    v8 = sub_2759B8988();
    v9 = sub_2759BA638();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_275819000, v8, v9, "Identifier is not of Dataclass format.", v10, 2u);
      MEMORY[0x277C85860](v10, -1, -1);
    }

    v11 = sub_2759B8768();
    (*(*(v11 - 8) + 56))(a4, 1, 1, v11);
  }
}

void sub_275903DD0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_2759BA1C8();
  [v2 handleURL_];
}

uint64_t iCloudSettingsExperienceViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void static iCloudSettingsNavigationPathHelper.recipe(dataclass:accountManager:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_280A0E368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_280A10BD0;

  v7 = sub_275904AE8(a1, v6);

  if ((v7 & 1) == 0)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_2815ADE70);
    v15 = a1;
    v16 = sub_2759B8988();
    v17 = sub_2759BA648();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_28;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v68 = v19;
    *v18 = 136315138;
    v20 = sub_2759BA298();
    v22 = sub_2758937B8(v20, v21, &v68);

    *(v18 + 4) = v22;
    v23 = "Dataclass not supported for settings recipe. %s";
    goto LABEL_27;
  }

  v8 = [a2 accounts];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for AIDAServiceType(0);
    sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
    sub_275904F40();
    v10 = sub_2759BA1D8();

    if (*(v10 + 16))
    {
      v11 = sub_2758A342C();
      if (v12)
      {
        v13 = *(*(v10 + 56) + 8 * v11);

LABEL_14:
        if (qword_2815ADD30 != -1)
        {
          swift_once();
        }

        v26 = sub_2759B89A8();
        __swift_project_value_buffer(v26, qword_2815ADE70);
        v27 = a1;
        v28 = sub_2759B8988();
        v29 = sub_2759BA628();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = a2;
          v31 = v13;
          v32 = a3;
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v68 = v34;
          *v33 = 136315138;
          v35 = sub_2759BA298();
          v37 = sub_2758937B8(v35, v36, &v68);

          *(v33 + 4) = v37;
          _os_log_impl(&dword_275819000, v28, v29, "Generating settings recipe for %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v34);
          MEMORY[0x277C85860](v34, -1, -1);
          v38 = v33;
          a3 = v32;
          v13 = v31;
          a2 = v30;
          MEMORY[0x277C85860](v38, -1, -1);
        }

        v39 = sub_2759BA298();
        v41 = v40;
        if (v39 == sub_2759BA298() && v41 == v42)
        {
          goto LABEL_20;
        }

        v43 = sub_2759BAAC8();

        if (v43)
        {
          goto LABEL_22;
        }

        v50 = sub_2759BA298();
        v52 = v51;
        if (v50 == sub_2759BA298() && v52 == v53)
        {
LABEL_20:

LABEL_22:
          sub_275904C3C(a3);

          return;
        }

        v54 = sub_2759BAAC8();

        if (v54)
        {
          goto LABEL_22;
        }

        v55 = sub_2759BA298();
        v57 = v56;
        if (v55 == sub_2759BA298() && v57 == v58)
        {

LABEL_36:
          v60 = [objc_opt_self() buildBackupViewControllerWithAccount_];
LABEL_37:
          sub_2759B8738();

          v61 = sub_2759B8768();
          (*(*(v61 - 8) + 56))(a3, 0, 1, v61);
          return;
        }

        v59 = sub_2759BAAC8();

        if (v59)
        {
          goto LABEL_36;
        }

        v62 = sub_2759BA298();
        v64 = v63;
        if (v62 == sub_2759BA298() && v64 == v65)
        {
        }

        else
        {
          v66 = sub_2759BAAC8();

          if ((v66 & 1) == 0)
          {
            v67 = [objc_opt_self() buildViewControllerWithAccountManager:a2 dataclass:v27];
            goto LABEL_44;
          }
        }

        v67 = [objc_opt_self() messagesCloudSettingsViewControllerWithAccountManager_];
LABEL_44:
        v16 = v67;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v60 = v16;
          goto LABEL_37;
        }

LABEL_28:
        v49 = sub_2759B8768();
        (*(*(v49 - 8) + 56))(a3, 1, 1, v49);
        return;
      }
    }

    v24 = [objc_opt_self() defaultStore];
    if (v24)
    {
      v25 = v24;

      v13 = [v25 aa_primaryAppleAccount];

      if (v13)
      {
        goto LABEL_14;
      }

      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v44 = sub_2759B89A8();
      __swift_project_value_buffer(v44, qword_2815ADE70);
      v45 = a1;
      v16 = sub_2759B8988();
      v17 = sub_2759BA648();

      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_28;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v68 = v19;
      *v18 = 136315138;
      v46 = sub_2759BA298();
      v48 = sub_2758937B8(v46, v47, &v68);

      *(v18 + 4) = v48;
      v23 = "Unable to get iCloud account when trying to build settings recipe for %s";
LABEL_27:
      _os_log_impl(&dword_275819000, v16, v17, v23, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x277C85860](v19, -1, -1);
      MEMORY[0x277C85860](v18, -1, -1);
      goto LABEL_28;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_275904740()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10BE8, &qword_2759C8168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C80F0;
  v1 = *MEMORY[0x277CB8A08];
  *(inited + 32) = *MEMORY[0x277CB8A08];
  v2 = *MEMORY[0x277CB8960];
  v3 = *MEMORY[0x277CB8920];
  *(inited + 40) = *MEMORY[0x277CB8960];
  *(inited + 48) = v3;
  v4 = *MEMORY[0x277CB89D8];
  v5 = *MEMORY[0x277CB89F8];
  *(inited + 56) = *MEMORY[0x277CB89D8];
  *(inited + 64) = v5;
  v6 = *MEMORY[0x277CB8A58];
  v7 = *MEMORY[0x277CB89A0];
  *(inited + 72) = *MEMORY[0x277CB8A58];
  *(inited + 80) = v7;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  sub_2759B5D0C(inited);
  v16 = v15;
  swift_setDeallocating();
  type metadata accessor for Dataclass(0);
  result = swift_arrayDestroy();
  qword_280A10BD0 = v16;
  return result;
}

uint64_t static iCloudSettingsNavigationPathHelper.supportedDataclasses.getter()
{
  if (qword_280A0E368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

double static iCloudSettingsNavigationPathHelper.supportedDataclasses.setter(uint64_t a1)
{
  if (qword_280A0E368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280A10BD0 = a1;

  return result;
}

uint64_t (*static iCloudSettingsNavigationPathHelper.supportedDataclasses.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280A0E368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2759049E0@<X0>(void *a1@<X8>)
{
  if (qword_280A0E368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_280A10BD0;
}

double sub_275904A60(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_280A0E368;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280A10BD0 = v1;

  return result;
}

uint64_t sub_275904AE8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_2759BA298(), sub_2759BABD8(), sub_2759BA328(), v3 = sub_2759BAC08(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_2759BA298();
      v9 = v8;
      if (v7 == sub_2759BA298() && v9 == v10)
      {
        break;
      }

      v12 = sub_2759BAAC8();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_275904C3C@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_2759BA258();
  v4 = sub_2759BA258();

  v5 = sub_2759BA258();
  v6 = NSClassFromString(v5);

  if (v6 && (swift_getObjCClassMetadata(), sub_275861AF8(0, &qword_280A0E7E0, 0x277D3FBA0), swift_dynamicCastMetatype()))
  {
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_2759B8738();
    v7 = 0;
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_2815ADE70);
    v9 = sub_2759B8988();
    v10 = sub_2759BA648();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      MEMORY[0x277C85860](v11, -1, -1);
    }

    v7 = 1;
  }

  v12 = sub_2759B8768();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, v7, 1, v12);
}

unint64_t static iCloudSettingsNavigationPathHelper.resourceDictionary(_:)()
{
  v0 = sub_2758A31E8(MEMORY[0x277D84F90]);
  v1 = MEMORY[0x277D837D0];
  sub_2759BA878();
  v7 = v1;
  *&v6 = sub_2759B84A8();
  *(&v6 + 1) = v2;
  sub_2758A2ECC(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_275906E88(v5, v8, isUniquelyReferenced_nonNull_native);
  sub_275864C40(v8);
  return v0;
}

unint64_t sub_275904F40()
{
  result = qword_280A0E500;
  if (!qword_280A0E500)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E500);
  }

  return result;
}

uint64_t sub_275904F98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10BD8, &qword_2759C8150);
  v34 = v4;
  result = sub_2759BAA18();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_2759BABD8();
      sub_2759BA328();
      result = sub_2759BAC08();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_275905240(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3E8, &qword_2759C39A8);
  v37 = v4;
  result = sub_2759BAA18();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_2759BABD8();
      sub_2759BA328();
      result = sub_2759BAC08();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_275905500(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_2759B8AF8();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3C8, &qword_2759C3990);
  v42 = v4;
  result = sub_2759BAA18();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_2759BABD8();
      sub_2759BA328();
      result = sub_2759BAC08();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_275905880(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_2759BAA18();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_2759BABD8();
      sub_2759BA328();
      result = sub_2759BAC08();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}