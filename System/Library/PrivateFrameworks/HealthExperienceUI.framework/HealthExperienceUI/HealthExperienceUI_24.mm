uint64_t sub_1BA18EC68()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 isHealthChecklistAvailable];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1BA18E630();
  type metadata accessor for MutableArrayDataSourceWithLayout(0);
  sub_1B9F320F0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v4 = sub_1B9FE4F98(v2);

  *(inited + 32) = v4;
  return MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 1, sub_1BA18E140, 0);
}

uint64_t sub_1BA18ED54(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for NotificationSettingsOnboardedFeaturesDataSource(0);
  swift_allocObject();
  v4 = sub_1BA4A2198();
  v6 = sub_1BA18E254(a1, v4, v5);
  v7 = v2;
  v8 = v6;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI38NotificationSettingsFeaturesDataSource_onboardedFeaturesDataSource) = v6;

  v9 = sub_1BA27F2F0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
LABEL_18:
    v9 = sub_1BA27F2F0((v10 > 1), v12, 1, v9);
  }

  v9[2] = v12;
  v13 = &v9[2 * v11];
  v13[4] = v8;
  v13[5] = &protocol witness table for MutableArrayDataSource;
  v14 = sub_1BA18EC68();
  v11 = v15;
  v16 = (v7 + OBJC_IVAR____TtC18HealthExperienceUI38NotificationSettingsFeaturesDataSource_healthChecklistDataSource);
  *v16 = v14;
  v16[1] = v15;
  v17 = v9[2];
  v18 = v9[3];
  v8 = v17 + 1;
  swift_unknownObjectRetain();
  if (v17 >= v18 >> 1)
  {
    v9 = sub_1BA27F2F0((v18 > 1), v17 + 1, 1, v9);
  }

  v19 = 0;
  v9[2] = v8;
  v20 = &v9[2 * v17 + 4];
  *v20 = v14;
  v20[1] = v11;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v10 = &v9[2 * v19 + 4];
  while (v8 != v19)
  {
    if (v19 >= v9[2])
    {
      __break(1u);
      goto LABEL_18;
    }

    ++v19;
    v21 = v10 + 16;
    v11 = *v10;
    v10 += 16;
    if (v11)
    {
      v22 = *(v21 - 8);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_1B9F1E00C();
        v27 = v12;
      }

      v24 = *(v12 + 16);
      if (v24 >= *(v12 + 24) >> 1)
      {
        v12 = sub_1B9F1E00C();
        v27 = v12;
      }

      ObjectType = swift_getObjectType();
      sub_1BA1BA008(v24, v11, &v27, ObjectType, v22);
      goto LABEL_5;
    }
  }

  return CompoundSectionedDataSource.init(_:)(v12);
}

void sub_1BA18EF9C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BA18F004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BA18F050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA18F0B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA18F124()
{
  result = qword_1EBBED2D8;
  if (!qword_1EBBED2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED2D8);
  }

  return result;
}

void sub_1BA18F178(uint64_t *a1, void *a2)
{
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[4];
  v44 = a1[5];
  v51 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v40 = v5;
    v41 = v4;
    v42 = v11;
    sub_1BA18EF9C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v43 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    *(inited + 56) = &type metadata for CollectionViewHeaderItem;
    *(inited + 64) = sub_1BA0473B0();
    v13 = swift_allocObject();
    *(inited + 32) = v13;
    v49 = type metadata accessor for CollectionViewHeaderCell();
    sub_1BA18F004(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);

    *(v13 + 16) = sub_1BA4A6808();
    *(v13 + 24) = v14;
    *(v13 + 32) = v10;
    *(v13 + 40) = v9;
    *(v13 + 48) = sub_1BA18F698;
    *(v13 + 56) = 0;
    *(v13 + 64) = 1;
    *(v13 + 72) = 1;
    *(v13 + 144) = 0;
    *(v13 + 80) = 0u;
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
    *(v13 + 121) = 0u;
    v49 = v10;
    v50 = v9;
    v47 = 32;
    v48 = 0xE100000000000000;
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1B9F252FC();
    v15 = MEMORY[0x1E69E6158];
    v16 = sub_1BA4A7B58();
    v18 = v17;
    sub_1B9F1C048(0, &qword_1EDC6E330, v15);
    v19 = swift_allocObject();
    *(v19 + 16) = v43;
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;

    v20 = sub_1BA4A6AE8();

    v21 = HKUIJoinStringsForAutomationIdentifier();

    if (!v21)
    {
      __break(1u);
      return;
    }

    v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v24 = v23;

    *(v13 + 152) = v22;
    *(v13 + 160) = v24;
    sub_1B9FE1E20(inited);
    v4 = v41;
    v11 = v42;
    v5 = v40;
  }

  sub_1BA18EF9C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v25 = swift_initStackObject();
  v43 = xmmword_1BA4B5480;
  *(v25 + 16) = xmmword_1BA4B5480;
  *(v25 + 56) = sub_1BA4A27B8();
  *(v25 + 64) = sub_1B9F2F820(&qword_1EDC6ADA0, MEMORY[0x1E69A3DD0], &protocol conformance descriptor for FeedItem);
  *(v25 + 32) = a2;
  v26 = a2;
  sub_1B9FE1E20(v25);
  v27 = v44;
  if (v44)
  {
    v28 = swift_initStackObject();
    *(v28 + 16) = v43;
    v49 = 0x74497265746F6F46;
    v50 = 0xEB000000005F6D65;

    sub_1BA4A1788();
    v29 = sub_1BA4A1748();
    v31 = v30;
    (*(v5 + 8))(v8, v4);
    MEMORY[0x1BFAF1350](v29, v31);

    v32 = v49;
    v33 = v50;
    v34 = type metadata accessor for CollectionViewGroupedFooterItem(0);
    *(v28 + 56) = v34;
    *(v28 + 64) = sub_1B9F2F820(&qword_1EDC63278, type metadata accessor for CollectionViewGroupedFooterItem, &protocol conformance descriptor for CollectionViewGroupedFooterItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v28 + 32));
    v49 = type metadata accessor for CollectionViewGroupedFooterCell();
    sub_1BA18F004(0, qword_1EDC63330, type metadata accessor for CollectionViewGroupedFooterCell);
    *boxed_opaque_existential_1 = sub_1BA4A6808();
    boxed_opaque_existential_1[1] = v36;
    v37 = boxed_opaque_existential_1 + *(v34 + 32);
    *v37 = 0u;
    *(v37 + 1) = 0u;
    v37[32] = 1;
    v38 = (boxed_opaque_existential_1 + *(v34 + 28));
    *v38 = v11;
    v38[1] = v27;
    type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
    swift_storeEnumTagMultiPayload();
    boxed_opaque_existential_1[2] = v32;
    boxed_opaque_existential_1[3] = v33;
    boxed_opaque_existential_1[4] = 0;
    boxed_opaque_existential_1[5] = 0;
    sub_1B9FE1E20(v28);
  }
}

void sub_1BA18F6A0(uint64_t *a1, uint64_t (**a2)(uint64_t a1))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = sub_1BA190B0C;
  a2[1] = v5;
}

uint64_t DataTypeDetailViewControllerWithLoadAction.OnLoadAction.action.getter()
{
  v1 = *v0;

  return v1;
}

void DataTypeDetailViewControllerWithLoadAction.OnLoadAction.action.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t DataTypeDetailViewControllerWithLoadAction.OnLoadAction.init(action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1BA18F7A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1B9F0F1B8(v4, v5);
}

uint64_t sub_1BA18F7F8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1B9F0F1B8(v2, v3);
  return sub_1B9F0E310(v5, v6);
}

uint64_t sub_1BA18F874@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  return sub_1B9F0F1B8(v4, v5);
}

uint64_t sub_1BA18F8C8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  return sub_1B9F0E310(v5, v6);
}

uint64_t sub_1BA18F984()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA18F9C8(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext.init(sampleToShowOnLoad:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A1798();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  return sub_1BA18FE58(a1, a2, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
}

uint64_t sub_1BA18FB98(uint64_t a1, uint64_t *a2)
{
  sub_1BA18FD68(0, &qword_1EBBED2F0, type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  sub_1BA18FCFC(a1, &v11 - v6, &qword_1EBBED2F0, type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  swift_beginAccess();
  sub_1BA18FE58(v7, v8 + v9, &qword_1EBBED2F0, type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext);
  return swift_endAccess();
}

uint64_t sub_1BA18FC88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  swift_beginAccess();
  return sub_1BA18FCFC(v1 + v3, a1, &qword_1EBBED2F0, type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext);
}

uint64_t sub_1BA18FCFC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA18FD68(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1BA18FD68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA18FDDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  swift_beginAccess();
  sub_1BA18FE58(a1, v1 + v3, &qword_1EBBED2F0, type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext);
  return swift_endAccess();
}

uint64_t sub_1BA18FE58(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA18FD68(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1BA18FF24()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DataTypeDetailViewControllerWithLoadAction(0);
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    v2 = &v0[OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction];
    swift_beginAccess();
    v4 = *v2;
    v3 = *(v2 + 1);
    if (v4)
    {
      sub_1B9F0F1B8(v4, v3);

      sub_1B9F0E310(v4, v3);
      v4(v0);
    }

    else
    {
      sub_1B9F0F1B8(0, v3);
      sub_1B9F0E310(0, v3);
    }
  }
}

char *DataTypeDetailViewControllerWithLoadAction.__allocating_init(dataSource:context:viewModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction];
  *v8 = 0;
  v8[1] = 0;
  v7[OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction] = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  v10 = type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext(0);
  (*(*(v10 - 8) + 56))(&v7[v9], 1, 1, v10);
  sub_1BA114D9C(a2, v14);
  sub_1B9F0A534(a3, v13);
  v11 = sub_1BA32AC20(a1, v14, v13);

  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_1BA114E30(a2);
  return v11;
}

char *DataTypeDetailViewControllerWithLoadAction.init(dataSource:context:viewModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = (v3 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction);
  *v7 = 0;
  v7[1] = 0;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction) = 0;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  v9 = type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  sub_1BA114D9C(a2, v13);
  sub_1B9F0A534(a3, v12);
  v10 = sub_1BA32AC20(a1, v13, v12);

  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_1BA114E30(a2);
  return v10;
}

uint64_t DataTypeDetailViewControllerWithLoadAction.__allocating_init(dataSource:context:hkType:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction];
  *v8 = 0;
  v8[1] = 0;
  v7[OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction] = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  v10 = type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext(0);
  (*(*(v10 - 8) + 56))(&v7[v9], 1, 1, v10);
  sub_1BA114D9C(a2, v14);
  sub_1BA32A8A0(a1, v14, a3);
  v12 = v11;

  sub_1BA114E30(a2);
  return v12;
}

uint64_t DataTypeDetailViewControllerWithLoadAction.init(dataSource:context:hkType:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = (v3 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction);
  *v7 = 0;
  v7[1] = 0;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction) = 0;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  v9 = type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  sub_1BA114D9C(a2, v13);
  sub_1BA32A8A0(a1, v13, a3);
  v11 = v10;

  sub_1BA114E30(a2);
  return v11;
}

id DataTypeDetailViewControllerWithLoadAction.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DataTypeDetailViewControllerWithLoadAction.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction];
  *v3 = 0;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction] = 0;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  v5 = type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DataTypeDetailViewControllerWithLoadAction(0);
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_1BA19060C()
{
  sub_1B9F0E310(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction + 8));
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;

  return sub_1BA190A94(v1);
}

id DataTypeDetailViewControllerWithLoadAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeDetailViewControllerWithLoadAction(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA1906E0(uint64_t a1)
{
  sub_1BA18FD68(319, &qword_1EBBED2F0, type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BA190A0C(uint64_t a1)
{
  sub_1BA18FD68(319, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1BA190A94(uint64_t a1)
{
  sub_1BA18FD68(0, &qword_1EBBED2F0, type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double PDFAsyncConfigurationDataSource.shareButtonBehavior.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1BA190CA4()
{
  v1 = [v0 description];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v2 = sub_1BA4A6988();

  v3 = [v0 description];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  if (v2)
  {
    v7 = sub_1BA4A68D8();
    v8 = v4;
LABEL_5:
    v13 = sub_1BA190E40(v7, v8, v6);
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = MEMORY[0x1BFAF12A0](v13, v15, v17, v19);

    return v20;
  }

  v9 = sub_1BA4A6988();

  v10 = [v0 description];
  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v12;

  if (v9)
  {
    v7 = sub_1BA4A68D8();
    v8 = v11;
    goto LABEL_5;
  }

  return v11;
}

unint64_t sub_1BA190E40(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1BA4A68F8();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1BA4A69E8();
}

double sub_1BA190EF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v106 = a4;
  v105 = a3;
  v102 = a2;
  v5 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v101 = (&v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = sub_1BA4A1798();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v8);
  v97 = v9;
  v98 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3158();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v107 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v103 = &v96 - v16;
  sub_1B9FD7D5C(0);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1E69A33B0];
  sub_1BA198D90(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v104 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = &v96 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v96 - v31;
  sub_1BA198D90(0, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v108 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v96 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v96 - v42;
  sub_1BA19A324(a1, v32, &qword_1EBBE97C8, v22);
  v44 = sub_1BA4A3118();
  v45 = *(v44 - 8);
  v115 = *(v45 + 48);
  v116 = v45 + 48;
  v46 = v115(v32, 1, v44);
  v113 = a1;
  v109 = v45;
  v110 = v44;
  if (v46 == 1)
  {
    sub_1BA19A390(v32, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    v47 = 1;
  }

  else
  {
    sub_1BA4A30F8();
    (*(v45 + 8))(v32, v44);
    v47 = 0;
  }

  v48 = *(v11 + 56);
  v48(v43, v47, 1, v10);
  (*(v11 + 104))(v39, *MEMORY[0x1E69A33C0], v10);
  v48(v39, 0, 1, v10);
  v49 = *(v18 + 48);
  v50 = MEMORY[0x1E69A33C8];
  sub_1BA19A324(v43, v21, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  sub_1BA19A324(v39, &v21[v49], &qword_1EBBE97F8, v50);
  v112 = v11;
  v51 = *(v11 + 48);
  v52 = v51(v21, 1, v10);
  v53 = v108;
  if (v52 == 1)
  {
    v54 = MEMORY[0x1E69A33C8];
    sub_1BA19A390(v39, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
    sub_1BA19A390(v43, &qword_1EBBE97F8, v54);
    v55 = v51(&v21[v49], 1, v10);
    v56 = v113;
    if (v55 == 1)
    {
      sub_1BA19A390(v21, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
      v57 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1BA19A324(v21, v108, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  if (v51(&v21[v49], 1, v10) == 1)
  {
    v58 = MEMORY[0x1E69A33C8];
    sub_1BA19A390(v39, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
    sub_1BA19A390(v43, &qword_1EBBE97F8, v58);
    (*(v112 + 8))(v53, v10);
    v56 = v113;
LABEL_9:
    sub_1BA19A3F0(v21, sub_1B9FD7D5C);
    v57 = 1;
    goto LABEL_11;
  }

  v59 = v112;
  v60 = v103;
  (*(v112 + 32))(v103, &v21[v49], v10);
  sub_1BA19A450(&qword_1EBBE9800, MEMORY[0x1E69A33C8], MEMORY[0x1E69A33D0]);
  v61 = sub_1BA4A6728();
  v62 = *(v59 + 8);
  v62(v60, v10);
  v63 = MEMORY[0x1E69A33C8];
  sub_1BA19A390(v39, &qword_1EBBE97F8, MEMORY[0x1E69A33C8]);
  sub_1BA19A390(v43, &qword_1EBBE97F8, v63);
  v62(v53, v10);
  sub_1BA19A390(v21, &qword_1EBBE97F8, v63);
  v57 = v61 ^ 1;
  v56 = v113;
LABEL_11:
  v65 = v110;
  v64 = v111;
  v66 = v109;
  v67 = v114;
  [v114 setUserInteractionEnabled_];
  sub_1BA19A324(v56, v64, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  if (v115(v64, 1, v65) == 1)
  {
    sub_1BA19A390(v64, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    return result;
  }

  v69 = v107;
  sub_1BA4A30F8();
  v70 = *(v66 + 8);
  v70(v64, v65);
  v71 = v112;
  v72 = (*(v112 + 88))(v69, v10);
  v73 = *MEMORY[0x1E69A33B8];
  (*(v71 + 8))(v69, v10);
  if (v72 == v73)
  {
    v74 = v56;
    v75 = v104;
    sub_1BA19A324(v74, v104, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    if (v115(v75, 1, v65) == 1)
    {
      sub_1BA19A390(v75, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
LABEL_21:
      v93 = [v67 viewController];
      __swift_project_boxed_opaque_existential_1(v102, v102[3]);
      v94 = sub_1BA4A2AB8();
      sub_1BA19931C(v93, v94, v95, v105, v106);

      return result;
    }

    v76 = sub_1BA4A3108();
    v78 = v77;
    v70(v75, v65);
    if (v78)
    {
      goto LABEL_21;
    }

    v79 = [v67 viewController];
    if (!v79)
    {
      goto LABEL_21;
    }

    v80 = v79;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v81 = v99;
    v82 = v98;
    v83 = v100;
    (*(v99 + 16))(v98, v105, v100);
    v84 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v85 = (v97 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
    v86 = swift_allocObject();
    (*(v81 + 32))(&v86[v84], v82, v83);
    *&v86[v85] = v106;
    v87 = sub_1BA4A6758();
    aBlock[4] = sub_1BA19A3EC;
    aBlock[5] = v86;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA0B06D4;
    aBlock[3] = &block_descriptor_40;
    v88 = _Block_copy(aBlock);

    v89 = [objc_opt_self() actionWithTitle:v87 style:0 handler:v88];
    _Block_release(v88);

    type metadata accessor for HKError(0);
    v117 = v76;
    sub_1BA198DE4(MEMORY[0x1E69E7CC0]);
    sub_1BA19A450(&qword_1EBBE9090, type metadata accessor for HKError, &unk_1BA4B450C);
    sub_1BA4A1478();
    v90 = v101;
    SummarySharingOnboardingError.init(error:)(aBlock[0], v101);
    sub_1B9F109F8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5470;
    *(inited + 32) = v89;
    v92 = v89;
    sub_1BA0C6BA4(v80, 0, 0, 0, 0, inited, 0, 0);

    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1BA19A3F0(v90, type metadata accessor for SummarySharingOnboardingError);
  }

  return result;
}

id sub_1BA191BB0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_hasWatchIcon);
    v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_hasDisclosureIndicator);
    v6 = objc_allocWithZone(type metadata accessor for ProfileGradientViewWithImage());
    v7 = v5;
    v8 = v0;
    v9 = sub_1BA19577C(v4, v7);
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = *(v0 + v1);
    *(v8 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1BA191C58()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_hasDisclosureIndicator);
    v5 = objc_allocWithZone(type metadata accessor for ProfileSharingWithYouHeaderView());
    v6 = v0;
    v7 = sub_1BA197378(v4, 0);
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v8) = 1148846080;
    [v7 setContentCompressionResistancePriority:1 forAxis:v8];
    v9 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1BA191D10()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v5) = 1148846080;
    [v4 setContentCompressionResistancePriority:1 forAxis:v5];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1BA191DB4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_1BA191E80(char a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_accessibilityIdentiferBase];
  v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v22 = v6;

  MEMORY[0x1BFAF1350](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x1BFAF1350](0x6E696D6F636E492ELL, 0xE900000000000067);

  MEMORY[0x1BFAF1350](0x6E6F737265502ELL, 0xE700000000000000);

  v7 = v22;
  *v5 = v21;
  v5[1] = v7;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner] = 0;
  v8 = &v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___currentConstraints] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_anyCancellable] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_currentSpinnerConstraints] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinnerConstraints] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___hiddenSpinnerConstraints] = 0;
  v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_hasWatchIcon] = a1;
  v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_hasDisclosureIndicator] = a2;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for ProfileSharingWithYouTileCell();
  v9 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = *MEMORY[0x1E69796E8];
  v11 = v9;
  v12 = [v11 layer];
  [v12 setCornerCurve_];

  v13 = [v11 layer];
  [v13 setCornerRadius_];

  v14 = [v11 layer];
  [v14 setMaskedCorners_];

  [v11 setClipsToBounds_];
  v15 = [v11 contentView];
  v16 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v15 setBackgroundColor_];

  v17 = MEMORY[0x1E69E7D40];
  v18 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x188))();
  (*((*v17 & *v11) + 0x190))(v18);

  return v11;
}

void *sub_1BA1921E8(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_accessibilityIdentiferBase];
  v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v26 = v10;

  MEMORY[0x1BFAF1350](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x1BFAF1350](0x6E696D6F636E492ELL, 0xE900000000000067);

  MEMORY[0x1BFAF1350](0x6E6F737265502ELL, 0xE700000000000000);

  v11 = v26;
  *v9 = v25;
  v9[1] = v11;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner] = 0;
  v12 = &v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___currentConstraints] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_anyCancellable] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_currentSpinnerConstraints] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinnerConstraints] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___hiddenSpinnerConstraints] = 0;
  v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_hasWatchIcon] = 0;
  v4[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_hasDisclosureIndicator] = 1;
  v24.receiver = v4;
  v24.super_class = type metadata accessor for ProfileSharingWithYouTileCell();
  v13 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *MEMORY[0x1E69796E8];
  v15 = v13;
  v16 = [v15 layer];
  [v16 setCornerCurve_];

  v17 = [v15 layer];
  [v17 setCornerRadius_];

  v18 = [v15 layer];
  [v18 setMaskedCorners_];

  [v15 setClipsToBounds_];
  v19 = [v15 contentView];
  v20 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v19 setBackgroundColor_];

  v21 = MEMORY[0x1E69E7D40];
  v22 = (*((*MEMORY[0x1E69E7D40] & *v15) + 0x188))();
  (*((*v21 & *v15) + 0x190))(v22);

  return v15;
}

void sub_1BA1925B0()
{
  v1 = [v0 contentView];
  v2 = sub_1BA191BB0();
  [v1 addSubview_];

  v3 = [v0 contentView];
  v4 = sub_1BA191C58();
  [v3 addSubview_];

  v5 = [v0 contentView];
  v6 = sub_1BA191D10();
  [v5 addSubview_];

  v7 = [v0 contentView];
  v8 = sub_1BA191DB4();
  [v7 addSubview_];
}

id sub_1BA1926DC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1BA192798(v2);
  sub_1BA191E60(v3);
  v4 = sub_1BA1946B4();
  sub_1BA19452C(v4);
  v5 = sub_1BA191DB4();
  [v5 setHidden_];

  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner];

  return [v6 stopAnimating];
}

uint64_t sub_1BA192798(uint64_t a1)
{
  v2 = sub_1BA4A7518();
  sub_1B9F109F8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B79D0;
  v4 = sub_1BA191BB0();
  v5 = [v4 leadingAnchor];

  v6 = [v1 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  *(v3 + 32) = v8;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView;
  v10 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView] topAnchor];
  v11 = [v1 contentView];
  v12 = [v11 topAnchor];

  v13 = [v10 constraintEqualToAnchor_];
  *(v3 + 40) = v13;
  v14 = *&v1[v9];
  if (v2)
  {
    v15 = [v14 bottomAnchor];
    v16 = [v1 contentView];
    v17 = [v16 bottomAnchor];

    v18 = [v15 constraintEqualToAnchor_];
    *(v3 + 48) = v18;
    v19 = [*&v1[v9] widthAnchor];
    v20 = [v19 constraintEqualToConstant_];

    *(v3 + 56) = v20;
    v21 = sub_1BA191C58();
    v22 = [v21 leadingAnchor];

    v23 = [*&v1[v9] trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:16.0];

    *(v3 + 64) = v24;
    v25 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView;
    v26 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView] topAnchor];
    v27 = [v1 contentView];
    v28 = [v27 topAnchor];

    v29 = [v26 constraintEqualToAnchor:v28 constant:16.0];
    *(v3 + 72) = v29;
    v30 = sub_1BA191D10();
    v31 = [v30 leadingAnchor];

    v32 = [*&v1[v9] trailingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:16.0];

    *(v3 + 80) = v33;
    v34 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView;
    v35 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView] topAnchor];
    v36 = [*&v1[v25] bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:4.0];

    *(v3 + 88) = v37;
    v38 = [*&v1[v34] bottomAnchor];
    v39 = [v1 contentView];
    v40 = [v39 bottomAnchor];

    v41 = [v38 constraintEqualToAnchor:v40 constant:-16.0];
    *(v3 + 96) = v41;
    v42 = sub_1BA191DB4();
    v43 = [v42 &selRef_cloudSyncObserverSyncCompleted_ + 4];

    v44 = [v1 contentView];
    v45 = [v44 &selRef_cloudSyncObserverSyncCompleted_ + 4];

    v46 = &selRef_didTapSave_;
    v47 = [v43 constraintEqualToAnchor:v45 constant:-16.0];

    *(v3 + 104) = v47;
    v48 = &v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner];
    v49 = &selRef_centerYAnchor;
  }

  else
  {
    v50 = [v14 trailingAnchor];
    v51 = [v1 contentView];
    v52 = [v51 &selRef_cloudSyncObserverSyncCompleted_ + 4];

    v53 = [v50 constraintEqualToAnchor_];
    *(v3 + 48) = v53;
    v54 = sub_1BA191C58();
    v55 = [v54 leadingAnchor];

    v56 = [v1 &selRef_fetchSources];
    v57 = [v56 leadingAnchor];

    v58 = [v55 constraintEqualToAnchor:v57 constant:16.0];
    *(v3 + 56) = v58;
    v59 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView;
    v60 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView] topAnchor];
    v49 = &selRef_bottomAnchor;
    v61 = [*&v1[v9] bottomAnchor];
    v62 = [v60 constraintEqualToAnchor_];

    *(v3 + 64) = v62;
    v63 = sub_1BA191D10();
    v64 = [v63 leadingAnchor];

    v65 = [v1 contentView];
    v66 = [v65 leadingAnchor];

    v67 = [v64 constraintEqualToAnchor:v66 constant:16.0];
    *(v3 + 72) = v67;
    v68 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView;
    v69 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView] topAnchor];
    v70 = [*&v1[v59] bottomAnchor];
    v71 = [v69 constraintEqualToAnchor:v70 constant:4.0];

    *(v3 + 80) = v71;
    v72 = [*&v1[v68] bottomAnchor];
    v73 = [v1 contentView];
    v74 = [v73 bottomAnchor];

    v75 = [v72 constraintEqualToAnchor:v74 constant:-16.0];
    *(v3 + 88) = v75;
    v76 = sub_1BA191DB4();
    v77 = [v76 trailingAnchor];

    v78 = [v1 contentView];
    v79 = [v78 trailingAnchor];

    v46 = &selRef_didTapSave_;
    v80 = [v77 constraintEqualToAnchor:v79 constant:-16.0];

    *(v3 + 96) = v80;
    v48 = &v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner];
    v81 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner] topAnchor];
    v82 = [*&v1[v9] bottomAnchor];
    v83 = [v81 constraintEqualToAnchor_];

    *(v3 + 104) = v83;
  }

  v84 = [*v48 *v49];
  v85 = [v1 contentView];
  v86 = [v85 *v49];

  v87 = [v84 v46[269]];
  *(v3 + 112) = v87;
  return v3;
}

uint64_t sub_1BA193198()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v86 - v10;
  v12 = sub_1BA4A1798();
  v93 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v92 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA198D90(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v86 - v17;
  sub_1BA198D90(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v86 - v21;
  v23 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v1[v23], v96);
  if (v96[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v91 = sub_1B9F0D950(0, &qword_1EBBED460, &protocol descriptor for ProfileSharingWithYouTileItem);
    if (swift_dynamicCast())
    {
      if (*(&v98 + 1))
      {
        v89 = v12;
        v87 = v11;
        v90 = ObjectType;
        v88 = v3;
        sub_1B9F1134C(&v97, v100);
        v24 = sub_1BA191C58();
        v25 = sub_1BA19653C();

        v26 = v101;
        v27 = v102;
        __swift_project_boxed_opaque_existential_1(v100, v101);
        (*(v27 + 72))(&v97, v26, v27);
        __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
        sub_1BA4A2AF8();
        v28 = sub_1BA4A6758();

        __swift_destroy_boxed_opaque_existential_1(&v97);
        [v25 setText_];

        v29 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView];
        v31 = v101;
        v30 = v102;
        __swift_project_boxed_opaque_existential_1(v100, v101);
        v32 = *(v30 + 80);
        v33 = v29;
        v32(v31, v30);
        v34 = sub_1BA4A1728();
        v35 = *(v34 - 8);
        v36 = 0;
        if ((*(v35 + 48))(v22, 1, v34) != 1)
        {
          v36 = sub_1BA4A16B8();
          (*(v35 + 8))(v22, v34);
        }

        if (qword_1EDC6E3F8 != -1)
        {
          swift_once();
        }

        v37 = HKMostRecentSampleEndDateText();

        if (v37)
        {
          v38 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v40 = v39;
        }

        else
        {
          v38 = 0;
          v40 = 0;
        }

        v49 = &v33[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_lastUpdatedTimestampString];
        *v49 = v38;
        v49[1] = v40;

        sub_1BA197284();

        v50 = sub_1BA191BB0();
        v51 = *&v50[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView];

        v52 = v101;
        v53 = v102;
        __swift_project_boxed_opaque_existential_1(v100, v101);
        (*(v53 + 72))(&v97, v52, v53);
        __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
        v54 = sub_1BA4A2AC8();
        if (!v54)
        {
          if (qword_1EBBE8810 != -1)
          {
            swift_once();
          }

          v54 = qword_1EBC098A8;
        }

        v55 = v54;
        __swift_destroy_boxed_opaque_existential_1(&v97);
        [v51 setImage_];

        v56 = v101;
        v57 = v102;
        __swift_project_boxed_opaque_existential_1(v100, v101);
        v58 = (*(v57 + 56))(v56, v57);
        v59 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_colors;
        swift_beginAccess();
        v60 = *&v58[v59];

        *&v97 = v60;
        *(swift_allocObject() + 16) = v1;
        sub_1B9F10B50(0);
        sub_1BA19A450(&qword_1EDC5F468, sub_1B9F10B50, MEMORY[0x1E695BFB0]);
        v61 = v1;
        v62 = sub_1BA4A5148();

        *&v61[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_anyCancellable] = v62;

        sub_1B9F0A534(v100, v96);
        sub_1B9F0D950(0, &qword_1EBBED468, MEMORY[0x1E69A3460]);
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(v94, &v97);
          v63 = v101;
          v64 = v102;
          __swift_project_boxed_opaque_existential_1(v100, v101);
          v65 = (*(v64 + 64))(v63, v64);
          if (!v65)
          {
            v78 = v87;
            sub_1BA4A3DD8();
            v79 = sub_1BA4A3E88();
            v80 = sub_1BA4A6FA8();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              v96[0] = v82;
              *v81 = 136315138;
              v83 = sub_1BA4A85D8();
              v85 = sub_1B9F0B82C(v83, v84, v96);

              *(v81 + 4) = v85;
              _os_log_impl(&dword_1B9F07000, v79, v80, "[%s] could not find associated profileIdentifier to update cell with", v81, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v82);
              MEMORY[0x1BFAF43A0](v82, -1, -1);
              MEMORY[0x1BFAF43A0](v81, -1, -1);
            }

            (*(v4 + 8))(v78, v88);
            __swift_destroy_boxed_opaque_existential_1(&v97);
            return __swift_destroy_boxed_opaque_existential_1(v100);
          }

          v66 = v65;
          __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
          sub_1BA4A3438();
          v67 = v101;
          v68 = v102;
          __swift_project_boxed_opaque_existential_1(v100, v101);
          (*(v68 + 72))(v96, v67, v68);
          v69 = [v66 identifier];
          v70 = v92;
          sub_1BA4A1778();

          v71 = sub_1BA190EF0(v18, v96, v70, [v66 type]);
          (*(v93 + 8))(v70, v89, v71);
          __swift_destroy_boxed_opaque_existential_1(v96);
          v72 = MEMORY[0x1E69A33B0];
          sub_1BA19A390(v18, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
          v73 = v66;
          v74 = v101;
          v75 = v102;
          __swift_project_boxed_opaque_existential_1(v100, v101);
          __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
          sub_1BA4A3438();
          sub_1BA1847C8(v18, v74, *(v75 + 16), v96);
          sub_1BA19A390(v18, &qword_1EBBE97C8, v72);
          sub_1BA1942D8(v96);

          __swift_destroy_boxed_opaque_existential_1(&v97);
        }

        else
        {
          v95 = 0;
          memset(v94, 0, sizeof(v94));
          sub_1B9F43F68(v94, &qword_1EBBED470, &qword_1EBBED468, MEMORY[0x1E69A3460]);
          v76 = v101;
          v77 = v102;
          __swift_project_boxed_opaque_existential_1(v100, v101);
          (*(*(v77 + 16) + 8))(&v97, v76);
          sub_1BA1942D8(&v97);
        }

        sub_1BA193DE8();
        return __swift_destroy_boxed_opaque_existential_1(v100);
      }
    }

    else
    {
      v99 = 0;
      v97 = 0u;
      v98 = 0u;
    }
  }

  else
  {
    sub_1B9F43F68(v96, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v97 = 0u;
    v98 = 0u;
    v99 = 0;
  }

  sub_1B9F43F68(&v97, &qword_1EBBED458, &qword_1EBBED460, &protocol descriptor for ProfileSharingWithYouTileItem);
  sub_1BA4A3E28();
  v41 = sub_1BA4A3E88();
  v42 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v100[0] = v44;
    *v43 = 136315138;
    v45 = sub_1BA4A85D8();
    v47 = sub_1B9F0B82C(v45, v46, v100);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_1B9F07000, v41, v42, "[%s] item is not an ProfileSharingWithYouTileItem", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x1BFAF43A0](v44, -1, -1);
    MEMORY[0x1BFAF43A0](v43, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_1BA193D7C(unint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1BA191BB0();
  v3 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_gradientView];

  sub_1B9F45E40(v1);
}

void sub_1BA193DE8()
{
  v1 = v0;
  v2 = sub_1BA4A6758();
  [v1 setAccessibilityIdentifier_];

  MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA4F0990);
  v3 = sub_1BA191BB0();
  v4 = sub_1BA4A6758();
  [v3 setAccessibilityIdentifier_];

  v5 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView;
  v6 = *(*&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView] + OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_gradientView);

  MEMORY[0x1BFAF1350](0x6E6569646172472ELL, 0xE900000000000074);
  v7 = sub_1BA4A6758();

  [v6 setAccessibilityIdentifier_];

  v8 = *(*&v1[v5] + OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView);

  v9 = v8;
  MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
  v10 = sub_1BA4A6758();

  [v9 setAccessibilityIdentifier_];

  v11 = *&v1[v5];
  v12 = sub_1BA194F80();

  MEMORY[0x1BFAF1350](0x6F7373656363412ELL, 0xEA00000000007972);

  v13 = sub_1BA4A6758();

  [v12 setAccessibilityIdentifier_];

  MEMORY[0x1BFAF1350](0x7265646165482ELL, 0xE700000000000000);
  v14 = sub_1BA191C58();
  v15 = sub_1BA4A6758();
  [v14 setAccessibilityIdentifier_];

  v16 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView;
  v17 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView];
  v18 = sub_1BA19653C();

  MEMORY[0x1BFAF1350](0x656D614E2ELL, 0xE500000000000000);
  v19 = sub_1BA4A6758();

  [v18 setAccessibilityIdentifier_];

  v20 = *&v1[v16];
  v21 = sub_1BA1969D8();

  MEMORY[0x1BFAF1350](0xD000000000000015, 0x80000001BA4F09B0);
  v22 = sub_1BA4A6758();

  [v21 setAccessibilityIdentifier_];

  v23 = *&v1[v16];
  v24 = sub_1BA196E44();

  MEMORY[0x1BFAF1350](0x6F7373656363412ELL, 0xEA00000000007972);

  v25 = sub_1BA4A6758();

  [v24 setAccessibilityIdentifier_];

  v26 = sub_1BA191D10();

  MEMORY[0x1BFAF1350](0x746E65746E6F432ELL, 0xEC00000077656956);
  v27 = sub_1BA4A6758();

  [v26 setAccessibilityIdentifier_];

  v28 = sub_1BA191DB4();

  MEMORY[0x1BFAF1350](0x72656E6E6970532ELL, 0xE800000000000000);
  v29 = sub_1BA4A6758();

  [v28 setAccessibilityIdentifier_];
}

id sub_1BA1942D8(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = sub_1BA191C58();
  v4[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_isDisabled] = v3 != 2;
  sub_1BA197188();

  v5 = sub_1BA191BB0();
  v6 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_isDisabled;
  v5[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_isDisabled] = v3 != 2;
  v7 = sub_1BA194F80();
  v8 = [v5 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  LOBYTE(v8) = sub_1BA4A7518();
  if ((v8 & 1) != 0 || (v5[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasDisclosureIndicator] & 1) == 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = v5[v6];
  }

  [v7 setHidden_];

  [v2 setUserInteractionEnabled_];
  v11 = [v2 contentView];
  v12 = v11;
  if (v3)
  {
    v13 = 0.75;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = (v3 & 1) == 0 && v3 != 2;
  [v11 setAlpha_];

  v15 = [v2 contentView];
  v16 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v17 = [v16 colorWithAlphaComponent_];

  [v15 setBackgroundColor_];
  if (v14)
  {
    v18 = sub_1BA194538();
    v19 = &selRef_startAnimating;
  }

  else
  {
    v18 = sub_1BA1946B4();
    v19 = &selRef_stopAnimating;
  }

  sub_1BA19452C(v18);
  v20 = sub_1BA191DB4();
  [v20 setHidden_];

  v21 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner];
  v22 = *v19;

  return [v21 v22];
}

uint64_t sub_1BA194538()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinnerConstraints;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinnerConstraints))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinnerConstraints);
  }

  else
  {
    sub_1B9F109F8();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BA4B7510;
    v3 = sub_1BA191C58();
    v4 = [v3 trailingAnchor];

    v5 = sub_1BA191DB4();
    v6 = [v5 leadingAnchor];

    v7 = [v4 constraintEqualToAnchor:v6 constant:-12.0];
    *(v2 + 32) = v7;
    v8 = sub_1BA191D10();
    v9 = [v8 trailingAnchor];

    v10 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner) leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:-12.0];

    *(v2 + 40) = v11;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1BA1946B4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___hiddenSpinnerConstraints;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___hiddenSpinnerConstraints))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___hiddenSpinnerConstraints);
  }

  else
  {
    sub_1B9F109F8();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BA4B8B60;
    v3 = sub_1BA191DB4();
    v4 = [v3 widthAnchor];

    v5 = [v4 constraintEqualToConstant_];
    *(v2 + 32) = v5;
    v6 = sub_1BA191C58();
    v7 = [v6 trailingAnchor];

    v8 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner;
    v9 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner) leadingAnchor];
    v10 = [v7 constraintEqualToAnchor:v9 constant:0.0];

    *(v2 + 40) = v10;
    v11 = sub_1BA191D10();
    v12 = [v11 trailingAnchor];

    v13 = [*(v0 + v8) leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:0.0];

    *(v2 + 48) = v14;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1BA1949A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA194A00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8))(v4);
  return sub_1B9F43F68(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t (*sub_1BA194AC8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA194B2C;
}

uint64_t sub_1BA194B2C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x1B8))(result);
  }

  return result;
}

uint64_t sub_1BA194B98(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1BA4A40A8();
  v18.receiver = v2;
  v18.super_class = type metadata accessor for ProfileSharingWithYouTileCell();
  objc_msgSendSuper2(&v18, sel__bridgedUpdateConfigurationUsingState_, v3);

  v14 = v2;
  sub_1B9F0D950(0, &qword_1EBBED448, &protocol descriptor for HighlightColorProviding);
  v4 = v2;
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v12, v15);
    v5 = [v4 isHighlighted];
    v6 = [v4 contentView];
    v7 = v16;
    v8 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    if (v5)
    {
      v9 = (*(v8 + 8))(v7, v8);
    }

    else
    {
      v9 = (*(v8 + 16))(v7, v8);
    }

    v11 = v9;
    [v6 setBackgroundColor_];

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    return sub_1B9F43F68(v12, &qword_1EBBED450, &qword_1EBBED448, &protocol descriptor for HighlightColorProviding);
  }
}

id sub_1BA194E0C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 layer];
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  [v1 setShadowColor_];
  v4 = [v0 layer];
  LODWORD(v5) = 1041865114;
  [v4 setShadowOpacity_];

  v6 = [v0 layer];
  [v6 setShadowOffset_];

  v7 = [v0 layer];
  [v7 setShadowRadius_];

  return v0;
}

id sub_1BA194F90()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___watchIconImage;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___watchIconImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___watchIconImage);
  }

  else
  {
    v4 = sub_1BA194FF0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA194FF0()
{
  v0 = [objc_opt_self() systemFontOfSize_];
  v1 = [objc_opt_self() configurationWithFont_];

  v2 = sub_1BA4A6758();
  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    v4 = [v3 imageWithConfiguration_];
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v6 = objc_opt_self();
  v7 = [v6 systemBackgroundColor];
  [v5 setBackgroundColor_];

  v8 = [v5 layer];
  v9 = [v5 layer];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v40.origin.x = v11;
  v40.origin.y = v13;
  v40.size.width = v15;
  v40.size.height = v17;
  [v8 setCornerRadius_];

  [v5 setClipsToBounds_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v19 = [v6 secondaryLabelColor];
  [v18 setTintColor_];

  v20 = v18;
  [v20 setContentMode_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = [v5 layer];
  [v21 setBorderWidth_];

  v22 = [v5 layer];
  sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  v23 = sub_1BA4A7738();
  v24 = [v23 CGColor];

  [v22 setBorderColor_];
  v25 = [v5 layer];
  [v25 setMasksToBounds_];

  v26 = [v5 layer];
  v27 = [v6 blackColor];
  v28 = [v27 CGColor];

  [v26 setShadowColor_];
  v29 = [v5 layer];
  LODWORD(v30) = 1041865114;
  [v29 setShadowOpacity_];

  v31 = [v5 layer];
  [v31 setShadowOffset_];

  v32 = [v5 layer];
  [v32 setShadowRadius_];

  [v5 addSubview_];
  v33 = [v20 centerYAnchor];
  v34 = [v5 centerYAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  [v35 setActive_];
  v36 = [v20 centerXAnchor];

  v37 = [v5 centerXAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  [v38 setActive_];
  return v5;
}

uint64_t sub_1BA1955AC(uint64_t *a1, uint64_t (*a2)(id))
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v7 = [v2 traitCollection];
    v8 = [v7 preferredContentSizeCategory];

    v5 = a2(v8);
    *&v2[v3] = v5;
  }

  return v5;
}

void sub_1BA195680(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  a2();
  *(v3 + *a3) = a1;

  v6 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v7 = sub_1BA4A6AE8();

  [v6 deactivateConstraints_];

  v8 = sub_1BA4A6AE8();

  [v6 activateConstraints_];
}

id sub_1BA19577C(char a1, char a2)
{
  v5 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_blurView;
  v6 = [objc_opt_self() effectWithStyle_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v5] = v7;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_gradientView;
  type metadata accessor for ProfileGradientView();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v8] = v9;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView;
  *&v2[v10] = sub_1BA194E0C();
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___disclosureIndicator] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___watchIconImage] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___currentConstraints] = 0;
  v2[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_isDisabled] = 0;
  v2[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasWatchIcon] = a1;
  v2[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasDisclosureIndicator] = a2;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for ProfileGradientViewWithImage();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BA195928();
  sub_1BA195A24();

  return v11;
}

void sub_1BA195928()
{
  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  if (v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasDisclosureIndicator] == 1)
  {
    v1 = sub_1BA194F80();
    [v0 addSubview_];
  }

  if (v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasWatchIcon] == 1)
  {
    v2 = sub_1BA194F90();
    [v0 addSubview_];
  }
}

void sub_1BA195A24()
{
  [v0 hk:*&v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_gradientView] alignConstraintsWithView:?];
  [v0 hk:*&v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_blurView] alignConstraintsWithView:?];
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1BA195B7C(v2);
  sub_1BA195660(v3);
  v7 = sub_1BA194F80();
  v4 = [v0 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = sub_1BA4A7518();
  if ((v4 & 1) != 0 || (v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasDisclosureIndicator] & 1) == 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = v0[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_isDisabled];
  }

  [v7 setHidden_];
}

uint64_t sub_1BA195B7C(uint64_t a1)
{
  v2 = &selRef_didTapSave_;
  if (v1[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasWatchIcon] == 1)
  {
    sub_1B9F109F8();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1BA4B5890;
    v4 = sub_1BA194F90();
    v5 = [v4 heightAnchor];

    v6 = [v5 constraintEqualToConstant_];
    *(v3 + 32) = v6;
    v7 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___watchIconImage;
    v8 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___watchIconImage] widthAnchor];
    v9 = [v8 constraintEqualToConstant_];

    *(v3 + 40) = v9;
    v10 = [*&v1[v7] trailingAnchor];
    v11 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView;
    v12 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView] trailingAnchor];
    v13 = [v10 constraintEqualToAnchor:v12 constant:3.0];

    *(v3 + 48) = v13;
    v14 = [*&v1[v7] bottomAnchor];
    v2 = &selRef_didTapSave_;
    v15 = [*&v1[v11] bottomAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    v57 = v3;
    *(v3 + 56) = v16;
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1BA4A7528())
  {
    if (v1[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasDisclosureIndicator] == 1)
    {
      sub_1B9F109F8();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BA4B7510;
      v18 = sub_1BA194F80();
      v19 = [v18 centerYAnchor];

      v20 = [v1 centerYAnchor];
      v21 = [v19 constraintEqualToAnchor_];

      *(v17 + 32) = v21;
      v22 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___disclosureIndicator] trailingAnchor];
      v23 = [v1 trailingAnchor];
      v24 = [v22 constraintEqualToAnchor:v23 constant:-16.0];

      *(v17 + 40) = v24;
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    sub_1B9F109F8();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BA4B5880;
    v31 = [v1 heightAnchor];
    v32 = [v31 v2[271]];

    *(v30 + 32) = v32;
    v33 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView;
    v34 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView] widthAnchor];
    v35 = [v34 v2[271]];

    *(v30 + 40) = v35;
    v36 = [*&v1[v33] heightAnchor];
    v37 = [v36 v2[271]];

    *(v30 + 48) = v37;
    v38 = [*&v1[v33] leadingAnchor];
    v39 = [v1 leadingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:14.0];

    *(v30 + 56) = v40;
    v41 = [*&v1[v33] topAnchor];
    v42 = [v1 topAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:14.0];

    *(v30 + 64) = v43;
    sub_1B9F73B50(v57);
    sub_1B9F73B50(v17);
    return v30;
  }

  else
  {
    v25 = sub_1BA4A7538();
    v26 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView];
    if (v25)
    {
      v27 = [v26 centerYAnchor];
      v28 = [v1 centerYAnchor];
      v29 = [v27 constraintEqualToAnchor_];
    }

    else
    {
      v27 = [v26 topAnchor];
      v28 = [v1 topAnchor];
      v29 = [v27 constraintEqualToAnchor:v28 constant:14.0];
    }

    v45 = v29;

    sub_1B9F109F8();
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1BA4B5880;
    v47 = [v1 heightAnchor];
    v48 = [v47 constraintGreaterThanOrEqualToConstant_];

    *(v46 + 32) = v48;
    v49 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView;
    v50 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView] widthAnchor];
    v51 = [v50 v2[271]];

    *(v46 + 40) = v51;
    v52 = [*&v1[v49] heightAnchor];
    v53 = [v52 v2[271]];

    *(v46 + 48) = v53;
    v54 = [*&v1[v49] centerXAnchor];
    v55 = [v1 centerXAnchor];
    v56 = [v54 &selRef:v55 numberWithInteger:? + 5];

    *(v46 + 56) = v56;
    *(v46 + 64) = v45;
    sub_1B9F73B50(v57);
    return v46;
  }
}

void sub_1BA1962A4(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ProfileGradientViewWithImage();
  objc_msgSendSuper2(&v10, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_1BA195B7C(v4);
  sub_1BA195660(v5);
  v6 = sub_1BA194F80();
  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  LOBYTE(v7) = sub_1BA4A7518();
  if ((v7 & 1) != 0 || (v1[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_hasDisclosureIndicator] & 1) == 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v1[OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_isDisabled];
  }

  [v6 setHidden_];
}

id sub_1BA19653C()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel;
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel);
  }

  else
  {
    v41 = v4;
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = [objc_opt_self() labelColor];
    [v10 setTextColor_];

    [v10 setAdjustsFontForContentSizeCategory_];
    v12 = *MEMORY[0x1E69DDCF8];
    v13 = objc_opt_self();
    v14 = [v13 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
    v15 = [v14 fontDescriptorWithSymbolicTraits_];

    if (v15)
    {
      v16 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
    }

    else
    {
      v40 = v0;
      sub_1BA4A3DD8();
      v17 = v12;
      v18 = sub_1BA4A3E88();
      v19 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v44 = v38;
        *v20 = 136315906;
        v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v39 = v2;
        v23 = sub_1B9F0B82C(v21, v22, &v44);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        v42 = 0;
        v43 = 1;
        sub_1BA198D90(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v24 = sub_1BA4A6808();
        v26 = sub_1B9F0B82C(v24, v25, &v44);

        *(v20 + 14) = v26;
        *(v20 + 22) = 2080;
        LODWORD(v42) = 32770;
        type metadata accessor for SymbolicTraits(0);
        v27 = sub_1BA4A6808();
        v29 = sub_1B9F0B82C(v27, v28, &v44);

        *(v20 + 24) = v29;
        *(v20 + 32) = 2112;
        v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v20 + 34) = v30;
        v31 = v37;
        *v37 = v30;
        _os_log_impl(&dword_1B9F07000, v18, v19, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v20, 0x2Au);
        sub_1B9F8C6C8(v31);
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        v32 = v38;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v32, -1, -1);
        MEMORY[0x1BFAF43A0](v20, -1, -1);

        (*(v39 + 8))(v6, v41);
      }

      else
      {

        (*(v2 + 8))(v6, v41);
      }

      v0 = v40;
      v33 = [v13 preferredFontDescriptorWithTextStyle_];
      v16 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
    }

    [v10 setFont_];

    v34 = *(v0 + v7);
    *(v0 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v35 = v8;
  return v9;
}

id sub_1BA1969D8()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp;
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp);
  }

  else
  {
    v41 = v4;
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    [v10 setNumberOfLines_];
    v11 = [objc_opt_self() secondaryLabelColor];
    [v10 setTextColor_];

    [v10 setAdjustsFontForContentSizeCategory_];
    v12 = *MEMORY[0x1E69DDD80];
    v13 = objc_opt_self();
    v14 = [v13 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];
    }

    else
    {
      v40 = v0;
      sub_1BA4A3DD8();
      v17 = v12;
      v18 = sub_1BA4A3E88();
      v19 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v44 = v38;
        *v20 = 136315906;
        v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v39 = v17;
        v23 = sub_1B9F0B82C(v21, v22, &v44);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        v42 = 0;
        v43 = 1;
        sub_1BA198D90(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v24 = sub_1BA4A6808();
        v26 = sub_1B9F0B82C(v24, v25, &v44);

        *(v20 + 14) = v26;
        *(v20 + 22) = 2080;
        LODWORD(v42) = 0;
        type metadata accessor for SymbolicTraits(0);
        v27 = sub_1BA4A6808();
        v29 = sub_1B9F0B82C(v27, v28, &v44);
        v17 = v39;

        *(v20 + 24) = v29;
        *(v20 + 32) = 2112;
        v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v20 + 34) = v30;
        v31 = v37;
        *v37 = v30;
        _os_log_impl(&dword_1B9F07000, v18, v19, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v20, 0x2Au);
        sub_1B9F8C6C8(v31);
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        v32 = v38;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v32, -1, -1);
        MEMORY[0x1BFAF43A0](v20, -1, -1);
      }

      (*(v2 + 8))(v6, v41);
      v0 = v40;
      v33 = [v13 preferredFontDescriptorWithTextStyle_];
      v16 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
    }

    [v10 setFont_];

    v34 = *(v0 + v7);
    *(v0 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v35 = v8;
  return v9;
}

id sub_1BA196E54(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
    v8 = [objc_opt_self() configurationWithFont:v7 scale:1];
    v9 = sub_1BA4A6758();
    v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

    v11 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    [v11 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    v12 = [objc_opt_self() tertiaryLabelColor];
    [v11 setTintColor_];

    [v11 setContentMode_];
    LODWORD(v13) = 1148846080;
    [v11 setContentCompressionResistancePriority:0 forAxis:v13];

    v14 = *(v2 + v3);
    *(v2 + v3) = v11;
    v5 = v11;

    v4 = 0;
  }

  v15 = v4;
  return v5;
}

uint64_t sub_1BA197048()
{
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___currentConstraints))
  {
    v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___currentConstraints);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___currentConstraints) = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void sub_1BA197090(uint64_t a1)
{
  sub_1BA197048();
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___currentConstraints) = a1;

  v3 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v4 = sub_1BA4A6AE8();

  [v3 deactivateConstraints_];

  v5 = sub_1BA4A6AE8();

  [v3 activateConstraints_];
}

void sub_1BA197188()
{
  v1 = sub_1BA19653C();
  v2 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_isDisabled;
  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_isDisabled);
  v4 = objc_opt_self();
  v5 = &selRef_secondaryLabelColor;
  if (!v3)
  {
    v5 = &selRef_labelColor;
  }

  v6 = [v4 *v5];
  [v1 setTextColor_];

  v7 = sub_1BA196E44();
  v8 = v7;
  if (*(v0 + v2))
  {
    v9 = 1;
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_hasDisclosureIndicator) ^ 1;
  }

  [v7 setHidden_];

  v10 = sub_1BA1969D8();
  [v10 setHidden_];
}

void sub_1BA197284()
{
  v1 = sub_1BA1969D8();
  v2 = v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_lastUpdatedTimestampString;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_lastUpdatedTimestampString + 8))
  {

    v3 = sub_1BA4A6758();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText_];

  if (*(v2 + 8) && (, sub_1BA4A6878(), v5 = v4, , v5))
  {

    v6 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_isDisabled) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  sub_1BA197BBC(v6 & 1);
}

id sub_1BA197378(char a1, char a2)
{
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___currentConstraints] = 0;
  v3 = &v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_lastUpdatedTimestampString];
  *v3 = 0;
  v3[1] = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_currentDisclosureIndicatorConstraints] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicatorWidthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicatorLeadingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___emptyDisclosureIndicatorLeadingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_currentDateLabelConstraints] = v4;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestampWidthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestampHeightConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestampLeadingAnchorConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___emptyLastUpdatedTimestampLeadingAnchorConstraint] = 0;
  v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_hasDisclosureIndicator] = a1;
  v2[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_isDisabled] = a2;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for ProfileSharingWithYouHeaderView();
  v5 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = sub_1BA19653C();
  [v5 addSubview_];

  v7 = sub_1BA1969D8();
  [v5 addSubview_];

  v8 = sub_1BA196E44();
  [v5 addSubview_];

  v9 = [v5 traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  sub_1BA197D34(v10);
  return v5;
}

void sub_1BA197594(uint64_t a1, uint64_t *a2)
{
  *(v2 + *a2) = a1;
  v3 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v4 = sub_1BA4A6AE8();

  [v3 deactivateConstraints_];

  v5 = sub_1BA4A6AE8();

  [v3 activateConstraints_];
}

void sub_1BA1976A0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_hasDisclosureIndicator);
  v3 = sub_1BA196E44();
  v18 = v3;
  if (v2)
  {
    [v3 setHidden_];

    if (sub_1BA4A7518())
    {
      sub_1B9F109F8();
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1BA4B5470;
      v5 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator) leadingAnchor];
      v6 = sub_1BA1969D8();
      v7 = [v6 trailingAnchor];

      v8 = [v5 constraintEqualToAnchor:v7 constant:8.0];
      *(v4 + 32) = v8;
    }

    else if (sub_1BA4A7518())
    {
      v9 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator;
      v10 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator) leadingAnchor];
      v11 = sub_1BA19653C();
      v12 = [v11 trailingAnchor];

      v13 = [v10 constraintGreaterThanOrEqualToAnchor:v12 constant:8.0];
      LODWORD(v14) = 1144750080;
      [v13 setPriority_];

      sub_1B9F109F8();
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1BA4B5470;
      v15 = [*(v1 + v9) leadingAnchor];
      v16 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel) trailingAnchor];
      v17 = [v15 constraintGreaterThanOrEqualToAnchor:v16 constant:8.0];

      *(v4 + 32) = v17;
    }

    else
    {
      sub_1B9F109F8();
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1BA4B5470;
      *(v4 + 32) = sub_1BA197678();
    }

    sub_1BA197588(v4);
  }

  else
  {
    [v3 setHidden_];
  }
}

id sub_1BA1979CC(uint64_t *a1, uint64_t (*a2)(void), SEL *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = a2();
    v9 = [v8 *a3];

    v10 = [v9 constraintEqualToConstant_];
    v11 = *(v3 + v4);
    *(v3 + v4) = v10;
    v6 = v10;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

id sub_1BA197AC0(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = sub_1BA1969D8();
    v8 = [v7 leadingAnchor];

    v9 = sub_1BA19653C();
    v10 = [v9 trailingAnchor];

    v11 = [v8 constraintGreaterThanOrEqualToAnchor:v10 constant:a2];
    LODWORD(v12) = 1144750080;
    [v11 setPriority_];
    v13 = *(v2 + v3);
    *(v2 + v3) = v11;
    v5 = v11;

    v4 = 0;
  }

  v14 = v4;
  return v5;
}

void sub_1BA197BBC(char a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_1BA4A7518();
  if (v3)
  {
    sub_1B9F109F8();
    if (a1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1BA4B5470;
      *(v5 + 32) = sub_1BA197AA0();
      sub_1BA197998(v5);
      v6 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestampLeadingAnchorConstraint];
      LODWORD(v7) = 1144750080;

      [v6 setPriority_];
      return;
    }

    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BA4B7510;
    *(v9 + 32) = sub_1BA1979A4();
    *(v9 + 40) = sub_1BA197AB0();
    goto LABEL_10;
  }

  if ((a1 & 1) == 0)
  {
    sub_1B9F109F8();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BA4B5470;
    *(v9 + 32) = sub_1BA197A78();
LABEL_10:
    v8 = v9;
    goto LABEL_11;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_11:

  sub_1BA197998(v8);
}

void sub_1BA197D34(uint64_t a1)
{
  v3 = sub_1BA197E10(a1);
  sub_1BA197090(v3);
  v4 = sub_1BA4A7518();
  v5 = sub_1BA19653C();
  [v5 setNumberOfLines_];

  sub_1BA1976A0(a1);
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_lastUpdatedTimestampString + 8) && (, sub_1BA4A6878(), v7 = v6, , v7))
  {

    v8 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_isDisabled) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  sub_1BA197BBC(v8 & 1);
}

uint64_t sub_1BA197E10(uint64_t a1)
{
  if ((v1[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_hasDisclosureIndicator] & 1) == 0)
  {
    sub_1B9F109F8();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BA4B5890;
    v41 = sub_1BA19653C();
    v42 = [v41 leadingAnchor];

    v43 = [v1 leadingAnchor];
    v44 = [v42 constraintEqualToAnchor_];

    *(v13 + 32) = v44;
    v45 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel;
    v46 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel] topAnchor];
    v47 = [v1 topAnchor];
    v48 = [v46 constraintEqualToAnchor_];

    *(v13 + 40) = v48;
    v49 = [*&v1[v45] bottomAnchor];
    v50 = [v1 bottomAnchor];
    v51 = [v49 constraintEqualToAnchor_];

    *(v13 + 48) = v51;
    v38 = (v13 + 56);
    v52 = [*&v1[v45] trailingAnchor];
LABEL_5:
    v39 = v52;
    v40 = [v1 trailingAnchor];
    goto LABEL_6;
  }

  if ((sub_1BA4A7518() & 1) == 0)
  {
    if (sub_1BA4A7518())
    {
      v56 = sub_1BA196E44();
      v57 = [v56 trailingAnchor];

      v58 = [v1 &selRef_cloudSyncObserverSyncCompleted_ + 4];
      v59 = [v57 constraintEqualToAnchor_];

      LODWORD(v60) = 1144750080;
      [v59 setPriority_];

      v61 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator;
      v62 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator] leadingAnchor];
      v63 = sub_1BA19653C();
      v64 = [v63 &selRef_cloudSyncObserverSyncCompleted_ + 4];

      v65 = [v62 constraintGreaterThanOrEqualToAnchor:v64 constant:8.0];
      LODWORD(v66) = 1144750080;
      [v65 setPriority_];

      sub_1B9F109F8();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1BA4C27B0;
      v67 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel;
      v68 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel] &selRef__totalDistance + 1];
      v69 = [v1 &selRef__totalDistance + 1];
      v70 = [v68 &selRef:v69 numberWithInteger:? + 5];

      *(v13 + 32) = v70;
      v71 = [*&v1[v67] topAnchor];
      v72 = [v1 topAnchor];
      v73 = [v71 &selRef:v72 numberWithInteger:? + 5];

      *(v13 + 40) = v73;
      v74 = sub_1BA1969D8();
      v75 = [v74 &selRef__totalDistance + 1];

      v76 = [v1 &selRef__totalDistance + 1];
      v77 = [v75 &selRef:v76 numberWithInteger:? + 5];

      *(v13 + 48) = v77;
      v78 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp;
      v79 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp] topAnchor];
      v80 = [*&v1[v67] bottomAnchor];
      v81 = [v79 &selRef:v80 numberWithInteger:? + 5];

      *(v13 + 56) = v81;
      v82 = [*&v1[v78] bottomAnchor];
      v83 = [v1 bottomAnchor];
      v84 = [v82 &selRef:v83 numberWithInteger:? + 5];

      *(v13 + 64) = v84;
      v85 = [*&v1[v78] trailingAnchor];
      v86 = [v1 trailingAnchor];
      v87 = [v85 &selRef:v86 numberWithInteger:? + 5];

      *(v13 + 72) = v87;
      v88 = [*&v1[v61] leadingAnchor];
      v89 = [*&v1[v67] trailingAnchor];
      v90 = [v88 constraintGreaterThanOrEqualToAnchor:v89 constant:8.0];

      *(v13 + 80) = v90;
      v91 = [*&v1[v61] trailingAnchor];
      v92 = [v1 trailingAnchor];
      v93 = [v91 &selRef:v92 numberWithInteger:? + 5];

      *(v13 + 88) = v93;
      v38 = (v13 + 96);
      v39 = [*&v1[v61] firstBaselineAnchor];
      v40 = [*&v1[v67] firstBaselineAnchor];
      goto LABEL_6;
    }

    sub_1B9F109F8();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BA4C27A0;
    v94 = sub_1BA19653C();
    v95 = [v94 leadingAnchor];

    v96 = [v1 leadingAnchor];
    v97 = [v95 constraintEqualToAnchor_];

    *(v13 + 32) = v97;
    v98 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel;
    v99 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel] topAnchor];
    v100 = [v1 topAnchor];
    v101 = [v99 &selRef:v100 numberWithInteger:? + 5];

    *(v13 + 40) = v101;
    v102 = [*&v1[v98] trailingAnchor];
    v103 = [v1 &selRef_cloudSyncObserverSyncCompleted_ + 4];
    v104 = [v102 &selRef:v103 numberWithInteger:? + 5];

    *(v13 + 48) = v104;
    v105 = sub_1BA1969D8();
    v106 = [v105 leadingAnchor];

    v107 = [v1 leadingAnchor];
    v108 = [v106 &selRef:v107 numberWithInteger:? + 5];

    *(v13 + 56) = v108;
    v109 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp;
    v110 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp] topAnchor];
    v111 = [*&v1[v98] bottomAnchor];
    v112 = [v110 &selRef:v111 numberWithInteger:? + 5];

    *(v13 + 64) = v112;
    v113 = [*&v1[v109] bottomAnchor];
    v114 = [v1 bottomAnchor];
    v115 = [v113 &selRef:v114 numberWithInteger:? + 5];

    *(v13 + 72) = v115;
    v38 = (v13 + 80);
    v52 = [*&v1[v109] trailingAnchor];
    goto LABEL_5;
  }

  v2 = sub_1BA196E44();
  v3 = [v2 trailingAnchor];

  v4 = [v1 &selRef_cloudSyncObserverSyncCompleted_ + 4];
  v5 = [v3 constraintEqualToAnchor_];

  LODWORD(v6) = 1144750080;
  [v5 setPriority_];

  v7 = sub_1BA1969D8();
  v8 = [v7 leadingAnchor];

  v9 = sub_1BA19653C();
  v10 = [v9 &selRef_cloudSyncObserverSyncCompleted_ + 4];

  v11 = [v8 constraintGreaterThanOrEqualToAnchor:v10 constant:12.0];
  LODWORD(v12) = 1144750080;
  [v11 setPriority_];

  sub_1B9F109F8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4BBC90;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel;
  v15 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel] &selRef__totalDistance + 1];
  v16 = [v1 &selRef__totalDistance + 1];
  v17 = [v15 constraintEqualToAnchor_];

  *(v13 + 32) = v17;
  v18 = [*&v1[v14] topAnchor];
  v19 = [v1 topAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v13 + 40) = v20;
  v21 = [*&v1[v14] bottomAnchor];
  v22 = [v1 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v13 + 48) = v23;
  v24 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp;
  v25 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp] &selRef__totalDistance + 1];
  v26 = [*&v1[v14] trailingAnchor];
  v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26 constant:12.0];

  *(v13 + 56) = v27;
  v28 = [*&v1[v24] firstBaselineAnchor];
  v29 = [*&v1[v14] firstBaselineAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v13 + 64) = v30;
  v31 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator;
  v32 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator] leadingAnchor];
  v33 = [*&v1[v24] trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:8.0];

  *(v13 + 72) = v34;
  v35 = [*&v1[v31] trailingAnchor];
  v36 = [v1 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v13 + 80) = v37;
  v38 = (v13 + 88);
  v39 = [*&v1[v31] firstBaselineAnchor];
  v40 = [*&v1[v14] firstBaselineAnchor];
LABEL_6:
  v53 = v40;
  v54 = [v39 constraintEqualToAnchor_];

  *v38 = v54;
  return v13;
}

id sub_1BA198C24(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA198D90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BA198DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BA19A498();
    v3 = sub_1BA4A8098();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BA19A4FC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1B9F24A34(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B9F46920(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1BA198EE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a1;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A1798();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v17 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA199750(a5, a2, a3, v35);
  if (v35[1])
  {
    v31[2] = v35[3];
    v31[3] = v35[4];
    v31[1] = v35[2];
    (*(v14 + 16))(v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v13);
    v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    (*(v14 + 32))(v20 + v18, v17, v13);
    *(v20 + v19) = a5;
    v21 = sub_1BA4A6758();
    aBlock[4] = sub_1BA19A670;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA0B06D4;
    aBlock[3] = &block_descriptor_115;
    v22 = _Block_copy(aBlock);

    v23 = [objc_opt_self() actionWithTitle:v21 style:0 handler:v22];
    _Block_release(v22);

    v24 = sub_1BA4A6758();
    v25 = sub_1BA4A6758();
    v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

    [v26 addAction_];
    if (v33)
    {
      [v33 presentViewController:v26 animated:1 completion:0];
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1B9F0B82C(0xD000000000000015, 0x80000001BA4F09F0, aBlock);
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%s] could not get the error message to display for failed end sharing relationship state", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
  }
}

void sub_1BA19931C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a1;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A1798();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v17 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA199750(a5, a2, a3, v35);
  if (v35[1])
  {
    v31[2] = v35[3];
    v31[3] = v35[4];
    v31[1] = v35[2];
    (*(v14 + 16))(v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v13);
    v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    (*(v14 + 32))(v20 + v18, v17, v13);
    *(v20 + v19) = a5;
    v21 = sub_1BA4A6758();
    aBlock[4] = sub_1BA19A670;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA0B06D4;
    aBlock[3] = &block_descriptor_101;
    v22 = _Block_copy(aBlock);

    v23 = [objc_opt_self() actionWithTitle:v21 style:0 handler:v22];
    _Block_release(v22);

    v24 = sub_1BA4A6758();
    v25 = sub_1BA4A6758();
    v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

    [v26 addAction_];
    if (v33)
    {
      [v33 presentViewController:v26 animated:1 completion:0];
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4C27C0, aBlock);
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%s] could not get the error message to display for failed end sharing relationship state", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
  }
}

void sub_1BA199750(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1 == 1)
  {
    if (qword_1EBBE89B8 != -1)
    {
      swift_once();
    }

    if (qword_1EBBE89A0 == -1)
    {
      goto LABEL_18;
    }

LABEL_24:
    swift_once();
LABEL_18:
    v8 = qword_1EBBF2DD0;
    v7 = *algn_1EBBF2DD8;
    sub_1B9F0D260(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BA4B5480;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1B9F1BE20();
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;

    v10 = sub_1BA4A6768();
    v11 = v15;

    if (qword_1EBBE89C8 != -1)
    {
      swift_once();
    }

    v13 = &qword_1EBBF2E20;
    goto LABEL_21;
  }

  if (a1 == 2)
  {
    if (qword_1EBBE89C0 != -1)
    {
      swift_once();
    }

    if (qword_1EBBE89A0 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  if (a1 != 3)
  {
    v8 = 0;
    v7 = 0;
    v10 = 0;
    v11 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_23;
  }

  if (qword_1EBBE89A0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBBF2DD0;
  v7 = *algn_1EBBF2DD8;
  v9 = qword_1EBBE89A8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_1EBBF2DE0;
  v11 = *algn_1EBBF2DE8;
  v12 = qword_1EBBE89B0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = &qword_1EBBF2DF0;
LABEL_21:
  v16 = *v13;

LABEL_23:
  *a4 = v8;
  a4[1] = v7;
  a4[2] = v10;
  a4[3] = v11;
  a4[4] = v16;
  a4[5] = v17;
}

void sub_1BA199AD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a1;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A1798();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v17 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA199750(a5, a2, a3, v35);
  if (v35[1])
  {
    v31[2] = v35[3];
    v31[3] = v35[4];
    v31[1] = v35[2];
    (*(v14 + 16))(v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v13);
    v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    (*(v14 + 32))(v20 + v18, v17, v13);
    *(v20 + v19) = a5;
    v21 = sub_1BA4A6758();
    aBlock[4] = sub_1BA19A670;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA0B06D4;
    aBlock[3] = &block_descriptor_108;
    v22 = _Block_copy(aBlock);

    v23 = [objc_opt_self() actionWithTitle:v21 style:0 handler:v22];
    _Block_release(v22);

    v24 = sub_1BA4A6758();
    v25 = sub_1BA4A6758();
    v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

    [v26 addAction_];
    if (v33)
    {
      [v33 presentViewController:v26 animated:1 completion:0];
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1B9F0B82C(0xD00000000000001FLL, 0x80000001BA4F09D0, aBlock);
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%s] could not get the error message to display for failed end sharing relationship state", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
  }
}

void sub_1BA199F08()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_accessibilityIdentiferBase);
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v2;

  MEMORY[0x1BFAF1350](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x1BFAF1350](0x6E696D6F636E492ELL, 0xE900000000000067);

  MEMORY[0x1BFAF1350](0x6E6F737265502ELL, 0xE700000000000000);

  *v1 = v4;
  v1[1] = v5;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___gradientView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___nameHeaderView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner) = 0;
  v3 = v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___currentConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_anyCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_currentSpinnerConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinnerConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___hiddenSpinnerConstraints) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA19A0C0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_blurView;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_gradientView;
  type metadata accessor for ProfileGradientView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_profileImageView;
  *(v0 + v6) = sub_1BA194E0C();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___disclosureIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___watchIconImage) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage____lazy_storage___currentConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28ProfileGradientViewWithImage_isDisabled) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA19A20C()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___nameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestamp) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___currentConstraints) = 0;
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_lastUpdatedTimestampString);
  *v1 = 0;
  v1[1] = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_currentDisclosureIndicatorConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicatorWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___disclosureIndicatorLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___emptyDisclosureIndicatorLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView_currentDateLabelConstraints) = v2;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestampWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestampHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___lastUpdatedTimestampLeadingAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileSharingWithYouHeaderView____lazy_storage___emptyLastUpdatedTimestampLeadingAnchorConstraint) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA19A324(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA198D90(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA19A390(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA198D90(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA19A3F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA19A450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA19A498()
{
  if (!qword_1EDC6E348)
  {
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E348);
    }
  }
}

uint64_t sub_1BA19A4FC(uint64_t a1, uint64_t a2)
{
  sub_1BA19A560();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA19A560()
{
  if (!qword_1EDC6B690)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6B690);
    }
  }
}

uint64_t objectdestroy_93Tm()
{
  v1 = sub_1BA4A1798();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t CompactDatePickerItem.init(title:displayDate:initialText:accessibilityIdentifierPrefix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, char *a8@<X8>)
{
  v15 = type metadata accessor for CompactDatePickerItem(0);
  v16 = v15[5];
  v17 = sub_1BA4A1728();
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  v18 = &a8[v15[6]];
  *&a8[v15[8] + 8] = 0;
  swift_unknownObjectWeakInit();
  *a8 = a1;
  *(a8 + 1) = a2;
  sub_1BA120C08(a3, &a8[v16]);
  *v18 = a4;
  *(v18 + 1) = a5;
  v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v25 = v19;

  MEMORY[0x1BFAF1350](46, 0xE100000000000000);

  if (a7)
  {
    v20 = a6;
  }

  else
  {
    v20 = 0xD000000000000011;
  }

  if (!a7)
  {
    a7 = 0x80000001BA4EC1B0;
  }

  v21 = &a8[v15[7]];

  MEMORY[0x1BFAF1350](v20, a7);

  result = sub_1BA19B34C(a3, sub_1B9F7B6A0);
  *v21 = v24;
  *(v21 + 1) = v25;
  return result;
}

uint64_t type metadata accessor for CompactDatePickerItem(uint64_t a1)
{
  result = qword_1EBBED488;
  if (!qword_1EBBED488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CompactDatePickerItem.title.getter()
{
  v1 = *v0;

  return v1;
}

void CompactDatePickerItem.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t CompactDatePickerItem.displayDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CompactDatePickerItem(0) + 20);

  return sub_1B9F7B4F4(a1, v3);
}

uint64_t CompactDatePickerItem.initialText.getter()
{
  v1 = *(v0 + *(type metadata accessor for CompactDatePickerItem(0) + 24));

  return v1;
}

void CompactDatePickerItem.initialText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CompactDatePickerItem(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t CompactDatePickerItem.baseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for CompactDatePickerItem(0) + 28));

  return v1;
}

void CompactDatePickerItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CompactDatePickerItem(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BA19AB60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CompactDatePickerItem(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA19B2E4(a1, v8, type metadata accessor for CompactDatePickerItem);
  v9 = &v8[*(v5 + 40)];
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = *(v9 + 1);
  result = sub_1BA19B34C(v8, type metadata accessor for CompactDatePickerItem);
  *a2 = Strong;
  a2[1] = v11;
  return result;
}

uint64_t CompactDatePickerItem.delegate.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + *(type metadata accessor for CompactDatePickerItem(0) + 32) + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*CompactDatePickerItem.delegate.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for CompactDatePickerItem(0) + 32);
  *(a1 + 24) = v3;
  v4 = v1 + v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a1 = Strong;
  *(a1 + 8) = v6;
  return sub_1BA19AD24;
}

uint64_t sub_1BA19AD24(uint64_t *a1)
{
  *(a1[2] + *(a1 + 6) + 8) = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t CompactDatePickerItem.reuseIdentifier.getter()
{
  type metadata accessor for CompactDatePickerTableViewCell();
  sub_1BA19AE64(0, &qword_1EBBE9728, type metadata accessor for CompactDatePickerTableViewCell);
  return sub_1BA4A6808();
}

uint64_t CompactDatePickerItem.uniqueIdentifier.getter()
{
  type metadata accessor for CompactDatePickerItem(0);
  sub_1BA19AE64(0, &qword_1EBBED478, type metadata accessor for CompactDatePickerItem);
  v1 = sub_1BA4A6808();
  v2 = *v0;
  v3 = v0[1];
  v5 = v1;

  MEMORY[0x1BFAF1350](v2, v3);

  return v5;
}

uint64_t sub_1BA19AE64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t CompactDatePickerItem.compactDatePicker(_:didSelectNewDate:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(type metadata accessor for CompactDatePickerItem(0) + 32);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v2, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BA19AF80()
{
  type metadata accessor for CompactDatePickerTableViewCell();
  sub_1BA19AE64(0, &qword_1EBBE9728, type metadata accessor for CompactDatePickerTableViewCell);
  return sub_1BA4A6808();
}

uint64_t sub_1BA19B010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + *(a3 + 32);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v3, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BA19B0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 28));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1BA19B108(uint64_t a1)
{
  sub_1BA19AE64(0, &qword_1EBBED478, type metadata accessor for CompactDatePickerItem);
  v2 = sub_1BA4A6808();
  v3 = *v1;
  v4 = v1[1];
  v6 = v2;

  MEMORY[0x1BFAF1350](v3, v4);

  return v6;
}

uint64_t sub_1BA19B198(uint64_t a1)
{
  v2 = sub_1BA19B3AC(&qword_1EBBEC278, &protocol conformance descriptor for CompactDatePickerItem);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1BA19B23C(uint64_t a1)
{
  sub_1B9F7B6A0(319);
  if (v1 <= 0x3F)
  {
    sub_1B9F2F388();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BA19B2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA19B34C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA19B3AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CompactDatePickerItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SharingEntryProfileInformationDataSource.__allocating_init(context:sharingEntryIdentifier:viewClass:layoutConstructor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_allocObject();
  v12 = sub_1BA19BEB8(a1, a2, a3, a4, a5, a6);
  sub_1B9F0E30C(a5, a6);
  return v12;
}

uint64_t sub_1BA19B480()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  sub_1B9F0E30C(*(v0 + qword_1EDC84CF0), *(v0 + qword_1EDC84CF0 + 8));

  sub_1B9FAB600(v0 + qword_1EDC84CE8);

  return v0;
}

uint64_t SharingEntryProfileInformationDataSource.__allocating_init(context:profileIdentifier:viewClass:layoutConstructor:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_1BA4A1798();
  *&v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14).n128_u64[0];
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a2 identifier];
  sub_1BA4A1778();

  v19 = (*(v6 + 800))(a1, v17, a3, a4, a5, a6);
  return v19;
}

uint64_t SharingEntryProfileInformationDataSource.init(context:sharingEntryIdentifier:viewClass:layoutConstructor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1BA19BEB8(a1, a2, a3, a4, a5, a6);
  sub_1B9F0E30C(a5, a6);
  return v8;
}

uint64_t SharingEntryProfileInformationDataSource.__deallocating_deinit()
{
  sub_1BA19B480();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA19B904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA19C344(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - v6;
  v8 = sub_1BA4A33C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0CF958(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_1B9F82A44(v7, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    v14 = *(v9 + 32);
    v14(v12, v7, v8);
    v15 = MEMORY[0x1E69A3418];
    *(a2 + 24) = v8;
    *(a2 + 32) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (v14)(boxed_opaque_existential_1, v12, v8);
  }

  return result;
}

id sub_1BA19BAD0()
{
  v0 = MEMORY[0x1E6968130];
  sub_1BA19C344(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v29 - v3;
  sub_1BA4A27B8();
  sub_1BA19C344(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v5 = sub_1BA4A1C68();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v29 = xmmword_1BA4B5480;
  *(v8 + 16) = xmmword_1BA4B5480;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x1E69A3B70], v5);
  v9 = sub_1BA4A0FA8();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v10 = swift_allocObject();
  *(v10 + 16) = v29;
  *(v10 + 32) = sub_1BA4A1D78();
  v11 = MEMORY[0x1BFAED020](v8, 0, v4, v10);

  sub_1B9F82A44(v4, &qword_1EDC6E2A0, v0);
  v30 = sub_1BA4A3338();
  v31 = v12;
  MEMORY[0x1BFAF1350](42, 0xE100000000000000);
  v13 = sub_1BA4A1748();
  MEMORY[0x1BFAF1350](v13);

  v14 = v30;
  v15 = v31;
  sub_1B9F1BFFC();
  sub_1B9F0CF6C(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B5460;
  v17 = sub_1BA4A2798();
  v19 = v18;
  v20 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v21 = sub_1B9F1BE20();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  *(v16 + 96) = v20;
  *(v16 + 104) = v21;
  *(v16 + 64) = v21;
  *(v16 + 72) = v14;
  *(v16 + 80) = v15;
  v22 = sub_1BA4A6EE8();
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BA4B7510;
  *(v23 + 32) = v11;
  *(v23 + 40) = v22;
  v24 = v11;
  v25 = v22;
  v26 = sub_1BA4A6AE8();

  v27 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v27;
}

uint64_t sub_1BA19BEB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v37 = *v7;
  v38 = a2;
  v13 = MEMORY[0x1E69A3430];
  sub_1BA19C344(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v37 - v16;
  v18 = sub_1BA19BAD0();
  *(v7 + qword_1EDC6A550) = MEMORY[0x1E69E7CD0];
  *(v7 + qword_1EDC84CE8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v19 = (v7 + qword_1EDC84CE0);
  *v19 = a3;
  v19[1] = a4;
  v20 = (v7 + qword_1EDC84CF0);
  *v20 = a5;
  v20[1] = a6;
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B5470;
  v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  sub_1B9F0F1B8(a5, a6);
  v23 = sub_1BA4A6758();
  v24 = [v22 initWithKey:v23 ascending:1 selector:sel_localizedStandardCompare_];

  *(v21 + 32) = v24;
  v25 = sub_1BA4A7558();

  sub_1B9F126E0(0);
  v27 = objc_allocWithZone(v26);
  v28 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v25);
  v29 = sub_1BA4A33C8();
  (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
  sub_1BA0CF644(0);
  swift_allocObject();
  *(v7 + qword_1EDC6A560) = sub_1BA4A4DF8();
  v30 = swift_allocObject();
  *(v30 + 16) = v37;
  v31 = v28;
  v32 = sub_1B9F17A68(v31, sub_1BA19C3A8, v30, 0);

  v33 = *(*v32 + 760);

  v33(v34);
  sub_1BA4A4DA8();

  v35 = sub_1BA4A1798();
  (*(*(v35 - 8) + 8))(v38, v35);
  sub_1B9F82A44(v17, &qword_1EBBEA318, v13);
  return v32;
}

uint64_t type metadata accessor for SharingEntryProfileInformationDataSource(uint64_t a1)
{
  result = qword_1EDC60920;
  if (!qword_1EDC60920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA19C344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void HostingCellReusePolicy.init(viewControllerIdentifier:reuseIdentifierHelper:userInterface:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 a7@<W6>, uint64_t a8@<X8>)
{
  UserInterface.hostCellClassName.getter(a5, a6, a7);
  v16 = sub_1BA4A6758();

  v17 = NSClassFromString(v16);

  if (v17)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    sub_1B9F244F4(a5, a6, a7);

    MEMORY[0x1BFAF1350](a3, a4);

    *a8 = ObjCClassMetadata;
    *(a8 + 8) = a1;
    *(a8 + 16) = a2;
    *(a8 + 24) = 0;
  }

  else
  {
    sub_1BA4A7DF8();
    UserInterface.hostCellClassName.getter(a5, a6, a7);

    MEMORY[0x1BFAF1350](0xD00000000000001ALL, 0x80000001BA4E3A90);
    sub_1BA4A8018();
    __break(1u);
  }
}

uint64_t HostingCellReusePolicy.override<A>(reusableCellClass:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(v4 + 24);
  if (v6)
  {
    a1 = (*(a3 + 8))(a2, a3);
    v8 = v7;
    result = sub_1B9F248D8(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
    v10 = 0;
  }

  else
  {
    v8 = *(v4 + 8);
    v10 = *(v4 + 16);
    v11 = *v4;

    result = sub_1B9F248D8(v11, v8, v10, 0);
  }

  *v4 = a1;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v6;
  return result;
}

uint64_t HostingCellReusePolicy.reuseIdentifier.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 24))
  {
  }

  else
  {
    v3 = *(v0 + 16);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v5 = NSStringFromClass(ObjCClassFromMetadata);
    v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    MEMORY[0x1BFAF1350](0x5F65737565725FLL, 0xE700000000000000);

    MEMORY[0x1BFAF1350](v2, v3);

    sub_1B9F248D8(v1, v2, v3, 0);
    return v6;
  }

  return v1;
}

void HostingCellReusePolicy.init(reuseIdentifier:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BA19C920(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[2] = a1;
  v29[3] = a2;
  v29[0] = 0x5F65737565725FLL;
  v29[1] = 0xE700000000000000;
  v10 = sub_1BA4A17C8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1B9F252FC();
  sub_1BA4A7BA8();
  v12 = v11;
  v14 = v13;
  sub_1BA18D088(v9);
  if ((v14 & 1) != 0 || (v15 = sub_1BA4A69E8(), MEMORY[0x1BFAF12A0](v15), , v16 = sub_1BA4A6758(), , v17 = NSClassFromString(v16), v16, !v17))
  {
    v27 = 0;
    v28 = 1;
  }

  else
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    v19 = sub_1B9F5F260(v12, a1, a2);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    a2 = MEMORY[0x1BFAF12A0](v19, v21, v23, v25);
    v27 = v26;

    v28 = 0;
    a1 = ObjCClassMetadata;
  }

  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
}

uint64_t HostingCellReusePolicy.cellClass.getter()
{
  if (v0[24])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void sub_1BA19C920(uint64_t a1)
{
  if (!qword_1EDC6AE40)
  {
    sub_1BA4A17C8();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6AE40);
    }
  }
}

uint64_t sub_1BA19C994(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BA19C9DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t PDFPreviewCollectionView.BackgroundViewState.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

char *sub_1BA19CAF0()
{
  type metadata accessor for LabelWithSpinner();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label;
  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label] setNumberOfLines_];
  v2 = qword_1EDC5E100;
  v3 = *&v0[v1];
  if (v2 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v4 = sub_1BA4A6758();

  [v3 setText_];

  v5 = *&v0[v1];
  v6 = objc_opt_self();
  v7 = *MEMORY[0x1E69DDCF8];
  v8 = v5;
  v9 = [v6 preferredFontForTextStyle_];
  [v8 setFont_];

  [*&v0[v1] setAdjustsFontForContentSizeCategory_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id sub_1BA19CCC0(uint64_t *a1, uint64_t (*a2)(void))
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

id sub_1BA19CD20()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v1 = sub_1BA4A6758();

  [v0 setText_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setTextAlignment_];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

id sub_1BA19CEC8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerContainerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *PDFPreviewCollectionView.init(layout:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___noDataLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerContainerView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerCenterYConstraint] = 0;
  v54.receiver = v1;
  v54.super_class = type metadata accessor for PDFPreviewCollectionView();
  v53 = a1;
  v3 = objc_msgSendSuper2(&v54, sel_initWithFrame_collectionViewLayout_, a1, 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for PDFImageCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = sub_1BA4A6758();
  [v5 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v6];

  v7 = [v5 layer];
  [v7 setMasksToBounds_];

  v8 = [objc_opt_self() systemGroupedBackgroundColor];
  [v5 setBackgroundColor_];

  v9 = sub_1BA19CEC8();
  v10 = sub_1BA19CAD0();
  [v9 addSubview_];

  v11 = OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerView;
  v12 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerView];
  v13 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner;
  v14 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner];
  v15 = v12;
  [v14 startAnimating];
  [*&v12[v13] setHidden_];
  v16 = objc_opt_self();
  sub_1BA14F79C();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v17 = sub_1BA4A6AE8();

  [v16 deactivateConstraints_];

  sub_1BA14F69C();
  v18 = sub_1BA4A6AE8();

  [v16 activateConstraints_];

  v19 = [*&v5[v11] topAnchor];
  v20 = OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerContainerView;
  v21 = [*&v5[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerContainerView] topAnchor];
  v22 = [v19 constraintEqualToAnchor_];

  v23 = OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerTopConstraint;
  v24 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerTopConstraint];
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerTopConstraint] = v22;

  v25 = [*&v5[v11] centerYAnchor];
  v26 = [*&v5[v20] centerYAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  v28 = OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerCenterYConstraint;
  v29 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerCenterYConstraint];
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerCenterYConstraint] = v27;

  v30 = *&v5[v23];
  if (v30)
  {
    v31 = v30;
    v32 = [v5 traitCollection];
    v33 = [v32 preferredContentSizeCategory];

    LOBYTE(v32) = sub_1BA4A74F8();
    [v31 setActive_];
  }

  v34 = *&v5[v28];
  if (v34)
  {
    v35 = v34;
    v36 = [v5 traitCollection];
    v37 = [v36 preferredContentSizeCategory];

    LOBYTE(v36) = sub_1BA4A74F8();
    [v35 setActive_];
  }

  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BA4B8B60;
  v39 = [*&v5[v11] centerXAnchor];
  v40 = [*&v5[v20] centerXAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v38 + 32) = v41;
  v42 = [*&v5[v11] leadingAnchor];
  v43 = [*&v5[v20] leadingAnchor];
  v44 = [v42 constraintGreaterThanOrEqualToAnchor:v43 constant:10.0];

  *(v38 + 40) = v44;
  v45 = [*&v5[v20] trailingAnchor];
  v46 = [*&v5[v11] trailingAnchor];
  v47 = [v45 constraintGreaterThanOrEqualToAnchor:v46 constant:10.0];

  *(v38 + 48) = v47;
  v48 = sub_1BA4A6AE8();

  [v16 activateConstraints_];

  sub_1BA19E2CC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1BA4B5480;
  v50 = sub_1BA4A4858();
  v51 = MEMORY[0x1E69DC2B0];
  *(v49 + 32) = v50;
  *(v49 + 40) = v51;
  MEMORY[0x1BFAF2130](v49, sel_preferredContentSizeCategoryDidChange);

  swift_unknownObjectRelease();

  return v5;
}

void sub_1BA19D610()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerTopConstraint];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    LOBYTE(v3) = sub_1BA4A74F8();
    [v2 setActive_];
  }

  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerCenterYConstraint];
  if (v5)
  {
    v8 = v5;
    v6 = [v0 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    LOBYTE(v6) = sub_1BA4A74F8();
    [v8 setActive_];
  }
}

void sub_1BA19D840(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v2 = sub_1BA19CEC8();
    }

    else
    {
      v2 = sub_1BA19CCA0();
    }

    v3 = v2;
    [v1 setBackgroundView_];
  }

  else
  {

    [v1 setBackgroundView_];
  }
}

id PDFPreviewCollectionView.__allocating_init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];

  return v7;
}

double sub_1BA19DA38(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages) = a1;

  return result;
}

id PDFPreviewDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PDFPreviewDataSource.init()()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages;
  type metadata accessor for PDFImagePreviews();
  v2 = swift_allocObject();
  *(v2 + 48) = 0;
  *(v2 + 16) = xmmword_1BA4C2AD0;
  v3 = MEMORY[0x1E69E6530];
  v4 = sub_1BA4A6B98();
  *(v4 + 16) = 20;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *(v4 + 32) = v5;
  *(v4 + 48) = v5;
  *(v4 + 64) = v5;
  *(v4 + 80) = v5;
  *(v4 + 96) = v5;
  *(v4 + 112) = v5;
  *(v4 + 128) = v5;
  *(v4 + 144) = v5;
  *(v4 + 160) = v5;
  *(v4 + 176) = v5;
  *(v2 + 40) = v4;
  v6 = sub_1B9F0ADF8(0, &qword_1EDC6E370, 0x1E69DCAB8);
  *(v2 + 32) = MEMORY[0x1BFAF1080](20, v3, v6, MEMORY[0x1E69E6540]);
  *&v0[v1] = v2;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PDFPreviewDataSource();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1BA19DBD8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Int __swiftcall PDFPreviewDataSource.collectionView(_:numberOfItemsInSection:)(UICollectionView *_, Swift::Int numberOfItemsInSection)
{
  result = *(*(v2 + OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages) + 24);
  if (result)
  {
    return [result pageCount];
  }

  return result;
}

uint64_t PDFPreviewDataSource.collectionView(_:cellForItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1BA19E2CC(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v38 - v8;
  v10 = sub_1BA4A6758();
  v11 = sub_1BA4A18F8();
  v12 = [a1 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v11];

  type metadata accessor for PDFImageCell();
  v13 = swift_dynamicCastClassUnconditional();
  v14 = *(v13 + OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_label);
  sub_1BA4A17B8();
  v15 = sub_1BA4A17C8();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  sub_1B9F2EAC0(0);
  v16 = swift_allocObject();
  v42 = xmmword_1BA4B5460;
  *(v16 + 16) = xmmword_1BA4B5460;
  v17 = sub_1BA4A1938();
  if (__OFADD__(v17, 1))
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v39 = v14;
  v41 = a2;
  v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v19 = sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
  *(v16 + 56) = v19;
  v20 = sub_1BA19E330();
  *(v16 + 64) = v20;
  *(v16 + 32) = v18;
  v40 = OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages;
  v21 = *(*(v3 + OBJC_IVAR____TtC18HealthExperienceUI20PDFPreviewDataSource_previewImages) + 24);
  if (v21)
  {
    v22 = [v21 pageCount];
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(v16 + 96) = v19;
  *(v16 + 104) = v20;
  *(v16 + 72) = v23;
  if (qword_1EDC5E100 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  sub_1BA4A1318();
  if (*(v16 + 16))
  {
    sub_1BA4A67B8();
  }

  sub_1BA18D088(v9);
  v24 = sub_1BA4A6758();

  v25 = v39;
  [v39 setText_];

  sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
  v26 = swift_allocObject();
  *(v26 + 16) = v42;
  strcpy((v26 + 32), "PDFImageCell");
  *(v26 + 45) = 0;
  *(v26 + 46) = -5120;
  v43 = sub_1BA4A1938();
  sub_1BA0CC87C();
  *(v26 + 48) = sub_1BA4A7BE8();
  *(v26 + 56) = v27;
  v28 = sub_1BA4A6AE8();

  v29 = HKUIJoinStringsForAutomationIdentifier();

  if (v29)
  {
    v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  sub_1B9FFB934(v30, v32);

  v33 = sub_1BA4A1938();
  v34 = *(v13 + OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_lastRequestedPreviewImageId) + 1;
  *(v13 + OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_lastRequestedPreviewImageId) = v34;
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v34;

  sub_1BA37B0E4(v33, sub_1B9FFB92C, v36);

  return v13;
}

void sub_1BA19E2CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA19E330()
{
  result = qword_1EDC5E0D0;
  if (!qword_1EDC5E0D0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6E360, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E0D0);
  }

  return result;
}

unint64_t sub_1BA19E39C()
{
  result = qword_1EBBED4D8;
  if (!qword_1EBBED4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED4D8);
  }

  return result;
}

uint64_t HKObjectType.isHealthSharingAlert.getter()
{
  v1 = [v0 identifier];
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v4 = v3;

  v5 = v2 == 0xD00000000000002ALL && 0x80000001BA4E9200 == v4;
  if (v5 || (sub_1BA4A8338() & 1) != 0 || (v2 == 0xD000000000000029 ? (v6 = 0x80000001BA4E9230 == v4) : (v6 = 0), v6 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000031 && 0x80000001BA4E9260 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD00000000000002ALL && 0x80000001BA4E92A0 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000033 && 0x80000001BA4E92D0 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD00000000000002DLL && 0x80000001BA4E9310 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000033 && 0x80000001BA4E9340 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000027 && 0x80000001BA4E9480 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000029 && 0x80000001BA4E94B0 == v4))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1BA4A8338();
  }

  return v7 & 1;
}

uint64_t static HKObjectType.alertEventTypes()()
{
  result = sub_1BA19E818();
  v1 = result;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v4 = *(result + 16);
  while (1)
  {
    if (v4 == v2)
    {

      v7 = sub_1BA0245FC(v3);

      return v7;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v5 = *(v1 + 8 * v2++ + 32);
    if (v5)
    {
      v6 = v5;
      MEMORY[0x1BFAF1510]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      result = sub_1BA4A6BB8();
      v3 = v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA19E818()
{
  sub_1BA19EDD8(0, &qword_1EDC5DBD0, sub_1BA19EDA4, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4C2BF0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 dataTypeWithCode_];
  *(v0 + 40) = [v1 dataTypeWithCode_];
  *(v0 + 48) = [v1 dataTypeWithCode_];
  *(v0 + 56) = [v1 dataTypeWithCode_];
  *(v0 + 64) = [v1 dataTypeWithCode_];
  *(v0 + 72) = [v1 dataTypeWithCode_];
  *(v0 + 80) = [v1 dataTypeWithCode_];
  *(v0 + 88) = [v1 dataTypeWithCode_];
  *(v0 + 96) = [v1 dataTypeWithCode_];
  *(v0 + 104) = [v1 dataTypeWithCode_];
  *(v0 + 112) = [v1 dataTypeWithCode_];
  *(v0 + 120) = [v1 dataTypeWithCode_];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = [v1 dataTypeWithCode_];
  sub_1B9FE2810(inited);
  return v0;
}

uint64_t HKObjectType.isAlertEventType.getter()
{
  v1 = [v0 identifier];
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v4 = v3;

  v5 = v2 == 0xD00000000000002ALL && 0x80000001BA4E9200 == v4;
  if (v5 || (sub_1BA4A8338() & 1) != 0 || (v2 == 0xD000000000000029 ? (v6 = 0x80000001BA4E9230 == v4) : (v6 = 0), v6 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000031 && 0x80000001BA4E9260 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD00000000000002ALL && 0x80000001BA4E92A0 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000033 && 0x80000001BA4E92D0 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD00000000000002DLL && 0x80000001BA4E9310 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000033 && 0x80000001BA4E9340 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000038 && 0x80000001BA4E9380 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000031 && 0x80000001BA4E93C0 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000030 && 0x80000001BA4E9400 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000031 && 0x80000001BA4E9440 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000027 && 0x80000001BA4E9480 == v4 || (sub_1BA4A8338() & 1) != 0 || v2 == 0xD000000000000029 && 0x80000001BA4E94B0 == v4))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1BA4A8338();
  }

  return v7 & 1;
}

void sub_1BA19EDD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t AppSourcesDataSourceItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BA19EEA0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

double sub_1BA19EEE0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 80) = v3;
  *(v4 + 88) = v2;

  return result;
}

uint64_t sub_1BA19EF40()
{
  swift_beginAccess();
  v1 = *(v0 + 80);

  return v1;
}

double sub_1BA19EF8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  return result;
}

double sub_1BA19EFE0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 96) = v3;
  *(v4 + 104) = v2;

  return result;
}

uint64_t sub_1BA19F040()
{
  swift_beginAccess();
  v1 = *(v0 + 96);

  return v1;
}

double sub_1BA19F08C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;

  return result;
}

void *sub_1BA19F130(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0xD000000000000019;
  v22 = 0x80000001BA4F0DD0;
  sub_1BA4A1788();
  sub_1BA19FCD8(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v9 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v9);

  (*(v5 + 8))(v8, v4);
  v10 = v22;
  *(v1 + 16) = v21;
  *(v1 + 24) = v10;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = sub_1BA4A1318();
  *(v1 + 40) = v11;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  v21 = type metadata accessor for CollectionViewListDisclosureCell();
  sub_1BA16A6B4();
  *(v1 + 80) = sub_1BA4A6808();
  *(v1 + 88) = v12;
  sub_1B9F25350();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5460;
  *(v13 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v13 + 40) = v14;
  strcpy((v13 + 48), "ShowAppSources");
  *(v13 + 63) = -18;
  v15 = sub_1BA4A6AE8();

  v16 = HKUIJoinStringsForAutomationIdentifier();

  if (v16)
  {
    v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v2[12] = v17;
  v2[13] = v19;
  v2[9] = a1;
  return v2;
}

void sub_1BA19F414(void *a1@<X0>, char *a2@<X8>)
{
  v3 = [a1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
}

void sub_1BA19F478(void *a1, uint64_t a2, void *a3, char a4)
{
  if (a1)
  {
    v8 = [*(v4 + 72) viewControllerFactory];
    if (a3)
    {
      a3 = sub_1BA4A6758();
    }

    v9 = [v8 createSingleAppAuthorizationViewControllerUsingInsetStyling:1 restorationApplicationBundleIdentifier:a3];

    [a1 pushViewController:v9 animated:a4 & 1];
  }
}

uint64_t AppSourcesDataSourceItem.deinit()
{

  return v0;
}

uint64_t AppSourcesDataSourceItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA19F608()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);

  return v2;
}

uint64_t sub_1BA19F680()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

uint64_t sub_1BA19F6C0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 96);

  return v2;
}

double sub_1BA19F710(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;

  return result;
}

uint64_t sub_1BA19F7BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

void sub_1BA19F820(void *a1)
{
  type metadata accessor for ProfileViewController();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v13 = a1;
    v5 = [v4 navigationController];
    if (v5)
    {
      v6 = v5;
      v14 = 0;
      v7 = sub_1BA388464();
      v9 = v8;
      v10 = objc_allocWithZone(type metadata accessor for SourcesViewController());
      v11 = SourcesViewController.init(sourceType:profileName:)(&v14, v7, v9);
      [v6 pushViewController:v11 animated:1];
    }
  }

  else
  {
    v15 = 0;
    v12 = objc_allocWithZone(type metadata accessor for SourcesViewController());
    v13 = SourcesViewController.init(sourceType:profileName:)(&v15, 0, 0);
    [a1 showAdaptively:v13 sender:v1];
  }
}

uint64_t sub_1BA19F9B0(uint64_t a1, uint64_t a2)
{
  result = sub_1BA19FCD8(&qword_1EDC66638, a2, type metadata accessor for AppSourcesDataSourceItem, &protocol conformance descriptor for AppSourcesDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA19FCD8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1BA19FD20()
{
  sub_1B9FAB600(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA19FD7C(uint64_t a1)
{
  v3 = qword_1EDC84AF8;
  swift_beginAccess();
  sub_1BA1A2A48(a1, v1 + v3);
  swift_endAccess();
  v4 = *(v1 + qword_1EDC84BB8);
  v5 = *(*v1 + 512);
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = *(v1 + *(*v1 + 520));
  v8 = *(v1 + qword_1EDC64EB0);
  v9 = *(v1 + qword_1EDC64EB0 + 8);
  v10 = *(v1 + qword_1EDC64EB0 + 16);

  v11 = v4;
  sub_1BA1A217C(v11, v6, v7, v8, v9, v10);
  v13 = v12;

  sub_1BA0E7F10(v13, 1);

  return sub_1BA1A2984(a1);
}

uint64_t sub_1BA19FEA8(void *a1, void *a2, void *a3, char *a4)
{
  v5 = v4;
  v9 = *v5;
  v10 = *a4;
  v11 = v5 + qword_1EDC84AF8;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v5 + qword_1EDC84B08) = a2;
  sub_1B9F0A534(a1, v34);
  LOBYTE(v33[0]) = v10;
  type metadata accessor for RequestNewSharingRelationshipItem();
  swift_allocObject();
  v32 = a2;
  v12 = sub_1BA429834(v34, v32, v33);
  *(v5 + qword_1EDC84B00) = v12;

  v13 = sub_1BA1A0244(a1);
  sub_1B9F126E0(0);
  v15 = objc_allocWithZone(v14);
  v16 = v13;
  v17 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v16);
  type metadata accessor for ProfilesSharingWithYouDataSource.Context();
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + 32) = 2;
  *(v18 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v18 + 32) = v10;
  sub_1B9F0A534(a1, v34);
  sub_1B9F0A534(a3, v33);
  v19 = swift_allocObject();
  sub_1B9F1134C(v34, v19 + 16);
  sub_1B9F1134C(v33, v19 + 56);
  *(v19 + 96) = v12;
  *(v19 + 104) = v9;
  v20 = v5 + qword_1EDC64EB0;
  *v20 = sub_1BA1A2AF0;
  *(v20 + 8) = v19;
  *(v20 + 16) = 1;
  *(v5 + qword_1EDC84BB8) = v17;
  *(v5 + *(*v5 + 512)) = v18;
  *(v5 + *(*v5 + 520)) = 0;

  v21 = v17;
  sub_1BA1A217C(v21, v18, 0, sub_1BA1A2AF0, v19, 1);
  v23 = v22;

  v25 = *&v21[qword_1EDC84AD0];
  v24 = *&v21[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v25, v24);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v26 = MutableArrayDataSource.init(arrangedSections:identifier:)(v23, 0x534464657070614DLL, 0xE90000000000003CLL);
  v27 = *(v26 + qword_1EDC84BB8);
  v28 = qword_1EBBEA528;
  swift_beginAccess();
  [*(v27 + v28) registerObserver_];

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29 = *(*v26 + 512);
  swift_beginAccess();
  *(*(v26 + v29) + 24) = &off_1F380B540;
  swift_unknownObjectWeakAssign();
  return v26;
}

uint64_t sub_1BA1A0244(void *a1)
{
  v58 = a1;
  v60 = MEMORY[0x1E6968130];
  sub_1BA1A2B20(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v53 - v3;
  v69 = sub_1BA4A27B8();
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v6 = v5;
  v7 = swift_allocObject();
  v73 = xmmword_1BA4B5480;
  *(v7 + 16) = xmmword_1BA4B5480;
  *(v7 + 32) = sub_1BA4A1D78();
  v57 = MEMORY[0x1BFAED1E0](v7);

  sub_1BA1A2B20(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v64 = v8;
  v71 = sub_1BA4A1C68();
  v9 = *(v71 - 8);
  v10 = *(v9 + 72);
  v62 = *(v9 + 80);
  v63 = v10;
  v11 = (v62 + 32) & ~v62;
  v12 = swift_allocObject();
  *(v12 + 16) = v73;
  LODWORD(v66) = *MEMORY[0x1E69A3B70];
  v67 = *(v9 + 104);
  v68 = v9 + 104;
  v67(v12 + v11);
  sub_1BA4A2128();
  v65 = sub_1BA4A0FA8();
  v13 = *(v65 - 8);
  v72 = *(v13 + 56);
  v70 = v13 + 56;
  v72(v4, 1, 1, v65);
  v54 = v6;
  v14 = swift_allocObject();
  v59 = xmmword_1BA4B5460;
  *(v14 + 16) = xmmword_1BA4B5460;
  *(v14 + 32) = sub_1BA4A1D78();
  *(v14 + 40) = 0;
  v55 = sub_1BA4A25F8();

  v15 = v60;
  sub_1B9F82AB4(v4, &qword_1EDC6E2A0, v60);
  v61 = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = v73;
  (v67)(v16 + v11, v66, v71);
  sub_1BA4A2148();
  v17 = v65;
  v72(v4, 1, 1, v65);
  v18 = swift_allocObject();
  *(v18 + 16) = v59;
  *(v18 + 32) = sub_1BA4A1D78();
  *(v18 + 40) = 0;
  v56 = sub_1BA4A25F8();

  sub_1B9F82AB4(v4, &qword_1EDC6E2A0, v15);
  v19 = v61;
  v20 = swift_allocObject();
  *(v20 + 16) = v73;
  (v67)(v20 + v19, v66, v71);
  sub_1BA4A2138();
  v72(v4, 1, 1, v17);
  v21 = swift_allocObject();
  *(v21 + 16) = v59;
  *(v21 + 32) = sub_1BA4A1D78();
  *(v21 + 40) = 0;
  v22 = sub_1BA4A25F8();

  v23 = v60;
  sub_1B9F82AB4(v4, &qword_1EDC6E2A0, v60);
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v24 = swift_allocObject();
  v66 = xmmword_1BA4B7510;
  *(v24 + 16) = xmmword_1BA4B7510;
  v25 = v56;
  *(v24 + 32) = v56;
  *(v24 + 40) = v22;
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  *&v59 = v25;
  v56 = v22;
  v26 = sub_1BA4A6AE8();

  v27 = objc_opt_self();
  v28 = [v27 orPredicateWithSubpredicates_];

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4B8B60;
  v30 = v57;
  v31 = v55;
  *(v29 + 32) = v57;
  *(v29 + 40) = v31;
  *(v29 + 48) = v28;
  v54 = v30;
  v55 = v31;
  v57 = v28;
  v32 = sub_1BA4A6AE8();

  v33 = [v27 andPredicateWithSubpredicates_];

  v34 = v61;
  v35 = swift_allocObject();
  *(v35 + 16) = v73;
  (v67)(v35 + v34, *MEMORY[0x1E69A3BD8], v71);
  sub_1BA4A20A8();
  v72(v4, 1, 1, v65);
  v36 = sub_1BA4A25F8();

  sub_1B9F82AB4(v4, &qword_1EDC6E2A0, v23);
  v37 = swift_allocObject();
  *(v37 + 16) = v66;
  *(v37 + 32) = v33;
  *(v37 + 40) = v36;
  v38 = v33;
  v39 = v36;
  v40 = sub_1BA4A6AE8();

  v41 = [v27 orPredicateWithSubpredicates_];

  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  v42 = sub_1BA4A1B68();
  v43 = swift_allocObject();
  *(v43 + 16) = v66;
  v44 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v45 = sub_1BA4A6758();
  v46 = [v44 initWithKey:v45 ascending:0];

  *(v43 + 32) = v46;
  v47 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v48 = sub_1BA4A6758();
  v49 = [v47 initWithKey:v48 ascending:1 selector:sel_localizedStandardCompare_];

  *(v43 + 40) = v49;
  v50 = v41;
  v51 = sub_1BA4A7558();

  return v51;
}

void sub_1BA1A0AE8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = sub_1BA4A1798();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v31[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(a1 + 16);
  v20 = *a2;
  v32 = a3;
  v33 = a4;
  v34 = v20;
  v35 = a6;
  v21 = sub_1BA2F45C4(sub_1BA1A2B00, v31, v19);
  v22 = v21[2];
  if (v22)
  {
    *(a5 + 96) = *(v20 + 32);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1BA27EFB4(0, v22 + 1, 1, v21);
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_1BA27EFB4((v23 > 1), v24 + 1, 1, v21);
    }

    v37 = type metadata accessor for RequestNewSharingRelationshipItem();
    v38 = sub_1B9F322F0(&qword_1EBBED540, type metadata accessor for RequestNewSharingRelationshipItem, &protocol conformance descriptor for RequestNewSharingRelationshipItem);
    *&v36 = a5;
    v21[2] = v24 + 1;
    sub_1B9F1134C(&v36, &v21[5 * v24 + 4]);
  }

  v25 = sub_1B9FE4F98(v21);

  sub_1BA4A1788();
  v26 = sub_1BA4A1748();
  v28 = v27;
  (*(v15 + 8))(v18, v14);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
  *a7 = 0;
  a7[1] = 0;
  a7[2] = v25;

  v30 = Array<A>.identifierToIndexDict()(v29);

  a7[3] = v30;
  a7[4] = v26;
  a7[5] = v28;
}

double sub_1BA1A0D44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSObject *a5@<X4>, uint64_t a6@<X8>)
{
  v147 = a5;
  v142 = a2;
  v143 = a4;
  v141 = a3;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  v149 = v8;
  v150 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v139 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v146 = &v133 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v148 = &v133 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v135 = &v133 - v20;
  sub_1BA1A2B20(0, &qword_1EBBEADE0, sub_1BA078D4C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v136 = &v133 - v23;
  v144 = sub_1BA4A33C8();
  v138 = *(v144 - 1);
  MEMORY[0x1EEE9AC00](v144, v24);
  v137 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v145 = &v133 - v28;
  v29 = sub_1BA4A2888();
  v140 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v133 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v133 - v35;
  v37 = sub_1BA4A1C68();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v133 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v133 - v44;
  sub_1B9F0A534(a1, v153);
  sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  v134 = a6;
  v46 = *v152;
  sub_1BA4A26B8();
  v47 = (*(v38 + 88))(v45, v37);
  if (v47 == *MEMORY[0x1E69A3BD8])
  {
    v48 = [v46 userData];
    if (v48)
    {
      v148 = v46;
      v49 = v48;
      v50 = sub_1BA4A1608();
      v52 = v51;

      sub_1BA4A0EB8();
      swift_allocObject();
      sub_1BA4A0EA8();
      sub_1B9F322F0(&qword_1EBBEA9C8, MEMORY[0x1E69A3108], MEMORY[0x1E69A3118]);
      v53 = v151;
      sub_1BA4A0E98();
      v54 = v134;
      v151 = v53;
      if (v53)
      {
        sub_1B9F2BB4C(v50, v52);

        v55 = v146;
        sub_1BA4A3D88();
        v56 = sub_1BA4A3E88();
        v57 = sub_1BA4A6FB8();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v153[0] = v59;
          *v58 = 136315138;
          v60 = sub_1BA4A85D8();
          v62 = sub_1B9F0B82C(v60, v61, v153);

          *(v58 + 4) = v62;
          _os_log_impl(&dword_1B9F07000, v56, v57, "[%s] Could not decode HealthKitProfileInformation from user data", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v59);
          MEMORY[0x1BFAF43A0](v59, -1, -1);
          MEMORY[0x1BFAF43A0](v58, -1, -1);
        }

        else
        {
        }

        (*(v150 + 8))(v55, v149);
        *(v54 + 32) = 0;
        result = 0.0;
        *v54 = 0u;
        *(v54 + 16) = 0u;
      }

      else
      {

        v98 = v140;
        (*(v140 + 16))(v32, v36, v29);
        sub_1B9F0A534(v142, v153);
        sub_1B9F0A534(v141, v152);
        v154 = *(v143 + 32);
        v99 = type metadata accessor for FamilySharingProfileTileItem(0);
        swift_allocObject();
        v100 = sub_1BA3CA300(v32, v153, v152, &v154);
        *(v54 + 24) = v99;
        *(v54 + 32) = sub_1B9F322F0(&qword_1EBBED558, type metadata accessor for FamilySharingProfileTileItem, &unk_1BA4D85B0);
        sub_1B9F2BB4C(v50, v52);

        *v54 = v100;
        (*(v98 + 8))(v36, v29);
      }

      return result;
    }

LABEL_13:

    v80 = v134;
    *(v134 + 32) = 0;
    result = 0.0;
    *v80 = 0u;
    v80[1] = 0u;
    return result;
  }

  if (v47 == *MEMORY[0x1E69A3B70])
  {
    v64 = [v46 userData];
    if (!v64)
    {
      goto LABEL_13;
    }

    v65 = v64;
    v66 = sub_1BA4A1608();
    v68 = v67;

    sub_1BA4A0EB8();
    swift_allocObject();
    sub_1BA4A0EA8();
    sub_1B9F322F0(&qword_1EBBEA9F8, MEMORY[0x1E69A3430], MEMORY[0x1E69A3440]);
    v70 = v144;
    v69 = v145;
    v71 = v151;
    sub_1BA4A0E98();
    if (v71)
    {
      sub_1B9F2BB4C(v66, v68);

      v72 = v139;
      sub_1BA4A3D88();
      v73 = sub_1BA4A3E88();
      v74 = sub_1BA4A6FB8();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v153[0] = v76;
        *v75 = 136315138;
        v77 = sub_1BA4A85D8();
        v79 = sub_1B9F0B82C(v77, v78, v153);

        *(v75 + 4) = v79;
        _os_log_impl(&dword_1B9F07000, v73, v74, "[%s] Could not decode SharingEntryProfileInformation from user data", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x1BFAF43A0](v76, -1, -1);
        MEMORY[0x1BFAF43A0](v75, -1, -1);
      }

      else
      {
      }

      (*(v150 + 8))(v72, v149);
      v116 = v134;
      *(v134 + 32) = 0;
      result = 0.0;
      *v116 = 0u;
      v116[1] = 0u;
    }

    else
    {

      v101 = sub_1BA4A32B8();
      if ((v102 & 1) != 0 || v101 != 1 || (v103 = v136, sub_1BA4A32E8(), sub_1BA078D4C(0), v105 = (*(*(v104 - 8) + 48))(v103, 1, v104), sub_1B9F82AB4(v103, &qword_1EBBEADE0, sub_1BA078D4C), v105 != 1))
      {
        v117 = sub_1BA4A32B8();
        v118 = v134;
        if ((v119 & 1) == 0)
        {
          if (v117 == 1)
          {
            v150 = v66;
            v127 = v138;
            (*(v138 + 16))(v137, v69, v70);
            sub_1B9F0A534(v142, v153);
            sub_1B9F0A534(v141, v152);
            v154 = *(v143 + 32);
            sub_1B9F0ADF8(0, &qword_1EDC5E540, 0x1E695CE18);
            v128 = sub_1BA4A7068();
            v129 = type metadata accessor for SummarySharingAcceptedProfileTileItem(0);
            v151 = v68;
            v130 = v129;
            swift_allocObject();
            v131 = sub_1BA3EC638(v137, v153, v152, v128, &v154);
            *(v118 + 24) = v130;
            *(v118 + 32) = sub_1B9F322F0(&qword_1EBBED548, type metadata accessor for SummarySharingAcceptedProfileTileItem, &unk_1BA4D9568);
            sub_1B9F2BB4C(v150, v151);

            *v118 = v131;
            (*(v127 + 8))(v69, v70);
            return result;
          }

          if (!v117)
          {
            v151 = v68;
            v120 = v138;
            (*(v138 + 16))(v137, v69, v70);
            sub_1B9F0A534(v142, v153);
            v121 = v143;
            Strong = swift_unknownObjectWeakLoadStrong();
            v149 = *(v121 + 24);
            v152[0] = *(v121 + 32);
            sub_1B9F0ADF8(0, &qword_1EDC5E540, 0x1E695CE18);
            v123 = sub_1BA4A7068();
            v150 = v66;
            v124 = v123;
            v125 = type metadata accessor for SummarySharingPendingProfileTileItem(0);
            swift_allocObject();
            v126 = sub_1BA246EE0(v137, v153, v124, Strong, v149, v152);

            swift_unknownObjectRelease();
            *(v118 + 24) = v125;
            *(v118 + 32) = sub_1B9F322F0(&qword_1EBBED550, type metadata accessor for SummarySharingPendingProfileTileItem, &unk_1BA4C8DA0);
            sub_1B9F2BB4C(v150, v151);

            *v118 = v126;
            (*(v120 + 8))(v145, v70);
            return result;
          }
        }

        (*(v138 + 8))(v69, v70);

        sub_1B9F2BB4C(v66, v68);
        *(v118 + 32) = 0;
        result = 0.0;
        *v118 = 0u;
        *(v118 + 16) = 0u;
        return result;
      }

      v106 = v66;
      v151 = v68;
      v107 = v135;
      sub_1BA4A3D88();
      v108 = sub_1BA4A3E88();
      v109 = sub_1BA4A6FB8();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v153[0] = v111;
        *v110 = 136315138;
        v112 = sub_1BA4A85D8();
        v114 = sub_1B9F0B82C(v112, v113, v153);
        v148 = v46;
        v115 = v114;

        *(v110 + 4) = v115;
        _os_log_impl(&dword_1B9F07000, v108, v109, "[%s] Could not fetch profile identifier to initialize an accepted shared profile's healthStore with", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v111);
        MEMORY[0x1BFAF43A0](v111, -1, -1);
        MEMORY[0x1BFAF43A0](v110, -1, -1);
        sub_1B9F2BB4C(v106, v151);

        (*(v150 + 8))(v135, v149);
        (*(v138 + 8))(v145, v70);
      }

      else
      {
        sub_1B9F2BB4C(v106, v151);

        (*(v150 + 8))(v107, v149);
        (*(v138 + 8))(v69, v70);
      }

      v132 = v134;
      *(v134 + 32) = 0;
      result = 0.0;
      *v132 = 0u;
      v132[1] = 0u;
    }
  }

  else
  {
    v81 = v148;
    sub_1BA4A3D88();
    v82 = v46;
    v83 = sub_1BA4A3E88();
    v84 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      LODWORD(v145) = v84;
      v86 = v85;
      v146 = swift_slowAlloc();
      v153[0] = v146;
      *v86 = 136315394;
      v87 = sub_1BA4A85D8();
      v147 = v83;
      v89 = sub_1B9F0B82C(v87, v88, v153);

      *(v86 + 4) = v89;
      *(v86 + 12) = 2080;
      sub_1BA4A26B8();
      v90 = sub_1BA4A1C58();
      v92 = v91;
      v93 = *(v38 + 8);
      v144 = v82;
      v93(v41, v37);
      v94 = sub_1B9F0B82C(v90, v92, v153);

      *(v86 + 14) = v94;
      v95 = v147;
      _os_log_impl(&dword_1B9F07000, v147, v145, "[%s] Unexpected contentKind %s from FeedItem", v86, 0x16u);
      v96 = v146;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v96, -1, -1);
      MEMORY[0x1BFAF43A0](v86, -1, -1);

      (*(v150 + 8))(v148, v149);
    }

    else
    {

      (*(v150 + 8))(v81, v149);
      v93 = *(v38 + 8);
    }

    v97 = v134;
    *(v134 + 32) = 0;
    *v97 = 0u;
    v97[1] = 0u;
    v93(v45, v37);
  }

  return result;
}

double sub_1BA1A1D80()
{
  sub_1BA1A2984(v0 + qword_1EDC84AF8);

  return result;
}

uint64_t sub_1BA1A1DD0()
{
  v0 = sub_1BA3581DC();
  v1 = *(v0 + qword_1EDC84B08);

  sub_1BA1A2984(v0 + qword_1EDC84AF8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProfilesSharingWithYouDataSource(uint64_t a1)
{
  result = qword_1EDC62568;
  if (!qword_1EDC62568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA1A1F68@<X0>(void *a1@<X8>)
{
  v2 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v6 = sub_1BA4A1318();
  v8 = v7;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v9 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v6, v8, 0, 0, 0, 0, v5, 0, 0);
  v11 = v10;
  a1[3] = v9;
  result = sub_1B9F322F0(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  a1[4] = result;
  *a1 = v11;
  return result;
}

double sub_1BA1A2120()
{
  sub_1B9FF585C();
  sub_1B9FF5890();
  sub_1B9FF58C4();
  sub_1B9FF58F8();
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830(v0, v1);

  return result;
}

void sub_1BA1A217C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *), uint64_t a5, char a6)
{
  v9 = a3;
  v40 = a2;
  v10 = sub_1B9F18214();
  v12 = v10;
  if (a6)
  {
    if (a6 == 1)
    {
      MEMORY[0x1EEE9AC00](v10, v11);
      v31 = a4;
      v32 = a5;
      v33 = &v40;
      v13 = sub_1BA2F4270(sub_1BA15D290, v30, v12);
      v35 = 0;

      v14 = 0;
      v15 = *(v13 + 2);
      v16 = MEMORY[0x1E69E7CC0];
LABEL_4:
      v17 = &v13[48 * v14 + 16];
      while (v15 != v14)
      {
        if (v14 >= *(v13 + 2))
        {
          __break(1u);
          return;
        }

        ++v14;
        v18 = (v17 + 48);
        v19 = *(v17 + 32);
        v17 += 48;
        if (*(v19 + 16))
        {
          v20 = *(v18 - 3);
          v36 = *(v18 - 4);
          v21 = *(v18 - 1);
          v22 = *v18;
          v23 = v18[1];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = v21;
          v39 = v16;
          v37 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B9F277B0(0, *(v16 + 16) + 1, 1);
            v16 = v39;
          }

          v26 = *(v16 + 16);
          v25 = *(v16 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_1B9F277B0((v25 > 1), v26 + 1, 1);
            v16 = v39;
          }

          *(v16 + 16) = v26 + 1;
          v27 = (v16 + 48 * v26);
          v27[4] = v36;
          v27[5] = v20;
          v28 = v37;
          v29 = v38;
          v27[6] = v19;
          v27[7] = v29;
          v27[8] = v28;
          v27[9] = v23;
          goto LABEL_4;
        }
      }
    }

    else
    {
      a4(v10, &v40);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10, v11);
    v31 = a4;
    v32 = a5;
    v33 = &v40;
    v34 = v9 & 1;
    sub_1BA2F4270(sub_1BA1A2AAC, v30, v12);
  }
}

id sub_1BA1A23F0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = [objc_opt_self() sharedBehavior];
  if (!v5)
  {
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5;
  v7 = [v5 isiPad];

  if (!v7 || (v8 = [v2 traitCollection], v9 = objc_msgSend(v8, sel_horizontalSizeClass), v8, v9 != 2))
  {
    if (qword_1EDC6D380 != -1)
    {
      swift_once();
    }

    v66 = xmmword_1EDC6D3C8;
    v67 = unk_1EDC6D3D8;
    v68 = xmmword_1EDC6D3E8;
    v69 = unk_1EDC6D3F8;
    v62 = xmmword_1EDC6D388;
    v63 = xmmword_1EDC6D398;
    v64 = xmmword_1EDC6D3A8;
    v65 = xmmword_1EDC6D3B8;
    v59 = unk_1EDC6D3D8;
    v60 = xmmword_1EDC6D3E8;
    v61 = unk_1EDC6D3F8;
    v55 = xmmword_1EDC6D398;
    v56 = xmmword_1EDC6D3A8;
    v22 = *(&xmmword_1EDC6D388 + 1);
    v23 = xmmword_1EDC6D388;
    v57 = xmmword_1EDC6D3B8;
    v58 = xmmword_1EDC6D3C8;
    sub_1B9F1D9A4(&v62, &v47);
    v24 = [v2 traitCollection];
    v25 = [v24 preferredContentSizeCategory];

    LOBYTE(v24) = sub_1BA4A7528();
    if (v24)
    {
      v26 = *(&v62 + 1);
      v22 = [objc_opt_self() estimatedDimension_];
    }

    v27 = [v2 traitCollection];
    v28 = [v27 preferredContentSizeCategory];

    LOBYTE(v27) = sub_1BA4A7528();
    v29 = objc_opt_self();
    v30 = 90.0;
    if (v27)
    {
      v30 = 800.0;
    }

    v31 = [v29 estimatedDimension_];

    *&v39 = v23;
    *(&v39 + 1) = v31;
    v44 = v59;
    v45 = v60;
    v46 = v61;
    v40 = v55;
    v41 = v56;
    v42 = v57;
    v43 = v58;
    sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
    v51 = v43;
    v52 = v44;
    v53 = v45;
    v54 = v46;
    v47 = v39;
    v48 = v40;
    v49 = v41;
    v50 = v42;
    sub_1B9F1D9A4(&v39, v38);
    v32 = sub_1B9F293A8(&v47);
    *&v47 = v23;
    *(&v47 + 1) = v31;
    v52 = v59;
    v53 = v60;
    v54 = v61;
    v48 = v55;
    v49 = v56;
    v50 = v57;
    v51 = v58;
    sub_1B9F1DA58(&v47);
    return v32;
  }

  [objc_msgSend(v2 container)];
  v11 = v10;
  swift_unknownObjectRelease();
  v12 = [v2 traitCollection];
  sub_1BA4A7368();

  sub_1BA4A6598();
  v14 = (v11 - v13) * 0.5;
  v15 = [v2 traitCollection];
  v16 = [v15 preferredContentSizeCategory];

  v17 = sub_1BA4A7528();
  sub_1B9F0ADF8(0, &qword_1EDC5E2F0, 0x1E6995590);
  v18 = sub_1BA4A7648();
  *(&v63 + 1) = &type metadata for GridLayoutEngine;
  *&v64 = &protocol witness table for GridLayoutEngine;
  v19 = swift_allocObject();
  *&v62 = v19;
  v20 = sub_1B9F58798(MEMORY[0x1E69E7CC0]);
  if ((v17 & 1) == 0)
  {
    if (v14 > 0.0)
    {
      v21 = 0x4056800000000000;
      goto LABEL_17;
    }

LABEL_21:
    result = sub_1BA4A8018();
    __break(1u);
    return result;
  }

  if (v14 <= 0.0)
  {
    goto LABEL_21;
  }

  v21 = 0x4089000000000000;
LABEL_17:
  *(v19 + 16) = v14;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 24) = v20;
  *(v19 + 48) = v21;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 56) = v18;
  *(v19 + 80) = sub_1B9F58BC4;
  *(v19 + 88) = 0;
  v32 = __swift_project_boxed_opaque_existential_1(&v62, &type metadata for GridLayoutEngine);
  *&v47 = v3;
  *(&v47 + 1) = v2;
  *&v48 = v4;
  v34 = (off_1F3804660[0])(&v47);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v62);
    return v32;
  }

  v35 = v34;
  v36 = [objc_opt_self() estimatedDimension_];
  v37 = sub_1B9F5CA58(v36, 2);

  __swift_destroy_boxed_opaque_existential_1(&v62);
  return v37;
}

uint64_t sub_1BA1A2984(uint64_t a1)
{
  sub_1BA1A29E0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA1A29E0(uint64_t a1)
{
  if (!qword_1EDC65F80)
  {
    sub_1B9F0D950(255, &qword_1EDC65F88, &protocol descriptor for ViewPendingInviteHandler);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC65F80);
    }
  }
}

uint64_t sub_1BA1A2A48(uint64_t a1, uint64_t a2)
{
  sub_1BA1A29E0(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1BA1A2AAC(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = a1[1];
  v8[0] = *a1;
  v8[1] = v7;
  v8[2] = a1[2];
  sub_1BA170068(v8, v3, v4, *v5, v6, a2);
}

void sub_1BA1A2B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t static EmptyStateCollectionViewCell.reuseIdentifier.getter()
{
  type metadata accessor for EmptyStateCollectionViewCell();
  sub_1B9F34708();
  return sub_1BA4A6808();
}

uint64_t EmptyStateCollectionViewCellItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void EmptyStateCollectionViewCellItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t EmptyStateCollectionViewCellItem.uniqueIdentifier.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_1BA1A2CB0();
    v1 = sub_1BA4A6808();
  }

  return v1;
}

unint64_t sub_1BA1A2CB0()
{
  result = qword_1EBBED560;
  if (!qword_1EBBED560)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBED560);
  }

  return result;
}

uint64_t EmptyStateCollectionViewCellItem.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void EmptyStateCollectionViewCellItem.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1BA1A2DB0(uint64_t a1)
{
  v2 = sub_1BA1A3698();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

id sub_1BA1A2DFC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell____lazy_storage___emptyStateCellView;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell____lazy_storage___emptyStateCellView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell____lazy_storage___emptyStateCellView];
  }

  else
  {
    v4 = [v0 contentView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(type metadata accessor for EmptyStateCellView()) initWithFrame_];
    v14 = *&v0[v1];
    *&v0[v1] = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

uint64_t sub_1BA1A2ECC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v9);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v9, v3 + v4);
  swift_endAccess();
  v5 = sub_1BA1A2DFC();
  sub_1B9F68124(v3 + v4, v8);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
  swift_beginAccess();
  sub_1B9F63E74(v8, v5 + v6);
  swift_endAccess();
  sub_1BA41F534();

  sub_1B9F7B644(v8);
  return sub_1B9F7B644(v9);
}

uint64_t sub_1BA1A2F9C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA1A2FF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  v4 = sub_1BA1A2DFC();
  sub_1B9F68124(v1 + v3, v7);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v4 + v5);
  swift_endAccess();
  sub_1BA41F534();

  sub_1B9F7B644(a1);
  return sub_1B9F7B644(v7);
}

uint64_t (*sub_1BA1A30B8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell_item;
  *(v3 + 64) = v1;
  *(v3 + 72) = v4;
  swift_beginAccess();
  return sub_1BA1A3140;
}

void sub_1BA1A3140(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[8];
    v5 = v3[9];
    v6 = sub_1BA1A2DFC();
    sub_1B9F68124(v4 + v5, v3);
    v7 = OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
    swift_beginAccess();
    sub_1B9F63E74(v3, v6 + v7);
    swift_endAccess();
    sub_1BA41F534();

    sub_1B9F7B644(v3);
  }

  free(v3);
}

char *sub_1BA1A31EC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell____lazy_storage___emptyStateCellView] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell_item];
  v10 = type metadata accessor for EmptyStateCollectionViewCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v24.receiver = v4;
  v24.super_class = v10;
  v11 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 tertiarySystemFillColor];
  [v13 setBackgroundColor_];

  v15 = *MEMORY[0x1E69796E8];
  v16 = [v13 layer];
  [v16 setCornerCurve_];

  v17 = [v13 layer];
  [v17 setCornerRadius_];

  v18 = [v13 layer];
  [v18 setMaskedCorners_];

  [v13 setClipsToBounds_];
  v19 = [v13 contentView];
  v20 = sub_1BA1A2DFC();
  [v19 addSubview_];

  v21 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell____lazy_storage___emptyStateCellView];
  v22 = [v13 contentView];
  [v21 hk:v22 alignConstraintsWithView:?];

  return v13;
}

id EmptyStateCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyStateCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA1A3558(uint64_t *a1))(void *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell_item;
  *(v3 + 64) = v1;
  *(v3 + 72) = v4;
  swift_beginAccess();
  return sub_1BA1A3140;
}

unint64_t sub_1BA1A3698()
{
  result = qword_1EBBED578;
  if (!qword_1EBBED578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED578);
  }

  return result;
}

Swift::Void __swiftcall UIButton.setTitleWithoutAnimation(_:for:)(Swift::String_optional _, UIControlState a2)
{
  object = _.value._object;
  countAndFlagsBits = _.value._countAndFlagsBits;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = countAndFlagsBits;
  v7[4] = object;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1B9F7B15C;
  *(v8 + 24) = v7;
  v12[4] = sub_1B9F7B0CC;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B9F7B0FC;
  v12[3] = &block_descriptor_41;
  v9 = _Block_copy(v12);

  v10 = v2;

  [v6 performWithoutAnimation_];
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id sub_1BA1A386C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1BA0C6900(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() buttonWithType_];
  sub_1BA4A7968();
  v9 = [objc_opt_self() systemBlueColor];
  sub_1BA4A78F8();
  sub_1BA4A7878();
  sub_1BA4A7858();
  v10 = a3;
  sub_1BA4A7958();

  sub_1BA4A7978();
  v11 = sub_1BA4A79A8();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  sub_1BA4A79D8();
  v12 = v8;
  v13 = [v12 layer];
  [v13 setCornerRadius_];

  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  return v12;
}

void *ArrayDataSource.__allocating_init(arrangedSections:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1B9F348D8(a1, a2, a3);

  return v6;
}

uint64_t sub_1BA1A3A7C()
{
  v1 = v0;
  if (v0[4])
  {
    v2 = v0[3];
  }

  else
  {
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD000000000000025, 0x80000001BA4F0FB0);
    MEMORY[0x1BFAF1350](v0[5], v0[6]);
    MEMORY[0x1BFAF1350](0x6F6974636553202CLL, 0xEC000000203A736ELL);
    v3 = MEMORY[0x1BFAF1560](*(v0 + OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_arrangedSections), &type metadata for ArrayDataSourceSection);
    MEMORY[0x1BFAF1350](v3);

    MEMORY[0x1BFAF1350](62, 0xE100000000000000);
    v2 = 0;
    v1[3] = 0;
    v1[4] = 0xE000000000000000;
  }

  return v2;
}

double sub_1BA1A3B94(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return result;
}

double (*sub_1BA1A3BA4(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1BA1A3A7C();
  a1[1] = v3;
  return sub_1BA1A3BEC;
}

double sub_1BA1A3BEC(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 24) = *a1;
  *(v1 + 32) = v2;

  return result;
}

uint64_t ArrayDataSource.identifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1BA1A3C30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F12538();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BA1A3CBC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, v5, v8);
  v11 = *a2;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v6 + 40))(v11 + v12, v10, v5);
  return swift_endAccess();
}

uint64_t sub_1BA1A3DD4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F12538();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BA1A3E5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F12538();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t ArrayDataSource.__allocating_init(_:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ArrayDataSource.init(_:identifier:)(a1, a2, a3);
  return v6;
}

void *ArrayDataSource.init(_:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = sub_1BA4A1798();
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v9);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F15B38();
  v11 = sub_1BA4A7A78();
  v12 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v13 = sub_1BA4A6758();
  v14 = [v12 initWithName:v13 loggingCategory:v11];

  v15 = a1;
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = v14;
  sub_1BA4A45D8();
  v16 = *(a1 + 16);
  if (v16)
  {
    v33 = a2;
    v34 = a3;
    v35 = v4;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1B9F277B0(0, v16, 0);
    v17 = v40;
    v36 = (v8 + 8);
    v37 = a1;
    v18 = 32;
    do
    {
      v19 = *(v15 + v18);

      v20 = v38;
      sub_1BA4A1788();
      v21 = sub_1BA4A1748();
      v23 = v22;
      (*v36)(v20, v39);

      v25 = Array<A>.identifierToIndexDict()(v24);

      v40 = v17;
      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1B9F277B0((v26 > 1), v27 + 1, 1);
        v17 = v40;
      }

      *(v17 + 16) = v27 + 1;
      v28 = (v17 + 48 * v27);
      v28[4] = 0;
      v28[5] = 0;
      v28[6] = v19;
      v28[7] = v25;
      v28[8] = v21;
      v28[9] = v23;
      v18 += 8;
      --v16;
      v15 = v37;
    }

    while (v16);

    a3 = v34;
    v4 = v35;
    a2 = v33;
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_arrangedSections) = v17;

  v30 = Array<A>.identifierToIndexDict()(v29);

  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_arrangedSectionsIdentifierToIndexMap) = v30;
  v4[5] = a2;
  v4[6] = a3;

  sub_1B9F34BA0(v31);

  return v4;
}

void sub_1BA1A4294(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1B9F12538();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v10 + 16))(v13, v4 + v14, v9);
  *&v33 = a1;
  *(&v33 + 1) = a2;
  sub_1BA4A4568();
  (*(v10 + 8))(v13, v9);
  if (v28)
  {
    v15 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_arrangedSectionsIdentifierToIndexMap);
    if (*(v15 + 16))
    {
      v16 = sub_1B9F24A34(v27, v28);
      v18 = v17;

      if (v18)
      {
        v19 = *(*(v15 + 56) + 8 * v16);
        if ((v19 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v20 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_arrangedSections);
          if (v19 < *(v20 + 16))
          {
            v21 = (v20 + 48 * v19);
            v22 = v21[5];
            v23 = v21[6];
            v24 = v21[7];
            v25 = v21[8];
            v26 = v21[9];
            v27 = v21[4];
            v28 = v22;
            v29 = v23;
            v30 = v24;
            v31 = v25;
            v32 = v26;

            ArrayDataSourceSection.item(for:)(a1, a2, &v33);

            if (v34)
            {
              sub_1B9F25598(&v33, a3);
              return;
            }

            sub_1B9FCD638(&v33);
            goto LABEL_10;
          }
        }

        __break(1u);
        return;
      }
    }

    else
    {
    }
  }

LABEL_10:
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
}

uint64_t ArrayDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ArrayDataSource.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1A481C(char a1)
{
  sub_1BA4A8488();
  if (a1)
  {
    v2 = 0x4046000000000000;
  }

  else
  {
    v2 = 0x4055800000000000;
  }

  MEMORY[0x1BFAF2F00](v2);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA1A4874(uint64_t a1, char a2)
{
  sub_1BA4A8488();
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0, 0x1E696AEC0);
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = sub_1BA4A77C8("healthCanSendYouUpdates", 23, 2);
    }

    else
    {
      v3 = sub_1BA4A77C8("inviationAccepted", 17, 2);
    }
  }

  else
  {
    v3 = sub_1BA4A77C8("userWantsToShare", 16, 2);
  }

  v4 = v3;
  sub_1BA4A77A8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA1A491C(uint64_t a1, char a2)
{
  sub_1BA4A8488();
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0, 0x1E696AEC0);
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = sub_1BA4A77C8("sharingTab", 10, 2);
    }

    else
    {
      v3 = sub_1BA4A77C8("requestLink", 11, 2);
    }
  }

  else
  {
    v3 = sub_1BA4A77C8("summaryTab", 10, 2);
  }

  v4 = v3;
  sub_1BA4A77A8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA1A49C4(uint64_t a1, char a2)
{
  sub_1BA4A8488();
  if (a2)
  {
    v3 = 0x4046000000000000;
  }

  else
  {
    v3 = 0x4055800000000000;
  }

  MEMORY[0x1BFAF2F00](v3);
  return sub_1BA4A84D8();
}

BOOL sub_1BA1A4A18(_BYTE *a1, _BYTE *a2)
{
  v2 = 86.0;
  if (*a1)
  {
    v3 = 44.0;
  }

  else
  {
    v3 = 86.0;
  }

  if (*a2)
  {
    v2 = 44.0;
  }

  return v3 == v2;
}

uint64_t sub_1BA1A4A58()
{
  if (*v0)
  {
    v1 = 0x4046000000000000;
  }

  else
  {
    v1 = 0x4055800000000000;
  }

  return MEMORY[0x1BFAF2F00](v1);
}

double *sub_1BA1A4AA0@<X0>(double *result@<X0>, char *a2@<X8>)
{
  if (*result == 44.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 86.0)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void sub_1BA1A4AD4(double *a1@<X8>)
{
  v2 = 86.0;
  if (*v1)
  {
    v2 = 44.0;
  }

  *a1 = v2;
}

void sub_1BA1A4B98(void **a1@<X0>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1B9F3D608(0, &qword_1EDC5F428, sub_1B9F3C928, MEMORY[0x1E695C000]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v25 - v11;
  sub_1B9F3DE4C(0, &unk_1EDC5F410, MEMORY[0x1E695C010]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v25 - v17;
  v19 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (v19)
    {
      v25 = v19;
      sub_1B9F3C928(0);
      v22 = v19;
      sub_1BA4A4E78();
      sub_1BA07003C();
      v23 = sub_1BA4A4F98();

      (*(v9 + 8))(v12, v8);
    }

    else
    {
      v25 = sub_1BA1A4ED0(a3);
      v24 = MEMORY[0x1E695BED0];
      sub_1B9F3DE4C(0, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
      sub_1B9F3DED0(&qword_1EDC5F498, &qword_1EDC5F490, v24, MEMORY[0x1E695BED8]);
      v23 = sub_1BA4A4F98();
    }
  }

  else
  {
    sub_1B9F3C928(0);
    sub_1BA4A4E88();
    sub_1B9F3DED0(&qword_1EBBEAD38, &unk_1EDC5F410, MEMORY[0x1E695C010], MEMORY[0x1E695C018]);
    v23 = sub_1BA4A4F98();
    (*(v15 + 8))(v18, v14);
  }

  *a4 = v23;
}

uint64_t sub_1BA1A4ED0(void *a1)
{
  v72 = a1;
  v84 = MEMORY[0x1E69E8050];
  v83 = MEMORY[0x1E69E6720];
  sub_1B9F3D608(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v80 = &v68 - v4;
  sub_1BA1A64F0(0, v3);
  v86 = v5;
  v88 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v81 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1A6B14(0, v7);
  v87 = v9;
  v89 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v82 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1A6668(0);
  v13 = *(v12 - 8);
  v76 = v12;
  v77 = v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v73 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1A65BC(0, v15);
  v78 = v17;
  v85 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v74 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1A6754(0);
  v90 = v20;
  v71 = *(v20 - 8);
  v21 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v70 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v91 = &v68 - v25;
  v26 = sub_1BA4A7488();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1A6A74(0);
  v32 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = &v68 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1A6860(0);
  v92 = v37;
  v79 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v68 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = [objc_opt_self() defaultCenter];
  v41 = sub_1BA4A73C8();
  sub_1BA4A7498();

  sub_1B9F3DBF4(&unk_1EDC6B560, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1BA4A4FE8();
  (*(v27 + 8))(v30, v26);
  v69 = MEMORY[0x1E695BD60];
  sub_1B9F3DBF4(&qword_1EDC5F610, sub_1BA1A6A74, MEMORY[0x1E695BD60]);
  v68 = v40;
  sub_1BA4A5098();
  (*(v33 + 8))(v36, v32);
  v42 = swift_allocObject();
  v43 = v72;
  *(v42 + 16) = v72;
  sub_1BA1A67E8(0);
  sub_1B9F3DBF4(&unk_1EDC5F3A0, sub_1BA1A67E8, MEMORY[0x1E695C038]);
  v44 = v43;
  v45 = v91;
  sub_1BA4A4EC8();
  v46 = v71;
  v47 = v70;
  v48 = v90;
  (*(v71 + 16))(v70, v45, v90);
  v49 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v50 = swift_allocObject();
  (*(v46 + 32))(v50 + v49, v47, v48);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1BA1A6BC8;
  *(v51 + 24) = v50;
  sub_1BA4A4D08();
  sub_1B9F3DBF4(&qword_1EDC5F6D0, sub_1BA1A6860, MEMORY[0x1E695BCA8]);
  sub_1B9F3DBF4(&qword_1EDC5F380, sub_1BA1A6754, MEMORY[0x1E695C058]);
  v52 = v73;
  sub_1BA4A5178();

  sub_1B9F1D284();
  sub_1B9F3DBF4(&qword_1EDC5F590, sub_1BA1A6668, MEMORY[0x1E695BE40]);
  v53 = v74;
  v54 = v76;
  sub_1BA4A4FE8();
  (*(v77 + 8))(v52, v54);
  v93[0] = v44;
  v55 = sub_1BA4A72A8();
  v56 = v80;
  (*(*(v55 - 8) + 56))(v80, 1, 1, v55);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v57 = v69;
  sub_1B9F3DBF4(&qword_1EDC5F658, sub_1BA1A65BC, v69);
  sub_1B9F3DC80();
  v58 = v81;
  v59 = v78;
  v60 = v53;
  sub_1BA4A50A8();
  sub_1B9F0DCE0(v56, &qword_1EDC6B5B8, v84, v83, sub_1B9F3D608);
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1BA1A6C64;
  *(v62 + 24) = v61;
  sub_1B9F3C928(0);
  sub_1B9F3DBF4(&qword_1EDC5F510, sub_1BA1A64F0, MEMORY[0x1E695BE98]);
  v63 = v82;
  v64 = v86;
  sub_1BA4A4FE8();

  (*(v88 + 8))(v58, v64);
  sub_1B9F3DBF4(&qword_1EDC5F620, sub_1BA1A6B14, v57);
  v65 = v87;
  v66 = sub_1BA4A4F98();

  (*(v89 + 8))(v63, v65);
  (*(v85 + 8))(v60, v59);
  (*(v46 + 8))(v91, v90);
  (*(v79 + 8))(v68, v92);
  return v66;
}

uint64_t sub_1BA1A59FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  sub_1BA1A67E8(0);
  swift_allocObject();
  v4 = a1;
  result = sub_1BA4A4EA8();
  *a2 = result;
  return result;
}

double sub_1BA1A5A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A64C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1BA08FD3C;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1BA1A6CB0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_42;
  v16 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  v18[1] = MEMORY[0x1E69E7CC0];
  sub_1B9F3DBF4(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B9F3D608(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v13, v8, v16);
  _Block_release(v16);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);

  return result;
}

void sub_1BA1A5D78(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_1BA1A6CB8;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1BA0B06D4;
  v7[3] = &block_descriptor_43;
  v6 = _Block_copy(v7);

  [v4 hk:v6 fetchExistingDemographicInformationWithCompletion:?];
  _Block_release(v6);
}

void sub_1BA1A5E78(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 firstName];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  v8 = [v3 lastName];
  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v11 = v10;

  a2[2] = v9;
  a2[3] = v11;
}

uint64_t sub_1BA1A5F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1BA4A2F18();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v11 = Strong;
  sub_1BA4A2F08();
  v12 = sub_1BA4A2EF8();

  (*(v6 + 8))(v9, v5);
  return v12;
}

void sub_1BA1A61D0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  sub_1BA4A22B8();
  v3 = v2;
  v4 = sub_1BA4A22A8();
  v5 = objc_allocWithZone(type metadata accessor for ProfileViewController());
  v11 = v3;

  v6 = sub_1BA249DB8(v11, v4, v5);

  v7 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v8 = [v7 navigationBar];
  [v8 setPrefersLargeTitles_];

  v9 = [v1 viewController];
  if (v9)
  {
    v10 = v9;
    [v9 presentViewController:v7 animated:1 completion:0];
  }
}

id sub_1BA1A63EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1BA1A649C()
{
  result = qword_1EBBED5B8;
  if (!qword_1EBBED5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED5B8);
  }

  return result;
}

void sub_1BA1A64F0(uint64_t a1, __n128 a2)
{
  if (!qword_1EDC5F508)
  {
    sub_1BA1A65BC(255, a2);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1B9F3DBF4(&qword_1EDC5F658, sub_1BA1A65BC, MEMORY[0x1E695BD60]);
    sub_1B9F3DC80();
    v2 = sub_1BA4A4CC8();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC5F508);
    }
  }
}

void sub_1BA1A65BC(uint64_t a1, __n128 a2)
{
  if (!qword_1EDC5F650)
  {
    sub_1BA1A6668(255);
    sub_1B9F1D284();
    sub_1B9F3DBF4(&qword_1EDC5F590, sub_1BA1A6668, MEMORY[0x1E695BE40]);
    v2 = sub_1BA4A4B78();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC5F650);
    }
  }
}

void sub_1BA1A6668(uint64_t a1)
{
  if (!qword_1EDC5F588)
  {
    sub_1BA1A6754(255);
    sub_1BA1A6860(255);
    sub_1B9F3DBF4(&qword_1EDC5F380, sub_1BA1A6754, MEMORY[0x1E695C058]);
    sub_1B9F3DBF4(&qword_1EDC5F6D0, sub_1BA1A6860, MEMORY[0x1E695BCA8]);
    v1 = sub_1BA4A4C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F588);
    }
  }
}

void sub_1BA1A6754(uint64_t a1)
{
  if (!qword_1EDC5F378)
  {
    sub_1BA1A67E8(255);
    sub_1B9F3DBF4(&unk_1EDC5F3A0, sub_1BA1A67E8, MEMORY[0x1E695C038]);
    v1 = sub_1BA4A4ED8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F378);
    }
  }
}

void sub_1BA1A67E8(uint64_t a1)
{
  if (!qword_1EDC5F398)
  {
    sub_1B9F0ADF8(255, &unk_1EDC5E240, 0x1E69A4360);
    v1 = sub_1BA4A4E98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F398);
    }
  }
}

void sub_1BA1A6860(uint64_t a1)
{
  if (!qword_1EDC5F6C8)
  {
    sub_1BA1A694C(255);
    sub_1BA1A6A74(255);
    sub_1B9F3DBF4(&qword_1EDC5F560, sub_1BA1A694C, MEMORY[0x1E695BE60]);
    sub_1B9F3DBF4(&qword_1EDC5F610, sub_1BA1A6A74, MEMORY[0x1E695BD60]);
    v1 = sub_1BA4A4AF8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F6C8);
    }
  }
}

void sub_1BA1A694C(uint64_t a1)
{
  if (!qword_1EDC5F558)
  {
    sub_1B9F23434(255, &qword_1EDC5E5F0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E62F8]);
    sub_1BA1A69F4();
    v1 = sub_1BA4A4C98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F558);
    }
  }
}

unint64_t sub_1BA1A69F4()
{
  result = qword_1EDC5E5E8;
  if (!qword_1EDC5E5E8)
  {
    sub_1B9F23434(255, &qword_1EDC5E5F0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E5E8);
  }

  return result;
}

void sub_1BA1A6A74(uint64_t a1)
{
  if (!qword_1EDC5F608)
  {
    sub_1BA4A7488();
    sub_1B9F3DBF4(&unk_1EDC6B560, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F608);
    }
  }
}

void sub_1BA1A6B14(uint64_t a1, __n128 a2)
{
  if (!qword_1EDC5F618)
  {
    sub_1BA1A64F0(255, a2);
    sub_1B9F3C928(255);
    sub_1B9F3DBF4(&qword_1EDC5F510, sub_1BA1A64F0, MEMORY[0x1E695BE98]);
    v2 = sub_1BA4A4B78();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC5F618);
    }
  }
}

uint64_t sub_1BA1A6BC8@<X0>(uint64_t a1@<X8>)
{
  sub_1BA1A6754(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_1BA1A6C6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

uint64_t AdvertisableFeaturePostCommitWorkItemViewControllerFactory.__allocating_init(healthStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

char *sub_1BA1A6D34(uint64_t a1)
{
  v3 = sub_1BA4A3448();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v4 + 16))(v8, a1, v3, v6);
  v9 = (*(v4 + 88))(v8, v3);
  if (v9 == *MEMORY[0x1E69A3468] || v9 != *MEMORY[0x1E69A3470])
  {
    (*(v4 + 8))(v8, v3);
    return 0;
  }

  else
  {
    v10 = *(v1 + 16);
    v11 = objc_allocWithZone(type metadata accessor for AdvertisableFeatureMedicationsThatAffectHeartRateViewController());
    *&v11[OBJC_IVAR____TtC18HealthExperienceUI63AdvertisableFeatureMedicationsThatAffectHeartRateViewController_navigationDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v17[0] = 1;
    v12 = v10;
    v13 = sub_1BA002450(v12, v17, 0);

    v14 = &v13[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_delegate];
    swift_beginAccess();
    *(v14 + 1) = &off_1F380B9D0;
    swift_unknownObjectWeakAssign();
    return v13;
  }
}

uint64_t AdvertisableFeaturePostCommitWorkItemViewControllerFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1BA1A6FBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvertisableFeatureMedicationsThatAffectHeartRateViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1A7050(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI63AdvertisableFeatureMedicationsThatAffectHeartRateViewController_navigationDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA1A70BC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI63AdvertisableFeatureMedicationsThatAffectHeartRateViewController_navigationDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

uint64_t sub_1BA1A715C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69A3470];
  v3 = sub_1BA4A3448();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1BA1A71D0()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI63AdvertisableFeatureMedicationsThatAffectHeartRateViewController_navigationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, &off_1F380B9A8, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BA1A7340(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_item;
  swift_beginAccess();
  sub_1BA176B88(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA1A73A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA1A73FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_item;
  swift_beginAccess();
  sub_1BA176B88(a1, v1 + v3);
  return swift_endAccess();
}

id MultipleItemsCardStackCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *MultipleItemsCardStackCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  sub_1B9F0D2C8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v27 - v11;
  v13 = &v4[OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_item];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_cardStackView] = v14;
  v15 = type metadata accessor for MultipleItemsCardStackCell();
  v27.receiver = v4;
  v27.super_class = v15;
  v16 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA4A4148();
  v17 = sub_1BA4A4168();
  (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
  MEMORY[0x1BFAF1F10](v12);
  v18 = *&v16[OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_cardStackView];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = [objc_opt_self() tertiarySystemBackgroundColor];
  v20 = [v19 colorWithAlphaComponent_];

  [v18 setBackgroundColor_];
  v21 = *MEMORY[0x1E69796E8];
  v22 = [v18 layer];
  [v22 setCornerCurve_];

  v23 = [v18 layer];
  [v23 setCornerRadius_];

  v24 = [v18 layer];
  [v24 setMaskedCorners_];

  [v18 setClipsToBounds_];
  v25 = [v16 contentView];
  [v25 addSubview_];

  sub_1BA1A80F0();
  sub_1BA1A7DF0();

  return v16;
}

id sub_1BA1A78B4(void *a1)
{
  sub_1B9F0D2C8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v23 - v5;
  v7 = &v1[OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_item];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_cardStackView] = v8;
  v9 = type metadata accessor for MultipleItemsCardStackCell();
  v23.receiver = v1;
  v23.super_class = v9;
  v10 = objc_msgSendSuper2(&v23, sel_initWithCoder_, a1);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    sub_1BA4A4148();
    v13 = sub_1BA4A4168();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
    MEMORY[0x1BFAF1F10](v6);
    v14 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_cardStackView];
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    v15 = [objc_opt_self() tertiarySystemBackgroundColor];
    v16 = [v15 colorWithAlphaComponent_];

    [v14 setBackgroundColor_];
    v17 = *MEMORY[0x1E69796E8];
    v18 = [v14 layer];
    [v18 setCornerCurve_];

    v19 = [v14 layer];
    [v19 setCornerRadius_];

    v20 = [v14 layer];
    [v20 setMaskedCorners_];

    [v14 setClipsToBounds_];
    v21 = [v12 contentView];
    [v21 addSubview_];

    sub_1BA1A80F0();
    sub_1BA1A7DF0();
  }

  return v11;
}

void sub_1BA1A7B94()
{
  sub_1B9F0D2C8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v14 - v3;
  sub_1BA4A4148();
  v5 = sub_1BA4A4168();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  MEMORY[0x1BFAF1F10](v4);
  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_cardStackView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [objc_opt_self() tertiarySystemBackgroundColor];
  v8 = [v7 colorWithAlphaComponent_];

  [v6 setBackgroundColor_];
  v9 = *MEMORY[0x1E69796E8];
  v10 = [v6 layer];
  [v10 setCornerCurve_];

  v11 = [v6 layer];
  [v11 setCornerRadius_];

  v12 = [v6 layer];
  [v12 setMaskedCorners_];

  [v6 setClipsToBounds_];
  v13 = [v0 contentView];
  [v13 addSubview_];

  sub_1BA1A80F0();
  sub_1BA1A7DF0();
}

void sub_1BA1A7DF0()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_1B9F109F8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5880;
  v4 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_cardStackView];
  v5 = [v4 leadingAnchor];
  v6 = [v1 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:26.0];
  *(v3 + 32) = v8;
  v9 = [v1 contentView];
  v10 = [v9 trailingAnchor];

  v11 = [v4 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:26.0];

  *(v3 + 40) = v12;
  v13 = [v4 heightAnchor];
  v14 = [v13 constraintEqualToConstant_];

  *(v3 + 48) = v14;
  v15 = [v4 topAnchor];
  v16 = [v1 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:10.0];
  *(v3 + 56) = v18;
  v19 = [v1 contentView];
  v20 = [v19 bottomAnchor];

  v21 = [v4 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-36.0];

  *(v3 + 64) = v22;
  sub_1B9F740B0();
  v23 = sub_1BA4A6AE8();

  [v2 activateConstraints_];
}

void sub_1BA1A80F0()
{
  v1 = [v0 layer];
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  [v1 setShadowColor_];
  v4 = [v0 layer];
  [v4 setShadowOffset_];

  v5 = [v0 layer];
  [v5 setShadowRadius_];

  v6 = [v0 layer];
  LODWORD(v7) = 1045220557;
  [v6 setShadowOpacity_];

  v8 = [v0 layer];
  [v8 setMasksToBounds_];

  v9 = [v0 contentView];
  [v9 setClipsToBounds_];
}

id MultipleItemsCardStackCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultipleItemsCardStackCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MultipleItemsCardStackItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void MultipleItemsCardStackItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t MultipleItemsCardStackItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void MultipleItemsCardStackItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t static MultipleItemsCardStackItem.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BA4A8338(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1BA4A8338();
    }
  }

  return result;
}

uint64_t MultipleItemsCardStackItem.hash(into:)(uint64_t a1)
{
  sub_1BA4A68C8();

  return sub_1BA4A68C8();
}

uint64_t MultipleItemsCardStackItem.hashValue.getter()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA1A85E4(uint64_t a1)
{
  v2 = sub_1BA1A8750();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

unint64_t sub_1BA1A8638()
{
  result = qword_1EBBED5D8;
  if (!qword_1EBBED5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED5D8);
  }

  return result;
}

unint64_t sub_1BA1A8750()
{
  result = qword_1EDC65498;
  if (!qword_1EDC65498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC65498);
  }

  return result;
}

void sub_1BA1A87A4(void *a1)
{
  v1 = [a1 navigationController];
  if (v1)
  {
    v2 = v1;
  }
}

double sub_1BA1A8818(uint64_t *a1, id a2)
{
  v5 = *a1;
  v4 = a1[1];
  if (!*(a1 + 16))
  {
    if (!*(*(v2 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_privacyDataSource) + OBJC_IVAR____TtC18HealthExperienceUI17PrivacyDataSource_researchStudiesItem))
    {
      return result;
    }

    sub_1BA395AC0(a2, v5, v4, 0);
    goto LABEL_21;
  }

  if (*(a1 + 16) == 1)
  {
    v6 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_privacyDataSource);
    v7 = [a2 navigationController];
    v9 = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI17PrivacyDataSource_appSourcesItem);
    if (v9)
    {
      if (!v7)
      {
        return result;
      }

      v25 = v7;
      v10 = *(v9 + 72);

      v11 = [v10 viewControllerFactory];
      if (v4)
      {
        v12 = sub_1BA4A6758();
      }

      else
      {
        v12 = 0;
      }

      v24 = [v11 createSingleAppAuthorizationViewControllerUsingInsetStyling:1 restorationApplicationBundleIdentifier:{v12, v25}];

      [v27 pushViewController:v24 animated:0];
      goto LABEL_21;
    }
  }

  else
  {
    v13 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_medicalDetailsDataSource);
    if (!(v5 | v4))
    {
      v18 = *(*(v13 + OBJC_IVAR____TtC18HealthExperienceUI24MedicalDetailsDataSource_characteristicsDataSourceItem) + 104);

      v19 = v18;
      UIViewController.resolvedHealthExperienceStore.getter(v28);
      v20 = objc_allocWithZone(type metadata accessor for ProfileCharacteristicsWithAutoAvatarImageViewController());
      v21 = sub_1BA06F854(v19, v28);

      [v21 setAccessType_];
      v22 = [a2 navigationController];
      if (v22)
      {
        v23 = v22;
        [v22 pushViewController:v21 animated:0];
      }

LABEL_21:

      return result;
    }

    v14 = *(v13 + OBJC_IVAR____TtC18HealthExperienceUI24MedicalDetailsDataSource_medicalIDDataSourceItem);
    if (!v14)
    {
      return result;
    }

    v15 = *&v14[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController];
    *&v14[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController] = a2;
    v26 = v14;
    v16 = a2;

    v17 = sub_1BA4A2968();
    sub_1BA168388(v17, 0);
    sub_1BA1698F8(v17);
    v7 = v26;
  }

  return result;
}

double sub_1BA1A8B1C()
{

  return result;
}

uint64_t sub_1BA1A8B9C()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA1A8CAC()
{
  sub_1BA1A8B9C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProfileCompoundDataSource(uint64_t a1)
{
  result = qword_1EBBED678;
  if (!qword_1EBBED678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA1A8DB0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBED5E0 = result;
  *algn_1EBBED5E8 = v1;
  return result;
}

uint64_t sub_1BA1A8E78()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBED5F0 = result;
  *algn_1EBBED5F8 = v1;
  return result;
}

uint64_t sub_1BA1A8F48()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBED600 = result;
  *algn_1EBBED608 = v1;
  return result;
}

uint64_t sub_1BA1A900C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  *&xmmword_1EBBED610 = result;
  *(&xmmword_1EBBED610 + 1) = v1;
  return result;
}

uint64_t sub_1BA1A90CC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBED620 = result;
  *algn_1EBBED628 = v1;
  return result;
}

uint64_t sub_1BA1A9194()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBED630 = result;
  *algn_1EBBED638 = v1;
  return result;
}

uint64_t sub_1BA1A9260()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBED640 = result;
  *algn_1EBBED648 = v1;
  return result;
}

double sub_1BA1A9328(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1BA4A6B08();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);

  return result;
}

uint64_t sub_1BA1A93C0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = type metadata accessor for MemorySharingParticipantDataSourceCache();
  v36[4] = &off_1F38167E8;
  v36[0] = a2;
  *(a3 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_sharingParticipants) = 0;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_lastKnownSharingState;
  *(a3 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_lastKnownSharingState) = 0;
  v12 = (a3 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_updateHandler);
  *v12 = 0;
  v12[1] = 0;
  v13 = [a1 profileIdentifier];
  v14 = [v13 type];

  if (v14 == 1)
  {
    *(a3 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_healthStore) = a1;
    sub_1B9F0A534(v36, a3 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_resultsCache);
    v15 = objc_allocWithZone(MEMORY[0x1E696C000]);
    v16 = a1;
    v17 = [v15 initWithHealthStore_];
    *(a3 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_cloudShareSyncManager) = v17;
    v18 = [v17 lastKnownParticipantSharingStatus];
    *(a3 + v11) = v18;
    if (v18 == 1)
    {
      sub_1B9F1C048(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection);
      v19 = swift_allocObject();
      v34 = xmmword_1BA4B5480;
      *(v19 + 16) = xmmword_1BA4B5480;
      sub_1BA1AA238(0, &qword_1EDC5DCA0, sub_1B9F32244, MEMORY[0x1E69E6F90]);
      v20 = swift_allocObject();
      *(v20 + 16) = v34;
      *(v20 + 56) = &type metadata for EmptyStateCollectionViewCellItem;
      *(v20 + 64) = sub_1BA02090C();
      v21 = swift_allocObject();
      *(v20 + 32) = v21;
      aBlock[0] = type metadata accessor for EmptyStateCollectionViewCell();
      sub_1B9F34708();
      *(v21 + 16) = sub_1BA4A6808();
      *(v21 + 24) = v22;
      *(v21 + 32) = xmmword_1BA4C3370;
      *(v21 + 48) = 1;
      sub_1BA4A1788();
      v23 = sub_1BA4A1748();
      v25 = v24;
      (*(v7 + 8))(v10, v6);
      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

      v27 = Array<A>.identifierToIndexDict()(v26);

      v28 = v19;
      *(v19 + 32) = 0;
      *(v19 + 40) = 0;
      *(v19 + 48) = v20;
      *(v19 + 56) = v27;
      *(v19 + 64) = v23;
      *(v19 + 72) = v25;
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    v29 = sub_1B9F1DAFC(v28, 1, sub_1BA3153B0, 0);
    sub_1BA3155E0();
    v30 = *(v29 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_cloudShareSyncManager);
    v31 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1BA1AA230;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA1A9328;
    aBlock[3] = &block_descriptor_43;
    v32 = _Block_copy(aBlock);

    [v30 fetchAllShareParticipantEmailAddressesForSharingType:1 completion:v32];
    _Block_release(v32);

    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v36);

    sub_1B9F0E310(*v12, v12[1]);
    type metadata accessor for SharingParticipantDataSource(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v29;
}

uint64_t sub_1BA1A9848(void *a1, void *a2)
{
  v3 = v2;
  sub_1BA1AA238(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v85 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v80 - v11;
  v13 = a2;
  v14 = [a1 profileIdentifier];
  type metadata accessor for ProfileAvatarDataSource(0);
  swift_allocObject();
  v15 = ProfileAvatarDataSource.init(context:profileIdentifier:layoutConstructor:shouldDisplayName:)(v13, v14, sub_1BA03A208, 0, 1);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_profileHeaderDataSource;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_profileHeaderDataSource) = v15;

  v86 = v12;
  sub_1BA1F8E68(v12);

  type metadata accessor for MedicalDetailsDataSource(0);
  swift_allocObject();
  v17 = a1;
  v18 = sub_1BA2AD710(v17);

  v19 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_medicalDetailsDataSource;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_medicalDetailsDataSource) = v18;
  type metadata accessor for FeaturesDataSource(0);
  swift_allocObject();
  v20 = v17;
  v21 = sub_1BA3B8C84(v20);
  v22 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_featuresDataSource;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_featuresDataSource) = v21;
  type metadata accessor for PrivacyDataSource(0);
  swift_allocObject();
  v23 = v20;
  v24 = sub_1BA07E1D8(v23);

  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_privacyDataSource) = v24;
  type metadata accessor for ExportDataSource(0);
  swift_allocObject();
  v25 = v23;
  v26 = sub_1BA14DE54(v25);
  v27 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_exportDataSource;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_exportDataSource) = v26;
  type metadata accessor for CloudSyncDataSource(0);
  swift_allocObject();
  v28 = v25;
  v29 = sub_1BA05B494(v28);
  v84 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_cloudSyncDataSource;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_cloudSyncDataSource) = v29;
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v30 = swift_allocObject();
  v31 = *(v3 + v16);
  v32 = *(v3 + v19);
  *(v30 + 16) = xmmword_1BA4B7510;
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  v98 = v30;
  v87 = v3;
  if (*(v3 + v22))
  {
    swift_retain_n();

    MEMORY[0x1BFAF1510](v33);
    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  else
  {
  }

  v34 = v87;

  MEMORY[0x1BFAF1510](v35);
  if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v36 = v98;
  v37 = type metadata accessor for MemorySharingParticipantDataSourceCache();
  inited = swift_initStaticObject();
  *(&v100 + 1) = v37;
  *&v101 = &off_1F38167E8;
  *&v99 = inited;
  type metadata accessor for SharingParticipantDataSource(0);
  v39 = swift_allocObject();
  v40 = __swift_mutable_project_boxed_opaque_existential_1(&v99, v37);
  v41 = MEMORY[0x1EEE9AC00](v40, v40);
  v43 = (&v80 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43, v41);
  v45 = *v43;
  v82 = v28;
  v46 = sub_1BA1A93C0(v82, v45, v39);
  __swift_destroy_boxed_opaque_existential_1(&v99);
  if (v46)
  {

    MEMORY[0x1BFAF1510](v47);
    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();

    v36 = v98;
  }

  if (*(v34 + v27))
  {
    v48 = swift_retain_n();
    MEMORY[0x1BFAF1510](v48);
    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();

    v36 = v98;
  }

  if (qword_1EBBE8490 != -1)
  {
    swift_once();
  }

  v49 = *algn_1EBBED628;
  v81 = qword_1EBBED620;
  v50 = qword_1EBBE8498;

  if (v50 != -1)
  {
    swift_once();
  }

  v83 = v36;
  v51 = qword_1EBBED630;
  v52 = *algn_1EBBED638;
  v53 = qword_1EBBE84A0;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = qword_1EBBED640;
  v55 = *algn_1EBBED648;
  v56 = qword_1EBBE8480;

  if (v56 != -1)
  {
    swift_once();
  }

  v58 = qword_1EBBED600;
  v57 = *algn_1EBBED608;
  v59 = qword_1EBBE8488;

  if (v59 != -1)
  {
    swift_once();
  }

  *&v92 = v81;
  *(&v92 + 1) = v49;
  *&v93 = v51;
  *(&v93 + 1) = v52;
  *&v94 = v54;
  *(&v94 + 1) = v55;
  *&v95 = v58;
  *(&v95 + 1) = v57;
  v96 = xmmword_1EBBED610;
  *&v97 = sub_1BA1A87A4;
  *(&v97 + 1) = 0;
  v99 = v92;
  v100 = v93;
  v103 = xmmword_1EBBED610;
  v104 = v97;
  v101 = v94;
  v102 = v95;
  v60 = v85;
  v61 = v86;
  sub_1BA06FE18(v86, v85);
  v62 = sub_1BA4A2888();
  v63 = *(v62 - 8);
  if ((*(v63 + 48))(v60, 1, v62) == 1)
  {

    sub_1BA06F9D0(v60);
    v89 = 0u;
    v90 = 0u;
    v91 = 0;
  }

  else
  {
    *(&v90 + 1) = v62;
    v91 = MEMORY[0x1E69A30F0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v89);
    (*(v63 + 32))(boxed_opaque_existential_1, v60, v62);
  }

  if (qword_1EBBE8470 != -1)
  {
    swift_once();
  }

  v65 = qword_1EBBED5E0;
  v66 = *algn_1EBBED5E8;
  v67 = qword_1EBBE8478;

  if (v67 != -1)
  {
    swift_once();
  }

  v68 = qword_1EBBED5F0;
  v69 = *algn_1EBBED5F8;
  v70 = objc_opt_self();

  v71 = [v70 secondarySystemGroupedBackgroundColor];
  type metadata accessor for EndSharingRelationshipDataSource(0);
  swift_allocObject();
  v72 = v82;
  sub_1BA0711AC(&v92, &v88);
  v73 = sub_1BA0700CC(v72, &v89, v65, v66, v68, v69, v71, &v99);
  v74 = v87;
  if (v73)
  {

    MEMORY[0x1BFAF1510](v75);
    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  if (*(v74 + v84))
  {
    v76 = swift_retain_n();
    MEMORY[0x1BFAF1510](v76);
    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  v77 = sub_1B9FE98D4();

  v78 = CompoundSectionedDataSource.init(_:)(v77);
  sub_1BA0710D0(&v92);
  sub_1BA06F9D0(v61);
  return v78;
}

void sub_1BA1AA238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id ProfileContactOptionsItem.__allocating_init(contact:emailOrPhoneNumber:contactOptions:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v11 = sub_1BA1AAA68(a1, a2, a3, a4, v10);

  return v11;
}

uint64_t ProfileContactOptionsItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_uniqueIdentifier);

  return v1;
}

double sub_1BA1AA340(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_reuseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_1BA1AA3AC()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_reuseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA1AA404(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_reuseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_1BA1AA4C4@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem____lazy_storage___cnCapabilitiesManager;
  swift_beginAccess();
  sub_1BA0110E8(v1 + v3, &v8);
  if (v9)
  {
    return sub_1B9F1134C(&v8, a1);
  }

  sub_1BA1AB0BC(&v8);
  if (HKIsUnitTesting())
  {
    v5 = &off_1F380D908;
    v6 = &type metadata for NoOpCNCapabilitiesManager;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E695D0F8]) init];
    v6 = sub_1BA1AB118();
    *a1 = v7;
    v5 = &protocol witness table for CNCapabilitiesManager;
  }

  a1[3] = v6;
  a1[4] = v5;
  sub_1B9F0A534(a1, &v8);
  swift_beginAccess();
  sub_1BA0111E8(&v8, v1 + v3);
  return swift_endAccess();
}

id ProfileContactOptionsItem.init(contact:emailOrPhoneNumber:contactOptions:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = sub_1BA1AAA68(a1, a2, a3, a4, a5);

  return v6;
}

id sub_1BA1AA5F0()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v0[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_reuseIdentifier];
  v21 = type metadata accessor for ProfileContactOptionsCell();
  sub_1BA1AB164(v8);
  *v7 = sub_1BA4A6808();
  v7[1] = v9;
  v10 = &v1[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem____lazy_storage___cnCapabilitiesManager];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = &v1[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_defaultICloudAccount];
  *v11 = 0;
  v11[1] = 0;
  v12 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_contact] = v12;
  *v11 = 0;
  v11[1] = 0;

  v1[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_isDisabled] = 1;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_contactOptions] = &unk_1F37FC980;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v21 = 0xD00000000000001ALL;
  v22 = 0x80000001BA4F1AF0;
  sub_1BA4A1788();
  v13 = sub_1BA4A1748();
  v15 = v14;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x1BFAF1350](v13, v15);

  v16 = v22;
  v17 = &v1[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_uniqueIdentifier];
  *v17 = v21;
  v17[1] = v16;
  v18 = type metadata accessor for ProfileContactOptionsItem();
  v20.receiver = v1;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, sel_init);
}

id ProfileContactOptionsItem.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProfileContactOptionsItem();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA1AA8EC()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_reuseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA1AA95C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_defaultICloudAccount);

  return v1;
}

uint64_t sub_1BA1AA998()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_uniqueIdentifier);

  return v1;
}

uint64_t sub_1BA1AA9D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

id sub_1BA1AAA68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = v5;
  v11 = &v6[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_reuseIdentifier];
  v28 = type metadata accessor for ProfileContactOptionsCell();
  sub_1BA1AB164(v12);
  *v11 = sub_1BA4A6808();
  v11[1] = v13;
  v14 = &v6[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem____lazy_storage___cnCapabilitiesManager];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v15 = &v6[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_defaultICloudAccount];
  *v15 = 0;
  v15[1] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_contact] = a1;
  *v15 = a2;
  v15[1] = a3;
  v6[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_isDisabled] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_contactOptions] = a4;
  v16 = *(a4 + 16);
  if (!v16)
  {
    v22 = a1;

    goto LABEL_20;
  }

  v26 = v6;
  v17 = a1;
  v25 = a3;

  v18 = 32;
  do
  {
    if (*(a4 + v18) > 1u)
    {
      if (*(a4 + v18) == 2)
      {
        if (qword_1EDC5E100 != -1)
        {
          goto LABEL_4;
        }
      }

      else if (qword_1EDC5E100 != -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (*(a4 + v18))
      {
        if (qword_1EDC5E100 == -1)
        {
          goto LABEL_5;
        }

LABEL_4:
        swift_once();
        goto LABEL_5;
      }

      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }
    }

LABEL_5:
    v19 = sub_1BA4A1318();
    v21 = v20;
    v28 = 0;
    v29 = 0xE000000000000000;

    MEMORY[0x1BFAF1350](v19, v21);

    ++v18;
    --v16;
  }

  while (v16);

  a3 = v25;
  v6 = v26;
LABEL_20:
  sub_1BA4A7DF8();

  v28 = 0xD00000000000001ALL;
  v29 = 0x80000001BA4F1AF0;
  MEMORY[0x1BFAF1350](a2, a3);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  MEMORY[0x1BFAF1350](0, 0xE000000000000000);

  v23 = &v6[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_uniqueIdentifier];
  *v23 = 0xD00000000000001ALL;
  v23[1] = 0x80000001BA4F1AF0;
  v27.receiver = v6;
  v27.super_class = type metadata accessor for ProfileContactOptionsItem();
  return objc_msgSendSuper2(&v27, sel_init);
}

unint64_t sub_1BA1AAEE4()
{
  result = qword_1EBBED6A0;
  if (!qword_1EBBED6A0)
  {
    type metadata accessor for ProfileContactOptionsItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED6A0);
  }

  return result;
}

void sub_1BA1AB000(uint64_t a1)
{
  if (!qword_1EBBEA290)
  {
    sub_1BA1AB058();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA290);
    }
  }
}

unint64_t sub_1BA1AB058()
{
  result = qword_1EBBED6D0;
  if (!qword_1EBBED6D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBED6D0);
  }

  return result;
}

uint64_t sub_1BA1AB0BC(uint64_t a1)
{
  sub_1BA1AB000(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA1AB118()
{
  result = qword_1EBBEA2A0;
  if (!qword_1EBBEA2A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBEA2A0);
  }

  return result;
}

unint64_t sub_1BA1AB164(__n128 a1)
{
  result = qword_1EBBED6E0;
  if (!qword_1EBBED6E0)
  {
    type metadata accessor for ProfileContactOptionsCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBED6E0);
  }

  return result;
}

void sub_1BA1AB1AC(void *a1, uint64_t a2)
{
  v3 = sub_1BA4A3EA8();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A15D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v13 = [v12 defaultProvider];
  v14 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
  v15 = [a1 digits];
  if (!v15)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v15 = sub_1BA4A6758();
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:2 value:v15];

  [v14 setHandle_];
  [v14 setShowUIPrompt_];
  if ([v14 isValid] && (v17 = objc_msgSend(v14, sel_URL)) != 0)
  {
    v18 = v17;
    sub_1BA4A1588();

    v19 = [objc_opt_self() defaultWorkspace];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1BA4A1548();
      [v20 hk:v21 asyncOpenURL:?];

      (*(v8 + 8))(v11, v7);
    }

    else
    {
      (*(v8 + 8))(v11, v7);
    }
  }

  else
  {
    sub_1BA4A3E28();
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      v26 = sub_1BA4A85D8();
      v28 = sub_1B9F0B82C(v26, v27, &v32);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1B9F07000, v22, v23, "[%s] Unable to start audio call because request is invalid.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    else
    {
    }

    (*(v30 + 8))(v6, v31);
  }
}

uint64_t AllFeedItemsListDataSourceProvider.__allocating_init(for:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1B9F25598(a1, v2 + 16);
  return v2;
}

uint64_t sub_1BA1AB614()
{
  sub_1B9F1DEA0(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5480;
  *(v0 + 32) = sub_1BA1AB668();
  *(v0 + 40) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  return v0;
}

char *sub_1BA1AB668()
{
  v1 = v0;
  sub_1BA4A27B8();
  v2 = MEMORY[0x1BFAED110]();
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v4 = sub_1BA4A6758();
  v5 = [v3 initWithKey:v4 ascending:0];

  sub_1B9F109F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5470;
  *(v6 + 32) = v5;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v7 = v5;
  v8 = sub_1BA4A6AE8();

  [v2 setSortDescriptors_];

  sub_1B9F0A534(v1 + 16, &v19);
  __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
  v9 = v2;
  v10 = sub_1BA4A1B68();
  v11 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v9 managedObjectContext:v10 sectionNameKeyPath:0 cacheName:0];

  __swift_destroy_boxed_opaque_existential_1(&v19);
  if (qword_1EDC6D410 != -1)
  {
    swift_once();
  }

  v23 = xmmword_1EDC6D458;
  v24 = *&qword_1EDC6D468;
  v25 = xmmword_1EDC6D478;
  v26 = xmmword_1EDC6D488;
  v19 = xmmword_1EDC6D418;
  v20 = *&qword_1EDC6D428;
  v21 = xmmword_1EDC6D438;
  v22 = xmmword_1EDC6D448;
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v18[4] = xmmword_1EDC6D458;
  v18[5] = *&qword_1EDC6D468;
  v18[6] = xmmword_1EDC6D478;
  v18[7] = xmmword_1EDC6D488;
  v18[0] = xmmword_1EDC6D418;
  v18[1] = *&qword_1EDC6D428;
  v18[2] = xmmword_1EDC6D438;
  v18[3] = xmmword_1EDC6D448;
  sub_1B9F1D9A4(&v19, &v17);
  v12 = sub_1B9F293A8(v18);
  v13 = objc_allocWithZone(type metadata accessor for ListFeedItemsDataSource(0));
  *&v13[qword_1EBBF0168] = 0;
  *&v13[qword_1EBC09850] = v12;
  v14 = v12;
  v15 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v11);

  return v15;
}

uint64_t AllFeedItemsListDataSourceProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1AB960()
{
  sub_1B9F1DEA0(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5480;
  *(v0 + 32) = sub_1BA1AB668();
  *(v0 + 40) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  return v0;
}

id sub_1BA1ABA60()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView____lazy_storage___separator;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView____lazy_storage___separator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView____lazy_storage___separator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69A44A8]) init];
    HKUIOnePixel();
    [v4 setSeparatorThickness_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() opaqueSeparatorColor];
    [v4 setColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void *sub_1BA1ABB3C()
{
  v0 = sub_1BA4A7888();
  v32 = *(v0 - 8);
  v33 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F6BF78(0, &qword_1EDC5F868, MEMORY[0x1E69DC2E8]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v30 - v5;
  sub_1B9F6BF78(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v30 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v30 - v21;
  v23 = sub_1BA4A79A8();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  sub_1B9F0ADF8(0, &qword_1EDC5E0A0, 0x1E69DC738);
  sub_1BA4A7968();
  v26 = sub_1BA4A79B8();
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 setContentHorizontalAlignment_];
  sub_1BA4A79C8();
  v27 = *(v24 + 48);
  if (v27(v22, 1, v23))
  {
    sub_1BA1ADDF4(v22, v18);
    sub_1BA4A79D8();
    sub_1BA1ADE74(v22);
  }

  else
  {
    sub_1BA4A4898();
    v28 = sub_1BA4A4888();
    (*(*(v28 - 8) + 56))(v6, 0, 1, v28);
    sub_1BA4A7928();
    sub_1BA4A79D8();
  }

  sub_1BA4A79C8();
  if (v27(v14, 1, v23))
  {
    sub_1BA1ADDF4(v14, v18);
    sub_1BA4A79D8();
    sub_1BA1ADE74(v14);
  }

  else
  {
    (*(v32 + 104))(v31, *MEMORY[0x1E69DC540], v33);
    sub_1BA4A78B8();
    sub_1BA4A79D8();
  }

  sub_1BA4A79C8();
  if (v27(v10, 1, v23))
  {
    sub_1BA1ADDF4(v10, v18);
    sub_1BA4A79D8();
    sub_1BA1ADE74(v10);
  }

  else
  {
    sub_1BA4A7878();
    sub_1BA4A79D8();
  }

  return v26;
}

uint64_t sub_1BA1ABFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1338();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v9 + 16);
  v49 = v15;
  v50 = v14;
  (v14)(v13, a1, v11);
  v16 = *MEMORY[0x1E69DDCF8];
  v17 = objc_opt_self();
  v18 = [v17 preferredFontDescriptorWithTextStyle:v16 compatibleWithTraitCollection:0];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
  }

  else
  {
    v46 = v17;
    v47 = v4;
    v48 = v3;
    v21 = v7;
    sub_1BA4A3DD8();
    v22 = v16;
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v45 = a1;
      v26 = v25;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54 = v44;
      *v26 = 136315906;
      v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v29 = sub_1B9F0B82C(v27, v28, &v54);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      v52 = 0;
      v53 = 1;
      sub_1B9F6BF78(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v30 = sub_1BA4A6808();
      v32 = sub_1B9F0B82C(v30, v31, &v54);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2080;
      LODWORD(v52) = 0;
      type metadata accessor for SymbolicTraits(0);
      v33 = sub_1BA4A6808();
      v35 = sub_1B9F0B82C(v33, v34, &v54);

      *(v26 + 24) = v35;
      *(v26 + 32) = 2112;
      v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v26 + 34) = v36;
      v37 = v43;
      *v43 = v36;
      _os_log_impl(&dword_1B9F07000, v23, v24, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v26, 0x2Au);
      sub_1B9F8C6C8(v37);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      v38 = v44;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      v39 = v26;
      a1 = v45;
      MEMORY[0x1BFAF43A0](v39, -1, -1);
    }

    (*(v47 + 8))(v21, v48);
    v19 = [v46 preferredFontDescriptorWithTextStyle_];
    v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
  }

  v40 = v20;

  v52 = v40;
  sub_1B9F4DAC8();
  sub_1BA4A1348();
  v41 = v49;
  (*(v9 + 8))(v13, v49);
  return v50(v51, a1, v41);
}

uint64_t sub_1BA1AC43C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_didTapActionButton);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B9F7B0CC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B9F0F1B8(v4, v5);
}

uint64_t sub_1BA1AC4DC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA1846E4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_didTapActionButton);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1B9F0F1B8(v3, v4);
  return sub_1B9F0E310(v8, v9);
}

uint64_t sub_1BA1AC5A4()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_didTapActionButton);
  swift_beginAccess();
  v2 = *v1;
  sub_1B9F0F1B8(*v1, v1[1]);
  return v2;
}

uint64_t sub_1BA1AC600(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_didTapActionButton);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1B9F0E310(v6, v7);
}

id MessageWithSeparatedActionTileView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *MessageWithSeparatedActionTileView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = *MEMORY[0x1E69DDD80];
  v17 = objc_opt_self();
  v18 = [v17 preferredFontDescriptorWithTextStyle:v16 compatibleWithTraitCollection:0];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v21 = v16;
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v57 = v23;
      v25 = v24;
      v56 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v62 = v58;
      *v25 = 136315906;
      v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v28 = sub_1B9F0B82C(v26, v27, &v62);
      v59 = v21;
      v29 = v28;

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v60 = 0;
      v61 = 1;
      sub_1B9F6BF78(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v30 = sub_1BA4A6808();
      v32 = sub_1B9F0B82C(v30, v31, &v62);

      *(v25 + 14) = v32;
      *(v25 + 22) = 2080;
      LODWORD(v60) = 0;
      type metadata accessor for SymbolicTraits(0);
      v33 = sub_1BA4A6808();
      v35 = sub_1B9F0B82C(v33, v34, &v62);
      v21 = v59;

      *(v25 + 24) = v35;
      *(v25 + 32) = 2112;
      v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v25 + 34) = v36;
      v37 = v56;
      *v56 = v36;
      _os_log_impl(&dword_1B9F07000, v22, v57, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v25, 0x2Au);
      sub_1B9F8C6C8(v37);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      v38 = v58;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v39 = [v17 preferredFontDescriptorWithTextStyle_];
    v20 = [objc_opt_self() fontWithDescriptor:v39 size:0.0];
  }

  v40 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_bodyLabel;
  [v15 setFont_];

  [v15 setAdjustsFontForContentSizeCategory_];
  v41 = objc_opt_self();
  v42 = [v41 secondaryLabelColor];
  [v15 setTextColor_];

  [v15 setNumberOfLines_];
  [v15 setLineBreakMode_];
  [v15 setTextAlignment_];
  *&v5[v40] = v15;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView____lazy_storage___separator] = 0;
  v43 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_actionButton;
  *&v5[v43] = sub_1BA1ABB3C();
  v44 = &v5[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_didTapActionButton];
  v45 = type metadata accessor for MessageWithSeparatedActionTileView();
  *v44 = 0;
  *(v44 + 1) = 0;
  v63.receiver = v5;
  v63.super_class = v45;
  v46 = objc_msgSendSuper2(&v63, sel_initWithFrame_, a1, a2, a3, a4);
  v47 = [v41 tertiarySystemFillColor];
  [v46 setBackgroundColor_];

  v48 = *MEMORY[0x1E69796E8];
  v49 = [v46 layer];
  [v49 setCornerCurve_];

  v50 = [v46 layer];
  [v50 setCornerRadius_];

  v51 = [v46 layer];
  [v51 setMaskedCorners_];

  [v46 setClipsToBounds_];
  [v46 addSubview_];
  v52 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_actionButton;
  [v46 addSubview_];
  v53 = sub_1BA1ABA60();
  [v46 addSubview_];

  [*&v46[v52] addTarget:v46 action:sel_didTapAction_ forControlEvents:64];
  sub_1BA1ACDB4();

  return v46;
}

id sub_1BA1ACDB4()
{
  v46 = objc_opt_self();
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B79D0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_bodyLabel];
  v3 = [v2 leadingAnchor];
  v4 = [v0 safeAreaLayoutGuide];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:16.0];
  *(v1 + 32) = v6;
  v7 = [v0 &selRef_secondaryLabelColor + 2];
  v8 = [v7 trailingAnchor];

  v9 = [v2 &selRef_cloudSyncObserverSyncCompleted_ + 4];
  v10 = [v8 &selRef:v9 objectAtIndex:16.0 + 6];

  *(v1 + 40) = v10;
  v11 = [v2 topAnchor];
  v12 = [v0 &selRef_secondaryLabelColor + 2];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v1 + 48) = v14;
  v15 = sub_1BA1ABA60();
  v16 = [v15 leadingAnchor];

  v17 = [v2 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v1 + 56) = v18;
  v19 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView____lazy_storage___separator;
  v20 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView____lazy_storage___separator] trailingAnchor];
  v21 = [v0 &selRef_secondaryLabelColor + 2];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v1 + 64) = v23;
  v24 = [*&v0[v19] heightAnchor];
  [*&v0[v19] separatorThickness];
  v25 = [v24 constraintEqualToConstant_];

  *(v1 + 72) = v25;
  v26 = [*&v0[v19] topAnchor];
  v27 = [v2 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:11.0];

  *(v1 + 80) = v28;
  v29 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_actionButton];
  v30 = [v29 leadingAnchor];
  v31 = [v2 leadingAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v1 + 88) = v32;
  v33 = [v29 trailingAnchor];
  v34 = [v2 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v1 + 96) = v35;
  v36 = [v29 topAnchor];
  v37 = [*&v0[v19] bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:11.0];

  *(v1 + 104) = v38;
  v39 = [v0 safeAreaLayoutGuide];
  v40 = [v39 bottomAnchor];

  v41 = [v29 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:11.0];

  *(v1 + 112) = v42;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v43 = sub_1BA4A6AE8();

  [v46 activateConstraints_];

  LODWORD(v44) = 1148846080;

  return [v29 setContentCompressionResistancePriority:0 forAxis:v44];
}

uint64_t sub_1BA1AD35C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_didTapActionButton;
  swift_beginAccess();
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 8);

    v9(v11);
    return sub_1B9F0E310(v9, v10);
  }

  else
  {
    sub_1BA4A3DD8();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[0] = v16;
      *v15 = 136446210;
      v21[4] = ObjectType;
      swift_getMetatypeMetadata();
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1B9F07000, v13, v14, "[%{public}s] didTapActionButton is not set and needs to be set to provide an action for the MessageWithActionTileView link", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

void sub_1BA1AD5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_bodyLabel);
  v8 = sub_1BA4A6758();
  [v7 setText_];

  v9 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_actionButton);
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B9F7B15C;
  *(v12 + 24) = v11;
  v15[4] = sub_1B9F7B0CC;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B9F7B0FC;
  v15[3] = &block_descriptor_44;
  v13 = _Block_copy(v15);
  v14 = v9;

  [v10 performWithoutAnimation_];
  _Block_release(v13);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }
}

id MessageWithSeparatedActionTileView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MessageWithSeparatedActionTileView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA1AD92C()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = *MEMORY[0x1E69DDD80];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:0];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_opt_self() fontWithDescriptor:v10 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v13 = v8;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v38 = v15;
      v17 = v16;
      v37 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43 = v39;
      *v17 = 136315906;
      v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v20 = sub_1B9F0B82C(v18, v19, &v43);
      v40 = v13;
      v21 = v20;

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v41 = 0;
      v42 = 1;
      sub_1B9F6BF78(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v43);

      *(v17 + 14) = v24;
      *(v17 + 22) = 2080;
      LODWORD(v41) = 0;
      type metadata accessor for SymbolicTraits(0);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, &v43);
      v13 = v40;

      *(v17 + 24) = v27;
      *(v17 + 32) = 2112;
      v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v17 + 34) = v28;
      v29 = v37;
      *v37 = v28;
      _os_log_impl(&dword_1B9F07000, v14, v38, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v17, 0x2Au);
      sub_1B9F8C6C8(v29);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      v30 = v39;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v31 = [v9 preferredFontDescriptorWithTextStyle_];
    v12 = [objc_opt_self() fontWithDescriptor:v31 size:0.0];
  }

  v32 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_bodyLabel;
  [v7 setFont_];

  [v7 setAdjustsFontForContentSizeCategory_];
  v33 = [objc_opt_self() secondaryLabelColor];
  [v7 setTextColor_];

  [v7 setNumberOfLines_];
  [v7 setLineBreakMode_];
  [v7 setTextAlignment_];
  *(v1 + v32) = v7;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView____lazy_storage___separator) = 0;
  v34 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_actionButton;
  *(v1 + v34) = sub_1BA1ABB3C();
  v35 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithSeparatedActionTileView_didTapActionButton);
  *v35 = 0;
  v35[1] = 0;
  sub_1BA4A8018();
  __break(1u);
}