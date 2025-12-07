void sub_21DA99A3C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 24);
  a3(a1, a2);
  v9 = [*(v8 + 16) saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v10 = sub_21DBFB12C();
  v12[4] = a4;
  v12[5] = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21D11E5E4;
  v12[3] = a5;
  v11 = _Block_copy(v12);
  [v9 saveWithQueue:v10 completion:v11];
  _Block_release(v11);
}

uint64_t TTREditSectionsSmartListEditor.fetchSections(_:)(uint64_t a1)
{
  v2 = sub_21DBF719C();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF6C5C();
  v20 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE637A0, &unk_21DC2FFE0);
  v19 = *(v8 - 8);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v18 - v10;
  v12 = [*(*(v1 + 24) + 16) saveRequest];
  v13 = [v12 store];

  swift_beginAccess();
  v14 = *(v1 + 16);
  v15 = v23;
  sub_21DBF6CBC();

  if (!v15)
  {
    v16 = sub_21DBF76DC();
    MEMORY[0x223D3F400](v16);
    (*(v20 + 8))(v7, v5);
    v1 = sub_21DBF718C();
    (*(v21 + 8))(v4, v22);
    (*(v19 + 8))(v11, v8);
  }

  return v1;
}

uint64_t TTREditSectionsSmartListEditor.sectionForUserAction(with:)(void *a1)
{

  return sub_21DA99E7C(a1, &selRef_fetchSmartListSectionsWithObjectIDs_error_, &qword_27CE584A8, 0x277D44818, sub_21D1AA2B8);
}

uint64_t sub_21DA99E7C(void *a1, SEL *a2, unint64_t *a3, void *a4, uint64_t (*a5)(id, uint64_t))
{
  v24[1] = *MEMORY[0x277D85DE8];
  v11 = [*(*(v5 + 24) + 16) saveRequest];
  v12 = [v11 store];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21DC09CF0;
  *(v13 + 32) = a1;
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v14 = a1;
  v15 = sub_21DBFA5DC();

  v24[0] = 0;
  v16 = [v12 *a2];

  v17 = v24[0];
  if (v16)
  {
    sub_21D0D8CF0(0, a3, a4);
    sub_21D183A0C();
    v18 = sub_21DBF9E6C();
    v19 = v17;

    v20 = a5(v14, v18);

    result = v20;
    if (v20)
    {
      return result;
    }
  }

  else
  {
    v22 = v24[0];
    v23 = sub_21DBF52DC();

    swift_willThrow();
  }

  return 0;
}

uint64_t _s15RemindersUICore25TTREditSectionsListEditorCfd_0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  return v0;
}

uint64_t _s15RemindersUICore25TTREditSectionsListEditorCfD_0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return swift_deallocClassInstance();
}

id sub_21DA9A0F4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = [*(v1 + 16) objectID];

  return v2;
}

void sub_21DA9A3B4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t TTRICollectionViewDragAndDropActivityTracker.changePublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
  sub_21D0D0F1C(&qword_280D0C450, &unk_27CE5C9E0, qword_21DC0ECD0, MEMORY[0x277CBCE20]);
  return sub_21DBF920C();
}

void *TTRICollectionViewDragAndDropActivityTracker.__allocating_init()()
{
  v0 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v0);
  v1 = swift_allocObject();
  v1[2] = [objc_opt_self() hashTableWithOptions_];
  v1[3] = [objc_opt_self() hashTableWithOptions_];
  v1[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
  swift_allocObject();
  v1[5] = sub_21DBF907C();
  sub_21D0CE468();
  v2 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v3 = swift_allocObject();
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v4 = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90, &unk_21DC0F180, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v3[5] = sub_21DBF5EEC();
  v3[6] = v4;
  v3[4] = v2;
  v1[6] = v3;
  swift_beginAccess();
  v3[3] = &protocol witness table for TTRICollectionViewDragAndDropActivityTracker;
  swift_unknownObjectWeakAssign();
  return v1;
}

double sub_21DA9A72C(void *a1, char *a2, uint64_t a3, void (*a4)(void, void, void, void), ...)
{
  v8 = v4;
  if (qword_27CE57078 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE65A50);
  swift_unknownObjectRetain();
  v11 = sub_21DBF84AC();
  v12 = sub_21DBFAEAC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 136315138;
    v14 = [a1 description];
    format = a2;
    v15 = sub_21DBFA16C();
    v16 = a4;
    v18 = v17;

    v19 = sub_21D0CDFB4(v15, v18, &v24);
    a4 = v16;

    *(v13 + 4) = v19;
    _os_log_impl(&dword_21D0C9000, v11, v12, format, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x223D46520](v23, -1, -1);
    MEMORY[0x223D46520](v13, -1, -1);
  }

  swift_unknownObjectRetain();

  a4(v20, v8, a1, a3);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_21DA9A960()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65A50);
  v1 = __swift_project_value_buffer(v0, qword_27CE65A50);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *TTRICollectionViewDragAndDropActivityTracker.init()()
{
  v1 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v1);
  v0[2] = [objc_opt_self() hashTableWithOptions_];
  v0[3] = [objc_opt_self() hashTableWithOptions_];
  v0[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
  swift_allocObject();
  v0[5] = sub_21DBF907C();
  sub_21D0CE468();
  v2 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v3 = swift_allocObject();
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v4 = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90, &unk_21DC0F180, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v3[5] = sub_21DBF5EEC();
  v3[6] = v4;
  v3[4] = v2;
  v0[6] = v3;
  swift_beginAccess();
  v3[3] = &protocol witness table for TTRICollectionViewDragAndDropActivityTracker;
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t sub_21DA9AC44(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
  v2 = swift_allocObject();
  v3 = vmovn_s64(vceqzq_s64(vandq_s8(vdupq_n_s64(a1), xmmword_21DC3A4F0)));
  v4 = vdup_lane_s32(v3, 1);
  v5.i64[0] = v4.i32[0];
  v5.i64[1] = v4.i32[1];
  *(v2 + 16) = xmmword_21DC08D20;
  *(v2 + 32) = vbicq_s8(xmmword_21DC3A500, v5);
  v6 = vdup_lane_s32(v3, 0);
  v5.i64[0] = v6.i32[0];
  v5.i64[1] = v6.i32[1];
  *(v2 + 48) = vbicq_s8(xmmword_21DC3A510, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90, &unk_21DC09D00);
  sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90, &unk_21DC09D00, MEMORY[0x277D83970]);
  sub_21DBFA41C();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
  v7 = sub_21DBFA07C();
  v9 = v8;

  MEMORY[0x223D42AA0](v7, v9);

  MEMORY[0x223D42AA0](93, 0xE100000000000000);
  return 91;
}

uint64_t TTRICollectionViewDragAndDropActivityTracker.deinit()
{

  return v0;
}

uint64_t TTRICollectionViewDragAndDropActivityTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21DA9AEF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
  sub_21D0D0F1C(&qword_280D0C450, &unk_27CE5C9E0, qword_21DC0ECD0, MEMORY[0x277CBCE20]);
  return sub_21DBF920C();
}

void sub_21DA9AF80(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *(a1 + 32);
  [*(a2 + 16) *a4];
  v6 = [*(a1 + 16) count];
  v7 = [*(a1 + 24) count];
  v8 = v6 > 0;
  v9 = 2;
  if (v6 > 0)
  {
    v9 = 3;
  }

  if (v7 >= 1)
  {
    v8 = v9;
  }

  *(a1 + 32) = v8;
  if (v8 != v5)
  {
    if (qword_27CE57078 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE65A50);

    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAE9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315394;
      v15 = sub_21DA9AC44(v5);
      v17 = sub_21D0CDFB4(v15, v16, &v22);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = sub_21DA9AC44(*(a1 + 32));
      v20 = sub_21D0CDFB4(v18, v19, &v22);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_21D0C9000, v11, v12, "TTRICollectionViewDragAndDropActivityTracker: state change {from: %s, to: %s}", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    v21._object = 0x800000021DC75FB0;
    v21._countAndFlagsBits = 0xD000000000000014;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v21);
  }
}

void sub_21DA9B18C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *(a1 + 32);
  [*(a2 + 24) *a4];
  v6 = [*(a1 + 16) count];
  v7 = [*(a1 + 24) count];
  v8 = v6 > 0;
  v9 = 2;
  if (v6 > 0)
  {
    v9 = 3;
  }

  if (v7 >= 1)
  {
    v8 = v9;
  }

  *(a1 + 32) = v8;
  if (v8 != v5)
  {
    if (qword_27CE57078 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE65A50);

    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAE9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315394;
      v15 = sub_21DA9AC44(v5);
      v17 = sub_21D0CDFB4(v15, v16, &v22);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = sub_21DA9AC44(*(a1 + 32));
      v20 = sub_21D0CDFB4(v18, v19, &v22);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_21D0C9000, v11, v12, "TTRICollectionViewDragAndDropActivityTracker: state change {from: %s, to: %s}", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    v21._object = 0x800000021DC75FB0;
    v21._countAndFlagsBits = 0xD000000000000014;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v21);
  }
}

unint64_t sub_21DA9B414()
{
  result = qword_27CE65A68;
  if (!qword_27CE65A68)
  {
    result = swift_getWitnessTable(byte_21DC3A640, &type metadata for TTRICollectionViewDragAndDropActivityTracker.ActiveStates, v0, v1);
    atomic_store(result, &qword_27CE65A68);
  }

  return result;
}

unint64_t sub_21DA9B46C()
{
  result = qword_27CE65A70;
  if (!qword_27CE65A70)
  {
    result = swift_getWitnessTable(byte_21DC3A610, &type metadata for TTRICollectionViewDragAndDropActivityTracker.ActiveStates, v0, v1);
    atomic_store(result, &qword_27CE65A70);
  }

  return result;
}

unint64_t sub_21DA9B4C4()
{
  result = qword_27CE65A78;
  if (!qword_27CE65A78)
  {
    result = swift_getWitnessTable(a9, &type metadata for TTRICollectionViewDragAndDropActivityTracker.ActiveStates, v0, v1);
    atomic_store(result, &qword_27CE65A78);
  }

  return result;
}

unint64_t sub_21DA9B51C()
{
  result = qword_27CE65A80;
  if (!qword_27CE65A80)
  {
    result = swift_getWitnessTable(byte_21DC3A6A0, &type metadata for TTRICollectionViewDragAndDropActivityTracker.ActiveStates, v0, v1);
    atomic_store(result, &qword_27CE65A80);
  }

  return result;
}

id sub_21DA9B5A4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_21DA9B5E8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void sub_21DA9B680(char *a1@<X8>)
{
  v10[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v3 = [objc_allocWithZone(MEMORY[0x277D448E0]) initWithStore_];
  v10[0] = 0;
  v4 = [v3 fetchUncompletedRemindersCountWithError_];
  if (v4)
  {
    v5 = v4;
    v6 = v10[0];
    v7 = [v5 longLongValue];

    if (v7 <= 5)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    *a1 = v8;
  }

  else
  {
    v9 = v10[0];
    sub_21DBF52DC();

    swift_willThrow();
  }
}

void sub_21DA9B7A4(char *a1@<X8>)
{
  v10[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v3 = [objc_allocWithZone(MEMORY[0x277D448E0]) initWithStore_];
  v10[0] = 0;
  v4 = [v3 fetchListsCountWithError_];
  if (v4)
  {
    v5 = v4;
    v6 = v10[0];
    v7 = [v5 longLongValue];

    if (v7 <= 3)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    *a1 = v8;
  }

  else
  {
    v9 = v10[0];
    sub_21DBF52DC();

    swift_willThrow();
  }
}

uint64_t TTRTipKitDataModelSourceBase.__allocating_init(store:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_21DA9B8FC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

uint64_t TTRTipKitDataModelSourceBase.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_21DA9B98C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t TTRTipKitDataModelSourceFetchError.hashValue.getter()
{
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](0);
  return sub_21DBFC82C();
}

uint64_t TTRTipKitDataModelSourceContextKeyCondition.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21DA9BB68()
{
  result = qword_27CE65A98;
  if (!qword_27CE65A98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTipKitDataModelSourceFetchError, &type metadata for TTRTipKitDataModelSourceFetchError, v0, v1);
    atomic_store(result, &qword_27CE65A98);
  }

  return result;
}

unint64_t sub_21DA9BBC0()
{
  result = qword_27CE65AA0;
  if (!qword_27CE65AA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTipKitDataModelSourceContextKeyCondition, &type metadata for TTRTipKitDataModelSourceContextKeyCondition, v0, v1);
    atomic_store(result, &qword_27CE65AA0);
  }

  return result;
}

void UITableViewCell.setSeparatorInsetType(_:)(id *a1)
{
  v2 = *a1;
  v3 = 0.0;
  if (!*a1)
  {
    v4 = 1.79769313e308;
    v5 = 0.0;
    v6 = 0.0;
LABEL_19:
    [v1 setSeparatorInset_];
    return;
  }

  if (v2 == 1)
  {
    if (qword_280D17218 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_280D17220 == 1)
    {
      v4 = *MEMORY[0x277D76F30];
      v5 = 0.0;
      v6 = *MEMORY[0x277D76F30];
      v3 = 0.0;
    }

    else
    {
      v3 = *MEMORY[0x277D768C8];
      v4 = *(MEMORY[0x277D768C8] + 8);
      v5 = *(MEMORY[0x277D768C8] + 16);
      v6 = *(MEMORY[0x277D768C8] + 24);
    }

    goto LABEL_19;
  }

  [*a1 bounds];
  [v1 convertRect:v2 fromCoordinateSpace:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v2 effectiveAlignmentRectInsets];
  v17 = UIEdgeInsetsInsetRect(v8, v10, v12, v14, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v1 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [v1 effectiveUserInterfaceLayoutDirection];
  v42.origin.x = v17;
  v42.origin.y = v19;
  v42.size.width = v21;
  v42.size.height = v23;
  CGRectGetMinY(v42);
  v43.origin.x = v25;
  v43.origin.y = v27;
  v43.size.width = v29;
  v43.size.height = v31;
  CGRectGetMinY(v43);
  v44.origin.x = v25;
  v44.origin.y = v27;
  v44.size.width = v29;
  v44.size.height = v31;
  CGRectGetMaxY(v44);
  v45.origin.x = v17;
  v45.origin.y = v19;
  v45.size.width = v21;
  v45.size.height = v23;
  CGRectGetMaxY(v45);
  v46.origin.x = v17;
  v46.origin.y = v19;
  v46.size.width = v21;
  v46.size.height = v23;
  MinX = CGRectGetMinX(v46);
  v47.origin.x = v25;
  v47.origin.y = v27;
  v47.size.width = v29;
  v47.size.height = v31;
  v40 = CGRectGetMinX(v47);
  v48.origin.x = v25;
  v48.origin.y = v27;
  v48.size.width = v29;
  v48.size.height = v31;
  MaxX = CGRectGetMaxX(v48);
  v49.origin.x = v17;
  v49.origin.y = v19;
  v49.size.width = v21;
  v49.size.height = v23;
  v34 = CGRectGetMaxX(v49);
  if (!v32)
  {
    v35 = MinX - v40;
LABEL_13:
    if (qword_280D17218 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = 0.0;
    if (byte_280D17220)
    {
      v6 = *MEMORY[0x277D76F30];
    }

    else
    {
      v6 = 0.0;
    }

    v5 = 0.0;
    v4 = v35;
    goto LABEL_19;
  }

  if (v32 == 1)
  {
    v35 = MaxX - v34;
    goto LABEL_13;
  }

  if (qword_27CE56650 != -1)
  {
    swift_once();
  }

  v36 = sub_21DBF84BC();
  __swift_project_value_buffer(v36, qword_27CE5B1E8);
  v37 = MEMORY[0x277D84F90];
  v38 = sub_21D17716C(MEMORY[0x277D84F90]);
  v39 = sub_21D17716C(v37);
  sub_21DAEAB00("unknown layout direction", 24, 2, v38, v39);
  __break(1u);
}

uint64_t sub_21DA9C190()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65AA8);
  v1 = __swift_project_value_buffer(v0, qword_27CE65AA8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t UITableViewCell.defaultBackgroundConfiguration()()
{
  v1 = [v0 _tableView];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 style];

  if ((v3 - 1) >= 2)
  {
    if (v3)
    {
      if (qword_27CE57080 != -1)
      {
        swift_once();
      }

      v4 = sub_21DBF84BC();
      __swift_project_value_buffer(v4, qword_27CE65AA8);
      v5 = MEMORY[0x277D84F90];
      v6 = sub_21D17716C(MEMORY[0x277D84F90]);
      v7 = sub_21D17716C(v5);
      sub_21DAEAB00("unknown UITableViewStyle", 24, 2, v6, v7);
      __break(1u);
      return MEMORY[0x2821DD148]();
    }

LABEL_7:

    return MEMORY[0x2821DD148]();
  }

  return MEMORY[0x2821DD160]();
}

id UIAlertController.init(actionSheetOrAlertWithTitle:message:popoverAnchor:canCancel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = *(a5 + 16);
  v25[0] = *a5;
  v25[1] = v8;
  v26[0] = *(a5 + 32);
  *(v26 + 9) = *(a5 + 41);
  if ((a6 & 1) == 0)
  {
    sub_21DA9C900(v25);
    goto LABEL_8;
  }

  if ((BYTE8(v26[0]) & 0xFE) == 0xFELL)
  {
    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if (v11 == 1)
    {
LABEL_8:
      if (a2)
      {
        v14 = sub_21DBFA12C();

        if (a4)
        {
LABEL_10:
          v15 = sub_21DBFA12C();

LABEL_13:
          v16 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

          return v16;
        }
      }

      else
      {
        v14 = 0;
        if (a4)
        {
          goto LABEL_10;
        }
      }

      v15 = 0;
      goto LABEL_13;
    }
  }

  if (!a2)
  {
    v12 = 0;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v12 = sub_21DBFA12C();

  if (!a4)
  {
    goto LABEL_15;
  }

LABEL_6:
  v13 = sub_21DBFA12C();

LABEL_16:
  v18 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v12 message:v13 preferredStyle:0];

  if ((BYTE8(v26[0]) & 0xFE) != 0xFELL)
  {
    v19 = *(a5 + 16);
    v20[0] = *a5;
    v20[1] = v19;
    v21 = *(a5 + 32);
    v22 = *(&v26[0] + 1);
    v23 = *(a5 + 48);
    v24 = *(a5 + 56);
    v18 = v18;
    UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)(v20);
    sub_21DA9C900(v25);
  }

  return v18;
}

id _sSo17UIAlertControllerC15RemindersUICoreE36notesFieldCharacterLimitReachedAlertABvgZ_0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21DBF516C();
  v0 = sub_21DBFA12C();

  v1 = sub_21DBFA12C();

  v2 = [objc_opt_self() alertControllerWithTitle:v0 message:v1 preferredStyle:{1, 0x800000021DC4D450}];

  sub_21DBF516C();
  v3 = sub_21DBFA12C();

  v4 = [objc_opt_self() actionWithTitle:v3 style:0 handler:{0, 0x800000021DC4BBD0}];

  [v2 addAction_];
  return v2;
}

uint64_t sub_21DA9C900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D558, &qword_21DC1CB50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Strideable<>.clamped(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFC6BC();
  sub_21DBFA0FC();
  sub_21DBFC6DC();
  return (*(v3 + 8))(v5, a2);
}

uint64_t Comparable.clamped(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFC6BC();
  sub_21DBFA0FC();
  sub_21DBFC6DC();
  return (*(v4 + 8))(v6, a2);
}

uint64_t Int.clamped(to:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result == a2)
  {
    return 0;
  }

  v3 = a2 - 1;
  if (!__OFSUB__(a2, 1))
  {
    if (result <= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = result;
    }

    if (v3 >= v4)
    {
      return v4;
    }

    return v3;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall TTRListBadgeView.enableCursorInteraction()()
{
  v1 = [v0 interactions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65B80, &qword_21DC3AA78);
  v2 = sub_21DBFA5EC();

  if (v2 >> 62)
  {
LABEL_17:
    v3 = sub_21DBFBD7C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_18:

    v6 = [objc_allocWithZone(MEMORY[0x277D75870]) initWithDelegate_];
    [v0 addInteraction_];

    return;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = 0;
  while ((v2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223D44740](v4, v2);
    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
    ++v4;
    if (v5 == v3)
    {
      goto LABEL_18;
    }
  }

  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  v5 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:

  swift_unknownObjectRelease();
}

UIPointerRegion_optional __swiftcall TTRListBadgeView.pointerInteraction(_:regionFor:defaultRegion:)(UIPointerInteraction _, UIPointerRegionRequest regionFor, UIPointerRegion defaultRegion)
{
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v3 hitTestInsets];
  v15 = UIEdgeInsetsInsetRect(v6, v8, v10, v12, v13, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(objc_class *)regionFor.super.isa location];
  v27.x = v22;
  v27.y = v23;
  v28.origin.x = v15;
  v28.origin.y = v17;
  v28.size.width = v19;
  v28.size.height = v21;
  if (CGRectContainsPoint(v28, v27))
  {
    sub_21D0D8CF0(0, &qword_27CE65B88, 0x277D75880);
    v25 = sub_21DBFAFEC();
  }

  else
  {
    v25 = 0;
  }

  result.value.super.isa = v25;
  result.is_nil = v24;
  return result;
}

double sub_21DA9D064()
{
  result = 8.0;
  xmmword_27CE65AC0 = xmmword_21DC3AA40;
  *algn_27CE65AD0 = xmmword_21DC3AA50;
  qword_27CE65AE0 = 0x4026000000000000;
  byte_27CE65AE8 = 1;
  return result;
}

double static TTRListBadgeView.Shape.customSmartListInListRowView.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27CE57088 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CE65AE0;
  v2 = byte_27CE65AE8;
  result = *&xmmword_27CE65AC0;
  v4 = *algn_27CE65AD0;
  *a1 = xmmword_27CE65AC0;
  *(a1 + 16) = v4;
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  return result;
}

double sub_21DA9D10C()
{
  result = 8.0;
  __asm { FMOV            V1.2D, #24.0 }

  xmmword_27CE65AF0 = _Q1;
  unk_27CE65B00 = xmmword_21DC3AA60;
  qword_27CE65B10 = 0x4032000000000000;
  byte_27CE65B18 = 1;
  return result;
}

double static TTRListBadgeView.Shape.customSmartListInListDetailView.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27CE57090 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CE65B10;
  v2 = byte_27CE65B18;
  result = *&xmmword_27CE65AF0;
  v4 = unk_27CE65B00;
  *a1 = xmmword_27CE65AF0;
  *(a1 + 16) = v4;
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  return result;
}

uint64_t _s15RemindersUICore16TTRListBadgeViewC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0jG0C_So0J6RegionCtF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65BF0, &qword_21DC310E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_21DBF862C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = (&v17 - v11);
  v13 = [v1 layer];
  [v1 frame];
  [v13 setCornerRadius_];

  *v12 = [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView_];
  (*(v6 + 104))(v12, *MEMORY[0x277D74B00], v5);
  sub_21D0D8CF0(0, &qword_27CE63C18, 0x277D75890);
  (*(v6 + 16))(v8, v12, v5);
  v14 = sub_21DBF851C();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = sub_21DBFAF6C();
  (*(v6 + 8))(v12, v5);
  return v15;
}

void TTRIHashtagButton.isExcluded.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    [v1 setNeedsUpdateConfiguration];
  }
}

id TTRIHashtagButton.currentVisiblePath.getter(__n128 a1)
{
  v2 = sub_21DBF88CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  sub_21DBFB97C();
  v9 = sub_21DBFB95C();
  if ((*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    sub_21D0CF7E0(v8, &unk_27CE5F2F0, qword_21DC0FEA0);
    return 0;
  }

  else
  {
    sub_21DBFB7AC();
    sub_21DBF87FC();
    v12 = v11;
    (*(v3 + 8))(v5, v2);
    sub_21D0CF7E0(v8, &unk_27CE5F2F0, qword_21DC0FEA0);
    [v1 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v1 alignmentRectInsets];
    v23 = UIEdgeInsetsInsetRect(v14, v16, v18, v20, v21, v22);
    return [objc_opt_self() bezierPathWithRoundedRect:v23 cornerRadius:{v24, v25, v26, v12}];
  }
}

double TTRIHashtagButton.focusDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*TTRIHashtagButton.focusDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

uint64_t TTRIHashtagButton.isExcluded.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21DA9D880(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  v5 = v3[v4];
  v3[v4] = v2;
  if (v2 != v5)
  {
    [v3 setNeedsUpdateConfiguration];
  }
}

void (*TTRIHashtagButton.isExcluded.modify(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21DA9D984;
}

void sub_21DA9D984(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setNeedsUpdateConfiguration];
  }

  free(v1);
}

id sub_21DA9D9E0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isAddTagButton] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setTtrFocusGroupIdentifier_];
  [v10 setFocusEffect_];

  return v10;
}

id sub_21DA9DAF8(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isAddTagButton] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [v6 setTtrFocusGroupIdentifier_];
    [v6 setFocusEffect_];
  }

  return v5;
}

uint64_t TTRIHashtagButton.canBecomeFocused.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 8))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

Swift::Void __swiftcall TTRIHashtagButton.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  v5 = [(objc_class *)in.super.isa nextFocusedView];
  if (v5)
  {
    v6 = v5;
    sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
    v7 = v2;
    v8 = sub_21DBFB63C();

    if (v8)
    {
      v9 = &v7[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        (*(v10 + 16))(v7, ObjectType, v10);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_21DA9DEF0()
{
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v0 = sub_21D900614(8);
  v1 = [objc_opt_self() configurationWithFont:v0 scale:-1];

  v2 = v1;
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  qword_27CE65BF8 = v4;
}

id TTRIHashtagButton.accessibilityLabel.getter()
{
  v1 = sub_21DBF4CAC();
  v2 = *(v1 - 8);
  *&v4 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isAddTagButton])
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v37 = 0x800000021DC76090;
    return sub_21DBF516C();
  }

  v38[0] = v3;
  result = [v0 titleLabel];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = [result text];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_21DBFA16C();
  v12 = v11;

  sub_21DBFA23C();
  v13 = v10;
  v14 = v12;
  LOBYTE(v10) = sub_21DBFA39C();

  if ((v10 & 1) == 0)
  {
    return v13;
  }

  v15 = [objc_opt_self() currentRequest];
  if (!v15)
  {
    return v13;
  }

  v16 = v15;
  v17 = [v15 technology];

  v18 = sub_21DBFA16C();
  v20 = v19;
  if (v18 != sub_21DBFA16C() || v20 != v21)
  {
    v22 = sub_21DBFC64C();

    if (v22)
    {
      goto LABEL_15;
    }

    return v13;
  }

LABEL_15:
  if (qword_27CE57550 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21DC08D00;
  v24 = sub_21DBF4C1C();
  MEMORY[0x28223BE20](v24);
  v37 = v6;
  v25 = sub_21D3F7414(sub_21D24B3BC, &v38[-4], v13, v14);
  if (v26)
  {

    v27 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    v29 = sub_21D3F7BA8(v25, v13, v14);
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v27 = MEMORY[0x223D429B0](v29, v31, v33, v35);
    v28 = v36;
  }

  (*(v2 + 8))(v6, v38[0]);
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_21D17A884();
  *(v23 + 32) = v27;
  *(v23 + 40) = v28;
  return sub_21DBFA17C();
}

uint64_t (*TTRIHashtagButton.accessibilityLabel.modify(id *a1))(uint64_t a1)
{
  *a1 = TTRIHashtagButton.accessibilityLabel.getter();
  a1[1] = v2;
  return destroy for TTRRemindersListViewModel.ListNameData;
}

uint64_t TTRIHashtagButton.accessibilityValue.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  v2 = 0;
  if (*(v0 + v1) == 1)
  {
    if (qword_27CE57560 != -1)
    {
      swift_once();
    }

    v2 = qword_27CE671B0;
    sub_21DBF8E0C();
  }

  return v2;
}

void (*TTRIHashtagButton.accessibilityValue.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  v6 = 0;
  v7 = 0;
  if (*(v1 + v5) == 1)
  {
    if (qword_27CE57560 != -1)
    {
      swift_once();
    }

    v6 = qword_27CE671B0;
    v7 = sub_21DBF8E0C();
  }

  *(v4 + 24) = v6;
  *(v4 + 32) = v7;
  return sub_21DA9E728;
}

void sub_21DA9E728(void **a1)
{
  v1 = *a1;

  free(v1);
}

uint64_t TTRIHashtagButton.accessibilityHint.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(v0, &protocol witness table for TTRIHashtagButton, ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t (*TTRIHashtagButton.accessibilityHint.modify(uint64_t *a1))(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(v1, &protocol witness table for TTRIHashtagButton, ObjectType, v4);
    v8 = v7;
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return destroy for TTRRemindersBoardCellInfoButtonStates;
}

char *TTRIHashtagButton.accessibilityUserInputLabels.getter()
{
  ObjectType = swift_getObjectType();
  v2 = sub_21DBF4CAC();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isAddTagButton))
  {
    v44.receiver = v0;
    v44.super_class = ObjectType;
    result = objc_msgSendSuper2(&v44, sel_accessibilityUserInputLabels, v5);
    if (result)
    {
      v9 = result;
      v10 = sub_21DBFA5EC();

      return v10;
    }

    return result;
  }

  v11 = v4;
  v46.receiver = v0;
  v46.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v46, sel_accessibilityUserInputLabels, v5);
  if (v12)
  {
    v13 = v12;
    v14 = sub_21DBFA5EC();
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = [v0 titleLabel];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 text];

    if (v17)
    {
      v18 = sub_21DBFA16C();
      v20 = v19;

      sub_21DBFA23C();
      v21 = sub_21DBFA39C();

      if (v21)
      {
        v22 = sub_21DBF4C1C();
        MEMORY[0x28223BE20](v22);
        *(&v44 - 2) = v7;
        v23 = sub_21D3F7414(sub_21D24BE88, (&v44 - 2), v18, v20);
        if (v24)
        {

          v18 = 0;
          v20 = 0xE000000000000000;
        }

        else
        {
          v28 = sub_21D3F7BA8(v23, v18, v20);
          v30 = v29;
          v32 = v31;
          v34 = v33;

          v18 = MEMORY[0x223D429B0](v28, v30, v32, v34);
          v20 = v35;
        }

        (*(v3 + 8))(v7, v11);
      }

      v25 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
      v37 = *(v25 + 2);
      v36 = *(v25 + 3);
      if (v37 >= v36 >> 1)
      {
        v25 = sub_21D210A84((v36 > 1), v37 + 1, 1, v25);
      }

      *(v25 + 2) = v37 + 1;
      v38 = &v25[16 * v37];
      *(v38 + 4) = v18;
      *(v38 + 5) = v20;
      v26 = TTRIHashtagButton.accessibilityLabel.getter();
      if (!v27)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }
  }

  v25 = MEMORY[0x277D84F90];
  v26 = TTRIHashtagButton.accessibilityLabel.getter();
  if (v27)
  {
LABEL_19:
    v39 = v26;
    v40 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_21D210A84(0, *(v25 + 2) + 1, 1, v25);
    }

    v42 = *(v25 + 2);
    v41 = *(v25 + 3);
    if (v42 >= v41 >> 1)
    {
      v25 = sub_21D210A84((v41 > 1), v42 + 1, 1, v25);
    }

    *(v25 + 2) = v42 + 1;
    v43 = &v25[16 * v42];
    *(v43 + 4) = v39;
    *(v43 + 5) = v40;
  }

LABEL_24:
  v45 = v25;
  sub_21D5623AC(v14);
  result = v45;
  if (!*(v45 + 2))
  {

    return 0;
  }

  return result;
}

void TTRIHashtagButton.accessibilityUserInputLabels.setter(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v4 = sub_21DBFA5DC();
  }

  else
  {
    v4 = 0;
  }

  v5.receiver = v1;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, sel_setAccessibilityUserInputLabels_, v4);
}

void (*TTRIHashtagButton.accessibilityUserInputLabels.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = swift_getObjectType();
  *(v4 + 32) = TTRIHashtagButton.accessibilityUserInputLabels.getter();
  return sub_21DA9EF54;
}

void sub_21DA9EF54(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    if (v3)
    {
      sub_21DBF8E0C();
      v4 = sub_21DBFA5DC();
    }

    else
    {
      v4 = 0;
    }

    *v2 = *(v2 + 40);
    objc_msgSendSuper2(v2, sel_setAccessibilityUserInputLabels_, v4);
  }

  else
  {
    if (v3)
    {
      v5 = sub_21DBFA5DC();
    }

    else
    {
      v5 = 0;
    }

    *(v2 + 16) = *(v2 + 40);
    objc_msgSendSuper2((v2 + 16), sel_setAccessibilityUserInputLabels_, v5);
  }

  free(v2);
}

uint64_t TTRIHashtagButton.accessibilityCustomActions.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(v0, &protocol witness table for TTRIHashtagButton, ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

double (*TTRIHashtagButton.accessibilityCustomActions.modify(uint64_t *a1))(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 16))(v1, &protocol witness table for TTRIHashtagButton, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return destroy for TTRProcessEnvironment;
}

id TTRIHashtagButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DA9F2F4()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21DA9F338(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A658, &unk_21DC0FE60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62930, &qword_21DC0AED0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_21DBFB95C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRIHashtagButton();
  result = swift_dynamicCastClass();
  if (result)
  {
    v19 = result;
    v20 = a1;
    sub_21DBFB97C();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      return sub_21D0CF7E0(v13, &unk_27CE5F2F0, qword_21DC0FEA0);
    }

    else
    {
      (*(v15 + 32))(v17, v13, v14);
      *(swift_allocObject() + 16) = v19;
      v21 = v20;
      sub_21DBF8D6C();
      v22 = sub_21DBF8D5C();
      (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
      sub_21DBFB8CC();
      *(swift_allocObject() + 16) = v19;
      v30 = v21;
      sub_21DBF8BAC();
      v23 = sub_21DBF8B9C();
      v24 = *(v23 - 8);
      v31 = v10;
      v25 = *(v24 + 56);
      v25(v4, 0, 1, v23);
      v26 = sub_21DBFB79C();
      sub_21DBF887C();
      v26(v32, 0);
      *(swift_allocObject() + 16) = v19;
      v27 = v30;
      sub_21DBF8BAC();
      v25(v4, 0, 1, v23);
      v28 = sub_21DBFB79C();
      sub_21DBF888C();
      v28(v32, 0);
      v29 = v31;
      (*(v15 + 16))(v31, v17, v14);
      (*(v15 + 56))(v29, 0, 1, v14);
      sub_21DBFB98C();

      return (*(v15 + 8))(v17, v14);
    }
  }

  return result;
}

void sub_21DA9F7F8(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21DBF50FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF51AC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(a3, a1, v10, v12);
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v59 = sub_21D900614(8);
  sub_21D1BB110();
  sub_21DBF51CC();
  v15 = [a2 state];
  v16 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  if (a2[v16])
  {
    v17 = v15 | 0x10000;
  }

  else
  {
    v17 = v15;
  }

  if (v17 <= 4)
  {
    if (v17 == 1)
    {
      sub_21DAA0B50();
      sub_21DBF51BC();
      if (v58)
      {
        v54 = sub_21DBF9A6C();
      }

      else
      {
        v54 = 0;
      }

      v58 = v54;
      goto LABEL_24;
    }

    if (v17 != 4)
    {
      return;
    }

    v30 = [objc_opt_self() tintColor];
    v31 = sub_21D5FDD58(v30);

    v58 = v31;
LABEL_17:
    sub_21DAA0AA8();
LABEL_24:
    sub_21DBF51CC();
    return;
  }

  switch(v17)
  {
    case 5:
      v32 = [objc_opt_self() tintColor];
      v33 = sub_21D5FDD58(v32);

      v34 = [objc_opt_self() currentTraitCollection];
      if ([v34 accessibilityContrast] == 1)
      {
        v35 = sub_21DBFB24C();

        v34 = v35;
      }

      v36 = [v33 resolvedColorWithTraitCollection_];

      [v36 alphaComponent];
      v38 = [v36 colorWithAlphaComponent_];

      v58 = v38;
      goto LABEL_17;
    case 65540:
      v39 = objc_opt_self();
      v40 = [v39 tintColor];
      v41 = objc_opt_self();
      v42 = [v41 currentTraitCollection];
      v57 = v6;
      v43 = v42;
      v44 = [v40 resolvedColorWithTraitCollection_];
      v56 = v7;
      v45 = v44;

      v58 = v45;
      sub_21DAA0AA8();
      sub_21DBF51CC();
      v46 = [v39 tintColor];
      v47 = [v41 currentTraitCollection];
      v48 = [v46 resolvedColorWithTraitCollection_];

      v58 = v48;
      sub_21DAA0AFC();
      sub_21DBF51CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
      break;
    case 65541:
      v18 = objc_opt_self();
      v19 = [v18 tintColor];
      v20 = objc_opt_self();
      v21 = [v20 currentTraitCollection];
      v57 = v6;
      v22 = v21;
      v23 = [v19 resolvedColorWithTraitCollection_];
      v56 = v7;
      v24 = v23;

      [v24 alphaComponent];
      v26 = [v24 colorWithAlphaComponent_];

      v58 = v26;
      sub_21DAA0AA8();
      sub_21DBF51CC();
      v27 = [v18 tintColor];
      v28 = [v20 currentTraitCollection];
      v29 = [v27 resolvedColorWithTraitCollection_];

      v58 = v29;
      sub_21DAA0AFC();
      sub_21DBF51CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
      break;
    default:
      return;
  }

  inited = swift_initStackObject();
  v50 = *MEMORY[0x277D74150];
  *(inited + 32) = *MEMORY[0x277D74150];
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 40) = 1;
  v51 = v50;
  sub_21D11274C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0, &qword_21DC09050);
  sub_21DBF51DC();
  v52 = v56;
  v53 = v57;
  (*(v56 + 104))(v9, *MEMORY[0x277CC8B80], v57);
  sub_21DBF519C();
  (*(v52 + 8))(v9, v53);
  (*(v11 + 8))(v14, v10);
}

id sub_21DA9FFCC(void *a1, char *a2)
{
  v4 = [a2 state];
  v5 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  if (a2[v5])
  {
    v6 = v4 | 0x10000;
  }

  else
  {
    v6 = v4;
  }

  if (v6 == 65541)
  {
    v10 = [objc_opt_self() currentTraitCollection];
    v11 = [a1 resolvedColorWithTraitCollection_];

    [v11 alphaComponent];
    v13 = [v11 colorWithAlphaComponent_];

    return v13;
  }

  else if (v6 == 65540)
  {
    v7 = [objc_opt_self() currentTraitCollection];
    v8 = [a1 resolvedColorWithTraitCollection_];

    return v8;
  }

  else
  {
    v14 = [objc_opt_self() clearColor];

    return v14;
  }
}

id sub_21DAA0178(uint64_t a1, char *a2)
{
  v3 = [objc_opt_self() currentTraitCollection];
  if ([v3 accessibilityContrast] == 1)
  {
    v4 = sub_21DBFB24C();

    v3 = v4;
  }

  v5 = [a2 state];
  v6 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  if (a2[v6])
  {
    v7 = v5 | 0x10000;
  }

  else
  {
    v7 = v5;
  }

  if (v7 > 65539)
  {
    if ((v7 - 65540) < 2)
    {
      v11 = [objc_opt_self() clearColor];

      return v11;
    }

    goto LABEL_18;
  }

  switch(v7)
  {
    case 1:
      v13 = [v18 resolvedColorWithTraitCollection_];
      [v13 alphaComponent];
      v15 = [v13 colorWithAlphaComponent_];
LABEL_16:
      v16 = v15;

      return v16;
    case 4:
      v13 = [objc_opt_self() tintColor];
      v15 = [v13 resolvedColorWithTraitCollection_];
      goto LABEL_16;
    case 5:
      v8 = [objc_opt_self() tintColor];
      v9 = [v8 resolvedColorWithTraitCollection_];

      [v9 alphaComponent];
      v11 = [v9 colorWithAlphaComponent_];

      return v11;
  }

LABEL_18:

  return v18;
}

id _s15RemindersUICore17TTRIHashtagButtonC13makeForAddTagACyFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_21DBFB95C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  type metadata accessor for TTRIHashtagButton();
  v17 = [swift_getObjCClassFromMetadata() buttonWithType_];
  sub_21DBFB94C();
  v10 = *(v4 + 16);
  v10(v9, v6, v3);
  v11 = sub_21DBFB79C();
  sub_21DBF880C();
  v11(v18, 0);
  sub_21DBFB82C();
  v12 = *(v4 + 8);
  v12(v6, v3);
  if (qword_27CE57098 != -1)
  {
    swift_once();
  }

  v13 = qword_27CE65BF8;
  sub_21DBFB8FC();
  v10(v2, v9, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  v14 = v17;
  sub_21DBFB98C();

  v12(v9, v3);
  *(v14 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isAddTagButton) = 1;
  return v14;
}

id _s15RemindersUICore17TTRIHashtagButtonC14makeForHashtagACyFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  v3 = sub_21DBFB95C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  type metadata accessor for TTRIHashtagButton();
  v22 = [swift_getObjCClassFromMetadata() buttonWithType_];
  sub_21DBFB93C();
  v21 = *(v4 + 16);
  v21(v9, v6, v3);
  v10 = sub_21DBFB79C();
  sub_21DBF880C();
  v10(aBlock, 0);
  sub_21DBFB82C();
  v23 = *(v4 + 8);
  v23(v6, v3);
  sub_21DBFB87C();
  v11 = objc_opt_self();
  v12 = [v11 tertiarySystemFillColor];
  sub_21DBFB88C();
  v13 = [v11 labelColor];
  sub_21DBFB89C();
  v14 = [v11 tintColor];
  v15 = sub_21DBFB79C();
  sub_21DBF87DC();
  v15(aBlock, 0);
  v16 = sub_21DBFB79C();
  sub_21DBF87EC();
  v16(aBlock, 0);
  v21(v2, v9, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  v17 = v22;
  sub_21DBFB98C();
  aBlock[4] = sub_21DA9F338;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1B6000;
  aBlock[3] = &block_descriptor_142;
  v18 = _Block_copy(aBlock);
  [v17 setConfigurationUpdateHandler_];
  _Block_release(v18);

  v23(v9, v3);
  return v17;
}

unint64_t sub_21DAA0AA8()
{
  result = qword_27CE65C20;
  if (!qword_27CE65C20)
  {
    result = swift_getWitnessTable(MEMORY[0x277D749E0], MEMORY[0x277D749E8], v0, v1);
    atomic_store(result, &qword_27CE65C20);
  }

  return result;
}

unint64_t sub_21DAA0AFC()
{
  result = qword_27CE65C28;
  if (!qword_27CE65C28)
  {
    result = swift_getWitnessTable(MEMORY[0x277D749F0], MEMORY[0x277D749F8], v0, v1);
    atomic_store(result, &qword_27CE65C28);
  }

  return result;
}

unint64_t sub_21DAA0B50()
{
  result = qword_27CE65C30;
  if (!qword_27CE65C30)
  {
    result = swift_getWitnessTable(MEMORY[0x277CDF228], MEMORY[0x277CDF230], v0, v1);
    atomic_store(result, &qword_27CE65C30);
  }

  return result;
}

uint64_t TTRAutoCompleteReminderStackedImagesView.Configuration.init(thumbnailContainerSize:singleImageCornerRadius:dualImageThumbnailSize:dualImageCornerRadius:dualImageThumbnailCutout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a2;
  *(a4 + 24) = a6;
  *(a4 + 32) = a3;
  return result;
}

uint64_t *TTRAutoCompleteReminderStackedImagesView.init(configuration:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  *&v2[OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_images] = 0;
  v8 = OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_firstImageView;
  v9 = sub_21DAA1C64(a1, a2);
  *&v2[v8] = v9;
  v10 = OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_secondImageView;
  v12 = sub_21DAA1C64(v9, v11);
  *&v2[v10] = v12;
  *&v2[OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView____lazy_storage___maskLayer] = 0;
  v13 = &v2[OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_configuration];
  *v13 = v3;
  *(v13 + 1) = v4;
  *(v13 + 2) = v5;
  *(v13 + 3) = v6;
  *(v13 + 4) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21DC0AA00;
  v15 = *&v2[v8];
  *(v14 + 32) = v15;
  *(v14 + 40) = v12;
  sub_21D114EC8();
  v16 = v15;
  v17 = v12;
  v18 = sub_21DBFA5DC();

  v26.receiver = v2;
  v26.super_class = type metadata accessor for TTRAutoCompleteReminderStackedImagesView();
  v19 = objc_msgSendSuper2(&v26, sel_initWithArrangedSubviews_, v18);

  v20 = v19;
  [v20 setVerticalAlignment_];
  [v20 setHorizontalAlignment_];
  LODWORD(v21) = 1148846080;
  [v20 setContentCompressionResistancePriority:0 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [v20 setContentHuggingPriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [v20 setContentHuggingPriority:1 forAxis:v24];
  [v20 setDebugBoundingBoxesEnabled_];

  return v20;
}

double sub_21DAA0EB8()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

double sub_21DAA0F00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_images;
  swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v5)
    {
      v6 = sub_21DBF8E0C();
      v7 = sub_21D1D6D70(v6, v5);

      if (v7)
      {
        goto LABEL_7;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_21DAA13E4();
LABEL_7:

  return result;
}

void (*sub_21DAA0F90(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_images;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21DAA102C;
}

void sub_21DAA102C(uint64_t a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (a2)
  {
    v5 = sub_21DBF8E0C();
    sub_21DAA0F00(v5);
  }

  else
  {
    v7 = v3[4];
    v6 = v3[5];
    v8 = *(v7 + v6);
    *(v7 + v6) = v4;
    if (v4)
    {
      if (v8)
      {
        v9 = sub_21DBF8E0C();
        v10 = sub_21D1D6D70(v9, v8);

        if (v10)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v8)
    {
      goto LABEL_10;
    }

    sub_21DAA13E4();
  }

LABEL_9:

LABEL_10:

  free(v3);
}

id sub_21DAA10E0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView____lazy_storage___maskLayer;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView____lazy_storage___maskLayer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView____lazy_storage___maskLayer];
  }

  else
  {
    v4 = sub_21DAA1144(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_21DAA1144(char *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v3 = &a1[OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_configuration];
  v4 = *&a1[OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_configuration + 16];
  v5 = v2;
  result = [v5 setFrame_];
  v7 = *(v3 + 4);
  v8 = *(v3 + 3) + v7;
  v9 = v8 * 5.0 * 0.25;
  if (COERCE__INT64(fabs(v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v4 + 0x4000000000000000 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = 2 * v4 - *v3;
  if (__OFSUB__(2 * v4, *v3))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = v10 + v7;
  if (__OFADD__(v10, v7))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = v9;
  v13 = v11 + v9;
  if (__OFADD__(v11, v9))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = [a1 effectiveUserInterfaceLayoutDirection];
  if (result == 1)
  {
    v14 = v4 - v10;
    if (__OFSUB__(v4, v10))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v15 = v14 - v7;
    if (!__OFSUB__(v14, v7))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  v15 = -v12;
  if (!__OFSUB__(0, v12))
  {
    v14 = v4 - v10;
    if (!__OFSUB__(v4, v10))
    {
LABEL_15:
      v16 = __OFSUB__(v14, v7);
      v17 = v14 - v7;
      if (!v16)
      {
        v18 = v15;
        v19 = v17;
        Mutable = CGPathCreateMutable();
        [v5 bounds];
        sub_21DBFB03C();
        v21 = CGPathCreateMutable();
        TTR_CGPathAddRoundRect(v21, 1, v18, v19, v13, v13, v8);
        sub_21DBFB00C();

        [v5 setPath_];
        [v5 setFillRule_];
        v22 = [objc_opt_self() whiteColor];
        v23 = [v22 CGColor];

        [v5 setFillColor_];
        return v5;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_21DAA13E4()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_images;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (v2 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      if (sub_21DBFBD7C() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }

LABEL_17:
    [*(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_firstImageView) setHidden_];
    [*(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_secondImageView) setHidden_];
    return;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_17;
  }

  if (v3 == 1)
  {
LABEL_5:
    if ((v2 & 0xC000000000000001) != 0)
    {
      sub_21DBF8E0C();
      v4 = MEMORY[0x223D44740](0, v2);

      goto LABEL_8;
    }

    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v2 + 32);
LABEL_8:
      v5 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_firstImageView);
      [v5 setHidden_];
      [*(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_secondImageView) setHidden_];
      v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_configuration);
      v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_configuration + 8);
      [v5 setImage_];
      v8 = [v5 layer];
      [v8 setCornerRadius_];

      [v5 setCustomAlignmentRectInsets_];
      LODWORD(v9) = 1148846080;
      [v5 setLayoutSize:v7 withContentPriority:{v7, v9}];

      return;
    }

    goto LABEL_24;
  }

LABEL_11:
  v10 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_firstImageView);
  sub_21DBF8E0C();
  [v10 setHidden_];
  v11 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_secondImageView);
  [v11 setHidden_];
  if ((v2 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x223D44740](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v12 = *(v2 + 32);
  }

  v13 = v12;
  v14 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_configuration);
  v15 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_configuration + 16);
  v16 = __OFSUB__(v14, v15);
  v17 = v14 - v15;
  if (v16)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_configuration + 24);
  v19 = -v17;
  [v10 setImage_];
  v20 = [v10 layer];
  [v20 setCornerRadius_];

  [v10 setCustomAlignmentRectInsets_];
  LODWORD(v21) = 1148846080;
  [v10 setLayoutSize:v15 withContentPriority:{v15, v21}];
  if ((v2 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x223D44740](1, v2);
LABEL_20:
    v23 = v22;

    [v11 setImage_];
    v24 = [v11 layer];
    [v24 setCornerRadius_];

    [v11 setCustomAlignmentRectInsets_];
    LODWORD(v25) = 1148846080;
    [v11 setLayoutSize:v15 withContentPriority:{v15, v25}];
    v26 = [v11 layer];
    v27 = sub_21DAA10E0();
    [v26 setMask_];

    return;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v22 = *(v2 + 40);
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
}

id TTRAutoCompleteReminderStackedImagesView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRAutoCompleteReminderStackedImagesView.__allocating_init(arrangedSubviews:)(uint64_t a1)
{
  if (a1)
  {
    sub_21D114EC8();
    v2 = sub_21DBFA5DC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithArrangedSubviews_];

  return v3;
}

id sub_21DAA1B70(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_21DAA1C64(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setClipsToBounds_];
  v3 = [v2 layer];
  [v3 setCornerCurve_];

  v4 = [v2 layer];
  [v4 setMasksToBounds_];

  [v2 setContentMode_];
  return v2;
}

uint64_t sub_21DAA1E60()
{
  v1 = v0;
  v2 = swift_allocObject();
  v3 = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 256;
  if (v0[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_isSeparatorForceHidden] == 1)
  {
    [v0 bounds];
    v4 = CGRectGetWidth(v23) + 100.0;
  }

  else
  {
    v5 = COERCE_DOUBLE(sub_21DAA2730(v2, v0));
    if (v6)
    {
      v4 = 1.79769313e308;
    }

    else
    {
      v4 = v5;
    }
  }

  v7 = OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingSeparatorInset;
  if ((sub_21D110D14(*&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingSeparatorInset], 0.0000000149011612, v4) & 1) == 0)
  {
    *&v1[v7] = v4;
    v8 = *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler];
    if (v8)
    {
      v9 = *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler + 8];

      v8(v10);
      sub_21D0D0E88(v8, v9);
    }
  }

  v11 = sub_21DAA2730(v3, v1);
  v12 = 0.0;
  if ((v13 & 1) == 0)
  {
    v14 = *&v11;
    [v1 directionalLayoutMargins];
    v12 = v14 - v15;
  }

  v16 = OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignment;
  if ((sub_21D110D14(*&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignment], 0.0000000149011612, v12) & 1) == 0)
  {
    *&v1[v16] = v12;
    v17 = &v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
    v18 = *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
    if (v18)
    {
      v19 = *(v17 + 1);

      v18(v20, v12);
      sub_21D0D0E88(v18, v19);
    }
  }
}

uint64_t sub_21DAA2000()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65C60);
  v1 = __swift_project_value_buffer(v0, qword_27CE65C60);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21DAA20C8()
{
  if ([v0 delegate])
  {
    swift_unknownObjectRelease();
    v1 = [v0 delegate];
    if (!v1 || (v2 = v1, swift_unknownObjectRelease(), v2 != v0))
    {
      if (qword_27CE570A0 != -1)
      {
        swift_once();
      }

      v3 = sub_21DBF84BC();
      __swift_project_value_buffer(v3, qword_27CE65C60);
      oslog = sub_21DBF84AC();
      v4 = sub_21DBFAECC();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRIRemindersListReminderCellContentView: delegate is not set to self, this will cause problems", v5, 2u);
        MEMORY[0x223D46520](v5, -1, -1);
      }
    }
  }

  else
  {

    [v0 setDelegate_];
  }
}

void sub_21DAA2464(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = type metadata accessor for TTRIRemindersListReminderCellContentView();
  v25.receiver = v6;
  v25.super_class = v11;
  objc_msgSendSuper2(&v25, sel_frame);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v24.receiver = v6;
  v24.super_class = v11;
  objc_msgSendSuper2(&v24, sel_setFrame_, a3, a4, a5, a6);
  v26.origin.x = v13;
  v26.origin.y = v15;
  v26.size.width = v17;
  v26.size.height = v19;
  Width = CGRectGetWidth(v26);
  [v6 frame];
  v21 = CGRectGetWidth(v27);
  v22 = fabs(v21);
  v23 = fabs(Width) < 0.0000000149011612 || v22 < 0.0000000149011612;
  if (!v23 && (sub_21D110D14(Width, 0.0000000149011612, v21) & 1) == 0)
  {
    if ([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
    {
      *(v6 + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_allowsAnimationsForNextLayout) = 1;
    }
  }
}

void sub_21DAA262C(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_allowsAnimationsForNextLayout] == 1)
  {
    v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_allowsAnimationsForNextLayout] = 0;
    v3 = OBJC_IVAR____TtC15RemindersUICore31TTRNoAnimationContainerGridView_areImplicitAnimationsEnabled;
    swift_beginAccess();
    v4 = v2[v3];
    v2[v3] = 1;
  }

  else
  {
    v4 = 2;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for TTRIRemindersListReminderCellContentView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  if (v4 != 2)
  {
    v5 = OBJC_IVAR____TtC15RemindersUICore31TTRNoAnimationContainerGridView_areImplicitAnimationsEnabled;
    swift_beginAccess();
    v2[v5] = v4;
  }
}

uint64_t sub_21DAA2730(uint64_t a1, char *a2)
{
  if ((*(a1 + 25) & 1) == 0)
  {
    return *(a1 + 16);
  }

  sub_21DAA27B0(a2);
  v4 = v3;
  v6 = v5 & 1;
  swift_beginAccess();
  result = v4;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = 0;
  return result;
}

void sub_21DAA27B0(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_referenceViewsForLeadingSeparatorInset];
  if (v2 >> 62)
  {
LABEL_18:
    v3 = sub_21DBFBD7C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_21DBF8E0C();
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223D44740](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (([v5 isHidden] & 1) == 0)
      {
        break;
      }

      ++v4;
      if (v7 == v3)
      {
        goto LABEL_13;
      }
    }

    [v6 bounds];
    [a1 convertRect:v6 fromCoordinateSpace:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v6 effectiveAlignmentRectInsets];
    v18 = UIEdgeInsetsInsetRect(v9, v11, v13, v15, v16, v17);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [a1 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [a1 effectiveUserInterfaceLayoutDirection];
    v38.origin.x = v18;
    v38.origin.y = v20;
    v38.size.width = v22;
    v38.size.height = v24;
    CGRectGetMinY(v38);
    v39.origin.x = v26;
    v39.origin.y = v28;
    v39.size.width = v30;
    v39.size.height = v32;
    CGRectGetMinY(v39);
    v40.origin.x = v26;
    v40.origin.y = v28;
    v40.size.width = v30;
    v40.size.height = v32;
    CGRectGetMaxY(v40);
    v41.origin.x = v18;
    v41.origin.y = v20;
    v41.size.width = v22;
    v41.size.height = v24;
    CGRectGetMaxY(v41);
    v42.origin.x = v18;
    v42.origin.y = v20;
    v42.size.width = v22;
    v42.size.height = v24;
    CGRectGetMinX(v42);
    v43.origin.x = v26;
    v43.origin.y = v28;
    v43.size.width = v30;
    v43.size.height = v32;
    CGRectGetMinX(v43);
    v44.origin.x = v26;
    v44.origin.y = v28;
    v44.size.width = v30;
    v44.size.height = v32;
    CGRectGetMaxX(v44);
    v45.origin.x = v18;
    v45.origin.y = v20;
    v45.size.width = v22;
    v45.size.height = v24;
    CGRectGetMaxX(v45);
    if (v33 > 1)
    {
      if (qword_27CE56650 != -1)
      {
        swift_once();
      }

      v34 = sub_21DBF84BC();
      __swift_project_value_buffer(v34, qword_27CE5B1E8);
      v35 = MEMORY[0x277D84F90];
      v36 = sub_21D17716C(MEMORY[0x277D84F90]);
      v37 = sub_21D17716C(v35);
      sub_21DAEAB00("unknown layout direction", 24, 2, v36, v37);
      __break(1u);
    }

    else
    {
    }
  }

  else
  {
LABEL_13:
  }
}

id sub_21DAA2AEC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = &v6[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_layoutMarginsDidUpdate];
  *v11 = 0;
  v11[1] = 0;
  *&v6[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_referenceViewsForLeadingSeparatorInset] = MEMORY[0x277D84F90];
  v6[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_isSeparatorForceHidden] = 0;
  v6[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_allowsAnimationsForNextLayout] = 0;
  *&v6[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignment] = 0;
  v12 = &v6[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v6[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
  *v13 = 0;
  v13[1] = 0;
  *&v6[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingSeparatorInset] = 0x7FEFFFFFFFFFFFFFLL;
  v15.receiver = v6;
  v15.super_class = type metadata accessor for TTRIRemindersListReminderCellContentView();
  return objc_msgSendSuper2(&v15, sel_initWithFrame_, a3, a4, a5, a6);
}

id sub_21DAA2BEC(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_layoutMarginsDidUpdate];
  *v3 = 0;
  v3[1] = 0;
  *&v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_referenceViewsForLeadingSeparatorInset] = MEMORY[0x277D84F90];
  v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_isSeparatorForceHidden] = 0;
  v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_allowsAnimationsForNextLayout] = 0;
  *&v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignment] = 0;
  v4 = &v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
  *v5 = 0;
  v5[1] = 0;
  *&v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingSeparatorInset] = 0x7FEFFFFFFFFFFFFFLL;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100, &qword_21DC18230);
    v6 = sub_21DBFA5DC();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for TTRIRemindersListReminderCellContentView();
  v7 = objc_msgSendSuper2(&v9, sel_initWithArrangedSubviewRows_, v6);

  return v7;
}

id sub_21DAA2D48(void *a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_layoutMarginsDidUpdate];
  *v4 = 0;
  v4[1] = 0;
  *&v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_referenceViewsForLeadingSeparatorInset] = MEMORY[0x277D84F90];
  v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_isSeparatorForceHidden] = 0;
  v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_allowsAnimationsForNextLayout] = 0;
  *&v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignment] = 0;
  v5 = &v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
  *v6 = 0;
  v6[1] = 0;
  *&v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingSeparatorInset] = 0x7FEFFFFFFFFFFFFFLL;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for TTRIRemindersListReminderCellContentView();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_21DAA2E48()
{
  sub_21D0D0E88(*(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_layoutMarginsDidUpdate), *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_layoutMarginsDidUpdate + 8));

  sub_21D0D0E88(*(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler), *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler + 8));
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange);
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange + 8);

  return sub_21D0D0E88(v1, v2);
}

id sub_21DAA2EB4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TTRIRemindersListReminderCellContentView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id UIView.applyLayoutMargins(from:)()
{
  v1 = sub_21DBF89AC();
  sub_21DBF897C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = 15;
  if ((v1 & 1) == 0)
  {
    v10 = 5;
  }

  if ((v1 & 2) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = (v1 << 63 >> 63) & 0xA;
  }

  [v0 setEdgesPreservingSuperviewLayoutMargins_];

  return [v0 setDirectionalLayoutMargins_];
}

uint64_t UIListContentConfiguration.usingRoundedSystemFont()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF893C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_21DBF8A0C();
  (*(*(v7 - 8) + 16))(a1, v1, v7);
  sub_21DBF896C();
  v8 = sub_21DBF891C();
  (*(v4 + 8))(v6, v3);
  v9 = [v8 fontDescriptor];
  v10 = [v9 fontDescriptorWithDesign_];

  if (v10)
  {
    [objc_opt_self() fontWithDescriptor:v10 size:0.0];
  }

  v11 = sub_21DBF895C();
  sub_21DBF892C();
  return v11(v13, 0);
}

uint64_t *sub_21DAA327C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0, &unk_21DC1DA80) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = v4;
  v7 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v15 = sub_21DBF509C();
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(v8 + 64));
    }

    else
    {
      v13 = sub_21DBF509C();
      (*(*(v13 - 8) + 16))(a1, a2, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50, &qword_21DC177F0);
      *(a1 + *(v14 + 48)) = *(a2 + *(v14 + 48));
      swift_storeEnumTagMultiPayload();
    }

    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_21DAA34E0(uint64_t a1)
{
  v2 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {
    result = swift_getEnumCaseMultiPayload();
    if (result <= 1)
    {
      v4 = sub_21DBF509C();
      v5 = *(*(v4 - 8) + 8);

      return v5(a1, v4);
    }
  }

  return result;
}

void *sub_21DAA35A8(void *a1, const void *a2)
{
  v4 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0, &unk_21DC1DA80) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v11 = sub_21DBF509C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(v5 + 64));
    }

    else
    {
      v9 = sub_21DBF509C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50, &qword_21DC177F0);
      *(a1 + *(v10 + 48)) = *(a2 + *(v10 + 48));
      swift_storeEnumTagMultiPayload();
    }

    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *sub_21DAA37A0(void *a1, void *a2)
{
  v4 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v17 = sub_21DBF509C();
        (*(*(v17 - 8) + 16))(a1, a2, v17);
        swift_storeEnumTagMultiPayload();
      }

      else if (EnumCaseMultiPayload)
      {
        memcpy(a1, a2, *(v5 + 64));
      }

      else
      {
        v10 = sub_21DBF509C();
        (*(*(v10 - 8) + 16))(a1, a2, v10);
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50, &qword_21DC177F0);
        *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
        swift_storeEnumTagMultiPayload();
      }

      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      if (a1 != a2)
      {
        sub_21DAA3AC8(a1);
        v14 = swift_getEnumCaseMultiPayload();
        if (v14 == 1)
        {
          v18 = sub_21DBF509C();
          (*(*(v18 - 8) + 16))(a1, a2, v18);
        }

        else
        {
          if (v14)
          {
            v12 = *(v5 + 64);
            goto LABEL_9;
          }

          v15 = sub_21DBF509C();
          (*(*(v15 - 8) + 16))(a1, a2, v15);
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50, &qword_21DC177F0);
          *(a1 + *(v16 + 48)) = *(a2 + *(v16 + 48));
        }

        swift_storeEnumTagMultiPayload();
      }

      return a1;
    }

    sub_21DAA3AC8(a1);
  }

  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0, &unk_21DC1DA80) - 8) + 64);
LABEL_9:

  return memcpy(a1, a2, v12);
}

uint64_t sub_21DAA3AC8(uint64_t a1)
{
  v2 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_21DAA3B24(void *a1, const void *a2)
{
  v4 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0, &unk_21DC1DA80) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v11 = sub_21DBF509C();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(v5 + 64));
    }

    else
    {
      v9 = sub_21DBF509C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50, &qword_21DC177F0);
      *(a1 + *(v10 + 48)) = *(a2 + *(v10 + 48));
      swift_storeEnumTagMultiPayload();
    }

    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *sub_21DAA3D1C(void *a1, void *a2)
{
  v4 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v17 = sub_21DBF509C();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
        swift_storeEnumTagMultiPayload();
      }

      else if (EnumCaseMultiPayload)
      {
        memcpy(a1, a2, *(v5 + 64));
      }

      else
      {
        v10 = sub_21DBF509C();
        (*(*(v10 - 8) + 32))(a1, a2, v10);
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50, &qword_21DC177F0);
        *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
        swift_storeEnumTagMultiPayload();
      }

      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      if (a1 != a2)
      {
        sub_21DAA3AC8(a1);
        v14 = swift_getEnumCaseMultiPayload();
        if (v14 == 1)
        {
          v18 = sub_21DBF509C();
          (*(*(v18 - 8) + 32))(a1, a2, v18);
        }

        else
        {
          if (v14)
          {
            v12 = *(v5 + 64);
            goto LABEL_9;
          }

          v15 = sub_21DBF509C();
          (*(*(v15 - 8) + 32))(a1, a2, v15);
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50, &qword_21DC177F0);
          *(a1 + *(v16 + 48)) = *(a2 + *(v16 + 48));
        }

        swift_storeEnumTagMultiPayload();
      }

      return a1;
    }

    sub_21DAA3AC8(a1);
  }

  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0, &unk_21DC1DA80) - 8) + 64);
LABEL_9:

  return memcpy(a1, a2, v12);
}

void sub_21DAA408C(uint64_t a1)
{
  sub_21DAA4118(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21DAA4118(uint64_t a1)
{
  if (!qword_27CE65D38)
  {
    type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(255);
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE65D38);
    }
  }
}

void *sub_21DAA4170(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = sub_21DBF509C();
    (*(*(v11 - 8) + 16))(a1, a2, v11);
    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = sub_21DBF509C();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50, &qword_21DC177F0);
    *(a1 + *(v9 + 48)) = *(a2 + *(v9 + 48));
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

_BYTE *sub_21DAA42F0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF509C();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50, &qword_21DC177F0);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *sub_21DAA4430(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21DAA3AC8(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF509C();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50, &qword_21DC177F0);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *sub_21DAA4580(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF509C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50, &qword_21DC177F0);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *sub_21DAA46C0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21DAA3AC8(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF509C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50, &qword_21DC177F0);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_21DAA4810(uint64_t a1)
{
  result = sub_21DBF509C();
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v4[4] = v4;
    v4[5] = v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21DAA48BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF563C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_21DBF509C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v29 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  v17 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a1, v9, &qword_27CE58D60, &unk_21DC0A690);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(a1, &qword_27CE58D60, &unk_21DC0A690);
    sub_21D0CF7E0(v9, &qword_27CE58D60, &unk_21DC0A690);
    v20 = 1;
    v21 = v29;
  }

  else
  {
    v28 = a2;
    v22 = v9;
    v23 = *(v11 + 32);
    v23(v16, v22, v10);
    (*(v11 + 16))(v13, v16, v10);
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    TTRReminderEditor.AllDayColloquialDateType.init(dueDateComponents:now:)(v13, v6, &v30);
    sub_21D0CF7E0(a1, &qword_27CE58D60, &unk_21DC0A690);
    v24 = v30;
    if (v30 == 2 || v30 == 3)
    {
      (*(v11 + 8))(v16, v10);
    }

    else if (v30 == 4)
    {
      v23(v19, v16, v10);
    }

    else
    {
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50, &qword_21DC177F0) + 48);
      v23(v19, v16, v10);
      v19[v25] = v24 & 1;
    }

    v21 = v29;
    swift_storeEnumTagMultiPayload();
    a2 = v28;
    sub_21DAA57BC(v19, v28);
    v20 = 0;
  }

  return (*(v17 + 56))(a2, v20, 1, v21);
}

uint64_t sub_21DAA4C98()
{
  v1 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF509C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DAA5060(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    (*(v5 + 32))(v7, v3, v4);
    v9 = sub_21DAA50C4(v7);
    (*(v5 + 8))(v7, v4);
    return v9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_8;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_8:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t sub_21DAA4F48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0, &unk_21DC1DA80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_21D0D3954(v1, &v8 - v3, &qword_27CE5EBC0, &unk_21DC1DA80);
  v5 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE5EBC0, &unk_21DC1DA80);
    return 0;
  }

  else
  {
    v7 = sub_21DAA4C98();
    sub_21DAA3AC8(v4);
    return v7;
  }
}

uint64_t sub_21DAA5060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DAA50C4(uint64_t a1)
{
  v1 = sub_21DBF5A2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() currentCalendar];
  sub_21DBF596C();

  sub_21DBF597C();
  (*(v2 + 8))(v4, v1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21D0CF7E0(v7, &qword_27CE58D68, &unk_21DC0C060);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    if (qword_27CE570A8 != -1)
    {
      swift_once();
    }

    v14 = qword_27CE65D20;
    v15 = sub_21DBF55BC();
    v16 = [v14 stringFromDate_];

    v17 = sub_21DBFA16C();
    (*(v9 + 8))(v11, v8);
    return v17;
  }
}

id sub_21DAA53B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_27CE65D20 = v0;
  return result;
}

uint64_t sub_21DAA5414(uint64_t a1, uint64_t a2)
{
  v34 = sub_21DBF509C();
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65D50, &qword_21DC3AC70);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v33 - v17;
  v20 = &v33 + *(v19 + 56) - v17;
  sub_21DAA5060(a1, &v33 - v17);
  sub_21DAA5060(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_13;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_13;
    }

    sub_21DAA3AC8(v18);
    v25 = 1;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_21DAA5060(v18, v15);
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50, &qword_21DC177F0) + 48);
      v23 = v15[v22];
      if (!swift_getEnumCaseMultiPayload())
      {
        v28 = v20[v22];
        v29 = v20;
        v30 = v34;
        (*(v4 + 32))(v9, v29, v34);
        v31 = MEMORY[0x223D3D6A0](v15, v9);
        v32 = *(v4 + 8);
        v32(v9, v30);
        v32(v15, v30);
        if (v31)
        {
          sub_21DAA3AC8(v18);
          v25 = v23 ^ v28 ^ 1;
          return v25 & 1;
        }

        sub_21DAA3AC8(v18);
        goto LABEL_14;
      }

      v12 = v15;
      goto LABEL_10;
    }

    sub_21DAA5060(v18, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
LABEL_10:
      (*(v4 + 8))(v12, v34);
LABEL_13:
      sub_21D0CF7E0(v18, &qword_27CE65D50, &qword_21DC3AC70);
LABEL_14:
      v25 = 0;
      return v25 & 1;
    }

    v24 = v34;
    (*(v4 + 32))(v6, v20, v34);
    v25 = MEMORY[0x223D3D6A0](v12, v6);
    v26 = *(v4 + 8);
    v26(v6, v24);
    v26(v12, v24);
    sub_21DAA3AC8(v18);
  }

  return v25 & 1;
}

uint64_t sub_21DAA57BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void UITextDraggable<>.disableDragInteraction_rdar93793341()()
{
  v1 = [v0 textDragInteraction];
  if (v1)
  {
    v2 = v1;
    [v1 setEnabled_];
    [v0 removeInteraction_];
  }
}

void sub_21DAA58A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v32 = MEMORY[0x277D84F90];
  sub_21D18F81C(0, v6, 0);
  v28 = v5;
  v29 = v4;
  v26 = a1;
  v27 = v6;
  v25 = a2;
  if (v6)
  {
    v7 = (a2 + 32);
    v8 = (a1 + 40);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v9 = *v8;
      v10 = *v7;
      v12 = *(v32 + 16);
      v11 = *(v32 + 24);
      v30 = *(v8 - 1);
      v31 = v12 + 1;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      if (v12 >= v11 >> 1)
      {
        sub_21D18F81C((v11 > 1), v31, 1);
      }

      *(v32 + 16) = v31;
      v13 = (v32 + 24 * v12);
      --v5;
      v13[4] = v10;
      v13[5] = v30;
      v13[6] = v9;
      --v4;
      ++v7;
      v8 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v15 = v28;
    v14 = v29;
    if (v29 <= v28)
    {
      return;
    }

    v16 = v27;
    v17 = (v26 + 16 * v27 + 40);
    while (v16 < v14)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_24;
      }

      if (v15 != v16)
      {
        if (v16 >= v15)
        {
          goto LABEL_25;
        }

        v20 = *(v17 - 1);
        v19 = *v17;
        v21 = *(v25 + 32 + 8 * v16);
        v22 = *(v32 + 16);
        v23 = *(v32 + 24);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        if (v22 >= v23 >> 1)
        {
          sub_21D18F81C((v23 > 1), v22 + 1, 1);
        }

        *(v32 + 16) = v22 + 1;
        v24 = (v32 + 24 * v22);
        v24[4] = v21;
        v24[5] = v20;
        v24[6] = v19;
        ++v16;
        v17 += 2;
        v15 = v28;
        v14 = v29;
        if (v18 != v29)
        {
          continue;
        }
      }

      return;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t TTRParticipantAvatarRenderConfiguration.init(width:height:scales:rightToLeft:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  return result;
}

uint64_t TTRParticipantAvatarProvider.__allocating_init(contactsProvider:contactStoreCreator:queue:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v12 = sub_21DAA9024(v11, a2, a3, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

void TTRParticipantAvatarProvider.fillInAvatarImages(for:configuration:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD50, &unk_21DC183E0);
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v41 - v8;
  v10 = *a2;
  v11 = a2[1];
  v44 = a2[2];
  v43 = *(a2 + 24);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  v46 = a1;
  if (v12)
  {
    v42 = a4;
    v57 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v14 = (a1 + 32);
    v48 = (v7 + 8);
    v15 = v12 - 1;
    v16 = &qword_27CE60910;
    v47 = xmmword_21DC09CF0;
    v51 = xmmword_21DC08D00;
    while (1)
    {
      v17 = v14[5];
      v54 = v14[4];
      v55 = v17;
      v56 = v14[6];
      v18 = v14[1];
      v53[0] = *v14;
      v53[1] = v18;
      v19 = v14[3];
      v53[2] = v14[2];
      v53[3] = v19;
      v20 = *(&v53[0] + 1);
      if (*(&v53[0] + 1))
      {
        v52[0] = *(&v53[0] + 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(v16, &unk_21DC25FE0);
        swift_allocObject();
        v21 = v20;
        sub_21DBF824C();
        goto LABEL_16;
      }

      v22 = v16;
      v23 = v54;
      v24 = *(&v55 + 1);
      if (*(&v55 + 1))
      {
        v25 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
        v26 = swift_allocObject();
        *(v26 + 16) = v51;
        *(v26 + 32) = v25;
        *(v26 + 40) = v24;
        if (!*(&v23 + 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v26 = MEMORY[0x277D84F90];
        if (!*(&v54 + 1))
        {
LABEL_10:
          v27 = MEMORY[0x277D84F90];
          if (*(v26 + 16))
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
      v27 = swift_allocObject();
      *(v27 + 16) = v51;
      *(v27 + 32) = v23;
      if (*(v26 + 16))
      {
        goto LABEL_12;
      }

LABEL_11:
      if (!*(v27 + 16))
      {
        sub_21D1D9C94(v53, v52);
        sub_21DBF8E0C();
        sub_21DBF8E0C();

        goto LABEL_15;
      }

LABEL_12:
      v28 = objc_allocWithZone(MEMORY[0x277D445D8]);
      sub_21D1D9C94(v53, v52);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v29 = sub_21DBFA5DC();

      v30 = sub_21DBFA5DC();

      v31 = [v28 initWithPhones:v29 emails:v30];

      if (v31)
      {
        __swift_project_boxed_opaque_existential_1((v50 + 16), *(v50 + 40));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
        v32 = swift_allocObject();
        *(v32 + 16) = v47;
        *(v32 + 32) = [objc_opt_self() descriptorForRequiredKeys];
        sub_21DBF6A7C();

        v33 = v49;
        sub_21DBF662C();
        (*v48)(v9, v33);
        sub_21DBF817C();

        sub_21D30DA04(v53);
        v16 = v22;
        goto LABEL_16;
      }

LABEL_15:
      v52[0] = 0;
      v16 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(v22, &unk_21DC25FE0);
      swift_allocObject();
      sub_21DBF824C();
      sub_21D30DA04(v53);
LABEL_16:
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      if (!v15)
      {
        v13 = v57;
        a4 = v42;
        break;
      }

      --v15;
      v14 += 7;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60910, &unk_21DC25FE0);
  *&v53[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65D70, &qword_21DC3AC90);
  sub_21D0D0F1C(&qword_27CE65D78, &qword_27CE65D70, &qword_21DC3AC90, MEMORY[0x277D83988]);
  sub_21DBF819C();

  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v36 = v46;
  *(v35 + 16) = v34;
  *(v35 + 24) = v36;
  *(v35 + 32) = v10;
  *(v35 + 40) = v11;
  *(v35 + 48) = v44;
  *(v35 + 56) = v43;
  v37 = v45;
  *(v35 + 64) = v45;
  *(v35 + 72) = a4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  v38 = sub_21DBF816C();
  sub_21DBF820C();

  v39 = swift_allocObject();
  v39[2] = v37;
  v39[3] = a4;
  v39[4] = v36;
  sub_21DBF8E0C();

  v40 = sub_21DBF816C();
  sub_21DBF822C();
}

uint64_t sub_21DAA61A4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65D58);
  v1 = __swift_project_value_buffer(v0, qword_27CE65D58);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRParticipantAvatarResult.Image.image.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRParticipantAvatarResult.name.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

void TTRParticipantAvatarRenderConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (*v1 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x223D44FD0](*&v3);
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x223D44FD0](*&v6);
  sub_21DAA8700(a1, v5);
  sub_21DBFC7FC();
}

uint64_t TTRParticipantAvatarRenderConfiguration.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_21DBFC7DC();
  TTRParticipantAvatarRenderConfiguration.hash(into:)(v4);
  return sub_21DBFC82C();
}

uint64_t sub_21DAA63CC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_21DBFC7DC();
  TTRParticipantAvatarRenderConfiguration.hash(into:)(v4);
  return sub_21DBFC82C();
}

uint64_t sub_21DAA642C(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_21DBFC7DC();
  TTRParticipantAvatarRenderConfiguration.hash(into:)(v5);
  return sub_21DBFC82C();
}

uint64_t TTRParticipantAvatarNameStyle.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRParticipantAvatarProvider.init(contactsProvider:contactStoreCreator:queue:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_21DAA8768(v14, a2, a3, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v16;
}

void TTRParticipantAvatarProvider.avatars(for:configuration:nameStyle:completion:)(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v55 = v6;
  v49 = *v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD50, &unk_21DC183E0);
  v12 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v44 - v13;
  v14 = *a2;
  v15 = a2[1];
  v48 = a2[2];
  LODWORD(v13) = *a3;
  v46 = *(a2 + 24);
  v47 = v13;
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  v50 = a4;
  if (v16)
  {
    v45 = a5;
    v61 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v52 = (v12 + 8);
    v44 = a1;
    v18 = (a1 + 104);
    v51 = xmmword_21DC09CF0;
    v57 = xmmword_21DC08D00;
    while (1)
    {
      v59 = v16;
      v19 = *(v18 - 6);
      v21 = *(v18 - 4);
      v20 = *(v18 - 3);
      v22 = *(v18 - 2);
      v23 = *v18;
      if (*v18)
      {
        v24 = *(v18 - 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
        v25 = swift_allocObject();
        *(v25 + 16) = v57;
        *(v25 + 32) = v24;
        *(v25 + 40) = v23;
        if (!v22)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v25 = MEMORY[0x277D84F90];
        if (!v22)
        {
LABEL_10:
          v26 = MEMORY[0x277D84F90];
          goto LABEL_11;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
      v26 = swift_allocObject();
      *(v26 + 16) = v57;
      *(v26 + 32) = v20;
      *(v26 + 40) = v22;
LABEL_11:
      v27 = *(v25 + 16);
      v58 = v19;
      if (v27 || *(v26 + 16))
      {
        v28 = objc_allocWithZone(MEMORY[0x277D445D8]);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v29 = sub_21DBFA5DC();

        v30 = sub_21DBFA5DC();

        v31 = [v28 initWithPhones:v29 emails:v30];

        if (v31)
        {
          __swift_project_boxed_opaque_existential_1(v55 + 2, v55[5]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
          v32 = swift_allocObject();
          v56 = v21;
          *(v32 + 16) = v51;
          *(v32 + 32) = [objc_opt_self() descriptorForRequiredKeys];
          v33 = v53;
          sub_21DBF6A7C();

          v34 = v54;
          sub_21DBF662C();
          (*v52)(v33, v34);
          sub_21DBF817C();

          goto LABEL_5;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
      }

      v60 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60910, &unk_21DC25FE0);
      swift_allocObject();
      sub_21DBF824C();

LABEL_5:

      v18 += 10;
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v16 = v59 - 1;
      if (v59 == 1)
      {
        v17 = v61;
        a5 = v45;
        a1 = v44;
        a4 = v50;
        break;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60910, &unk_21DC25FE0);
  v61 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65D70, &qword_21DC3AC90);
  sub_21D0D0F1C(&qword_27CE65D78, &qword_27CE65D70, &qword_21DC3AC90, MEMORY[0x277D83988]);
  sub_21DBF819C();

  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = a1;
  v37 = v46;
  v38 = v47;
  *(v36 + 32) = v47;
  *(v36 + 40) = v14;
  *(v36 + 48) = v15;
  v39 = v48;
  *(v36 + 56) = v48;
  *(v36 + 64) = v37;
  *(v36 + 72) = a4;
  *(v36 + 80) = a5;
  v40 = v49;
  *(v36 + 88) = v49;
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  v41 = sub_21DBF816C();
  sub_21DBF820C();

  v42 = swift_allocObject();
  *(v42 + 16) = v55;
  *(v42 + 24) = v14;
  *(v42 + 32) = v15;
  *(v42 + 40) = v39;
  *(v42 + 48) = v37;
  *(v42 + 56) = a1;
  *(v42 + 64) = v38;
  *(v42 + 72) = v50;
  *(v42 + 80) = a5;
  *(v42 + 88) = v40;
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  v43 = sub_21DBF816C();
  sub_21DBF822C();
}

uint64_t sub_21DAA6CB8(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v13 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v65 = result;
  if (result)
  {
    MEMORY[0x28223BE20](result);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DAA8864(a3, v13, sub_21DAA9C14);
    v54 = v15;

    v16 = MEMORY[0x277D84F90];
    v73 = MEMORY[0x277D84F90];
    v17 = *(v13 + 16);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v17)
    {
      v18 = v16;
      v19 = 0;
      v20 = MEMORY[0x277D84F90];
      v21 = 32;
      while (v19 < v17)
      {
        v22 = *(a3 + 16);
        if (v19 == v22)
        {
          goto LABEL_15;
        }

        if (v19 >= v22)
        {
          goto LABEL_36;
        }

        v23 = *(v13 + 32 + 8 * v19);
        v24 = (a3 + v21);
        v25 = *(a3 + v21 + 48);
        v70 = *(a3 + v21 + 32);
        v71 = v25;
        v72 = *(a3 + v21 + 64);
        v26 = *(a3 + v21 + 16);
        v68 = *(a3 + v21);
        v69 = v26;
        if (v23)
        {
          sub_21D1D9B34(&v68, v66);
          v27 = v23;
        }

        else
        {
          v28 = v24[3];
          *&v66[32] = v24[2];
          *&v66[48] = v28;
          *&v66[64] = v24[4];
          v29 = v24[1];
          *v66 = *v24;
          *&v66[16] = v29;
          sub_21D1D9B34(&v68, &v67);
          _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(v66);
          v27 = 0;
        }

        *v66 = v23;
        *&v66[24] = v69;
        *&v66[40] = v70;
        *&v66[56] = v71;
        *&v66[72] = v72;
        *&v66[8] = v68;
        v30 = v27;
        v31 = sub_21D0CF7E0(v66, &qword_27CE65D98, &qword_21DC3AF28);
        MEMORY[0x223D42D80](v31);
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        ++v19;
        sub_21DBFA6CC();
        v20 = v73;
        v17 = *(v13 + 16);
        v21 += 80;
        if (v19 == v17)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }

    else
    {
      v18 = v16;
      v20 = v16;
LABEL_15:
      v58 = v20;

      if (!(v58 >> 62))
      {
        v32 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v32)
        {
LABEL_38:

          v34 = MEMORY[0x277D84F90];
LABEL_39:
          sub_21DAA58A0(v54, v34);
          v50 = v49;

          *v66 = v50;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65DA0, &qword_21DC3AF30);
          swift_allocObject();
          sub_21DBF824C();
          v51 = *(v65 + 80);
          v52 = swift_allocObject();
          *(v52 + 16) = a7;
          *(v52 + 24) = a8;
          v53 = v51;

          sub_21DBF820C();
        }

LABEL_17:
        *&v68 = v18;
        result = sub_21D18F83C(0, v32 & ~(v32 >> 63), 0);
        if (v32 < 0)
        {
          __break(1u);
          return result;
        }

        v33 = 0;
        v34 = v68;
        v35 = *(a5 + 16);
        v57 = (a5 + 32);
        v59 = v35;
        v60 = v32;
        do
        {
          v62 = v33;
          if ((v58 & 0xC000000000000001) != 0)
          {
            v36 = MEMORY[0x223D44740]();
          }

          else
          {
            v36 = *(v58 + 32 + 8 * v33);
          }

          v37 = v36;
          v63 = v34;
          if (v35)
          {
            v38 = v57;
            v39 = v35;
            v40 = MEMORY[0x277D84F90];
            do
            {
              v41 = *v38;
              sub_21DAA81B0(v66);
              __swift_project_boxed_opaque_existential_1(v66, *&v66[24]);
              type metadata accessor for TTRAvatarImageRenderer();
              v42 = sub_21DAA85E0(v37, a6 & 1, a9, a10, v41);
              __swift_destroy_boxed_opaque_existential_0(v66);
              v43 = v42;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v40 = sub_21D215234(0, *(v40 + 2) + 1, 1, v40);
              }

              v45 = *(v40 + 2);
              v44 = *(v40 + 3);
              if (v45 >= v44 >> 1)
              {
                v40 = sub_21D215234((v44 > 1), v45 + 1, 1, v40);
              }

              *(v40 + 2) = v45 + 1;
              v46 = &v40[16 * v45];
              *(v46 + 4) = v42;
              *(v46 + 5) = v41;
              ++v38;
              --v39;
            }

            while (v39);
          }

          else
          {
            v40 = MEMORY[0x277D84F90];
          }

          v34 = v63;
          *&v68 = v63;
          v48 = *(v63 + 16);
          v47 = *(v63 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_21D18F83C((v47 > 1), v48 + 1, 1);
            v34 = v68;
          }

          v33 = v62 + 1;
          *(v34 + 16) = v48 + 1;
          *(v34 + 8 * v48 + 32) = v40;
          v35 = v59;
        }

        while (v62 + 1 != v60);

        goto LABEL_39;
      }
    }

    v32 = sub_21DBFBD7C();
    if (!v32)
    {
      goto LABEL_38;
    }

    goto LABEL_17;
  }

  return result;
}

char *sub_21DAA7290(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = (v2 + 32);
  v8 = *(a2 + 24);
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = *v7;
    sub_21DAA81B0(v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    type metadata accessor for TTRAvatarImageRenderer();
    v11 = sub_21DAA85E0(a1, v8, v5, v6, v10);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v12 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_21D215234(0, *(v9 + 2) + 1, 1, v9);
    }

    v14 = *(v9 + 2);
    v13 = *(v9 + 3);
    if (v14 >= v13 >> 1)
    {
      v9 = sub_21D215234((v13 > 1), v14 + 1, 1, v9);
    }

    *(v9 + 2) = v14 + 1;
    v15 = &v9[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v10;
    ++v7;
    --v3;
  }

  while (v3);
  return v9;
}

void sub_21DAA73F8(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, void (*a9)(uint64_t))
{
  if (qword_27CE570B0 != -1)
  {
    swift_once();
  }

  v15 = sub_21DBF84BC();
  __swift_project_value_buffer(v15, qword_27CE65D58);
  v16 = a1;
  v17 = sub_21DBF84AC();
  v18 = sub_21DBFAEBC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v60 = v20;
    *v19 = 136315138;
    swift_getErrorValue();
    v21 = sub_21DBFC74C();
    v23 = sub_21D0CDFB4(v21, v22, &v60);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_21D0C9000, v17, v18, "Unable to fetch avatars because %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x223D46520](v20, -1, -1);
    MEMORY[0x223D46520](v19, -1, -1);
  }

  *&v60 = a2;
  *(&v60 + 1) = a3;
  *&v61 = a5;
  BYTE8(v61) = a6 & 1;
  TTRParticipantAvatarProvider.genericAvatar(configuration:)(&v60, v59);
  v24 = v59[0];
  v25 = *(a7 + 16);
  if (!v25)
  {

    v27 = MEMORY[0x277D84F90];
    goto LABEL_62;
  }

  v65 = MEMORY[0x277D84F90];
  sub_21D18F81C(0, v25, 0);
  v26 = (a7 + 32);
  v27 = v65;
  for (i = v25 - 1; ; --i)
  {
    v29 = v26[2];
    v30 = v26[3];
    v31 = *v26;
    v61 = v26[1];
    v62 = v29;
    v32 = v26[4];
    v63 = v30;
    v64 = v32;
    v60 = v31;
    if (!a8)
    {
      if (*(&v61 + 1))
      {
        v33 = *(&v61 + 1);
        v34 = v61;
      }

      else
      {
        v33 = *(&v60 + 1);
        if (!*(&v60 + 1))
        {
          v33 = *(&v63 + 1);
          if (*(&v63 + 1))
          {
            v34 = v63;
            goto LABEL_11;
          }

          v33 = *(&v64 + 1);
          if (*(&v64 + 1))
          {
            v34 = v64;
            goto LABEL_11;
          }

          sub_21D1D9B34(&v60, v59);
LABEL_57:
          if (qword_280D1BAA8 != -1)
          {
            swift_once();
          }

          v36 = sub_21DBF516C();
          goto LABEL_42;
        }

        v34 = v60;
        sub_21DBF8E0C();
      }

      sub_21D1D9B34(&v60, v59);
      sub_21DBF8E0C();
      goto LABEL_44;
    }

    if (a8 == 1)
    {
      v33 = *(&v60 + 1);
      if (*(&v60 + 1))
      {
        v34 = v60;
LABEL_11:
        sub_21D1D9B34(&v60, v59);
LABEL_12:
        sub_21DBF8E0C();
        goto LABEL_44;
      }

      v44 = v61;
      v45 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
      v46 = swift_allocObject();
      v46[1] = xmmword_21DC08D20;
      v46[2] = v44;
      v46[3] = v45;
      sub_21D1D9B34(&v60, v59);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90, &unk_21DC09D00);
      sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90, &unk_21DC09D00, MEMORY[0x277D83970]);
      v47 = sub_21DBFA41C();

      if (*(v47 + 16))
      {
        v59[0] = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
        sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
        v34 = sub_21DBFA07C();
        v33 = v48;

        goto LABEL_44;
      }

      v33 = *(&v63 + 1);
      if (*(&v63 + 1))
      {
        v34 = v63;
        goto LABEL_12;
      }

      v33 = *(&v64 + 1);
      if (*(&v64 + 1))
      {
        v34 = v64;
        goto LABEL_12;
      }

      goto LABEL_57;
    }

    if (*(&v60 + 1))
    {
      v35 = HIBYTE(*(&v60 + 1)) & 0xFLL;
      if ((*(&v60 + 1) & 0x2000000000000000) == 0)
      {
        v35 = v60 & 0xFFFFFFFFFFFFLL;
      }

      if (v35)
      {
        sub_21D1D9B34(&v60, v59);
        v36 = sub_21DBFA3CC();
LABEL_42:
        v34 = v36;
        v33 = v37;
        goto LABEL_44;
      }
    }

    v38 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A20, &unk_21DC09D10);
    v39 = swift_allocObject();
    v40 = v39;
    *(v39 + 16) = xmmword_21DC08D20;
    if (*(&v38 + 1))
    {
      v41 = HIBYTE(*(&v38 + 1)) & 0xFLL;
      if ((*(&v38 + 1) & 0x2000000000000000) == 0)
      {
        v41 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        sub_21D1D9B34(&v60, v59);
        v42 = sub_21DBFA3CC();
      }

      else
      {
        sub_21D1D9B34(&v60, v59);
        v42 = 0;
        v43 = 0;
      }

      *(v40 + 32) = v42;
      *(v40 + 40) = v43;
      v49 = *(&v62 + 1);
      if (!*(&v62 + 1))
      {
LABEL_31:
        *(v40 + 48) = 0;
        *(v40 + 56) = 0;
        goto LABEL_40;
      }
    }

    else
    {
      *(v39 + 32) = 0;
      *(v39 + 40) = 0;
      sub_21D1D9B34(&v60, v59);
      v49 = *(&v62 + 1);
      if (!*(&v62 + 1))
      {
        goto LABEL_31;
      }
    }

    v50 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v50 = v62 & 0xFFFFFFFFFFFFLL;
    }

    if (v50)
    {
      v51 = sub_21DBFA3CC();
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    *(v40 + 48) = v51;
    *(v40 + 56) = v52;
LABEL_40:
    v59[0] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A28, &qword_21DC3AF20);
    sub_21D0D0F1C(&qword_27CE58A30, &qword_27CE58A28, &qword_21DC3AF20, MEMORY[0x277D83970]);
    v53 = sub_21DBFA41C();

    if (*(v53 + 16))
    {
      v59[0] = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A38, &unk_21DC09D20);
      sub_21D0D0F1C(&qword_27CE58A40, &qword_27CE58A38, &unk_21DC09D20, MEMORY[0x277D83970]);
      v36 = sub_21DBFA3DC();
      goto LABEL_42;
    }

    v34 = 0;
    v33 = 0xE000000000000000;
LABEL_44:
    sub_21DBF8E0C();
    sub_21D1D9B90(&v60);
    v65 = v27;
    v55 = *(v27 + 16);
    v54 = *(v27 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_21D18F81C((v54 > 1), v55 + 1, 1);
      v27 = v65;
    }

    *(v27 + 16) = v55 + 1;
    v56 = (v27 + 24 * v55);
    v56[4] = v24;
    v56[5] = v34;
    v56[6] = v33;
    if (!i)
    {
      break;
    }

    v26 += 5;
  }

LABEL_62:
  a9(v27);
}

void TTRParticipantAvatarProvider.genericAvatar(configuration:)(double *a1@<X0>, char **a2@<X8>)
{
  v3 = *(a1 + 2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = (v3 + 32);
    v8 = MEMORY[0x277D84F90];
    do
    {
      v9 = *v7;
      sub_21DAA94AC(v5, v6, *v7);
      v11 = v10;
      v12 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_21D215234(0, *(v8 + 2) + 1, 1, v8);
      }

      v14 = *(v8 + 2);
      v13 = *(v8 + 3);
      if (v14 >= v13 >> 1)
      {
        v8 = sub_21D215234((v13 > 1), v14 + 1, 1, v8);
      }

      *(v8 + 2) = v14 + 1;
      v15 = &v8[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v9;
      ++v7;
      --v4;
    }

    while (v4);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  *a2 = v8;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
}

void sub_21DAA7C98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t), double a7, double a8)
{
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DAA8C28(a3, v10, sub_21DAA9D70);
    v13 = v12;

    a6(v13);
  }
}

uint64_t sub_21DAA7DD4@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v8 = a1[5];
  v50 = a1[4];
  v51 = v8;
  v52 = a1[6];
  v9 = a1[1];
  v46 = *a1;
  v47 = v9;
  v10 = a1[3];
  v48 = a1[2];
  v49 = v10;
  v11 = *(&v46 + 1);
  if (*(&v46 + 1))
  {
    if (*(&v52 + 1))
    {
      v12 = a1[5];
      *(a5 + 64) = a1[4];
      *(a5 + 80) = v12;
      *(a5 + 96) = a1[6];
      v13 = a1[1];
      *a5 = *a1;
      *(a5 + 16) = v13;
      v14 = a1[3];
      *(a5 + 32) = a1[2];
      *(a5 + 48) = v14;
      return sub_21D1D9C94(&v46, &v36);
    }

    v20 = *(&v46 + 1);
    goto LABEL_11;
  }

  v16 = a6;
  v17 = a7;
  v18 = a3;
  v19 = a4;
  if (a2)
  {
    v20 = a2;
  }

  else
  {
    v21 = a1[4];
    v43 = a1[3];
    v44 = v21;
    v45 = a1[5];
    v22 = a1[2];
    v41 = a1[1];
    v42 = v22;
    sub_21D1D9B34(&v47, &v36);
    v20 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&v41);
    v38 = v43;
    v39 = v44;
    v40 = v45;
    v36 = v41;
    v37 = v42;
    sub_21D1D9B90(&v36);
    a2 = 0;
  }

  v23 = *(&v52 + 1);
  v24 = a2;
  if (!v23)
  {
    a4 = v19;
    a3 = v18;
    a7 = v17;
    a6 = v16;
LABEL_11:
    *&v36 = a6;
    *(&v36 + 1) = a7;
    *&v37 = a3;
    BYTE8(v37) = a4 & 1;
    v27 = v11;
    v28 = sub_21DAA7290(v20, &v36);
    if (*(v28 + 2))
    {
      v26 = *(v28 + 4);
      v29 = v26;

      v23 = 0;
    }

    else
    {

      v23 = 0;
      v26 = 0;
    }

    goto LABEL_14;
  }

  v25 = 0;
  v26 = v23;
LABEL_14:
  v30 = v46;
  v31 = v52;
  *a5 = v46;
  *(a5 + 8) = v20;
  v32 = v50;
  *(a5 + 48) = v49;
  *(a5 + 64) = v32;
  *(a5 + 80) = v51;
  v33 = v48;
  *(a5 + 16) = v47;
  *(a5 + 32) = v33;
  *(a5 + 96) = v31;
  *(a5 + 104) = v26;
  v34 = v23;
  v35 = v30;
  return sub_21D1D9B34(&v47, &v36);
}

uint64_t sub_21DAA7FBC(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (qword_27CE570B0 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE65D58);
  v8 = a1;
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAEBC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_21DBFC74C();
    v15 = sub_21D0CDFB4(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_21D0C9000, v9, v10, "Unable to fetch avatars because %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  return a2(a4);
}

id sub_21DAA8150()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = v0;
    v4 = (*(v0 + 56))();
    v5 = *(v0 + 72);
    *(v3 + 72) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_21DAA81B0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_21DAA9C90(v1 + 88, &v9);
  if (v10)
  {
    return sub_21D0D0FD0(&v9, a1);
  }

  sub_21D0CF7E0(&v9, &qword_27CE65D80, &qword_21DC3AC98);
  v4 = sub_21DAA8150();
  v5 = [objc_opt_self() settingsWithContactStore:v4 cacheSize:0];

  v6 = [objc_allocWithZone(MEMORY[0x277CBDBD0]) initWithSettings_];
  v7 = type metadata accessor for TTRAvatarImageRenderer();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  a1[3] = v7;
  a1[4] = &off_282EE62F8;
  *a1 = v8;
  sub_21D0D32E4(a1, &v9);
  swift_beginAccess();
  sub_21DAA9D00(&v9, v1 + 88);
  return swift_endAccess();
}

void sub_21DAA82EC(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.65 alpha:1.0];
  v13 = [v12 CGColor];

  CGContextSetFillColorWithColor(a1, v13);
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  CGContextFillRect(a1, v20);
  CGContextSaveGState(a1);
  v21.origin.x = a3;
  v21.origin.y = a4;
  v21.size.width = a5;
  v21.size.height = a6;
  CGContextBeginTransparencyLayerWithRect(a1, v21, 0);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  [a2 drawInRect_];
  CGContextSetBlendMode(a1, kCGBlendModeSourceIn);
  v14 = objc_opt_self();
  v15 = [v14 whiteColor];
  v16 = [v15 CGColor];

  CGContextSetFillColorWithColor(a1, v16);
  v17 = [v14 whiteColor];
  v18 = [v17 CGColor];

  CGContextSetStrokeColorWithColor(a1, v18);
  v22.origin.x = a3;
  v22.origin.y = a4;
  v22.size.width = a5;
  v22.size.height = a6;
  CGContextFillRect(a1, v22);
  CGContextEndTransparencyLayer(a1);

  CGContextRestoreGState(a1);
}

uint64_t TTRParticipantAvatarProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  sub_21D0CF7E0(v0 + 88, &qword_27CE65D80, &qword_21DC3AC98);
  return v0;
}

uint64_t TTRParticipantAvatarProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  sub_21D0CF7E0(v0 + 88, &qword_27CE65D80, &qword_21DC3AC98);

  return swift_deallocClassInstance();
}

id sub_21DAA85E0(void *a1, char a2, double a3, double a4, double a5)
{
  v7 = *v5;
  v8 = [objc_opt_self() scopeWithPointSize:a2 & 1 scale:0 rightToLeft:a3 style:{a4, a5}];
  v9 = *(v7 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC09CF0;
  *(v10 + 32) = a1;
  sub_21D4B6DC0();
  v11 = a1;
  v12 = sub_21DBFA5DC();

  v13 = [v9 avatarImageForContacts:v12 scope:v8];

  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_21DAA8700(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x223D44FA0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x223D44FD0](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21DAA8768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a5 + 40) = a6;
  *(a5 + 48) = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a5 + 16));
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a1, a6);
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0;
  *(a5 + 56) = a2;
  *(a5 + 64) = a3;
  *(a5 + 72) = 0;
  *(a5 + 80) = a4;
  return a5;
}

uint64_t _s15RemindersUICore39TTRParticipantAvatarRenderConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (sub_21D1D567C(*(a1 + 16), *(a2 + 16)))
  {
    return v4 ^ v5 ^ 1u;
  }

  else
  {
    return 0;
  }
}

void sub_21DAA8864(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, void *))
{
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v6 >= v5)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v63 = MEMORY[0x277D84F90];
  sub_21D18E678(0, v7, 0);
  v8 = v63;
  v42 = v4;
  v43 = a2;
  v48 = v6;
  v49 = v5;
  v46 = v7;
  if (!v7)
  {
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v14 = 0;
    v25 = 0;
    if (!v5)
    {
LABEL_21:

      return;
    }

    goto LABEL_22;
  }

  v9 = v63;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v5)
  {
    v10 = 0;
    v11 = (v42 + 32);
    v45 = a2 + 32;
    while (1)
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v12 = v11[3];
      v52 = v11[2];
      v53 = v12;
      v54 = v11[4];
      v13 = v11[1];
      v50 = *v11;
      v51 = v13;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_33;
      }

      if (v6 == v10)
      {
        goto LABEL_40;
      }

      if (v10 >= v6)
      {
        goto LABEL_34;
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_35;
      }

      v44 = v10 + 1;
      v15 = *(v45 + 8 * v10);
      v16 = v11[3];
      v59 = v11[2];
      v60 = v16;
      v61 = v11[4];
      v17 = v11[1];
      v57 = *v11;
      v58 = v17;
      v62 = v15;
      sub_21D1D9B34(&v50, v56);
      v18 = v15;
      if (*(&v57 + 1) == 1)
      {
        goto LABEL_40;
      }

      v19 = a3(&v57, v15);
      v21 = v20;
      v52 = v59;
      v53 = v60;
      v54 = v61;
      v55 = v62;
      v50 = v57;
      v51 = v58;
      sub_21D0CF7E0(&v50, &qword_27CE65DA8, &qword_21DC3AF38);
      v8 = v9;
      v63 = v9;
      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_21D18E678((v22 > 1), v23 + 1, 1);
        v8 = v63;
      }

      *(v8 + 16) = v23 + 1;
      v24 = v8 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      if (v46 == ++v10)
      {
        break;
      }

      v9 = v8;
      v11 += 5;
      v6 = v48;
      v5 = v49;
      if (v14 == v49)
      {
        goto LABEL_40;
      }
    }

    v4 = v42;
    v6 = v48;
    v5 = v49;
    v25 = v44;
    if (v14 == v49)
    {
      goto LABEL_21;
    }

LABEL_22:
    v26 = 80 * v14 + 32;
    while (v14 < v5)
    {
      v27 = (v4 + v26);
      v28 = *(v4 + v26 + 48);
      v56[2] = *(v4 + v26 + 32);
      v56[3] = v28;
      v56[4] = *(v4 + v26 + 64);
      v29 = *(v4 + v26 + 16);
      v56[0] = *(v4 + v26);
      v56[1] = v29;
      v30 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_37;
      }

      if (v6 == v25)
      {
        goto LABEL_21;
      }

      if (v25 >= v6)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v25, 1))
      {
        goto LABEL_39;
      }

      v31 = *(v43 + 8 * v25 + 32);
      v32 = v27[3];
      v59 = v27[2];
      v60 = v32;
      v61 = v27[4];
      v33 = v27[1];
      v57 = *v27;
      v58 = v33;
      v62 = v31;
      v34 = v25;
      sub_21D1D9B34(v56, &v50);
      v35 = v31;
      v36 = a3(&v57, v31);
      v38 = v37;
      v52 = v59;
      v53 = v60;
      v54 = v61;
      v55 = v62;
      v50 = v57;
      v51 = v58;
      sub_21D0CF7E0(&v50, &qword_27CE65DA8, &qword_21DC3AF38);
      v63 = v8;
      v40 = *(v8 + 16);
      v39 = *(v8 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_21D18E678((v39 > 1), v40 + 1, 1);
        v8 = v63;
      }

      *(v8 + 16) = v40 + 1;
      v41 = v8 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      v25 = v34 + 1;
      ++v14;
      v26 += 80;
      v6 = v48;
      v5 = v49;
      v4 = v42;
      if (v30 == v49)
      {
        goto LABEL_21;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

LABEL_40:
  __break(1u);
}

void sub_21DAA8C28(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, __int128 *, void *))
{
  v3 = a2;
  v4 = a1;
  v5 = *(a1 + 16);
  v51 = *(a2 + 16);
  if (v51 >= v5)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v76 = MEMORY[0x277D84F90];
  sub_21D18F87C(0, v6, 0);
  v7 = v76;
  v48 = v3;
  v49 = v4;
  if (!v6)
  {
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v13 = 0;
    v14 = 0;
LABEL_20:
    v28 = v51;
    if (v13 == v5)
    {
LABEL_21:

      return;
    }

    v29 = 112 * v13 + 32;
    while (v13 < v5)
    {
      v30 = (v4 + v29);
      v31 = *(v4 + v29 + 80);
      v65 = *(v4 + v29 + 64);
      v66 = v31;
      v67 = *(v4 + v29 + 96);
      v32 = *(v4 + v29 + 16);
      v61 = *(v4 + v29);
      v62 = v32;
      v33 = *(v4 + v29 + 48);
      v63 = *(v4 + v29 + 32);
      v64 = v33;
      v34 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_37;
      }

      if (v28 == v14)
      {
        goto LABEL_21;
      }

      if (v14 >= v28)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v14, 1))
      {
        goto LABEL_39;
      }

      v35 = *(v3 + 8 * v14 + 32);
      v36 = v30[5];
      v72 = v30[4];
      v73 = v36;
      v74 = v30[6];
      v37 = v30[1];
      v68 = *v30;
      v69 = v37;
      v38 = v30[3];
      v70 = v30[2];
      v71 = v38;
      v75 = v35;
      sub_21D1D9C94(&v61, &v53);
      v39 = v35;
      a3(v52, &v68, v35);
      v57 = v72;
      v58 = v73;
      v59 = v74;
      v60 = v75;
      v53 = v68;
      v54 = v69;
      v55 = v70;
      v56 = v71;
      sub_21D0CF7E0(&v53, &qword_27CE65DB0, &unk_21DC3AF40);
      v76 = v7;
      v41 = *(v7 + 16);
      v40 = *(v7 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_21D18F87C((v40 > 1), v41 + 1, 1);
        v7 = v76;
      }

      *(v7 + 16) = v41 + 1;
      v42 = (v7 + 112 * v41);
      v43 = v52[0];
      v44 = v52[2];
      v42[3] = v52[1];
      v42[4] = v44;
      v42[2] = v43;
      v45 = v52[3];
      v46 = v52[4];
      v47 = v52[6];
      v42[7] = v52[5];
      v42[8] = v47;
      v42[5] = v45;
      v42[6] = v46;
      ++v14;
      ++v13;
      v29 += 112;
      v3 = v48;
      v4 = v49;
      v28 = v51;
      if (v34 == v5)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_36;
  }

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v5)
  {
    v8 = 0;
    v9 = (v4 + 32);
    while (v8 < v5)
    {
      v10 = v9[5];
      v57 = v9[4];
      v58 = v10;
      v59 = v9[6];
      v11 = v9[1];
      v53 = *v9;
      v54 = v11;
      v12 = v9[3];
      v55 = v9[2];
      v56 = v12;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_33;
      }

      if (v51 == v8)
      {
        goto LABEL_40;
      }

      if (v8 >= v51)
      {
        goto LABEL_34;
      }

      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_35;
      }

      v15 = *(v48 + 32 + 8 * v8);
      v16 = v9[5];
      v72 = v9[4];
      v73 = v16;
      v74 = v9[6];
      v17 = v9[1];
      v68 = *v9;
      v69 = v17;
      v18 = v9[3];
      v70 = v9[2];
      v71 = v18;
      v75 = v15;
      sub_21D1D9C94(&v53, &v61);
      v19 = v15;
      if (!v68)
      {
        goto LABEL_40;
      }

      a3(&v61, &v68, v15);
      v57 = v72;
      v58 = v73;
      v59 = v74;
      v60 = v75;
      v53 = v68;
      v54 = v69;
      v55 = v70;
      v56 = v71;
      sub_21D0CF7E0(&v53, &qword_27CE65DB0, &unk_21DC3AF40);
      v76 = v7;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_21D18F87C((v20 > 1), v21 + 1, 1);
        v7 = v76;
      }

      *(v7 + 16) = v21 + 1;
      v22 = (v7 + 112 * v21);
      v23 = v61;
      v24 = v63;
      v22[3] = v62;
      v22[4] = v24;
      v22[2] = v23;
      v25 = v64;
      v26 = v65;
      v27 = v67;
      v22[7] = v66;
      v22[8] = v27;
      v22[5] = v25;
      v22[6] = v26;
      if (v6 == ++v8)
      {
        v3 = v48;
        v4 = v49;
        goto LABEL_20;
      }

      v9 += 7;
      if (v13 == v5)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

LABEL_40:
  __break(1u);
}

uint64_t sub_21DAA9024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a1, a6);
  *(v16 + 40) = a6;
  *(v16 + 48) = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v16 + 16));
  (*(v13 + 32))(boxed_opaque_existential_0, v15, a6);
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  *(v16 + 120) = 0;
  *(v16 + 56) = a2;
  *(v16 + 64) = a3;
  *(v16 + 72) = 0;
  *(v16 + 80) = a4;
  return v16;
}

uint64_t sub_21DAA9218(void *a1, uint64_t *a2, _BYTE *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v8 = a2[6];
  v7 = a2[7];
  v10 = a2[8];
  v9 = a2[9];
  if (!*a3)
  {
    if (a1)
    {
      v24 = a2[6];
      v18 = [a1 givenName];
      v19 = sub_21DBFA16C();
      v21 = v20;

      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        return v19;
      }

      v8 = v24;
    }

    if (!v5)
    {
      if (!v3)
      {
        if (v7)
        {
          sub_21DBF8E0C();
          return v8;
        }

        else if (v9)
        {
          sub_21DBF8E0C();
          return v10;
        }

        else
        {
          if (qword_280D1BAA8 != -1)
          {
            swift_once();
          }

          return sub_21DBF516C();
        }
      }

      sub_21DBF8E0C();
      v6 = v4;
    }

    sub_21DBF8E0C();
    return v6;
  }

  if (*a3 == 1)
  {
    if (a1)
    {
      v12 = objc_opt_self();
      v13 = a1;
      v14 = [v12 stringFromContact:v13 style:0];
      if (v14)
      {
        v15 = v14;
        v16 = sub_21DBFA16C();

        return v16;
      }
    }

    return TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0)._countAndFlagsBits;
  }

  else
  {
    v23 = TTRParticipantModel.monogram()();
    result = v23.value._countAndFlagsBits;
    if (!v23.value._object)
    {
      return 0;
    }
  }

  return result;
}

void sub_21DAA94AC(double a1, double a2, double a3)
{
  v6 = sub_21DBF5DCC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBFA12C();
  v11 = [objc_opt_self() _systemImageNamed_];

  if (!v11)
  {
    return;
  }

  v12 = [objc_opt_self() configurationWithScale_];
  v13 = [v11 imageWithConfiguration_];

  v14 = a1 * a3;
  if (v14 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = a2 * a3;
  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v14 * 4.0;
  v17 = COERCE__INT64(fabs(v14 * 4.0)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v17)
  {
    goto LABEL_20;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v18 = v16;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v20 = __CGBitmapContextCreate(v14, v15, v18, DeviceRGB);

  if (v20 && (v23.origin.x = 0.0, v23.origin.y = 0.0, v23.size.width = v14, v23.size.height = v15, CGRectGetMidX(v23), v24.origin.x = 0.0, v24.origin.y = 0.0, v24.size.width = v14, v24.size.height = v15, CGRectGetMidY(v24), sub_21DBFAE3C(), (*(v7 + 104))(v9, *MEMORY[0x277CBF258], v6), sub_21DBFAE2C(), (*(v7 + 8))(v9, v6), sub_21DAA82EC(v20, v13, 0.0, 0.0, v14, v15), Image = CGBitmapContextCreateImage(v20), v20, Image))
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:Image scale:1 orientation:a3];
  }

  else
  {
  }
}

unint64_t sub_21DAA9838()
{
  result = qword_27CE65D88;
  if (!qword_27CE65D88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRParticipantAvatarRenderConfiguration, &type metadata for TTRParticipantAvatarRenderConfiguration, v0, v1);
    atomic_store(result, &qword_27CE65D88);
  }

  return result;
}

unint64_t sub_21DAA9890()
{
  result = qword_27CE65D90;
  if (!qword_27CE65D90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRParticipantAvatarNameStyle, &type metadata for TTRParticipantAvatarNameStyle, v0, v1);
    atomic_store(result, &qword_27CE65D90);
  }

  return result;
}

uint64_t assignWithCopy for TTRParticipantAvatarResult.Image(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for TTRParticipantAvatarResult.Image(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRParticipantAvatarResult.Image(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TTRParticipantAvatarResult.Image(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTRParticipantAvatarRenderConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRParticipantAvatarRenderConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for TTRParticipantAvatarRenderConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t sub_21DAA9C14(_OWORD *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = a1[3];
  v8[2] = a1[2];
  v8[3] = v4;
  v8[4] = a1[4];
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v7 = v3;
  return sub_21DAA9218(a2, v8, &v7);
}

uint64_t sub_21DAA9C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65D80, &qword_21DC3AC98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DAA9D00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65D80, &qword_21DC3AC98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Int __swiftcall Int.init()()
{
  result = qword_27CE65DB8;
  if (__OFADD__(qword_27CE65DB8, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_27CE65DB8;
  }

  return result;
}

id TTRIAttachmentImportingController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void __swiftcall TTRIAttachmentImportingController.createPicker(of:)(UIViewController_optional *__return_ptr retstr, RemindersUICore::TTRIAttachmentImportingController::Source of)
{
  if (*of)
  {
    if (*of == 1)
    {
      [objc_msgSend(objc_allocWithZone(MEMORY[0x277D05D68]) init)];
      return;
    }

    v3 = [objc_allocWithZone(MEMORY[0x277D755C8]) init];
    [v3 setDelegate_];
    [v3 setSourceType_];
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D755C8]) init];
    [v3 setDelegate_];
    [v3 setSourceType_];
  }

  [v3 ttr:4 setImagePickerSavingOptions:?];
}

UIMenu __swiftcall TTRIAttachmentImportingController.menuForAvailableSources(presentingIn:)(UIViewController *presentingIn)
{
  v1 = sub_21DAAA400();
  v2 = v1[2];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
    v3 = v1 + 8;
    do
    {
      v4 = *(v3 - 4);
      v5 = *(v3 - 3);
      v7 = *(v3 - 2);
      v6 = *(v3 - 1);
      v8 = *v3;
      v3 += 5;
      v9 = swift_allocObject();
      *(v9 + 16) = v6;
      *(v9 + 24) = v8;
      v10 = swift_allocObject();
      v10[2] = v4;
      v10[3] = v5;
      v10[4] = v7;
      v10[5] = sub_21D11DA60;
      v10[6] = v9;
      v11 = v7;
      swift_bridgeObjectRetain_n();
      v12 = v11;

      sub_21DBFB77C();
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      --v2;
    }

    while (v2);

    if (!(v14 >> 62))
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
    sub_21DBF8E0C();
    sub_21DBFC33C();

    goto LABEL_6;
  }

  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_8;
  }

LABEL_5:
  sub_21DBF8E0C();
  sub_21DBFC65C();
  sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
LABEL_6:

  sub_21D0D8CF0(0, &qword_280D0C1F0, 0x277D75710);
  return sub_21DBFB58C();
}

uint64_t sub_21DAAA154()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65DC0);
  v1 = __swift_project_value_buffer(v0, qword_27CE65DC0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double TTRIAttachmentImportingController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*TTRIAttachmentImportingController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

uint64_t TTRIAttachmentImportingController.Source.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

void *sub_21DAAA400()
{
  _s15RemindersUICore33TTRIAttachmentImportingControllerC16availableSourcesShyAC6SourceOGvgZ_0();
  v0 = &off_278331000;
  if (sub_21D22D5B8())
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v41 = sub_21DBF516C();
    v2 = v1;
    v3 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = v5;
    v7[3] = v6;
    v7[4] = sub_21DAAAC2C;
    v7[5] = 0;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_21DAAC534;
    *(v8 + 24) = v7;
    sub_21DBF8E0C();
    v9 = v4;

    v10 = sub_21D214A2C(0, 1, 1, MEMORY[0x277D84F90]);
    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_21D214A2C((v11 > 1), v12 + 1, 1, v10);
    }

    v10[2] = v12 + 1;
    v13 = &v10[5 * v12];
    v13[4] = v41;
    v13[5] = v2;
    v13[6] = v4;
    v13[7] = sub_21D0E622C;
    v13[8] = v8;
    v0 = &off_278331000;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (sub_21D22D5B8())
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v42 = sub_21DBF516C();
    v15 = v14;
    v16 = sub_21DBFA12C();
    v17 = [objc_opt_self() v0[413]];

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = v19;
    v20[4] = sub_21DAAAC34;
    v20[5] = 0;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_21DAAC534;
    *(v21 + 24) = v20;
    sub_21DBF8E0C();
    v22 = v17;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_21D214A2C(0, v10[2] + 1, 1, v10);
    }

    v24 = v10[2];
    v23 = v10[3];
    if (v24 >= v23 >> 1)
    {
      v10 = sub_21D214A2C((v23 > 1), v24 + 1, 1, v10);
    }

    v10[2] = v24 + 1;
    v25 = &v10[5 * v24];
    v25[4] = v42;
    v25[5] = v15;
    v25[6] = v17;
    v25[7] = sub_21D0E622C;
    v25[8] = v21;
    v0 = &off_278331000;
  }

  v26 = sub_21D22D5B8();

  if (v26)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v27 = sub_21DBF516C();
    v29 = v28;
    v30 = sub_21DBFA12C();
    v31 = [objc_opt_self() v0[413]];

    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = v33;
    v34[4] = sub_21DAAACBC;
    v34[5] = 0;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_21DAAC4E8;
    *(v35 + 24) = v34;
    sub_21DBF8E0C();
    v36 = v31;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_21D214A2C(0, v10[2] + 1, 1, v10);
    }

    v38 = v10[2];
    v37 = v10[3];
    if (v38 >= v37 >> 1)
    {
      v10 = sub_21D214A2C((v37 > 1), v38 + 1, 1, v10);
    }

    v10[2] = v38 + 1;
    v39 = &v10[5 * v38];
    v39[4] = v27;
    v39[5] = v29;
    v39[6] = v31;
    v39[7] = sub_21D0E6070;
    v39[8] = v35;
  }

  return v10;
}

void sub_21DAAAB8C(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      a3(v5, v6);

      v5 = v7;
    }
  }
}

void sub_21DAAAC34(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D05D68]) init];
  [v4 setDelegate_];
  [a2 presentViewController:v4 animated:1 completion:0];
}

void sub_21DAAACC4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D755C8]) init];
  [v6 setDelegate_];
  [v6 setSourceType_];
  [v6 ttr:4 setImagePickerSavingOptions:?];
  [a2 presentViewController:v6 animated:1 completion:0];
}

id TTRIAttachmentImportingController.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id TTRIAttachmentImportingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TTRIAttachmentImportingController.imagePickerController(_:didFinishPickingMediaWithInfo:)(UIImagePickerController *_, Swift::OpaquePointer didFinishPickingMediaWithInfo)
{
  v5 = swift_allocObject();
  v5[2]._rawValue = didFinishPickingMediaWithInfo._rawValue;
  v5[3]._rawValue = v2;
  v8[4] = sub_21DAAC308;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21D0D74FC;
  v8[3] = &block_descriptor_12_6;
  v6 = _Block_copy(v8);
  sub_21DBF8E0C();
  v7 = v2;

  [(UIImagePickerController *)_ dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

void sub_21DAAAFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v64 - v5;
  v7 = type metadata accessor for TTRDirectlySavableImageData(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  if (*(a1 + 16))
  {
    v22 = *MEMORY[0x277D77470];
    v23 = sub_21D10FE34(v22);
    if (v24)
    {
      sub_21D0CEB98(*(a1 + 56) + 32 * v23, v67);

      if (swift_dynamicCast())
      {
        v26 = v65;
        v25 = v66;
        sub_21D1BAF70(v65, v66);
        TTRDirectlySavableImageData.init(data:)(v26, v25, v18);
        sub_21DAAC424(v18, v21, type metadata accessor for TTRDirectlySavableImageData);
        if (qword_27CE570B8 != -1)
        {
          swift_once();
        }

        v36 = sub_21DBF84BC();
        __swift_project_value_buffer(v36, qword_27CE65DC0);
        sub_21D2329F8(v21, v15);
        v37 = sub_21DBF84AC();
        v38 = sub_21DBFAEDC();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v67[0] = v40;
          *v39 = 136315138;
          v64 = v37;
          TTRDirectlySavableImageData.debugDescription.getter();
          v42 = v41;
          v44 = v43;
          sub_21DAAC48C(v15);
          v45 = sub_21D0CDFB4(v42, v44, v67);

          *(v39 + 4) = v45;
          v46 = v64;
          _os_log_impl(&dword_21D0C9000, v64, v38, "TTRIAttachmentImportingController: picked image w/ data {imageData: %s}", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x223D46520](v40, -1, -1);
          MEMORY[0x223D46520](v39, -1, -1);
          sub_21D17B8A8(v26, v25);

LABEL_26:
          v58 = a2 + OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v59 = *(v58 + 8);
            ObjectType = swift_getObjectType();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65F10, &qword_21DC09980);
            v61 = *(type metadata accessor for TTRUnsavedAttachment(0) - 8);
            v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
            v63 = swift_allocObject();
            *(v63 + 16) = xmmword_21DC08D00;
            sub_21D2329F8(v21, v63 + v62);
            swift_storeEnumTagMultiPayload();
            (*(v59 + 16))(a2, v63, ObjectType, v59);
            swift_unknownObjectRelease();
          }

          sub_21DAAC48C(v21);
          return;
        }

        sub_21D17B8A8(v26, v25);

        v47 = v15;
        goto LABEL_25;
      }
    }

    else
    {
    }

    if (*(a1 + 16))
    {
      v27 = sub_21D10FE34(*MEMORY[0x277D76A80]);
      if (v28)
      {
        sub_21D0CEB98(*(a1 + 56) + 32 * v27, v67);
        sub_21D0D8CF0(0, &qword_280D17688, 0x277D755B8);
        if (swift_dynamicCast())
        {
          v29 = v65;
          v30 = sub_21DBF843C();
          (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
          v31 = v29;
          TTRDirectlySavableImageData.init(image:sourceUTI:)(v31, v6, v12);
          sub_21DAAC424(v12, v21, type metadata accessor for TTRDirectlySavableImageData);
          if (qword_27CE570B8 != -1)
          {
            swift_once();
          }

          v48 = sub_21DBF84BC();
          __swift_project_value_buffer(v48, qword_27CE65DC0);
          sub_21D2329F8(v21, v9);
          v49 = sub_21DBF84AC();
          v50 = sub_21DBFAEDC();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v67[0] = v52;
            *v51 = 136315138;
            TTRDirectlySavableImageData.debugDescription.getter();
            v54 = v53;
            v56 = v55;
            sub_21DAAC48C(v9);
            v57 = sub_21D0CDFB4(v54, v56, v67);

            *(v51 + 4) = v57;
            _os_log_impl(&dword_21D0C9000, v49, v50, "TTRIAttachmentImportingController: picked image {imageData: %s}", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v52);
            MEMORY[0x223D46520](v52, -1, -1);
            MEMORY[0x223D46520](v51, -1, -1);

            goto LABEL_26;
          }

          v47 = v9;
LABEL_25:
          sub_21DAAC48C(v47);
          goto LABEL_26;
        }
      }
    }
  }

  if (qword_27CE570B8 != -1)
  {
    swift_once();
  }

  v32 = sub_21DBF84BC();
  __swift_project_value_buffer(v32, qword_27CE65DC0);
  v33 = sub_21DBF84AC();
  v34 = sub_21DBFAEBC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_21D0C9000, v33, v34, "TTRIAttachmentImportingController: failed to get image or image data", v35, 2u);
    MEMORY[0x223D46520](v35, -1, -1);
  }
}

void sub_21DAAB9E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v11[4] = a3;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21D0D74FC;
  v11[3] = a4;
  v9 = _Block_copy(v11);
  v10 = v4;

  [a1 dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);
}

double sub_21DAABAA8(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_21DAABB60(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v14[4] = a5;
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21D0D74FC;
  v14[3] = a6;
  v11 = _Block_copy(v14);
  v12 = a1;
  v13 = a3;

  [v13 dismissViewControllerAnimated:1 completion:v11];

  _Block_release(v11);
}

Swift::Void __swiftcall TTRIAttachmentImportingController.documentCameraViewController(_:didFinishWith:)(VNDocumentCameraViewController *_, VNDocumentCameraScan didFinishWith)
{
  v5 = swift_allocObject();
  v5[2].super.isa = didFinishWith.super.isa;
  v5[3].super.isa = v2;
  v9[4] = sub_21DAAC310;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21D0D74FC;
  v9[3] = &block_descriptor_24_4;
  v6 = _Block_copy(v9);
  v7 = didFinishWith.super.isa;
  v8 = v2;

  [(VNDocumentCameraViewController *)_ dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

void sub_21DAABD30(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRUnsavedAttachment(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = (&v33 - v10);
  if ([a1 pageCount] >= 1)
  {
    v12 = [a1 pageCount];
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_28;
    }

    v13 = v12;
    v34 = a2;
    v14 = MEMORY[0x277D84F90];
    if (v12)
    {
      v35 = v4;
      v36[0] = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v15 = 0;
      do
      {
        v16 = v15 + 1;
        v17 = [a1 imageOfPageAtIndex_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v15 = v16;
      }

      while (v13 != v16);
      v4 = v35;
      v18 = v36[0];
      v14 = MEMORY[0x277D84F90];
      if (!(v36[0] >> 62))
      {
LABEL_7:
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v19)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        goto LABEL_7;
      }
    }

    v19 = sub_21DBFBD7C();
    if (v19)
    {
LABEL_8:
      v36[0] = v14;
      sub_21D18F89C(0, v19 & ~(v19 >> 63), 0);
      if ((v19 & 0x8000000000000000) == 0)
      {
        v20 = v36[0];
        if ((v18 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v19; ++i)
          {
            *v11 = MEMORY[0x223D44740](i, v18);
            swift_storeEnumTagMultiPayload();
            v36[0] = v20;
            v23 = *(v20 + 16);
            v22 = *(v20 + 24);
            if (v23 >= v22 >> 1)
            {
              sub_21D18F89C((v22 > 1), v23 + 1, 1);
              v20 = v36[0];
            }

            *(v20 + 16) = v23 + 1;
            sub_21DAAC424(v11, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, type metadata accessor for TTRUnsavedAttachment);
          }
        }

        else
        {
          v35 = v4;
          v24 = 32;
          do
          {
            v25 = *(v18 + v24);
            *v7 = v25;
            swift_storeEnumTagMultiPayload();
            v36[0] = v20;
            v27 = *(v20 + 16);
            v26 = *(v20 + 24);
            v28 = v25;
            if (v27 >= v26 >> 1)
            {
              sub_21D18F89C((v26 > 1), v27 + 1, 1);
              v20 = v36[0];
            }

            *(v20 + 16) = v27 + 1;
            sub_21DAAC424(v7, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, type metadata accessor for TTRUnsavedAttachment);
            v24 += 8;
            --v19;
          }

          while (v19);
        }

        goto LABEL_23;
      }

LABEL_28:
      __break(1u);
      return;
    }

LABEL_17:

    v20 = MEMORY[0x277D84F90];
LABEL_23:
    v29 = v34;
    v30 = v34 + OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v30 + 8);
      ObjectType = swift_getObjectType();
      (*(v31 + 16))(v29, v20, ObjectType, v31);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t _s15RemindersUICore33TTRIAttachmentImportingControllerC16availableSourcesShyAC6SourceOGvgZ_0()
{
  v5 = MEMORY[0x277D84FA0];
  v0 = objc_opt_self();
  if ([v0 isSourceTypeAvailable_])
  {
    sub_21D29D120(&v3, 0);
    sub_21D29D120(&v2, 1);
  }

  if ([v0 isSourceTypeAvailable_])
  {
    sub_21D29D120(&v4, 2);
  }

  return v5;
}

unint64_t sub_21DAAC31C()
{
  result = qword_280D116D8;
  if (!qword_280D116D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIAttachmentImportingController.Source, &type metadata for TTRIAttachmentImportingController.Source, v0, v1);
    atomic_store(result, &qword_280D116D8);
  }

  return result;
}

unint64_t sub_21DAAC3CC()
{
  result = qword_27CE57C28;
  if (!qword_27CE57C28)
  {
    type metadata accessor for InfoKey(255);
    result = swift_getWitnessTable(byte_21DC072A0, v3, v0, v1);
    atomic_store(result, &qword_27CE57C28);
  }

  return result;
}

uint64_t sub_21DAAC424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DAAC48C(uint64_t a1)
{
  v2 = type metadata accessor for TTRDirectlySavableImageData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTRObservableViewModelCollection.prune(keeping:)(uint64_t a1)
{
  v2 = *v1;
  v4[1] = *(*v1 + 80);
  v5 = *(v2 + 96);
  v6 = a1;
  return TTRObservableViewModelCollection.prune(shouldPrune:)(sub_21DAAC930, v4);
}

void TTRObservableViewModelCollection.updateAndPublishAll(using:)(void (*a1)(char *, char *), uint64_t a2)
{
  v6 = 0;
  v4 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83970], v4);
  sub_21DAAC9E0(&v6, a1, a2, v4, WitnessTable);
}

uint64_t TTRObservableViewModelCollection<>.updateAndPublishIfChanged<A>(forItemIDs:shouldForcePublish:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v12 = sub_21DBFBA8C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  v17 = *(a4 - 8);
  (*(v17 + 16))(&v19 - v15, a1, a4, v14);
  (*(v17 + 56))(v16, 0, 1, a4);
  sub_21D0E3D78(v16, *(v6 + 16), *(v6 + 24), a2, a3, a4, a5, v20);
  return (*(v13 + 8))(v16, v12);
}

uint64_t TTRObservableViewModelCollection.updateAndPublish<A>(forItemIDs:using:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_21DBFBA8C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  v15 = *(a4 - 8);
  (*(v15 + 16))(&v17 - v13, a1, a4, v12);
  (*(v15 + 56))(v14, 0, 1, a4);
  sub_21DAAC9E0(v14, a2, a3, a4, a5);
  return (*(v11 + 8))(v14, v10);
}

Swift::Void __swiftcall TTRObservableViewModelCollection.updateAndPublishAll()()
{
  v5 = 0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83970], v3);
  sub_21DAAC9E0(&v5, v1, v2, v3, WitnessTable);
}

void sub_21DAAC9E0(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v88 = a5;
  v97 = a3;
  v96 = a2;
  v102 = a1;
  v87 = *v5;
  v7 = v87;
  v101 = *(v87 + 80);
  v8 = v101;
  v95 = sub_21DBFBA8C();
  v9 = *(v95 - 8);
  MEMORY[0x28223BE20](v95 - 8);
  v94 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v113 = v79 - v12;
  v13 = *(v8 - 8);
  MEMORY[0x28223BE20](v14);
  v82 = v79 - v15;
  v112 = sub_21DBFBA8C();
  v119 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v17 = v79 - v16;
  v108 = a4;
  v18 = *(a4 - 8);
  MEMORY[0x28223BE20](v19);
  v86 = v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *(*(v7 + 88) - 8);
  MEMORY[0x28223BE20](v21);
  v109 = v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v98 = v79 - v24;
  v25 = v8;
  v27 = v26;
  v79[1] = type metadata accessor for TTRObservableViewModel(255, v25, v28, v29);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v107 = sub_21DBFBA8C();
  v118 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v32 = v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v114 = v79 - v34;
  swift_beginAccess();
  v35 = v5[4];
  if ((v35 & 0xC000000000000001) != 0)
  {
    v36 = sub_21DBFC21C();
    v37 = 0;
    v38 = 0;
    v110 = v36 | 0x8000000000000000;
    v111 = 0;
  }

  else
  {
    v39 = -1 << *(v35 + 32);
    v37 = ~v39;
    v40 = *(v35 + 64);
    v110 = v35;
    v111 = v35 + 64;
    v41 = -v39;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v38 = v42 & v40;
  }

  v115 = (v90 + 32);
  v106 = TupleTypeMetadata2 - 8;
  v79[0] = v37;
  v43 = (v37 + 64) >> 6;
  v89 = v90 + 16;
  v105 = (v118 + 32);
  v100 = (v119 + 16);
  v99 = (v18 + 48);
  v85 = (v18 + 32);
  v84 = (v18 + 8);
  v103 = (v90 + 8);
  v83 = (v119 + 8);
  v93 = (v9 + 16);
  v92 = (v9 + 8);
  v91 = (v13 + 48);
  v81 = (v13 + 32);
  v80 = (v13 + 8);
  sub_21DBF8E0C();
  v44 = 0;
  v116 = v32;
  v117 = TupleTypeMetadata2;
  v45 = v114;
  for (i = v43; ; v43 = i)
  {
    v46 = v110;
    if ((v110 & 0x8000000000000000) != 0)
    {
      v62 = sub_21DBFC2DC();
      v49 = v109;
      if (v62)
      {
        v63 = v98;
        sub_21DBFC60C();
        swift_unknownObjectRelease();
        sub_21DBFC60C();
        swift_unknownObjectRelease();
        v64 = *(TupleTypeMetadata2 + 48);
        v65 = v63;
        v45 = v114;
        (*v115)(v32, v65, v27);
        *&v32[v64] = v120;
        v60 = *(TupleTypeMetadata2 - 8);
        (*(v60 + 56))(v32, 0, 1, TupleTypeMetadata2);
      }

      else
      {
        v60 = *(TupleTypeMetadata2 - 8);
        (*(v60 + 56))(v32, 1, 1, TupleTypeMetadata2);
      }

      v118 = v44;
      v119 = v38;
      v61 = v108;
      goto LABEL_26;
    }

    v47 = v38;
    v48 = v44;
    v49 = v109;
    if (!v38)
    {
      break;
    }

LABEL_20:
    v119 = (v47 - 1) & v47;
    v53 = __clz(__rbit64(v47)) | (v48 << 6);
    v54 = v90;
    v55 = v98;
    (*(v90 + 16))(v98, *(v110 + 48) + *(v90 + 72) * v53, v27);
    v56 = *(*(v46 + 56) + 8 * v53);
    v57 = *(v117 + 48);
    v58 = *(v54 + 32);
    v59 = v55;
    v32 = v116;
    TupleTypeMetadata2 = v117;
    v58(v116, v59, v27);
    *&v32[v57] = v56;
    v60 = *(TupleTypeMetadata2 - 8);
    (*(v60 + 56))(v32, 0, 1, TupleTypeMetadata2);

    v118 = v48;
LABEL_21:
    v61 = v108;
    v45 = v114;
LABEL_26:
    (*v105)(v45, v32, v107);
    if ((*(v60 + 48))(v45, 1, TupleTypeMetadata2) == 1)
    {
      sub_21D0CFAF8(v110);
      return;
    }

    v66 = *&v45[*(TupleTypeMetadata2 + 48)];
    (*v115)(v49, v45, v27);
    (*v100)(v17, v102, v112);
    if ((*v99)(v17, 1, v61) == 1)
    {
      (*v83)(v17, v112);
      v67 = v101;
    }

    else
    {
      v68 = v86;
      (*v85)(v86, v17, v61);
      v69 = sub_21DBFA59C();
      v70 = v61;
      v71 = v69;
      (*v84)(v68, v70);
      v67 = v101;
      if ((v71 & 1) == 0)
      {
        (*v103)(v49, v27);

        v44 = v118;
        v38 = v119;
        continue;
      }
    }

    v72 = v27;
    v73 = *(*v66 + 88);
    swift_beginAccess();
    v74 = v94;
    v75 = v95;
    (*v93)(v94, v66 + v73, v95);
    v96(v49, v74);
    v76 = *v92;
    v77 = v113;
    (*v92)(v74, v75);
    if ((*v91)(v77, 1, v67) == 1)
    {
      v27 = v72;
      (*v103)(v49, v72);

      v76(v77, v75);
    }

    else
    {
      v78 = v82;
      (*v81)(v82, v77, v67);
      TTRObservableViewModel.updateAndPublish(_:)(v78);

      (*v80)(v78, v67);
      v27 = v72;
      (*v103)(v49, v72);
    }

    v44 = v118;
    v38 = v119;
    v32 = v116;
    TupleTypeMetadata2 = v117;
    v45 = v114;
  }

  if (v43 <= v44 + 1)
  {
    v50 = v44 + 1;
  }

  else
  {
    v50 = v43;
  }

  v51 = v50 - 1;
  v52 = v44;
  while (1)
  {
    v48 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v48 >= v43)
    {
      v118 = v51;
      v60 = *(TupleTypeMetadata2 - 8);
      (*(v60 + 56))(v32, 1, 1, TupleTypeMetadata2);
      v119 = 0;
      goto LABEL_21;
    }

    v47 = *(v111 + 8 * v48);
    ++v52;
    if (v47)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t TTRObservableViewModelCollection.deinit()
{

  return v0;
}

uint64_t TTRObservableViewModelCollection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TTRObservableViewModelCollection<>.updateAllAndPublishIfChanged(shouldForcePublish:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83970], v9);
  return sub_21D0E3D78(&v12, v7, v8, a1, a2, v9, a3, WitnessTable);
}

void sub_21DAAD6F4(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v130 = a3;
  v129 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v6 - 8);
  v122 = &v112 - v7;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388, &unk_21DC0F470);
  MEMORY[0x28223BE20](v123);
  v121 = &v112 - v8;
  v120 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v120);
  v136 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F20, "ڡ\t");
  MEMORY[0x28223BE20](v10 - 8);
  v128 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v127 = &v112 - v13;
  v126 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel(0);
  v14 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v117 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v16 = *(v119 - 8);
  MEMORY[0x28223BE20](v119 - 8);
  v113 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v131 = &v112 - v19;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0, &qword_21DC0A050);
  MEMORY[0x28223BE20](v147);
  v21 = &v112 - v20;
  v146 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v138 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v141 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v140 = (&v112 - v24);
  MEMORY[0x28223BE20](v25);
  v142 = &v112 - v26;
  MEMORY[0x28223BE20](v27);
  v139 = &v112 - v28;
  MEMORY[0x28223BE20](v29);
  v153 = &v112 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v112 - v32;
  MEMORY[0x28223BE20](v34);
  v134 = &v112 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F28, "ҡ\t");
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v112 - v40;
  swift_beginAccess();
  v42 = *(a4 + 32);
  v43 = *(v42 + 64);
  v137 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & v43;
  v124 = (v44 + 63) >> 6;
  v151 = a1 + 56;
  v115 = 0x800000021DC43E30;
  v114 = 0x800000021DC43E00;
  v132 = 0x800000021DC43DE0;
  v118 = (v16 + 48);
  v125 = (v14 + 48);
  v116 = (v14 + 56);
  v135 = v42;
  sub_21DBF8E0C();
  v47 = 0;
  v150 = a1;
  v152 = v33;
  v144 = v38;
  v143 = v41;
  while (v46)
  {
    v48 = v47;
LABEL_17:
    v51 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v52 = v51 | (v48 << 6);
    v53 = v135;
    v54 = v134;
    sub_21DAB0A24(*(v135 + 48) + *(v138 + 72) * v52, v134, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v55 = *(*(v53 + 56) + 8 * v52);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F30, &unk_21DC3B0E0);
    v57 = *(v56 + 48);
    v58 = v54;
    v38 = v144;
    sub_21DAB09BC(v58, v144, type metadata accessor for TTRRemindersListViewModel.ItemID);
    *&v38[v57] = v55;
    (*(*(v56 - 8) + 56))(v38, 0, 1, v56);

    v41 = v143;
LABEL_18:
    sub_21DAB08EC(v38, v41);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F30, &unk_21DC3B0E0);
    if ((*(*(v59 - 8) + 48))(v41, 1, v59) == 1)
    {

      return;
    }

    v60 = *&v41[*(v59 + 48)];
    sub_21DAB09BC(v41, v152, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (!a1)
    {
      goto LABEL_98;
    }

    if (!*(a1 + 16))
    {
      sub_21DAB095C(v152, type metadata accessor for TTRRemindersListViewModel.ItemID);

      goto LABEL_6;
    }

    sub_21DBFC7DC();
    TTRRemindersListViewModel.ItemID.hash(into:)(&v154);
    v61 = sub_21DBFC82C();
    v62 = -1 << *(a1 + 32);
    v63 = v61 & ~v62;
    if (((*(v151 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
    {
LABEL_5:

      sub_21DAB095C(v152, type metadata accessor for TTRRemindersListViewModel.ItemID);
      goto LABEL_6;
    }

    v148 = ~v62;
    v149 = *(v138 + 72);
    v145 = v60;
    while (1)
    {
      v66 = v153;
      sub_21DAB0A24(*(a1 + 48) + v149 * v63, v153, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v67 = *(v147 + 48);
      sub_21DAB0A24(v66, v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21DAB0A24(v152, &v21[v67], type metadata accessor for TTRRemindersListViewModel.ItemID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v70 = v140;
          sub_21DAB0A24(v21, v140, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v71 = *v70;
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v72 = *&v21[v67];
            sub_21D1B2ABC();
            v73 = sub_21DBFB63C();

            sub_21DAB095C(v153, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (v73)
            {
              goto LABEL_97;
            }

            goto LABEL_89;
          }

          sub_21DAB095C(v153, type metadata accessor for TTRRemindersListViewModel.ItemID);

LABEL_25:
          sub_21D0CF7E0(v21, &qword_27CE58AD0, &qword_21DC0A050);
LABEL_26:
          a1 = v150;
          goto LABEL_27;
        }

        v83 = v141;
        sub_21DAB0A24(v21, v141, type metadata accessor for TTRRemindersListViewModel.ItemID);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          v64 = type metadata accessor for TTRRemindersListViewModel.ItemID;
          v65 = v153;
LABEL_24:
          sub_21DAB095C(v65, v64);
          goto LABEL_25;
        }

        v84 = *v83;
        if (v84 > 2)
        {
          if (v84 == 3)
          {
            v87 = 0xD00000000000001FLL;
            v92 = &v146;
          }

          else
          {
            if (v84 == 4)
            {
              v88 = 0xE700000000000000;
              v87 = 0x6D657449706974;
              goto LABEL_68;
            }

            v87 = 0xD00000000000001DLL;
            v92 = &v147;
          }

          v88 = *(v92 - 32);
        }

        else
        {
          v85 = 0xD000000000000012;
          if (v84 == 1)
          {
            v85 = 0x7367617468736168;
          }

          v86 = 0xEC0000006D657449;
          if (v84 != 1)
          {
            v86 = v132;
          }

          if (*v83)
          {
            v87 = v85;
          }

          else
          {
            v87 = 0x6574656C706D6F63;
          }

          if (*v83)
          {
            v88 = v86;
          }

          else
          {
            v88 = 0xED00006D65744964;
          }
        }

LABEL_68:
        v93 = v21[v67];
        if (v93 <= 2)
        {
          if (v21[v67])
          {
            if (v93 == 1)
            {
              v94 = 0x7367617468736168;
            }

            else
            {
              v94 = 0xD000000000000012;
            }

            if (v93 == 1)
            {
              v95 = 0xEC0000006D657449;
            }

            else
            {
              v95 = v132;
            }

            if (v87 != v94)
            {
              goto LABEL_88;
            }

LABEL_87:
            if (v88 == v95)
            {

              v102 = type metadata accessor for TTRRemindersListViewModel.ItemID;
              v103 = v153;
              goto LABEL_96;
            }
          }

          else
          {
            v95 = 0xED00006D65744964;
            if (v87 == 0x6574656C706D6F63)
            {
              goto LABEL_87;
            }
          }

LABEL_88:
          v98 = sub_21DBFC64C();

          sub_21DAB095C(v153, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (v98)
          {
            goto LABEL_97;
          }

LABEL_89:
          sub_21DAB095C(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
          goto LABEL_26;
        }

        if (v93 == 3)
        {
          v96 = 0xD00000000000001FLL;
          v97 = &v146;
        }

        else
        {
          if (v93 == 4)
          {
            v95 = 0xE700000000000000;
            if (v87 == 0x6D657449706974)
            {
              goto LABEL_87;
            }

            goto LABEL_88;
          }

          v96 = 0xD00000000000001DLL;
          v97 = &v147;
        }

        v95 = *(v97 - 32);
        if (v87 == v96)
        {
          goto LABEL_87;
        }

        goto LABEL_88;
      }

      if (EnumCaseMultiPayload)
      {
        break;
      }

      v69 = v139;
      sub_21DAB0A24(v21, v139, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_21DAB095C(v153, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21DAB095C(v69, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v60 = v145;
        goto LABEL_25;
      }

      v89 = &v21[v67];
      v90 = v131;
      sub_21DAB09BC(v89, v131, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v91 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v69, v90);
      sub_21DAB095C(v90, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21DAB095C(v153, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21DAB095C(v69, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21DAB095C(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
      a1 = v150;
      v60 = v145;
      if (v91)
      {
        goto LABEL_98;
      }

LABEL_27:
      v63 = (v63 + 1) & v148;
      if (((*(v151 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v74 = v142;
    sub_21DAB0A24(v21, v142, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21DAB095C(v153, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v64 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
      v65 = v74;
      goto LABEL_24;
    }

    v75 = v136;
    sub_21DAB09BC(&v21[v67], v136, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D1B2ABC();
    if ((sub_21DBFB63C() & 1) == 0)
    {
      sub_21DAB095C(v153, type metadata accessor for TTRRemindersListViewModel.ItemID);
      goto LABEL_91;
    }

    v76 = *(v120 + 20);
    v77 = *(v123 + 48);
    v78 = v121;
    sub_21D0D3954(v74 + v76, v121, &unk_27CE5CD70, &unk_21DC09230);
    v133 = v77;
    sub_21D0D3954(v75 + v76, v78 + v77, &unk_27CE5CD70, &unk_21DC09230);
    v79 = *v118;
    v80 = v119;
    if ((*v118)(v78, 1, v119) != 1)
    {
      sub_21D0D3954(v78, v122, &unk_27CE5CD70, &unk_21DC09230);
      if (v79(v78 + v133, 1, v80) == 1)
      {
        sub_21DAB095C(v153, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21DAB095C(v122, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v82 = v78;
        v60 = v145;
        goto LABEL_64;
      }

      v99 = v113;
      sub_21DAB09BC(v78 + v133, v113, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v100 = v122;
      LODWORD(v133) = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v122, v99);
      sub_21DAB095C(v99, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21DAB095C(v153, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21DAB095C(v100, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D0CF7E0(v78, &unk_27CE5CD70, &unk_21DC09230);
      v75 = v136;
      v74 = v142;
      v60 = v145;
      if (v133)
      {
        goto LABEL_95;
      }

LABEL_91:
      sub_21DAB095C(v75, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21DAB095C(v74, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21DAB095C(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
      a1 = v150;
      v38 = v144;
      goto LABEL_27;
    }

    sub_21DAB095C(v153, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v81 = v79(v78 + v133, 1, v80) == 1;
    v82 = v78;
    v60 = v145;
    if (!v81)
    {
LABEL_64:
      sub_21D0CF7E0(v82, &qword_27CE58388, &unk_21DC0F470);
      v75 = v136;
      v74 = v142;
      goto LABEL_91;
    }

    sub_21D0CF7E0(v78, &unk_27CE5CD70, &unk_21DC09230);
    v75 = v136;
    v74 = v142;
LABEL_95:
    sub_21DAB095C(v75, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v103 = v74;
    v102 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
LABEL_96:
    sub_21DAB095C(v103, v102);
LABEL_97:
    sub_21DAB095C(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
    a1 = v150;
LABEL_98:
    v145 = v60;
    v104 = *(*v60 + 88);
    swift_beginAccess();
    v149 = v104;
    v105 = v128;
    sub_21D0D3954(v60 + v104, v128, &qword_27CE65F20, "ڡ\t");
    v106 = v126;
    v107 = v127;
    v129(v152, v105);
    sub_21D0CF7E0(v105, &qword_27CE65F20, "ڡ\t");
    if ((*v125)(v107, 1, v106) == 1)
    {
      sub_21DAB095C(v152, type metadata accessor for TTRRemindersListViewModel.ItemID);

      sub_21D0CF7E0(v107, &qword_27CE65F20, "ڡ\t");
    }

    else
    {
      v108 = v107;
      v109 = v117;
      sub_21DAB09BC(v108, v117, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
      sub_21DAB0A24(v109, v105, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
      (*v116)(v105, 0, 1, v106);
      v110 = v145;
      v111 = v149;
      swift_beginAccess();
      sub_21DAB0A8C(v105, v110 + v111);
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
      sub_21D0EAF6C();
      a1 = v150;
      sub_21DBF912C();

      sub_21DAB095C(v109, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
      sub_21DAB095C(v152, type metadata accessor for TTRRemindersListViewModel.ItemID);
    }

    v38 = v144;
LABEL_6:
    v41 = v143;
  }

  if (v124 <= v47 + 1)
  {
    v49 = v47 + 1;
  }

  else
  {
    v49 = v124;
  }

  v50 = v49 - 1;
  while (1)
  {
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v48 >= v124)
    {
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F30, &unk_21DC3B0E0);
      (*(*(v101 - 8) + 56))(v38, 1, 1, v101);
      v46 = 0;
      v47 = v50;
      goto LABEL_18;
    }

    v46 = *(v137 + 8 * v48);
    ++v47;
    if (v46)
    {
      v47 = v48;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t TTRObservableViewModelCollection<>.updateAndPublishIfChanged<A>(forItemIDs:using:shouldForcePublish:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v22 = a7;
  v14 = sub_21DBFBA8C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  v19 = *(a6 - 8);
  (*(v19 + 16))(&v21 - v17, a1, a6, v16);
  (*(v19 + 56))(v18, 0, 1, a6);
  sub_21D0E3D78(v18, a2, a3, a4, a5, a6, v22, v23);
  return (*(v15 + 8))(v18, v14);
}

void sub_21DAAED30(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v182 = a5;
  v196 = a3;
  v195 = a2;
  v217 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v176 = &v175 - v12;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388, &unk_21DC0F470);
  MEMORY[0x28223BE20](v202);
  v197 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v175 = &v175 - v15;
  v201 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v201);
  v214 = &v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v180 = &v175 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F20, "ڡ\t");
  MEMORY[0x28223BE20](v19 - 8);
  v194 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v193 = &v175 - v22;
  v192 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel(0);
  v23 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v191 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v25 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v179 = &v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v178 = &v175 - v28;
  MEMORY[0x28223BE20](v29);
  v203 = &v175 - v30;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0, &qword_21DC0A050);
  MEMORY[0x28223BE20](v224);
  v213 = &v175 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v175 - v33;
  v226 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v212 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v189 = &v175 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v184 = (&v175 - v37);
  MEMORY[0x28223BE20](v38);
  v185 = &v175 - v39;
  MEMORY[0x28223BE20](v40);
  v183 = &v175 - v41;
  MEMORY[0x28223BE20](v42);
  v210 = &v175 - v43;
  MEMORY[0x28223BE20](v44);
  v221 = &v175 - v45;
  MEMORY[0x28223BE20](v46);
  v220 = (&v175 - v47);
  MEMORY[0x28223BE20](v48);
  v223 = &v175 - v49;
  MEMORY[0x28223BE20](v50);
  v52 = &v175 - v51;
  MEMORY[0x28223BE20](v53);
  v225 = &v175 - v54;
  MEMORY[0x28223BE20](v55);
  v204 = &v175 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F28, "ҡ\t");
  MEMORY[0x28223BE20](v57 - 8);
  v211 = &v175 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v207 = &v175 - v60;
  swift_beginAccess();
  v61 = *(a4 + 32);
  v62 = *(v61 + 64);
  v208 = v61 + 64;
  v63 = 1 << *(v61 + 32);
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  else
  {
    v64 = -1;
  }

  v218 = v64 & v62;
  v186 = (v63 + 63) >> 6;
  v188 = 0x800000021DC43E30;
  v187 = 0x800000021DC43E00;
  v206 = 0x800000021DC43DE0;
  v199 = (v25 + 48);
  v190 = (v23 + 48);
  v205 = v61;
  sub_21DBF8E0C();
  v65 = 0;
  v215 = a6;
  v198 = v10;
  v219 = v52;
  v181 = a6 + 56;
LABEL_6:
  v66 = v218;
  if (v218)
  {
    v67 = v65;
    goto LABEL_16;
  }

  if (v186 <= v65 + 1)
  {
    v68 = v65 + 1;
  }

  else
  {
    v68 = v186;
  }

  v69 = v68 - 1;
  v70 = v211;
  while (1)
  {
    v67 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v67 >= v186)
    {
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F30, &unk_21DC3B0E0);
      (*(*(v118 - 8) + 56))(v70, 1, 1, v118);
      v218 = 0;
      v65 = v69;
      goto LABEL_17;
    }

    v66 = *(v208 + 8 * v67);
    ++v65;
    if (v66)
    {
      v65 = v67;
LABEL_16:
      v218 = (v66 - 1) & v66;
      v71 = __clz(__rbit64(v66)) | (v67 << 6);
      v72 = v205;
      v73 = v204;
      sub_21DAB0A24(*(v205 + 48) + *(v212 + 72) * v71, v204, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v74 = *(*(v72 + 56) + 8 * v71);
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F30, &unk_21DC3B0E0);
      v76 = *(v75 + 48);
      v77 = v73;
      v70 = v211;
      sub_21DAB09BC(v77, v211, type metadata accessor for TTRRemindersListViewModel.ItemID);
      *(v70 + v76) = v74;
      (*(*(v75 - 8) + 56))(v70, 0, 1, v75);

LABEL_17:
      v78 = v207;
      sub_21DAB08EC(v70, v207);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F30, &unk_21DC3B0E0);
      if ((*(*(v79 - 8) + 48))(v78, 1, v79) == 1)
      {

        return;
      }

      v216 = *(v78 + *(v79 + 48));
      v80 = v225;
      sub_21DAB09BC(v78, v225, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v81 = v214;
      if (!v217)
      {
        goto LABEL_94;
      }

      v82 = *(v217 + 16);
      if (!v82)
      {
LABEL_89:
        sub_21DAB095C(v80, type metadata accessor for TTRRemindersListViewModel.ItemID);

        goto LABEL_6;
      }

      v83 = v217 + ((*(v212 + 80) + 32) & ~*(v212 + 80));
      v222 = *(v212 + 72);
      while (2)
      {
        v84 = *(v224 + 48);
        sub_21DAB0A24(v83, v34, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21DAB0A24(v80, &v34[v84], type metadata accessor for TTRRemindersListViewModel.ItemID);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v86 = v223;
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            v88 = v220;
            sub_21DAB0A24(v34, v220, type metadata accessor for TTRRemindersListViewModel.ItemID);
            v89 = *v88;
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v90 = *&v34[v84];
              sub_21D1B2ABC();
              v91 = sub_21DBFB63C();

              if (v91)
              {
                goto LABEL_93;
              }

              goto LABEL_86;
            }

            goto LABEL_50;
          }

          sub_21DAB0A24(v34, v221, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload() != 3)
          {
LABEL_50:
            sub_21D0CF7E0(v34, &qword_27CE58AD0, &qword_21DC0A050);
            goto LABEL_87;
          }

          v100 = *v221;
          if (v100 > 2)
          {
            if (v100 == 3)
            {
              v103 = 0xD00000000000001FLL;
              v108 = &v219;
            }

            else
            {
              if (v100 == 4)
              {
                v104 = 0xE700000000000000;
                v103 = 0x6D657449706974;
                goto LABEL_62;
              }

              v103 = 0xD00000000000001DLL;
              v108 = &v220;
            }

            v104 = *(v108 - 32);
          }

          else
          {
            v101 = 0xD000000000000012;
            if (v100 == 1)
            {
              v101 = 0x7367617468736168;
            }

            v102 = 0xEC0000006D657449;
            if (v100 != 1)
            {
              v102 = v206;
            }

            if (*v221)
            {
              v103 = v101;
            }

            else
            {
              v103 = 0x6574656C706D6F63;
            }

            if (*v221)
            {
              v104 = v102;
            }

            else
            {
              v104 = 0xED00006D65744964;
            }
          }

LABEL_62:
          v109 = v34[v84];
          if (v109 <= 2)
          {
            if (v34[v84])
            {
              if (v109 == 1)
              {
                v110 = 0x7367617468736168;
              }

              else
              {
                v110 = 0xD000000000000012;
              }

              if (v109 == 1)
              {
                v111 = 0xEC0000006D657449;
              }

              else
              {
                v111 = v206;
              }

              if (v103 != v110)
              {
LABEL_82:
                v114 = sub_21DBFC64C();

                if (v114)
                {
                  goto LABEL_93;
                }

                goto LABEL_86;
              }
            }

            else
            {
              v111 = 0xED00006D65744964;
              if (v103 != 0x6574656C706D6F63)
              {
                goto LABEL_82;
              }
            }

LABEL_81:
            if (v104 == v111)
            {

              goto LABEL_93;
            }

            goto LABEL_82;
          }

          if (v109 == 3)
          {
            v112 = 0xD00000000000001FLL;
            v113 = &v219;
          }

          else
          {
            if (v109 == 4)
            {
              v111 = 0xE700000000000000;
              if (v103 != 0x6D657449706974)
              {
                goto LABEL_82;
              }

              goto LABEL_81;
            }

            v112 = 0xD00000000000001DLL;
            v113 = &v220;
          }

          v111 = *(v113 - 32);
          if (v103 != v112)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        }

        if (!EnumCaseMultiPayload)
        {
          v86 = v219;
          sub_21DAB0A24(v34, v219, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload())
          {
            v87 = type metadata accessor for TTRRemindersListViewModel.SectionID;
            goto LABEL_49;
          }

          v105 = &v34[v84];
          v106 = v203;
          sub_21DAB09BC(v105, v203, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v107 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v86, v106);
          sub_21DAB095C(v106, type metadata accessor for TTRRemindersListViewModel.SectionID);
          sub_21DAB095C(v86, type metadata accessor for TTRRemindersListViewModel.SectionID);
          sub_21DAB095C(v34, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v80 = v225;
          if (v107)
          {
            goto LABEL_94;
          }

LABEL_88:
          v83 += v222;
          if (!--v82)
          {
            goto LABEL_89;
          }

          continue;
        }

        break;
      }

      sub_21DAB0A24(v34, v223, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v87 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
LABEL_49:
        sub_21DAB095C(v86, v87);
        goto LABEL_50;
      }

      sub_21DAB09BC(&v34[v84], v81, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D1B2ABC();
      v92 = v81;
      if ((sub_21DBFB63C() & 1) == 0)
      {
        goto LABEL_85;
      }

      v93 = *(v201 + 20);
      v94 = *(v202 + 48);
      v95 = v197;
      sub_21D0D3954(v86 + v93, v197, &unk_27CE5CD70, &unk_21DC09230);
      sub_21D0D3954(v81 + v93, v95 + v94, &unk_27CE5CD70, &unk_21DC09230);
      v96 = *v199;
      v97 = v200;
      if ((*v199)(v95, 1, v200) != 1)
      {
        sub_21D0D3954(v95, v198, &unk_27CE5CD70, &unk_21DC09230);
        if (v96(v95 + v94, 1, v97) == 1)
        {
          sub_21DAB095C(v198, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v99 = v95;
          goto LABEL_58;
        }

        v115 = v179;
        sub_21DAB09BC(v95 + v94, v179, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v116 = v198;
        v117 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v198, v115);
        sub_21DAB095C(v115, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21DAB095C(v116, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21D0CF7E0(v95, &unk_27CE5CD70, &unk_21DC09230);
        v92 = v214;
        v86 = v223;
        if (v117)
        {
          goto LABEL_92;
        }

LABEL_85:
        v81 = v92;
        sub_21DAB095C(v92, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        sub_21DAB095C(v86, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_86:
        sub_21DAB095C(v34, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_87:
        v80 = v225;
        goto LABEL_88;
      }

      v98 = v96(v95 + v94, 1, v97) == 1;
      v99 = v95;
      if (!v98)
      {
LABEL_58:
        sub_21D0CF7E0(v99, &qword_27CE58388, &unk_21DC0F470);
        v92 = v214;
        v86 = v223;
        goto LABEL_85;
      }

      sub_21D0CF7E0(v95, &unk_27CE5CD70, &unk_21DC09230);
      v92 = v214;
      v86 = v223;
LABEL_92:
      sub_21DAB095C(v92, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21DAB095C(v86, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_93:
      sub_21DAB095C(v34, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v80 = v225;
LABEL_94:
      v119 = v216;
      v120 = *(*v216 + 88);
      swift_beginAccess();
      v121 = v194;
      sub_21D0D3954(v119 + v120, v194, &qword_27CE65F20, "ڡ\t");
      v122 = v193;
      v195(v80, v121);
      sub_21D0CF7E0(v121, &qword_27CE65F20, "ڡ\t");
      v123 = (*v190)(v122, 1, v192);
      v124 = v215;
      if (v123 == 1)
      {
        sub_21DAB095C(v80, type metadata accessor for TTRRemindersListViewModel.ItemID);

        sub_21D0CF7E0(v122, &qword_27CE65F20, "ڡ\t");
        goto LABEL_6;
      }

      sub_21DAB09BC(v122, v191, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
      v125 = v181;
      if (v182)
      {
        goto LABEL_96;
      }

      if (!*(v124 + 16) || (sub_21DBFC7DC(), TTRRemindersListViewModel.ItemID.hash(into:)(&v227), v127 = sub_21DBFC82C(), v128 = -1 << *(v124 + 32), v129 = v127 & ~v128, ((*(v125 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) == 0))
      {
        v126 = 0;
        goto LABEL_168;
      }

      v209 = ~v128;
      v222 = *(v212 + 72);
      v130 = v210;
      while (2)
      {
        sub_21DAB0A24(*(v124 + 48) + v222 * v129, v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v131 = *(v224 + 48);
        v132 = v130;
        v133 = v213;
        sub_21DAB0A24(v132, v213, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v134 = v133;
        sub_21DAB0A24(v225, v133 + v131, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v135 = swift_getEnumCaseMultiPayload();
        if (v135 > 1)
        {
          if (v135 == 2)
          {
            v139 = v133;
            v140 = v184;
            sub_21DAB0A24(v139, v184, type metadata accessor for TTRRemindersListViewModel.ItemID);
            v141 = *v140;
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v142 = *(v134 + v131);
              sub_21D1B2ABC();
              v143 = v134;
              v144 = sub_21DBFB63C();

              if (v144)
              {
                goto LABEL_173;
              }

              goto LABEL_163;
            }

LABEL_101:
            sub_21D0CF7E0(v134, &qword_27CE58AD0, &qword_21DC0A050);
            goto LABEL_102;
          }

          sub_21DAB0A24(v133, v189, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload() != 3)
          {
            goto LABEL_101;
          }

          v154 = *v189;
          if (v154 > 2)
          {
            if (v154 == 3)
            {
              v157 = 0xD00000000000001FLL;
              v163 = &v219;
            }

            else
            {
              if (v154 == 4)
              {
                v158 = 0xE700000000000000;
                v157 = 0x6D657449706974;
                goto LABEL_142;
              }

              v157 = 0xD00000000000001DLL;
              v163 = &v220;
            }

            v158 = *(v163 - 32);
          }

          else
          {
            v155 = 0xD000000000000012;
            if (v154 == 1)
            {
              v155 = 0x7367617468736168;
            }

            v156 = 0xEC0000006D657449;
            if (v154 != 1)
            {
              v156 = v206;
            }

            if (*v189)
            {
              v157 = v155;
            }

            else
            {
              v157 = 0x6574656C706D6F63;
            }

            if (*v189)
            {
              v158 = v156;
            }

            else
            {
              v158 = 0xED00006D65744964;
            }
          }

LABEL_142:
          v164 = *(v213 + v131);
          if (v164 <= 2)
          {
            if (*(v213 + v131))
            {
              if (v164 == 1)
              {
                v165 = 0x7367617468736168;
              }

              else
              {
                v165 = 0xD000000000000012;
              }

              if (v164 == 1)
              {
                v166 = 0xEC0000006D657449;
              }

              else
              {
                v166 = v206;
              }

              if (v157 != v165)
              {
                goto LABEL_162;
              }

LABEL_161:
              if (v158 == v166)
              {

                goto LABEL_172;
              }
            }

            else
            {
              v166 = 0xED00006D65744964;
              if (v157 == 0x6574656C706D6F63)
              {
                goto LABEL_161;
              }
            }

LABEL_162:
            v169 = sub_21DBFC64C();

            v143 = v213;
            if (v169)
            {
              goto LABEL_173;
            }

LABEL_163:
            v170 = v143;
LABEL_166:
            sub_21DAB095C(v170, type metadata accessor for TTRRemindersListViewModel.ItemID);
            goto LABEL_102;
          }

          if (v164 == 3)
          {
            v167 = 0xD00000000000001FLL;
            v168 = &v219;
          }

          else
          {
            if (v164 == 4)
            {
              v166 = 0xE700000000000000;
              if (v157 == 0x6D657449706974)
              {
                goto LABEL_161;
              }

              goto LABEL_162;
            }

            v167 = 0xD00000000000001DLL;
            v168 = &v220;
          }

          v166 = *(v168 - 32);
          if (v157 == v167)
          {
            goto LABEL_161;
          }

          goto LABEL_162;
        }

        if (!v135)
        {
          v136 = v133;
          v137 = v183;
          sub_21DAB0A24(v136, v183, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload())
          {
            v138 = type metadata accessor for TTRRemindersListViewModel.SectionID;
            goto LABEL_130;
          }

          v159 = v134 + v131;
          v160 = v178;
          sub_21DAB09BC(v159, v178, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v161 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v137, v160);
          sub_21DAB095C(v160, type metadata accessor for TTRRemindersListViewModel.SectionID);
          sub_21DAB095C(v137, type metadata accessor for TTRRemindersListViewModel.SectionID);
          sub_21DAB095C(v134, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (v161)
          {
            goto LABEL_174;
          }

LABEL_102:
          v130 = v210;
          sub_21DAB095C(v210, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v129 = (v129 + 1) & v209;
          v124 = v215;
          if (((*(v125 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) == 0)
          {
            v126 = 0;
            goto LABEL_168;
          }

          continue;
        }

        break;
      }

      v145 = v133;
      v137 = v185;
      sub_21DAB0A24(v145, v185, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v138 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
LABEL_130:
        sub_21DAB095C(v137, v138);
        goto LABEL_101;
      }

      v146 = v180;
      sub_21DAB09BC(v134 + v131, v180, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D1B2ABC();
      v147 = v137;
      if ((sub_21DBFB63C() & 1) == 0)
      {
        goto LABEL_165;
      }

      v148 = *(v201 + 20);
      v149 = *(v202 + 48);
      v150 = v175;
      sub_21D0D3954(v137 + v148, v175, &unk_27CE5CD70, &unk_21DC09230);
      v177 = v149;
      sub_21D0D3954(v146 + v148, v150 + v149, &unk_27CE5CD70, &unk_21DC09230);
      v151 = *v199;
      v152 = v200;
      if ((*v199)(v150, 1, v200) != 1)
      {
        sub_21D0D3954(v150, v176, &unk_27CE5CD70, &unk_21DC09230);
        v162 = v177;
        if (v151(v150 + v177, 1, v152) == 1)
        {
          sub_21DAB095C(v176, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v153 = v150;
          goto LABEL_138;
        }

        v171 = v179;
        sub_21DAB09BC(v150 + v162, v179, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v172 = v176;
        v173 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v176, v171);
        sub_21DAB095C(v171, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21DAB095C(v172, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21D0CF7E0(v150, &unk_27CE5CD70, &unk_21DC09230);
        v146 = v180;
        v147 = v185;
        if (v173)
        {
          goto LABEL_171;
        }

LABEL_165:
        sub_21DAB095C(v146, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        sub_21DAB095C(v147, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v170 = v213;
        goto LABEL_166;
      }

      v98 = v151(v150 + v177, 1, v152) == 1;
      v153 = v150;
      if (!v98)
      {
LABEL_138:
        sub_21D0CF7E0(v153, &qword_27CE58388, &unk_21DC0F470);
        v146 = v180;
        v147 = v185;
        goto LABEL_165;
      }

      sub_21D0CF7E0(v150, &unk_27CE5CD70, &unk_21DC09230);
      v146 = v180;
      v147 = v185;
LABEL_171:
      sub_21DAB095C(v146, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21DAB095C(v147, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_172:
      v143 = v213;
LABEL_173:
      sub_21DAB095C(v143, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_174:
      sub_21DAB095C(v210, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_96:
      v126 = 1;
LABEL_168:
      v174 = v191;
      sub_21DAEC1D4(v191, v126);

      sub_21DAB095C(v174, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
      sub_21DAB095C(v225, type metadata accessor for TTRRemindersListViewModel.ItemID);
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_21DAB08EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F28, "ҡ\t");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DAB095C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21DAB09BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DAB0A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DAB0A8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F20, "ڡ\t");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_21DAB0AFC(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  swift_beginAccess();
  v5 = v1[4];

  v6 = v5;
  v4(v3, a1, v6);

  MEMORY[0x28223BE20](v7);
  sub_21DBF5EFC();

  sub_21DBF814C();

  return result;
}

uint64_t sub_21DAB0D84()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65F38);
  v1 = __swift_project_value_buffer(v0, qword_27CE65F38);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_21DAB0E4C(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  *(v3 + 1) = v2;
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F50, &unk_21DC3B0F0);
  sub_21DBFA1AC();
  MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();

  return result;
}

void sub_21DAB0F74(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = a1 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(v4 + 8);
    swift_getObjectType();
    v7 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
    swift_beginAccess();
    v8 = *(v6 + 16);
    v9 = *(a1 + v7);
    v8();

    swift_unknownObjectRelease();
  }

  *a2 = Strong == 0;
}

double sub_21DAB10AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v3 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F50, &unk_21DC3B0F0);
  sub_21DBFA1AC();
  MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();
  swift_unknownObjectRelease();

  return result;
}

void (*sub_21DAB1204(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21DAB12A4;
}

void sub_21DAB12A4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    *v3 = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F50, &unk_21DC3B0F0);
    sub_21DBFA1AC();
    MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
    sub_21DBFAEDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();
  }

  free(v3);
}

void sub_21DAB1404(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_21DAB1464()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_21DAB14B8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_21DAB1518()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t TTRShowTemplateDataModelSource.__allocating_init(store:template:listRepresentation:countCompleted:sortingStyle:canChangeSortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  LOBYTE(a4) = *a4;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation) = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_dataViewMonitor) = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_store) = a1;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template) = a2;
  swift_beginAccess();
  *(v12 + v13) = a3;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_countCompleted) = a4;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  v14 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v15 = sub_21DBF70DC();
  (*(*(v15 - 8) + 32))(v12 + v14, a5, v15);
  *(v12 + 16) = a6;
  return v12;
}

uint64_t TTRShowTemplateDataModelSource.init(store:template:listRepresentation:countCompleted:sortingStyle:canChangeSortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  v12 = *a4;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_dataViewMonitor) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_store) = a1;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template) = a2;
  swift_beginAccess();
  *(v6 + v13) = a3;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_countCompleted) = v12;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  v14 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v15 = sub_21DBF70DC();
  (*(*(v15 - 8) + 32))(v6 + v14, a5, v15);
  *(v6 + 16) = a6;
  return v6;
}

uint64_t sub_21DAB1808(void *a1, uint64_t a2)
{
  v3 = sub_21DBF773C();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF71EC();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF714C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F68, &qword_21DC3B100);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F70, &unk_21DC3B108);
  v15 = *(v14 - 8);
  *&v16 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v18 = &v24 - v17;
  v19 = [a1 objectID];
  (*(v8 + 104))(v10, *MEMORY[0x277D45450], v7);
  sub_21DBF6CDC();
  (*(v8 + 8))(v10, v7);

  (*(v15 + 56))(v13, 0, 1, v14);
  (*(v15 + 32))(v18, v13, v14);
  v20 = v25;
  sub_21DBF76DC();
  v21 = v28;
  sub_21DBF71DC();
  (*(v26 + 8))(v20, v27);
  v22 = sub_21DBF718C();
  (*(v29 + 8))(v21, v30);
  (*(v15 + 8))(v18, v14);
  return v22;
}

uint64_t sub_21DAB1C40@<X0>(_OWORD *a1@<X8>)
{
  v75 = a1;
  v63 = sub_21DBF773C();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58560, &unk_21DC09540);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v57 - v4;
  v5 = sub_21DBF71EC();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = &v57 - v8;
  v9 = sub_21DBFB1AC();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF714C();
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF70DC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F68, &qword_21DC3B100);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F70, &unk_21DC3B108);
  v76 = *(v21 - 8);
  v77 = v21;
  MEMORY[0x28223BE20](v21);
  v71 = &v57 - v22;
  v23 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
  swift_beginAccess();
  v24 = [*(v1 + v23) objectID];
  v25 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v26 = *(v15 + 16);
  v64 = v1;
  v27 = v1 + v25;
  v28 = v72;
  v29 = v73;
  v74 = v14;
  v26(v17, v27, v14);
  (*(v28 + 104))(v13, *MEMORY[0x277D45450], v29);
  sub_21DBF6CDC();
  v58 = v23;

  (*(v28 + 8))(v13, v29);
  (*(v15 + 8))(v17, v74);
  v31 = v76;
  v30 = v77;
  (*(v76 + 56))(v20, 0, 1, v77);
  v32 = v71;
  (*(v31 + 32))(v71, v20, v30);
  v33 = v65;
  v34 = sub_21DBF76DC();
  v35 = v70;
  MEMORY[0x223D3F980](v34);
  v36 = v69;
  v37 = *(v68 + 8);
  v37(v33, v69);
  v38 = v66;
  v39 = v67;
  if ((*(v66 + 48))(v35, 1, v67) == 1)
  {
    (*(v31 + 8))(v32, v30);
    result = sub_21D0CF7E0(v35, &qword_27CE58560, &unk_21DC09540);
    v41 = v75;
    v75[2] = 0u;
    v41[3] = 0u;
    *v41 = 0u;
    v41[1] = 0u;
  }

  else
  {
    v42 = v59;
    (*(v38 + 32))(v59, v35, v39);
    v43 = v60;
    sub_21DBF76DC();
    v44 = v61;
    sub_21DBF71DC();
    v37(v43, v36);
    v45 = sub_21DBF718C();
    (*(v62 + 8))(v44, v63);
    if (MEMORY[0x277D84F90] >> 62 && sub_21DBFBD7C())
    {
      sub_21D1CE198(MEMORY[0x277D84F90]);
      v46 = v56;
    }

    else
    {
      v46 = MEMORY[0x277D84FA0];
    }

    v47 = *(v64 + v58);
    v48 = v47;
    v49 = v42;
    v50 = sub_21DBFB18C();
    v51 = sub_21DBFB19C();
    v52 = sub_21DBFB17C();
    v54 = v53;
    (*(v38 + 8))(v49, v39);
    result = (*(v76 + 8))(v71, v77);
    v78 = 1;
    v55 = v75;
    *v75 = v45;
    *(v55 + 1) = v46;
    *(v55 + 2) = v47;
    *(v55 + 24) = 1;
    *(v55 + 4) = v50;
    *(v55 + 20) = v51;
    *(v55 + 6) = v52;
    *(v55 + 7) = v54;
  }

  return result;
}

void sub_21DAB242C(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = qword_27CE570C0;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE65F38);
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAEDC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21D0C9000, v8, v9, "TTRShowTemplateDataModelSource start synchronously", v10, 2u);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  v11 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
  swift_beginAccess();
  v12 = *(v2 + v11);
  LOBYTE(v11) = sub_21DAB2650(v12, v6);

  if ((v11 & 1) == 0)
  {
LABEL_8:
    if (qword_27CE570C0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_27CE65F38);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAEDC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21D0C9000, v14, v15, "TTRShowTemplateDataModelSource start asynchronously", v16, 2u);
      MEMORY[0x223D46520](v16, -1, -1);
    }

    v17 = 10;
    sub_21DAB4D4C(&v17);
  }
}

uint64_t sub_21DAB2650(void *a1, uint64_t a2)
{
  v232 = a2;
  v231 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88, &unk_21DC3B130);
  MEMORY[0x28223BE20](v2 - 8);
  v214 = &v194 - v3;
  v211 = sub_21DBFB11C();
  v210 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v209 = &v194 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v207);
  v208 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v6 - 8);
  v206 = &v194 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3B8, &qword_21DC19588);
  MEMORY[0x28223BE20](v8 - 8);
  v203 = &v194 - v9;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8, &unk_21DC15CC0);
  MEMORY[0x28223BE20](v236);
  v230 = &v194 - v10;
  v220 = sub_21DBF76AC();
  v223 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v219 = &v194 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v229 = &v194 - v13;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65FC8, qword_21DC3B2C8);
  MEMORY[0x28223BE20](v217);
  v216 = &v194 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v218 = &v194 - v16;
  v228 = sub_21DBF70DC();
  v226 = *(v228 - 1);
  MEMORY[0x28223BE20](v228);
  v227 = &v194 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0, &qword_21DC19590);
  v202 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v213 = &v194 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v205 = &v194 - v21;
  MEMORY[0x28223BE20](v22);
  v204 = &v194 - v23;
  MEMORY[0x28223BE20](v24);
  v201 = &v194 - v25;
  MEMORY[0x28223BE20](v26);
  v215 = &v194 - v27;
  MEMORY[0x28223BE20](v28);
  v222 = &v194 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v194 - v31;
  v33 = type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0);
  MEMORY[0x28223BE20](v33);
  v225 = &v194 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v194 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58560, &unk_21DC09540);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v194 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378, &qword_21DC19530);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v194 - v42;
  v199 = sub_21DBF719C();
  v198 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v45 = &v194 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21DBF74FC();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v200 = &v194 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v51 = &v194 - v50;
  sub_21DBF72BC();
  v52 = sub_21DBF72DC();
  (*(*(v52 - 8) + 56))(v43, 0, 1, v52);
  MEMORY[0x223D3F930](MEMORY[0x277D84F90], v43, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  v53 = sub_21DBFB60C();
  v54 = sub_21DBFB1AC();
  (*(*(v54 - 8) + 56))(v40, 1, 1, v54);
  v197 = v45;
  v55 = v45;
  v56 = v37;
  MEMORY[0x223D3FC90](v55, v53, v40);
  v212 = v33;
  v57 = *(v33 + 20);
  v58 = *(v47 + 16);
  v224 = v51;
  v58(&v37[v57], v51, v46);
  v233 = v47;
  v59 = v229;
  v60 = *(v47 + 56);
  v235 = v46;
  v60(&v37[v57], 0, 1, v46);
  v61 = v231;
  *v56 = v231;
  v221 = v18;
  v62 = *(v18 + 48);
  sub_21DAB6934(v56, v32);
  *&v32[v62] = 0;
  v63 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v64 = v234;
  swift_beginAccess();
  v65 = v226;
  v66 = v227;
  v67 = v228;
  (v226)[2](v227, v64 + v63, v228);
  type metadata accessor for TTRShowTemplateMonitorableDataView(0);
  v68 = swift_allocObject();
  *(v68 + 16) = v61;
  v69 = v65;
  v70 = v225;
  v71 = v67;
  v72 = v32;
  v73 = v230;
  v69[4](v68 + OBJC_IVAR____TtC15RemindersUICore34TTRShowTemplateMonitorableDataView_sortingStyle, v66, v71);
  sub_21D0D3954(v72, v73, &qword_27CE5C1C0, &qword_21DC19590);
  swift_storeEnumTagMultiPayload();
  v74 = v61;
  v75 = TTRShowTemplateMonitorableDataView.fetchData(from:userInteractive:)(v70, v59, v73, 1);
  v196 = 0;
  v228 = v56;
  v226 = v74;
  v231 = v68;
  v227 = v72;
  sub_21D0CF7E0(v73, &qword_27CE5C1B8, &unk_21DC15CC0);
  v76 = v218;
  sub_21DAB6998(v70, v218);
  v77 = v221;
  *(v76 + *(v221 + 48)) = v75;
  v78 = v217;
  v79 = *(v223 + 32);
  v80 = v59;
  v81 = v220;
  v79(v76 + *(v217 + 48), v80, v220);
  v82 = v216;
  sub_21D0D3954(v76, v216, &qword_27CE65FC8, qword_21DC3B2C8);
  v83 = *(v77 + 48);
  v84 = *&v82[v83];
  v85 = *(v78 + 48);
  v86 = v222;
  sub_21DAB6998(v82, v222);
  *(v86 + v83) = v84;
  v87 = &v82[v85];
  v88 = v219;
  v79(v219, v87, v81);
  v89 = v215;
  sub_21D0D3954(v86, v215, &qword_27CE5C1C0, &qword_21DC19590);
  v90 = v223;
  if (!*&v89[*(v77 + 48)])
  {
    v146 = v81;
    sub_21DAB69FC(v89);
    v149 = v228;
    if (qword_27CE570C0 != -1)
    {
      swift_once();
    }

    v150 = sub_21DBF84BC();
    __swift_project_value_buffer(v150, qword_27CE65F38);
    v151 = sub_21DBF84AC();
    v152 = sub_21DBFAEBC();
    v153 = os_log_type_enabled(v151, v152);
    v154 = v227;
    v139 = v235;
    if (v153)
    {
      v155 = swift_slowAlloc();
      *v155 = 0;
      _os_log_impl(&dword_21D0C9000, v151, v152, "startSynchronously failed, missing initial fetch result token", v155, 2u);
      MEMORY[0x223D46520](v155, -1, -1);
    }

    sub_21D0CF7E0(v222, &qword_27CE5C1C0, &qword_21DC19590);
    sub_21D0CF7E0(v76, &qword_27CE65FC8, qword_21DC3B2C8);
    sub_21D0CF7E0(v154, &qword_27CE5C1C0, &qword_21DC19590);
    v148 = v149;
    goto LABEL_13;
  }

  v195 = *&v89[*(v77 + 48)];
  sub_21DAB69FC(v89);
  v91 = v201;
  sub_21D0D3954(v86, v201, &qword_27CE5C1C0, &qword_21DC19590);
  v92 = v221;
  v93 = *(v221 + 48);
  v94 = *(v91 + v93);
  v95 = v204;
  sub_21DAB6998(v91, v204);
  *(v95 + v93) = v94;
  v229 = sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);

  v96 = sub_21DBFB12C();
  v216 = v96;
  sub_21DBF60DC();
  v225 = sub_21DBF60BC();
  v97 = sub_21DBF60AC();
  v215 = v97;
  v217 = *MEMORY[0x277D76648];
  v98 = v217;
  v230 = *MEMORY[0x277D76768];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3C0, &unk_21DC19598);
  v99 = swift_allocObject();
  v100 = *(*v99 + 104);
  v101 = *(v202 + 56);
  v101(v99 + v100, 1, 1, v92);
  v102 = (v99 + *(*v99 + 136));
  *v102 = 0;
  v102[1] = 0;
  *(v99 + *(*v99 + 112)) = v96;
  *(v99 + *(*v99 + 120)) = v97;
  sub_21D0D3954(v95, v99 + *(*v99 + 96), &qword_27CE5C1C0, &qword_21DC19590);
  swift_storeEnumTagMultiPayload();
  v103 = v203;
  sub_21D0D3954(v95, v203, &qword_27CE5C1C0, &qword_21DC19590);
  v101(v103, 0, 1, v92);
  swift_beginAccess();
  v104 = v98;
  v105 = v230;
  v216 = v216;
  v106 = v215;
  sub_21DAB8200(v103, v99 + v100);
  swift_endAccess();
  sub_21DBF9D4C();
  v241 = MEMORY[0x277D84F90];
  sub_21D66282C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00, &unk_21DC0D9A0);
  sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00, &unk_21DC0D9A0);
  sub_21DBFBCBC();
  (*(v210 + 104))(v209, *MEMORY[0x277D85260], v211);
  v107 = sub_21DBFB14C();
  v108 = v95;
  v109 = v95;
  v110 = v205;
  sub_21D0D3954(v108, v205, &qword_27CE5C1C0, &qword_21DC19590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3C8, &qword_21DC195A8);
  v111 = swift_allocObject();
  *(v111 + 72) = 0u;
  *(v111 + 88) = 0u;
  *(v111 + 104) = 0;
  *(v111 + 108) = -1;
  *(v111 + 120) = 0;
  *(v111 + 128) = 1;
  v112 = *(*v111 + 216);
  v113 = swift_slowAlloc();
  *(v111 + v112) = v113;
  *(v111 + *(*v111 + 224)) = 0;
  v114 = v225;
  *(v111 + 16) = v107;
  *(v111 + 24) = v114;
  v115 = v231;
  *(v111 + 32) = v106;
  *(v111 + 40) = v115;
  sub_21D0D3954(v110, v111 + *(*v111 + 208), &qword_27CE5C1C0, &qword_21DC19590);
  swift_storeEnumTagMultiPayload();
  *v113 = 0;

  sub_21D0CF7E0(v110, &qword_27CE5C1C0, &qword_21DC19590);
  sub_21D0CF7E0(v109, &qword_27CE5C1C0, &qword_21DC19590);
  v116 = v230;
  *(v111 + 48) = v217;
  *(v111 + 56) = v116;
  *(v111 + 64) = 1;
  *(v99 + *(*v99 + 128)) = v111;
  v117 = swift_allocObject();
  swift_weakInit();
  v118 = swift_allocObject();
  v119 = v234;
  swift_weakInit();
  v120 = swift_allocObject();
  *(v120 + 16) = v117;
  *(v120 + 24) = v118;
  v121 = *(v111 + 72);
  v122 = *(v111 + 80);
  *(v111 + 72) = sub_21D5046D0;
  *(v111 + 80) = v120;

  sub_21D0D0E88(v121, v122);

  v123 = *(v99 + *(*v99 + 128));
  v124 = swift_allocObject();
  swift_weakInit();
  v125 = *(v123 + 88);
  v126 = *(v123 + 96);
  *(v123 + 88) = sub_21D5046D8;
  *(v123 + 96) = v124;

  v127 = v125;
  v128 = v119;
  sub_21D0D0E88(v127, v126);

  v129 = swift_allocObject();
  swift_weakInit();
  v130 = swift_allocObject();
  swift_weakInit();
  v131 = swift_allocObject();
  *(v131 + 16) = v129;
  *(v131 + 24) = v130;
  v132 = (v99 + *(*v99 + 136));
  v133 = *v132;
  v134 = v132[1];
  *v132 = sub_21D5046E0;
  v132[1] = v131;

  sub_21D0D0E88(v133, v134);

  v135 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_dataViewMonitor;
  swift_beginAccess();
  *(v119 + v135) = v99;

  v136 = v213;
  sub_21D0D3954(v222, v213, &qword_27CE5C1C0, &qword_21DC19590);

  v137 = v214;
  sub_21D0D3954(v136 + *(v212 + 20), v214, &qword_27CE65F88, &unk_21DC3B130);
  sub_21DAB69FC(v136);
  v138 = v233;
  v139 = v235;
  if ((*(v233 + 48))(v137, 1, v235) == 1)
  {
    sub_21D0CF7E0(v137, &qword_27CE65F88, &unk_21DC3B130);
    v140 = v228;
    v141 = v227;
    if (qword_27CE570C0 != -1)
    {
      swift_once();
    }

    v142 = sub_21DBF84BC();
    __swift_project_value_buffer(v142, qword_27CE65F38);
    v143 = sub_21DBF84AC();
    v144 = sub_21DBFAEBC();
    v145 = os_log_type_enabled(v143, v144);
    v146 = v220;
    v90 = v223;
    v88 = v219;
    if (v145)
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&dword_21D0C9000, v143, v144, "TTRShowTemplateMonitorableDataView filed to unwrap dateViewTemplateModel", v147, 2u);
      MEMORY[0x223D46520](v147, -1, -1);
    }

    sub_21D0CF7E0(v222, &qword_27CE5C1C0, &qword_21DC19590);
    sub_21D0CF7E0(v218, &qword_27CE65FC8, qword_21DC3B2C8);
    sub_21D0CF7E0(v141, &qword_27CE5C1C0, &qword_21DC19590);
    v148 = v140;
LABEL_13:
    sub_21DAB69FC(v148);
    (*(v233 + 8))(v224, v139);
    (*(v90 + 8))(v88, v146);
    return 0;
  }

  v157 = v200;
  (*(v138 + 32))(v200, v137, v139);
  v158 = v128 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v160 = *(v158 + 1), ObjectType = swift_getObjectType(), v162 = (*(*(v160 + 8) + 8))(ObjectType), v164 = v163, Strong = swift_unknownObjectRelease(), (v164 & 1) != 0))
  {
    v162 = 30;
  }

  v165 = v198;
  v166 = v197;
  v167 = v162 * 1.5;
  v168 = v199;
  if (COERCE__INT64(fabs(v167)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v167 <= -9.22337204e18)
  {
    goto LABEL_30;
  }

  if (v167 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v169 = v167;
  v170.n128_f64[0] = MEMORY[0x223D3FCA0](Strong);
  v162 = sub_21DA68CBC(v169, v170);
  (*(v165 + 8))(v166, v168);
  if (qword_27CE570C0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v171 = sub_21DBF84BC();
  __swift_project_value_buffer(v171, qword_27CE65F38);
  sub_21DBF8E0C();
  v172 = sub_21DBF84AC();
  v173 = sub_21DBFAEAC();

  if (os_log_type_enabled(v172, v173))
  {
    v174 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v240 = v175;
    *v174 = 136315138;
    if (v162 >> 62)
    {
      v176 = sub_21DBFBD7C();
    }

    else
    {
      v176 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v239 = v176;
    sub_21D679D9C();
    v177 = sub_21DBFBC0C();
    v179 = sub_21D0CDFB4(v177, v178, &v240);

    *(v174 + 4) = v179;
    _os_log_impl(&dword_21D0C9000, v172, v173, "Fetching initial set of reminders {count: %s}", v174, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v175);
    MEMORY[0x223D46520](v175, -1, -1);
    MEMORY[0x223D46520](v174, -1, -1);

    v128 = v234;
  }

  else
  {
  }

  v180 = [v226 store];
  v181 = sub_21DBFB12C();
  v182 = swift_allocObject();
  *(v182 + 16) = 0;
  v183 = v195;
  v184 = sub_21D87E81C(v180, sub_21D554248, v182, v183, v181);
  swift_beginAccess();
  v184[3] = &protocol witness table for TTRShowTemplateDataModelSource;
  swift_unknownObjectWeakAssign();
  sub_21DAB0AFC(v162);

  v185 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
  swift_beginAccess();
  *(v128 + v185) = v184;

  if (*(v128 + v135))
  {

    sub_21D400B64(1);
  }

  v237 = 0;
  v238 = 0xE000000000000000;
  sub_21DBFBEEC();
  v237 = *v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F50, &unk_21DC3B0F0);
  v186 = sub_21DBFA1AC();
  v188 = v187;

  v237 = v186;
  v238 = v188;
  MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
  v189 = sub_21DBFAEDC();
  MEMORY[0x28223BE20](v189);
  v190 = v226;
  *(&v194 - 6) = v191;
  *(&v194 - 5) = v190;
  *(&v194 - 4) = v232;
  *(&v194 - 3) = v157;
  v192 = v219;
  *(&v194 - 2) = v219;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();

  sub_21D0CF7E0(v222, &qword_27CE5C1C0, &qword_21DC19590);
  sub_21D0CF7E0(v218, &qword_27CE65FC8, qword_21DC3B2C8);
  sub_21D0CF7E0(v227, &qword_27CE5C1C0, &qword_21DC19590);
  sub_21DAB69FC(v228);
  v193 = *(v233 + 8);
  v193(v224, v139);
  v193(v157, v139);
  (*(v223 + 8))(v192, v220);
  return 1;
}