Swift::Void __swiftcall ServiceManager.categoryRepository(_:didChangeCategoriesForBundleIdentifier:)(UNSNotificationCategoryRepository _, Swift::String didChangeCategoriesForBundleIdentifier)
{
  observable = _._observable;
  repository = _._repository;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v5 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient);
    if (v5)
    {
      v6 = v5;
      sub_1DA935578(repository, observable);
    }
  }
}

unint64_t ServiceManager.captureState()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6320, &unk_1DA95F3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA9596E0;
  *(inited + 32) = 0x69726F74696E6F6DLL;
  v2 = inited + 32;
  *(inited + 40) = 0xEA0000000000676ELL;
  v3 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_isObservingRepositories);
  v4 = MEMORY[0x1E69E6398];
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 80) = v4;
  *(inited + 48) = v3;
  v5 = sub_1DA849274(inited);
  swift_setDeallocating();
  sub_1DA7BA120(v2, &unk_1ECBD6550, &qword_1DA95F8F0);
  return v5;
}

unint64_t sub_1DA8B32E0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6320, &unk_1DA95F3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA9596E0;
  *(inited + 32) = 0x69726F74696E6F6DLL;
  v3 = inited + 32;
  *(inited + 40) = 0xEA0000000000676ELL;
  v4 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_isObservingRepositories);
  v5 = MEMORY[0x1E69E6398];
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 80) = v5;
  *(inited + 48) = v4;
  v6 = sub_1DA849274(inited);
  swift_setDeallocating();
  sub_1DA7BA120(v3, &unk_1ECBD6550, &qword_1DA95F8F0);
  return v6;
}

uint64_t ServiceManager.description.getter()
{
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD000000000000025, 0x80000001DA954100);
  v1 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6330, &unk_1DA95F3E0);
  v2 = sub_1DA940A74();
  MEMORY[0x1E1271BD0](v2);

  MEMORY[0x1E1271BD0](0xD000000000000019, 0x80000001DA954130);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6338, qword_1DA95F3F0);
  v3 = sub_1DA940A74();
  MEMORY[0x1E1271BD0](v3);

  return 0;
}

uint64_t sub_1DA8B3544(uint64_t a1)
{
  v8[3] = type metadata accessor for RemoteNotificationsProperties.Availability(0);
  v8[4] = &protocol witness table for RemoteNotificationsProperties.Availability;
  v8[0] = a1;
  v2 = qword_1EE113010;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_1EE113018;
  v5 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_1DA84AA88(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1DA8B3668(void *a1)
{
  v8[3] = type metadata accessor for ServiceManager(0);
  v8[4] = &protocol witness table for ServiceManager;
  v8[0] = a1;
  v2 = qword_1EE113010;
  v3 = a1;
  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_1EE113018;
  v5 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_1DA84AA88(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1DA8B3788(uint64_t a1)
{
  v8[3] = type metadata accessor for RemoteNotificationsProperties(0);
  v8[4] = &protocol witness table for RemoteNotificationsProperties;
  v8[0] = a1;
  v2 = qword_1EE113010;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_1EE113018;
  v5 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_1DA84A760(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1DA8B38AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1DA88664C(0, v6[2] + 1, 1, v6);
    *(a2 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1DA88664C((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = a1;
  v10[5] = a3;
  *(a2 + 16) = v6;
  swift_endAccess();
}

uint64_t sub_1DA8B3988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = type metadata accessor for UserNotificationsIDSCloudPushTarget();
  v24 = &off_1F5636740;
  *&v22 = a1;
  v20 = type metadata accessor for _UNImageProviderCommuncationContextDataProvider();
  v21 = &protocol witness table for _UNImageProviderCommuncationContextDataProvider;
  *&v19 = a2;
  if (qword_1EE110E68 != -1)
  {
    swift_once();
  }

  v6 = sub_1DA9405A4();
  __swift_project_value_buffer(v6, qword_1EE11ADC0);
  sub_1DA7BABAC(&v22, v18);
  v7 = sub_1DA940584();
  v8 = sub_1DA940F34();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    sub_1DA7BABAC(v18, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
    v11 = sub_1DA940A74();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(v18);
    v14 = sub_1DA7AE6E8(v11, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DA7A9000, v7, v8, "UserNotificationsCloudPushHandler init with target: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12739F0](v10, -1, -1);
    MEMORY[0x1E12739F0](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1DA7B9FAC(&v22, a3 + 16);
  sub_1DA7B9FAC(&v19, a3 + 56);
  return a3;
}

char *sub_1DA8B3B7C(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1DA940804();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a2[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_notificationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_attachmentDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_categoriesDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_actionsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_coordinationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &a2[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_properties];
  *v9 = a1;
  *(v9 + 1) = &off_1F5637B08;
  v15.receiver = a2;
  v15.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = *&v10[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_properties];
  sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E7F88], v5);
  v12 = v10;
  swift_unknownObjectRetain();
  v13 = sub_1DA941014();
  (*(v6 + 8))(v8, v5);
  sub_1DA8B4538(v12, v13, v11);
  swift_unknownObjectRelease();

  return v12;
}

void *sub_1DA8B3DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  v44 = a7;
  v40 = a5;
  v41 = a6;
  v42 = a3;
  v43 = a4;
  v39 = a2;
  v45 = a1;
  v37[1] = *a8;
  v9 = sub_1DA940694();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v37[2] = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1DA940FC4();
  v11 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v15 - 8);
  sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  sub_1DA940834();
  v47 = MEMORY[0x1E69E7CC0];
  sub_1DA8B4B8C(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA82B658();
  sub_1DA9411D4();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8098], v38);
  v16 = v45;
  v17 = v39;
  a8[2] = sub_1DA941004();
  a8[6] = 0;
  swift_unknownObjectWeakInit();
  a8[9] = 0;
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *(v18 + 16) = v19;
  *v19 = 0;
  v20 = MEMORY[0x1E69E7CC8];
  a8[12] = v18;
  a8[13] = v20;
  v21 = v41;
  a8[10] = v40;
  a8[11] = v21;
  a8[3] = v16;
  a8[4] = v17;
  a8[6] = &off_1F5633E20;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();

  a8[7] = v43;
  a8[8] = &off_1F56380C8;
  if (v44)
  {
    v22 = a8[2];

    v23 = v22;
    sub_1DA940684();
    swift_allocObject();
    swift_weakInit();
    sub_1DA940734();
    swift_allocObject();
    a8[9] = sub_1DA940714();

    if (a8[9])
    {

      sub_1DA940724();
    }

    v24 = sub_1DA940A94();
    notify_post((v24 + 32));

    if (qword_1EE114E10 != -1)
    {
      swift_once();
    }

    v25 = sub_1DA9405A4();
    __swift_project_value_buffer(v25, qword_1EE114E20);

    v26 = sub_1DA940584();
    v27 = sub_1DA940EF4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47 = v29;
      *v28 = 136315650;
      v46 = a8;

      v30 = sub_1DA940A74();
      v32 = sub_1DA7AE6E8(v30, v31, &v47);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = a8[10];
      v34 = a8[11];

      v35 = sub_1DA7AE6E8(v33, v34, &v47);

      *(v28 + 14) = v35;
      *(v28 + 22) = 2080;
      *(v28 + 24) = sub_1DA7AE6E8(0xD00000000000002ALL, 0x80000001DA951D30, &v47);
      _os_log_impl(&dword_1DA7A9000, v26, v27, "%s serviceName: %s posted Darwin notification: %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v29, -1, -1);
      MEMORY[0x1E12739F0](v28, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    a8[9] = 0;
  }

  return a8;
}

void sub_1DA8B4538(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  [*(a3 + 40) addDelegate:a1 queue:a2];
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v6 = sub_1DA9405A4();
  __swift_project_value_buffer(v6, qword_1EE110EA0);
  v7 = a1;

  v8 = sub_1DA940584();
  v9 = sub_1DA940EF4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 136315394;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD64A8, &unk_1DA95F4E8);
    v13 = sub_1DA940A74();
    v15 = sub_1DA7AE6E8(v13, v14, &v18);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = *(a3 + 40);
    *(v10 + 14) = v16;
    *v11 = v16;
    v17 = v16;
    _os_log_impl(&dword_1DA7A9000, v8, v9, "RemoteNotificationsProperties add(delegate): %s idsService: %@", v10, 0x16u);
    sub_1DA7BA120(v11, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E12739F0](v12, -1, -1);
    MEMORY[0x1E12739F0](v10, -1, -1);
  }
}

uint64_t type metadata accessor for ServiceManager(uint64_t a1)
{
  result = qword_1EE1134D8;
  if (!qword_1EE1134D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA8B47CC(uint64_t a1)
{
  sub_1DA8B48C4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DA8B48C4(uint64_t a1)
{
  if (!qword_1EE114CA8)
  {
    sub_1DA93F964();
    v1 = sub_1DA941134();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE114CA8);
    }
  }
}

void sub_1DA8B493C(uint64_t a1)
{
  v3 = *(sub_1DA9401F4() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1DA8B28FC(a1, v4, v5, v6, v7);
}

uint64_t sub_1DA8B49B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double (*sub_1DA8B4A20())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1DA8B4A7C;
}

uint64_t sub_1DA8B4A84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA7B7470;

  return sub_1DA8B1864(a1, v4, v5, v6);
}

unint64_t sub_1DA8B4B38()
{
  result = qword_1EE115588;
  if (!qword_1EE115588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115588);
  }

  return result;
}

uint64_t sub_1DA8B4B8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DA8B4BF8()
{
  v1 = v0;
  if (qword_1ECBD4708 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1ECBE3D60);

  v3 = sub_1DA940584();
  v4 = sub_1DA940F34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23[0] = v6;
    *v5 = 136315138;
    v7 = DateDefinedReaperBackgroundSystemTaskHandler.description.getter();
    v9 = sub_1DA7AE6E8(v7, v8, v23);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "%s start()", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E12739F0](v6, -1, -1);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  v10 = [objc_opt_self() sharedScheduler];
  v11 = sub_1DA940A04();
  v12 = *(v1 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v23[4] = sub_1DA8B5284;
  v23[5] = v13;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1DA7B00D0;
  v23[3] = &block_descriptor_16;
  v14 = _Block_copy(v23);
  v15 = v12;

  [v10 registerForTaskWithIdentifier:v11 usingQueue:v15 launchHandler:v14];
  _Block_release(v14);

  v16 = sub_1DA940584();
  v17 = sub_1DA940F34();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23[0] = v19;
    *v18 = 136315138;
    v20 = DateDefinedReaperBackgroundSystemTaskHandler.description.getter();
    v22 = sub_1DA7AE6E8(v20, v21, v23);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1DA7A9000, v16, v17, "%s start() completed", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1E12739F0](v19, -1, -1);
    MEMORY[0x1E12739F0](v18, -1, -1);
  }
}

void sub_1DA8B4F48(void *a1, uint64_t a2)
{
  v21[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1ECBD4708 != -1)
    {
      swift_once();
    }

    v3 = sub_1DA9405A4();
    __swift_project_value_buffer(v3, qword_1ECBE3D60);

    v4 = sub_1DA940584();
    v5 = sub_1DA940F34();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21[0] = v7;
      *v6 = 136315138;

      v8 = DateDefinedReaperBackgroundSystemTaskHandler.description.getter();
      v10 = v9;

      v11 = sub_1DA7AE6E8(v8, v10, v21);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_1DA7A9000, v4, v5, "%s registerForTask(withIdentifier): Called", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1E12739F0](v7, -1, -1);
      MEMORY[0x1E12739F0](v6, -1, -1);
    }

    sub_1DA8B528C();
    [a1 setTaskCompleted];
  }

  else
  {
    if (qword_1ECBD4708 != -1)
    {
      swift_once();
    }

    v12 = sub_1DA9405A4();
    __swift_project_value_buffer(v12, qword_1ECBE3D60);
    v13 = sub_1DA940584();
    v14 = sub_1DA940F14();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DA7A9000, v13, v14, "DateDefinedReaperBackgroundSystemTaskHandler registerForTask(withIdentifier): Called but self has gone away", v15, 2u);
      MEMORY[0x1E12739F0](v15, -1, -1);
    }

    v21[0] = 0;
    v16 = [a1 setTaskExpiredWithRetryAfter:v21 error:7200.0];
    v17 = v21[0];
    if (v16)
    {

      v18 = v17;
    }

    else
    {
      v19 = v21[0];
      v20 = sub_1DA93F8C4();

      swift_willThrow();
    }
  }
}

void sub_1DA8B528C()
{
  v0 = sub_1DA93FAF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECBD4708 != -1)
  {
    swift_once();
  }

  v4 = sub_1DA9405A4();
  __swift_project_value_buffer(v4, qword_1ECBE3D60);

  v5 = sub_1DA940584();
  v6 = sub_1DA940F34();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22 = v0;
    v8 = v7;
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v10 = DateDefinedReaperBackgroundSystemTaskHandler.description.getter();
    v12 = sub_1DA7AE6E8(v10, v11, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DA7A9000, v5, v6, "%s run()", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12739F0](v9, -1, -1);
    v13 = v8;
    v0 = v22;
    MEMORY[0x1E12739F0](v13, -1, -1);
  }

  sub_1DA93FA74();
  v14 = sub_1DA830930(v3);

  (*(v1 + 8))(v3, v0);

  v15 = sub_1DA940584();
  v16 = sub_1DA940F34();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136315394;
    v19 = DateDefinedReaperBackgroundSystemTaskHandler.description.getter();
    v21 = sub_1DA7AE6E8(v19, v20, &v23);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v14;
    _os_log_impl(&dword_1DA7A9000, v15, v16, "%s run() removedCount: %ld", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E12739F0](v18, -1, -1);
    MEMORY[0x1E12739F0](v17, -1, -1);
  }
}

uint64_t DateDefinedReaperBackgroundSystemTaskHandler.deinit()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedScheduler];
  v3 = sub_1DA940A04();
  [v2 deregisterTaskWithIdentifier_];

  if (qword_1ECBD4708 != -1)
  {
    swift_once();
  }

  v4 = sub_1DA9405A4();
  __swift_project_value_buffer(v4, qword_1ECBE3D60);

  v5 = sub_1DA940584();
  v6 = sub_1DA940F34();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = DateDefinedReaperBackgroundSystemTaskHandler.description.getter();
    v11 = sub_1DA7AE6E8(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DA7A9000, v5, v6, "%s deinit()", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12739F0](v8, -1, -1);
    MEMORY[0x1E12739F0](v7, -1, -1);
  }

  return v1;
}

uint64_t DateDefinedReaperBackgroundSystemTaskHandler.__deallocating_deinit()
{
  DateDefinedReaperBackgroundSystemTaskHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t DateDefinedReaperBackgroundSystemTaskHandler.description.getter()
{
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD000000000000036, 0x80000001DA9545D0);

  sub_1DA941364();

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5000, &unk_1DA959390);
  v0 = sub_1DA940A74();
  MEMORY[0x1E1271BD0](v0);

  MEMORY[0x1E1271BD0](62, 0xE100000000000000);

  MEMORY[0x1E1271BD0](0xD00000000000001BLL, 0x80000001DA951720);

  MEMORY[0x1E1271BD0](15913, 0xE200000000000000);
  return 0;
}

void sub_1DA8B595C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DA941264())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E1272460](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

char *UserNotificationsCloudPushManager.__allocating_init(target:categoryRepository:settingsProvider:sourceProvider:pushManagerOptions:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v13 = a1[3];
  v14 = a1[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
  ObjectType = swift_getObjectType();
  v17 = sub_1DA8B9590(v15, a2, a3, a5, a6, v6, v13, ObjectType, v14, a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v17;
}

char *UserNotificationsCloudPushManager.init(target:categoryRepository:settingsProvider:sourceProvider:pushManagerOptions:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v13 = a1[3];
  v14 = a1[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  ObjectType = swift_getObjectType();
  v20 = sub_1DA8B9214(v17, a2, a3, a5, a6, v6, v13, ObjectType, v14, a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v20;
}

void sub_1DA8B5C78(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DA9401F4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v126 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v122 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v127 = &v122 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v125 = &v122 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v123 = &v122 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v122 - v19;
  if (qword_1EE110D80 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  v22 = __swift_project_value_buffer(v21, qword_1EE11AD48);
  v128 = *(v7 + 16);
  v129 = v7 + 16;
  v128(v20, a2, v6);

  v130 = v22;
  v23 = sub_1DA940584();
  v24 = sub_1DA940F34();

  v25 = os_log_type_enabled(v23, v24);
  v132 = v7;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v124 = v3;
    v27 = v26;
    v122 = swift_slowAlloc();
    v135[0] = v122;
    *v27 = 136315394;
    v28 = sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
    v29 = MEMORY[0x1E1271CD0](a1, v28);
    v31 = sub_1DA7AE6E8(v29, v30, v135);
    v133 = v12;
    v32 = a1;
    v33 = a2;
    v34 = v6;
    v35 = v31;

    *(v27 + 4) = v35;
    *(v27 + 12) = 2080;
    v36 = sub_1DA940014();
    v38 = v37;
    v131 = *(v7 + 8);
    v131(v20, v34);
    v39 = sub_1DA7AE6E8(v36, v38, v135);
    v6 = v34;
    a2 = v33;
    a1 = v32;
    v12 = v133;

    *(v27 + 14) = v39;
    _os_log_impl(&dword_1DA7A9000, v23, v24, "notificationRepositoryDidPerformUpdates: %s forBundleIdentifier: %s", v27, 0x16u);
    v40 = v122;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v40, -1, -1);
    v41 = v27;
    v3 = v124;
    MEMORY[0x1E12739F0](v41, -1, -1);
  }

  else
  {

    v131 = *(v7 + 8);
    v131(v20, v6);
  }

  v42 = sub_1DA9401C4();
  if (v42)
  {
    v43 = v42;
    v44 = swift_allocObject();
    v45 = v43;
    v133 = v43;
  }

  else
  {
    v46 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_settingsProvider + 8);
    swift_getObjectType();
    v47 = sub_1DA940014();
    v48 = (*(v46 + 8))(v47);

    v44 = swift_allocObject();
    v133 = v48;
    if (!v48)
    {
      swift_deallocUninitializedObject();
      v95 = v126;
      v128(v126, a2, v6);
      v96 = sub_1DA940584();
      v97 = sub_1DA940F14();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v135[0] = v99;
        *v98 = 136380675;
        v100 = sub_1DA940014();
        v102 = v101;
        v131(v95, v6);
        v103 = sub_1DA7AE6E8(v100, v102, v135);

        *(v98 + 4) = v103;
        _os_log_impl(&dword_1DA7A9000, v96, v97, "Not forwarding updates from %{private}s; unable to find settings.", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v99);
        MEMORY[0x1E12739F0](v99, -1, -1);
        MEMORY[0x1E12739F0](v98, -1, -1);
      }

      else
      {

        v131(v95, v6);
      }

      return;
    }

    v45 = v133;
    v43 = 0;
  }

  *(v44 + 16) = v45;
  v49 = v43;
  v50 = [v45 remoteNotificationsSetting];
  v51 = *(v44 + 16);
  if (v50 != 2)
  {
    [v51 remoteNotificationsSetting];
    v128(v12, a2, v6);
    v67 = sub_1DA940584();
    v68 = sub_1DA940F34();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v135[0] = v70;
      *v69 = 136380931;
      v71 = sub_1DA940014();
      v72 = v12;
      v74 = v73;
      v131(v72, v6);
      v75 = sub_1DA7AE6E8(v71, v74, v135);

      *(v69 + 4) = v75;
      *(v69 + 12) = 2082;
      v76 = UNNotificationSettingString();
      v77 = sub_1DA940A14();
      v79 = v78;

      v80 = sub_1DA7AE6E8(v77, v79, v135);

      *(v69 + 14) = v80;
      _os_log_impl(&dword_1DA7A9000, v67, v68, "Not forwarding updates from %{private}s; mirroring: %{public}s.", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v70, -1, -1);
      MEMORY[0x1E12739F0](v69, -1, -1);

      goto LABEL_16;
    }

    v94 = v12;
    goto LABEL_30;
  }

  if ([v51 scheduledDeliverySetting] == 2)
  {
    [*(v44 + 16) scheduledDeliverySetting];
    v52 = v127;
    v128(v127, a2, v6);
    v53 = sub_1DA940584();
    v54 = sub_1DA940F34();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v52;
      v57 = swift_slowAlloc();
      v135[0] = v57;
      *v55 = 136380931;
      v58 = sub_1DA940014();
      v60 = v59;
      v131(v56, v6);
      v61 = sub_1DA7AE6E8(v58, v60, v135);

      *(v55 + 4) = v61;
      *(v55 + 12) = 2082;
      v62 = UNNotificationSettingString();
      v63 = sub_1DA940A14();
      v65 = v64;

      v66 = sub_1DA7AE6E8(v63, v65, v135);

      *(v55 + 14) = v66;
      _os_log_impl(&dword_1DA7A9000, v53, v54, "Not forwarding updates from %{private}s; scheduled summary: %{public}s.", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v57, -1, -1);
      MEMORY[0x1E12739F0](v55, -1, -1);

LABEL_16:
      return;
    }

    v94 = v52;
    goto LABEL_30;
  }

  v81 = objc_opt_self();
  sub_1DA940014();
  v82 = sub_1DA940A04();

  v83 = [v81 applicationWithBundleIdentifier_];

  if ([v83 isHidden])
  {
    v127 = v83;
    v84 = v125;
    v128(v125, a2, v6);
    v85 = sub_1DA940584();
    v86 = sub_1DA940F34();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v135[0] = v88;
      *v87 = 136642819;
      v89 = sub_1DA940014();
      v90 = v84;
      v92 = v91;
      v131(v90, v6);
      v93 = sub_1DA7AE6E8(v89, v92, v135);

      *(v87 + 4) = v93;
      _os_log_impl(&dword_1DA7A9000, v85, v86, "Not forwarding updates from %{sensitive}s; it is hidden.", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      MEMORY[0x1E12739F0](v88, -1, -1);
      MEMORY[0x1E12739F0](v87, -1, -1);

      goto LABEL_16;
    }

    v94 = v84;
LABEL_30:
    v131(v94, v6);

    return;
  }

  if ([v83 isLocked] && objc_msgSend(*(v44 + 16), sel_showPreviewsSetting) != 2)
  {
    v126 = a1;
    v104 = v123;
    v128(v123, a2, v6);
    v105 = sub_1DA940584();
    v106 = sub_1DA940F34();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = v104;
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v135[0] = v109;
      *v108 = 136380675;
      v110 = sub_1DA940014();
      v127 = v83;
      v111 = v110;
      v124 = v3;
      v113 = v112;
      v131(v107, v6);
      v114 = v111;
      v83 = v127;
      v115 = sub_1DA7AE6E8(v114, v113, v135);
      v3 = v124;

      *(v108 + 4) = v115;
      _os_log_impl(&dword_1DA7A9000, v105, v106, "Forcing Show Previews setting to Never for %{private}s; it is protected.", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v109);
      MEMORY[0x1E12739F0](v109, -1, -1);
      MEMORY[0x1E12739F0](v108, -1, -1);
    }

    else
    {

      v131(v104, v6);
    }

    [*(v44 + 16) mutableCopy];
    sub_1DA941154();
    swift_unknownObjectRelease();
    sub_1DA7AF3EC(0, &qword_1ECBD5058, 0x1E6983230);
    swift_dynamicCast();
    v116 = v134;
    [v134 setShowPreviewsSetting_];
    [v116 copy];
    sub_1DA941154();

    swift_unknownObjectRelease();
    sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
    swift_dynamicCast();
    v117 = *(v44 + 16);
    *(v44 + 16) = v134;

    a1 = v126;
  }

  v118 = sub_1DA940014();
  v120 = sub_1DA8B8240(a1, v118, v119);

  MEMORY[0x1EEE9AC00](v121);
  *(&v122 - 4) = a2;
  *(&v122 - 3) = v3;
  *(&v122 - 2) = v44;
  sub_1DA8B595C(sub_1DA8B96AC, (&v122 - 6), v120);
}

uint64_t sub_1DA8B6A48(id *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v54 = a4;
  v53 = a3;
  v50 = a2;
  v52 = sub_1DA9401F4();
  v47 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v49 = v5;
  v51 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v43 - v7;
  v9 = sub_1DA93FAF4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (v43 - v14);
  v55 = *a1;
  v16 = [v55 notificationRecord];
  v17 = [v16 triggerType];

  if (!v17)
  {
    sub_1DA940A14();
LABEL_8:

    v48 = 1;
    goto LABEL_11;
  }

  v18 = v10;
  v19 = sub_1DA940A14();
  v21 = v20;

  v22 = sub_1DA940A14();
  if (!v21)
  {
    v10 = v18;
    goto LABEL_8;
  }

  if (v19 == v22 && v21 == v23)
  {

    v48 = 0;
  }

  else
  {
    v24 = sub_1DA941684();

    v48 = v24 ^ 1;
  }

  v10 = v18;
LABEL_11:
  v25 = [v55 notificationRecord];
  v26 = [v25 date];

  v45 = v10;
  v46 = v9;
  v44 = v15;
  if (v26)
  {
    sub_1DA93FAB4();

    v27 = *(v10 + 32);
    v27(v8, v13, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    v27(v15, v8, v9);
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    sub_1DA93FAC4();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_1DA7BA120(v8, &unk_1ECBD6530, &unk_1DA958820);
    }
  }

  v43[1] = type metadata accessor for Fuzz();
  v28 = v50;
  v43[0] = sub_1DA940014();
  v30 = v29;
  v31 = v47;
  v32 = v51;
  v33 = v52;
  (*(v47 + 16))(v51, v28, v52);
  v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v35 = (v49 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v53;
  v38 = v55;
  *(v36 + 16) = v53;
  *(v36 + 24) = v38;
  (*(v31 + 32))(v36 + v34, v32, v33);
  *(v36 + v35) = v54;
  v39 = v37;
  v40 = v38;

  v41 = v44;
  sub_1DA903218(v48 & 1, v44, v43[0], v30, sub_1DA8B98C0, v36);

  return (*(v45 + 8))(v41, v46);
}

void sub_1DA8B6F38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 16);
  v8 = v7;
  sub_1DA8B6FB4(a2, a3, v7);
}

void sub_1DA8B6FB4(void *a1, uint64_t a2, void *a3)
{
  v161 = a2;
  v162 = sub_1DA9401F4();
  v160 = *(v162 - 8);
  v6 = MEMORY[0x1EEE9AC00](v162);
  v8 = &v155[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v155[-v10];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v155[-v13];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v155[-v16];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v155[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v155[-v21];
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v25 = qword_1EE110D80;
    v26 = a1;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = sub_1DA9405A4();
    __swift_project_value_buffer(v27, qword_1EE11AD48);
    v28 = v160;
    v29 = v162;
    (*(v160 + 16))(v22, v161, v162);
    v30 = v26;
    v31 = sub_1DA940584();
    v32 = sub_1DA940F34();
    if (!os_log_type_enabled(v31, v32))
    {

      (*(v28 + 8))(v22, v29);
      return;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v163 = v34;
    *v33 = 136315394;
    v35 = [v24 notificationRecord];
    v36 = [v35 identifier];

    if (v36)
    {
      v37 = sub_1DA940A14();
      v39 = v38;

      v40 = sub_1DA7AE6E8(v37, v39, &v163);

      *(v33 + 4) = v40;
      *(v33 + 12) = 2080;
      v41 = sub_1DA940014();
      v43 = v42;
      (*(v28 + 8))(v22, v162);
      v44 = sub_1DA7AE6E8(v41, v43, &v163);

      *(v33 + 14) = v44;
      _os_log_impl(&dword_1DA7A9000, v31, v32, "push(update): skipping addNotification: %s forBundleIdentifier: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v34, -1, -1);
      MEMORY[0x1E12739F0](v33, -1, -1);

      return;
    }

    __break(1u);
    goto LABEL_48;
  }

  v159 = a3;
  v45 = OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushManagerOptions;
  if (*(v3 + OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushManagerOptions))
  {
    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (v46)
    {
      v47 = v46;
      v48 = a1;
      v157 = v47;
      v158 = v48;
      v49 = [v47 notificationRecord];
      v50 = [v49 pipelineState];

      if (v50 == 2)
      {
        if (qword_1EE110D80 != -1)
        {
          swift_once();
        }

        v87 = sub_1DA9405A4();
        __swift_project_value_buffer(v87, qword_1EE11AD48);
        v88 = v160;
        v89 = v162;
        (*(v160 + 16))(v14, v161, v162);
        v72 = v158;
        v90 = sub_1DA940584();
        v91 = sub_1DA940F34();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v163 = v93;
          *v92 = 136315394;
          v94 = [v157 notificationRecord];
          v95 = [v94 identifier];

          if (!v95)
          {
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
            return;
          }

          v96 = sub_1DA940A14();
          v98 = v97;

          v99 = sub_1DA7AE6E8(v96, v98, &v163);

          *(v92 + 4) = v99;
          *(v92 + 12) = 2080;
          v100 = sub_1DA940014();
          v102 = v101;
          (*(v160 + 8))(v14, v162);
          v103 = sub_1DA7AE6E8(v100, v102, &v163);

          *(v92 + 14) = v103;
          _os_log_impl(&dword_1DA7A9000, v90, v91, "push(update): failed replaceNotification: %s forBundleIdentifier: %s - sending anyway!", v92, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v93, -1, -1);
          MEMORY[0x1E12739F0](v92, -1, -1);
        }

        else
        {

          (*(v88 + 8))(v14, v89);
        }
      }

      else
      {
        if (v50 != 1)
        {
          if (!v50)
          {
            v51 = v160;
            if (qword_1EE110D80 != -1)
            {
              swift_once();
            }

            v52 = sub_1DA9405A4();
            __swift_project_value_buffer(v52, qword_1EE11AD48);
            v53 = v162;
            (*(v51 + 16))(v20, v161, v162);
            v54 = v158;
            v55 = sub_1DA940584();
            v56 = sub_1DA940F34();
            if (!os_log_type_enabled(v55, v56))
            {

              (*(v51 + 8))(v20, v53);
              return;
            }

            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v163 = v58;
            *v57 = 136315394;
            v59 = [v157 notificationRecord];
            v60 = [v59 identifier];

            if (v60)
            {
              v61 = sub_1DA940A14();
              v63 = v62;

              v64 = sub_1DA7AE6E8(v61, v63, &v163);

              *(v57 + 4) = v64;
              *(v57 + 12) = 2080;
              v65 = sub_1DA940014();
              v67 = v66;
              (*(v51 + 8))(v20, v162);
              v68 = sub_1DA7AE6E8(v65, v67, &v163);

              *(v57 + 14) = v68;
              _os_log_impl(&dword_1DA7A9000, v55, v56, "push(update): pending replaceNotification: %s forBundleIdentifier: %s - not sending", v57, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1E12739F0](v58, -1, -1);
              MEMORY[0x1E12739F0](v57, -1, -1);

              return;
            }

            goto LABEL_50;
          }

          v159 = v3;
          v104 = v160;
          if (qword_1EE110D80 != -1)
          {
            swift_once();
          }

          v105 = sub_1DA9405A4();
          __swift_project_value_buffer(v105, qword_1EE11AD48);
          v106 = v162;
          (*(v104 + 16))(v11, v161, v162);
          v107 = v158;
          v108 = sub_1DA940584();
          v109 = sub_1DA940F14();

          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v158 = swift_slowAlloc();
            v163 = v158;
            *v110 = 136315394;
            v111 = v107;
            v157 = v108;
            v112 = v111;
            v113 = [v111 description];
            v114 = sub_1DA940A14();
            v156 = v109;
            v115 = v114;
            v117 = v116;

            v118 = sub_1DA7AE6E8(v115, v117, &v163);

            *(v110 + 4) = v118;
            *(v110 + 12) = 2080;
            v119 = sub_1DA940014();
            v121 = v120;
            (*(v160 + 8))(v11, v106);
            v122 = sub_1DA7AE6E8(v119, v121, &v163);

            *(v110 + 14) = v122;
            v123 = v157;
            _os_log_impl(&dword_1DA7A9000, v157, v156, "push(update): NOT HANDLED update: %s forBundleIdentifier: %s", v110, 0x16u);
            v124 = v158;
            swift_arrayDestroy();
            MEMORY[0x1E12739F0](v124, -1, -1);
            MEMORY[0x1E12739F0](v110, -1, -1);
          }

          else
          {

            (*(v104 + 8))(v11, v106);
          }

          v3 = v159;
          goto LABEL_38;
        }

        if (qword_1EE110D80 != -1)
        {
          swift_once();
        }

        v69 = sub_1DA9405A4();
        __swift_project_value_buffer(v69, qword_1EE11AD48);
        v70 = v160;
        v71 = v162;
        (*(v160 + 16))(v17, v161, v162);
        v72 = v158;
        v73 = sub_1DA940584();
        v74 = sub_1DA940F34();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v163 = v76;
          *v75 = 136315394;
          v77 = [v157 notificationRecord];
          v78 = [v77 identifier];

          if (!v78)
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          v79 = sub_1DA940A14();
          v81 = v80;

          v82 = sub_1DA7AE6E8(v79, v81, &v163);

          *(v75 + 4) = v82;
          *(v75 + 12) = 2080;
          v83 = sub_1DA940014();
          v85 = v84;
          (*(v160 + 8))(v17, v162);
          v86 = sub_1DA7AE6E8(v83, v85, &v163);

          *(v75 + 14) = v86;
          _os_log_impl(&dword_1DA7A9000, v73, v74, "push(update): completed replaceNotification: %s forBundleIdentifier: %s - sending!", v75, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v76, -1, -1);
          MEMORY[0x1E12739F0](v75, -1, -1);
        }

        else
        {

          (*(v70 + 8))(v17, v71);
        }
      }

      v125 = sub_1DA940014();
      sub_1DA8B7FA8(v125, v126);

      v127 = [v157 notificationRecord];
      v128 = [objc_opt_self() updateWithNotificationRecord:v127 shouldSync:1];

      v129 = sub_1DA940014();
      sub_1DA8F7884(v128, v129, v130, v159);

LABEL_41:

      return;
    }
  }

LABEL_38:
  if ((*(v3 + v45) & 2) != 0)
  {
    objc_opt_self();
    v131 = swift_dynamicCastObjCClass();
    if (v131)
    {
      v132 = v131;
      v133 = a1;
      v134 = sub_1DA940014();
      sub_1DA8F8FC0(v132, v134, v135);

      goto LABEL_41;
    }
  }

  if (qword_1EE110D80 != -1)
  {
    swift_once();
  }

  v136 = sub_1DA9405A4();
  __swift_project_value_buffer(v136, qword_1EE11AD48);
  v137 = v160;
  v138 = v162;
  (*(v160 + 16))(v8, v161, v162);
  v139 = a1;
  v140 = sub_1DA940584();
  v141 = sub_1DA940F14();

  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v163 = v161;
    *v142 = 136315394;
    v143 = v139;
    v144 = [v143 description];
    v145 = v138;
    v146 = sub_1DA940A14();
    v148 = v147;

    v149 = sub_1DA7AE6E8(v146, v148, &v163);

    *(v142 + 4) = v149;
    *(v142 + 12) = 2080;
    v150 = sub_1DA940014();
    v152 = v151;
    (*(v137 + 8))(v8, v145);
    v153 = sub_1DA7AE6E8(v150, v152, &v163);

    *(v142 + 14) = v153;
    _os_log_impl(&dword_1DA7A9000, v140, v141, "push(update): NOT HANDLED update: %s forBundleIdentifier: %s", v142, 0x16u);
    v154 = v161;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v154, -1, -1);
    MEMORY[0x1E12739F0](v142, -1, -1);
  }

  else
  {

    (*(v137 + 8))(v8, v138);
  }
}

uint64_t sub_1DA8B7FA8(uint64_t a1, unint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_categoryRepository];
  v6 = sub_1DA940A04();
  v7 = [v5 categoriesForBundleIdentifier_];

  v8 = sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
  v9 = sub_1DA940BE4();

  if (qword_1EE110D80 != -1)
  {
    swift_once();
  }

  v10 = sub_1DA9405A4();
  __swift_project_value_buffer(v10, qword_1EE11AD48);
  v11 = v2;

  v12 = sub_1DA940584();
  v13 = sub_1DA940EF4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v14 = 136315650;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7750, &qword_1DA95F618);
    v15 = sub_1DA940A74();
    v17 = a1;
    v18 = sub_1DA7AE6E8(v15, v16, &v24);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1DA7AE6E8(v17, a2, &v24);
    *(v14 + 22) = 2080;
    v19 = MEMORY[0x1E1271CD0](v9, v8);
    v21 = sub_1DA7AE6E8(v19, v20, &v24);
    a1 = v17;

    *(v14 + 24) = v21;
    _os_log_impl(&dword_1DA7A9000, v12, v13, "pushCategories from: %s bundleIdentifier: %s updatedCategories: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v23, -1, -1);
    MEMORY[0x1E12739F0](v14, -1, -1);
  }

  sub_1DA8F9A30(v9, a1, a2);
}

unint64_t sub_1DA8B8240(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v68 - v8;
  v10 = type metadata accessor for NotificationSource(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v68 - v15);
  sub_1DA82B0B4(v3 + OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_sourceProvider, &v72);
  if (v73)
  {
    v17 = a1;
    v69 = v3;
    sub_1DA7B9FAC(&v72, v74);
    v19 = v75;
    v18 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    v70 = a2;
    sub_1DA8E78DC(a2, a3, 0, v19, v18);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1DA7BA120(v9, &qword_1ECBD6640, qword_1DA95F868);
      if (qword_1EE110D80 != -1)
      {
        swift_once();
      }

      v20 = sub_1DA9405A4();
      __swift_project_value_buffer(v20, qword_1EE11AD48);

      v21 = sub_1DA940584();
      v22 = sub_1DA940F14();

      v23 = os_log_type_enabled(v21, v22);
      v24 = v70;
      a1 = v17;
      if (v23)
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v72 = v26;
        *v25 = 136380675;
        *(v25 + 4) = sub_1DA7AE6E8(v24, a3, &v72);
        _os_log_impl(&dword_1DA7A9000, v21, v22, "Skipping resolution: unable to find source for %{private}s.", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x1E12739F0](v26, -1, -1);
        MEMORY[0x1E12739F0](v25, -1, -1);
      }

      goto LABEL_8;
    }

    sub_1DA8B9950(v9, v16);
    *&v72 = &unk_1F56316E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1DA9596E0;
    v32 = v16[3];
    *(v31 + 32) = v16[2];
    *(v31 + 40) = v32;
    v71 = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
    sub_1DA8B99B4();
    v33 = sub_1DA940EE4();

    if (v33)
    {
      v34 = 2;
LABEL_29:
      sub_1DA8304A0(4);
      sub_1DA830524(v34);
      sub_1DA830524(4uLL);
      v43 = v70;
      if (qword_1EE110D80 != -1)
      {
        swift_once();
      }

      v44 = sub_1DA9405A4();
      __swift_project_value_buffer(v44, qword_1EE11AD48);

      v45 = sub_1DA940584();
      v46 = sub_1DA940F34();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *&v72 = v48;
        *v47 = 136380675;
        *(v47 + 4) = sub_1DA7AE6E8(v43, a3, &v72);
        _os_log_impl(&dword_1DA7A9000, v45, v46, "Dropping updates from %{private}s; known duplicate source.", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x1E12739F0](v48, -1, -1);
        MEMORY[0x1E12739F0](v47, -1, -1);
      }

      sub_1DA82A7FC(v16);
      __swift_destroy_boxed_opaque_existential_1(v74);
      return MEMORY[0x1E69E7CC0];
    }

    v34 = v16[7];
    if (v34 != 4)
    {
      sub_1DA8304B0(v16[7]);
      goto LABEL_29;
    }

    sub_1DA830524(4uLL);
    sub_1DA830524(4uLL);
    v35 = objc_allocWithZone(MEMORY[0x1E698E640]);
    v36 = sub_1DA93F904();
    v37 = [v35 initWithURL_];

    if (!v37)
    {
      a1 = v17;
      if (qword_1EE110D80 != -1)
      {
        swift_once();
      }

      v50 = sub_1DA9405A4();
      __swift_project_value_buffer(v50, qword_1EE11AD48);
      sub_1DA82A798(v16, v14);

      v51 = sub_1DA940584();
      v52 = sub_1DA940F14();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v72 = v54;
        *v53 = 136380931;
        *(v53 + 4) = sub_1DA7AE6E8(v70, a3, &v72);
        *(v53 + 12) = 2081;
        sub_1DA93F964();
        sub_1DA828278();
        v55 = sub_1DA941614();
        v57 = v56;
        sub_1DA82A7FC(v14);
        v58 = sub_1DA7AE6E8(v55, v57, &v72);

        *(v53 + 14) = v58;
        _os_log_impl(&dword_1DA7A9000, v51, v52, "Unable to create bundle for %{private}s at %{private}s.", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v54, -1, -1);
        MEMORY[0x1E12739F0](v53, -1, -1);
      }

      else
      {

        sub_1DA82A7FC(v14);
      }

      goto LABEL_45;
    }

    v38 = [objc_allocWithZone(UNCNotificationRecordMapper) initWithBundle:v37 categoryRepository:*(&v69->isa + OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_categoryRepository)];
    a1 = v17;
    if (!v38)
    {
      if (qword_1EE110D80 == -1)
      {
        goto LABEL_41;
      }

      goto LABEL_49;
    }

    v39 = v38;
    if (v17 >> 62)
    {
      a3 = sub_1DA941264();
      if (a3)
      {
        goto LABEL_22;
      }
    }

    else
    {
      a3 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a3)
      {
LABEL_22:
        *&v72 = MEMORY[0x1E69E7CC0];
        sub_1DA941404();
        if ((a3 & 0x8000000000000000) == 0)
        {
          v40 = 0;
          do
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x1E1272460](v40, v17);
            }

            else
            {
              v41 = *(v17 + 8 * v40 + 32);
            }

            v42 = v41;
            ++v40;
            sub_1DA8B9A18(v41, v39);

            sub_1DA9413E4();
            sub_1DA941414();
            sub_1DA941424();
            sub_1DA9413F4();
          }

          while (a3 != v40);
          sub_1DA82A7FC(v16);

          a1 = v72;
          goto LABEL_9;
        }

        __break(1u);
LABEL_49:
        swift_once();
LABEL_41:
        v59 = sub_1DA9405A4();
        __swift_project_value_buffer(v59, qword_1EE11AD48);

        v60 = v37;
        v61 = sub_1DA940584();
        v62 = sub_1DA940F14();

        v69 = v61;
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *&v72 = v65;
          *v63 = 136380931;
          *(v63 + 4) = sub_1DA7AE6E8(v70, a3, &v72);
          *(v63 + 12) = 2112;
          *(v63 + 14) = v60;
          *v64 = v37;
          v66 = v60;
          v67 = v69;
          _os_log_impl(&dword_1DA7A9000, v69, v62, "Unable to create mapper for %{private}s with %@.", v63, 0x16u);
          sub_1DA7BA120(v64, &unk_1ECBD5430, &unk_1DA959190);
          MEMORY[0x1E12739F0](v64, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v65);
          MEMORY[0x1E12739F0](v65, -1, -1);
          MEMORY[0x1E12739F0](v63, -1, -1);
        }

        else
        {
        }

LABEL_45:
        sub_1DA82A7FC(v16);
LABEL_8:

LABEL_9:
        __swift_destroy_boxed_opaque_existential_1(v74);
        return a1;
      }
    }

    sub_1DA82A7FC(v16);
    a1 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  sub_1DA7BA120(&v72, &unk_1ECBD6520, &qword_1DA958D48);
  if (qword_1EE110D80 != -1)
  {
    swift_once();
  }

  v27 = sub_1DA9405A4();
  __swift_project_value_buffer(v27, qword_1EE11AD48);
  v28 = sub_1DA940584();
  v29 = sub_1DA940F14();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1DA7A9000, v28, v29, "Skipping resolution: no source provider.", v30, 2u);
    MEMORY[0x1E12739F0](v30, -1, -1);
  }

  return a1;
}

id UserNotificationsCloudPushManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserNotificationsCloudPushManager.__deallocating_deinit(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UserNotificationsCloudPushManager();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1DA8B8E2C(const char *a1, const char **a2)
{
  v5 = v2;
  if (qword_1EE110D80 != -1)
  {
    swift_once();
  }

  v6 = sub_1DA9405A4();
  __swift_project_value_buffer(v6, qword_1EE11AD48);
  v7 = sub_1DA940584();
  v8 = sub_1DA940F34();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DA7A9000, v7, v8, a1, v9, 2u);
    MEMORY[0x1E12739F0](v9, -1, -1);
  }

  v10 = *(v5 + OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_categoryRepository);
  v11 = *a2;

  return [v10 v11];
}

Swift::Void __swiftcall UserNotificationsCloudPushManager.categoryRepository(_:didChangeCategoriesForBundleIdentifier:)(UNSNotificationCategoryRepository _, Swift::String didChangeCategoriesForBundleIdentifier)
{
  if ((*(v2 + OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushManagerOptions) & 4) != 0)
  {
    observable = _._observable;
    repository = _._repository;
    if (qword_1EE110D80 != -1)
    {
      swift_once();
    }

    v5 = sub_1DA9405A4();
    __swift_project_value_buffer(v5, qword_1EE11AD48);
    swift_unknownObjectRetain();

    v6 = sub_1DA940584();
    v7 = sub_1DA940EF4();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315394;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7750, &qword_1DA95F618);
      v10 = sub_1DA940A74();
      v12 = sub_1DA7AE6E8(v10, v11, &v13);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1DA7AE6E8(repository, observable, &v13);
      _os_log_impl(&dword_1DA7A9000, v6, v7, "categoryRepository: %s didChangeCategoriesForBundleIdentifier: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v9, -1, -1);
      MEMORY[0x1E12739F0](v8, -1, -1);
    }

    sub_1DA8B7FA8(repository, observable);
  }
}

char *sub_1DA8B9214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v48 = a3;
  v15 = *(a7 - 8);
  v43 = a9;
  v44 = a10;
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v42 - v19;
  (*(v15 + 32))(v42 - v19);
  v21 = *a5;
  *&a6[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_categoryRepository] = a2;
  type metadata accessor for _UNImageProviderCommuncationContextDataProvider();
  v22 = swift_allocObject();
  v42[1] = type metadata accessor for UserNotificationsCloudPushHandler();
  v23 = swift_allocObject();
  v45 = v15;
  v24 = *(v15 + 16);
  v47 = v20;
  v25 = v20;
  v26 = a7;
  v24(v18, v25, a7);
  v46 = a2;
  swift_unknownObjectRetain();
  *&a6[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushHandler] = sub_1DA8FA788(v18, v22, v23, a7, v43);
  v27 = &a6[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_settingsProvider];
  v28 = v44;
  *v27 = v48;
  *(v27 + 1) = v28;
  v48 = a4;
  sub_1DA82B0B4(a4, &a6[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_sourceProvider]);
  *&a6[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushManagerOptions] = v21;
  v29 = type metadata accessor for UserNotificationsCloudPushManager();
  v51.receiver = a6;
  v51.super_class = v29;
  v30 = objc_msgSendSuper2(&v51, sel_init);
  v31 = qword_1EE110D80;
  v32 = v30;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = sub_1DA9405A4();
  __swift_project_value_buffer(v33, qword_1EE11AD48);
  v34 = sub_1DA940584();
  v35 = sub_1DA940F34();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v50 = v37;
    *v36 = 136315138;
    v49 = *&v32[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushHandler];

    v38 = sub_1DA940A74();
    v40 = sub_1DA7AE6E8(v38, v39, &v50);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_1DA7A9000, v34, v35, "UserNotificationsCloudPushManager init %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E12739F0](v37, -1, -1);
    MEMORY[0x1E12739F0](v36, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_1DA7BA120(v48, &unk_1ECBD6520, &qword_1DA958D48);
  (*(v45 + 8))(v47, v26);
  return v32;
}

char *sub_1DA8B9590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = a5;
  v21 = a8;
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(type metadata accessor for UserNotificationsCloudPushManager());
  (*(v15 + 16))(v17, a1, a7);
  return sub_1DA8B9214(v17, a2, a3, a4, v20, v18, a7, v21, a9, a10);
}

unint64_t sub_1DA8B96F4()
{
  result = qword_1ECBD64E0;
  if (!qword_1ECBD64E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD64E0);
  }

  return result;
}

unint64_t sub_1DA8B974C()
{
  result = qword_1ECBD64E8;
  if (!qword_1ECBD64E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD64E8);
  }

  return result;
}

unint64_t sub_1DA8B97A4()
{
  result = qword_1ECBD64F0;
  if (!qword_1ECBD64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD64F0);
  }

  return result;
}

unint64_t sub_1DA8B97FC()
{
  result = qword_1ECBD64F8;
  if (!qword_1ECBD64F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD64F8);
  }

  return result;
}

void sub_1DA8B98C0()
{
  v1 = *(sub_1DA9401F4() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1DA8B6F38(v3, v4, v0 + v2, v5);
}

uint64_t sub_1DA8B9950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA8B99B4()
{
  result = qword_1EE110CB0;
  if (!qword_1EE110CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6790, &qword_1DA9594C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110CB0);
  }

  return result;
}

void sub_1DA8B9A18(id a1, void *a2)
{
  sub_1DA7AF3EC(0, &qword_1EE110B88, off_1E85D5D78);
  if (([a1 isKindOfClass_] & 1) == 0)
  {
    v14 = [a1 notificationRecord];
    v15 = [a2 notificationForNotificationRecord_];

    if (v15)
    {
      v5 = v15;
      v16 = [a1 notificationRecord];
      if (!UNNotificationToNotificationRecord)
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v17 = (*(UNNotificationToNotificationRecord + 2))(UNNotificationToNotificationRecord, v5);
      if (v17)
      {
        v18 = v17;
        [v17 setPipelineState_];
        [v18 setIsHighlight_];
        v19 = [v16 summary];
        [v18 setSummary_];

        v20 = [v16 eventBehavior];
        [v18 setEventBehavior_];

        sub_1DA7AF3EC(0, &unk_1EE110B90, off_1E85D5D70);
        if ([a1 isKindOfClass_])
        {
          [objc_opt_self() updateWithNotificationRecord:v18 shouldSync:1];
          if (qword_1EE110D80 != -1)
          {
            swift_once();
          }

          v21 = sub_1DA9405A4();
          __swift_project_value_buffer(v21, qword_1EE11AD48);
          v22 = a2;
          v23 = sub_1DA940584();
          v24 = sub_1DA940F34();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v74 = v26;
            *v25 = 136380675;
            v27 = [v22 bundleIdentifier];

            if (!v27)
            {
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            v28 = sub_1DA940A14();
            v30 = v29;

            v31 = sub_1DA7AE6E8(v28, v30, &v74);

            *(v25 + 4) = v31;
            _os_log_impl(&dword_1DA7A9000, v23, v24, "Resolved add update for %{private}s.", v25, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v26);
            MEMORY[0x1E12739F0](v26, -1, -1);
            MEMORY[0x1E12739F0](v25, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          objc_opt_self();
          v44 = swift_dynamicCastObjCClass();
          if (!v44)
          {
            if (qword_1EE110D80 != -1)
            {
              swift_once();
            }

            v59 = sub_1DA9405A4();
            __swift_project_value_buffer(v59, qword_1EE11AD48);
            v60 = a2;
            a1 = a1;
            v61 = sub_1DA940584();
            v62 = sub_1DA940F14();
            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              v74 = v65;
              *v63 = 136380931;
              v66 = [v60 bundleIdentifier];

              if (!v66)
              {
LABEL_51:
                __break(1u);
                return;
              }

              v67 = sub_1DA940A14();
              v69 = v68;

              v70 = sub_1DA7AE6E8(v67, v69, &v74);

              *(v63 + 4) = v70;
              *(v63 + 12) = 2113;
              *(v63 + 14) = a1;
              *v64 = a1;
              v71 = a1;
              _os_log_impl(&dword_1DA7A9000, v61, v62, "Unrecognized update type for %{private}s: %{private}@.", v63, 0x16u);
              sub_1DA7BA120(v64, &unk_1ECBD5430, &unk_1DA959190);
              MEMORY[0x1E12739F0](v64, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v65);
              MEMORY[0x1E12739F0](v65, -1, -1);
              MEMORY[0x1E12739F0](v63, -1, -1);
            }

            else
            {
            }

            goto LABEL_17;
          }

          v45 = v44;
          v46 = a1;
          v18 = v18;
          v47 = [v45 replacedNotificationRecord];
          [objc_opt_self() updateWithNotificationRecord:v18 replacedNotificationRecord:v47 shouldRepost:{objc_msgSend(v45, sel_shouldRepost)}];

          if (qword_1EE110D80 != -1)
          {
            swift_once();
          }

          v48 = sub_1DA9405A4();
          __swift_project_value_buffer(v48, qword_1EE11AD48);
          v49 = a2;
          v50 = sub_1DA940584();
          v51 = sub_1DA940F34();
          if (os_log_type_enabled(v50, v51))
          {
            v73 = v46;
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v74 = v53;
            *v52 = 136380675;
            v54 = [v49 bundleIdentifier];

            if (!v54)
            {
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v55 = sub_1DA940A14();
            v57 = v56;

            v58 = sub_1DA7AE6E8(v55, v57, &v74);

            *(v52 + 4) = v58;
            _os_log_impl(&dword_1DA7A9000, v50, v51, "Resolved replace update %{private}s.", v52, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v53);
            MEMORY[0x1E12739F0](v53, -1, -1);
            MEMORY[0x1E12739F0](v52, -1, -1);
          }

          else
          {
          }
        }

        return;
      }
    }

    if (qword_1EE110D80 != -1)
    {
      swift_once();
    }

    v32 = sub_1DA9405A4();
    __swift_project_value_buffer(v32, qword_1EE11AD48);
    v33 = a2;
    v34 = sub_1DA940584();
    v35 = sub_1DA940F14();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v74 = v37;
      *v36 = 136380675;
      v38 = [v33 bundleIdentifier];

      if (!v38)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v39 = sub_1DA940A14();
      v41 = v40;

      v42 = sub_1DA7AE6E8(v39, v41, &v74);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_1DA7A9000, v34, v35, "Unable to re-resolve notification record for %{private}s.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1E12739F0](v37, -1, -1);
      MEMORY[0x1E12739F0](v36, -1, -1);
    }

    else
    {
    }

    goto LABEL_26;
  }

  if (qword_1EE110D80 != -1)
  {
    swift_once();
  }

  v3 = sub_1DA9405A4();
  __swift_project_value_buffer(v3, qword_1EE11AD48);
  v4 = a2;
  v5 = sub_1DA940584();
  v6 = sub_1DA940EF4();
  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_17;
  }

  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v74 = v8;
  *v7 = 136380675;
  v9 = [v4 bundleIdentifier];

  if (!v9)
  {
    goto LABEL_47;
  }

  v10 = sub_1DA940A14();
  v12 = v11;

  v13 = sub_1DA7AE6E8(v10, v12, &v74);

  *(v7 + 4) = v13;
  _os_log_impl(&dword_1DA7A9000, v5, v6, "Skipping resolution of remove update for %{private}s.", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v8);
  MEMORY[0x1E12739F0](v8, -1, -1);
  MEMORY[0x1E12739F0](v7, -1, -1);
LABEL_17:

LABEL_26:

  v43 = a1;
}

id sub_1DA8BA494(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() currentNotificationSettingsCenter];
  v3 = sub_1DA940A04();
  v4 = [v2 notificationSourceWithIdentifier_];

  return v4;
}

id sub_1DA8BA520()
{
  v0 = [objc_opt_self() currentNotificationSettingsCenter];
  v1 = [v0 notificationSystemSettings];

  return v1;
}

uint64_t sub_1DA8BA580(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for NotificationSource(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1DA82A798(a3 + v15 + v16 * v13, v12);
      v17 = a1(v12);
      if (v3)
      {
        sub_1DA82A7FC(v12);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1DA8B9950(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DA82A734(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1DA82A734((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_1DA8B9950(v24, v14 + v15 + v20 * v16);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_1DA82A7FC(v12);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v14;
  }

  return result;
}

void *sub_1DA8BA7A8(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_1DA941264();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x1E1272460](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_1DA9413E4();
          sub_1DA941414();
          v5 = v14;
          sub_1DA941424();
          v3 = &v18;
          sub_1DA9413F4();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v3;
}

double sub_1DA8BA964()
{
  swift_getKeyPath();
  sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor, &unk_1DA95FA64);
  sub_1DA93FB74();

  return result;
}

double sub_1DA8BAA08@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor, &unk_1DA95FA64);
  sub_1DA93FB74();

  *a2 = *(v3 + 32);

  return result;
}

uint64_t sub_1DA8BAAB4(uint64_t a1)
{

  v4 = sub_1DA82A28C(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor, &unk_1DA95FA64);
    sub_1DA93FB64();
  }
}

double sub_1DA8BAC08()
{
  swift_getKeyPath();
  sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor, &unk_1DA95FA64);
  sub_1DA93FB74();

  return result;
}

double sub_1DA8BACAC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor, &unk_1DA95FA64);
  sub_1DA93FB74();

  *a2 = *(v3 + 40);

  return result;
}

uint64_t sub_1DA8BAD58(uint64_t a1)
{

  v4 = sub_1DA82A28C(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor, &unk_1DA95FA64);
    sub_1DA93FB64();
  }
}

void *sub_1DA8BAEAC()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return sub_1DA8BAFE0();
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = sub_1DA8BB2F0(Strong);

    return v2;
  }

  v4 = sub_1DA8499A8(MEMORY[0x1E69E7CC0]);
  v5 = v4;
  v6 = *(v4 + 16);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = sub_1DA8BF70C(*(v4 + 16), 0);
  v8 = *(type metadata accessor for NotificationSource(0) - 8);
  v9 = sub_1DA8BF9E4(&v10, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v5);
  sub_1DA830720(v10);
  if (v9 != v6)
  {
    __break(1u);
LABEL_8:

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t sub_1DA8BAFE0()
{
  v19 = MEMORY[0x1E69E7CC0];
  v1 = [objc_opt_self() enumeratorWithOptions_];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v19;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DA8C06BC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1DA7AF9C8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA8BEC1C;
  aBlock[3] = &block_descriptor_17;
  v4 = _Block_copy(aBlock);

  [v1 swift:v4 forEach:?];
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else if (qword_1EE110D50 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1EE110D60);
  v6 = sub_1DA940584();
  v7 = sub_1DA940F04();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 134218243;
    swift_beginAccess();
    *(v8 + 4) = *(v19 + 16);
    *(v8 + 12) = 2081;
    v10 = type metadata accessor for NotificationSource(0);

    v12 = MEMORY[0x1E1271CD0](v11, v10);
    v14 = v13;

    v15 = sub_1DA7AE6E8(v12, v14, aBlock);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1DA7A9000, v6, v7, "%ld Local sources: %{private}s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12739F0](v9, -1, -1);
    MEMORY[0x1E12739F0](v8, -1, -1);
  }

  swift_beginAccess();
  v16 = v19;

  return v16;
}

uint64_t sub_1DA8BB2F0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*(v2 + 16) == 1)
  {

LABEL_4:
    v7 = *(a1 + 72);

    os_unfair_lock_lock((v7 + 24));
    sub_1DA8BCE28((v7 + 16), v4, &v9);
    os_unfair_lock_unlock((v7 + 24));
    v8 = v9;

    return v8;
  }

  v5 = sub_1DA941684();

  if (v5)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

id sub_1DA8BB3E4(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DA940FC4();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v22 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = *a1;
  swift_weakInit();
  v11 = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = v11;
  *(v2 + 48) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v2 + 72) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  sub_1DA93FBA4();
  *(v2 + 16) = v10;
  v21 = a2;
  swift_weakAssign();
  sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  sub_1DA940844();
  v26 = v11;
  sub_1DA8C07A0(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  (*(v23 + 104))(v22, *MEMORY[0x1E69E8090], v24);
  v12 = sub_1DA941004();
  *(v2 + 64) = v12;
  v13 = type metadata accessor for NotificationSourceMonitorLSObserver();
  v14 = objc_allocWithZone(v13);
  swift_unknownObjectWeakInit();
  *&v14[OBJC_IVAR____TtC21UserNotificationsCore35NotificationSourceMonitorLSObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v15 = objc_opt_self();
  v16 = v12;
  result = [v15 defaultWorkspace];
  if (result)
  {
    *&v14[OBJC_IVAR____TtC21UserNotificationsCore35NotificationSourceMonitorLSObserver_workspace] = result;
    v25.receiver = v14;
    v25.super_class = v13;
    v18 = objc_msgSendSuper2(&v25, sel_init);

    *(v3 + 56) = v18;
    *&v18[OBJC_IVAR____TtC21UserNotificationsCore35NotificationSourceMonitorLSObserver_delegate + 8] = &off_1F5636A98;
    swift_unknownObjectWeakAssign();
    [*(v3 + 72) setCountLimit_];
    [*(v3 + 72) setDelegate_];
    if (v21)
    {
      *(v21 + 24) = &off_1F5636A88;
      swift_unknownObjectWeakAssign();
    }

    if (qword_1EE112A90 != -1)
    {
      swift_once();
    }

    sub_1DA8BFD60(v19);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id *sub_1DA8BB860()
{
  swift_weakDestroy();

  v1 = OBJC_IVAR____TtC21UserNotificationsCore25NotificationSourceMonitor___observationRegistrar;
  v2 = sub_1DA93FBB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1DA8BB8F8()
{
  sub_1DA8BB860();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8BB950@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v98 = a4;
  LODWORD(v111) = a3;
  v107 = a5;
  v109 = 0;
  v99 = *v6;
  v9 = type metadata accessor for NotificationSource(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v105 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v95 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v95 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v95 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v106 = v10;
  v24 = *(v10 + 56);
  v104 = &v95 - v25;
  v24();
  type metadata accessor for NotificationSourceMonitor.SourceKey();
  v26 = swift_allocObject();
  v102 = a1;
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  *(v26 + 32) = v111;
  v100 = v6;
  v27 = v6[9];

  v110 = v26;
  v28 = [v27 objectForKey_];
  v112 = v24;
  v101 = a2;
  v103 = v10 + 56;
  if (v28)
  {
    v29 = v28;
    v30 = v9;
    if (qword_1EE110D50 != -1)
    {
      swift_once();
    }

    v31 = sub_1DA9405A4();
    __swift_project_value_buffer(v31, qword_1EE110D60);
    v32 = v110;

    v33 = sub_1DA940584();
    v34 = sub_1DA940EF4();

    v35 = os_log_type_enabled(v33, v34);
    v36 = &unk_1EE11A000;
    v37 = v104;
    if (v35)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v114 = v39;
      *v38 = 136381187;
      v41 = *(v32 + 16);
      v40 = *(v32 + 24);

      v42 = sub_1DA7AE6E8(v41, v40, &v114);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      if (*(v32 + 32))
      {
        v43 = 0x2965746F6D657228;
      }

      else
      {
        v43 = 0x296C61636F6C28;
      }

      if (*(v32 + 32))
      {
        v44 = 0xE800000000000000;
      }

      else
      {
        v44 = 0xE700000000000000;
      }

      v45 = sub_1DA7AE6E8(v43, v44, &v114);

      *(v38 + 14) = v45;
      *(v38 + 22) = 2080;

      v46 = NotificationSource.description.getter();
      v48 = v47;

      v49 = sub_1DA7AE6E8(v46, v48, &v114);

      *(v38 + 24) = v49;
      v36 = &unk_1EE11A000;
      _os_log_impl(&dword_1DA7A9000, v33, v34, "Found cached source for %{private}s %{public}s: %s", v38, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v39, -1, -1);
      MEMORY[0x1E12739F0](v38, -1, -1);
    }

    sub_1DA7BA120(v37, &qword_1ECBD6640, qword_1DA95F868);
    v50 = v30;
    v51 = v108;
    sub_1DA82A798(v29 + v36[468], v37);

    v52 = v112;
    (v112)(v37, 0, 1, v30);
    v53 = v105;
  }

  else
  {
    v95 = v23;
    v96 = v20;
    v97 = v9;
    (v24)(v20, 1, 1, v9);
    v54 = objc_autoreleasePoolPush();
    v55 = objc_allocWithZone(MEMORY[0x1E69635F8]);

    v56 = v111;
    v57 = v109;
    if (v111)
    {
      v58 = sub_1DA8BF5BC(v102, a2);
    }

    else
    {
      v58 = sub_1DA8BF4E0(v102, a2, 0);
    }

    v37 = v104;
    if (v57)
    {
      v104 = v54;
      if (qword_1EE110D50 != -1)
      {
        swift_once();
      }

      v59 = sub_1DA9405A4();
      __swift_project_value_buffer(v59, qword_1EE110D60);
      v60 = v101;

      v61 = v57;
      v62 = sub_1DA940584();
      v63 = sub_1DA940F14();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v65 = v114;
        *v64 = 136446723;
        if (v56)
        {
          v66 = 0x2965746F6D657228;
        }

        else
        {
          v66 = 0x296C61636F6C28;
        }

        if (v56)
        {
          v67 = 0xE800000000000000;
        }

        else
        {
          v67 = 0xE700000000000000;
        }

        v68 = sub_1DA7AE6E8(v66, v67, &v114);

        *(v64 + 4) = v68;
        *(v64 + 12) = 2081;
        *(v64 + 14) = sub_1DA7AE6E8(v102, v60, &v114);
        *(v64 + 22) = 2112;
        v69 = v57;
        v70 = _swift_stdlib_bridgeErrorToNSError();
        *(v64 + 24) = v70;
        v71 = v109;
        *v109 = v70;
        _os_log_impl(&dword_1DA7A9000, v62, v63, "Unable to find %{public}s record for %{private}s: %@", v64, 0x20u);
        sub_1DA7BA120(v71, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v71, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v65, -1, -1);
        MEMORY[0x1E12739F0](v64, -1, -1);
      }

      else
      {
      }

      v109 = 0;
      v54 = v104;
      v53 = v105;
      v74 = v96;
    }

    else
    {
      v72 = v56;
      v109 = 0;
      v73 = v58;
      sub_1DA8BDD28(v73, v72 & 1, v17);

      v74 = v96;
      sub_1DA8C01AC(v17, v96);
      v53 = v105;
    }

    v75 = v95;
    objc_autoreleasePoolPop(v54);
    sub_1DA7BA120(v37, &qword_1ECBD6640, qword_1DA95F868);
    sub_1DA8C00B0(v74, v75);
    sub_1DA8C00B0(v75, v37);
    v50 = v97;
    v51 = v108;
    v52 = v112;
  }

  sub_1DA8C0120(v37, v53);
  if ((*(v106 + 48))(v53, 1, v50) == 1)
  {
    sub_1DA7BA120(v37, &qword_1ECBD6640, qword_1DA95F868);

    sub_1DA7BA120(v53, &qword_1ECBD6640, qword_1DA95F868);
    return (v52)(v107, 1, 1, v50);
  }

  else
  {
    sub_1DA8B9950(v53, v51);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v78 = v51[7];
      v79 = *(Strong + 72);
      MEMORY[0x1EEE9AC00](Strong);
      v80 = v101;
      *(&v95 - 2) = v102;
      *(&v95 - 1) = v80;
      sub_1DA8304A0(v78);

      os_unfair_lock_lock(v79 + 6);
      sub_1DA8C0190(&v79[4], &v114);
      os_unfair_lock_unlock(v79 + 6);

      if (v78 == 4)
      {
        if (v114 == 5)
        {
          v81 = 4;
        }

        else
        {
          v81 = v114;
        }
      }

      else
      {
        sub_1DA8305BC(v114);
        v81 = v78;
      }

      v82 = v51[7];
      sub_1DA8304A0(v78);
      sub_1DA8304A0(v81);
      sub_1DA830524(v82);
      v51[7] = v81;
      v52 = v112;
      if ((v98 & 1) != 0 && v81 != 4)
      {
        v114 = v81;
        v116[0] = 2;
        if (!_s21UserNotificationsCore18NotificationSourceV5StateO2eeoiySbAE_AEtFZ_0(&v114, v116))
        {
          if (qword_1EE110D50 != -1)
          {
            swift_once();
          }

          v83 = sub_1DA9405A4();
          __swift_project_value_buffer(v83, qword_1EE110D60);
          sub_1DA8304B0(v81);
          v84 = sub_1DA940584();
          v85 = sub_1DA940EF4();
          sub_1DA830524(v81);
          if (os_log_type_enabled(v84, v85))
          {
            v97 = v50;
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v111 = v87;
            *v86 = 136446210;
            v114 = 0x64656C6261736964;
            v115 = 0xE900000000000028;
            v116[0] = v87;
            if (v81 == 3)
            {
              v88 = 0;
              v89 = 0xE000000000000000;
            }

            else
            {
              v113 = v81;
              v90 = sub_1DA8304A0(v81);
              v88 = NotificationSource.State.OverrideReason.description.getter(v90);
              v89 = v91;
            }

            MEMORY[0x1E1271BD0](v88, v89);

            MEMORY[0x1E1271BD0](41, 0xE100000000000000);
            sub_1DA830524(v81);
            v92 = sub_1DA7AE6E8(v114, v115, v116);

            *(v86 + 4) = v92;
            _os_log_impl(&dword_1DA7A9000, v84, v85, "Overriding state from %{public}s to enabled...", v86, 0xCu);
            v93 = v111;
            __swift_destroy_boxed_opaque_existential_1(v111);
            MEMORY[0x1E12739F0](v93, -1, -1);
            MEMORY[0x1E12739F0](v86, -1, -1);

            v50 = v97;
            v51 = v108;
          }

          else
          {
          }

          sub_1DA830524(v51[7]);
          v51[7] = 4;
          sub_1DA82F3C4(v51);
          v52 = v112;
        }
      }

      v114 = v78;
      v116[0] = v51[7];
      sub_1DA8304A0(v116[0]);
      _s21UserNotificationsCore18NotificationSourceV5StateO2eeoiySbAE_AEtFZ_0(&v114, v116);

      sub_1DA830524(v81);
      sub_1DA830524(v116[0]);
      sub_1DA7BA120(v37, &qword_1ECBD6640, qword_1DA95F868);
      sub_1DA830524(v78);
    }

    else
    {
      sub_1DA7BA120(v37, &qword_1ECBD6640, qword_1DA95F868);
    }

    v94 = v107;
    sub_1DA82A798(v51, v107);
    (v52)(v94, 0, 1, v50);
    return sub_1DA82A7FC(v51);
  }
}

void *sub_1DA8BC56C(uint64_t a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v17 = type metadata accessor for NotificationSource(0);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = (a1 + 40);
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    v12 = *(v10 - 1);
    v13 = *v10;

    sub_1DA8BB950(v12, v13, v18 & 1, 0, v5);

    if ((*(v6 + 48))(v5, 1, v17) == 1)
    {
      sub_1DA7BA120(v5, &qword_1ECBD6640, qword_1DA95F868);
    }

    else
    {
      sub_1DA8B9950(v5, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DA885D48(0, v11[2] + 1, 1, v11);
      }

      v15 = v11[2];
      v14 = v11[3];
      if (v15 >= v14 >> 1)
      {
        v11 = sub_1DA885D48((v14 > 1), v15 + 1, 1, v11);
      }

      v11[2] = v15 + 1;
      sub_1DA8B9950(v8, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
    }

    v10 += 2;
    --v9;
  }

  while (v9);
  return v11;
}

void *sub_1DA8BC7AC(uint64_t (*a1)(char *), uint64_t a2)
{
  if (a1)
  {
    v4 = *(v2 + 48);

    [v4 lock];
    v6 = sub_1DA8BAEAC();
    [v4 unlock];
    v7 = sub_1DA8BA580(a1, a2, v6);
    sub_1DA7B5220(a1, a2);
    return v7;
  }

  else
  {
    v9 = *(v2 + 48);
    [v9 lock];
    v10 = sub_1DA8BAEAC();
    [v9 unlock];
    return v10;
  }
}

id sub_1DA8BC8F4()
{
  [*(*(v0 + 56) + OBJC_IVAR____TtC21UserNotificationsCore35NotificationSourceMonitorLSObserver_workspace) removeObserver_];
  [*(v0 + 72) removeAllObjects];
  v1 = *(v0 + 48);
  [v1 lock];
  swift_getKeyPath();
  sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor, &unk_1DA95FA64);
  sub_1DA93FB74();

  swift_getKeyPath();
  sub_1DA93FB94();

  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = MEMORY[0x1E69E7CC0];

  swift_getKeyPath();
  sub_1DA93FB84();

  swift_getKeyPath();
  sub_1DA93FB74();

  swift_getKeyPath();
  sub_1DA93FB94();

  *(v0 + 40) = v2;

  swift_getKeyPath();
  sub_1DA93FB84();

  return [v1 unlock];
}

void sub_1DA8BCB40(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v3 = sub_1DA941264();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  v5 = *(v17 + 72);
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E1272460](v4, a1);
    }

    else
    {
      v6 = *(a1 + 8 * v4 + 32);
    }

    ++v4;
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    type metadata accessor for NotificationSourceMonitor.SourceKey();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    *(v9 + 32) = 1;

    [v5 removeObjectForKey_];
  }

  while (v3 != v4);
LABEL_10:
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v17 + 72);
    type metadata accessor for NotificationSourceMonitor.SourceKey();
    v12 = (a2 + 40);
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v13;
      *(v15 + 32) = 1;

      [v11 removeObjectForKey_];

      v12 += 2;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1DA8BCCD0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8BCD08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(v3 + 24);
  if (v4 || (v5 = sub_1DA941684(), v6 = 0, (v5 & 1) != 0))
  {
    v6 = *(v2 + 32) ^ *(v3 + 32) ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1DA8BCD64()
{
  sub_1DA82A7FC(v0 + OBJC_IVAR____TtCC21UserNotificationsCore25NotificationSourceMonitor13SourceWrapper_source);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8BCE28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v105 = a2;
  v98 = a3;
  v114[5] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v104 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v91 - v8;
  MEMORY[0x1EEE9AC00](v7);
  isUniquelyReferenced_nonNull_native = &v91 - v10;
  v106 = type metadata accessor for NotificationSource(0);
  v12 = *(v106 - 8);
  v13 = MEMORY[0x1EEE9AC00](v106);
  v92 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v91 - v15;
  v111 = *a1;
  v16 = *(v111 + 16);
  if (qword_1EE110D50 != -1)
  {
LABEL_40:
    swift_once();
  }

  v17 = sub_1DA9405A4();
  v102 = __swift_project_value_buffer(v17, qword_1EE110D60);
  v18 = sub_1DA940584();
  v19 = sub_1DA940F34();
  v20 = os_log_type_enabled(v18, v19);
  v109 = isUniquelyReferenced_nonNull_native;
  if (v20)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    *isUniquelyReferenced_nonNull_native = 134349056;
    *(isUniquelyReferenced_nonNull_native + 4) = v16;
    _os_log_impl(&dword_1DA7A9000, v18, v19, "Fetching records for %{public}ld replicated sources.", isUniquelyReferenced_nonNull_native, 0xCu);
    MEMORY[0x1E12739F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v21 = sub_1DA8499A8(MEMORY[0x1E69E7CC0]);
  v99 = v12;
  v100 = v21;
  v22 = v111 + 64;
  v23 = 1 << *(v111 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v111 + 64);
  v26 = (v23 + 63) >> 6;
  v107 = (v12 + 48);
  v108 = (v12 + 56);

  v27 = 0;
  *&v28 = 136446723;
  v97 = v28;
  v12 = v106;
  v103 = v22;
  while (1)
  {
    v29 = v27;
    if (!v25)
    {
      break;
    }

LABEL_11:
    v30 = __clz(__rbit64(v25)) | (v27 << 6);
    v31 = (*(v111 + 48) + 16 * v30);
    v32 = *v31;
    v16 = v31[1];
    v33 = *(*(v111 + 56) + 8 * v30);
    (*v108)(v9, 1, 1, v12);

    v113 = v33;
    sub_1DA8304A0(v33);
    v112 = objc_autoreleasePoolPush();
    v34 = objc_allocWithZone(MEMORY[0x1E69635F8]);
    v110 = v32;
    v35 = sub_1DA940A04();
    v114[0] = 0;
    v36 = [v34 initWithRemotePlaceholderBundleIdentifier:v35 error:v114];

    if (v36)
    {
      v37 = v114[0];
      isUniquelyReferenced_nonNull_native = v36;
      v38 = v26;
      v39 = v16;
      v40 = v12;
      v41 = v9;
      v42 = v104;
      sub_1DA8BDD28(isUniquelyReferenced_nonNull_native, 1, v104);

      sub_1DA7BA120(v41, &qword_1ECBD6640, qword_1DA95F868);
      v43 = v42;
      v9 = v41;
      v12 = v40;
      v16 = v39;
      v26 = v38;
      v22 = v103;
      sub_1DA8C00B0(v43, v9);
    }

    else
    {
      v44 = v114[0];
      v45 = sub_1DA93F8C4();

      swift_willThrow();
      v101 = 0;

      v46 = v45;
      v47 = sub_1DA940584();
      isUniquelyReferenced_nonNull_native = sub_1DA940F14();

      if (os_log_type_enabled(v47, isUniquelyReferenced_nonNull_native))
      {
        v48 = swift_slowAlloc();
        v96 = v9;
        v49 = v48;
        v50 = swift_slowAlloc();
        v94 = v47;
        v51 = v50;
        v95 = swift_slowAlloc();
        v114[0] = v95;
        *v49 = v97;
        *(v49 + 4) = sub_1DA7AE6E8(0x2965746F6D657228, 0xE800000000000000, v114);
        *(v49 + 12) = 2081;
        *(v49 + 14) = sub_1DA7AE6E8(v110, v16, v114);
        *(v49 + 22) = 2112;
        v52 = v45;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 24) = v53;
        *v51 = v53;
        v54 = isUniquelyReferenced_nonNull_native;
        isUniquelyReferenced_nonNull_native = v94;
        _os_log_impl(&dword_1DA7A9000, v94, v54, "Unable to find %{public}s record for %{private}s: %@", v49, 0x20u);
        sub_1DA7BA120(v51, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v51, -1, -1);
        v55 = v95;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v55, -1, -1);
        v56 = v49;
        v9 = v96;
        MEMORY[0x1E12739F0](v56, -1, -1);
      }

      else
      {
      }

      v12 = v106;
    }

    v25 &= v25 - 1;
    objc_autoreleasePoolPop(v112);
    v57 = v109;
    sub_1DA8C00B0(v9, v109);
    if ((*v107)(v57, 1, v12) == 1)
    {
      sub_1DA830524(v113);

      sub_1DA7BA120(v57, &qword_1ECBD6640, qword_1DA95F868);
    }

    else
    {
      v58 = v57;
      v59 = v93;
      sub_1DA8B9950(v58, v93);
      if (v113 != 4)
      {
        v60 = *(v59 + 56);
        v61 = v113;
        sub_1DA8304B0(v113);
        sub_1DA830524(v60);
        v59 = v93;
        *(v93 + 56) = v61;
      }

      sub_1DA82A798(v59, v92);
      v62 = v100;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114[0] = v62;
      v63 = sub_1DA85A4B4(v110, v16);
      v65 = v62[2];
      v66 = (v64 & 1) == 0;
      v67 = __OFADD__(v65, v66);
      v68 = v65 + v66;
      if (v67)
      {
        goto LABEL_42;
      }

      v69 = v64;
      if (v62[3] < v68)
      {
        sub_1DA85DF0C(v68, isUniquelyReferenced_nonNull_native);
        v63 = sub_1DA85A4B4(v110, v16);
        if ((v69 & 1) != (v70 & 1))
        {
          result = sub_1DA9416E4();
          __break(1u);
          return result;
        }

LABEL_26:
        if (v69)
        {
          goto LABEL_27;
        }

        goto LABEL_29;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = v63;
      sub_1DA861960();
      v63 = isUniquelyReferenced_nonNull_native;
      if (v69)
      {
LABEL_27:
        v71 = v63;

        v100 = v114[0];
        sub_1DA8C06C4(v92, *(v114[0] + 7) + *(v99 + 72) * v71);
        sub_1DA830524(v113);
        goto LABEL_31;
      }

LABEL_29:
      v72 = v114[0];
      *(v114[0] + (v63 >> 6) + 8) |= 1 << v63;
      v73 = (v72[6] + 16 * v63);
      *v73 = v110;
      v73[1] = v16;
      sub_1DA8B9950(v92, v72[7] + *(v99 + 72) * v63);
      sub_1DA830524(v113);
      v74 = v72[2];
      v67 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v67)
      {
        goto LABEL_43;
      }

      v100 = v72;
      v72[2] = v75;
LABEL_31:
      v12 = v106;
      sub_1DA82A7FC(v93);
    }
  }

  while (1)
  {
    v27 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v27 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v27);
    ++v29;
    if (v25)
    {
      goto LABEL_11;
    }
  }

  v76 = sub_1DA940584();
  v77 = sub_1DA940F04();
  if (!os_log_type_enabled(v76, v77))
  {

    v85 = v99;
    v80 = v100;
    v86 = v100[2];
    if (!v86)
    {
      goto LABEL_37;
    }

LABEL_34:
    v87 = sub_1DA8BF70C(v86, 0);
    v88 = sub_1DA8BF9E4(v114, v87 + ((*(v85 + 80) + 32) & ~*(v85 + 80)), v86, v80);
    v89 = v114[0];

    sub_1DA830720(v89);
    if (v88 == v86)
    {

      goto LABEL_38;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  v78 = swift_slowAlloc();
  v79 = swift_slowAlloc();
  v114[0] = v79;
  *v78 = 134349315;
  v80 = v100;
  *(v78 + 4) = v100[2];
  *(v78 + 12) = 2081;

  v81 = sub_1DA940984();
  v83 = v82;

  v84 = sub_1DA7AE6E8(v81, v83, v114);

  *(v78 + 14) = v84;
  _os_log_impl(&dword_1DA7A9000, v76, v77, "%{public}ld Remote sources: %{private}s", v78, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v79);
  MEMORY[0x1E12739F0](v79, -1, -1);
  MEMORY[0x1E12739F0](v78, -1, -1);

  v85 = v99;
  v86 = v80[2];
  if (v86)
  {
    goto LABEL_34;
  }

LABEL_37:

  v87 = MEMORY[0x1E69E7CC0];
LABEL_38:
  *v98 = v87;
  return result;
}

uint64_t sub_1DA8BD858(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1DA941404();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1DA7AD270(i, v5);
    sub_1DA7AF3EC(0, &unk_1EE110C20, 0x1E69635E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1DA9413E4();
    sub_1DA941414();
    sub_1DA941424();
    sub_1DA9413F4();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

unint64_t sub_1DA8BD994(unint64_t result, uint64_t a2)
{
  if (result)
  {
    result = sub_1DA8BD858(result);
    if (result)
    {
      if (result >> 62)
      {
        if (sub_1DA941264())
        {
LABEL_5:
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v3 = Strong;
            MEMORY[0x1EEE9AC00](Strong);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AF0, qword_1DA95DAE0);
            sub_1DA940FE4();
          }
        }
      }

      else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1DA8BDAB8@<X0>(unint64_t a2@<X1>, BOOL *a3@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    sub_1DA8C0250(a2, result, v6);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

uint64_t sub_1DA8BDB3C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = sub_1DA940BE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

id sub_1DA8BDC60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSourceMonitorLSObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA8BDD28@<X0>(unint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  LOBYTE(v5) = a2;
  v119[3] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v113 = (&v102 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v102 - v14;
  v15 = type metadata accessor for NotificationSource(0);
  v117 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 bundleIdentifier];
  if (v18)
  {
    v111 = v17;
    v118 = v15;
    v19 = v18;
    v114 = sub_1DA940A14();
    v21 = v20;

    if (qword_1EE110D50 != -1)
    {
      goto LABEL_57;
    }

    while (1)
    {
      v22 = sub_1DA9405A4();
      v23 = __swift_project_value_buffer(v22, qword_1EE110D60);

      v115 = v23;
      v24 = sub_1DA940584();
      v25 = sub_1DA940F04();

      v26 = os_log_type_enabled(v24, v25);
      v116 = v21;
      v108 = v11;
      v109 = v4;
      if (v26)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v119[0] = v28;
        *v27 = 136446467;
        if (v5)
        {
          v29 = 0x2965746F6D657228;
        }

        else
        {
          v29 = 0x296C61636F6C28;
        }

        if (v5)
        {
          v30 = 0xE800000000000000;
        }

        else
        {
          v30 = 0xE700000000000000;
        }

        v31 = sub_1DA7AE6E8(v29, v30, v119);

        *(v27 + 4) = v31;
        v21 = v116;
        *(v27 + 12) = 2081;
        *(v27 + 14) = sub_1DA7AE6E8(v114, v21, v119);
        _os_log_impl(&dword_1DA7A9000, v24, v25, "Evaluating %{public}s %{private}s...", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v28, -1, -1);
        MEMORY[0x1E12739F0](v27, -1, -1);
      }

      v32 = v118;
      if ((v5 & 1) == 0 && ([a1 unc_isEligibleToDeliverNotifications] & 1) == 0)
      {
        break;
      }

      v33 = [a1 teamIdentifier];
      v110 = a3;
      if (v33)
      {
        v34 = v33;
        v35 = sub_1DA940A14();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v41 = [a1 localizedName];
      v4 = sub_1DA940A14();
      v43 = v42;

      v44 = [a1 URL];
      v45 = v32;
      v11 = v111;
      sub_1DA93F914();

      a3 = *(v45 + 40);
      *(v11 + a3) = MEMORY[0x1E69E7CD0];
      *v11 = v35;
      v11[1] = v37;
      v11[2] = v114;
      v11[3] = v21;
      v11[4] = v4;
      v11[5] = v43;
      *(v11 + 48) = v5 & 1;
      v11[7] = 4;
      v46 = [a1 equivalentBundleIdentifiers];
      if (v46)
      {
        v47 = v46;
        v48 = sub_1DA940BE4();

        v49 = sub_1DA8AD06C(v48);

        *(v11 + a3) = v49;
      }

      if ((v5 & 1) == 0)
      {

LABEL_49:
        v88 = sub_1DA940584();
        v89 = sub_1DA940EF4();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v119[0] = v91;
          *v90 = 136380675;
          swift_beginAccess();
          v92 = NotificationSource.description.getter();
          v94 = sub_1DA7AE6E8(v92, v93, v119);

          *(v90 + 4) = v94;
          _os_log_impl(&dword_1DA7A9000, v88, v89, "Got source: %{private}s", v90, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v91);
          MEMORY[0x1E12739F0](v91, -1, -1);
          MEMORY[0x1E12739F0](v90, -1, -1);
        }

        v95 = v110;
        swift_beginAccess();
        sub_1DA82A798(v11, v95);
        (*(v117 + 56))(v95, 0, 1, v118);
        return sub_1DA82A7FC(v11);
      }

      if (([a1 isPlaceholder] & 1) == 0)
      {
        v81 = v116;

        v82 = sub_1DA940584();
        v83 = sub_1DA940F14();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v119[0] = v85;
          *v84 = 136380675;
          v86 = sub_1DA7AE6E8(v114, v81, v119);

          *(v84 + 4) = v86;
          _os_log_impl(&dword_1DA7A9000, v82, v83, "Got regular record for remote placeholder request for %{private}s.", v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v85);
          MEMORY[0x1E12739F0](v85, -1, -1);
          MEMORY[0x1E12739F0](v84, -1, -1);
        }

        else
        {
        }

LABEL_48:
        sub_1DA830524(v11[7]);
        v11[7] = 2;
        goto LABEL_49;
      }

      v50 = sub_1DA899C30();
      v52 = 0;
      v102 = 0;
      v21 = v50 + 56;
      v53 = *(v50 + 56);
      v107 = v50;
      v54 = 1 << *(v50 + 32);
      v55 = -1;
      if (v54 < 64)
      {
        v55 = ~(-1 << v54);
      }

      v5 = v55 & v53;
      v103 = (v54 + 63) >> 6;
      v106 = (v117 + 56);
      v105 = (v117 + 48);
      *&v51 = 136380931;
      v104 = v51;
      while (v5)
      {
LABEL_32:
        v61 = (*(v107 + 48) + ((v52 << 10) | (16 * __clz(__rbit64(v5)))));
        v63 = *v61;
        v62 = v61[1];
        v64 = v116;

        v65 = sub_1DA940584();
        v66 = sub_1DA940F04();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = v63;
          v69 = swift_slowAlloc();
          v119[0] = v69;
          *v67 = v104;
          *(v67 + 4) = sub_1DA7AE6E8(v114, v64, v119);
          *(v67 + 12) = 2081;
          *(v67 + 14) = sub_1DA7AE6E8(v68, v62, v119);
          _os_log_impl(&dword_1DA7A9000, v65, v66, "Checking for local equivalent for remote source %{private}s: %{private}s", v67, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v69, -1, -1);
          MEMORY[0x1E12739F0](v67, -1, -1);
        }

        v11 = v113;
        (*v106)(v113, 1, 1, v118);
        a3 = objc_autoreleasePoolPush();
        v70 = objc_allocWithZone(MEMORY[0x1E69635F8]);
        v71 = sub_1DA940A04();

        v119[0] = 0;
        v72 = [v70 initWithBundleIdentifier:v71 allowPlaceholder:0 error:v119];

        if (v72)
        {
          v73 = v119[0];
          v74 = v72;
          a1 = v108;
          sub_1DA8BDD28(v74, 0, v108);

          v4 = &qword_1ECBD6640;
          sub_1DA7BA120(v11, &qword_1ECBD6640, qword_1DA95F868);
          sub_1DA8C00B0(a1, v11);
        }

        else
        {
          v56 = v119[0];
          v57 = sub_1DA93F8C4();

          a1 = v57;
          swift_willThrow();

          v102 = 0;
          v4 = &qword_1ECBD6640;
        }

        v5 &= v5 - 1;
        objc_autoreleasePoolPop(a3);
        v58 = v112;
        sub_1DA8C00B0(v11, v112);
        v59 = (*v105)(v58, 1, v118);
        sub_1DA7BA120(v58, &qword_1ECBD6640, qword_1DA95F868);
        if (v59 != 1)
        {
          v96 = v116;

          v97 = sub_1DA940584();
          v98 = sub_1DA940EF4();

          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v119[0] = v100;
            *v99 = 136380675;
            v101 = sub_1DA7AE6E8(v114, v96, v119);

            *(v99 + 4) = v101;
            _os_log_impl(&dword_1DA7A9000, v97, v98, "Found local equivalent for remote source %{private}s", v99, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v100);
            MEMORY[0x1E12739F0](v100, -1, -1);
            MEMORY[0x1E12739F0](v99, -1, -1);
          }

          else
          {
          }

          v11 = v111;
          goto LABEL_48;
        }
      }

      while (1)
      {
        v60 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v60 >= v103)
        {

          v11 = v111;
          goto LABEL_49;
        }

        v5 = *(v21 + 8 * v60);
        ++v52;
        if (v5)
        {
          v52 = v60;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_57:
      swift_once();
    }

    v75 = sub_1DA940584();
    v76 = sub_1DA940F14();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v119[0] = v78;
      *v77 = 136380675;
      v79 = v32;
      v80 = sub_1DA7AE6E8(v114, v21, v119);

      *(v77 + 4) = v80;
      v32 = v79;
      _os_log_impl(&dword_1DA7A9000, v75, v76, "Not eligible: %{private}s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x1E12739F0](v78, -1, -1);
      MEMORY[0x1E12739F0](v77, -1, -1);
    }

    else
    {
    }

    v38 = *(v117 + 56);
    v39 = a3;
    v40 = v32;
  }

  else
  {
    v38 = *(v117 + 56);
    v39 = a3;
    v40 = v15;
  }

  return v38(v39, 1, 1, v40);
}

void sub_1DA8BE9D8(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for NotificationSource(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v15 = objc_autoreleasePoolPush();
  sub_1DA8BDD28(a1, 0, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1DA7BA120(v7, &qword_1ECBD6640, qword_1DA95F868);
  }

  else
  {
    sub_1DA8B9950(v7, v14);
    sub_1DA82A798(v14, v12);
    v16 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1DA885D48(0, v16[2] + 1, 1, v16);
      *a3 = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      *a3 = sub_1DA885D48((v18 > 1), v19 + 1, 1, v16);
    }

    sub_1DA82A7FC(v14);
    v20 = *a3;
    v20[2] = v19 + 1;
    sub_1DA8B9950(v12, v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19);
  }

  objc_autoreleasePoolPop(v15);
}

void sub_1DA8BEC1C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1DA8BEC68(uint64_t a1)
{
  v2 = type metadata accessor for NotificationSource(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1DA82AB10(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1DA82A798(v8, v5);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1DA82AB10((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &protocol witness table for NotificationSource;
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v14);
      sub_1DA82A798(v5, boxed_opaque_existential_2);
      *(v7 + 16) = v11 + 1;
      sub_1DA7B9FAC(&v14, v7 + 40 * v11 + 32);
      sub_1DA82A7FC(v5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

unint64_t sub_1DA8BEDFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6320, &unk_1DA95F3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA958370;
  strcpy((inited + 32), "localSources");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  swift_getKeyPath();
  sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor, &unk_1DA95FA64);
  sub_1DA93FB74();

  v2 = *(*(v0 + 32) + 16);
  v3 = MEMORY[0x1E69E6530];
  v4 = MEMORY[0x1E69E6590];
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 80) = v4;
  *(inited + 48) = v2;
  strcpy((inited + 88), "remoteSources");
  *(inited + 102) = -4864;
  swift_getKeyPath();
  sub_1DA93FB74();

  v5 = *(*(v0 + 40) + 16);
  *(inited + 128) = v3;
  *(inited + 136) = v4;
  *(inited + 104) = v5;
  v6 = sub_1DA849274(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6550, &qword_1DA95F8F0);
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_1DA8BEFD0()
{
  swift_getKeyPath();
  sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor, &unk_1DA95FA64);
  sub_1DA93FB74();

  v1 = sub_1DA8BEC68(v0);

  return v1;
}

uint64_t NotificationSource.stateCaptureTitle.getter()
{
  v4 = *(v0 + 16);

  MEMORY[0x1E1271BD0](58, 0xE100000000000000);
  if (*(v0 + 48))
  {
    v1 = 0x65746F6D6572;
  }

  else
  {
    v1 = 0x6C61636F6CLL;
  }

  if (*(v0 + 48))
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E1271BD0](v1, v2);

  return v4;
}

unint64_t NotificationSource.captureState()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6320, &unk_1DA95F3D0);
  inited = swift_initStackObject();
  v2 = inited;
  *(inited + 16) = xmmword_1DA95CAF0;
  *(inited + 32) = 1835099508;
  *(inited + 40) = 0xE400000000000000;
  v3 = v0[1];
  v4 = MEMORY[0x1E69E6158];
  v5 = MEMORY[0x1E69E61C8];
  if (v3)
  {
    v6 = *v0;
    v7 = MEMORY[0x1E69E61C8];
    v8 = MEMORY[0x1E69E6158];
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v7 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v6;
  *(inited + 56) = v3;
  *(inited + 72) = v8;
  *(inited + 80) = v7;
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  v9 = v0[4];
  v10 = v0[5];
  *(inited + 128) = v4;
  *(inited + 136) = v5;
  *(inited + 104) = v9;
  *(inited + 112) = v10;
  *(inited + 144) = 0x6574617473;
  *(inited + 152) = 0xE500000000000000;
  v11 = v0[7];
  *(inited + 184) = &type metadata for NotificationSource.State;
  v12 = sub_1DA8BF364();
  v2[20] = v11;
  v2[24] = v12;
  v2[25] = 0x656C617669757165;
  v2[26] = 0xEB0000000073746ELL;

  sub_1DA8304A0(v11);
  sub_1DA899C30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60F8, &qword_1DA95DFE8);
  sub_1DA7AD11C(&qword_1EE110C70, &qword_1ECBD60F8, &qword_1DA95DFE8, MEMORY[0x1E69E6508]);
  sub_1DA8282D0();
  v13 = sub_1DA940B64();
  v15 = v14;

  v2[30] = v4;
  v2[31] = v5;
  v2[27] = v13;
  v2[28] = v15;
  v16 = sub_1DA849274(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6550, &qword_1DA95F8F0);
  swift_arrayDestroy();
  return v16;
}

unint64_t sub_1DA8BF364()
{
  result = qword_1ECBD6540;
  if (!qword_1ECBD6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6540);
  }

  return result;
}

uint64_t sub_1DA8BF3B8()
{
  v4 = *(v0 + 16);

  MEMORY[0x1E1271BD0](58, 0xE100000000000000);
  if (*(v0 + 48))
  {
    v1 = 0x65746F6D6572;
  }

  else
  {
    v1 = 0x6C61636F6CLL;
  }

  if (*(v0 + 48))
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E1271BD0](v1, v2);

  return v4;
}

uint64_t sub_1DA8BF45C()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110D60);
  __swift_project_value_buffer(v0, qword_1EE110D60);
  return sub_1DA940594();
}

id sub_1DA8BF4E0(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1DA940A04();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1DA93F8C4();

    swift_willThrow();
  }

  return v6;
}

id sub_1DA8BF5BC(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1DA940A04();

  v8[0] = 0;
  v4 = [v2 initWithRemotePlaceholderBundleIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1DA93F8C4();

    swift_willThrow();
  }

  return v4;
}

void *sub_1DA8BF688(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1DA8BF70C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4ED8, &unk_1DA95FBD0);
  v4 = *(type metadata accessor for NotificationSource(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DA8BF808(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6648, &unk_1DA95FBE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1DA8BF88C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DA8BF9E4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for NotificationSource(0);
  v32 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - v13;
  v15 = a4 + 8;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[8];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[7];
      v26 = *(v32 + 72);
      sub_1DA82A798(v25 + v26 * (v24 | (v19 << 6)), v11);
      sub_1DA8B9950(v11, v14);
      sub_1DA8B9950(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1DA8BFC0C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DA8BFD60(uint64_t a1)
{
  v8[3] = type metadata accessor for NotificationSourceMonitor(0);
  v8[4] = &off_1F5636A58;
  v8[0] = a1;
  v2 = qword_1EE113010;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_1EE113018;
  v5 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_1DA84A760(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1DA8BFEAC(uint64_t a1)
{
  result = sub_1DA93FBB4();
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

uint64_t sub_1DA8BFFFC(uint64_t a1)
{
  result = type metadata accessor for NotificationSource(319);
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

uint64_t sub_1DA8C00B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8C0120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8C01AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1DA8C0250(unint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a1;
  if (a1 >> 62)
  {
    v4 = sub_1DA941264();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = &selRef_bulletinGroupingSetting;
    a3.n128_u64[0] = 136380675;
    v26 = a3;
    v27 = v3 & 0xC000000000000001;
    v28 = v3;
    do
    {
      if (v6)
      {
        v8 = MEMORY[0x1E1272460](v5, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = [v8 v7[71]];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 bundleIdentifier];
        if (v12)
        {
          v13 = v12;
          v14 = sub_1DA940A14();
          v16 = v15;

          if (qword_1EE110D50 != -1)
          {
            swift_once();
          }

          v17 = v4;
          v18 = sub_1DA9405A4();
          __swift_project_value_buffer(v18, qword_1EE110D60);

          v19 = sub_1DA940584();
          v20 = sub_1DA940EF4();

          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            v30 = v22;
            *v21 = v26.n128_u32[0];
            *(v21 + 4) = sub_1DA7AE6E8(v14, v16, &v30);
            _os_log_impl(&dword_1DA7A9000, v19, v20, "Dropping any cached sources for %{private}s", v21, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v22);
            MEMORY[0x1E12739F0](v22, -1, -1);
            MEMORY[0x1E12739F0](v21, -1, -1);
          }

          type metadata accessor for NotificationSourceMonitor.SourceKey();
          v23 = swift_allocObject();
          *(v23 + 16) = v14;
          *(v23 + 24) = v16;
          *(v23 + 32) = 1;
          v24 = *(a2 + 72);

          [v24 removeObjectForKey_];

          v25 = swift_allocObject();
          *(v25 + 16) = v14;
          *(v25 + 24) = v16;
          *(v25 + 32) = 0;
          [v24 removeObjectForKey_];

          v4 = v17;
          v6 = v27;
          v3 = v28;
          v7 = &selRef_bulletinGroupingSetting;
        }

        else
        {
        }
      }

      ++v5;
    }

    while (v4 != v5);
  }
}

void sub_1DA8C0530(uint64_t a1)
{
  if (qword_1EE110D50 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1EE110D60);
  sub_1DA7AD270(a1, v13);
  v3 = sub_1DA940584();
  v4 = sub_1DA940F34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136380675;
    sub_1DA7AD270(v13, v11);
    v7 = sub_1DA940A74();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(v13);
    v10 = sub_1DA7AE6E8(v7, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "Cache is evicting %{private}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E12739F0](v6, -1, -1);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

uint64_t sub_1DA8C06C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationSource(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8C0728()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t sub_1DA8C0764()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_1DA8C07A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1DA8C0800@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  [v4 lock];
  swift_getKeyPath();
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider, &protocol conformance descriptor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v5 = *(v3 + 64);

  result = [v4 unlock];
  *a2 = v5;
  return result;
}

id sub_1DA8C08DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 56);
  [v4 lock];
  sub_1DA8C0AE4(v2, v3, v2);

  return [v4 unlock];
}

uint64_t sub_1DA8C0974()
{
  v1 = *(v0 + 56);
  [v1 lock];
  swift_getKeyPath();
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider, &protocol conformance descriptor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v2 = *(v0 + 64);

  [v1 unlock];
  return v2;
}

id sub_1DA8C0A44(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 56);
  [v4 lock];
  sub_1DA8C0AE4(a1, v2, a1);

  return [v4 unlock];
}

void sub_1DA8C0AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v67 = a2;
  v4 = type metadata accessor for NotificationSource(0);
  v65 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v5);
  v62 = &v61 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v61 - v10;
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v64 = OBJC_IVAR____TtC21UserNotificationsCore28NotificationSettingsProvider___observationRegistrar;
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v17 = 0;
  v66 = a1;
  while (v14)
  {
LABEL_12:
    v21 = v63;
    sub_1DA82A798(*(a1 + 48) + *(v65 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v63);
    sub_1DA8B9950(v21, v7);
    swift_getKeyPath();
    v22 = v67;
    v68 = v67;
    sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider, &protocol conformance descriptor for NotificationSettingsProvider);
    sub_1DA93FB74();

    v23 = *(v22 + 64);
    if (*(v23 + 16))
    {

      v24 = sub_1DA85A894(v7);
      if (v25)
      {
        v26 = *(*(v23 + 56) + 8 * v24);
        v27 = v26;
      }

      else
      {
        v26 = 0;
      }

      v28 = v66;

      if (!*(v28 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v26 = 0;
      v28 = v66;
      if (!*(v66 + 16))
      {
        goto LABEL_23;
      }
    }

    v29 = sub_1DA85A894(v7);
    if (v30)
    {
      v31 = *(*(v28 + 56) + 8 * v29);
      v32 = v31;
      if (!v26)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

LABEL_23:
    v31 = 0;
    if (!v26)
    {
LABEL_21:
      if (!v31)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }

LABEL_24:
    if (v31)
    {
      sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
      v33 = sub_1DA941114();

      if (v33)
      {
        goto LABEL_6;
      }

      goto LABEL_29;
    }

    v31 = v26;
LABEL_28:

LABEL_29:
    sub_1DA8C194C(v34, v35);
    v37 = v36;
    v38 = v66;
    if (*(v66 + 16) && (v39 = sub_1DA85A894(v7), (v40 & 1) != 0))
    {
      v18 = *(*(v38 + 56) + 8 * v39);
      v41 = v18;
    }

    else
    {
      v18 = 0;
    }

    ObjectType = swift_getObjectType();
    (*(v37 + 16))(v18, v7[2], v7[3], ObjectType, v37);
    swift_unknownObjectRelease();

    v16 = 1;
LABEL_6:
    v14 &= v14 - 1;
    sub_1DA82A7FC(v7);
    a1 = v66;
  }

  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v20 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v20);
    ++v17;
    if (v14)
    {
      v17 = v20;
      goto LABEL_12;
    }
  }

  swift_getKeyPath();
  v68 = v67;
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider, &protocol conformance descriptor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v43 = sub_1DA8A6FF4(v42);

  v45 = sub_1DA8A6FF4(v44);
  if (*(v45 + 16) <= *(v43 + 16) >> 3)
  {
    v68 = v43;
    sub_1DA8C4C10(v45);

    v46 = v68;
  }

  else
  {
    v46 = sub_1DA8C534C(v45, v43);
  }

  v47 = v62;
  v48 = 0;
  v49 = 1 << v46[32];
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v46 + 7);
  for (i = (v49 + 63) >> 6; v51; v16 = 1)
  {
    v53 = v48;
LABEL_43:
    v54 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    v55 = sub_1DA82A798(*(v46 + 6) + *(v65 + 72) * (v54 | (v53 << 6)), v47);
    sub_1DA8C194C(v55, v56);
    v58 = v57;
    v59 = swift_getObjectType();
    (*(v58 + 16))(0, *(v47 + 16), *(v47 + 24), v59, v58);
    swift_unknownObjectRelease();
    sub_1DA82A7FC(v47);
  }

  while (1)
  {
    v53 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v53 >= i)
    {

      if (v16)
      {

        sub_1DA8C17F8(v60);
      }

      return;
    }

    v51 = *&v46[8 * v53 + 56];
    ++v48;
    if (v51)
    {
      v48 = v53;
      goto LABEL_43;
    }
  }

LABEL_49:
  __break(1u);
}

id (*sub_1DA8C104C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 56);
  a1[2] = v1;
  a1[3] = v3;
  [v3 lock];
  swift_getKeyPath();
  a1[1] = v1;
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider, &protocol conformance descriptor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v4 = *(v1 + 64);

  [v3 unlock];
  *a1 = v4;
  return sub_1DA8C1144;
}

id sub_1DA8C1144(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = a1[2];
  v3 = a1[3];
  if (a2)
  {

    [v3 lock];
    sub_1DA8C0AE4(v2, v4, v2);

    [v3 unlock];
  }

  else
  {
    [a1[3] lock];
    sub_1DA8C0AE4(v2, v4, v2);

    return [v3 unlock];
  }
}

id sub_1DA8C1254(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 56);
  [v4 lock];
  sub_1DA8C14B8(v2, v3);

  return [v4 unlock];
}

id sub_1DA8C12E8()
{
  v1 = *(v0 + 56);
  [v1 lock];
  swift_getKeyPath();
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider, &protocol conformance descriptor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v4 = *(v0 + 72);
  if (v4)
  {
    v5 = *(v0 + 72);
  }

  else
  {
    sub_1DA8C194C(v2, v3);
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
    v5 = v9;
    sub_1DA8C1CC8(v9);
    v4 = 0;
  }

  v10 = v4;
  [v1 unlock];
  return v5;
}

void sub_1DA8C1420(void *a1)
{
  v2 = v1[7];
  [v2 lock];
  sub_1DA8C14B8(a1, v1);
  [v2 unlock];
}

void sub_1DA8C14B8(void *a1, void *a2)
{
  swift_getKeyPath();
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider, &protocol conformance descriptor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v4 = a2[9];
  if (!v4 || (sub_1DA7AF3EC(0, &qword_1ECBD66F0, 0x1E69DF288), v5 = a1, v6 = v4, v7 = sub_1DA941114(), v5, v6, (v7 & 1) == 0))
  {
    v8 = a1;
    sub_1DA8C1CC8(a1);
    v9 = v8;
    v11 = sub_1DA8C194C(v9, v10);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    ObjectType = swift_getObjectType();
    (*(v17 + 16))(v9, ObjectType, v17);
    a2[3] = v11;
    a2[4] = v13;
    a2[5] = v15;
    a2[6] = v17;
    swift_unknownObjectRelease();
  }
}

void (*sub_1DA8C1628(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1DA8C12E8();
  return sub_1DA8C1670;
}

void sub_1DA8C1670(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = v3[7];
  v7 = v2;
  if (a2)
  {
    v6 = v2;
    [v5 lock];
    sub_1DA8C14B8(v6, v3);
    [v5 unlock];
  }

  else
  {
    [v5 lock];
    sub_1DA8C14B8(v7, v3);
    [v5 unlock];
  }
}

uint64_t NotificationSettingsProvider.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1DA8C7200(a1, a2);
  sub_1DA7B5220(a1, a2);
  return v4;
}

uint64_t NotificationSettingsProvider.init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA8C7200(a1, a2);
  sub_1DA7B5220(a1, a2);
  return v4;
}

uint64_t sub_1DA8C17F8(uint64_t a1)
{

  sub_1DA8C4520(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider, &protocol conformance descriptor for NotificationSettingsProvider);
    sub_1DA93FB64();
  }
}

uint64_t sub_1DA8C194C(uint64_t a1, uint64_t a2)
{
  if (v2[3])
  {
    v3 = v2[3];
  }

  else
  {
    type metadata accessor for XPCSettingsProvider();
    swift_allocObject();
    v3 = XPCSettingsProvider.init()();
    v2[3] = v3;
    v2[4] = &protocol witness table for XPCSettingsProvider;
    v2[5] = &protocol witness table for XPCSettingsProvider;
    v2[6] = &off_1F56381E0;

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

double sub_1DA8C19F8()
{
  swift_getKeyPath();
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider, &protocol conformance descriptor for NotificationSettingsProvider);
  sub_1DA93FB74();

  return result;
}

double sub_1DA8C1A9C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider, &protocol conformance descriptor for NotificationSettingsProvider);
  sub_1DA93FB74();

  *a2 = *(v3 + 64);

  return result;
}

void *sub_1DA8C1B68()
{
  swift_getKeyPath();
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider, &protocol conformance descriptor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

id sub_1DA8C1C10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider, &protocol conformance descriptor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_1DA8C1CC8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider, &protocol conformance descriptor for NotificationSettingsProvider);
    sub_1DA93FB64();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1DA7AF3EC(0, &qword_1ECBD66F0, 0x1E69DF288);
  v5 = v4;
  v6 = a1;
  v7 = sub_1DA941114();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 72);
LABEL_8:
  *(v2 + 72) = a1;
}

id sub_1DA8C1E58()
{
  v1 = v0;
  v52 = type metadata accessor for NotificationSource(0);
  v55 = *(v52 - 8);
  v2 = MEMORY[0x1EEE9AC00](v52);
  v56 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v51 - v6;
  v8 = *(v0 + 80);
  if (v8)
  {
    v9 = *(v0 + 88);

    v12 = sub_1DA8C194C(v10, v11);
    v14 = v13;
    ObjectType = swift_getObjectType();
    v54 = v12;
    v57 = v12;
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = v9;
    v16 = *(v14 + 8);

    v17 = 0;
    v23 = v16(sub_1DA8C79A0, v15, ObjectType, v14);
    v51 = 0;
    swift_unknownObjectRelease();
    sub_1DA7B5220(v8, v9);

    v1 = v0;
  }

  else
  {
    v18 = sub_1DA8C194C(v4, v5);
    v20 = v19;
    v21 = swift_getObjectType();
    v57 = v18;
    v22 = v20;
    v17 = 0;
    v23 = sub_1DA8E787C(0, 0, v21, v22);
    v51 = 0;
    swift_unknownObjectRelease();
  }

  v24 = sub_1DA849B90(MEMORY[0x1E69E7CC0]);
  v25 = *(v1 + 16);
  *(v1 + 16) = v23;

  v54 = *(v23 + 16);
  if (v54)
  {
    v26 = 0;
    ObjectType = v23 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    while (1)
    {
      if (v26 >= *(v23 + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        sub_1DA9416E4();
        __break(1u);
LABEL_27:

        result = [v25 unlock];
        __break(1u);
        return result;
      }

      v17 = *(v55 + 72);
      v28 = sub_1DA82A798(ObjectType + v17 * v26, v7);
      sub_1DA8C194C(v28, v29);
      v31 = v30;
      v32 = swift_getObjectType();
      v25 = (*(v31 + 8))(*(v7 + 2), *(v7 + 3), v32, v31);
      swift_unknownObjectRelease();
      if (v25)
      {
        break;
      }

LABEL_8:
      ++v26;
      sub_1DA82A7FC(v7);
      if (v54 == v26)
      {
        goto LABEL_21;
      }
    }

    v33 = v23;
    v34 = v1;
    v35 = v56;
    sub_1DA82A798(v7, v56);
    v36 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v24;
    v25 = v24;
    v38 = sub_1DA85A894(v35);
    v40 = v24[2];
    v41 = (v39 & 1) == 0;
    v42 = __OFADD__(v40, v41);
    v43 = v40 + v41;
    if (v42)
    {
      goto LABEL_24;
    }

    v44 = v39;
    if (v24[3] >= v43)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v49 = v38;
        sub_1DA86199C();
        v38 = v49;
        v24 = v57;
        if ((v44 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_6;
      }
    }

    else
    {
      sub_1DA85DF48(v43, isUniquelyReferenced_nonNull_native);
      v25 = v57;
      v38 = sub_1DA85A894(v56);
      if ((v44 & 1) != (v45 & 1))
      {
        goto LABEL_26;
      }
    }

    v24 = v57;
    if ((v44 & 1) == 0)
    {
LABEL_17:
      v24[(v38 >> 6) + 8] |= 1 << v38;
      v46 = v24[6] + v38 * v17;
      v25 = v38;
      v17 = v56;
      sub_1DA82A798(v56, v46);
      *(v24[7] + 8 * v25) = v36;

      sub_1DA82A7FC(v17);
      v47 = v24[2];
      v42 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v42)
      {
        goto LABEL_25;
      }

      v24[2] = v48;
      goto LABEL_7;
    }

LABEL_6:
    v27 = v24[7];
    v25 = *(v27 + 8 * v38);
    *(v27 + 8 * v38) = v36;

    sub_1DA82A7FC(v56);
LABEL_7:
    v1 = v34;
    v23 = v33;
    goto LABEL_8;
  }

LABEL_21:

  v25 = *(v1 + 56);
  [v25 lock];
  v17 = v51;
  sub_1DA8C0AE4(v24, v1, v24);
  if (v17)
  {
    goto LABEL_27;
  }

  return [v25 unlock];
}

uint64_t NotificationSettingsProvider.deinit()
{

  swift_unknownObjectRelease();

  sub_1DA7B5220(*(v0 + 80), *(v0 + 88));
  v1 = OBJC_IVAR____TtC21UserNotificationsCore28NotificationSettingsProvider___observationRegistrar;
  v2 = sub_1DA93FBB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NotificationSettingsProvider.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  sub_1DA7B5220(*(v0 + 80), *(v0 + 88));
  v1 = OBJC_IVAR____TtC21UserNotificationsCore28NotificationSettingsProvider___observationRegistrar;
  v2 = sub_1DA93FBB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t static NotificationSettingsProvider.Monitor.all()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NotificationSettingsProvider(0);
  swift_allocObject();
  result = sub_1DA8C7200(0, 0);
  *a1 = result;
  return result;
}

void static NotificationSettingsProvider.Monitor.allMatching(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  type metadata accessor for NotificationSettingsProvider(0);
  swift_allocObject();

  v6 = sub_1DA8C7200(a1, a2);

  *a3 = v6;
}

uint64_t sub_1DA8C2580(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60);
  v5 = *(v4 - 8);
  v17[1] = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v18 = v17 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66C8, &qword_1DA95FE50);
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - v10;
  if (a2)
  {
    v12 = a2[7];
    [v12 lock];
    swift_getKeyPath();
    v19 = a2;
    sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider, &protocol conformance descriptor for NotificationSettingsProvider);
    sub_1DA93FB74();

    v13 = a2[8];

    [v12 unlock];
    v19 = sub_1DA859FC4(v13);
    sub_1DA940D54();
    (*(v8 + 8))(v11, v7);
    sub_1DA8C2854(v13, a2, a1);

    v14 = v18;
    (*(v5 + 16))(v18, a1, v4);
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v16 = swift_allocObject();
    (*(v5 + 32))(v16 + v15, v14, v4);
    return sub_1DA940D44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DA8C2854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66C8, &qword_1DA95FE50);
  v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = v92 - v6;
  v7 = type metadata accessor for NotificationSource(0);
  v103 = *(v7 - 1);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v104 = (v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v100 = v92 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (v92 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v102 = (v92 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v101 = v92 - v17;
  type metadata accessor for NotificationSettingsProvider.Monitor.Tracking();
  inited = swift_initStackObject();
  v19 = MEMORY[0x1E69E7CC0];
  *(inited + 16) = sub_1DA849B90(MEMORY[0x1E69E7CC0]);
  v20 = sub_1DA849B90(v19);
  *(inited + 16) = a1;
  *(inited + 24) = v20;

  v107 = a2;
  v105 = a2;
  v106 = a3;
  v97 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D0, &qword_1DA95FE58);
  sub_1DA93FB54();
  v21 = v108;
  *(inited + 24) = v108;

  sub_1DA8C4520(a1, v21);
  LOBYTE(v19) = v22;

  if (v19)
  {
LABEL_71:

    return;
  }

  v93 = v14;
  v94 = inited;
  v92[1] = v7;
  v23 = sub_1DA849D74(MEMORY[0x1E69E7CC0]);
  v24 = 1 << *(v21 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v21 + 64);
  v27 = (v24 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v28 = 0;
  v29 = v102;
  if (v26)
  {
    while (1)
    {
LABEL_12:
      v31 = *(v21 + 48);
      v99 = *(v103 + 72);
      v32 = v101;
      sub_1DA82A798(v31 + v99 * (__clz(__rbit64(v26)) | (v28 << 6)), v101);
      sub_1DA8B9950(v32, v29);
      if (*(a1 + 16))
      {

        v33 = sub_1DA85A894(v29);
        if (v34)
        {
          v35 = *(*(a1 + 56) + 8 * v33);
          v36 = v35;
        }

        else
        {
          v35 = 0;
        }

        if (!*(v21 + 16))
        {
LABEL_16:
          v37 = 0;
          goto LABEL_23;
        }
      }

      else
      {
        v35 = 0;
        if (!*(v21 + 16))
        {
          goto LABEL_16;
        }
      }

      v38 = sub_1DA85A894(v29);
      if (v39)
      {
        v37 = *(*(v21 + 56) + 8 * v38);
        v40 = v37;
      }

      else
      {
        v37 = 0;
      }

LABEL_23:
      v26 &= v26 - 1;
      if (!v35)
      {
        if (v37)
        {
          goto LABEL_28;
        }

        goto LABEL_7;
      }

      if (!v37)
      {
        v37 = v35;
LABEL_28:

        goto LABEL_29;
      }

      sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
      v41 = sub_1DA941114();

      if (v41)
      {
LABEL_7:
        v29 = v102;
        sub_1DA82A7FC(v102);
        if (!v26)
        {
          goto LABEL_8;
        }
      }

      else
      {
LABEL_29:
        v42 = v102;
        sub_1DA82A798(v102, v93);
        if (*(v21 + 16))
        {

          v43 = sub_1DA85A894(v42);
          if (v44)
          {
            v92[0] = *(*(v21 + 56) + 8 * v43);
            v45 = v92[0];
          }

          else
          {
            v92[0] = 0;
          }
        }

        else
        {
          v92[0] = 0;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = v23;
        v47 = sub_1DA85A894(v93);
        v49 = v23[2];
        v50 = (v48 & 1) == 0;
        v51 = __OFADD__(v49, v50);
        v52 = v49 + v50;
        if (v51)
        {
          goto LABEL_76;
        }

        v53 = v48;
        if (v23[3] < v52)
        {
          sub_1DA85E308(v52, isUniquelyReferenced_nonNull_native);
          v47 = sub_1DA85A894(v93);
          if ((v53 & 1) != (v54 & 1))
          {
            goto LABEL_78;
          }

LABEL_40:
          v23 = v108;
          if (v53)
          {
            goto LABEL_41;
          }

          goto LABEL_43;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_40;
        }

        v57 = v47;
        sub_1DA861BE4();
        v47 = v57;
        v23 = v108;
        if (v53)
        {
LABEL_41:
          v55 = v23[7];
          v56 = *(v55 + 8 * v47);
          *(v55 + 8 * v47) = v92[0];

          sub_1DA82A7FC(v93);
          goto LABEL_7;
        }

LABEL_43:
        v23[(v47 >> 6) + 8] |= 1 << v47;
        v58 = v47;
        v59 = v93;
        sub_1DA82A798(v93, v23[6] + v47 * v99);
        *(v23[7] + 8 * v58) = v92[0];
        sub_1DA82A7FC(v59);
        v29 = v102;
        sub_1DA82A7FC(v102);
        v60 = v23[2];
        v51 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v51)
        {
          goto LABEL_77;
        }

        v23[2] = v61;
        if (!v26)
        {
          goto LABEL_8;
        }
      }
    }
  }

  while (1)
  {
LABEL_8:
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (v30 >= v27)
    {
      break;
    }

    v26 = *(v21 + 64 + 8 * v30);
    ++v28;
    if (v26)
    {
      v28 = v30;
      goto LABEL_12;
    }
  }

  v63 = sub_1DA8A6FF4(v62);
  v64 = sub_1DA8A6FF4(v21);
  if (*(v64 + 16) <= *(v63 + 16) >> 3)
  {
    v108 = v63;
    sub_1DA8C4C10(v64);

    v65 = v108;
  }

  else
  {
    v65 = sub_1DA8C534C(v64, v63);
  }

  v66 = 0;
  v67 = 1 << v65[32];
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(v65 + 7);
  v70 = (v67 + 63) >> 6;
  if (v69)
  {
    goto LABEL_54;
  }

LABEL_55:
  while (1)
  {
    v73 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    if (v73 >= v70)
    {

      if (v23[2])
      {
        v108 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60);
        v91 = v95;
        sub_1DA940D54();

        (*(v96 + 8))(v91, v98);
        return;
      }

      goto LABEL_71;
    }

    v69 = *&v65[8 * v73 + 56];
    ++v66;
    if (v69)
    {
      while (1)
      {
        v74 = *(v103 + 72);
        v75 = v100;
        sub_1DA82A798(*(v65 + 6) + v74 * (__clz(__rbit64(v69)) | (v73 << 6)), v100);
        v76 = v75;
        v77 = v104;
        sub_1DA8B9950(v76, v104);
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v108 = v23;
        v79 = sub_1DA85A894(v77);
        v81 = v23[2];
        v82 = (v80 & 1) == 0;
        v51 = __OFADD__(v81, v82);
        v83 = v81 + v82;
        if (v51)
        {
          goto LABEL_74;
        }

        v84 = v80;
        if (v23[3] >= v83)
        {
          if ((v78 & 1) == 0)
          {
            v90 = v79;
            sub_1DA861BE4();
            v79 = v90;
          }
        }

        else
        {
          sub_1DA85E308(v83, v78);
          v79 = sub_1DA85A894(v104);
          if ((v84 & 1) != (v85 & 1))
          {
            goto LABEL_78;
          }
        }

        v69 &= v69 - 1;
        v23 = v108;
        if (v84)
        {
          v71 = v108[7];
          v72 = *(v71 + 8 * v79);
          *(v71 + 8 * v79) = 0;

          sub_1DA82A7FC(v104);
          v66 = v73;
          if (!v69)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v108[(v79 >> 6) + 8] |= 1 << v79;
          v86 = v79;
          v87 = v104;
          sub_1DA82A798(v104, v23[6] + v79 * v74);
          *(v23[7] + 8 * v86) = 0;
          sub_1DA82A7FC(v87);
          v88 = v23[2];
          v51 = __OFADD__(v88, 1);
          v89 = v88 + 1;
          if (v51)
          {
            goto LABEL_75;
          }

          v23[2] = v89;
          v66 = v73;
          if (!v69)
          {
            goto LABEL_55;
          }
        }

LABEL_54:
        v73 = v66;
      }
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  sub_1DA9416E4();
  __break(1u);
}

void *sub_1DA8C3148@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    v4 = result[7];
    [v4 lock];
    swift_getKeyPath();
    sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider, &protocol conformance descriptor for NotificationSettingsProvider);
    sub_1DA93FB74();

    v5 = v2[8];

    result = [v4 unlock];
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_1DA8C322C(uint64_t a1, uint64_t a2))()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a2, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  (*(v5 + 32))(v9 + v8, v7, v4);

  return sub_1DA8C77F0;
}

void sub_1DA8C3374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v17 - v10;
  if (a1)
  {
    v12 = *(a1 + 56);
    [v12 lock];
    swift_getKeyPath();
    v17[1] = a1;
    sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider, &protocol conformance descriptor for NotificationSettingsProvider);
    sub_1DA93FB74();

    v13 = *(a1 + 64);

    [v12 unlock];
    v14 = sub_1DA940D34();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    (*(v5 + 16))(v8, a2, v4);
    v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v16 = swift_allocObject();
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 4) = a1;
    (*(v5 + 32))(&v16[v15], v8, v4);
    *&v16[(v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = v13;

    sub_1DA8DB00C(0, 0, v11, &unk_1DA95FE80, v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DA8C3620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DA8C3644, 0, 0);
}

uint64_t sub_1DA8C3644()
{
  sub_1DA8C2854(v0[4], v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DA8C36A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66E8, &unk_1DA95FE90);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v29 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  if (qword_1ECBD4778 != -1)
  {
    swift_once();
  }

  v14 = sub_1DA9405A4();
  __swift_project_value_buffer(v14, qword_1ECBD6650);
  v35 = *(v5 + 16);
  v35(v13, a1, v4);
  v15 = sub_1DA940584();
  v16 = sub_1DA940F34();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34 = a2;
    v31 = v19;
    v36 = v19;
    *v18 = 136315138;
    v35(v11, v13, v4);
    v20 = sub_1DA940A74();
    v33 = v8;
    v21 = v5;
    v23 = v22;
    v30 = *(v21 + 8);
    v30(v13, v4);
    v24 = sub_1DA7AE6E8(v20, v23, &v36);
    v5 = v21;
    v8 = v33;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1DA7A9000, v15, v16, "Terminating monitor. Reason: %s", v18, 0xCu);
    v25 = v31;
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x1E12739F0](v25, -1, -1);
    v26 = v18;
    a1 = v32;
    MEMORY[0x1E12739F0](v26, -1, -1);

    v27 = v30;
  }

  else
  {

    v27 = *(v5 + 8);
    v27(v13, v4);
  }

  v35(v8, a1, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result != *MEMORY[0x1E69E8610])
  {
    if (result == *MEMORY[0x1E69E8618])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60);
      return sub_1DA940D64();
    }

    else
    {
      return (v27)(v8, v4);
    }
  }

  return result;
}

uint64_t NotificationSettingsProvider.Monitor.Iterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6678, &qword_1DA95FC48);
  *v1 = v0;
  v1[1] = sub_1DA8C3AC8;

  return MEMORY[0x1EEE6D9D0](v0 + 16, v2);
}

uint64_t sub_1DA8C3AC8()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA835B58, 0, 0);
}

uint64_t sub_1DA8C3BC4(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6678, &qword_1DA95FC48);
  *v2 = v1;
  v2[1] = sub_1DA8C3C78;

  return MEMORY[0x1EEE6D9D0](v1 + 16, v3);
}

uint64_t sub_1DA8C3C78()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA8C3D74, 0, 0);
}

uint64_t sub_1DA8C3D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_1DA8C3E4C;

  return MEMORY[0x1EEE6D8C8](v6 + 2, a5, a6);
}

uint64_t sub_1DA8C3E4C()
{
  v2 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1DA940C34();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1DA8C4000;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1DA940C34();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1DA8C3FDC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1DA8C4000()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB0, qword_1DA95D940);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t NotificationSettingsProvider.Monitor.makeAsyncIterator()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6680, &qword_1DA95FC50);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6688, &qword_1DA95FC58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  v9 = *v0;
  *v4 = 1;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8640], v1);
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6690, qword_1DA95FC60);
  sub_1DA940DC4();

  sub_1DA940D84();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DA8C4280()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6680, &qword_1DA95FC50);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6688, &qword_1DA95FC58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  v9 = *v0;
  *v4 = 1;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8640], v1);
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6690, qword_1DA95FC60);
  sub_1DA940DC4();

  sub_1DA940D84();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DA8C4460()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD6650);
  __swift_project_value_buffer(v0, qword_1ECBD6650);
  return sub_1DA940594();
}

uint64_t sub_1DA8C44E0()
{

  return swift_deallocClassInstance();
}

void sub_1DA8C4520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationSource(0);
  v51 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66E0, &qword_1DA95FE70);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v48 - v12;
  if (a1 == a2)
  {
    v54 = 1;
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    v53 = a2;
    v14 = 0;
    v49 = a1;
    v15 = *(a1 + 64);
    v48 = a1 + 64;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v20 = &unk_1ECBD58F0;
    while (v18)
    {
      v55 = (v18 - 1) & v18;
      v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
      v27 = v49;
      v28 = v50;
      sub_1DA82A798(*(v49 + 48) + *(v51 + 72) * v21, v50);
      v29 = *(*(v27 + 56) + 8 * v21);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, &qword_1DA95C1F8);
      v31 = *(v30 + 48);
      sub_1DA8B9950(v28, v11);
      *&v11[v31] = v29;
      (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
      v32 = v29;
      v24 = v53;
LABEL_17:
      sub_1DA8C7780(v11, v13);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, &qword_1DA95C1F8);
      v34 = (*(*(v33 - 8) + 48))(v13, 1, v33);
      v54 = v34 == 1;
      if (v34 == 1)
      {
        return;
      }

      v35 = v19;
      v36 = v20;
      v37 = v11;
      v38 = *(v33 + 48);
      v39 = v52;
      sub_1DA8B9950(v13, v52);
      v40 = v13;
      v41 = *&v13[v38];
      v42 = sub_1DA85A894(v39);
      v44 = v43;
      sub_1DA82A7FC(v39);
      if ((v44 & 1) == 0)
      {

        goto LABEL_24;
      }

      sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
      v45 = *(*(v24 + 56) + 8 * v42);
      v46 = sub_1DA941114();

      v11 = v37;
      v13 = v40;
      v20 = v36;
      v19 = v35;
      v18 = v55;
      if ((v46 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v14 + 1)
    {
      v22 = v14 + 1;
    }

    else
    {
      v22 = v19;
    }

    v23 = v22 - 1;
    v24 = v53;
    while (1)
    {
      v25 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v25 >= v19)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, &qword_1DA95C1F8);
        (*(*(v47 - 8) + 56))(v11, 1, 1, v47);
        v55 = 0;
        v14 = v23;
        goto LABEL_17;
      }

      v26 = *(v48 + 8 * v25);
      ++v14;
      if (v26)
      {
        v55 = (v26 - 1) & v26;
        v21 = __clz(__rbit64(v26)) | (v25 << 6);
        v14 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v54 = 0;
  }
}

uint64_t sub_1DA8C4948(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1DA862D8C(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_1DA85A4B4(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_1DA862DE8(&v24);
      return 0;
    }

    sub_1DA862D8C(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x1E12723B0](v23, &v24);
    sub_1DA862DE8(v23);
    result = sub_1DA862DE8(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1DA8C4AE4(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1DA8C5DF4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_1DA8C4C10(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for NotificationSource(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_1DA82A798(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9);
      sub_1DA8C60B8(v9, v5);
      sub_1DA82A7FC(v9);
      sub_1DA8C7718(v5);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DA8C4DDC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1DA941764();

    sub_1DA940AB4();
    v23 = sub_1DA941794();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1DA941684() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1DA8E4190(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1DA941764();

            sub_1DA940AB4();
            v41 = sub_1DA941794();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1DA941684() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1DA8C639C(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x1E12739F0](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_1DA830720(v13);
    return v5;
  }

  result = MEMORY[0x1E12739F0](v50, -1, -1);
  __break(1u);
  return result;
}

char *sub_1DA8C534C(uint64_t a1, char *a2)
{
  v114 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v86 - v9;
  v99 = type metadata accessor for NotificationSource(0);
  v11 = MEMORY[0x1EEE9AC00](v99);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v103 = (&v86 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v86 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v90 = (&v86 - v20);
  if (!*(a2 + 2))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v91 = v8;
  v87 = 0;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v100 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v21;
  v92 = (63 - v23) >> 6;
  v98 = (v19 + 56);
  v89 = v19;
  v97 = (v19 + 48);
  v105 = a2;
  v108 = a2 + 56;

  v27 = 0;
  v96 = a1;
  v95 = a1 + 56;
  for (i = v10; ; v10 = i)
  {
    v28 = v25;
    v29 = v27;
    if (v25)
    {
LABEL_15:
      v33 = (v28 - 1) & v28;
      sub_1DA82A798(*(a1 + 48) + v89[9] * (__clz(__rbit64(v28)) | (v29 << 6)), v10);
      v34 = 0;
      v31 = v29;
    }

    else
    {
      v30 = v92 <= (v27 + 1) ? v27 + 1 : v92;
      v31 = v30 - 1;
      v32 = v27;
      while (1)
      {
        v29 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_88;
        }

        if (v29 >= v92)
        {
          break;
        }

        v28 = *(v22 + 8 * v29);
        ++v32;
        if (v28)
        {
          goto LABEL_15;
        }
      }

      v33 = 0;
      v34 = 1;
    }

    v35 = v99;
    v94 = *v98;
    v94(v10, v34, 1, v99);
    v109 = a1;
    v110 = v22;
    v111 = v100;
    v112 = v31;
    v113 = v33;
    v93 = *v97;
    if (v93(v10, 1, v35) == 1)
    {
      sub_1DA8C7718(v10);
      sub_1DA830720(a1);
      return v105;
    }

    v36 = v90;
    sub_1DA8B9950(v10, v90);
    sub_1DA941764();
    v37 = *v36;
    v38 = v36[1];
    v102 = v33;
    v104 = v37;
    sub_1DA941784();
    if (v38)
    {
      sub_1DA940AB4();
    }

    v39 = v90;
    v40 = v90[3];
    v106 = v90[2];
    sub_1DA940AB4();
    LODWORD(v101) = *(v39 + 48);
    sub_1DA941784();
    v41 = sub_1DA941794();
    v42 = -1 << v105[32];
    v27 = v41 & ~v42;
    v25 = v27 >> 6;
    v2 = 1 << v27;
    if (((1 << v27) & v108[v27 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_1DA82A7FC(v90);
    v27 = v31;
    v25 = v102;
    a1 = v96;
    v22 = v95;
  }

  v43 = ~v42;
  v107 = v89[9];
  while (1)
  {
    sub_1DA82A798(*(v105 + 6) + v107 * v27, v18);
    v44 = *(v18 + 1);
    if (v44)
    {
      break;
    }

    if (!v38)
    {
      goto LABEL_31;
    }

LABEL_22:
    sub_1DA82A7FC(v18);
LABEL_23:
    v27 = (v27 + 1) & v43;
    v25 = v27 >> 6;
    v2 = 1 << v27;
    if ((v108[v27 >> 6] & (1 << v27)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (!v38)
  {
    goto LABEL_22;
  }

  v45 = *v18 == v104 && v44 == v38;
  if (!v45 && (sub_1DA941684() & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_31:
  v46 = *(v18 + 2) == v106 && *(v18 + 3) == v40;
  if (!v46 && (sub_1DA941684() & 1) == 0)
  {
    goto LABEL_22;
  }

  v47 = v18[48];
  sub_1DA82A7FC(v18);
  if (v101 != v47)
  {
    goto LABEL_23;
  }

  v48 = sub_1DA82A7FC(v90);
  v18 = v105;
  v49 = v105[32];
  i = ((1 << v49) + 63) >> 6;
  v26 = 8 * i;
  if ((v49 & 0x3Fu) > 0xD)
  {
    goto LABEL_89;
  }

  while (2)
  {
    v89 = &v86;
    MEMORY[0x1EEE9AC00](v48);
    v51 = &v86 - ((v50 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v51, v108, v50);
    v52 = *&v51[8 * v25] & ~v2;
    v53 = *(v18 + 2);
    v101 = v51;
    *&v51[8 * v25] = v52;
    v54 = v53 - 1;
    v25 = v96;
    v27 = v91;
    v55 = v95;
    v56 = v92;
    v2 = v102;
LABEL_41:
    v90 = v54;
    while (2)
    {
      if (v2)
      {
        v57 = v31;
LABEL_53:
        v60 = __clz(__rbit64(v2));
        v61 = (v2 - 1) & v2;
        sub_1DA82A798(*(v25 + 48) + (v60 | (v57 << 6)) * v107, v27);
        v62 = 0;
LABEL_54:
        v63 = v99;
        v94(v27, v62, 1, v99);
        v109 = v25;
        v110 = v55;
        v111 = v100;
        v112 = v31;
        v113 = v61;
        if (v93(v27, 1, v63) == 1)
        {
          sub_1DA8C7718(v27);
          v81 = sub_1DA8E43B4(v101, i, v90, v18);
          goto LABEL_83;
        }

        v64 = v103;
        sub_1DA8B9950(v27, v103);
        sub_1DA941764();
        v65 = *v64;
        v66 = v64[1];
        v102 = v61;
        v106 = v65;
        sub_1DA941784();
        if (v66)
        {
          sub_1DA940AB4();
        }

        v67 = v103;
        v69 = v103[2];
        v68 = v103[3];
        sub_1DA940AB4();
        LODWORD(v104) = *(v67 + 48);
        sub_1DA941784();
        v70 = sub_1DA941794();
        v71 = -1 << v18[32];
        v72 = v70 & ~v71;
        v73 = v72 >> 6;
        v74 = 1 << v72;
        if (((1 << v72) & v108[v72 >> 6]) == 0)
        {
LABEL_42:
          sub_1DA82A7FC(v103);
          v25 = v96;
          v27 = v91;
          v55 = v95;
          v56 = v92;
          v2 = v102;
          continue;
        }

        v75 = ~v71;
LABEL_62:
        sub_1DA82A798(*(v18 + 6) + v72 * v107, v13);
        v76 = *(v13 + 1);
        if (v76)
        {
          if (v66)
          {
            v77 = *v13 == v106 && v76 == v66;
            if (v77 || (sub_1DA941684() & 1) != 0)
            {
LABEL_69:
              v78 = *(v13 + 2) == v69 && *(v13 + 3) == v68;
              if (v78 || (sub_1DA941684() & 1) != 0)
              {
                v79 = v13[48];
                sub_1DA82A7FC(v13);
                v45 = v104 == v79;
                v18 = v105;
                if (v45)
                {
                  sub_1DA82A7FC(v103);
                  v80 = v101[v73];
                  v101[v73] = v80 & ~v74;
                  v45 = (v80 & v74) == 0;
                  v25 = v96;
                  v27 = v91;
                  v55 = v95;
                  v56 = v92;
                  v2 = v102;
                  if (!v45)
                  {
                    v54 = v90 - 1;
                    if (__OFSUB__(v90, 1))
                    {
                      __break(1u);
                    }

                    if (v90 == 1)
                    {

                      v81 = MEMORY[0x1E69E7CD0];
                      goto LABEL_83;
                    }

                    goto LABEL_41;
                  }

                  continue;
                }

                goto LABEL_61;
              }
            }
          }
        }

        else if (!v66)
        {
          goto LABEL_69;
        }

        sub_1DA82A7FC(v13);
LABEL_61:
        v72 = (v72 + 1) & v75;
        v73 = v72 >> 6;
        v74 = 1 << v72;
        if ((v108[v72 >> 6] & (1 << v72)) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_62;
      }

      break;
    }

    if (v56 <= (v31 + 1))
    {
      v58 = v31 + 1;
    }

    else
    {
      v58 = v56;
    }

    v59 = v58 - 1;
    while (1)
    {
      v57 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v57 >= v56)
      {
        v61 = 0;
        v62 = 1;
        v31 = v59;
        goto LABEL_54;
      }

      v2 = *(v55 + 8 * v57);
      ++v31;
      if (v2)
      {
        v31 = v57;
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    v83 = v26;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v84 = swift_slowAlloc();
  memcpy(v84, v108, v83);
  v85 = v87;
  v81 = sub_1DA8C65D4(v84, i, v18, v27, &v109);

  if (v85)
  {

    result = MEMORY[0x1E12739F0](v84, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x1E12739F0](v84, -1, -1);
    v25 = v109;
    v100 = v111;
LABEL_83:
    sub_1DA830720(v25);
    return v81;
  }

  return result;
}

uint64_t sub_1DA8C5DF4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DA941764();
  sub_1DA940AB4();
  v6 = sub_1DA941794();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1DA941684() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DA8AB908();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1DA8C6BC0(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1DA8C5F30(void *a1)
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
    v6 = sub_1DA9412A4();

    if (v6)
    {
      v7 = sub_1DA8C6A68(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for NotificationServiceConnection();
  v10 = sub_1DA941104();
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
    v15 = sub_1DA941114();

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
    sub_1DA8ABC9C();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1DA8C6D84(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1DA8C60B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NotificationSource(0);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v2;
  v8 = *v2;
  sub_1DA941764();
  v10 = *a1;
  v9 = a1[1];
  sub_1DA941784();
  if (v9)
  {
    sub_1DA940AB4();
  }

  v11 = a1[2];
  v40 = a1[3];
  sub_1DA940AB4();
  v39 = *(a1 + 48);
  sub_1DA941784();
  v12 = sub_1DA941794();
  v13 = v8 + 56;
  v14 = -1 << *(v8 + 32);
  v15 = v12 & ~v14;
  if (((*(v8 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    v32 = 1;
    return (*(v37 + 56))(a2, v32, 1, v5);
  }

  v35 = v5;
  v36 = a2;
  v16 = ~v14;
  v17 = *(v37 + 72);
  while (1)
  {
    sub_1DA82A798(*(v8 + 48) + v17 * v15, v7);
    v18 = *(v7 + 1);
    if (v18)
    {
      break;
    }

    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_6:
    sub_1DA82A7FC(v7);
LABEL_7:
    v15 = (v15 + 1) & v16;
    if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      v32 = 1;
      v5 = v35;
      a2 = v36;
      return (*(v37 + 56))(a2, v32, 1, v5);
    }
  }

  if (!v9)
  {
    goto LABEL_6;
  }

  v19 = *v7 == v10 && v18 == v9;
  if (!v19 && (sub_1DA941684() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  v20 = *(v7 + 2) == v11 && *(v7 + 3) == v40;
  if (!v20 && (sub_1DA941684() & 1) == 0)
  {
    goto LABEL_6;
  }

  v38 = v17 * v15;
  v21 = v9;
  v22 = v17;
  v23 = v16;
  v24 = v13;
  v25 = v8;
  v26 = v11;
  v27 = v10;
  v28 = v7[48];
  sub_1DA82A7FC(v7);
  v19 = v39 == v28;
  v10 = v27;
  v11 = v26;
  v8 = v25;
  v13 = v24;
  v16 = v23;
  v17 = v22;
  v9 = v21;
  if (!v19)
  {
    goto LABEL_7;
  }

  v29 = v34;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v29;
  v41 = *v29;
  v5 = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DA8ABDF0();
    v31 = v41;
  }

  a2 = v36;
  sub_1DA8B9950(*(v31 + 48) + v38, v36);
  sub_1DA8C6F24(v15);
  v32 = 0;
  *v29 = v41;
  return (*(v37 + 56))(a2, v32, 1, v5);
}

unint64_t *sub_1DA8C639C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1DA8E4190(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1DA941764();

        sub_1DA940AB4();
        v19 = sub_1DA941794();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1DA941684() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1DA8C65D4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v54 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v53 - v10;
  v60 = type metadata accessor for NotificationSource(0);
  v11 = MEMORY[0x1EEE9AC00](v60);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v62 = v16;
  v63 = (&v53 - v15);
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18) & ((-1 << a4) - 1);
  v56 = a1;
  v57 = a5;
  *(a1 + v18) = v19;
  v20 = v17 - 1;
  v58 = (v16 + 48);
  v59 = (v16 + 56);
  v65 = a3 + 56;
LABEL_2:
  v55 = v20;
LABEL_4:
  while (2)
  {
    v22 = *a5;
    v21 = a5[1];
    v24 = a5[2];
    v23 = a5[3];
    v25 = a5[4];
    v68 = v24;
    if (v25)
    {
      v26 = v23;
LABEL_13:
      v30 = (v25 - 1) & v25;
      v31 = v61;
      sub_1DA82A798(*(v22 + 48) + *(v62 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v61);
      v32 = 0;
      v29 = v26;
LABEL_14:
      v33 = v60;
      (*v59)(v31, v32, 1, v60);
      *a5 = v22;
      a5[1] = v21;
      a5[2] = v68;
      a5[3] = v29;
      a5[4] = v30;
      if ((*v58)(v31, 1, v33) == 1)
      {
        sub_1DA8C7718(v31);

        return sub_1DA8E43B4(v56, v54, v55, a3);
      }

      v34 = v63;
      sub_1DA8B9950(v31, v63);
      sub_1DA941764();
      v35 = *v34;
      v36 = v34[1];
      sub_1DA941784();
      if (v36)
      {
        sub_1DA940AB4();
      }

      v37 = v65;
      v38 = v63;
      v39 = v63[3];
      v68 = v63[2];
      v67 = v39;
      sub_1DA940AB4();
      v64 = *(v38 + 48);
      sub_1DA941784();
      v40 = sub_1DA941794();
      v41 = -1 << *(a3 + 32);
      v42 = v40 & ~v41;
      v43 = v42 >> 6;
      v44 = 1 << v42;
      if (((1 << v42) & *(v37 + 8 * (v42 >> 6))) == 0)
      {
LABEL_3:
        result = sub_1DA82A7FC(v63);
        a5 = v57;
        continue;
      }

      v66 = v35;
      v45 = ~v41;
      v46 = *(v62 + 72);
      while (1)
      {
        sub_1DA82A798(*(a3 + 48) + v46 * v42, v13);
        v47 = *(v13 + 1);
        if (v47)
        {
          if (!v36 || (*v13 == v66 ? (v48 = v47 == v36) : (v48 = 0), !v48 && (sub_1DA941684() & 1) == 0))
          {
LABEL_20:
            sub_1DA82A7FC(v13);
            goto LABEL_21;
          }
        }

        else if (v36)
        {
          goto LABEL_20;
        }

        v49 = *(v13 + 2) == v68 && *(v13 + 3) == v67;
        if (!v49 && (sub_1DA941684() & 1) == 0)
        {
          goto LABEL_20;
        }

        v50 = a3;
        v51 = v13[48];
        sub_1DA82A7FC(v13);
        v48 = v64 == v51;
        a3 = v50;
        v37 = v65;
        if (v48)
        {
          result = sub_1DA82A7FC(v63);
          a5 = v57;
          v52 = v56[v43];
          v56[v43] = v52 & ~v44;
          if ((v52 & v44) != 0)
          {
            v20 = v55 - 1;
            if (__OFSUB__(v55, 1))
            {
              goto LABEL_44;
            }

            if (v55 == 1)
            {
              return MEMORY[0x1E69E7CD0];
            }

            goto LABEL_2;
          }

          goto LABEL_4;
        }

LABEL_21:
        v42 = (v42 + 1) & v45;
        v43 = v42 >> 6;
        v44 = 1 << v42;
        if ((*(v37 + 8 * (v42 >> 6)) & (1 << v42)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v27 = (v24 + 64) >> 6;
  if (v27 <= v23 + 1)
  {
    v28 = v23 + 1;
  }

  else
  {
    v28 = (v24 + 64) >> 6;
  }

  v29 = v28 - 1;
  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v26 >= v27)
    {
      v30 = 0;
      v32 = 1;
      v31 = v61;
      goto LABEL_14;
    }

    v25 = *(v21 + 8 * v26);
    ++v23;
    if (v25)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1DA8C6A68(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1DA941264();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1DA8A9D7C(v5, v4);
  v15 = v6;

  v7 = sub_1DA941104();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for NotificationServiceConnection();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_1DA941114();

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
  sub_1DA8C6D84(v9);
  result = sub_1DA941114();
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

void sub_1DA8C6BC0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1DA9411F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1DA941764();

        sub_1DA940AB4();
        v10 = sub_1DA941794();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_1DA8C6D84(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1DA9411F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1DA941104();

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

void sub_1DA8C6F24(int64_t a1)
{
  v21 = type metadata accessor for NotificationSource(0);
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = sub_1DA9411F4();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v12 = (v11 + 1) & v10;
      v13 = *(v3 + 72);
      v22 = v7;
      while (1)
      {
        v14 = v13 * v9;
        sub_1DA82A798(*(v6 + 48) + v13 * v9, v5);
        sub_1DA941764();
        if (*(v5 + 1))
        {
          v23 = v13 * v9;
          sub_1DA941784();
          v14 = v23;
          sub_1DA940AB4();
        }

        else
        {
          sub_1DA941784();
        }

        sub_1DA940AB4();
        sub_1DA941784();
        v15 = sub_1DA941794();
        sub_1DA82A7FC(v5);
        v16 = v15 & v10;
        if (a1 >= v12)
        {
          break;
        }

        if (v16 < v12)
        {
          goto LABEL_14;
        }

LABEL_15:
        v17 = v13 * a1;
        if (v13 * a1 < v14 || *(v6 + 48) + v13 * a1 >= (*(v6 + 48) + v14 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v9;
          if (v17 == v14)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v9;
LABEL_6:
        v9 = (v9 + 1) & v10;
        v7 = v22;
        if (((*(v22 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      if (v16 < v12)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (a1 < v16)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_19:

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v6 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v20;
    ++*(v6 + 36);
  }
}

uint64_t sub_1DA8C7200(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v2 + 64) = sub_1DA849B90(v5);
  *(v2 + 72) = 0;
  sub_1DA93FBA4();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  sub_1DA7B3DC0(a1, a2);
  sub_1DA8C1E58();
  return v2;
}

uint64_t sub_1DA8C72F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA8C7360(uint64_t a1)
{
  result = sub_1DA93FBB4();
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

uint64_t sub_1DA8C7530(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DA8C758C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

void sub_1DA8C7614(uint64_t a1)
{
  sub_1DA8C7680(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DA8C7680(uint64_t a1)
{
  if (!qword_1ECBD66C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6690, qword_1DA95FC60);
    v1 = sub_1DA940DB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBD66C0);
    }
  }
}

uint64_t sub_1DA8C7718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA8C7780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66E0, &qword_1DA95FE70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DA8C77F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1DA8C3374(v2, v3);
}

uint64_t sub_1DA8C7860(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DA7B7470;

  return sub_1DA8C3620(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1DA8C79D8()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

uint64_t sub_1DA8C7A14(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1DA8C36A8(a1, v4);
}

void sub_1DA8C7A90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  v4 = v2;
}

uint64_t DismissalSyncCache.__allocating_init(dateProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  DismissalSyncCache.init(dateProvider:)(a1);
  return v2;
}

void *DismissalSyncCache.init(dateProvider:)(__int128 *a1)
{
  v2 = v1;
  v13 = a1;
  v12 = sub_1DA940FC4();
  v3 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DA7AC344();
  v11[1] = "SettingsProvider";
  v11[2] = v8;
  sub_1DA940824();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v12);
  *(v1 + 56) = sub_1DA941004();
  v9 = MEMORY[0x1E69E7CC0];
  *(v2 + 64) = sub_1DA84A1FC(MEMORY[0x1E69E7CC0]);
  *(v2 + 72) = sub_1DA84A1FC(v9);
  sub_1DA7B9FAC(v13, v2 + 16);
  return v2;
}

void DismissalSyncCache.addMessage(_:completion:)(_OWORD *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v7 = sub_1DA9407F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DA940854();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v30[2] = a1[2];
  v31 = v16;
  v17 = a1[1];
  v30[0] = *a1;
  v30[1] = v17;
  if (*(v31 + 16) || *(*(&v31 + 1) + 16))
  {
    v25[1] = *(v3 + 56);
    v27 = v13;
    v26 = v12;
    v18 = v7;
    v19 = v10;
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v22 = a1[1];
    *(v21 + 40) = *a1;
    *(v21 + 56) = v22;
    v23 = a1[3];
    *(v21 + 72) = a1[2];
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v20;
    *(v21 + 88) = v23;
    aBlock[4] = sub_1DA8CC3D0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_18;
    v24 = _Block_copy(aBlock);
    sub_1DA7B3DC0(a2, a3);

    sub_1DA8CC3E0(v30, v28);
    sub_1DA940824();
    v28[0] = MEMORY[0x1E69E7CC0];
    sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v15, v19, v24);
    _Block_release(v24);
    (*(v8 + 8))(v19, v18);
    (*(v26 + 8))(v15, v27);
  }

  else if (a2)
  {
    a2(v13);
  }
}

void sub_1DA8C8130(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, __int128 *a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = a4[1];
    v11 = *a4;
    v12 = v7;
    v8 = a4[3];
    v13 = a4[2];
    v14 = v8;
    sub_1DA8C81F0(&v11);
    v9 = a4[1];
    v11 = *a4;
    v12 = v9;
    v10 = a4[3];
    v13 = a4[2];
    v14 = v10;
    sub_1DA8C95EC(&v11);
  }

  if (a1)
  {
    a1(Strong);
  }
}

uint64_t sub_1DA8C81F0(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1DA93FAF4();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v39 - v8;
  v9 = sub_1DA9408C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[2];
  v14 = a1[3];
  v15 = v2[7];
  *v12 = v15;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v16 = v15;
  LOBYTE(v15) = sub_1DA9408F4();
  result = (*(v10 + 8))(v12, v9);
  if (v15)
  {
    v18 = sub_1DA940A84();
    v20 = v19;
    swift_beginAccess();
    v21 = v2[8];
    if (*(v21 + 16))
    {
      v22 = sub_1DA85A4B4(v18, v20);
      if (v23)
      {
        v24 = *(*(v21 + 56) + 8 * v22);
        swift_endAccess();

LABEL_9:

        return v24;
      }
    }

    swift_endAccess();
    if (v14)
    {
      v25 = sub_1DA940A84();
      v14 = v26;
      swift_beginAccess();
      v27 = v2[9];
      v28 = *(v27 + 16);

      if (v28)
      {
        v29 = sub_1DA85A4B4(v25, v14);
        if (v30)
        {
          v24 = *(*(v27 + 56) + 8 * v29);
          swift_endAccess();

          swift_bridgeObjectRelease_n();
          goto LABEL_9;
        }
      }

      v39 = v25;
      swift_endAccess();
    }

    else
    {
      v39 = v13;
    }

    sub_1DA7BABAC((v2 + 2), v44);
    type metadata accessor for DismissalSyncCacheSection(0);
    v24 = swift_allocObject();
    v31 = MEMORY[0x1E69E7CC0];
    *(v24 + 56) = sub_1DA84A300(MEMORY[0x1E69E7CC0]);
    *(v24 + 64) = sub_1DA84A4E8(v31);
    sub_1DA7BABAC(v44, v24 + 16);
    v32 = v45;
    v33 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    (*(v33 + 8))(v32, v33);
    v34 = v40;
    sub_1DA93FA34();
    v36 = v41;
    v35 = v42;
    (*(v41 + 8))(v7, v42);
    (*(v36 + 32))(v24 + OBJC_IVAR____TtC21UserNotificationsCoreP33_899DEA740530C892F681B05D190FCFD825DismissalSyncCacheSection_nextAutoRetireDate, v34, v35);
    __swift_destroy_boxed_opaque_existential_1(v44);
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v2[8];
    v2[8] = 0x8000000000000000;
    sub_1DA90C250(v24, v18, v20, isUniquelyReferenced_nonNull_native);

    v2[8] = v43;
    swift_endAccess();
    if (v14)
    {
      swift_beginAccess();
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v2[9];
      v2[9] = 0x8000000000000000;
      sub_1DA90C250(v24, v39, v14, v38);

      v2[9] = v43;
      swift_endAccess();
    }

    else
    {
    }

    return v24;
  }

  __break(1u);
  return result;
}

void sub_1DA8C86EC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DA940A84();
  v8 = v7;
  swift_beginAccess();
  if (!*(*(a2 + 64) + 16) || (sub_1DA85A4B4(v6, v8), (v9 & 1) == 0))
  {
    swift_endAccess();

    if (!a1[3])
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  swift_endAccess();

  sub_1DA8CA7D8(a1, &v16);

  if (v17)
  {
    if (!a1[3])
    {
      goto LABEL_12;
    }

LABEL_7:
    v10 = sub_1DA940A84();
    v12 = v11;
    swift_beginAccess();
    if (*(*(a2 + 72) + 16) && (sub_1DA85A4B4(v10, v12), (v13 & 1) != 0))
    {
      swift_endAccess();

      sub_1DA8CA7D8(a1, &v16);

      if ((v17 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      swift_endAccess();
    }

LABEL_12:
    v15 = 0;
    v14 = 1;
    goto LABEL_13;
  }

LABEL_10:
  v14 = 0;
  v15 = v16;
LABEL_13:
  *a3 = v15;
  *(a3 + 8) = v14;
}

double DismissalSyncCache.removeBulletin(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DA9407F4();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DA940854();
  v7 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DismissalSyncBulletin(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v18 = *(v2 + 56);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_1DA8CC7A8(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DismissalSyncBulletin);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  sub_1DA8CC810(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for DismissalSyncBulletin);
  aBlock[4] = sub_1DA8CC458;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_10_0;
  v16 = _Block_copy(aBlock);

  sub_1DA940824();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v9, v6, v16);
  _Block_release(v16);
  (*(v20 + 8))(v6, v4);
  (*(v7 + 8))(v9, v19);

  return result;
}

double sub_1DA8C8C3C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1DA940A84();
    v8 = v7;
    swift_beginAccess();
    if (*(*(v5 + 64) + 16) && (sub_1DA85A4B4(v6, v8), (v9 & 1) != 0))
    {
      swift_endAccess();

      sub_1DA8CAEF8(a2);

      if (!a2[3])
      {
        goto LABEL_11;
      }
    }

    else
    {
      swift_endAccess();

      if (!a2[3])
      {
LABEL_11:

        return result;
      }
    }

    v10 = sub_1DA940A84();
    v12 = v11;
    swift_beginAccess();
    if (*(*(v5 + 72) + 16) && (sub_1DA85A4B4(v10, v12), (v13 & 1) != 0))
    {
      swift_endAccess();

      sub_1DA8CAEF8(a2);
    }

    else
    {
      swift_endAccess();
    }

    goto LABEL_11;
  }

  return result;
}