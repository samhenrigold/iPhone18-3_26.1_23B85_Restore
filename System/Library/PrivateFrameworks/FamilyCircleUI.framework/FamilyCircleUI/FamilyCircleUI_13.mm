uint64_t sub_21BCDAF54()
{
  type metadata accessor for CommLimitsNotManagedCell(0);
  type metadata accessor for CommLimitsItem(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21BE32770;
  v1 = sub_21BE2917C();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_21BBBEFE8();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();

  v6 = [v5 bundleForClass_];
  sub_21BE2599C();

  v7 = sub_21BE289DC();

  return v7;
}

void sub_21BCDB11C(void *a1)
{
  v3 = v1 + *(type metadata accessor for CommLimitsNotManagedCell(0) + 32);
  v4 = [*(v3 + *(type metadata accessor for CommLimitsItem(0) + 24)) dsid];
  if (v4)
  {
    if (a1)
    {
      v10 = v4;
      v5 = objc_opt_self();
      v6 = a1;
      v7 = [v5 communicationLimitsViewControllerForDSID_];
      [v6 pushViewController:v7 animated:1];

      v8 = sub_21BCDAE14();
      swift_beginAccess();
      if (*(v8 + 23))
      {

        *(v8 + 23) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_21BCB11C0(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
        sub_21BE25F0C();
      }
    }

    else
    {
    }
  }
}

id sub_21BCDB338()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0 + *(type metadata accessor for CommLimitsNotManagedCell(0) + 32);
    v3 = *(v2 + *(type metadata accessor for CommLimitsItem(0) + 24));
    v4 = v1;
    v5 = [v4 profilePictureForFamilyMember:v3 pictureDiameter:40.0];
    if (v5)
    {
      v6 = v5;
      v7 = sub_21BE25BFC();
      v9 = v8;

      v10 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v11 = sub_21BE25BCC();
      v12 = [v10 initWithData_];

      sub_21BBBEF94(v7, v9);
    }

    else
    {

      return 0;
    }

    return v12;
  }

  else
  {
    sub_21BBDAF04();
    sub_21BCB11C0(&qword_280BD8A20, sub_21BBDAF04, protocol conformance descriptor for FAProfilePictureStore);
    result = sub_21BE2726C();
    __break(1u);
  }

  return result;
}

id sub_21BCDB484@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CommLimitsNotManagedCell(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BCDBA50(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CommLimitsNotManagedCell);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21BCDB8E4(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v19 = v8;
  sub_21BE283EC();
  v9 = v17;
  v10 = v18;
  if (qword_27CDB4EA0 != -1)
  {
    swift_once();
  }

  v16 = qword_27CDB7E50;
  v11 = sub_21BCDAE14();
  swift_getKeyPath();
  v17 = v11;
  sub_21BCB11C0(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  sub_21BE25F1C();

  swift_beginAccess();
  v12 = *(v11 + 23);

  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = sub_21BCDB948;
  *(a1 + 24) = v7;
  v13 = v16;
  *(a1 + 32) = v16;
  *(a1 + 40) = v12;

  return v13;
}

uint64_t sub_21BCDB6E0@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for CommLimitsNotManagedCell(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[7];
  v26 = a2[6];
  v27 = v10;

  v25 = sub_21BCB0780();
  sub_21BCDBA50(a2, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CommLimitsNotManagedCell);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  sub_21BCDB8E4(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v15 = a1;
  v16 = sub_21BCDAF54();
  v18 = v17;
  v19 = sub_21BCDB338();
  v20 = *(v7 + 40);
  a3[13] = type metadata accessor for CommLimitsItem(0);
  a3[14] = sub_21BCB11C0(&qword_27CDB9008, type metadata accessor for CommLimitsItem, asc_21BE50EE8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 10);
  result = sub_21BCDBA50(a2 + v20, boxed_opaque_existential_1, type metadata accessor for CommLimitsItem);
  v23 = v26;
  *a3 = v27;
  a3[1] = v11;
  a3[2] = v23;
  a3[3] = v12;
  a3[4] = v25;
  a3[5] = sub_21BCDB9C8;
  a3[6] = v14;
  a3[7] = v16;
  a3[8] = v18;
  a3[9] = v19;
  a3[15] = 0;
  return result;
}

uint64_t sub_21BCDB8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommLimitsNotManagedCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCDB948@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for CommLimitsNotManagedCell(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21BCDB6E0(a1, v6, a2);
}

uint64_t sub_21BCDBA50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BCDBAB8()
{
  result = qword_27CDB9840;
  if (!qword_27CDB9840)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9848, qword_21BE40728);
    v4[0] = sub_21BBC925C();
    v4[1] = sub_21BCB1380();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB9840);
  }

  return result;
}

id FASettingsPresetsTableViewDecorator.__allocating_init(tableView:ruiTableView:parentViewController:)(uint64_t a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  swift_unknownObjectUnownedInit();
  *&v7[OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator____lazy_storage___settingsPresetsVC] = 0;
  *&v7[OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator_ruiTableView] = a2;
  swift_unknownObjectUnownedAssign();
  v11.receiver = v7;
  v11.super_class = v3;
  v8 = a2;
  v9 = objc_msgSendSuper2(&v11, sel_initWithTableView_, a1);
  swift_unknownObjectRelease();

  return v9;
}

id FASettingsPresetsTableViewDecorator.init(tableView:ruiTableView:parentViewController:)(uint64_t a1, void *a2, void *a3)
{
  swift_unknownObjectUnownedInit();
  *&v3[OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator____lazy_storage___settingsPresetsVC] = 0;
  *&v3[OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator_ruiTableView] = a2;
  swift_unknownObjectUnownedAssign();
  v10.receiver = v3;
  v10.super_class = type metadata accessor for FASettingsPresetsTableViewDecorator();
  v7 = a2;
  v8 = objc_msgSendSuper2(&v10, sel_initWithTableView_, a1);
  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_21BCDBD80(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator_ruiTableView) sections];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if ([v3 count] > a1 && (v5 = objc_msgSend(v4, sel_objectAtIndexedSubscript_, a1), sub_21BE294BC(), swift_unknownObjectRelease(), sub_21BCDCB3C(), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v18[0];
    v7 = [v18[0] attributes];
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    v9 = sub_21BE2890C();

    v15 = sub_21BE28A0C();
    v16 = v10;
    sub_21BE2958C();
    if (!*(v9 + 16) || (v11 = sub_21BBB31E8(v17), (v12 & 1) == 0))
    {

      sub_21BBB7238(v17);
      return 0;
    }

    sub_21BB3DCD4(*(v9 + 56) + 32 * v11, v18);
    sub_21BBB7238(v17);

    if (swift_dynamicCast())
    {
      if (v15 == 0xD000000000000013 && 0x800000021BE5C920 == v16)
      {

        return 1;
      }

      v14 = sub_21BE2995C();

      if (v14)
      {
        return 1;
      }
    }

    else
    {
LABEL_14:
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_21BCDBFC0(uint64_t a1, uint64_t a2)
{
  if (sub_21BCDBD80(a2))
  {
    return 1;
  }

  result = [v2 dataSource];
  if (result)
  {
    v6 = [result tableView:a1 numberOfRowsInSection:a2];
    swift_unknownObjectRelease();
    return v6;
  }

  return result;
}

id sub_21BCDC0E8()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator____lazy_storage___settingsPresetsVC;
  v2 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator____lazy_storage___settingsPresetsVC);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator____lazy_storage___settingsPresetsVC);
LABEL_5:
    v12 = v2;
    return v3;
  }

  v4 = v0;
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9868, &qword_21BE40778));
  v6 = sub_21BE2774C();
  Strong = swift_unknownObjectUnownedLoadStrong();
  [v6 willMoveToParentViewController_];

  result = swift_unknownObjectUnownedLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = v6;
    [v9 addChildViewController_];

    v11 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_21BCDC1D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21BE25EEC();
  if (sub_21BCDBD80(v4))
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
    v6 = sub_21BCDC0E8();
    v7 = [v6 view];

    if (v7)
    {
      [v7 removeFromSuperview];

      v8 = [v5 contentView];
      v9 = OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator____lazy_storage___settingsPresetsVC;
      v10 = [*&v2[OBJC_IVAR____TtC14FamilyCircleUI35FASettingsPresetsTableViewDecorator____lazy_storage___settingsPresetsVC] view];
      if (v10)
      {
        v11 = v10;
        [v8 addSubview_];

        v12 = [*&v2[v9] view];
        if (v12)
        {
          v13 = v12;
          [v12 setTranslatesAutoresizingMaskIntoConstraints_];

          v14 = [*&v2[v9] view];
          if (v14)
          {
            v16 = v14;
            LODWORD(v15) = 1148846080;
            [v14 setContentCompressionResistancePriority:1 forAxis:v15];

            v17 = [*&v2[v9] view];
            if (v17)
            {
              v18 = v17;
              v19 = [v17 topAnchor];

              v20 = [v5 contentView];
              v21 = [v20 topAnchor];

              v22 = [v19 constraintEqualToAnchor_];
              [v22 setActive_];

              v23 = [*&v2[v9] view];
              if (v23)
              {
                v24 = v23;
                v25 = [v23 bottomAnchor];

                v26 = [v5 contentView];
                v27 = [v26 bottomAnchor];

                v28 = [v25 constraintEqualToAnchor_];
                [v28 setActive_];

                v29 = [*&v2[v9] view];
                if (v29)
                {
                  v30 = v29;
                  v31 = [v29 leadingAnchor];

                  v32 = [v5 contentView];
                  v33 = [v32 leadingAnchor];

                  v34 = [v31 constraintEqualToAnchor_];
                  [v34 setActive_];

                  v35 = [*&v2[v9] view];
                  if (v35)
                  {
                    v36 = v35;
                    v37 = [v35 trailingAnchor];

                    v38 = [v5 contentView];
                    v39 = [v38 trailingAnchor];

                    v40 = [v37 constraintEqualToAnchor_];
                    [v40 setActive_];

                    v41 = *&v2[v9];
                    Strong = swift_unknownObjectUnownedLoadStrong();
                    v43 = v41;
                    [v43 didMoveToParentViewController_];

                    return;
                  }

                  goto LABEL_23;
                }

LABEL_22:
                __break(1u);
LABEL_23:
                __break(1u);
                return;
              }

LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  v44 = [v1 dataSource];
  if (v44)
  {
    v45 = v44;
    v46 = sub_21BE25ECC();
    [v45 tableView:a1 cellForRowAtIndexPath:v46];
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = objc_allocWithZone(MEMORY[0x277D75B48]);

    [v47 init];
  }
}

void sub_21BCDC7F4(uint64_t a1)
{
  v3 = sub_21BE25EEC();
  if ((sub_21BCDBD80(v3) & 1) == 0)
  {
    v4 = [v1 delegate];
    if (v4)
    {
      v5 = v4;
      if ([v4 respondsToSelector_])
      {
        v6 = sub_21BE25ECC();
        [v5 tableView:a1 heightForRowAtIndexPath:v6];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

id FASettingsPresetsTableViewDecorator.__allocating_init(tableView:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithTableView_];
  swift_unknownObjectRelease();
  return v2;
}

id FASettingsPresetsTableViewDecorator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FASettingsPresetsTableViewDecorator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21BCDCB3C()
{
  result = qword_27CDB9870;
  if (!qword_27CDB9870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB9870);
  }

  return result;
}

uint64_t sub_21BCDCB88(uint64_t a1)
{
  v1 = type metadata accessor for FAImageProvider();
  v14[3] = v1;
  v14[4] = &off_282D8FB28;
  v14[0] = swift_allocObject();
  v2 = type metadata accessor for FAFamilyImageLoader(0);
  v3 = objc_allocWithZone(v2);
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v14, v1);
  MEMORY[0x28223BE20](v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  v13[3] = v1;
  v13[4] = &off_282D8FB28;
  v13[0] = v8;
  v9 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__authResults] = sub_21BBB52D8(MEMORY[0x277D84F90]);
  *&v3[OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter] = 0x405E000000000000;
  *&v3[OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__loaders] = sub_21BBB6600(v9);
  sub_21BE25F4C();
  sub_21BB3A35C(v13, &v3[OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__imageProvider]);
  v12.receiver = v3;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v14);
  off_27CDB9878 = v10;
  return result;
}

id static FAFamilyImageLoader.shared.getter()
{
  if (qword_27CDB4F88 != -1)
  {
    swift_once();
  }

  v1 = off_27CDB9878;

  return v1;
}

uint64_t sub_21BCDD13C(uint64_t a1)
{
  swift_getKeyPath();
  sub_21BC75D70();
  sub_21BE25F0C();
}

uint64_t type metadata accessor for FAFamilyImageLoader(uint64_t a1)
{
  result = qword_27CDB98B8;
  if (!qword_27CDB98B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_21BCDD280(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BC75D70();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BCDCEF4(v4);
  return sub_21BCDD388;
}

double sub_21BCDD3F4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BC75D70();
  sub_21BE25F1C();

  v4 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

double sub_21BCDD4B0()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21BC75D70();
  sub_21BE25F1C();

  v1 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
  swift_beginAccess();
  return *(v3 + v1);
}

void sub_21BCDD53C(double a1)
{
  v3 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
  swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BC75D70();
    sub_21BE25F0C();
  }
}

uint64_t sub_21BCDD640()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t (*sub_21BCDD6A4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BC75D70();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BCDD394(v4);
  return sub_21BCDD7AC;
}

uint64_t sub_21BCDD7CC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21BC75D70();
  sub_21BE25F1C();

  swift_beginAccess();
}

uint64_t sub_21BCDD854@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_21BC75D70();
  sub_21BE25F1C();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

double sub_21BCDD8F0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_21BC75D70();
  sub_21BE25F0C();

  return result;
}

uint64_t sub_21BCDD97C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t sub_21BCDD9E8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21BC75D70();
  sub_21BE25F1C();

  v3 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__imageProvider;
  swift_beginAccess();
  return sub_21BB3A35C(v5 + v3, a1);
}

uint64_t sub_21BCDDA80(uint64_t a1, uint64_t a2)
{
  sub_21BB3A35C(a2, v14);
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v14, v14[3]);
  MEMORY[0x28223BE20](v3);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v12 = type metadata accessor for FAImageProvider();
  v13 = &off_282D8FB28;
  *&v11 = v7;
  v8 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__imageProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + v8));
  sub_21BB3D104(&v11, a1 + v8);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

id sub_21BCDDBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_21BC75D70();
  sub_21BE25F1C();

  swift_getKeyPath();
  v18 = v4;
  sub_21BE25F1C();

  v5 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
  swift_beginAccess();
  v6 = *(v18 + v5);
  v7 = objc_opt_self();
  v8 = sub_21BE289CC();
  v9 = sub_21BE289CC();
  v10 = [v7 profilePictureForContact:0 serverImageData:0 firstName:v8 lastName:v9 diameter:v6];

  v11 = sub_21BE25BFC();
  v13 = v12;

  v14 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v15 = sub_21BE25BCC();
  v16 = [v14 initWithData_];

  sub_21BBBEF94(v11, v13);
  return v16;
}

uint64_t sub_21BCDDD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[32] = a6;
  v7[33] = v6;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v7[35] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v7[36] = v8;
  v7[37] = *(v8 - 8);
  v7[38] = swift_task_alloc();
  sub_21BE28D7C();
  v7[39] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v7[40] = v10;
  v7[41] = v9;

  return MEMORY[0x2822009F8](sub_21BCDDEE0, v10, v9);
}

uint64_t sub_21BCDDEE0(uint64_t a1)
{
  v37 = v1;
  sub_21BE2614C();

  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FBC();

  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v1 + 296);
  v5 = *(v1 + 304);
  v7 = *(v1 + 288);
  if (v4)
  {
    v9 = *(v1 + 216);
    v8 = *(v1 + 224);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136380931;
    *(v10 + 4) = sub_21BB3D81C(0xD00000000000009DLL, 0x800000021BE5CA70, &v35);
    *(v10 + 12) = 2081;
    *(v10 + 14) = sub_21BB3D81C(v9, v8, &v35);
    _os_log_impl(&dword_21BB35000, v2, v3, "%{private}s Fetching remote photo for member %{private}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v12 = *(v1 + 264);
  v14 = *(v1 + 216);
  v13 = *(v1 + 224);
  v35 = qword_27CDB9880;
  v36 = off_27CDB9888;

  MEMORY[0x21CF03CA0](45, 0xE100000000000000);
  MEMORY[0x21CF03CA0](v14, v13);
  v16 = v35;
  v15 = v36;
  *(v1 + 336) = v35;
  *(v1 + 344) = v15;
  swift_getKeyPath();
  *(v1 + 352) = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader___observationRegistrar;
  *(v1 + 144) = v12;
  *(v1 + 360) = sub_21BC75D70();
  sub_21BE25F1C();

  v17 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__loaders;
  *(v1 + 368) = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__loaders;
  swift_beginAccess();
  v18 = *(v12 + v17);
  if (*(v18 + 16))
  {

    v19 = sub_21BBB3108(v16, v15);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);

      goto LABEL_8;
    }
  }

  v22 = *(v1 + 264);
  v24 = *(v1 + 216);
  v23 = *(v1 + 224);
  (*(*(v1 + 296) + 56))(*(v1 + 280), 1, 1, *(v1 + 288));
  v33 = v16;
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = v23;
  v25[4] = v22;
  *(v1 + 112) = xmmword_21BE40790;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98C8, &qword_21BE408F0);
  swift_allocObject();

  v26 = v22;
  v21 = sub_21BE262AC();
  swift_getKeyPath();
  *(v1 + 152) = v26;

  sub_21BE25F1C();

  *(v1 + 160) = v26;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v12 + v17);
  *(v12 + v17) = 0x8000000000000000;
  sub_21BC80370(v21, v33, v15, isUniquelyReferenced_nonNull_native);

  *(v12 + v17) = v35;
  swift_endAccess();
  *(v1 + 168) = v26;
  swift_getKeyPath();
  sub_21BE25F2C();

LABEL_8:
  *(v1 + 376) = v21;
  v28 = *(v1 + 272);
  v29 = sub_21BE28DAC();
  (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
  v34 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

  v30 = swift_task_alloc();
  *(v1 + 384) = v30;
  *v30 = v1;
  v30[1] = sub_21BCDE410;
  v31 = *(v1 + 272);

  return v34(v1 + 128, v31);
}

uint64_t sub_21BCDE410()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 272);
  if (v0)
  {

    sub_21BBDE578(v4);
    v5 = *(v3 + 320);
    v6 = *(v3 + 328);
    v7 = sub_21BCDE8A8;
  }

  else
  {
    sub_21BBDE578(v4);

    v5 = *(v3 + 320);
    v6 = *(v3 + 328);
    v7 = sub_21BCDE580;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BCDE580()
{

  v19 = v0[17];
  v20 = v0[16];
  v1 = v0[43];
  v2 = v0[42];
  v3 = v0[33];
  swift_getKeyPath();
  v0[22] = v3;
  sub_21BE25F1C();

  v0[23] = v3;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  sub_21BD402B0(0, v2, v1);
  swift_endAccess();
  v0[24] = v3;
  swift_getKeyPath();
  sub_21BE25F2C();

  swift_getKeyPath();
  v0[25] = v3;
  sub_21BE25F1C();

  swift_getKeyPath();
  v0[26] = v3;
  sub_21BE25F1C();

  v4 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
  swift_beginAccess();
  v5 = 0;
  v6 = *(v3 + v4);
  if (v19 >> 60 != 15)
  {
    v5 = sub_21BE25BCC();
  }

  v7 = objc_opt_self();
  v8 = sub_21BE289CC();
  v9 = sub_21BE289CC();
  v10 = [v7 profilePictureForContact:0 serverImageData:v5 firstName:v8 lastName:v9 diameter:v6];

  v11 = sub_21BE25BFC();
  v13 = v12;

  v14 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v15 = sub_21BE25BCC();
  v16 = [v14 initWithData_];

  sub_21BBBEF94(v11, v13);

  sub_21BBBF0B4(v20, v19);

  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_21BCDE8A8()
{

  v1 = v0[43];
  v2 = v0[42];
  v3 = v0[33];
  swift_getKeyPath();
  v0[22] = v3;
  sub_21BE25F1C();

  v0[23] = v3;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  sub_21BD402B0(0, v2, v1);
  swift_endAccess();
  v0[24] = v3;
  swift_getKeyPath();
  sub_21BE25F2C();

  swift_getKeyPath();
  v0[25] = v3;
  sub_21BE25F1C();

  swift_getKeyPath();
  v0[26] = v3;
  sub_21BE25F1C();

  v4 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = objc_opt_self();
  v7 = sub_21BE289CC();
  v8 = sub_21BE289CC();
  v9 = [v6 profilePictureForContact:0 serverImageData:0 firstName:v7 lastName:v8 diameter:v5];

  v10 = sub_21BE25BFC();
  v12 = v11;

  v13 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v14 = sub_21BE25BCC();
  v15 = [v13 initWithData_];

  sub_21BBBEF94(v10, v12);

  sub_21BBBF0B4(0, 0xF000000000000000);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_21BCDEB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_21BE28D7C();
  v4[7] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_21BCDEC2C, v6, v5);
}

uint64_t sub_21BCDEC2C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v10 = *(v1 + 32);
  v3 = sub_21BE28D6C();
  *(v1 + 80) = v3;
  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v10;
  v5 = swift_task_alloc();
  *(v1 + 96) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98D0, &qword_21BE40920);
  *v5 = v1;
  v5[1] = sub_21BCDED60;
  v7 = *(v1 + 16);
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v7, v3, v8, 0xD000000000000019, 0x800000021BE5CB10, sub_21BCE00DC, v4, v6);
}

uint64_t sub_21BCDED60()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_21BCDEE84;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_21BBB16EC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BCDEE84()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21BCDEEFC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v55 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98D8, &qword_21BE40928);
  v52 = *(v54 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v49 - v8;
  v9 = sub_21BE26A4C();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v58 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  swift_getKeyPath();
  aBlock[0] = a4;
  sub_21BC75D70();
  sub_21BE25F1C();

  swift_beginAccess();

  sub_21BCA3434(v14);

  v15 = objc_allocWithZone(MEMORY[0x277D08270]);
  v53 = a3;
  v16 = sub_21BE289CC();
  v17 = sub_21BE288EC();

  v18 = [v15 initWithMemberAltDSID:v16 ephemeralAuthResults:v17];

  if (v18)
  {
    v50 = v18;
    v19 = [objc_allocWithZone(sub_21BE2645C()) init];
    v20 = [objc_opt_self() memberPhotoRequest404CacheDurationHours];
    v21 = 1;
    v22 = [v20 getCacheDurationforMemberPhoto404Response_];

    if (v22)
    {
      v21 = sub_21BE2644C();
    }

    sub_21BE2614C();
    v23 = sub_21BE26A2C();
    v24 = sub_21BE28FFC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v49 = v19;
      v26 = v25;
      *v25 = 67109120;
      *(v25 + 4) = v22 != 0;
      _os_log_impl(&dword_21BB35000, v23, v24, "FAFamilyImageLoader shouldCache404Response %{BOOL}d", v25, 8u);
      v27 = v26;
      v19 = v49;
      MEMORY[0x21CF05C50](v27, -1, -1);
    }

    (*(v56 + 8))(v58, v57);
    if (v21)
    {
      v28 = v22 != 0;
      v30 = v51;
      v29 = v52;
      v31 = v19;
      v32 = v7;
      v33 = v54;
      (*(v52 + 16))(v51, v55, v54);
      v34 = a2;
      v35 = (*(v29 + 80) + 48) & ~*(v29 + 80);
      v36 = (v32 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      *(v37 + 16) = v28;
      *(v37 + 24) = v31;
      *(v37 + 32) = v34;
      *(v37 + 40) = v53;
      (*(v29 + 32))(v37 + v35, v30, v33);
      *(v37 + v36) = a4;
      aBlock[4] = sub_21BCE013C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21BCDFBD0;
      aBlock[3] = &block_descriptor_28;
      v38 = _Block_copy(aBlock);
      v39 = v31;

      v40 = a4;

      v41 = v50;
      [v50 performRequestWithHandler_];

      _Block_release(v38);
    }

    else
    {
      sub_21BCE00E8();
      v47 = swift_allocError();
      *v48 = 2;
      aBlock[0] = v47;
      sub_21BE28D1C();
    }
  }

  else
  {
    sub_21BE2614C();
    v42 = sub_21BE26A2C();
    v43 = sub_21BE28FDC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_21BB35000, v42, v43, "failed to create photoRequest. Should never happen", v44, 2u);
      MEMORY[0x21CF05C50](v44, -1, -1);
    }

    (*(v56 + 8))(v13, v57);
    sub_21BCE00E8();
    v45 = swift_allocError();
    *v46 = 1;
    aBlock[0] = v45;
    sub_21BE28D1C();
  }
}

void sub_21BCDF4DC(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v69 = a6;
  v74[5] = *MEMORY[0x277D85DE8];
  v15 = sub_21BE26A4C();
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v68 - v22;
  if (a4)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    if ([a2 statusCode] == 404)
    {
      sub_21BE2643C();
    }
  }

  else if (!a2)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    if (a3)
    {
      v25 = a2;
      v26 = a3;
      sub_21BE2614C();
      v27 = a1;
      v28 = v25;
      v29 = sub_21BE26A2C();
      v30 = sub_21BE28FDC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v69 = a8;
        v33 = v32;
        *v31 = 138412546;
        *(v31 + 4) = v28;
        *(v31 + 12) = 2112;
        *(v31 + 14) = v27;
        *v32 = a2;
        v32[1] = a1;
        v34 = v28;
        v35 = v27;
        _os_log_impl(&dword_21BB35000, v29, v30, "photoResponse has unexpected type %@ request: %@", v31, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AF0, &qword_21BE37410);
        swift_arrayDestroy();
        MEMORY[0x21CF05C50](v33, -1, -1);
        MEMORY[0x21CF05C50](v31, -1, -1);
      }

      (*(v70 + 8))(v23, v71);
      *&v72 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98D8, &qword_21BE40928);
      sub_21BE28D1C();
    }

    else
    {
      v48 = v24;
      v72 = 0u;
      v73 = 0u;
      v49 = a2;
      v50 = [v48 cropRect];
      if (v50)
      {
        v51 = v50;
        [v50 getValue_];
      }

      v52 = [v48 photoData];
      if (v52)
      {
        v53 = v52;
        v54 = sub_21BE25BFC();
        v56 = v55;

        v57 = sub_21BE25BCC();
        sub_21BBBEF94(v54, v56);
      }

      else
      {
        v57 = 0;
      }

      v58 = objc_opt_self();
      swift_getKeyPath();
      v74[2] = a9;
      sub_21BC75D70();
      sub_21BE25F1C();

      v59 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
      swift_beginAccess();
      v60 = [v58 circularImageData:v57 withDiameter:*(a9 + v59) crop:{v72, v73}];

      if (v60)
      {
        v61 = sub_21BE25BFC();
        v63 = v62;
      }

      else
      {
        v61 = 0;
        v63 = 0xF000000000000000;
      }

      sub_21BE2614C();

      v64 = sub_21BE26A2C();
      v65 = sub_21BE28FCC();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v74[0] = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_21BB3D81C(v69, a7, v74);
        _os_log_impl(&dword_21BB35000, v64, v65, "FAFamilyImageLoader image loaded for  altDSID: %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v67);
        MEMORY[0x21CF05C50](v67, -1, -1);
        MEMORY[0x21CF05C50](v66, -1, -1);
      }

      (*(v70 + 8))(v21, v71);
      v74[0] = v61;
      v74[1] = v63;
      sub_21BBBF0A0(v61, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98D8, &qword_21BE40928);
      sub_21BE28D2C();

      sub_21BBBF0B4(v61, v63);
    }

    return;
  }

LABEL_11:
  sub_21BE2614C();
  v36 = a1;
  v37 = a2;
  v38 = sub_21BE26A2C();
  v39 = sub_21BE28FDC();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v69 = a8;
    v42 = v41;
    *v40 = 138412546;
    *(v40 + 4) = v37;
    *(v40 + 12) = 2112;
    *(v40 + 14) = v36;
    *v41 = a2;
    v41[1] = a1;
    v43 = v37;
    v44 = v36;
    _os_log_impl(&dword_21BB35000, v38, v39, "photoResponse has unexpected type %@ request: %@", v40, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AF0, &qword_21BE37410);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v42, -1, -1);
    MEMORY[0x21CF05C50](v40, -1, -1);
  }

  (*(v70 + 8))(v18, v71);
  if (a3)
  {
    v45 = a3;
  }

  else
  {
    sub_21BCE00E8();
    v45 = swift_allocError();
    *v46 = 0;
  }

  *&v72 = v45;
  v47 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98D8, &qword_21BE40928);
  sub_21BE28D1C();
}

void sub_21BCDFBD0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

id FAFamilyImageLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FAFamilyImageLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FAFamilyImageLoader(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BCDFDE8(uint64_t a1)
{
  result = sub_21BE25F5C();
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

uint64_t sub_21BCE0028(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BCDEB8C(a1, v4, v5, v6);
}

unint64_t sub_21BCE00E8()
{
  result = qword_27CDB98E0;
  if (!qword_27CDB98E0)
  {
    result = swift_getWitnessTable(byte_21BE409B4, &type metadata for FAFamilyImageLoaderError, v0, v1);
    atomic_store(result, &qword_27CDB98E0);
  }

  return result;
}

void sub_21BCE013C(void *a1, void *a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98D8, &qword_21BE40928) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  sub_21BCDF4DC(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_21BCE0240()
{
  result = qword_27CDB98E8[0];
  if (!qword_27CDB98E8[0])
  {
    result = swift_getWitnessTable(asc_21BE4098C, &type metadata for FAFamilyImageLoaderError, v0, v1);
    atomic_store(result, qword_27CDB98E8);
  }

  return result;
}

void sub_21BCE02B4(uint64_t a1)
{
  sub_21BCB05D4();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_21BCE071C(319, &qword_27CDB7BA8, type metadata accessor for FamilyPictureStore, &qword_27CDB5CE0, type metadata accessor for FamilyPictureStore);
      if (v3 <= 0x3F)
      {
        sub_21BCE071C(319, &qword_27CDB9970, type metadata accessor for FamilyCircleStore, &qword_27CDB5C40, type metadata accessor for FamilyCircleStore);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21BCE03BC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 16) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_21BCE051C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 16] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          v20[1] = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

void sub_21BCE071C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_21BC1AD2C(a4, a5);
    v8 = sub_21BE270DC();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21BCE07E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9978, &qword_21BE40A90);
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  v4 = sub_21BE286EC();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE14C0], v4);
  v5 = sub_21BE2848C();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = sub_21BE2719C();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v36[0] = swift_getWitnessTable(MEMORY[0x277CE1138], v5);
  v36[1] = MEMORY[0x277CDF918];
  v11 = swift_getWitnessTable(MEMORY[0x277CDFAD8], v8, v36, v36[0]);
  v34 = v8;
  v35 = v11;
  v24 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  v19 = *(v26 + 24);
  v31 = v3;
  v32 = v19;
  v33 = v27;
  sub_21BE275DC();
  sub_21BE2847C();
  LOBYTE(v3) = sub_21BE27BCC();
  sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v3)
  {
    sub_21BE27BBC();
  }

  sub_21BE2816C();
  (*(v29 + 8))(v7, v5);
  v20 = v24;
  sub_21BE27DFC();
  (*(v28 + 8))(v10, v8);
  v34 = v8;
  v35 = v20;
  swift_getOpaqueTypeConformance2();
  sub_21BD37338();
  v21 = *(v13 + 8);
  v21(v16, OpaqueTypeMetadata2);
  sub_21BD37338();
  return (v21)(v18, OpaqueTypeMetadata2);
}

uint64_t sub_21BCE0C0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v15 = &v47 - v14;
  if (!*(v12 + 8))
  {
    type metadata accessor for FamilyMemberAbstractRowRUI(0, v5, a3, v13);
LABEL_34:
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    goto LABEL_35;
  }

  v57 = *(v12 + 8);
  v53 = &v47 - v14;
  v56 = *a1;
  v54 = type metadata accessor for FamilyMemberAbstractRowRUI(0, v5, a3, v13);
  v55 = a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21BE26CAC();

  if (!v73)
  {
LABEL_33:
    v15 = v53;
    goto LABEL_34;
  }

  v47 = v73;
  v16 = [v73 members];
  sub_21BBE66D8();
  v17 = sub_21BE28C3C();

  v51 = a4;
  v52 = v8;
  v49 = a3;
  v50 = v11;
  v48 = v5;
  if (v17 >> 62)
  {
LABEL_31:
    v18 = sub_21BE2951C();
    if (v18)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_32:

    v5 = v48;
    a3 = v49;
    v8 = v52;
    v11 = v50;
    goto LABEL_33;
  }

LABEL_5:
  v19 = 0;
  v58 = v17 & 0xC000000000000001;
  while (1)
  {
    if (v58)
    {
      v20 = MEMORY[0x21CF047C0](v19, v17);
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v23 = [v20 altDSID];
    if (!v23)
    {
      goto LABEL_6;
    }

    v24 = v23;
    v25 = sub_21BE28A0C();
    v27 = v26;

    if (v25 == v56 && v57 == v27)
    {
      break;
    }

    v29 = sub_21BE2995C();

    if (v29)
    {
      goto LABEL_21;
    }

LABEL_6:

    ++v19;
    if (v22 == v18)
    {
      goto LABEL_32;
    }
  }

LABEL_21:

  swift_getKeyPath();
  swift_getKeyPath();

  sub_21BE26CAC();

  v30 = v73;
  v31 = sub_21BE289CC();
  v32 = [v30 profilePictureForFamilyMemberWithAltDSID:v31 pictureDiameter:24.0];

  v8 = v52;
  a3 = v49;
  v11 = v50;
  if (!v32)
  {

    v5 = v48;
    goto LABEL_33;
  }

  v33 = sub_21BE25BFC();
  v35 = v34;

  v15 = v53;
  if (qword_27CDB4E58 != -1)
  {
    swift_once();
  }

  if (byte_27CDD41B0)
  {
    v36 = 40.0;
  }

  else
  {
    v36 = 38.0;
  }

  sub_21BBBEE74(v33, v35);
  *&v73 = sub_21BC1FF18(v21);
  *(&v73 + 1) = v37;
  sub_21BB41FA4();
  v38 = sub_21BE27DBC();
  v40 = v39;
  v42 = v41;
  v44 = v43 & 1;
  LOBYTE(v71[0]) = v43 & 1;
  sub_21BBBEE74(v33, v35);
  sub_21BBA4A38(v38, v40, v44);

  sub_21BBBEE74(v33, v35);
  sub_21BBA4A38(v38, v40, v44);

  sub_21BBC7C7C(v38, v40, v44);

  sub_21BBBEF94(v33, v35);
  sub_21BBBEF94(v33, v35);
  LOBYTE(v65) = v44;
  sub_21BBC7C7C(v38, v40, v71[0]);

  sub_21BBBEF94(v33, v35);
  *&v73 = v33;
  *(&v73 + 1) = v35;
  *&v74 = v36;
  *(&v74 + 1) = v36;
  LOBYTE(v75) = 1;
  *(&v75 + 1) = v38;
  *&v76 = v40;
  BYTE8(v76) = v44;
  v77 = v42;
  v5 = v48;
  a3 = v49;
  v8 = v52;
  v11 = v50;
LABEL_35:
  sub_21BD37338();
  v67 = v75;
  v68 = v76;
  v65 = v73;
  v66 = v74;
  v63 = 0;
  v64 = 1;
  v69 = v77;
  v70[0] = &v65;
  v70[1] = &v63;
  (*(v8 + 16))(v11, v15, v5);
  v70[2] = v11;
  sub_21BCE1294(&v73, v71);
  v62[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9978, &qword_21BE40A90);
  v62[1] = MEMORY[0x277CE1180];
  v62[2] = v5;
  v59 = sub_21BCE1304();
  v60 = MEMORY[0x277CE1170];
  v61 = a3;
  sub_21BDFE148(v70, 3uLL, v62);
  sub_21BCE13EC(&v73);
  v45 = *(v8 + 8);
  v45(v15, v5);
  v45(v11, v5);
  v71[2] = v67;
  v71[3] = v68;
  v72 = v69;
  v71[0] = v65;
  v71[1] = v66;
  return sub_21BCE13EC(v71);
}

uint64_t sub_21BCE1294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9978, &qword_21BE40A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BCE1304()
{
  result = qword_27CDB9980;
  if (!qword_27CDB9980)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9978, &qword_21BE40A90);
    v4[0] = sub_21BCE1388();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDB9980);
  }

  return result;
}

unint64_t sub_21BCE1388()
{
  result = qword_27CDB9988;
  if (!qword_27CDB9988)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9990, &qword_21BE40A98);
    result = swift_getWitnessTable(MEMORY[0x277CE14C0], v3, v0, v1);
    atomic_store(result, &qword_27CDB9988);
  }

  return result;
}

uint64_t sub_21BCE13EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9978, &qword_21BE40A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 FamilyMemberImageMarqueeView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9998, &qword_21BE40B30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4;
  v6 = *(v1 + 8);
  *v5 = sub_21BE2770C();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99A0, &qword_21BE40B38);
  sub_21BCE15B0(v6, &v5[*(v7 + 44)]);
  sub_21BE2869C();
  sub_21BE2725C();
  sub_21BB51074(v5, a1);
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99A8, &qword_21BE40B40) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_21BCE15B0@<X0>(void *a1@<X1>, void *a3@<X8>)
{
  v83 = a3;
  v4 = sub_21BE276EC();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x28223BE20](v4);
  v74 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99C0, &qword_21BE40C00);
  MEMORY[0x28223BE20](v76);
  v75 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99C8, &qword_21BE40C08);
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v80 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99D0, &qword_21BE40C10);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v79 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - v14;
  sub_21BE2869C();
  sub_21BE26F2C();
  v72 = v96;
  v73 = v94[7];
  v70 = v99;
  v71 = v98;
  v114 = 1;
  v113 = v95;
  v112 = v97;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v16 = v94[0];
  if (!v94[0])
  {
    v16 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v17 = [v16 members];
  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v18 = sub_21BE28C3C();

  v19 = type metadata accessor for FAImageMarqueeViewModel();
  v20 = swift_allocObject();
  v92 = sub_21BC2AC78(v18);
  sub_21BC29DF8(&v92);

  *(v20 + 16) = v92;
  v93[3] = v19;
  v93[4] = &off_282D8B0F8;
  v93[0] = v20;
  sub_21BB3A35C(v93, v94);
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BC2ACA4();
  v21 = a1;
  v22 = sub_21BE270CC();
  v24 = v23;
  __swift_destroy_boxed_opaque_existential_0Tm(v93);
  v94[5] = v22;
  v94[6] = v24;
  sub_21BCE1F14();
  sub_21BE27F5C();
  sub_21BCE1F68(v94);
  sub_21BE2869C();
  sub_21BE26F2C();
  v68 = v102;
  v69 = v100;
  v66 = v105;
  v67 = v104;
  v88 = 1;
  v87 = v101;
  v86 = v103;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass_];
  v27 = sub_21BE2599C();
  v29 = v28;

  v106 = v27;
  v107 = v29;
  sub_21BB41FA4();
  v30 = sub_21BE27DBC();
  v32 = v31;
  LOBYTE(v29) = v33;
  sub_21BE27C0C();
  v34 = sub_21BE27D9C();
  v36 = v35;
  v38 = v37;
  v84 = v15;
  v40 = v39;

  sub_21BBC7C7C(v30, v32, v29 & 1);

  v106 = v34;
  v107 = v36;
  LOBYTE(v32) = v38 & 1;
  LOBYTE(v108) = v38 & 1;
  v109 = v40;
  v41 = v74;
  sub_21BE276DC();
  v42 = v75;
  sub_21BE2808C();
  (*(v77 + 8))(v41, v78);
  sub_21BBC7C7C(v34, v36, v32);

  sub_21BCE1FBC();
  v43 = v85;
  sub_21BE280BC();
  sub_21BB3A4CC(v42, &qword_27CDB99C0, &qword_21BE40C00);
  sub_21BE2869C();
  sub_21BE26F2C();
  v77 = v108;
  v78 = v106;
  v75 = v111;
  v76 = v110;
  v91 = 1;
  v90 = v107;
  v89 = v109;
  LOBYTE(v30) = v114;
  LOBYTE(v41) = v113;
  v60 = v112;
  v44 = v79;
  sub_21BCE2048(v84, v79);
  v61 = v88;
  v62 = v87;
  v63 = v86;
  v45 = v80;
  v46 = v81;
  v47 = *(v81 + 16);
  v48 = v43;
  v49 = v82;
  v47(v80, v48, v82);
  v64 = v91;
  v65 = v90;
  LODWORD(v74) = v89;
  v50 = v83;
  *v83 = 0;
  *(v50 + 8) = v30;
  v51 = v72;
  v50[2] = v73;
  *(v50 + 24) = v41;
  v50[4] = v51;
  *(v50 + 40) = v60;
  v52 = v70;
  v50[6] = v71;
  v50[7] = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99E8, &unk_21BE40C60);
  sub_21BCE2048(v44, v50 + v53[12]);
  v54 = v50 + v53[16];
  *v54 = 0;
  v54[8] = v61;
  *(v54 + 2) = v69;
  v54[24] = v62;
  *(v54 + 4) = v68;
  v54[40] = v63;
  v55 = v66;
  *(v54 + 6) = v67;
  *(v54 + 7) = v55;
  v47(v50 + v53[20], v45, v49);
  v56 = v50 + v53[24];
  *v56 = 0;
  v56[8] = v64;
  *(v56 + 2) = v78;
  v56[24] = v65;
  *(v56 + 4) = v77;
  v56[40] = v74;
  v57 = v75;
  *(v56 + 6) = v76;
  *(v56 + 7) = v57;
  v58 = *(v46 + 8);
  v58(v85, v49);
  sub_21BB3A4CC(v84, &qword_27CDB99D0, &qword_21BE40C10);
  v58(v45, v49);
  return sub_21BB3A4CC(v44, &qword_27CDB99D0, &qword_21BE40C10);
}

unint64_t sub_21BCE1E24()
{
  result = qword_27CDB99B0;
  if (!qword_27CDB99B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB99A8, &qword_21BE40B40);
    v4[0] = sub_21BCE1EB0();
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB99B0);
  }

  return result;
}

unint64_t sub_21BCE1EB0()
{
  result = qword_27CDB99B8;
  if (!qword_27CDB99B8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9998, &qword_21BE40B30);
    result = swift_getWitnessTable(MEMORY[0x277CE1198], v3, v0, v1);
    atomic_store(result, &qword_27CDB99B8);
  }

  return result;
}

unint64_t sub_21BCE1F14()
{
  result = qword_27CDB99D8;
  if (!qword_27CDB99D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FAImageMarqueeView, &type metadata for FAImageMarqueeView, v0, v1);
    atomic_store(result, &qword_27CDB99D8);
  }

  return result;
}

unint64_t sub_21BCE1FBC()
{
  result = qword_27CDB99E0;
  if (!qword_27CDB99E0)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB99C0, &qword_21BE40C00);
    v4 = sub_21BBF7AC4();
    v5[0] = MEMORY[0x277CE0BC8];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27CDB99E0);
  }

  return result;
}

uint64_t sub_21BCE2048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99D0, &qword_21BE40C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCE20B8()
{
  swift_getKeyPath();
  sub_21BCE3F04(&qword_27CDB9A08, type metadata accessor for SharedPasswordsItemModel, byte_21BE40CC8);
  sub_21BE25F1C();

  return *(v0 + 16);
}

void sub_21BCE2158(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCE3F04(&qword_27CDB9A08, type metadata accessor for SharedPasswordsItemModel, byte_21BE40CC8);
    sub_21BE25F0C();
  }
}

uint64_t sub_21BCE2268()
{
  v1 = sub_21BE26A4C();
  v0[18] = v1;
  v0[19] = *(v1 - 8);
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  sub_21BE28D7C();
  v0[22] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[23] = v3;
  v0[24] = v2;

  return MEMORY[0x2822009F8](sub_21BCE2364, v3, v2);
}

uint64_t sub_21BCE2364(uint64_t a1)
{
  v15 = v1;
  sub_21BE261BC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[21];
  v6 = v1[18];
  v7 = v1[19];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE5CC00, &v14);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s Turning on iCloud keychain sync", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[25] = v10;
  v11 = objc_opt_self();
  v1[2] = v1;
  v1[7] = v1 + 29;
  v1[3] = sub_21BCE2590;
  v12 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F00, &qword_21BE40480);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21BD63750;
  v1[13] = &block_descriptor_29;
  v1[14] = v12;
  [v11 setUserVisibleKeychainSyncEnabled:1 withCompletion:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_21BCE2590()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_21BCE2A6C;
  }

  else
  {
    v5 = sub_21BCE26C0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BCE26C0(uint64_t a1)
{
  v13 = v1;
  sub_21BE261BC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[25];
  v6 = v1[20];
  v7 = v1[18];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE5CC00, &v12);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s User visible keychain sync is now enabled", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  v5(v6, v7);
  v10 = swift_task_alloc();
  v1[27] = v10;
  *v10 = v1;
  v10[1] = sub_21BCE28B8;
  v15 = MEMORY[0x277D839B0];

  return MEMORY[0x28215E468](v1 + 233, 5, 1000000000000000000, 0, 0x8AC7230489E80000, 0, &unk_21BE40D20, 0);
}

uint64_t sub_21BCE28B8()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_21BCE2AF0;
  }

  else
  {
    v5 = sub_21BCE29F4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BCE29F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BCE2A6C()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BCE2AF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BCE2B64(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_21BE26A4C();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  sub_21BE28D7C();
  v1[23] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[24] = v4;
  v1[25] = v3;

  return MEMORY[0x2822009F8](sub_21BCE2C58, v4, v3);
}

uint64_t sub_21BCE2C58()
{
  if ([objc_opt_self() isOngoingCredentialSharingEnabled] && (v1 = objc_msgSend(objc_opt_self(), sel_sharedMonitor), v2 = objc_msgSend(v1, sel_isKeychainSyncEnabled), v1, v2))
  {
    v3 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_21BCE2E94;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A90, &qword_21BE390E0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BC36ED8;
    v0[13] = &block_descriptor_21_0;
    v0[14] = v4;
    [v3 fetchSharingGroupsThatIncludeFamilyMembers_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    sub_21BE2637C();
    sub_21BCE3F04(&qword_27CDB6868, MEMORY[0x277D08018], MEMORY[0x277D08020]);
    swift_allocError();
    sub_21BE2636C();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_21BCE2E94()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_21BCE3044;
  }

  else
  {
    v5 = sub_21BCE2FC4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BCE2FC4()
{
  v1 = *(v0 + 152);

  *v1 = 1;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BCE3044()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[21];

  swift_willThrow();
  sub_21BE261BC();
  v5 = v1;
  sub_21BE295EC();
  MEMORY[0x21CF03CA0](0xD000000000000021, 0x800000021BE5CC00);
  MEMORY[0x21CF03CA0](0xD00000000000003FLL, 0x800000021BE5CC30);
  sub_21BC51D50(v1, 0, 0xE000000000000000);

  (*(v4 + 8))(v2, v3);
  sub_21BE2637C();
  sub_21BCE3F04(&qword_27CDB6868, MEMORY[0x277D08018], MEMORY[0x277D08020]);
  swift_allocError();
  sub_21BE2636C();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BCE31F8()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI24SharedPasswordsItemModel___observationRegistrar;
  v2 = sub_21BE25F5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedPasswordsItemModel(uint64_t a1)
{
  result = qword_27CDB99F8;
  if (!qword_27CDB99F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BCE32F0(uint64_t a1)
{
  result = sub_21BE25F5C();
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

id sub_21BCE3398()
{
  v0 = sub_21BE25B9C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v8 = sub_21BE26A2C();
  v9 = sub_21BE28FFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_21BB3D81C(0xD000000000000017, 0x800000021BE5CB90, &v18);
    _os_log_impl(&dword_21BB35000, v8, v9, "%s Opening shared passwords setup flow", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = [objc_opt_self() passwordManagerURLForFamilySharingGroupSetup];
  sub_21BE25B5C();

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v14 = result;
    v15 = sub_21BE25B2C();
    sub_21BBB52D8(MEMORY[0x277D84F90]);
    v16 = sub_21BE288EC();

    [v14 openSensitiveURL:v15 withOptions:v16];

    return (*(v1 + 8))(v3, v0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BCE3690()
{
  v1 = sub_21BE26A4C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v0[5] = swift_task_alloc();
  v2 = sub_21BE25D6C();
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v0[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BCE3818, 0, 0);
}

uint64_t sub_21BCE3818()
{
  sub_21BE28D7C();
  *(v0 + 80) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BCE38AC, v2, v1);
}

uint64_t sub_21BCE38AC()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  (*(v6 + 56))(v1, 1, 1, v5);
  sub_21BE25D5C();
  sub_21BE25D2C();
  (*(v3 + 8))(v2, v4);
  *(v0 + 112) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6860, &qword_21BE35700);
  swift_allocObject();
  *(v0 + 88) = sub_21BE262AC();

  return MEMORY[0x2822009F8](sub_21BCE39F4, 0, 0);
}

uint64_t sub_21BCE39F4()
{
  v1 = *(v0 + 40);
  v2 = sub_21BE28DAC();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v5 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_21BCE3AE0;

  return v5();
}

uint64_t sub_21BCE3AE0()
{
  v2 = *(*v1 + 40);
  *(*v1 + 104) = v0;

  sub_21BBDE578(v2);

  if (v0)
  {
    v3 = sub_21BCE3D38;
  }

  else
  {
    v3 = sub_21BCE3C34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BCE3C34()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4ED0 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_27CDB7E80 object:0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BCE3D38(uint64_t a1)
{
  v2 = v1[13];
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[2];
  sub_21BE261BC();
  v6 = v2;
  sub_21BE295EC();
  MEMORY[0x21CF03CA0](0xD000000000000012, 0x800000021BE57830);
  MEMORY[0x21CF03CA0](0xD000000000000046, 0x800000021BE5CBB0);
  sub_21BC51D50(v2, 0, 0xE000000000000000);

  (*(v4 + 8))(v3, v5);
  v7 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4ED0 != -1)
  {
    swift_once();
  }

  [v7 postNotificationName:qword_27CDB7E80 object:{0, 0, 0xE000000000000000}];

  v8 = v1[1];

  return v8();
}

uint64_t sub_21BCE3F04(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BCE3F54(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_21BE26A4C();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  sub_21BE28D7C();
  v2[29] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[30] = v5;
  v2[31] = v4;

  return MEMORY[0x2822009F8](sub_21BCE4048, v5, v4);
}

uint64_t sub_21BCE4048()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[32] = v3;
  v4 = [objc_allocWithZone(FACircleStateController) init];
  v0[33] = v4;
  v5 = [v1 topViewController];
  [v4 setPresenter_];

  [v4 setModalPresentationStyle_];
  v0[21] = sub_21BBB6068(MEMORY[0x277D84F90]);
  v6 = *(v2 + 16);
  v7 = [v6 dsid];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 stringValue];

    v10 = sub_21BE28A0C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  sub_21BD400D8(v10, v12, 0x64497265626D656DLL, 0xE800000000000000);
  v13 = [v6 altDSID];
  if (v13)
  {
    v14 = v13;
    v15 = sub_21BE28A0C();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  sub_21BD400D8(v15, v17, 0x44495344746C61, 0xE700000000000000);
  v18 = v0[21];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21BC7F9A8(0x6843796C696D6146, 0xEF7473696C6B6365, 0x6574736575716572, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
  if (*(v18 + 16))
  {
    sub_21BCA2A64(v18);

    v20 = sub_21BE288EC();

    [v3 setAdditionalParameters_];
  }

  else
  {
  }

  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_21BCE43C4;
  v21 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BC2D85C;
  v0[13] = &block_descriptor_30;
  v0[14] = v21;
  [v4 performWithContext:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BCE43C4()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_21BCE44CC, v2, v1);
}

uint64_t sub_21BCE44CC()
{
  v27 = v0;

  v1 = v0[22];
  v2 = [v1 error];
  if (v2)
  {
    v3 = v2;
    sub_21BE2614C();
    v4 = v3;
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FDC();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[32];
    v9 = v0[33];
    v11 = v0[27];
    v10 = v0[28];
    v12 = v0[26];
    if (v7)
    {
      v25 = v0[32];
      v13 = swift_slowAlloc();
      v24 = v9;
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_21BE29A5C();
      v23 = v12;
      v17 = sub_21BB3D81C(v15, v16, &v26);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_21BB35000, v5, v6, "Error loading stateController: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x21CF05C50](v14, -1, -1);
      MEMORY[0x21CF05C50](v13, -1, -1);

      (*(v11 + 8))(v10, v23);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }
  }

  else
  {
    v18 = [objc_opt_self() defaultCenter];
    if (qword_27CDB4EA8 != -1)
    {
      swift_once();
    }

    v20 = v0[32];
    v19 = v0[33];
    [v18 postNotificationName:qword_27CDB7E58 object:0];
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_21BCE47B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6128, &qword_21BE48D20);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v35 - v4;
  v6 = a1[5];
  v44 = a1[3];
  v5 = v44;
  v45 = MEMORY[0x277D84A98];
  v46 = v6;
  v47 = MEMORY[0x277CE1538];
  v7 = sub_21BE270BC();
  v40 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v39 = &v35 - v12;
  v13 = *(v5 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v19 = sub_21BE2785C();
  v41 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v35 - v21;
  if (*v23)
  {
    MEMORY[0x28223BE20](v20);
    v36 = v24;
    v37 = v19;
    v25 = a1[2];
    *(&v35 - 6) = v25;
    *(&v35 - 5) = v5;
    v26 = a1[4];
    *(&v35 - 4) = v26;
    *(&v35 - 3) = v6;
    *(&v35 - 2) = v24;
    v27 = v38;
    sub_21BE268EC();
    v28 = sub_21BE268FC();
    v29 = (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
    v35 = &v35;
    MEMORY[0x28223BE20](v29);
    *(&v35 - 6) = v25;
    *(&v35 - 5) = v5;
    *(&v35 - 4) = v26;
    *(&v35 - 3) = v6;
    *(&v35 - 2) = v36;
    sub_21BCE5638();
    sub_21BE2709C();
    swift_getWitnessTable(MEMORY[0x277CDD938], v7);
    v30 = v39;
    sub_21BD37338();
    v31 = *(v40 + 8);
    v31(v10, v7);
    sub_21BD37338();
    sub_21BD36B98(v10, v5, v7);
    v31(v10, v7);
    v31(v30, v7);
    v19 = v37;
  }

  else
  {
    sub_21BD37338();
    sub_21BD37338();
    swift_getWitnessTable(MEMORY[0x277CDD938], v7);
    sub_21BD36AA0(v16, v5);
    v32 = *(v13 + 8);
    v32(v16, v5);
    v32(v18, v5);
  }

  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDD938], v7);
  v43[0] = v6;
  v43[1] = WitnessTable;
  swift_getWitnessTable(MEMORY[0x277CE0340], v19, v43);
  sub_21BD37338();
  return (*(v41 + 8))(v22, v19);
}

uint64_t sub_21BCE4CFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  type metadata accessor for FANavigationLink(0, v11);
  sub_21BD37338();
  sub_21BD37338();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_21BCE4E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  type metadata accessor for FANavigationLink(0, v12);
  sub_21BD37338();
  sub_21BD37338();
  return (*(v4 + 8))(v6, a3);
}

uint64_t sub_21BCE4F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDB9A10, &unk_21BE40DE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void sub_21BCE4F90(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_21BCE54F0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21BCE5044(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_31;
  }

  v14 = ((((v10 + v11 + ((v9 + 1) & ~v9)) & ~v11) + *(*(v6 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 25;
  v15 = (a2 - v13 + 255) >> 8;
  if (v14 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v14];
      if (*&a1[v14])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = *&a1[v14];
      if (v19)
      {
        goto LABEL_27;
      }
    }

LABEL_31:
    if (v12 > 0xFE)
    {
      v26 = &a1[v9 + 1] & ~v9;
      if (v5 == v13)
      {
        return (*(v4 + 48))(v26);
      }

      else
      {
        return (*(v7 + 48))((v26 + v10 + v11) & ~v11, v8, v6);
      }
    }

    else
    {
      v23 = *a1;
      v24 = v23 >= 2;
      v25 = (v23 + 2147483646) & 0x7FFFFFFF;
      if (v24)
      {
        return (v25 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  if (!v18)
  {
    goto LABEL_31;
  }

  v19 = a1[v14];
  if (!a1[v14])
  {
    goto LABEL_31;
  }

LABEL_27:
  v21 = (v19 - 1) << (8 * v14);
  if (v14 <= 3)
  {
    v22 = *a1;
  }

  else
  {
    v21 = 0;
    v22 = *a1;
  }

  return v13 + (v22 | v21) + 1;
}

void sub_21BCE5240(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((((v11 + v12 + ((v10 + 1) & ~v10)) & ~v12) + *(*(v8 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v14 >= a3)
  {
    v19 = 0;
    if (v14 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = (a3 - v14 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v14 >= a2)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        if (v13 > 0xFE)
        {
          v22 = &a1[v10 + 1] & ~v10;
          if (v7 == v14)
          {
            v23 = *(v6 + 56);

            v23(v22);
          }

          else
          {
            v24 = *(v9 + 56);
            v25 = (v22 + v11 + v12) & ~v12;

            v24(v25);
          }
        }

        else
        {
          *a1 = a2 + 1;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }
  }

  v20 = ~v14 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_30:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

void sub_21BCE54F0(uint64_t a1)
{
  if (!qword_27CDB9A98)
  {
    type metadata accessor for CGSize(255);
    v1 = sub_21BE2946C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB9A98);
    }
  }
}

unint64_t sub_21BCE5548()
{
  result = qword_27CDB9AA0;
  if (!qword_27CDB9AA0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDB9A10, &unk_21BE40DE0);
    result = swift_getWitnessTable(MEMORY[0x277CE04B0], v3, v0, v1);
    atomic_store(result, &qword_27CDB9AA0);
  }

  return result;
}

unint64_t sub_21BCE5638()
{
  result = qword_27CDB61E8;
  if (!qword_27CDB61E8)
  {
    v3 = sub_21BE268FC();
    result = swift_getWitnessTable(MEMORY[0x277D40268], v3, v0, v1);
    atomic_store(result, &qword_27CDB61E8);
  }

  return result;
}

uint64_t sub_21BCE5690(uint64_t *a1, int a2)
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

uint64_t sub_21BCE56D8(uint64_t result, int a2, int a3)
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

uint64_t sub_21BCE5750(uint64_t a1)
{
  v2 = [*a1 altDSID];
  if (!v2)
  {
    v4 = 0;
    v6 = 0xE000000000000000;
    v7 = *(a1 + 16);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_6;
  }

  v3 = v2;
  v4 = sub_21BE28A0C();
  v6 = v5;

  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = *(a1 + 8);
  v9 = v7;
LABEL_6:
  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = *(a1 + 48);

  sub_21BCE5B54(a1, v13);
  sub_21BC0FFAC(v4, v6, v8, v9, sub_21BCE5BDC, v10);
}

uint64_t sub_21BCE5878(void *a1, char a2, uint64_t a3)
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-v11];
  if (a2)
  {
    sub_21BE2614C();
    sub_21BC51D50(a1, 0xD00000000000003BLL, 0x800000021BE5CCB0);
    (*(v7 + 8))(v10, v6);
    v19 = *(a3 + 40);
    v18 = 0;
  }

  else
  {
    sub_21BE2614C();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FFC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21BB35000, v13, v14, "Successfully fetched tokens.", v15, 2u);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    v19 = *(a3 + 40);
    v18 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  return sub_21BE2840C();
}

uint64_t sub_21BCE5A70@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *v11 = *v1;
  v12 = v3;
  v13 = *(v1 + 32);
  v14 = *(v1 + 48);
  v4 = [v11[0] hasSiwaEnabled];
  v9[0] = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  v5 = v10;
  v6 = swift_allocObject();
  v7 = v12;
  *(v6 + 16) = *v11;
  *(v6 + 32) = v7;
  *(v6 + 48) = v13;
  *(v6 + 64) = v14;
  *a1 = v4;
  *(a1 + 1) = v5;
  *(a1 + 8) = sub_21BCE5B4C;
  *(a1 + 16) = v6;
  return sub_21BCE5B54(v11, v9);
}

uint64_t objectdestroyTm_15()
{

  return swift_deallocObject();
}

unint64_t sub_21BCE5BE8()
{
  result = qword_27CDB9AA8;
  if (!qword_27CDB9AA8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9AB0, qword_21BE40F38);
    v4[0] = sub_21BCE5C74();
    v4[1] = sub_21BBDD1FC();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB9AA8);
  }

  return result;
}

unint64_t sub_21BCE5C74()
{
  result = qword_27CDB9AB8;
  if (!qword_27CDB9AB8)
  {
    result = swift_getWitnessTable(byte_21BE43618, &type metadata for MemberDetailsSiwaCell, v0, v1);
    atomic_store(result, &qword_27CDB9AB8);
  }

  return result;
}

uint64_t sub_21BCE5D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21BBB7EB8;

  return v9(a1, a2, a3);
}

uint64_t sub_21BCE5E40(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB8C3C;

  return v7(a1, a2);
}

uint64_t sub_21BCE5F58(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBE9D64;

  return v7(a1, a2);
}

void *sub_21BCE6070(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CF047C0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a3 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 name];
      if (v11)
      {
        v12 = v11;
        v13 = sub_21BE28A0C();
        v15 = v14;

        if (v13 == a1 && v15 == a2)
        {

          return v9;
        }

        v17 = sub_21BE2995C();

        if (v17)
        {
          return v9;
        }
      }

      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

uint64_t sub_21BCE61D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

void sub_21BCE6248()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  v1 = qword_280BD76E8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F0, &qword_21BE35CC8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_280BDCB90);
}

char *sub_21BCE62D4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277D08138] object:0];

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  v2 = qword_280BD76E8;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F0, &qword_21BE35CC8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return v0;
}

uint64_t sub_21BCE63B8()
{
  sub_21BCE62D4();

  return swift_deallocClassInstance();
}

double sub_21BCE6410()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2613C();
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21BB35000, v9, v10, "FAServicesUpdate received", v11, 2u);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_21BE28D7C();

  v13 = sub_21BE28D6C();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v1;
  sub_21BC54908(0, 0, v4, &unk_21BE41068, v14);

  return result;
}

uint64_t sub_21BCE6648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4[4] = swift_task_alloc();
  v4[5] = sub_21BE28D7C();
  v4[6] = sub_21BE28D6C();
  v4[7] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_21BCE6728, v6, v5);
}

void sub_21BCE6728()
{
  v1 = *(v0[3] + 40);
  v0[10] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v6 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_21BCE683C;
    v5 = v0[4];

    v6(v0 + 2, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BCE683C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 96) = v0;

  sub_21BBDE578(v3);

  v4 = *(v2 + 72);
  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_21BCE6AB4;
  }

  else
  {
    v6 = sub_21BCE69B8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BCE69B8()
{

  v1 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BCE6A44, v1, v0);
}

uint64_t sub_21BCE6A44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BCE6AB4()
{

  v1 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BCE6B38, v1, v0);
}

uint64_t sub_21BCE6B38()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_21BCE6BA8(uint64_t a1)
{

  sub_21BCE6410();

  return result;
}

uint64_t sub_21BCE6BE4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_21BE26A4C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_21BE28D7C();
  v2[9] = sub_21BE28D6C();
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_21BCE6CF0;

  return sub_21BCE72DC();
}

uint64_t sub_21BCE6CF0()
{
  *(*v1 + 88) = v0;

  v3 = sub_21BE28D0C();
  if (v0)
  {
    v4 = sub_21BCE7020;
  }

  else
  {
    v4 = sub_21BCE6E4C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21BCE6E4C()
{
  v14 = v0;

  sub_21BE2613C();

  v1 = sub_21BE26A2C();
  v2 = sub_21BE28FCC();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  if (v3)
  {
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(*(v7 + 16), *(v7 + 24), &v13);
    _os_log_impl(&dword_21BB35000, v1, v2, "%s returning services", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v10 = v0[3];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *v10 = v0[2];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BCE7020()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BCE7090@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 name];
  if (!v4)
  {
LABEL_7:
    v20 = sub_21BE25B9C();
    v21 = *(*(v20 - 8) + 56);

    return v21(a2, 1, 1, v20);
  }

  v5 = v4;
  v6 = sub_21BE28A0C();
  v8 = v7;

  v9 = *(v2 + qword_280BDCB90);
  if (!v9)
  {

    goto LABEL_7;
  }

  v10 = OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_account;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v12 = sub_21BC85A38();

  if (v12[2])
  {
    v13 = sub_21BBB3108(v6, v8);
    v15 = v14;

    if (v15)
    {
      v16 = v12[7];
      v17 = sub_21BE25B9C();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a2, v16 + *(v18 + 72) * v13, v17);

      return (*(v18 + 56))(a2, 0, 1, v17);
    }
  }

  else
  {
  }

  v22 = sub_21BE25B9C();
  return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
}

uint64_t sub_21BCE72DC()
{
  v1[20] = v0;
  v2 = sub_21BE26A4C();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = sub_21BE28D7C();
  v1[25] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[26] = v4;
  v1[27] = v3;

  return MEMORY[0x2822009F8](sub_21BCE73D4, v4, v3);
}

uint64_t sub_21BCE73D4()
{
  v1 = v0[20];
  v2 = v1[9];
  v3 = v1[10];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 6, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v4)
  {
    v5 = v4;
    v6 = [v4 members];

    sub_21BBE66D8();
    v7 = sub_21BE28C3C();

    if (!(v7 >> 62))
    {
LABEL_3:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }
  }

  v8 = sub_21BE2951C();
LABEL_4:

  if (v8)
  {
    sub_21BE2613C();
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21BB35000, v9, v10, "Reloading services store", v11, 2u);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    v13 = v0[22];
    v12 = v0[23];
    v15 = v0[20];
    v14 = v0[21];

    (*(v13 + 8))(v12, v14);
    v0[28] = type metadata accessor for FamilySignpost(0);
    swift_allocObject();
    v16 = sub_21BC84D18(0x7365636976726553, 0xEE0065726F747320, "loadStore", 9, 2u);
    v17 = qword_280BDCB90;
    v0[29] = v16;
    v0[30] = v17;
    v18 = *(v15 + v17);
    if (v18)
    {
      v0[33] = v18;
      v19 = v18;
      v0[34] = sub_21BE28D6C();
      v21 = sub_21BE28D0C();
      v0[35] = v21;
      v0[36] = v20;

      return MEMORY[0x2822009F8](sub_21BCE7B28, v21, v20);
    }

    else
    {
      v23 = [objc_opt_self() defaultStore];
      v0[31] = v23;
      if (v23)
      {
        v24 = v23;
        v0[2] = v0;
        v0[7] = v0 + 18;
        v0[3] = sub_21BCE77F0;
        v25 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9AC0, &unk_21BE41050);
        v0[10] = MEMORY[0x277D85DD0];
        v0[11] = 1107296256;
        v0[12] = sub_21BD4075C;
        v0[13] = &block_descriptor_31;
        v0[14] = v25;
        [v24 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

        return MEMORY[0x282200938](v0 + 2);
      }

      else
      {
        return sub_21BE2978C();
      }
    }
  }

  else
  {

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_21BCE77F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_21BCE7F5C;
  }

  else
  {
    v5 = sub_21BCE7920;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BCE7920()
{
  v16 = v0;
  v1 = v0[18];
  v2 = v0[31];
  if (v1)
  {
    v3 = v0[30];
    v4 = v0[20];
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    v5 = objc_allocWithZone(type metadata accessor for SubscriptionServicesDataLoader());
    v6 = sub_21BD263EC(v1, v14);

    v7 = *(v4 + v3);
    *(v4 + v3) = v6;

    v8 = *(v4 + v3);
    if (v8)
    {
      v0[33] = v8;
      v9 = v8;
      v0[34] = sub_21BE28D6C();
      v11 = sub_21BE28D0C();
      v0[35] = v11;
      v0[36] = v10;

      return MEMORY[0x2822009F8](sub_21BCE7B28, v11, v10);
    }

    MEMORY[0x21CF01210](0xD00000000000001ELL, 0x800000021BE5CDB0, 0xD000000000000010, 0x800000021BE573A0, 500);
    swift_willThrow();
  }

  else
  {

    MEMORY[0x21CF01210](0xD00000000000001ALL, 0x800000021BE5CD90, 0xD000000000000010, 0x800000021BE573A0, 500);
    swift_willThrow();
  }

  sub_21BC852D8();

  v12 = v0[1];

  return v12();
}

uint64_t sub_21BCE7B28()
{
  swift_allocObject();
  v0[37] = sub_21BC84D18(0xD000000000000014, 0x800000021BE5CDD0, "loadStore", 9, 2u);
  v0[38] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[39] = v1;
  *v1 = v0;
  v1[1] = sub_21BCE7C30;

  return sub_21BD264EC(&unk_21BE44278, 0);
}

uint64_t sub_21BCE7C30()
{

  v1 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BCE7D6C, v1, v0);
}

uint64_t sub_21BCE7D6C()
{

  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return MEMORY[0x2822009F8](sub_21BCE7DD0, v1, v2);
}

uint64_t sub_21BCE7DD0()
{

  sub_21BC852D8();

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_21BCE7E44, v1, v2);
}

uint64_t sub_21BCE7E44()
{
  v1 = v0[33];
  v2 = v0[20];

  v3 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_services];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[19] = v3;

  sub_21BE26CBC();
  LOBYTE(v3) = v1[OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_locationAllowed];

  *(v2 + qword_280BDCB88) = v3;
  sub_21BC852D8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BCE7F5C()
{
  v1 = *(v0 + 248);

  swift_willThrow();

  sub_21BC852D8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BCE7FF4()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F0, &qword_21BE35CC8);
  sub_21BE26C7C();
  return swift_endAccess();
}

void *sub_21BCE806C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v4 = sub_21BCE6070(a1, a2, v6);

  return v4;
}

void sub_21BCE8114(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BCE8194(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BCE8210(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BCE6648(a1, v4, v5, v6);
}

uint64_t sub_21BCE82C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BCE6BE4(a1, v1);
}

uint64_t type metadata accessor for PurchaseSharingItemView(uint64_t a1)
{
  result = qword_27CDB9AC8;
  if (!qword_27CDB9AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCE83D4(uint64_t a1)
{
  sub_21BCB057C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PurchaseSharingItem(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21BCE8474(uint64_t a1, unint64_t a2)
{
  v4 = (v3 + *(type metadata accessor for PurchaseSharingItemView(0) + 20));
  if (*v4 == 1)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = objc_opt_self();
    v7 = [v6 bundleForClass_];
    v8 = sub_21BE2599C();
    v10 = v9;

    v11 = type metadata accessor for PurchaseSharingItem(0);
    [*&v4[*(v11 + 24)] purchaseSharingEnabled];
    v12 = [v6 bundleForClass_];
    v13 = sub_21BE2599C();
    v15 = v14;

    *(&v45 + 1) = v11;
    *&v46 = sub_21BCE8C30();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
    sub_21BCE8C88(v4, boxed_opaque_existential_1, type metadata accessor for PurchaseSharingItem);
    LOWORD(v48) = 1026;
    *(&v48 + 1) = 0;
    *&v49 = &unk_282D857D0;
    *(&v49 + 1) = &unk_282D85800;
    LOBYTE(v50) = 0;
    *&v39 = v8;
    *(&v39 + 1) = v10;
    v40 = 0uLL;
    *&v41 = v13;
    *(&v41 + 1) = v15;
    sub_21BCE8CF0();

    *(&v46 + 1) = sub_21BE2852C();
    v43 = a2;
    *&v42 = 0;
    *(&v42 + 1) = a1;
    v48 = v39;
    v49 = 0uLL;
    v52 = a2;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v50 = v41;
    v51 = v42;
    sub_21BBC7A18(&v48, &v39);
    v47 = 0;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    return sub_21BBC7A74(&v48);
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v18 = swift_getObjCClassFromMetadata();
    v19 = objc_opt_self();
    v20 = [v19 bundleForClass_];
    v21 = sub_21BE2599C();
    v35 = v22;
    v36 = v21;

    v23 = type metadata accessor for PurchaseSharingItem(0);
    if ([*&v4[*(v23 + 24)] isOrganizer])
    {
      v24 = "PURCHASE_SHARING_SETUP_BUTTON";
    }

    else
    {
      v24 = "loadForServicesStore";
    }

    v25 = v24 | 0x8000000000000000;
    v26 = [v19 &selRef:v18 :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
    v27 = sub_21BE2599C();
    v29 = v28;

    v30 = [v19 bundleForClass_];
    v31 = sub_21BE2599C();
    v33 = v32;

    *(&v45 + 1) = v23;
    *&v46 = sub_21BCE8C30();
    v34 = __swift_allocate_boxed_opaque_existential_1(&v44);
    sub_21BCE8C88(v4, v34, type metadata accessor for PurchaseSharingItem);
    LOWORD(v48) = 1026;
    *(&v48 + 1) = 0;
    *&v49 = &unk_282D85830;
    *(&v49 + 1) = &unk_282D85860;
    LOBYTE(v50) = 0;
    *&v39 = v36;
    *(&v39 + 1) = v35;
    *&v40 = v27;
    *(&v40 + 1) = v29;
    sub_21BCE8CF0();

    *(&v46 + 1) = sub_21BE2852C();
    *&v42 = a2;
    *(&v42 + 1) = v31;
    v43 = v33;
    *&v41 = 0;
    *(&v41 + 1) = a1;
    v48 = v39;
    v49 = v40;
    v52 = v33;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v50 = v41;
    v51 = v42;
    sub_21BBC7968(&v48, &v39);
    v47 = 1;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    return sub_21BBC79C4(&v48);
  }
}

void *sub_21BCE89E0@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for PurchaseSharingItemView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BCE8C88(v1, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseSharingItemView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21BCE8B4C(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11[1] = v8;
  result = sub_21BE283EC();
  v10 = v11[3];
  *a1 = v11[2];
  a1[1] = v10;
  a1[2] = sub_21BCE8BB0;
  a1[3] = v7;
  return result;
}

uint64_t sub_21BCE8B4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseSharingItemView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCE8BB0(void *a1)
{
  v3 = *(type metadata accessor for PurchaseSharingItemView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BC27720(a1, v4);
}

unint64_t sub_21BCE8C30()
{
  result = qword_27CDB9AD8;
  if (!qword_27CDB9AD8)
  {
    v3 = type metadata accessor for PurchaseSharingItem(255);
    result = swift_getWitnessTable(a54, v3, v0, v1);
    atomic_store(result, &qword_27CDB9AD8);
  }

  return result;
}

uint64_t sub_21BCE8C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BCE8CF0()
{
  result = qword_27CDB9AE0;
  if (!qword_27CDB9AE0)
  {
    result = swift_getWitnessTable(byte_21BE4B814, &type metadata for FamilySharingIcon, v0, v1);
    atomic_store(result, &qword_27CDB9AE0);
  }

  return result;
}

unint64_t sub_21BCE8D44()
{
  result = qword_27CDB9AE8;
  if (!qword_27CDB9AE8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDB9AF0, qword_21BE41110);
    result = swift_getWitnessTable(byte_21BE477F8, v3, v0, v1);
    atomic_store(result, &qword_27CDB9AE8);
  }

  return result;
}

uint64_t sub_21BCE8DB0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21BCE8E20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_21BCE8F60(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
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
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_21BCE91C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v17 = MEMORY[0x277D84A98];
  v18 = v2;
  v19 = MEMORY[0x277D84AA8];
  v20 = v3;
  v4 = sub_21BE27D2C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-v9];
  v14 = v2;
  v15 = v3;
  v16 = v1;
  sub_21BE27D1C();
  swift_getWitnessTable(MEMORY[0x277CDE5A0], v4);
  sub_21BD37338();
  v11 = *(v5 + 8);
  v11(v8, v4);
  sub_21BD37338();
  return (v11)(v10, v4);
}

uint64_t sub_21BCE9360(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BD37338();
  sub_21BD37338();
  return (*(v3 + 8))(v5, a2);
}

char *sub_21BCE944C()
{
  v2 = *v0;
  v1 = v0[1];
  type metadata accessor for RemoteUIInviteHostingController();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v4 = [v3 init];
  v5 = &v4[OBJC_IVAR____TtC14FamilyCircleUI31RemoteUIInviteHostingController_inviteCode];
  *v5 = v2;
  *(v5 + 1) = v1;

  return v4;
}

uint64_t sub_21BCE94BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BCEAF24();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BCE9520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BCEAF24();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BCE9584(uint64_t a1)
{
  sub_21BCEAF24();
  sub_21BE27ABC();
  __break(1u);
}

uint64_t sub_21BCE95AC()
{
  v1 = sub_21BE26A4C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_21BE28D7C();
  v0[5] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x2822009F8](sub_21BCE969C, v3, v2);
}

uint64_t sub_21BCE969C(uint64_t a1)
{
  v13 = v1;
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FCC();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0xD000000000000014, 0x800000021BE5CFC0, &v12);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s forcing family reload", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_21BCE9868;

  return sub_21BD9DCC4();
}

uint64_t sub_21BCE9868(void *a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    v7 = sub_21BCEAF78;
  }

  else
  {

    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    v7 = sub_21BCE9994;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BCE9994()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BCE9B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_21BE26A4C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_21BE28D7C();
  v4[6] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_21BCE9C3C, v7, v6);
}

uint64_t sub_21BCE9C3C()
{
  v21 = v0;
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC14FamilyCircleUI31RemoteUIInviteHostingController_inviteCode;
  v0[9] = OBJC_IVAR____TtC14FamilyCircleUI31RemoteUIInviteHostingController_inviteCode;
  v3 = (v1 + v2);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_21BB41E7C(v4, v5);
  v8 = v7;

  v0[10] = v8;
  if (v8)
  {
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_21BCE9E68;

    return sub_21BCEA188(v6, v8);
  }

  else
  {

    sub_21BE2614C();
    v11 = sub_21BE26A2C();
    v12 = sub_21BE28FDC();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[4];
    v14 = v0[5];
    v16 = v0[3];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21BB3D81C(0xD000000000000011, 0x800000021BE5CFA0, &v20);
      _os_log_impl(&dword_21BB35000, v11, v12, "%s does not have valid invite code", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x21CF05C50](v18, -1, -1);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    (*(v15 + 8))(v14, v16);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_21BCE9E68()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21BCE9FAC, v3, v2);
}

uint64_t sub_21BCE9FAC()
{
  v1 = v0[9];
  v2 = v0[2];

  v3 = (v2 + v1);
  *v3 = 0;
  v3[1] = 0xE000000000000000;

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BCEA188(uint64_t a1, uint64_t a2)
{
  v3[44] = a2;
  v3[45] = v2;
  v3[43] = a1;
  v4 = sub_21BE26A4C();
  v3[46] = v4;
  v3[47] = *(v4 - 8);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  sub_21BE28D7C();
  v3[50] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v3[51] = v6;
  v3[52] = v5;

  return MEMORY[0x2822009F8](sub_21BCEA28C, v6, v5);
}

uint64_t sub_21BCEA28C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 36;
  v17 = v0 + 42;
  v4 = v0[44];
  v16 = v0[45];
  v5 = v0[43];
  v6 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[53] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000021BE55FB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F38, &qword_21BE36340);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_21BE32770;
  *(v8 + 32) = 0x6F43657469766E69;
  *(v8 + 40) = 0xEA00000000006564;
  *(v8 + 48) = v5;
  *(v8 + 56) = v4;

  v9 = sub_21BBB6068(v8);
  swift_setDeallocating();
  sub_21BB3A4CC(v8 + 32, &unk_27CDB6F40, qword_21BE36348);
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F30, &unk_21BE411F0);
  *(inited + 48) = v9;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v10 = sub_21BE288EC();

  [v6 setAdditionalParameters_];

  v11 = sub_21BE289CC();
  [v6 setClientName_];

  v12 = [objc_allocWithZone(FACircleStateController) initWithPresenter_];
  v1[54] = v12;
  [v12 setPresentationType_];
  [v12 setModalPresentationStyle_];
  v1[40] = sub_21BCEAA3C;
  v1[41] = 0;
  v1[36] = MEMORY[0x277D85DD0];
  v1[37] = 1107296256;
  v1[38] = sub_21BB42A18;
  v1[39] = &block_descriptor_32;
  v13 = _Block_copy(v3);
  [v12 setPresentationHandler_];
  _Block_release(v13);
  v1[2] = v1;
  v1[7] = v17;
  v1[3] = sub_21BCEA670;
  v14 = swift_continuation_init();
  v1[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
  v1[28] = MEMORY[0x277D85DD0];
  v1[29] = 1107296256;
  v1[30] = sub_21BC2D85C;
  v1[31] = &block_descriptor_13;
  v1[32] = v14;
  [v12 performWithContext:v6 completion:?];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21BCEA670()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 408);

  return MEMORY[0x2822009F8](sub_21BCEA778, v2, v1);
}

uint64_t sub_21BCEA778()
{
  v25 = v0;

  v1 = v0[42];
  v2 = [v1 error];
  if (v2)
  {
    v3 = v2;
    v4 = v0[49];
    v5 = v0[46];
    v6 = v0[47];
    sub_21BE2614C();
    v7 = v3;
    sub_21BC51D50(v3, 0xD000000000000021, 0x800000021BE5CF70);

    (*(v6 + 8))(v4, v5);
    v8 = [objc_opt_self() defaultCenter];
    if (qword_27CDB4EE8 != -1)
    {
      swift_once();
    }

    v10 = v0[53];
    v9 = v0[54];
    [v8 postNotificationName:qword_27CDB7E98 object:0 userInfo:0 deliverImmediately:1];
  }

  else
  {
    sub_21BE2614C();
    v11 = sub_21BE26A2C();
    v12 = sub_21BE28FFC();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[53];
    v14 = v0[54];
    v17 = v0[47];
    v16 = v0[48];
    v18 = v0[46];
    if (v13)
    {
      v23 = v0[48];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_21BB3D81C(0xD000000000000016, 0x800000021BE5CF50, &v24);
      _os_log_impl(&dword_21BB35000, v11, v12, "%s response ok", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x21CF05C50](v20, -1, -1);
      MEMORY[0x21CF05C50](v19, -1, -1);

      (*(v17 + 8))(v23, v18);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_21BCEAA3C()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21BB35000, v4, v5, "Invite view presented", v6, 2u);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

id sub_21BCEACD8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoteUIInviteHostingController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21BCEAD5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BCE9B48(a1, v4, v5, v6);
}

uint64_t sub_21BCEAE10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BCE95AC();
}

unint64_t sub_21BCEAED0()
{
  result = qword_27CDB9B80;
  if (!qword_27CDB9B80)
  {
    result = swift_getWitnessTable(aQ_8, &type metadata for ModernFamilyModalInviteRepresentable, v0, v1);
    atomic_store(result, &qword_27CDB9B80);
  }

  return result;
}

unint64_t sub_21BCEAF24()
{
  result = qword_27CDB9B88;
  if (!qword_27CDB9B88)
  {
    result = swift_getWitnessTable(asc_21BE412B8, &type metadata for ModernFamilyModalInviteRepresentable, v0, v1);
    atomic_store(result, &qword_27CDB9B88);
  }

  return result;
}

uint64_t sub_21BCEAF7C()
{
  v1 = qword_27CDB9B90;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9BF0, &unk_21BE41518);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  v3 = (v0 + qword_27CDD42D8);

  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

id sub_21BCEB010()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for EmergencyContactItemProvider(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BCEB088(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for EmergencyContactItemProvider(0);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_21BCEB114(uint64_t a1)
{
  v2 = qword_27CDB9B90;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9BF0, &unk_21BE41518);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  swift_unknownObjectRelease();
  v4 = (a1 + qword_27CDD42D8);

  return __swift_destroy_boxed_opaque_existential_0Tm(v4);
}

uint64_t sub_21BCEB1AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BCEB220(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BCEBB84();
}

uint64_t sub_21BCEB2D0(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BCEB368, v4, v3);
}

uint64_t sub_21BCEB368()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_21BBCDD2C;

    return sub_21BBCBAA4();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

void sub_21BCEB46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C18, &qword_21BE41558);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = *(a2 + qword_27CDD42D0);
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_21BCEE0B4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BCEB780;
  aBlock[3] = &block_descriptor_37_0;
  v13 = _Block_copy(aBlock);

  [v10 fetchMedicalIDData:a3 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_21BCEB630(void *a1, void *a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a2;
    sub_21BE261BC();
    v9 = a2;
    sub_21BC51D50(a2, 0xD00000000000001CLL, 0x800000021BE5D130);

    (*(v5 + 8))(v7, v4);
    v11 = a2;
    v12 = 1;
  }

  else
  {
    v11 = a1;
    v12 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C18, &qword_21BE41558);
  return sub_21BE28D2C();
}

void sub_21BCEB780(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_21BCEB7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C10, &qword_21BE41550);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = *(a2 + qword_27CDD42D0);
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_21BCEDFA4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BCCB2E0;
  aBlock[3] = &block_descriptor_33;
  v13 = _Block_copy(aBlock);

  [v10 fetchLastModifiedDate:a3 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_21BCEB9BC(uint64_t a1, void *a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9BF8, &qword_21BE41538);
  MEMORY[0x28223BE20](v8);
  v10 = (&v14 - v9);
  if (a2)
  {
    v11 = a2;
    sub_21BE261BC();
    v12 = a2;
    sub_21BC51D50(a2, 0xD000000000000016, 0x800000021BE5D0F0);

    (*(v5 + 8))(v7, v4);
    *v10 = a2;
  }

  else
  {
    sub_21BBA3854(a1, &v14 - v9, &qword_27CDB9720, &unk_21BE39F00);
  }

  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C10, &qword_21BE41550);
  return sub_21BE28D2C();
}

uint64_t sub_21BCEBB84()
{
  v1[7] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9BF8, &qword_21BE41538);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v2 = sub_21BE25D1C();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v3 = sub_21BE26A4C();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = sub_21BE28D7C();
  v1[23] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v1[24] = v5;
  v1[25] = v4;

  return MEMORY[0x2822009F8](sub_21BCEBD88, v5, v4);
}

uint64_t sub_21BCEBD88()
{
  v1 = v0[7];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();

  v0[26] = sub_21BC84D18(v3, v2, "computeItems", 12, 2u);
  v4 = qword_27CDD42D8;
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_21BCEBEA4;

  return sub_21BE19D18(v1 + v4);
}

uint64_t sub_21BCEBEA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 224) = a1;
  *(v4 + 232) = v1;

  v5 = *(v3 + 200);
  v6 = *(v3 + 192);
  if (v1)
  {
    v7 = sub_21BCED200;
  }

  else
  {
    v7 = sub_21BCEBFE8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BCEBFE8()
{
  v1 = v0[28];
  v2 = *(v0[7] + qword_27CDD42D0);
  v0[30] = v2;
  [v2 updateFamily_];
  sub_21BE261BC();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21BB35000, v3, v4, "EmergencyContactItemProvider calling getEmergencyContactsCount", v5, 2u);
    MEMORY[0x21CF05C50](v5, -1, -1);
  }

  v6 = v0[21];
  v7 = v0[17];
  v8 = v0[18];

  v9 = *(v8 + 8);
  v0[31] = v9;
  v9(v6, v7);
  v0[32] = sub_21BE28D6C();
  v11 = sub_21BE28D0C();
  v0[33] = v11;
  v0[34] = v10;

  return MEMORY[0x2822009F8](sub_21BCEC140, v11, v10);
}

uint64_t sub_21BCEC140(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[7];
  v4 = sub_21BE28D6C();
  v1[35] = v4;
  v5 = swift_task_alloc();
  v1[36] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v1[37] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C00, &qword_21BE41540);
  *v6 = v1;
  v6[1] = sub_21BCEC268;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v1 + 2, v4, v8, 0xD000000000000028, 0x800000021BE5D040, sub_21BCEDF94, v5, v7);
}

uint64_t sub_21BCEC268()
{
  v1 = *v0;

  v2 = *(v1 + 272);
  v3 = *(v1 + 264);

  return MEMORY[0x2822009F8](sub_21BCEC3C8, v3, v2);
}

uint64_t sub_21BCEC3C8()
{

  *(v0 + 304) = *(v0 + 16);
  *(v0 + 25) = *(v0 + 24);
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return MEMORY[0x2822009F8](sub_21BCEC43C, v1, v2);
}

uint64_t sub_21BCEC43C(uint64_t a1)
{
  if (*(v1 + 25) == 1)
  {
    v2 = *(v1 + 304);
    v3 = *(v1 + 248);
    v4 = *(v1 + 224);
    v5 = *(v1 + 160);
    v6 = *(v1 + 136);

    v7 = v2;
    sub_21BE261BC();
    v8 = v2;
    sub_21BC51D50(v2, 0xD000000000000022, 0x800000021BE5D070);
    sub_21BCD70BC(v2, 1);
    v3(v5, v6);
    swift_willThrow();

    sub_21BCD70BC(v2, 1);
    sub_21BC852D8();

    v9 = *(v1 + 8);

    return v9();
  }

  else
  {
    sub_21BE261BC();
    v11 = sub_21BE26A2C();
    v12 = sub_21BE28FCC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v1 + 304);
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v13;
      _os_log_impl(&dword_21BB35000, v11, v12, "EmergencyContactItemProvider count is %ld", v14, 0xCu);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    v15 = *(v1 + 304);
    v16 = *(v1 + 248);
    v18 = *(v1 + 144);
    v17 = *(v1 + 152);
    v19 = *(v1 + 136);

    *(v1 + 312) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v17, v19);
    if (v15 < 1)
    {
      v22 = *(v1 + 240);
      v23 = *(v1 + 224);
      v24 = *(v1 + 104);
      v25 = *(v1 + 112);
      v26 = *(v1 + 56);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C08, &qword_21BE41548);
      v27 = (type metadata accessor for EmergencyContactDataItem(0) - 8);
      v28 = (*(*v27 + 80) + 32) & ~*(*v27 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_21BE32770;
      v30 = v29 + v28;
      (*(v25 + 56))(v30 + v27[9], 1, 1, v24);
      *v30 = 0;
      *(v30 + 8) = 0;
      *(v30 + 16) = v23;
      *(v30 + v27[10]) = v22;
      *(v30 + v27[11]) = 3;
      swift_getKeyPath();
      swift_getKeyPath();
      *(v1 + 32) = v29;
      v31 = v23;
      swift_unknownObjectRetain();
      v32 = v26;
      sub_21BE26CBC();
      v33 = *(v1 + 224);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21BE26CAC();

      v34 = *(v1 + 40);
      sub_21BC852D8();

      v35 = *(v1 + 8);

      return v35(v34);
    }

    else
    {
      sub_21BE25D0C();
      *(v1 + 320) = sub_21BE28D6C();
      v21 = sub_21BE28D0C();
      *(v1 + 328) = v21;
      *(v1 + 336) = v20;

      return MEMORY[0x2822009F8](sub_21BCEC94C, v21, v20);
    }
  }
}

uint64_t sub_21BCEC94C(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[7];
  v4 = sub_21BE28D6C();
  v1[43] = v4;
  v5 = swift_task_alloc();
  v1[44] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v1[45] = v6;
  *v6 = v1;
  v6[1] = sub_21BCECA60;
  v7 = v1[12];
  v8 = v1[10];
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v7, v4, v9, 0xD000000000000022, 0x800000021BE5D0A0, sub_21BCEDF9C, v5, v8);
}

uint64_t sub_21BCECA60()
{
  v1 = *v0;

  v2 = *(v1 + 336);
  v3 = *(v1 + 328);

  return MEMORY[0x2822009F8](sub_21BCECBC0, v3, v2);
}

uint64_t sub_21BCECBC0()
{

  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return MEMORY[0x2822009F8](sub_21BCECC24, v1, v2);
}

uint64_t sub_21BCECC24()
{
  v1 = v0[11];
  v2 = v0[12];

  sub_21BBA3854(v2, v1, &qword_27CDB9BF8, &qword_21BE41538);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[31];
    v4 = v0[20];
    v5 = v0[17];
    v45 = v0[16];
    v6 = v0[14];
    v42 = v0[28];
    v44 = v0[13];
    v7 = v0[12];
    v8 = *v0[11];
    sub_21BE261BC();
    v9 = v8;
    sub_21BC51D50(v8, 0xD00000000000001CLL, 0x800000021BE5D0D0);

    v3(v4, v5);
    swift_willThrow();

    sub_21BB3A4CC(v7, &qword_27CDB9BF8, &qword_21BE41538);
    (*(v6 + 8))(v45, v44);
    sub_21BC852D8();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[13];
    v13 = v0[14];
    v15 = v0[8];
    v14 = v0[9];
    sub_21BC1E320(v0[11], v14);
    sub_21BBA3854(v14, v15, &qword_27CDB9720, &unk_21BE39F00);
    v16 = *(v13 + 48);
    v17 = v16(v15, 1, v12);
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[13];
    v21 = v0[14];
    v22 = v0[8];
    v23 = v0[9];
    if (v17 == 1)
    {
      sub_21BE25C7C();
      sub_21BB3A4CC(v23, &qword_27CDB9720, &unk_21BE39F00);
      v24 = *(v21 + 8);
      v24(v18, v20);
      v46 = v24;
      if (v16(v22, 1, v20) != 1)
      {
        sub_21BB3A4CC(v0[8], &qword_27CDB9720, &unk_21BE39F00);
      }
    }

    else
    {
      sub_21BB3A4CC(v0[9], &qword_27CDB9720, &unk_21BE39F00);
      v46 = *(v21 + 8);
      v46(v18, v20);
      (*(v21 + 32))(v19, v22, v20);
    }

    v39 = v0[38];
    v40 = v0[30];
    v25 = v0[28];
    v26 = v0[16];
    v27 = v0[13];
    v28 = v0[14];
    v41 = v0[7];
    v43 = v0[12];
    (*(v28 + 32))(v26, v0[15], v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C08, &qword_21BE41548);
    v29 = (type metadata accessor for EmergencyContactDataItem(0) - 8);
    v30 = (*(*v29 + 80) + 32) & ~*(*v29 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_21BE32770;
    v32 = v31 + v30;
    v33 = v29[9];
    (*(v28 + 16))(v32 + v33, v26, v27);
    (*(v28 + 56))(v32 + v33, 0, 1, v27);
    *v32 = 1;
    *(v32 + 8) = v39;
    *(v32 + 16) = v25;
    *(v32 + v29[10]) = v40;
    *(v32 + v29[11]) = 3;
    swift_getKeyPath();
    swift_getKeyPath();
    v0[6] = v31;
    v34 = v25;
    swift_unknownObjectRetain();
    v35 = v41;
    sub_21BE26CBC();
    sub_21BB3A4CC(v43, &qword_27CDB9BF8, &qword_21BE41538);
    v46(v26, v27);
    v36 = v0[28];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v37 = v0[5];
    sub_21BC852D8();

    v38 = v0[1];

    return v38(v37);
  }
}

uint64_t sub_21BCED200()
{

  sub_21BC852D8();

  v1 = *(v0 + 8);

  return v1();
}

double sub_21BCED2EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FCC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21BB35000, v9, v10, "EmergencyContactItemProvider medical change", v11, 2u);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_21BE28D7C();
  v13 = v1;
  v14 = sub_21BE28D6C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  sub_21BBA932C(0, 0, v4, &unk_21BE41530, v15);

  return result;
}

uint64_t sub_21BCED524()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCBAA4();
}

void sub_21BCED5E8(void *a1)
{
  v1 = a1;
  sub_21BCED2EC();
}

void sub_21BCED650(uint64_t a1)
{
  sub_21BCED6F4(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21BCED6F4(uint64_t a1)
{
  if (!qword_27CDB9BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9BB0, &qword_21BE50830);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB9BA8);
    }
  }
}

void sub_21BCED7A8(uint64_t a1)
{
  sub_21BC19578();
  if (v1 <= 0x3F)
  {
    sub_21BC1D2A0(319);
    if (v2 <= 0x3F)
    {
      sub_21BCED864();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21BCED864()
{
  result = qword_27CDB9BC8;
  if (!qword_27CDB9BC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CDB9BC8);
  }

  return result;
}

uint64_t sub_21BCED8C8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_21BE26CBC();
}

uint64_t sub_21BCED934(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BC5C62C(*(v1 + *(a1 + 36)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BCED9BC(uint64_t a1, uint64_t a2)
{
  sub_21BE28ABC();
  sub_21BC5C62C(*(v2 + *(a2 + 36)));
  sub_21BE28ABC();
}

uint64_t sub_21BCEDA3C(uint64_t a1, uint64_t a2)
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BC5C62C(*(v2 + *(a2 + 36)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BCEDAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 36);
  v4 = *(a2 + v3);
  v5 = sub_21BC5C62C(*(a1 + v3));
  v7 = v6;
  if (v5 == sub_21BC5C62C(v4) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21BE2995C();
  }

  return v10 & 1;
}

uint64_t sub_21BCEDBB4(uint64_t a1)
{
  *(a1 + 8) = sub_21BCEDC38(&qword_27CDB9BD8, type metadata accessor for EmergencyContactDataItem, byte_21BE4142C);
  result = sub_21BCEDC38(&qword_27CDB9BE0, type metadata accessor for EmergencyContactDataItem, "ݓ?f");
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BCEDC38(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BCEDC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21BCEDE7C(v2, a2);
  v5 = *(v2 + *(a1 + 32));
  *(a2 + *(type metadata accessor for EmergencyContactView(0) + 20)) = v5;

  return swift_unknownObjectRetain();
}

uint64_t sub_21BCEDD00(uint64_t a1)
{
  *(a1 + 8) = sub_21BCEDC38(&qword_27CDB9BE8, type metadata accessor for EmergencyContactItemProvider, byte_21BE34830);
  result = sub_21BCEDC38(&qword_27CDB6058, type metadata accessor for EmergencyContactItemProvider, byte_21BE34878);
  *(a1 + 16) = result;
  return result;
}

void sub_21BCEDD84(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BCEDE04(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21BE26CBC();
}

uint64_t sub_21BCEDE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyContactDataItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCEDEE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BCED524();
}

uint64_t sub_21BCEDFA4(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C10, &qword_21BE41550);

  return sub_21BCEB9BC(a1, a2);
}

uint64_t objectdestroy_30Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_21BCEE0B4(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C18, &qword_21BE41558);

  return sub_21BCEB630(a1, a2);
}

uint64_t sub_21BCEE148(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21BCEE19C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_21BCEE220@<Q0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = sub_21BE2838C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v7 = sub_21BE25BCC();
  v8 = [v6 initWithData_];

  if (v8)
  {
    v17 = v8;
    sub_21BE2836C();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v9 = sub_21BE283CC();

    (*(v3 + 8))(v5, v2);
    v10 = *(v1 + 32);
    v16[1] = v9;
    if (v10)
    {
      sub_21BE2869C();
      sub_21BE2725C();
      LOBYTE(v23) = 1;
      *&v19[54] = v42;
      *&v19[70] = v43;
      *&v19[86] = v44;
      *&v19[102] = v45;
      *&v19[6] = v39;
      *&v19[22] = v40;
      *&v19[38] = v41;
      v46 = v9;
      LOWORD(v47[0]) = 1;
      *(&v47[3] + 2) = *&v19[48];
      *(&v47[2] + 2) = *&v19[32];
      *(&v47[1] + 2) = *&v19[16];
      *(v47 + 2) = *v19;
      *&v47[7] = *(&v45 + 1);
      *(&v47[6] + 2) = *&v19[96];
      *(&v47[5] + 2) = *&v19[80];
      *(&v47[4] + 2) = *&v19[64];
      sub_21BCEEE28(&v46);
      v36 = v47[4];
      v37 = v47[5];
      v38[0] = v47[6];
      *(v38 + 9) = *(&v47[6] + 9);
      v33 = v47[1];
      v34 = v47[2];
      v35 = v47[3];
    }

    else
    {
      sub_21BE2869C();
      sub_21BE26F2C();
      *&v20[38] = v41;
      *&v20[22] = v40;
      *&v20[6] = v39;
      v46 = v9;
      LOWORD(v47[0]) = 1;
      *&v47[3] = *(&v41 + 1);
      *(&v47[2] + 2) = *&v20[32];
      *(&v47[1] + 2) = *&v20[16];
      *(v47 + 2) = *v20;
      sub_21BCEEE14(&v46);
      v37 = v47[5];
      v38[0] = v47[6];
      *(v38 + 9) = *(&v47[6] + 9);
      v33 = v47[1];
      v34 = v47[2];
      v35 = v47[3];
      v36 = v47[4];
    }

    v31 = v46;
    v32 = v47[0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C40, &unk_21BE416F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C50, &qword_21BE41700);
    sub_21BCEED9C(&qword_27CDB9C38, &qword_27CDB9C40, &unk_21BE416F0, MEMORY[0x277CDFC60]);
    sub_21BCEED9C(&qword_27CDB9C48, &qword_27CDB9C50, &qword_21BE41700, MEMORY[0x277CDF678]);
    sub_21BE2784C();
    v37 = v21[6];
    v38[0] = v22[0];
    *(v38 + 9) = *(v22 + 9);
    v33 = v21[2];
    v34 = v21[3];
    v35 = v21[4];
    v36 = v21[5];
    v31 = v21[0];
    v32 = v21[1];
    sub_21BCEEE20(&v31);
    v47[5] = v37;
    v47[6] = v38[0];
    *(&v47[6] + 10) = *(v38 + 10);
    v47[1] = v33;
    v47[2] = v34;
    v47[3] = v35;
    v47[4] = v36;
    v46 = v31;
    v47[0] = v32;
    sub_21BBA3854(v21, &v23, &qword_27CDB9C28, &qword_21BE416E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C28, &qword_21BE416E8);
    sub_21BCEECD0();
    sub_21BE2784C();

    sub_21BB3A4CC(v21, &qword_27CDB9C28, &qword_21BE416E8);
    v47[5] = v29;
    v47[6] = v30[0];
    *(&v47[6] + 10) = *(v30 + 10);
    v47[1] = v25;
    v47[2] = v26;
    v47[3] = v27;
    v47[4] = v28;
    v46 = v23;
    v47[0] = v24;
  }

  else
  {
    sub_21BCEECC4(&v31);
    v29 = v37;
    v30[0] = v38[0];
    *(v30 + 10) = *(v38 + 10);
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v28 = v36;
    v23 = v31;
    v24 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C28, &qword_21BE416E8);
    sub_21BCEECD0();
    sub_21BE2784C();
  }

  v11 = v47[6];
  v12 = v18;
  *(v18 + 96) = v47[5];
  *(v12 + 112) = v11;
  *(v12 + 122) = *(&v47[6] + 10);
  v13 = v47[2];
  *(v12 + 32) = v47[1];
  *(v12 + 48) = v13;
  v14 = v47[4];
  *(v12 + 64) = v47[3];
  *(v12 + 80) = v14;
  result = v47[0];
  *v12 = v46;
  *(v12 + 16) = result;
  return result;
}

void *sub_21BCEE8B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a4@<X8>, double a5@<D0>)
{
  v9 = sub_21BE2838C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = a2;
    v14 = [v13 profilePictureForFamilyMember:a1 pictureDiameter:a5];
    if (v14)
    {
      v15 = v14;
      v16 = sub_21BE25BFC();
      v18 = v17;

      v19 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v20 = sub_21BE25BCC();
      v21 = [v19 initWithData_];

      sub_21BBBEF94(v16, v18);
      if (v21)
      {
        v22 = v21;
        sub_21BE2836C();
        (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
        v23 = sub_21BE283CC();

        (*(v10 + 8))(v12, v9);
        sub_21BE2869C();
        sub_21BE26F2C();
        LOBYTE(v31[0]) = 1;
        *(v33 + 6) = v33[5];
        *(&v33[1] + 6) = v33[6];
        *(&v33[2] + 6) = v34;
        v28[0] = v23;
        v28[1] = 0;
        *v29 = 1;
        *&v29[2] = v33[0];
        *&v29[18] = v33[1];
        *&v29[34] = v33[2];
        *&v29[48] = *(&v34 + 1);
        v33[0] = v23;
        v33[1] = *v29;
        v33[2] = *&v29[16];
        v33[3] = *&v29[32];
        *&v33[4] = *(&v34 + 1);
        v30 = 0;
        BYTE8(v33[4]) = 0;
        sub_21BBA3854(v28, v31, &qword_27CDB9C50, &qword_21BE41700);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C50, &qword_21BE41700);
        sub_21BCEED9C(&qword_27CDB9C48, &qword_27CDB9C50, &qword_21BE41700, MEMORY[0x277CDF678]);
        sub_21BE2784C();

        result = sub_21BB3A4CC(v28, &qword_27CDB9C50, &qword_21BE41700);
        v33[2] = v31[2];
        v33[3] = v32[0];
        *(&v33[3] + 9) = *(v32 + 9);
        v33[0] = v31[0];
        v33[1] = v31[1];
LABEL_7:
        v26 = v33[3];
        a4[2] = v33[2];
        a4[3] = v26;
        *(a4 + 57) = *(&v33[3] + 9);
        v27 = v33[1];
        *a4 = v33[0];
        a4[1] = v27;
        return result;
      }
    }

    else
    {
    }

    v25 = sub_21BE2837C();
    LOBYTE(v28[0]) = 1;
    *&v31[0] = v25;
    BYTE8(v32[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C50, &qword_21BE41700);
    sub_21BCEED9C(&qword_27CDB9C48, &qword_27CDB9C50, &qword_21BE41700, MEMORY[0x277CDF678]);
    result = sub_21BE2784C();
    goto LABEL_7;
  }

  sub_21BBDAF04();
  sub_21BC2ACA4();
  result = sub_21BE2726C();
  __break(1u);
  return result;
}

unint64_t sub_21BCEECD0()
{
  result = qword_27CDB9C30;
  if (!qword_27CDB9C30)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9C28, &qword_21BE416E8);
    v4[0] = sub_21BCEED9C(&qword_27CDB9C38, &qword_27CDB9C40, &unk_21BE416F0, MEMORY[0x277CDFC60]);
    v4[1] = sub_21BCEED9C(&qword_27CDB9C48, &qword_27CDB9C50, &qword_21BE41700, MEMORY[0x277CDF678]);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB9C30);
  }

  return result;
}

uint64_t sub_21BCEED9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = sub_21BCB2D08();
    v8[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BCEEE48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_21BCEEE90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BCEEEF8()
{
  result = qword_27CDB9C58;
  if (!qword_27CDB9C58)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9C60, &qword_21BE41898);
    v4[0] = sub_21BCEECD0();
    v4[1] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB9C58);
  }

  return result;
}

unint64_t sub_21BCEEF84()
{
  result = qword_27CDB9C68;
  if (!qword_27CDB9C68)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9C70, &qword_21BE418A0);
    v4[0] = sub_21BCEED9C(&qword_27CDB9C48, &qword_27CDB9C50, &qword_21BE41700, MEMORY[0x277CDF678]);
    v4[1] = MEMORY[0x277CE1078];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB9C68);
  }

  return result;
}

uint64_t sub_21BCEF04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2838C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BE2837C();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v8 = sub_21BE283CC();

  (*(v5 + 8))(v7, v4);
  sub_21BE2869C();
  sub_21BE26F2C();
  v15[0] = 1;
  *&v16[6] = v17;
  *&v16[22] = v18;
  *&v16[38] = v19;
  v9 = swift_allocObject();
  v10 = *(a1 + 80);
  *(v9 + 80) = *(a1 + 64);
  *(v9 + 96) = v10;
  v11 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v11;
  v12 = *(a1 + 48);
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = v12;
  v13 = *&v16[16];
  *(a2 + 18) = *v16;
  *(v9 + 112) = *(a1 + 96);
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v13;
  *(a2 + 50) = *&v16[32];
  *(a2 + 64) = *&v16[46];
  *(a2 + 72) = sub_21BCEFD10;
  *(a2 + 80) = v9;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return sub_21BCEFD18(a1, v15);
}

double sub_21BCEF264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_21BE2754C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a1 + 72);
  v9 = *(a1 + 64);
  v36 = v9;
  if (v37 == 1)
  {
    v10 = v9;
  }

  else
  {

    sub_21BE28FEC();
    v11 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v36, &qword_27CDB9C78, &qword_21BE41900);
    (*(v6 + 8))(v8, v5);
    v10 = v29;
  }

  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  if (*(a1 + 48))
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
  }

  v16 = sub_21BCDDBB8(v12, v13, v14, v15);

  if (v16 && (v17 = UIImagePNGRepresentation(v16), v16, v17))
  {
    v18 = sub_21BE25BFC();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  v34 = *(a1 + 80);
  v35 = *(a1 + 96);
  v29 = *(a1 + 80);
  v30 = *(a1 + 96);
  v32 = v18;
  v33 = v20;
  sub_21BBA3854(&v34, v31, &qword_27CDB9C80, &qword_21BE41908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C80, &qword_21BE41908);
  sub_21BE2840C();
  sub_21BBBF0B4(v29, *(&v29 + 1));

  v21 = sub_21BE28DAC();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  sub_21BE28D7C();
  sub_21BCEFD18(a1, &v29);
  v22 = sub_21BE28D6C();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  v25 = *(a1 + 80);
  *(v23 + 96) = *(a1 + 64);
  *(v23 + 112) = v25;
  *(v23 + 128) = *(a1 + 96);
  v26 = *(a1 + 16);
  *(v23 + 32) = *a1;
  *(v23 + 48) = v26;
  v27 = *(a1 + 48);
  *(v23 + 64) = *(a1 + 32);
  *(v23 + 80) = v27;
  sub_21BC54908(0, 0, v4, &unk_21BE41918, v23);

  return result;
}

uint64_t sub_21BCEF60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v5 = sub_21BE2754C();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  sub_21BE28D7C();
  v4[20] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[21] = v7;
  v4[22] = v6;

  return MEMORY[0x2822009F8](sub_21BCEF700, v7, v6);
}

uint64_t sub_21BCEF700()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 72);
  v3 = v1[8];
  *(v0 + 104) = v3;
  *(v0 + 112) = v2;
  if (v2 == 1)
  {
    v4 = v3;
  }

  else
  {
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);

    sub_21BE28FEC();
    v8 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(v0 + 104, &qword_27CDB9C78, &qword_21BE41900);
    (*(v6 + 8))(v5, v7);
    v4 = *(v0 + 120);
    v1 = *(v0 + 128);
  }

  *(v0 + 184) = v4;
  v9 = v1[2];
  v10 = v1[3];
  if (v1[6])
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v11 = v1[4];
    v12 = v1[5];
  }

  *(v0 + 192) = v12;
  v13 = *v1;
  v14 = v1[1];
  v15 = *((*MEMORY[0x277D85000] & *v4) + 0x150);
  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  *(v0 + 200) = v16;
  *v16 = v0;
  v16[1] = sub_21BCEF954;

  return v18(v13, v14, v9, v10, v11, v12);
}

uint64_t sub_21BCEF954(uint64_t a1)
{
  v3 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v4 = v3[21];
    v5 = v3[22];
    v6 = sub_21BCEFBB8;
  }

  else
  {
    v7 = v3[23];

    v4 = v3[21];
    v5 = v3[22];
    v6 = sub_21BCEFA74;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21BCEFA74()
{
  v1 = *(v0 + 208);

  if (v1)
  {
    v2 = *(v0 + 208);
    v3 = UIImagePNGRepresentation(v2);

    if (v3)
    {
      v1 = sub_21BE25BFC();
      v5 = v4;

      goto LABEL_6;
    }

    v1 = 0;
  }

  v5 = 0xF000000000000000;
LABEL_6:
  v6 = *(v0 + 128);
  v7 = *(v6 + 96);
  *(v0 + 16) = *(v6 + 80);
  *(v0 + 32) = v7;
  v8 = *(v6 + 96);
  *(v0 + 40) = *(v6 + 80);
  *(v0 + 56) = v8;
  *(v0 + 88) = v1;
  *(v0 + 96) = v5;
  sub_21BBA3854(v0 + 16, v0 + 64, &qword_27CDB9C80, &qword_21BE41908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C80, &qword_21BE41908);
  sub_21BE2840C();
  sub_21BBBF0B4(*(v0 + 40), *(v0 + 48));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21BCEFBB8()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

__n128 sub_21BCEFC3C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v3;
  v10 = *(v1 + 96);
  v4 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v4;
  v5 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v5;
  sub_21BCEF04C(v9, v11);
  v6 = v11[5];
  *(a1 + 64) = v11[4];
  *(a1 + 80) = v6;
  *(a1 + 96) = v12;
  v7 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v7;
  result = v11[3];
  *(a1 + 32) = v11[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21BCEFCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21BCEFD50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return sub_21BCEF60C(a1, v4, v5, v1 + 32);
}

unint64_t sub_21BCEFE00()
{
  result = qword_27CDB9C88;
  if (!qword_27CDB9C88)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9C90, &qword_21BE41920);
    v4[0] = sub_21BCEFE84();
    result = swift_getWitnessTable(MEMORY[0x277CE0FB0], v3, v4);
    atomic_store(result, &qword_27CDB9C88);
  }

  return result;
}

unint64_t sub_21BCEFE84()
{
  result = qword_27CDB9C98;
  if (!qword_27CDB9C98)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9CA0, &qword_21BE41928);
    v4[0] = sub_21BCEED9C(&qword_27CDB9C48, &qword_27CDB9C50, &qword_21BE41700, MEMORY[0x277CDF678]);
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB9C98);
  }

  return result;
}

uint64_t sub_21BCEFF30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BCEFF78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BCEFFE4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6128, &qword_21BE48D20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9CA8, &qword_21BE41A40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v10 = v21;
  if (!v21)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v11 = [v10 memberForDSID_];

  if (v11)
  {
    v20 = &v20;
    v13 = MEMORY[0x28223BE20](v12);
    *(&v20 - 2) = v11;
    *(&v20 - 1) = v1;
    v14 = MEMORY[0x28223BE20](v13);
    *(&v20 - 2) = v11;
    *(&v20 - 1) = v1;
    MEMORY[0x28223BE20](v14);
    *(&v20 - 2) = sub_21BCF17A4;
    *(&v20 - 1) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9CB0, &qword_21BE41A90);
    sub_21BCF17BC();
    sub_21BE268EC();
    v16 = sub_21BE268FC();
    v17 = (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
    MEMORY[0x28223BE20](v17);
    *(&v20 - 2) = sub_21BCF17AC;
    *(&v20 - 1) = (&v20 - 4);
    sub_21BCF1910();
    sub_21BCF1964(&qword_27CDB61E8, MEMORY[0x277D40260], MEMORY[0x277D40268]);
    sub_21BE2709C();

    (*(v7 + 32))(a1, v9, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a1, v18, 1, v6);
}

id sub_21BCF03A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 48);
  v7 = *(a2 + 32);
  swift_unknownObjectWeakLoadStrong();
  v20 = *(a2 + 80);
  v21 = *(a2 + 88);
  v16 = v6;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v9 = *(a2 + 64);
  v10 = *(a2 + 56);

  [a1 isGuardian];
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *a3 = a1;
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BC2ACA4();

  v11 = a1;
  *(a3 + 8) = sub_21BE270CC();
  *(a3 + 16) = v12;
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BCF1964(&qword_27CDB68F0, type metadata accessor for FAFamilyLandingPageViewModel, protocol conformance descriptor for FAFamilyLandingPageViewModel);
  *(a3 + 24) = sub_21BE270CC();
  *(a3 + 32) = v13;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(a3 + 48) = v17;
  *(a3 + 56) = v18;
  *(a3 + 64) = v19;
  *(a3 + 72) = v10;
  *(a3 + 80) = v9;
  type metadata accessor for FamilyCircleStore(0);
  sub_21BCF1964(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore, protocol conformance descriptor for AsyncStore<A>);
  *(a3 + 88) = sub_21BE270CC();
  *(a3 + 96) = v14;
  sub_21BE283EC();
  *(a3 + 104) = v20;
  *(a3 + 112) = v21;
  sub_21BE283EC();
  *(a3 + 120) = v20;
  *(a3 + 128) = v21;
  sub_21BE283EC();
  *(a3 + 136) = v20;
  *(a3 + 144) = v21;
  *(a3 + 152) = sub_21BE26BFC();
  *(a3 + 160) = v16;

  return v16;
}

uint64_t sub_21BCF0674@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 32);
  v6 = [a1 dsid];
  if (!v6)
  {
    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v6 = sub_21BE293EC();
  }

  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BCF1964(&qword_27CDB68F0, type metadata accessor for FAFamilyLandingPageViewModel, protocol conformance descriptor for FAFamilyLandingPageViewModel);
  result = sub_21BE270CC();
  *a3 = v6;
  a3[1] = result;
  a3[2] = v8;
  return result;
}

id sub_21BCF074C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = v1;
  if (!v1)
  {
    return [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  return result;
}

uint64_t sub_21BCF0808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21BE32770;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v5 = v15;
  if (!v15)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v6 = [v5 memberForDSID_];

  if (v6 && (v7 = sub_21BE2916C(), v6, (v7 & 1) != 0))
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = MEMORY[0x277D83C10];
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 64) = v9;
  *(v4 + 32) = v8;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  v12 = [v11 bundleForClass_];
  sub_21BE2599C();

  v13 = sub_21BE289DC();

  return v13;
}

void sub_21BCF0A18(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v8 = v38[0];
  if (!v38[0])
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v9 = [v8 memberForDSID_];

  v10 = 0uLL;
  if (v9)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v11 = v38[0];
    if (!v38[0])
    {
      v11 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v12 = [v11 me];

    v37 = v9;
    if (v12)
    {
      if ([v12 isOrganizer])
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21BE26CAC();

        v13 = v38[0];
        if (!v38[0])
        {
          v13 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
        }

        v14 = [v13 memberForDSID_];

        if (!v14 || (v15 = sub_21BE2916C(), v14, (v15 & 1) == 0))
        {
          if (([v37 isGuardian] & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9CF0, &qword_21BE41B58);
            sub_21BB3B038(&qword_27CDB9D00, &qword_27CDB9CF0, &qword_21BE41B58, byte_21BE48120);
            sub_21BE2784C();
            sub_21BCF1BBC(v38[0], v38[1], v39, *(&v39 + 1), v40, *(&v40 + 1));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9CE8, &qword_21BE41B50);
            sub_21BCF1AD0();
            sub_21BE2784C();

            sub_21BCF1C14(v38[0], v38[1], v39, *(&v39 + 1), v40, *(&v40 + 1));
            goto LABEL_24;
          }
        }
      }

      v9 = v37;
    }

    if ([v9 isGuardian])
    {
      v16 = swift_allocObject();
      v16[2] = a1;
      v16[3] = a2;
      v16[4] = a3;
      v17 = swift_allocObject();
      v17[2] = a1;
      v17[3] = a2;
      v17[4] = a3;
      v18 = a1;
      v19 = a3;
      swift_retain_n();
      swift_retain_n();
      v20 = v18;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9CF0, &qword_21BE41B58);
      sub_21BB3B038(&qword_27CDB9D00, &qword_27CDB9CF0, &qword_21BE41B58, byte_21BE48120);
      sub_21BE2784C();
      sub_21BCF1BBC(v38[0], v38[1], v39, *(&v39 + 1), v40, *(&v40 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9CE8, &qword_21BE41B50);
      sub_21BCF1AD0();
      sub_21BE2784C();

      sub_21BCF1C14(v38[0], v38[1], v39, *(&v39 + 1), v40, *(&v40 + 1));

LABEL_24:
      v10 = *v38;
      v23 = v39;
      v24 = v40;
      v22 = v41;
      goto LABEL_25;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v25 = v38[0];
    if (!v38[0])
    {
      v25 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v26 = [v25 memberForDSID_];

    if (v26)
    {
      v27 = sub_21BE2916C();

      if (v27)
      {
        v28 = swift_allocObject();
        v28[2] = a1;
        v28[3] = a2;
        v28[4] = a3;
        v29 = swift_allocObject();
        v29[2] = a1;
        v29[3] = a2;
        v29[4] = a3;
        v30 = swift_allocObject();
        v30[2] = a1;
        v30[3] = a2;
        v30[4] = a3;
        v31 = a1;
        v32 = a3;
        v33 = v31;
        v34 = v32;
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        v35 = v33;
        v36 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9CE8, &qword_21BE41B50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9CF0, &qword_21BE41B58);
        sub_21BCF1AD0();
        sub_21BB3B038(&qword_27CDB9D00, &qword_27CDB9CF0, &qword_21BE41B58, byte_21BE48120);
        sub_21BE2784C();

        goto LABEL_24;
      }
    }

    v22 = -256;
    v23 = 0uLL;
    v24 = 0uLL;
    v10 = 0uLL;
  }

  else
  {
    v22 = -512;
    v23 = 0uLL;
    v24 = 0uLL;
  }

LABEL_25:
  *a4 = v10;
  *(a4 + 16) = v23;
  *(a4 + 32) = v24;
  *(a4 + 48) = v22;
}

uint64_t sub_21BCF1250@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  a1[1] = v5;
  a1[2] = v6 & 1;
  a1[3] = v7;
  return result;
}

void sub_21BCF132C(uint64_t a1@<X8>)
{
  *a1 = 11;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_282D86830;
  *(a1 + 24) = &unk_282D86860;
  *(a1 + 32) = 0;
}

uint64_t sub_21BCF1354@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_21BCF1434@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v4 = v11;
  if (!v11)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v5 = sub_21BE2907C();

  if (v5)
  {
    sub_21BCF1C6C(a1);
    sub_21BB41FA4();
    result = sub_21BE27DBC();
    v10 = v9 & 1;
  }

  else
  {
    result = 0;
    v7 = 0;
    v10 = 0;
    v8 = 0;
  }

  *a2 = result;
  a2[1] = v7;
  a2[2] = v10;
  a2[3] = v8;
  return result;
}

uint64_t sub_21BCF1538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21BCF0808(a1, a2, a3);
  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_21BCF1590@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  sub_21BCF2070(a1);
  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5 & 1;
  a2[3] = v6;
  return result;
}

uint64_t sub_21BCF15E8@<X0>(uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v7 = v12;
  if (!v12)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v8 = sub_21BE2910C();

  if (v8 >> 62)
  {
    v9 = sub_21BE2951C();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 <= 1)
  {
    v11 = 11;
  }

  else
  {
    v11 = 12;
  }

  *a4 = v11;
  *(a4 + 1) = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = 0;
  return result;
}

id sub_21BCF1704()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = v1;
  if (!v1)
  {
    return [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  return result;
}

unint64_t sub_21BCF17BC()
{
  result = qword_27CDB9CB8;
  if (!qword_27CDB9CB8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9CB0, &qword_21BE41A90);
    v4[0] = sub_21BCF1874();
    v4[1] = sub_21BB3B038(&qword_27CDB6B20, &qword_27CDB6B28, &qword_21BE35DB8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB9CB8);
  }

  return result;
}

unint64_t sub_21BCF1874()
{
  result = qword_27CDB9CC0;
  if (!qword_27CDB9CC0)
  {
    result = swift_getWitnessTable(byte_21BE3B6F8, &type metadata for FamilyMemberGuardianDetails, v0, v1);
    atomic_store(result, &qword_27CDB9CC0);
  }

  return result;
}

double sub_21BCF18C8@<D0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(&v5);
  result = *&v5;
  v4 = v6;
  *a1 = v5;
  *(a1 + 16) = v4;
  return result;
}

unint64_t sub_21BCF1910()
{
  result = qword_27CDB9CC8;
  if (!qword_27CDB9CC8)
  {
    result = swift_getWitnessTable(byte_21BE41B00, &type metadata for MemberDetailsGuardianSubViewLabel, v0, v1);
    atomic_store(result, &qword_27CDB9CC8);
  }

  return result;
}

uint64_t sub_21BCF1964(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21BCF19BC()
{
  result = qword_27CDB9CD0;
  if (!qword_27CDB9CD0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9CD8, &qword_21BE41AE8);
    v4[0] = sub_21BB3B038(&qword_27CDB9CE0, &qword_27CDB9CA8, &qword_21BE41A40, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDB9CD0);
  }

  return result;
}

unint64_t sub_21BCF1AD0()
{
  result = qword_27CDB9CF8;
  if (!qword_27CDB9CF8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9CE8, &qword_21BE41B50);
    v4[0] = sub_21BB3B038(&qword_27CDB9D00, &qword_27CDB9CF0, &qword_21BE41B58, byte_21BE48120);
    v4[1] = v4[0];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB9CF8);
  }

  return result;
}

uint64_t sub_21BCF1BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_21BB3D80C(a3, a4);
}

double sub_21BCF1C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_21BB5AEC4(a3, a4);

  return result;
}

uint64_t sub_21BCF1C6C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = v27;
  if (!v27)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v2 = sub_21BE290BC();

  if (v2 >> 62)
  {
LABEL_23:
    v3 = sub_21BE2951C();
    if (!v3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_24;
    }
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CF047C0](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v9 = [v7 firstName];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    v10 = v9;
    v11 = sub_21BE28A0C();
    v26 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_21BBBC990(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_21BBBC990((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v26;
  }

  while (v4 != v3);
LABEL_24:

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = [v17 bundleForClass_];
  sub_21BE2599C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
  sub_21BB3B038(&qword_27CDB5AE0, &qword_27CDB6EF0, &unk_21BE33800, MEMORY[0x277D83958]);
  v19 = sub_21BE2897C();
  v21 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21BE32770;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_21BBBEFE8();
  *(v22 + 32) = v19;
  *(v22 + 40) = v21;

  v23 = [v17 bundleForClass_];
  sub_21BE2599C();

  v24 = sub_21BE289DC();

  return v24;
}

uint64_t sub_21BCF2070(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = v37;
  if (!v37)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v2 = sub_21BE2908C();

  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v3 = v17)
  {
    v5 = 0;
    v36 = v3 & 0xC000000000000001;
    v6 = v3 & 0xFFFFFFFFFFFFFF8;
    v7 = MEMORY[0x277D84F90];
    v8 = v3;
    while (1)
    {
      if (v36)
      {
        v3 = MEMORY[0x21CF047C0](v5, v3);
      }

      else
      {
        if (v5 >= *(v6 + 16))
        {
          goto LABEL_18;
        }

        v3 = *(v3 + 8 * v5 + 32);
      }

      v9 = v3;
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v11 = sub_21BE2917C();
      v13 = v12;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21BBBC990(0, *(v7 + 2) + 1, 1, v7);
      }

      v15 = *(v7 + 2);
      v14 = *(v7 + 3);
      if (v15 >= v14 >> 1)
      {
        v7 = sub_21BBBC990((v14 > 1), v15 + 1, 1, v7);
      }

      *(v7 + 2) = v15 + 1;
      v16 = &v7[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      ++v5;
      v3 = v8;
      if (v10 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v17 = v3;
    i = sub_21BE2951C();
  }

  v7 = MEMORY[0x277D84F90];
LABEL_21:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v18 = v37;
  if (!v37)
  {
    v18 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v19 = [v18 me];

  if (v19)
  {
    if ([v19 isGuardian])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21BE32770;
      v21 = sub_21BE2917C();
      v23 = v22;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 64) = sub_21BBBEFE8();
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = objc_opt_self();

      v26 = [v25 bundleForClass_];
      sub_21BE2599C();

      v27 = sub_21BE289DC();
      v29 = v28;

      v30 = *(v7 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v30 >= *(v7 + 3) >> 1)
      {
        sub_21BBBC990(isUniquelyReferenced_nonNull_native, v30 + 1, 1, v7);
      }

      sub_21BBBF3E4(0, 0, 1, v27, v29);
    }

    else
    {
    }
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  v32 = swift_getObjCClassFromMetadata();
  v33 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
  sub_21BB3B038(&qword_27CDB5AE0, &qword_27CDB6EF0, &unk_21BE33800, MEMORY[0x277D83958]);
  v34 = sub_21BE2897C();

  return v34;
}

uint64_t sub_21BCF2598(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BCF2644()
{
  result = qword_27CDB9D28;
  if (!qword_27CDB9D28)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9D30, &unk_21BE41B70);
    v4[0] = sub_21BCF1AD0();
    v4[1] = sub_21BB3B038(&qword_27CDB9D00, &qword_27CDB9CF0, &qword_21BE41B58, byte_21BE48120);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB9D28);
  }

  return result;
}

void sub_21BCF2700(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BCF2780(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_21BE26CBC();
}

uint64_t sub_21BCF27F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BCF286C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

void (*sub_21BCF28DC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BE26C9C();
  return sub_21BCCDB70;
}

uint64_t sub_21BCF2980(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BCF29F8(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC720, &unk_21BE41BD0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_21BCF2B7C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BCF2BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC720, &unk_21BE41BD0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_21BCF2D28(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC720, &unk_21BE41BD0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14FamilyCircleUI16AccountViewModel__account;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  sub_21BE26C7C();
  swift_endAccess();
  return sub_21BCCE114;
}

uint64_t AccountViewModel.__allocating_init(account:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC14FamilyCircleUI16AccountViewModel__account;
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC730, &qword_21BE4B290);
  sub_21BE26C6C();
  (*(v3 + 32))(v6 + v7, v5, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = a1;

  sub_21BE26CBC();
  return v6;
}

uint64_t AccountViewModel.init(account:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC14FamilyCircleUI16AccountViewModel__account;
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC730, &qword_21BE4B290);
  sub_21BE26C6C();
  (*(v4 + 32))(v1 + v7, v6, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = a1;

  sub_21BE26CBC();
  return v1;
}

uint64_t AccountViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI16AccountViewModel__account;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AccountViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI16AccountViewModel__account;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21BCF3250@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountViewModel(0);
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for AccountViewModel(uint64_t a1)
{
  result = qword_27CDB9D40;
  if (!qword_27CDB9D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCF32E4(uint64_t a1)
{
  sub_21BCF3478(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21BCF3478(uint64_t a1)
{
  if (!qword_280BD6A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDBC730, &qword_21BE4B290);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_280BD6A48);
    }
  }
}

uint64_t sub_21BCF3504(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x65756C6176;
  if (v2 != 1)
  {
    v4 = 7107189;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x44495344746C61;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65756C6176;
  if (*a2 != 1)
  {
    v8 = 7107189;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x44495344746C61;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BCF35F0()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BCF3688(uint64_t a1)
{
  sub_21BE28ABC();
}

uint64_t sub_21BCF370C(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BCF37A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21BCF4B00(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21BCF37D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  if (v2 != 1)
  {
    v5 = 7107189;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x44495344746C61;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21BCF3824()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44495344746C61;
  }
}

unint64_t sub_21BCF3874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21BCF4B00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21BCF389C(uint64_t a1)
{
  v2 = sub_21BCF4938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BCF38D8(uint64_t a1)
{
  v2 = sub_21BCF4938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BCF3914@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for FamilyMemberToggleRowRUI(0);
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = v5;
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7008, &qword_21BE364D0);
  v43 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89E0, &qword_21BE3CE38);
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9D58, &qword_21BE41D80);
  v50 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = &v38 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9D60, &qword_21BE41D88);
  MEMORY[0x28223BE20](v51);
  v52 = &v38 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7020, &qword_21BE39520);
  v13 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v15 = &v38 - v14;
  sub_21BE2881C();
  if (sub_21BE287CC())
  {
    sub_21BE26EEC();
    v16 = v54;
    (*(v13 + 16))(v52, v15, v54);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520, MEMORY[0x277CDD7F8]);
    v17 = sub_21BB3B038(&qword_27CDB7030, &qword_27CDB7008, &qword_21BE364D0, MEMORY[0x277CDF068]);
    v55 = v53;
    v56 = v17;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v55 = v8;
    v56 = MEMORY[0x277D839B0];
    v57 = OpaqueTypeConformance2;
    v58 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    return (*(v13 + 8))(v15, v16);
  }

  else
  {
    sub_21BE2767C();
    v40 = v8;
    v41 = v10;
    v20 = *(v4 + 32);
    v39 = a1;
    v21 = (a1 + v20);
    v22 = *v21;
    v42 = a2;
    v23 = *(v21 + 1);
    v59 = v22;
    v60 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2841C();
    sub_21BE284BC();
    v24 = sub_21BB3B038(&qword_27CDB7030, &qword_27CDB7008, &qword_21BE364D0, MEMORY[0x277CDF068]);
    v25 = v44;
    v26 = v53;
    sub_21BE27F3C();
    (*(v43 + 8))(v7, v26);
    LOBYTE(v55) = v22;
    v56 = v23;
    sub_21BE283FC();
    v27 = v47;
    sub_21BCF47F0(v39, v47);
    v28 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v29 = swift_allocObject();
    sub_21BCF4854(v27, v29 + v28);
    v55 = v26;
    v56 = v24;
    v30 = swift_getOpaqueTypeConformance2();
    v31 = MEMORY[0x277D839B0];
    v32 = MEMORY[0x277D839C8];
    v33 = v49;
    v34 = v40;
    sub_21BE281BC();

    v35 = v34;
    (*(v48 + 8))(v25, v34);
    v36 = v50;
    v37 = v41;
    (*(v50 + 16))(v52, v33, v41);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520, MEMORY[0x277CDD7F8]);
    v55 = v35;
    v56 = v31;
    v57 = v30;
    v58 = v32;
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    return (*(v36 + 8))(v33, v37);
  }
}

uint64_t sub_21BCF406C(uint64_t a1, char *a2, uint64_t *a3)
{
  if (*(a3 + *(type metadata accessor for FamilyMemberToggleRowRUI(0) + 28)))
  {
    v5 = *a2;
    v6 = *a3;
    v7 = a3[1];
    v12 = MEMORY[0x277D839B0];
    v11[0] = v5;

    v8 = sub_21BE2882C();
    sub_21BD401E0(v11, v6, v7);
    v8(&v10, 0);

    sub_21BE2881C();
    return sub_21BE287BC();
  }

  else
  {
    sub_21BE2883C();
    sub_21BB3FF84(&qword_280BD69D8, MEMORY[0x277D461B0], MEMORY[0x277D461A8]);
    result = sub_21BE2726C();
    __break(1u);
  }

  return result;
}

void sub_21BCF41B0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_21BE2881C();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9D68, &qword_21BE41D90);
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v34 = v29 - v7;
  v8 = type metadata accessor for FamilyMemberToggleRowRUI(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (v11 + *(v9 + 28));
  sub_21BE2883C();
  sub_21BB3FF84(&qword_280BD69D8, MEMORY[0x277D461B0], MEMORY[0x277D461A8]);
  v13 = sub_21BE2727C();
  *v12 = v13;
  v12[1] = v14;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v15 = v35;
  v16 = sub_21BE29B3C();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v29[1] = v17;
    v29[2] = v13;
    v29[0] = v5;
    v35 = v8;
    *v11 = v16;
    v11[1] = v17;
    v18 = a1;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_21BCF4938();
    v19 = v34;
    sub_21BE29B4C();
    v36[0] = 0;
    v20 = v6;
    v21 = sub_21BE2986C();
    v22 = v35;
    v11[2] = v21;
    v11[3] = v23;
    v36[0] = 1;
    v24 = sub_21BE2987C();
    v25 = v33;
    v26 = v11 + *(v22 + 32);
    v38 = v24 & 1;
    sub_21BE283EC();
    v27 = v37;
    *v26 = v36[0];
    *(v26 + 1) = v27;
    sub_21BB3A35C(v18, v36);
    v28 = v29[0];
    sub_21BE2880C();
    (*(v25 + 8))(v19, v20);
    (*(v30 + 32))(v11 + *(v22 + 24), v28, v31);
    sub_21BCF47F0(v11, v32);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    sub_21BCF498C(v11);
  }
}

uint64_t sub_21BCF460C@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9D50, &qword_21BE41D78);
  v6 = (a1 + v5[10]);
  v7 = qword_280BD83C0;

  if (v7 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyPictureStore(0);
  sub_21BB3FF84(&qword_27CDB5CE0, type metadata accessor for FamilyPictureStore, protocol conformance descriptor for AsyncStore<A>);

  *v6 = sub_21BE270CC();
  v6[1] = v8;
  v9 = v5[11];
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v10 = (a1 + v9);
  type metadata accessor for FamilyCircleStore(0);
  sub_21BB3FF84(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore, protocol conformance descriptor for AsyncStore<A>);

  *v10 = sub_21BE270CC();
  v10[1] = v11;
  *a1 = v4;
  a1[1] = v3;
  return sub_21BCF3914(v1, (a1 + v5[9]));
}

uint64_t sub_21BCF47F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyMemberToggleRowRUI(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCF4854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyMemberToggleRowRUI(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCF48B8(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for FamilyMemberToggleRowRUI(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21BCF406C(a1, a2, v6);
}

unint64_t sub_21BCF4938()
{
  result = qword_27CDB9D70;
  if (!qword_27CDB9D70)
  {
    result = swift_getWitnessTable(byte_21BE41E94, &type metadata for FamilyMemberToggleRowRUI.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB9D70);
  }

  return result;
}

uint64_t sub_21BCF498C(uint64_t a1)
{
  v2 = type metadata accessor for FamilyMemberToggleRowRUI(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BCF49FC()
{
  result = qword_27CDB9D80;
  if (!qword_27CDB9D80)
  {
    result = swift_getWitnessTable(asc_21BE41E6C, &type metadata for FamilyMemberToggleRowRUI.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB9D80);
  }

  return result;
}

unint64_t sub_21BCF4A54()
{
  result = qword_27CDB9D88;
  if (!qword_27CDB9D88)
  {
    result = swift_getWitnessTable(byte_21BE41DA4, &type metadata for FamilyMemberToggleRowRUI.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB9D88);
  }

  return result;
}

unint64_t sub_21BCF4AAC()
{
  result = qword_27CDB9D90;
  if (!qword_27CDB9D90)
  {
    result = swift_getWitnessTable(asc_21BE41DCC, &type metadata for FamilyMemberToggleRowRUI.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB9D90);
  }

  return result;
}

unint64_t sub_21BCF4B00(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BE2980C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *sub_21BCF4B4C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v1 = *(v0 + 24);
  sub_21BCBD3B8(v1, *(v3 + 32));
  return v1;
}

id sub_21BCF4C04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v4 = *(v3 + 24);
  *a2 = v4;
  v5 = *(v3 + 32);
  *(a2 + 8) = v5;
  return sub_21BCBD3B8(v4, v5);
}

double sub_21BCF4CB8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F0C();

  return result;
}

uint64_t sub_21BCF4D8C()
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();
}

uint64_t sub_21BCF4E30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  *a2 = *(v3 + 40);
}

uint64_t sub_21BCF4F08(unint64_t a1)
{

  v4 = sub_21BC20858(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }
}

void sub_21BCF505C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  *a2 = *(v3 + 48);
}

uint64_t sub_21BCF512C()
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  return *(v0 + 48);
}

uint64_t type metadata accessor for AgeRangeSharingViewModel(uint64_t a1)
{
  result = qword_27CDB9DD0;
  if (!qword_27CDB9DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCF5218(char a1)
{
  if (*(v1 + 48) == (a1 & 1))
  {
    *(v1 + 48) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }
}

void sub_21BCF5328(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 52);
  *(a2 + 4) = v4;
}

double sub_21BCF53D8(int *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F0C();

  return result;
}

void sub_21BCF54B0(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v3 = *(v1 + 56);
  *a1 = *(v1 + 52);
  *(a1 + 4) = v3;
}

uint64_t sub_21BCF5560()
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();
}

uint64_t sub_21BCF5604@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  *a2 = *(v3 + 64);
}

double sub_21BCF56DC(uint64_t a1)
{
  if (!*(v1 + 64))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
    sub_21BE25F0C();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  v3 = sub_21BE28DBC();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 64) = a1;

  return result;
}

void sub_21BCF5880(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v4 = *(v3 + 81);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

double sub_21BCF5930(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F0C();

  return result;
}

uint64_t sub_21BCF5A08()
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  if (*(v0 + 81))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return v1 | *(v0 + 80);
}

void sub_21BCF5ABC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  *a2 = *(v3 + 82);
}

uint64_t sub_21BCF5B8C()
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  return *(v0 + 82);
}

void sub_21BCF5C2C(char a1)
{
  if (*(v1 + 82) == (a1 & 1))
  {
    *(v1 + 82) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }
}

void sub_21BCF5D3C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v4 = *(v3 + 96);
  *a2 = *(v3 + 88);
  *(a2 + 8) = v4;
}

uint64_t sub_21BCF5E20()
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  return *(v0 + 88);
}

double sub_21BCF5EC4(uint64_t a1, char a2)
{
  if ((*(v2 + 96) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 88) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 88) = a1;
    *(v2 + 96) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F0C();

  return result;
}

uint64_t sub_21BCF6058@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v4 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken;
  swift_beginAccess();
  v5 = sub_21BE25D6C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21BCF6150(uint64_t a1)
{
  v2 = sub_21BE25D6C();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_21BCF6314(v4);
}

uint64_t sub_21BCF621C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v3 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken;
  swift_beginAccess();
  v4 = sub_21BE25D6C();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_21BCF6314(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21BE25D6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_21BCF65B4(&qword_27CDB78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v14[0] = a1;
  LOBYTE(a1) = sub_21BE2899C();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_21BCF65B4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BCF65FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BE25D6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t (*sub_21BCF6734(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BCF5FF8(v4);
  return sub_21BCF686C;
}

void sub_21BCF68D8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v4 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldOpenPersonalInfoOnMac;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21BCF69C4()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v1 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldOpenPersonalInfoOnMac;
  swift_beginAccess();
  return *(v3 + v1);
}

void sub_21BCF6A80(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldOpenPersonalInfoOnMac;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }
}

void sub_21BCF6BAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldOpenPersonalInfoOnMac;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t (*sub_21BCF6C08(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BCF6878(v4);
  return sub_21BCF6D40;
}

void sub_21BCF6D4C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  *a2 = *(v3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding);
}

uint64_t sub_21BCF6E24()
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  return *(v0 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding);
}

void sub_21BCF6ECC(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }
}

id sub_21BCF6FE4()
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v1 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion);

  return v1;
}

id sub_21BCF709C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v4 = *(v3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion);
  *a2 = v4;

  return v4;
}

void sub_21BCF715C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion;
  v5 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion);
  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  v6 = v5;
  v7 = sub_21BE2940C();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }
}

uint64_t AgeRangeSharingViewModel.__allocating_init(ageRangeController:ageRangeAccountProtocol:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_21BCFDFD4(a1, a2, v2, ObjectType);
}

uint64_t AgeRangeSharingViewModel.init(ageRangeController:ageRangeAccountProtocol:)(void *a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_21BCFE038(a1, a2, v2);
}

uint64_t sub_21BCF7378(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_21BE26A4C();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BCF7448, 0, 0);
}

uint64_t sub_21BCF7448(uint64_t a1)
{
  v17 = v1;
  sub_21BE2614C();

  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[28];
  v6 = v1[25];
  v7 = v1[26];
  if (v4)
  {
    v9 = v1[22];
    v8 = v1[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_21BB3D81C(v9, v8, &v16);
    _os_log_impl(&dword_21BB35000, v2, v3, "Fetching accountInfo for altDSID: %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[29] = v12;
  v13 = *(v1[24] + 16);
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_21BCF7678;
  v14 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC830, &qword_21BE4B460);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21BBB25CC;
  v1[13] = &block_descriptor_34;
  v1[14] = v14;
  [v13 fetchFamilyCircleWithCompletionHandler_];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_21BCF7678()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_21BCF7C60;
  }

  else
  {
    v2 = sub_21BCF7788;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}