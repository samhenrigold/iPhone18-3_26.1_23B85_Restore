uint64_t RecentsItemDataSource.$hasFinishedFirstLoad.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761838, &qword_1D33E32B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761830, &qword_1D33E32B0);
  sub_1D33DE554();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*RecentsItemDataSource.$hasFinishedFirstLoad.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761838, &qword_1D33E32B8);
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

  v10 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoad;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761830, &qword_1D33E32B0);
  sub_1D33DE544();
  swift_endAccess();
  return sub_1D338ACD0;
}

void sub_1D338ACD0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1D33DE554();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1D33DE554();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_1D338AE38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
  sub_1D33DDED4();

  *a2 = *(v3 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems);
}

uint64_t sub_1D338AF18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems;

  v5 = sub_1D332A6B4(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;

    return sub_1D33DE4C4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
    sub_1D33DDEC4();
  }
}

uint64_t sub_1D338B064(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems) = a2;

  return sub_1D33DE4C4();
}

BOOL RecentsItemDataSource.isActive.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loading;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loading));
  v2 = *(v1 + 4) == 1;
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t RecentsItemDataSource.recentCallsCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  if (!v1)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1D33927E0(&qword_1EDEBFAD0, type metadata accessor for RecentsControllerBox, &unk_1D33E1CF0);
  sub_1D33DDED4();

  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 80);

  os_unfair_lock_unlock((v1 + 72));
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);

  return v3;
}

uint64_t RecentsItemDataSource.recentFaceTimeCallsCount.getter()
{
  if (*(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration))
  {
    return sub_1D334D6DC();
  }

  else
  {
    return 0;
  }
}

void sub_1D338B21C(char *a1@<X0>, uint64_t *a3@<X8>)
{
  v27 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7617E0, &unk_1D33E3210);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v22 - v5;
  v7 = sub_1D33DECB4();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7619A8, &qword_1D33E3888);
  v26 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7619B0, &qword_1D33E3890);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v22 - v15;
  v17 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v29 = *(Strong + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_recentsItemsSubject);

    if (v17)
    {
      sub_1D33DECA4();
      v23 = [objc_opt_self() mainRunLoop];
      v28 = v23;
      v20 = sub_1D33DEC94();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
      v22[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761430, &qword_1D33E2BF0);
      sub_1D331DA18(0, &unk_1EDEBEE50, 0x1E695DFD0);
      sub_1D334CB54(&unk_1EDEBEF90, &unk_1EC761430, &qword_1D33E2BF0, MEMORY[0x1E695BF88]);
      sub_1D3357A1C(&qword_1EDEBEE60, &unk_1EDEBEE50, 0x1E695DFD0, MEMORY[0x1E696A010]);
      sub_1D33DE614();
      sub_1D331E880(v6, &unk_1EC7617E0, &unk_1D33E3210);

      (*(v24 + 8))(v9, v25);

      sub_1D334CB54(&qword_1EDEBF008, &qword_1EC7619A8, &qword_1D33E3888, MEMORY[0x1E695BE50]);
      v21 = sub_1D33DE5A4();

      (*(v26 + 8))(v12, v10);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761430, &qword_1D33E2BF0);
      sub_1D334CB54(&unk_1EDEBEF90, &unk_1EC761430, &qword_1D33E2BF0, MEMORY[0x1E695BF88]);
      v21 = sub_1D33DE5A4();
    }
  }

  else
  {
    sub_1D33DE524();
    sub_1D334CB54(&qword_1EC7619B8, &qword_1EC7619B0, &qword_1D33E3890, MEMORY[0x1E695C008]);
    v21 = sub_1D33DE5A4();
    (*(v14 + 8))(v16, v13);
  }

  *v27 = v21;
}

void sub_1D338B73C(void *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath();
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
    sub_1D33DDED4();

    v5 = *&v4[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems];
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v5;
}

void *RecentsItemDataSource.recentsController.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration))
  {
    return 0;
  }

  type metadata accessor for RecentCallProvider();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
  v3 = v2;
  return v2;
}

uint64_t RecentsItemDataSource.isRemindersDatasource.getter()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_isRemindersDatasource;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RecentsItemDataSource.isRemindersDatasource.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_isRemindersDatasource;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RecentsItemDataSource.messageQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
  if (v3)
  {
    v4 = (v3 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);
    os_unfair_lock_lock((v3 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery));
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360) + 28);
    v6 = sub_1D33DE2F4();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a1, v4 + v5, v6);
    os_unfair_lock_unlock(v4);
    v7 = *(v13 + 56);
    v8 = a1;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = sub_1D33DE2F4();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a1;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t sub_1D338BAB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
  if (v3)
  {
    v4 = (v3 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);
    os_unfair_lock_lock((v3 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery));
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360) + 28);
    v6 = sub_1D33DE2F4();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a2, v4 + v5, v6);
    os_unfair_lock_unlock(v4);
    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = sub_1D33DE2F4();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t sub_1D338BBF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B8, &qword_1D33E3368);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D331E818(a1, &v6 - v3, &qword_1EC7618B8, &qword_1D33E3368);
  return RecentsItemDataSource.messageQuery.setter(v4);
}

void (*RecentsItemDataSource.messageQuery.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1D33DE2F4();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v5[4] = v10;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B8, &qword_1D33E3368) - 8) + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v11);
    v5[6] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[7] = v12;
  v14 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
  v5[8] = v14;
  if (v14)
  {
    v15 = (v14 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);
    os_unfair_lock_lock((v14 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery));
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360);
    (*(v8 + 16))(v13, v15 + *(v16 + 28), v6);
    os_unfair_lock_unlock(v15);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  (*(v8 + 56))(v13, v17, 1, v6);
  return sub_1D338BEC0;
}

void sub_1D338BEC0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = *a1 + 7;
  v3 = *v4;
  v5 = v2[6];
  if (a2)
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[3];
    v9 = *v4;
    sub_1D331E818(v3, v6, &qword_1EC7618B8, &qword_1D33E3368);
    RecentsItemDataSource.messageQuery.setter(v6);
    v10 = v9;
    v11 = v9;
  }

  else
  {
    v12 = v2[1];
    v13 = v2[2];
    sub_1D331E818(v3, v2[6], &qword_1EC7618B8, &qword_1D33E3368);
    if ((*(v13 + 48))(v5, 1, v12) == 1)
    {
      sub_1D331E880(*v4, &qword_1EC7618B8, &qword_1D33E3368);
      v4 = v2 + 6;
    }

    else
    {
      v14 = v2[8];
      (*(v2[2] + 32))(v2[4], v2[6], v2[1]);
      if (v14)
      {
        v15 = v2[8];
        v16 = v2[3];
        v23 = v2[4];
        v17 = v2[1];
        v18 = v2[2];
        v19 = *(v18 + 16);
        v19(v16);
        v20 = (v15 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);
        os_unfair_lock_lock((v15 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery));
        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360) + 28);
        v22 = *(v18 + 8);
        v22(v20 + v21, v17);
        (v19)(v20 + v21, v16, v17);
        os_unfair_lock_unlock(v20);
        sub_1D33220A8();
        v22(v16, v17);
        v22(v23, v17);
      }

      else
      {
        (*(v2[2] + 8))(v2[4], v2[1]);
      }
    }

    v10 = *v4;
    v5 = v2[6];
    v11 = v2[7];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[3];
  }

  sub_1D331E880(v10, &qword_1EC7618B8, &qword_1D33E3368);
  free(v11);
  free(v5);
  free(v6);
  free(v7);
  free(v8);

  free(v2);
}

id RecentsItemDataSource.preFetchingPredicate.getter()
{
  if (*(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration) && (type metadata accessor for RecentCallProvider(), (v1 = swift_dynamicCastClass()) != 0))
  {
    v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 preFetchingPredicate];

  return v3;
}

void sub_1D338C1A4(void *a1@<X0>, void *a2@<X8>)
{
  if (*(*a1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration) && (type metadata accessor for RecentCallProvider(), (v3 = swift_dynamicCastClass()) != 0))
  {
    v4 = *(v3 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 preFetchingPredicate];

  *a2 = v5;
}

uint64_t *(*RecentsItemDataSource.preFetchingPredicate.modify(void *a1))(uint64_t *result, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  a1[1] = v3;
  if (v3 && (type metadata accessor for RecentCallProvider(), (v4 = swift_dynamicCastClass()) != 0))
  {
    v5 = *(v4 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 preFetchingPredicate];

  *a1 = v6;
  return sub_1D338C2F8;
}

uint64_t *sub_1D338C2F8(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if (v2)
    {
      if (result[1])
      {
        v6 = *result;
        type metadata accessor for RecentCallProvider();
        v3 = swift_dynamicCastClass();
        if (v3)
        {
          [*(v3 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController) setPreFetchingPredicate_];
        }
      }
    }
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    if (result[1])
    {
      v7 = *result;
      type metadata accessor for RecentCallProvider();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = *(v4 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
        [v5 setPreFetchingPredicate_];
      }
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

uint64_t sub_1D338C40C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
  sub_1D33DDEC4();
}

void *RecentsItemDataSource.recentsReminderActionProvider.getter()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource____lazy_storage___recentsReminderActionProvider;
  if (*(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource____lazy_storage___recentsReminderActionProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource____lazy_storage___recentsReminderActionProvider);
  }

  else
  {
    v2 = sub_1D338C558(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_1D338C558(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration) && (type metadata accessor for RecentCallProvider(), (v1 = swift_dynamicCastClass()) != 0))
  {
    v2 = [*(v1 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController) callProviderManager];
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for RecentsReminderActionProvider();
  v3 = swift_allocObject();
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = 0;
  swift_unknownObjectWeakInit();
  v3[2] = v2;
  swift_beginAccess();
  v3[6] = &protocol witness table for RecentsItemDataSource;
  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t (*RecentsItemDataSource.recentsReminderActionProvider.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = RecentsItemDataSource.recentsReminderActionProvider.getter();
  return sub_1D338C68C;
}

uint64_t sub_1D338C6FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a2;
  if (*(v4 + *a2))
  {
    if (a1)
    {
      sub_1D33DE4A4();
      sub_1D33927E0(&unk_1EC760FF0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);

      v8 = sub_1D33DE774();

      if (v8)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
    sub_1D33DDEC4();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v5 + v7) = a1;
}

uint64_t sub_1D338C8A4(char a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue));
  sub_1D33DE4F4();
  os_unfair_lock_unlock(v4);
  if (v15[0] == 1)
  {
    result = sub_1D3329514();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
    result = v6 + 32;
    v7 = -*(v6 + 16);
    v8 = -1;
    while (v7 + v8 != -1)
    {
      if (++v8 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }

      v9 = result + 40;
      sub_1D3325720(result, v15);
      v10 = v16;
      v11 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v12 = (*(v11 + 40))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      result = v9;
      if (v12)
      {
        goto LABEL_10;
      }
    }

    swift_getKeyPath();
    *v15 = v2;
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
    sub_1D33DDED4();

    if (*(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded) != 1)
    {
      return result;
    }
  }

LABEL_10:
  v13 = v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_updateTask;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_updateTask));
  if (*(v13 + 8))
  {
    sub_1D33DE6C4();
  }

  *(v13 + 8) = 0;

  os_unfair_lock_unlock(v13);
  v14 = sub_1D338DE4C(a1 & 1);
  os_unfair_lock_lock(v13);

  *(v13 + 8) = v14;

  os_unfair_lock_unlock(v13);
  sub_1D33DEBC4();
}

char *RecentsItemDataSource.clone(with:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B8, &qword_1D33E3368);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15[-v6 - 8];
  v8 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
  v9 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48);
  v19 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
  v20 = v9;
  v10 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
  v18[0] = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  v18[1] = v10;
  v11 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48);
  v16[2] = v19;
  v16[3] = v11;
  v21 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 64);
  v17 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 64);
  v16[0] = v18[0];
  v16[1] = v8;
  sub_1D331E818(a1, &v15[-v6 - 8], &qword_1EC7618B8, &qword_1D33E3368);
  v12 = objc_allocWithZone(ObjectType);
  sub_1D3322888(v18, v15);
  return RecentsItemDataSource.init(configuration:messageQuery:)(v16, v7);
}

id RecentsItemDataSource.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48];
  if (v2 && (*(v2 + 52) & 1) == 0)
  {
    v3 = *(v2 + 48);
    v4 = ObjectType;

    notify_cancel(v3);
    *(v2 + 48) = 0;
    *(v2 + 52) = 1;

    ObjectType = v4;
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1D338CF6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v34 = &v28 - v2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761950, &qword_1D33E3800);
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761958, &qword_1D33E3808);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761960, &qword_1D33E3810);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v28 - v10;
  v35 = v0;
  v11 = v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration;
  v12 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D33DEFA4();
    v15 = v12 + 32;
    do
    {
      sub_1D3325720(v15, v36);
      v16 = v37;
      v17 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      (*(v17 + 24))(v16, v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      sub_1D33DEF84();
      sub_1D33DEFB4();
      sub_1D33DEFC4();
      sub_1D33DEF94();
      v15 += 40;
      --v13;
    }

    while (v13);
    v14 = v39;
  }

  v36[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761968, &qword_1D33E3818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761970, &qword_1D33E3820);
  sub_1D334CB54(&qword_1EC761978, &qword_1EC761968, &qword_1D33E3818, MEMORY[0x1E695BED8]);
  sub_1D334CB54(&qword_1EC761980, &qword_1EC761970, &qword_1D33E3820, MEMORY[0x1E69E6328]);
  sub_1D33DE474();
  sub_1D334CB54(&qword_1EC761988, &qword_1EC761950, &qword_1D33E3800, MEMORY[0x1E695BE80]);
  v18 = v28;
  sub_1D33DE5E4();
  (*(v3 + 8))(v5, v18);
  v19 = *(v11 + 56);
  v36[0] = v19;
  v20 = sub_1D33DEB34();
  v21 = v34;
  (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  sub_1D334CB54(&qword_1EC761990, &qword_1EC761958, &qword_1D33E3808, MEMORY[0x1E695BDE0]);
  sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v22 = v19;
  v24 = v30;
  v23 = v31;
  sub_1D33DE604();
  sub_1D331E880(v21, &qword_1EC760F20, &qword_1D33E2290);

  (*(v29 + 8))(v8, v24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D334CB54(&unk_1EC761998, &qword_1EC761960, &qword_1D33E3810, MEMORY[0x1E695BE98]);
  v25 = v33;
  v26 = sub_1D33DE644();

  (*(v32 + 8))(v23, v25);
  return sub_1D338C6FC(v26, &OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__datasourceCancellable, &unk_1D33E3828, sub_1D3393EB8);
}

uint64_t sub_1D338D574()
{
  v39 = v0;
  if ((sub_1D33DE9F4() & 1) == 0)
  {

    v1 = sub_1D33DE444();
    v2 = sub_1D33DEAF4();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v37 = v4;
      *v3 = 136315138;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v36 = v4;
        v6 = *(Strong + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
        v7 = Strong;

        v8 = *(v6 + 16);
        if (v8)
        {
          v34 = v2;
          v35 = v1;
          v38 = MEMORY[0x1E69E7CC0];
          sub_1D334A9E0(0, v8, 0);
          v9 = v38;
          v10 = v6 + 32;
          do
          {
            sub_1D3325720(v10, (v0 + 2));
            v0[13] = 0;
            v0[14] = 0xE000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761090, &unk_1D33E2500);
            sub_1D33DF004();
            MEMORY[0x1D38B6ED0](46, 0xE100000000000000);
            v11 = v0[5];
            v12 = v0[6];
            __swift_project_boxed_opaque_existential_1(v0 + 2, v11);
            v13 = (*(v12 + 40))(v11, v12);
            v14 = (v13 & 1) == 0;
            if (v13)
            {
              v15 = 1702195828;
            }

            else
            {
              v15 = 0x65736C6166;
            }

            if (v14)
            {
              v16 = 0xE500000000000000;
            }

            else
            {
              v16 = 0xE400000000000000;
            }

            MEMORY[0x1D38B6ED0](v15, v16);

            v17 = v0[13];
            v18 = v0[14];
            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
            v38 = v9;
            v20 = *(v9 + 16);
            v19 = *(v9 + 24);
            if (v20 >= v19 >> 1)
            {
              sub_1D334A9E0((v19 > 1), v20 + 1, 1);
              v9 = v38;
            }

            *(v9 + 16) = v20 + 1;
            v21 = v9 + 16 * v20;
            *(v21 + 32) = v17;
            *(v21 + 40) = v18;
            v10 += 40;
            --v8;
          }

          while (v8);

          v1 = v35;
          v2 = v34;
        }

        else
        {

          v9 = MEMORY[0x1E69E7CC0];
        }

        v0[18] = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
        sub_1D334CB54(&qword_1EDEBEF28, &qword_1EC7616B0, &qword_1D33E3DD0, MEMORY[0x1E69E6310]);
        v24 = sub_1D33DE764();
        v26 = v25;

        v0[15] = v24;
        v0[16] = v26;
        v23 = sub_1D33DE804();
        v22 = v27;
        v4 = v36;
      }

      else
      {
        v22 = 0xE300000000000000;
        v23 = 7104878;
      }

      v28 = sub_1D3328B48(v23, v22, &v37);

      *(v3 + 4) = v28;
      _os_log_impl(&dword_1D331A000, v1, v2, "datasources didn't load within tolerance: %s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x1D38B81C0](v4, -1, -1);
      MEMORY[0x1D38B81C0](v3, -1, -1);
    }

    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = v29;
      if (*(v29 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded) == 1)
      {
        *(v29 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded) = 1;
        sub_1D3389A94(1);
      }

      else
      {
        swift_getKeyPath();
        v31 = swift_task_alloc();
        *(v31 + 16) = v30;
        *(v31 + 24) = 1;
        v0[17] = v30;
        sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
        sub_1D33DDEC4();
      }
    }
  }

  v32 = v0[1];

  return v32();
}

Swift::Void __swiftcall RecentsItemDataSource.suspend()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration;
  v3 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48);
  if (v3)
  {
    if ((*(v3 + 52) & 1) == 0)
    {
      v4 = *(v3 + 48);

      notify_cancel(v4);
      *(v3 + 48) = 0;
      *(v3 + 52) = 1;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33927E0(&unk_1EDEBF810, type metadata accessor for RecentsLinkController, &protocol conformance descriptor for RecentsLinkController);

    sub_1D33DDEC4();
  }

  [*(v2 + 24) removeDelegate_];
}

uint64_t sub_1D338DBC8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
  sub_1D33DDED4();
}

uint64_t sub_1D338DC6C@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
  sub_1D33DDED4();

  *a4 = *(v6 + *a3);
}

void sub_1D338DD34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v4 = sub_1D33DE464();
    __swift_project_value_buffer(v4, qword_1EDEC1480);
    v5 = sub_1D33DE444();
    v6 = sub_1D33DEAF4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D331A000, v5, v6, "One of the datasource updated to loaded. try to update", v7, 2u);
      MEMORY[0x1D38B81C0](v7, -1, -1);
    }

    sub_1D338C8A4(0);
  }
}

uint64_t sub_1D338DE4C(char a1)
{
  v2 = sub_1D33DE664();
  MEMORY[0x1EEE9AC00](v2);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  aBlock[4] = sub_1D3393F24;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3329468;
  aBlock[3] = &block_descriptor_160;
  _Block_copy(aBlock);
  sub_1D33927E0(&unk_1EDEBEF50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
  sub_1D334CB54(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0, MEMORY[0x1E69E6328]);
  sub_1D33DED64();
  sub_1D33DE6D4();
  swift_allocObject();
  v5 = sub_1D33DE6B4();

  return v5;
}

Swift::Void __swiftcall RecentsItemDataSource.reload()()
{
  if (*(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration))
  {

    sub_1D334DBDC(v1);
  }

  else
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v2 = sub_1D33DE464();
    __swift_project_value_buffer(v2, qword_1EDEC1480);
    oslog = sub_1D33DE444();
    v3 = sub_1D33DEAD4();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D331A000, oslog, v3, "Failed to reload. No recents controller instance found.", v4, 2u);
      MEMORY[0x1D38B81C0](v4, -1, -1);
    }
  }
}

Swift::Void __swiftcall RecentsItemDataSource.removeAllRecents()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  if (v1)
  {
    v2 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 96);
    swift_unknownObjectRetain();
    v4(ObjectType, v2);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v5 = sub_1D33DE464();
    __swift_project_value_buffer(v5, qword_1EDEC1480);
    oslog = sub_1D33DE444();
    v6 = sub_1D33DEAD4();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D331A000, oslog, v6, "Failed to remove recents. No recents controller instance found.", v7, 2u);
      MEMORY[0x1D38B81C0](v7, -1, -1);
    }
  }
}

Swift::Void __swiftcall RecentsItemDataSource.delete(items:)(Swift::OpaquePointer items)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = v2 + 32;
    do
    {
      sub_1D3325720(v5, v8);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 48))(items._rawValue, v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      v5 += 40;
      --v3;
    }

    while (v3);
  }
}

Swift::Void __swiftcall RecentsItemDataSource.removeMessageFromTrash(items:)(Swift::OpaquePointer items)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = v2 + 32;
    do
    {
      sub_1D3325720(v5, v8);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 64))(items._rawValue, v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      v5 += 40;
      --v3;
    }

    while (v3);
  }
}

uint64_t RecentsItemDataSource.redial(item:)(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  if (v2)
  {
    v3 = result;
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 64);
    swift_unknownObjectRetain();
    v6(v3, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RecentsItemDataSource.contactsWithMetadata(for:)(uint64_t a1)
{
  if (*(a1 + 32) - 4 > 2)
  {
    goto LABEL_27;
  }

  v3 = *a1;
  v4 = [v3 validRemoteParticipantHandles];
  if (!v4 || (v5 = v4, sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578), sub_1D3357A1C(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578, MEMORY[0x1E69E81B8]), v6 = sub_1D33DEA54(), v5, v7 = sub_1D335DC7C(v6), , !v7))
  {
LABEL_26:

LABEL_27:
    v21 = *(a1 + 40);

    return v21;
  }

  v8 = [v3 remoteParticipantHandles];
  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = v8;
  v10 = sub_1D33DEA54();

  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = sub_1D33DEE14();
  }

  else
  {
    v11 = *(v10 + 16);
  }

  if (v11 != 1)
  {
    goto LABEL_24;
  }

  v12 = *(a1 + 40);
  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_11;
    }

LABEL_25:

    goto LABEL_26;
  }

  result = sub_1D33DEE14();
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_11:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1D38B75D0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_37;
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;
  v16 = [v14 hasBeenPersisted];

  if (v16)
  {
LABEL_24:
    v20 = v7;
    v7 = v3;
    v3 = v20;
    goto LABEL_25;
  }

  if (v12 >> 62)
  {
    result = sub_1D33DEE14();
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
    goto LABEL_25;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1D38B75D0](0, v12);
    goto LABEL_23;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v12 + 32);
LABEL_23:
    v18 = v17;
    v19 = [v17 isCoreRecentsAccepted];

    if ((v19 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D33E1DE0;
      v22 = [objc_opt_self() contactForRecentCall:v3 metadataCache:*(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 64)];
      if (v22)
      {
        *(v21 + 32) = v22;
      }

      else
      {
        v23 = sub_1D336A260();
        v24 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];

        *(v21 + 32) = v24;
      }

      return v21;
    }

    goto LABEL_24;
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_1D338E834(uint64_t a1, int a2)
{
  LODWORD(v58) = a2;
  v2 = sub_1D33DE3F4();
  v53 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D33DE664();
  v63 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D33DE6A4();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D33DE3B4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - v12;
  v14 = sub_1D33DE3E4();
  v57 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v54 = v5;
    v50 = v4;
    v19 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_loadingFallbackTask;
    if (*(Strong + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_loadingFallbackTask))
    {

      sub_1D33DE9D4();
    }

    v64 = v9;
    v55 = v8;
    v51 = v2;
    *&v18[v19] = 0;

    if (qword_1EDEBF088 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v14, qword_1EDEC1458);
    v21 = v57;
    v22 = *(v57 + 16);
    v52 = v20;
    v22(v16);
    sub_1D33DE3A4();
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_1D33DE3D4();
    v25 = sub_1D33DEC04();
    v26 = sub_1D33DE394();
    _os_signpost_emit_with_name_impl(&dword_1D331A000, v24, v25, v26, "Process data sources", "", v23, 2u);
    sub_1D338F140(v58 & 1);
    v27 = sub_1D33DEBF4();
    v28 = sub_1D33DE394();
    _os_signpost_emit_with_name_impl(&dword_1D331A000, v24, v27, v28, "Process data sources", "", v23, 2u);

    MEMORY[0x1D38B81C0](v23, -1, -1);
    v29 = *(v64 + 8);
    v30 = v55;
    v64 += 8;
    v58 = v29;
    v29(v13, v55);
    (*(v21 + 8))(v16, v14);
    sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
    v31 = sub_1D33DEB94();
    v32 = swift_allocObject();
    *(v32 + 16) = v18;
    aBlock[4] = sub_1D3393F30;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D3329468;
    aBlock[3] = &block_descriptor_166_0;
    v33 = _Block_copy(aBlock);
    v34 = v18;

    v35 = v59;
    sub_1D33DE674();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D33927E0(&unk_1EDEBEF50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
    sub_1D334CB54(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0, MEMORY[0x1E69E6328]);
    v36 = v61;
    v37 = v54;
    sub_1D33DED64();
    MEMORY[0x1D38B7240](0, v35, v36, v33);
    _Block_release(v33);

    (*(v63 + 8))(v36, v37);
    (*(v60 + 8))(v35, v62);
    swift_getKeyPath();
    aBlock[0] = v34;
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
    sub_1D33DDED4();

    if (*&v34[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__signState])
    {

      v38 = sub_1D33DE3D4();
      v39 = v56;
      sub_1D33DE404();
      v40 = sub_1D33DEBF4();
      if (sub_1D33DECC4())
      {

        v41 = v50;
        sub_1D33DE434();

        v42 = v53;
        v43 = v51;
        if ((*(v53 + 88))(v41, v51) == *MEMORY[0x1E69E93E8])
        {
          v44 = "[Error] Interval already ended";
        }

        else
        {
          (*(v42 + 8))(v41, v43);
          v44 = "";
        }

        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = v56;
        v47 = sub_1D33DE394();
        v48 = v44;
        v39 = v46;
        _os_signpost_emit_with_name_impl(&dword_1D331A000, v38, v40, v47, "RecentsItemDataSource loading", v48, v45, 2u);
        MEMORY[0x1D38B81C0](v45, -1, -1);
        v30 = v55;
      }

      v58(v39, v30);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v50 - 2) = v34;
      *(&v50 - 1) = 0;
      aBlock[0] = v34;
      sub_1D33DDEC4();
    }

    else
    {
    }
  }
}

uint64_t sub_1D338F140(int a1)
{
  v2 = v1;
  v126 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v128 = &v121 - v4;
  v132 = sub_1D33DE3B4();
  v131 = *(v132 - 8);
  v5 = MEMORY[0x1EEE9AC00](v132);
  v133 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v125 = &v121 - v7;
  v130 = sub_1D33DE3E4();
  v124 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v123 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReminderStatus(0);
  v145 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v144 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1D33DDDB4();
  v11 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v13 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1D33DDD34();
  v137 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v15 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RecentsItem(0);
  v143 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v129 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v139 = &v121 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v121 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v148 = &v121 - v24;
  if (qword_1EDEBFD70 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v25 = sub_1D33DE464();
    __swift_project_value_buffer(v25, qword_1EDEC1480);
    v26 = sub_1D33DE444();
    v27 = sub_1D33DEAF4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v15;
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D331A000, v26, v27, "Updating: Processing items from datasources", v29, 2u);
      v30 = v29;
      v15 = v28;
      MEMORY[0x1D38B81C0](v30, -1, -1);
    }

    v31 = swift_allocObject();
    v32 = MEMORY[0x1E69E7CC0];
    v135 = v31;
    *(v31 + 16) = MEMORY[0x1E69E7CC0];
    v134 = (v31 + 16);
    v142 = &v2[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration];
    v33 = *&v2[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16];
    if (v33)
    {
      swift_getKeyPath();
      v150 = v33;
      sub_1D33927E0(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
      sub_1D33DDED4();

      v34 = v33 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
      os_unfair_lock_lock((v33 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
      v32 = *(v34 + 8);

      os_unfair_lock_unlock(v34);
    }

    v35 = sub_1D33DE444();
    v36 = sub_1D33DEAF4();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v142;
    v138 = v2;
    if (v37)
    {
      v147 = 4271950;
      v39 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v150 = v141;
      *v39 = 134218242;
      *(v39 + 4) = v32[2];

      *(v39 + 12) = 2082;
      if (v32[2])
      {
        v40 = v36;
        sub_1D332CE34(v32 + ((*(v143 + 80) + 32) & ~*(v143 + 80)), v22, type metadata accessor for RecentsItem);
        v41 = *(v22 + 1);
        v42 = v22[32];
        v43 = 1;
        v44 = v148;
        if (((1 << v42) & 0x1BB) == 0)
        {
          if (v42 == 2)
          {
            v45 = *v22;
            v136 = *(v22 + 3);
            v127 = *(v22 + 2);
            v122 = v41;
            v46 = v45;
            sub_1D33DE0B4();
            v44 = v148;
            sub_1D332B1DC(v45, v122, v127, v136, 2u);
          }

          else
          {
            v48 = v41;
            sub_1D33DE0B4();

            v44 = v148;
          }

          v43 = 0;
        }

        v49 = v146;
        (*(v11 + 56))(v44, v43, 1, v146);
        sub_1D3337A54(v22, type metadata accessor for RecentsItem);
        if ((*(v11 + 48))(v44, 1, v49) == 1)
        {
          sub_1D331E880(v44, &qword_1EC7612B0, qword_1D33E2830);
          v47 = 0xE300000000000000;
        }

        else
        {
          v50 = v44;
          v147 = sub_1D33DDD54();
          v47 = v51;
          (*(v11 + 8))(v50, v49);
        }

        v38 = v142;
      }

      else
      {
        v40 = v36;
        v47 = 0xE300000000000000;
      }

      v52 = sub_1D3328B48(v147, v47, &v150);

      *(v39 + 14) = v52;
      _os_log_impl(&dword_1D331A000, v35, v40, "Updating: Processing items from messageInboxController |(%ld)| and first uuid: %{public}s", v39, 0x16u);
      v53 = v141;
      __swift_destroy_boxed_opaque_existential_1Tm(v141);
      MEMORY[0x1D38B81C0](v53, -1, -1);
      MEMORY[0x1D38B81C0](v39, -1, -1);
    }

    else
    {
    }

    v141 = v32;
    v147 = v13;
    v148 = v11;
    v54 = v38[6];
    v55 = MEMORY[0x1E69E7CC0];
    if (v54)
    {
      swift_getKeyPath();
      v150 = v54;
      sub_1D33927E0(&unk_1EDEBF810, type metadata accessor for RecentsLinkController, &protocol conformance descriptor for RecentsLinkController);

      sub_1D33DDED4();

      v55 = *(v54 + 80);
    }

    v56 = v133;
    v57 = v135;
    v58 = v134;
    v59 = *v38;
    if (*v38 && (swift_getKeyPath(), v150 = v59, sub_1D33927E0(&qword_1EDEBFAD0, type metadata accessor for RecentsControllerBox, &unk_1D33E1CF0), sub_1D33DDED4(), , os_unfair_lock_lock((v59 + 72)), v60 = *(v59 + 80), , os_unfair_lock_unlock((v59 + 72)), v60))
    {
      v61 = sub_1D333048C(v60);
      v62 = sub_1D333048C(v55);
      sub_1D33DDD04();
      v63 = v15;
      v64 = sub_1D332D624(v61, v62, v15, 0);

      v65 = *(v137 + 8);
      v66 = v140;
      v65(v63, v140);
      v67 = sub_1D3330690(v64);

      v68 = MEMORY[0x1E69E7CC0];
      v69 = v67 ? v67 : MEMORY[0x1E69E7CC0];
      v70 = sub_1D333048C(v69);
      v71 = sub_1D333048C(v141);
      sub_1D33DDD04();
      v72 = sub_1D3330F7C(v70, v71, v63, 1);

      v73 = v63;
      v38 = v142;
      v65(v73, v66);
      v74 = sub_1D3330690(v72);
      v58 = v134;
      v57 = v135;
      v56 = v133;

      v75 = (v74 ? v74 : v68);
    }

    else
    {
      sub_1D3333DE0(v55);
      v75 = v141;
    }

    sub_1D3333DE0(v75);
    v22 = v146;
    v11 = v139;
    v2 = v138;
    v76 = v38[1] ? sub_1D3334010() : MEMORY[0x1E69E7CC0];
    sub_1D3333DE0(v76);
    v77 = [*&v2[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_featureFlags] callRemindersEnabled];
    v78 = &qword_1EDEBF000;
    if (!v77)
    {
      break;
    }

    v79 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_isRemindersDatasource;
    swift_beginAccess();
    if (v2[v79] != 1)
    {
      goto LABEL_65;
    }

    v80 = *v58;
    v81 = *(*v58 + 16);

    v140 = v81;
    if (!v81)
    {
      v127 = MEMORY[0x1E69E7CC0];
LABEL_61:

      *v134 = v127;

      v56 = v133;
      v57 = v135;
      if (v126)
      {
        if (qword_1EDEBF088 != -1)
        {
          swift_once();
        }

        v100 = v130;
        v101 = __swift_project_value_buffer(v130, qword_1EDEC1458);
        v102 = v124;
        v103 = v123;
        (*(v124 + 16))(v123, v101, v100);
        v104 = v125;
        sub_1D33DE3A4();
        v105 = swift_slowAlloc();
        *v105 = 0;
        v106 = sub_1D33DE3D4();
        v107 = sub_1D33DEC04();
        v108 = sub_1D33DE394();
        _os_signpost_emit_with_name_impl(&dword_1D331A000, v106, v107, v108, "Refresh reminder status", "", v105, 2u);
        sub_1D339052C(v134);
        v109 = sub_1D33DEBF4();
        v110 = sub_1D33DE394();
        _os_signpost_emit_with_name_impl(&dword_1D331A000, v106, v109, v110, "Refresh reminder status", "", v105, 2u);

        MEMORY[0x1D38B81C0](v105, -1, -1);
        (*(v131 + 8))(v104, v132);
        (*(v102 + 8))(v103, v100);
        v2 = v138;
        v57 = v135;
      }

LABEL_65:
      v111 = sub_1D33DE9B4();
      v112 = v128;
      (*(*(v111 - 8) + 56))(v128, 1, 1, v111);
      v113 = swift_allocObject();
      v113[2] = 0;
      v113[3] = 0;
      v113[4] = v2;
      v113[5] = v57;
      v114 = v2;

      sub_1D333DD88(0, 0, v112, &unk_1D33E38A0, v113);

      v78 = &qword_1EDEBF000;
      break;
    }

    v15 = 0;
    v13 = v148;
    v82 = (v148 + 8);
    v127 = MEMORY[0x1E69E7CC0];
    v136 = v80;
    while (v15 < v80[2])
    {
      v83 = (*(v143 + 80) + 32) & ~*(v143 + 80);
      v141 = *(v143 + 72);
      sub_1D332CE34(v80 + v83 + v141 * v15, v11, type metadata accessor for RecentsItem);
      v84 = sub_1D3337D6C()[2];

      if (!v84)
      {
        sub_1D3337A54(v11, type metadata accessor for RecentsItem);
        goto LABEL_39;
      }

      v137 = v83;
      v142 = v15;
      if (qword_1EDEBF9C0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();

      sub_1D33DE4F4();

      v15 = v149;
      v85 = sub_1D3337D6C();
      v86 = v85;
      v87 = v85[2];
      if (v87)
      {
        v11 = 0;
        v2 = v85 + ((v13[80] + 32) & ~v13[80]);
        while (1)
        {
          if (v11 >= v86[2])
          {
            __break(1u);
            goto LABEL_73;
          }

          v88 = &v2[*(v13 + 9) * v11];
          v89 = *(v13 + 2);
          v90 = v147;
          v89(v147, v88, v22);
          if (*(v15 + 16) && (v91 = sub_1D33B926C(v90), (v92 & 1) != 0))
          {
            v93 = v144;
            sub_1D332CE34(*(v15 + 56) + *(v145 + 72) * v91, v144, type metadata accessor for ReminderStatus);
            (*v82)(v90, v146);
            v94 = *v93;
            v95 = v93;
            v22 = v146;
            sub_1D3337A54(v95, type metadata accessor for ReminderStatus);
            if (!v94)
            {

              sub_1D33302BC(v139, v129);
              v96 = v127;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v150 = v96;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D3330B0C(0, v96[2] + 1, 1);
                v96 = v150;
              }

              v2 = v138;
              v13 = v148;
              v80 = v136;
              v15 = v142;
              v99 = v96[2];
              v98 = v96[3];
              if (v99 >= v98 >> 1)
              {
                sub_1D3330B0C((v98 > 1), v99 + 1, 1);
                v96 = v150;
              }

              v96[2] = v99 + 1;
              v127 = v96;
              sub_1D33302BC(v129, v96 + v137 + v99 * v141);
              v11 = v139;
              goto LABEL_39;
            }
          }

          else
          {
            (*v82)(v90, v22);
          }

          ++v11;
          v13 = v148;
          if (v87 == v11)
          {

            v2 = v138;
            v11 = v139;
            goto LABEL_59;
          }
        }
      }

LABEL_59:

      sub_1D3337A54(v11, type metadata accessor for RecentsItem);
      v80 = v136;
      v15 = v142;
LABEL_39:
      if (++v15 == v140)
      {
        goto LABEL_61;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  if (v78[17] != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v130, qword_1EDEC1458);

  sub_1D33DE3A4();
  v115 = sub_1D33DE3D4();
  v116 = sub_1D33DEC14();
  if (sub_1D33DECC4())
  {
    v117 = swift_slowAlloc();
    *v117 = 134217984;
    swift_beginAccess();
    *(v117 + 4) = *(*(v57 + 16) + 16);

    v118 = sub_1D33DE394();
    _os_signpost_emit_with_name_impl(&dword_1D331A000, v115, v116, v118, "Finished fetching", "Count: %ld", v117, 0xCu);
    MEMORY[0x1D38B81C0](v117, -1, -1);
  }

  else
  {
  }

  (*(v131 + 8))(v56, v132);
  swift_beginAccess();

  sub_1D338AF18(v119);
}

uint64_t sub_1D3390490(char *a1)
{
  v2 = &a1[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue];
  os_unfair_lock_lock(&a1[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue]);
  sub_1D33DE4E4();
  os_unfair_lock_unlock(v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  return sub_1D33DE584();
}

uint64_t sub_1D339052C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761320, &unk_1D33E28D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v22 - v4;
  v26 = type metadata accessor for RecentsItem(0);
  v5 = *(v26 - 8);
  v6 = MEMORY[0x1EEE9AC00](v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = *a1;
  v12 = *(*a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v23 = a1;
    v24 = v1;
    v28 = MEMORY[0x1E69E7CC0];
    v14 = v11;

    sub_1D3330B0C(0, v12, 0);
    v13 = v28;
    v15 = *(v5 + 80);
    v22 = v14;
    v25 = (v15 + 32) & ~v15;
    v16 = v14 + v25;
    v17 = *(v5 + 72);
    do
    {
      sub_1D332CE34(v16, v8, type metadata accessor for RecentsItem);
      sub_1D332CE34(v8, v10, type metadata accessor for RecentsItem);
      v18 = v27;
      RecentsItem.getReminderStatus()(v27);
      sub_1D3337A54(v8, type metadata accessor for RecentsItem);
      sub_1D3394050(v18, &v10[*(v26 + 44)]);
      v28 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D3330B0C((v19 > 1), v20 + 1, 1);
        v13 = v28;
      }

      *(v13 + 16) = v20 + 1;
      sub_1D33302BC(v10, v13 + v25 + v20 * v17);
      v16 += v17;
      --v12;
    }

    while (v12);

    a1 = v23;
  }

  *a1 = v13;
}

uint64_t sub_1D3390794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_1D33DE3B4();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_1D33DE3E4();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33908B0, 0, 0);
}

uint64_t sub_1D33908B0()
{
  if (qword_1EDEBF088 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v16 = v0[7];
  v6 = __swift_project_value_buffer(v4, qword_1EDEC1458);
  (*(v2 + 16))(v1, v6, v4);
  sub_1D33DE3A4();
  v7 = swift_slowAlloc();
  *v7 = 0;
  v8 = sub_1D33DE3D4();
  v9 = sub_1D33DEC04();
  v10 = sub_1D33DE394();
  _os_signpost_emit_with_name_impl(&dword_1D331A000, v8, v9, v10, "Populate reminder cache", "", v7, 2u);
  swift_beginAccess();

  sub_1D3334470(v11, 0);

  v12 = sub_1D33DEBF4();
  v13 = sub_1D33DE394();
  _os_signpost_emit_with_name_impl(&dword_1D331A000, v8, v12, v13, "Populate reminder cache", "", v7, 2u);

  MEMORY[0x1D38B81C0](v7, -1, -1);
  (*(v5 + 8))(v3, v16);
  (*(v2 + 8))(v1, v4);

  v14 = v0[1];

  return v14();
}

id RecentsItemDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t RecentsItemDataSource.markItemsAsRead(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  v12 = sub_1D33DDDB4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RecentsItem(0) - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v22 = *(v17 + 72);
    v49 = (v13 + 56);
    v50 = v22;
    v46 = v13;
    v47 = (v13 + 32);
    v48 = (v13 + 48);
    v23 = MEMORY[0x1E69E7CC0];
    v45 = v15;
    while (1)
    {
      sub_1D332CE34(v21, v19, type metadata accessor for RecentsItem);
      v24 = v19[32];
      v25 = 1;
      if (v24 <= 8)
      {
        if (((1 << v24) & 0x1B0) != 0)
        {
          goto LABEL_12;
        }

        v26 = *(v19 + 1);
        if (v24 == 3 || v24 == 6)
        {
          goto LABEL_11;
        }
      }

      if (v24 >= 2)
      {
        v26 = *v19;
LABEL_11:
        v27 = v26;
        sub_1D33DE0B4();

        v25 = 0;
      }

LABEL_12:
      (*v49)(v9, v25, 1, v12);
      sub_1D332FEC4(v9, v11);
      sub_1D3337A54(v19, type metadata accessor for RecentsItem);
      if ((*v48)(v11, 1, v12) == 1)
      {
        sub_1D331E880(v11, &qword_1EC7612B0, qword_1D33E2830);
      }

      else
      {
        v28 = v9;
        v29 = *v47;
        (*v47)(v15, v11, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D3338090(0, v23[2] + 1, 1, v23);
        }

        v31 = v23[2];
        v30 = v23[3];
        if (v31 >= v30 >> 1)
        {
          v23 = sub_1D3338090((v30 > 1), v31 + 1, 1, v23);
        }

        v23[2] = v31 + 1;
        v32 = v23 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v31;
        v15 = v45;
        v29(v32, v45, v12);
        v9 = v28;
      }

      v21 += v50;
      if (!--v20)
      {
        goto LABEL_19;
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v33 = *(v44 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
  if (!v33)
  {
  }

  v35 = v42;
  v34 = v43;
  if (v42)
  {
    v36 = v43;
  }

  else
  {
    v36 = 0;
  }

  v37 = v41;
  sub_1D33DE984();
  v38 = sub_1D33DE9B4();
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v33;
  v39[5] = v23;
  v39[6] = v35;
  v39[7] = v36;

  sub_1D331FEDC(v35, v34);
  sub_1D333DD88(0, 0, v37, &unk_1D33E3400, v39);
}

Swift::Void __swiftcall RecentsItemDataSource.deleteMessagesWithUUIDs(_:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
  if (v2)
  {
    v4 = v2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
    os_unfair_lock_lock((v2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v4 + 24);

      os_unfair_lock_unlock(v4);
      v5(a1._rawValue);

      sub_1D331EEDC(v5, v6);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall RecentsItemDataSource.loadOlderCallsIfNecessary(forRemainingRowCount:)(Swift::Int forRemainingRowCount)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  if (v2)
  {
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 40);
    swift_unknownObjectRetain();
    v6(forRemainingRowCount, ObjectType, v4);

    swift_unknownObjectRelease();
  }
}

Swift::Int __swiftcall RecentsItemDataSource.numUnknownMissedCalls()()
{
  v1 = type metadata accessor for RecentsItem(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v23 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v23 - v5);
  swift_getKeyPath();
  v24 = v0;
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
  sub_1D33DDED4();

  v7 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems);
  v8 = *(v7 + 16);

  if (v8)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v12 = &selRef_setOriginatingUIType_;
    while (1)
    {
      if (v10 >= *(v7 + 16))
      {
        __break(1u);
        return result;
      }

      v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v14 = *(v2 + 72);
      sub_1D332CE34(v7 + v13 + v14 * v10, v6, type metadata accessor for RecentsItem);
      if (*(v6 + 32) - 4 < 3)
      {
        v15 = *v6;
        if ([v15 v12[85]] && objc_msgSend(v15, sel_isIncoming))
        {
          v16 = CHRecentCall.unknownHandles.getter();

          v17 = v16[2];

          if (v17)
          {
            sub_1D33302BC(v6, v23);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v24 = v11;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D3330B0C(0, *(v11 + 16) + 1, 1);
              v11 = v24;
            }

            v20 = *(v11 + 16);
            v19 = *(v11 + 24);
            v21 = v20 + 1;
            if (v20 >= v19 >> 1)
            {
              sub_1D3330B0C((v19 > 1), v20 + 1, 1);
              v21 = v20 + 1;
              v11 = v24;
            }

            *(v11 + 16) = v21;
            result = sub_1D33302BC(v23, v11 + v13 + v20 * v14);
          }

          else
          {
            result = sub_1D3337A54(v6, type metadata accessor for RecentsItem);
          }

          v12 = &selRef_setOriginatingUIType_;
          goto LABEL_5;
        }
      }

      result = sub_1D3337A54(v6, type metadata accessor for RecentsItem);
LABEL_5:
      if (v8 == ++v10)
      {
        goto LABEL_19;
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v22 = *(v11 + 16);

  return v22;
}

uint64_t sub_1D33914E4()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1D33915DC;
  v4 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0xD000000000000019, 0x80000001D33E6DF0, sub_1D339373C, v2, v4);
}

uint64_t sub_1D33915DC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D33916F4, 0, 0);
}

uint64_t sub_1D339170C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D33DE664();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D33DE6A4();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761948, &unk_1D33E37B0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - v12;
  v19[1] = *(a2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 56);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  (*(v11 + 32))(v16 + v15, v13, v10);
  aBlock[4] = sub_1D3393DDC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3329468;
  aBlock[3] = &block_descriptor_110_0;
  v17 = _Block_copy(aBlock);

  sub_1D33DE674();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D33927E0(&unk_1EDEBEF50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
  sub_1D334CB54(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0, MEMORY[0x1E69E6328]);
  sub_1D33DED64();
  MEMORY[0x1D38B7240](0, v9, v6, v17);
  _Block_release(v17);
  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
}

void sub_1D3391AEC(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for RecentsItem(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v26 - v8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v26[1] = a2;
    swift_getKeyPath();
    v29 = v11;
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
    sub_1D33DDED4();

    v26[0] = v11;
    v12 = *&v11[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems];
    v13 = *(v12 + 16);

    if (v13)
    {
      v14 = 0;
      v15 = MEMORY[0x1E69E7CC0];
      v27 = v7;
      v28 = v13;
      while (v14 < *(v12 + 16))
      {
        v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v17 = *(v4 + 72);
        sub_1D332CE34(v12 + v16 + v17 * v14, v9, type metadata accessor for RecentsItem);
        if (*(v9 + 32) - 4 >= 3)
        {
          sub_1D3337A54(v9, type metadata accessor for RecentsItem);
        }

        else
        {
          v18 = *v9;
          if ([v18 isIncoming])
          {
            v19 = CHRecentCall.unknownHandles.getter();

            v20 = v19[2];

            if (v20)
            {
              sub_1D33302BC(v9, v7);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v29 = v15;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D3330B0C(0, *(v15 + 2) + 1, 1);
                v15 = v29;
              }

              v23 = *(v15 + 2);
              v22 = *(v15 + 3);
              if (v23 >= v22 >> 1)
              {
                sub_1D3330B0C((v22 > 1), v23 + 1, 1);
                v15 = v29;
              }

              *(v15 + 2) = v23 + 1;
              v24 = &v15[v16 + v23 * v17];
              v7 = v27;
              sub_1D33302BC(v27, v24);
            }

            else
            {
              sub_1D3337A54(v9, type metadata accessor for RecentsItem);
            }

            v13 = v28;
          }

          else
          {
            sub_1D3337A54(v9, type metadata accessor for RecentsItem);
          }
        }

        if (v13 == ++v14)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
LABEL_20:

      v25 = *(v15 + 2);

      v29 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761948, &unk_1D33E37B0);
      sub_1D33DE934();
    }
  }

  else
  {
    v29 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761948, &unk_1D33E37B0);
    sub_1D33DE934();
  }
}

uint64_t RecentsItemDataSource.conversationManager(_:didChangeActivatedLinks:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1D33DE9B4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1D33DE974();
  v8 = v2;

  v9 = sub_1D33DE964();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = a2;
  sub_1D333E088(0, 0, v6, &unk_1D33E3418, v10);
}

uint64_t sub_1D3391FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  sub_1D33DE974();
  v5[11] = sub_1D33DE964();
  v7 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D339205C, v7, v6);
}

uint64_t sub_1D339205C()
{
  v1 = *(v0 + 72);

  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48);
  if (v2 && (v3 = *(v0 + 80), , v4 = sub_1D3350D20(), v5 = swift_allocObject(), *(v5 + 16) = v3, v6 = swift_allocObject(), *(v6 + 16) = sub_1D3355148, *(v6 + 24) = v5, *(v0 + 48) = sub_1D3393DD4, *(v0 + 56) = v6, *(v0 + 16) = MEMORY[0x1E69E9820], *(v0 + 24) = 1107296256, *(v0 + 32) = sub_1D3356790, *(v0 + 40) = &block_descriptor_3, v7 = _Block_copy((v0 + 16)), , , , [v4 performWhileLocked_], v4, _Block_release(v7), LOBYTE(v4) = swift_isEscapingClosureAtFileLocation(), , , result = , (v4 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    **(v0 + 64) = v2 == 0;
    v9 = *(v0 + 8);

    return v9();
  }

  return result;
}

uint64_t RecentsItemDataSource.conversationManager(_:linkChangedFor:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_1D33DE9B4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1D33DE974();
  v5 = v0;
  v6 = sub_1D33DE964();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_1D333E088(0, 0, v3, &unk_1D33E3428, v7);
}

uint64_t sub_1D33924C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1D33DE974();
  v4[4] = sub_1D33DE964();
  v6 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D339255C, v6, v5);
}

uint64_t sub_1D339255C()
{
  v1 = *(v0 + 24);

  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48);
  if (v2)
  {

    sub_1D3352F40(v3);
  }

  **(v0 + 16) = v2 == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t RecentsItemDataSource.update(reminderUUID:for:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = v3 + 32;
    do
    {
      sub_1D3325720(v7, v10);
      v8 = v11;
      v9 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v9 + 56))(v6, a2, v8, v9);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
      v7 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D33927E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D3392828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v51 - v5;
  v58 = sub_1D33DEB74();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v51 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D33DEC24();
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7619D0, &qword_1D33E3928);
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = &v51 - v11;
  v12 = sub_1D33DE2F4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v51 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - v20;
  v62 = sub_1D33DE2A4();
  v63 = &off_1F4EE4AF0;
  v61[0] = a1;
  v22 = (a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_1F4EE46C0;
  *v19 = v23;
  v24 = *(v13 + 104);
  v24(v19, *MEMORY[0x1E699C008], v12);
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_1F4EE46E8;
  *v16 = v25;
  v24(v16, *MEMORY[0x1E699BFF8], v12);
  sub_1D33DE2E4();
  v26 = *(v13 + 8);
  v26(v16, v12);
  v26(v19, v12);
  *v22 = 0;
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360) + 28);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7619D8, &unk_1D33E3930);
  bzero(&v22[v27], *(*(v28 - 8) + 64));
  (*(v13 + 32))(&v22[v27], v21, v12);
  v29 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_featureFlags;
  *(a2 + v29) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v30 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_callProviderManager;
  *(a2 + v30) = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v31 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_pagedLoader;
  type metadata accessor for VideoMessageInboxController.PagedLoader();
  v32 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v32 + 112) = xmmword_1D33E31F0;
  *(v32 + 128) = 0;
  *(v32 + 136) = 0;
  *(a2 + v31) = v32;
  *(a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__loadingTask) = 0;
  v33 = a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  *v33 = 0;
  v34 = MEMORY[0x1E69E7CC0];
  *(v33 + 40) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = 0;
  *(v33 + 8) = v34;
  *(v33 + 16) = 0;
  v35 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject;
  LOBYTE(v60[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7619E0, &unk_1D33E1AA0);
  swift_allocObject();
  *(a2 + v35) = sub_1D33DE504();
  *(a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__signState) = 0;
  sub_1D33DDF04();
  sub_1D3325720(v61, a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController);
  v36 = [objc_opt_self() defaultCenter];
  sub_1D33DEC34();

  v37 = v51;
  sub_1D33DEB54();
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v38 = sub_1D33DEB94();
  *&v60[0] = v38;
  v39 = sub_1D33DEB34();
  v40 = v53;
  (*(*(v39 - 8) + 56))(v53, 1, 1, v39);
  sub_1D33927E0(&qword_1EDEC0050, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v41 = v52;
  v42 = v54;
  sub_1D33DE614();
  sub_1D331E880(v40, &qword_1EC760F20, &qword_1D33E2290);
  (*(v56 + 8))(v37, v58);
  (*(v55 + 8))(v10, v42);

  swift_allocObject();
  swift_weakInit();
  sub_1D334CB54(&unk_1EDEBEFF0, &qword_1EC7619D0, &qword_1D33E3928, MEMORY[0x1E695BE50]);

  v43 = v57;
  v44 = sub_1D33DE644();

  (*(v59 + 8))(v41, v43);
  v45 = a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  *(v45 + 32) = v44;

  os_unfair_lock_unlock(v45);

  __swift_project_boxed_opaque_existential_1(v61, v62);

  sub_1D33DE254();

  v46 = swift_allocObject();
  swift_weakInit();

  sub_1D3325720(v61, v60);
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  sub_1D331E6AC(v60, v47 + 24);

  os_unfair_lock_lock(v45);
  v48 = *(v45 + 16);
  v49 = *(v45 + 24);
  *(v45 + 16) = sub_1D33940C8;
  *(v45 + 24) = v47;

  sub_1D331EEDC(v48, v49);
  os_unfair_lock_unlock(v45);

  sub_1D33220A8();
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  return a2;
}

char *sub_1D33930E8(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v13[3] = type metadata accessor for RequestsHandler();
  v13[4] = &off_1F4EE7D80;
  v13[0] = a1;
  v5 = OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_tabBarUnreadCallCount;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761740, &unk_1D33E2F70);
  swift_allocObject();
  *&a2[v5] = sub_1D33DE504();
  swift_weakInit();
  *&a2[OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_totalUnreadCallCount] = 0;
  *&a2[OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_unreadRequestCountSink] = 0;
  a2[OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_shouldMarkKnownCallsAsReadWhenReady] = 0;
  sub_1D3325720(v13, &a2[OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_requestsHandler]);
  v11.receiver = a2;
  v11.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v11, sel_init);
  v12 = sub_1D337EA54();
  *(swift_allocObject() + 16) = v6;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7619F0, &qword_1D33E3958);
  sub_1D334CB54(&qword_1EC7619F8, &qword_1EC7619F0, &qword_1D33E3958, MEMORY[0x1E695BED8]);
  v8 = sub_1D33DE644();

  *&v7[OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_unreadRequestCountSink] = v8;

  v9 = [objc_opt_self() defaultCenter];
  if (qword_1EC760978 != -1)
  {
    swift_once();
  }

  [v9 addObserver:v7 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return v7;
}

uint64_t sub_1D3393364(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761830, &qword_1D33E32B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-1] - v8;
  v18[3] = type metadata accessor for RequestsHandler();
  v18[4] = &off_1F4EE7D80;
  v18[0] = a2;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  LOBYTE(v17) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7619E0, &unk_1D33E1AA0);
  swift_allocObject();
  *(a3 + 88) = sub_1D33DE504();
  v10 = OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__hasFinishedFirstLoad;
  LOBYTE(v17) = 0;
  sub_1D33DE534();
  (*(v7 + 32))(a3 + v10, v9, v6);
  *(a3 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox_recentCallsDidChangeSubscription) = 0;
  *(a3 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad) = 0;
  v11 = OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox_featureFlags;
  *(a3 + v11) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  sub_1D33DDF04();
  *(a3 + 16) = a1;
  *(a3 + 24) = &off_1F4EE5B10;
  sub_1D3325720(v18, a3 + 32);
  v17 = *&a1[OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentItemsUpdateTrigger];
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1D33940D4;
  *(v13 + 24) = v12;
  v14 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761430, &qword_1D33E2BF0);
  sub_1D334CB54(&unk_1EDEBEF90, &unk_1EC761430, &qword_1D33E2BF0, MEMORY[0x1E695BF88]);
  v15 = sub_1D33DE644();

  __swift_destroy_boxed_opaque_existential_1Tm(v18);

  *(a3 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox_recentCallsDidChangeSubscription) = v15;

  return a3;
}

uint64_t sub_1D3393668(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D334D4B4;

  return sub_1D3340254(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D3393744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334D4B4;

  return sub_1D3391FC0(a1, v4, v5, v7, v6);
}

uint64_t sub_1D3393804(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D33924C4(a1, v4, v5, v6);
}

unint64_t sub_1D33938C0()
{
  result = qword_1EC7618F8;
  if (!qword_1EC7618F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7618F8);
  }

  return result;
}

uint64_t sub_1D3393914(uint64_t a1)
{
  result = sub_1D33927E0(&unk_1EDEBF810, type metadata accessor for RecentsLinkController, &protocol conformance descriptor for RecentsLinkController);
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D3393990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D33939D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D3393AF8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1D3393BEC;

  return v5(v2 + 16);
}

uint64_t sub_1D3393BEC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D3393D1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D334CF9C;

  return sub_1D3393AF8(a1, v4);
}

void sub_1D3393DDC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761948, &unk_1D33E37B0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  sub_1D3391AEC(v2, v3);
}

uint64_t sub_1D3393E6C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded);
  *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded) = *(v0 + 24);
  return sub_1D3389A94(v2);
}

uint64_t objectdestroy_44Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 40));

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t sub_1D3393F90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334CF9C;

  return sub_1D3390794(a1, v4, v5, v7, v6);
}

uint64_t sub_1D3394050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761320, &unk_1D33E28D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *Participant.handle.getter()
{
  v1 = *(v0 + *(type metadata accessor for Participant(0) + 20));
  if (v1)
  {
    v2 = v1;
  }

  return v1;
}

uint64_t type metadata accessor for Participant(uint64_t a1)
{
  result = qword_1EC761A18;
  if (!qword_1EC761A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Participant.RemoteIdentifiers.debugDescription.getter()
{
  v1 = 7104878;
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  sub_1D33DEF24();
  MEMORY[0x1D38B6ED0](0xD000000000000019, 0x80000001D33E70A0);
  v5 = [v2 value];
  sub_1D33DE7B4();

  v6 = sub_1D33DE804();
  MEMORY[0x1D38B6ED0](v6);

  MEMORY[0x1D38B6ED0](0x3D4449736469202CLL, 0xE800000000000000);
  if (v3)
  {
    v7 = 0xE300000000000000;
    v8 = 7104878;
  }

  else
  {
    v8 = sub_1D33DE804();
    v7 = v9;
  }

  MEMORY[0x1D38B6ED0](v8, v7);

  MEMORY[0x1D38B6ED0](0xD000000000000010, 0x80000001D33E70C0);
  if (v4)
  {

    v1 = sub_1D33DE804();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x1D38B6ED0](v1, v11);

  return 0;
}

uint64_t Participant.RemoteIdentifiers.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  sub_1D33DEC84();
  if (v3 != 1)
  {
    sub_1D33DF2A4();
    MEMORY[0x1D38B7940](v2);
    if (v4)
    {
      goto LABEL_3;
    }

    return sub_1D33DF2A4();
  }

  sub_1D33DF2A4();
  if (!v4)
  {
    return sub_1D33DF2A4();
  }

LABEL_3:
  sub_1D33DF2A4();

  return sub_1D33DE824();
}

uint64_t Participant.RemoteIdentifiers.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  sub_1D33DF284();
  sub_1D33DEC84();
  if (v2 != 1)
  {
    sub_1D33DF2A4();
    MEMORY[0x1D38B7940](v1);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1D33DF2A4();
    return sub_1D33DF2C4();
  }

  sub_1D33DF2A4();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D33DF2A4();
  sub_1D33DE824();
  return sub_1D33DF2C4();
}

uint64_t sub_1D33945A4(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  sub_1D33DEC84();
  if (v3 != 1)
  {
    sub_1D33DF2A4();
    MEMORY[0x1D38B7940](v2);
    if (v4)
    {
      goto LABEL_3;
    }

    return sub_1D33DF2A4();
  }

  sub_1D33DF2A4();
  if (!v4)
  {
    return sub_1D33DF2A4();
  }

LABEL_3:
  sub_1D33DF2A4();

  return sub_1D33DE824();
}

uint64_t sub_1D3394660(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  sub_1D33DF284();
  sub_1D33DEC84();
  if (v3 != 1)
  {
    sub_1D33DF2A4();
    MEMORY[0x1D38B7940](v2);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1D33DF2A4();
    return sub_1D33DF2C4();
  }

  sub_1D33DF2A4();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D33DF2A4();
  sub_1D33DE824();
  return sub_1D33DF2C4();
}

uint64_t Participant.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D33DDDB4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Participant.identifier.setter(uint64_t a1)
{
  v3 = sub_1D33DDDB4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

id Participant.remoteIdentifiers.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Participant(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_1D33959A8(v4, v5, v6, v7, v8);
}

__n128 Participant.remoteIdentifiers.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for Participant(0) + 20);
  sub_1D33959EC(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t Participant.nickname.getter()
{
  v1 = *(v0 + *(type metadata accessor for Participant(0) + 24));

  return v1;
}

uint64_t Participant.nickname.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Participant(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Participant.associatedParticipants.getter()
{
  type metadata accessor for Participant(0);
}

uint64_t Participant.associatedParticipants.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Participant(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

void *Participant.unverifiedAssociatedHandle.getter()
{
  v1 = *(v0 + *(type metadata accessor for Participant(0) + 32));
  v2 = v1;
  return v1;
}

void Participant.unverifiedAssociatedHandle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Participant(0) + 32);

  *(v1 + v3) = a1;
}

uint64_t Participant.idsIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for Participant(0) + 20));
  if (*v1)
  {
    return v1[1];
  }

  else
  {
    return 0;
  }
}

uint64_t Participant.debugDescription.getter()
{
  sub_1D33DEF24();
  MEMORY[0x1D38B6ED0](0xD000000000000014, 0x80000001D33E70E0);
  v1 = (v0 + *(type metadata accessor for Participant(0) + 20));
  if (*v1)
  {
    v2 = 0x65736C6166;
  }

  else
  {
    v2 = 1702195828;
  }

  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x1D38B6ED0](v2, v3);

  MEMORY[0x1D38B6ED0](0xD000000000000014, 0x80000001D33E7100);
  v4 = *v1;
  if (*v1)
  {

    v5 = v4;
    v6 = sub_1D33DE804();
    v8 = v7;
  }

  else
  {
    v8 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x1D38B6ED0](v6, v8);

  MEMORY[0x1D38B6ED0](0x746E656469202C29, 0xEE003D7265696669);
  sub_1D33DDDB4();
  sub_1D3395CD8(&qword_1EC761A00, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v9 = sub_1D33DF174();
  MEMORY[0x1D38B6ED0](v9);

  MEMORY[0x1D38B6ED0](41, 0xE100000000000000);
  return 0;
}

id sub_1D3394DB0(SEL *a1)
{
  v3 = *(v1 + *(type metadata accessor for Participant(0) + 20));
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 value];
  if (!v4)
  {
    sub_1D33DE7B4();
    v4 = sub_1D33DE784();
  }

  v5 = [v4 *a1];

  return v5;
}

__n128 Participant.contactDetails.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D33DDBC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + *(v4 + 20));
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [v12 siriDisplayName];
  if (!v13)
  {

LABEL_9:
    sub_1D33879C0(v2, v6);

    sub_1D3385F00(v6, v33);

    sub_1D3387A88(v6);
    v29 = v33[1];
    result = v33[2];
    v30 = v34;
    *a1 = v33[0];
    *(a1 + 16) = v29;
    *(a1 + 32) = result;
    *(a1 + 48) = v30;
    return result;
  }

  v14 = v13;
  v32 = sub_1D33DE7B4();
  v16 = v15;

  if (([v12 shouldHideContact] & 1) == 0)
  {

    goto LABEL_9;
  }

  v17 = MEMORY[0x1D38B7A70]();
  sub_1D33DDBB4();
  sub_1D33DDB84();
  sub_1D33DDB94();
  if (qword_1EDEC0130 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDEC1498;
  v19 = sub_1D33DDBA4();
  v20 = [v18 stringFromPersonNameComponents_];

  v21 = sub_1D33DE7B4();
  v23 = v22;

  (*(v8 + 8))(v10, v7);
  objc_autoreleasePoolPop(v17);
  *&v33[0] = v21;
  *(&v33[0] + 1) = v23;
  sub_1D3328AF4();
  v24 = sub_1D33DED14();
  v26 = v25;

  v27 = v32;
  *a1 = 0;
  *(a1 + 8) = v27;
  *(a1 + 16) = v16;
  *(a1 + 24) = v27;
  *(a1 + 32) = v16;
  *(a1 + 40) = v24;
  *(a1 + 48) = v26;

  return result;
}

__n128 Participant.init(identifier:remoteIdentifiers:nickname:cache:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a2 + 32);
  v13 = type metadata accessor for Participant(0);
  v14 = a6 + v13[5];
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  v15 = (a6 + v13[6]);
  *(a6 + v13[7]) = MEMORY[0x1E69E7CD0];
  *(a6 + v13[8]) = 0;
  v16 = sub_1D33DDDB4();
  v18 = *(a2 + 16);
  v19 = *a2;
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  sub_1D33959EC(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32));
  result = v19;
  *v14 = v19;
  *(v14 + 16) = v18;
  *(v14 + 32) = v12;
  *v15 = a3;
  v15[1] = a4;
  *(a6 + v13[9]) = a5;
  return result;
}

uint64_t Participant.name.getter()
{
  Participant.contactDetails.getter(v5);
  v1 = v5[0];
  v0 = v5[1];
  v2 = v5[2];

  v3 = sub_1D33952B0(v0, v2);

  return v3;
}

uint64_t sub_1D33952B0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617D8, &unk_1D33E31D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v19 - v6;
  v8 = type metadata accessor for Participant(0);
  sub_1D335DE34(*(v2 + *(v8 + 28)), v7);
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  sub_1D3387BA8(v7);
  if (*(v2 + *(v8 + 24) + 8))
  {
    v10 = v9 == 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_1D33DDB74();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C8, &unk_1D33E3B50);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D33E2410;
    v19[0] = a1;
    v19[1] = a2;

    v14 = MEMORY[0x1E69E6158];
    v15 = sub_1D33DE884();
    v17 = v16;
    *(v13 + 56) = v14;
    *(v13 + 64) = sub_1D3387AE4();
    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
    a1 = sub_1D33DE7D4();
  }

  else
  {
  }

  return a1;
}

uint64_t Participant.shortName.getter()
{
  Participant.contactDetails.getter(v5);
  v0 = v5[0];
  v1 = v5[3];
  v2 = v5[4];

  v3 = sub_1D33952B0(v1, v2);

  return v3;
}

uint64_t static Participant.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D33DDD74() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Participant(0) + 20);
  return (*(a1 + v4) == 0) ^ (*(a2 + v4) != 0);
}

uint64_t sub_1D33955CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1D33DDD74())
  {
    return (*(a1 + *(a3 + 20)) == 0) ^ (*(a2 + *(a3 + 20)) != 0);
  }

  else
  {
    return 0;
  }
}

uint64_t Participant.hash(into:)(uint64_t a1)
{
  sub_1D33DDDB4();
  sub_1D3395CD8(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_1D33DE734();
}

uint64_t Participant.hashValue.getter()
{
  sub_1D33DF284();
  sub_1D33DDDB4();
  sub_1D3395CD8(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D33DE734();
  return sub_1D33DF2C4();
}

uint64_t sub_1D3395738()
{
  sub_1D33DF284();
  sub_1D33DDDB4();
  sub_1D3395CD8(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D33DE734();
  return sub_1D33DF2C4();
}

uint64_t sub_1D33957C0(uint64_t a1)
{
  sub_1D33DDDB4();
  sub_1D3395CD8(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_1D33DE734();
}

uint64_t sub_1D3395844(uint64_t a1)
{
  sub_1D33DF284();
  sub_1D33DDDB4();
  sub_1D3395CD8(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D33DE734();
  return sub_1D33DF2C4();
}

BOOL _s16CallsAppServices11ParticipantV17RemoteIdentifiersV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v7 = *(a2 + 16);
  v9 = a2[3];
  v8 = a2[4];
  sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
  if ((sub_1D33DEC74() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v6)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (v5)
  {
    return v8 && (v4 == v9 && v5 == v8 || (sub_1D33DF1B4() & 1) != 0);
  }

  return !v8;
}

id sub_1D33959A8(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v5 = result;

    return v5;
  }

  return result;
}

void *sub_1D33959EC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D3395A30()
{
  result = qword_1EC761A08;
  if (!qword_1EC761A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761A08);
  }

  return result;
}

void sub_1D3395AF4(uint64_t a1)
{
  sub_1D33DDDB4();
  if (v1 <= 0x3F)
  {
    sub_1D3395BF8(319, &qword_1EC761A28, &type metadata for Participant.RemoteIdentifiers);
    if (v2 <= 0x3F)
    {
      sub_1D3395BF8(319, &qword_1EDEBFD60, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1D3395C44(319);
        if (v4 <= 0x3F)
        {
          sub_1D3395D20(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ParticipantContactDetailsCache();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D3395BF8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D33DECF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D3395C44(uint64_t a1)
{
  if (!qword_1EC761A30)
  {
    type metadata accessor for Participant(255);
    sub_1D3395CD8(&qword_1EC761A38, type metadata accessor for Participant, &protocol conformance descriptor for Participant);
    v1 = sub_1D33DEAA4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC761A30);
    }
  }
}

uint64_t sub_1D3395CD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D3395D20(uint64_t a1)
{
  if (!qword_1EC761A40)
  {
    sub_1D331DA18(255, &unk_1EDEC0120, 0x1E69D8C00);
    v1 = sub_1D33DECF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC761A40);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D3395D9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D3395DE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t (*Features.easySharedNameAndPhoto.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1D3329770(*v1, &type metadata for EasySharedNameAndPhotoKey, sub_1D33297F0) & 1;
  return sub_1D3395F04;
}

uint64_t (*Features.solarium.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1D3329770(*v1, &type metadata for SolariumKey, sub_1D3399044) & 1;
  return sub_1D3395FEC;
}

uint64_t (*Features.callExperiencePhoneApp.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1D3329770(*v1, &type metadata for CallExperiencePhoneAppKey, sub_1D33990C0) & 1;
  return sub_1D33960D4;
}

uint64_t sub_1D339611C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a2;
  *a2 = 0x8000000000000000;
  sub_1D3398D94(v7, a5, isUniquelyReferenced_nonNull_native);

  *a2 = v10;
  return result;
}

uint64_t sub_1D339619C(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  *v2 = 0x8000000000000000;
  sub_1D3398D94(v4, a2, isUniquelyReferenced_nonNull_native);

  *v2 = v7;
  return result;
}

uint64_t (*Features.nudityDetection.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1D3329770(*v1, &type metadata for NudityDetectionKey, sub_1D333746C) & 1;
  return sub_1D339627C;
}

uint64_t sub_1D3396288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v4;
  *v4 = 0x8000000000000000;
  sub_1D3398D94(v5, a3, isUniquelyReferenced_nonNull_native);

  *v4 = v8;
  return result;
}

uint64_t static Features.subscript.getter(uint64_t a1)
{
  if (qword_1EDEBF070 != -1)
  {
    swift_once();
  }

  sub_1D33DF2E4();
  swift_getAtKeyPath();

  return v2;
}

uint64_t static Features.withOverrides<A>(_:do:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EDEBF070 != -1)
  {
    swift_once();
  }

  sub_1D33DF2E4();
  a1(&v7);
  sub_1D33DF2F4();
}

uint64_t static Features.withOverrides<A>(_:do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D33964B8, 0, 0);
}

uint64_t sub_1D33964B8()
{
  if (qword_1EDEBF070 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  sub_1D33DF2E4();
  v1(v0 + 2);
  v0[3] = v0[2];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1D33965F8;
  v3 = v0[8];
  v4 = v0[7];
  v5 = v0[4];

  return MEMORY[0x1EEE6DE98](v5, v0 + 3, v4, v3, 0, 0, 0xD00000000000001FLL, 0x80000001D33E7150);
}

uint64_t sub_1D33965F8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1D339672C;
  }

  else
  {
    v2 = sub_1D3396714;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t static Features.with<A>(_:enabled:do:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a1;
  v7 = a2;
  return static Features.withOverrides<A>(_:do:)(sub_1D3398EC0, v6, a3, a4, a5);
}

uint64_t static Features.with<A>(_:enabled:do:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 80) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D33967B0, 0, 0);
}

uint64_t sub_1D33967B0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1D339688C;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return static Features.withOverrides<A>(_:do:)(v8, sub_1D339A77C, v3, v7, v5, v6);
}

uint64_t sub_1D339688C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D33969C8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D33969C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3396A2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D33DE374();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761A58, &unk_1D33E3D80);
  v40 = v4;
  result = sub_1D33DF114();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_1D3399A3C(&qword_1EC7611A8, MEMORY[0x1E696EDC8], MEMORY[0x1E696EDF8]);
      result = sub_1D33DE724();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D3396E18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7613C0, &qword_1D33E2930);
  v37 = v4;
  result = sub_1D33DF114();
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

      sub_1D33DF284();
      sub_1D33DE824();
      result = sub_1D33DF2C4();
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

uint64_t sub_1D33970D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D33DDDB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecentsItem(0);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v57 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v56 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - v13;
  v15 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761440, &unk_1D33E3050);
  v59 = v4;
  result = sub_1D33DF114();
  v17 = result;
  if (*(v15 + 16))
  {
    v55 = v5;
    v48 = v2;
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v15 + 64);
    v23 = (v20 + 63) >> 6;
    v54 = (v6 + 48);
    v50 = (v6 + 32);
    v49 = (v6 + 8);
    v24 = result + 64;
    v25 = v52;
    v53 = v15;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v61 = *(v57 + 72);
      v32 = v31 + v61 * v30;
      if (v59)
      {
        sub_1D332FEC4(v32, v14);
        v33 = *(v15 + 56);
        v60 = *(v58 + 72);
        sub_1D33290D8(v33 + v60 * v30, v25, type metadata accessor for RecentsItem);
      }

      else
      {
        sub_1D33383BC(v32, v14);
        v34 = *(v15 + 56);
        v60 = *(v58 + 72);
        sub_1D332CE34(v34 + v60 * v30, v25, type metadata accessor for RecentsItem);
      }

      sub_1D33DF284();
      v35 = v14;
      v36 = v56;
      sub_1D33383BC(v14, v56);
      v37 = v55;
      if ((*v54)(v36, 1, v55) == 1)
      {
        sub_1D33DF2A4();
      }

      else
      {
        v38 = v51;
        (*v50)(v51, v36, v37);
        sub_1D33DF2A4();
        sub_1D3399A3C(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1D33DE734();
        v39 = v38;
        v25 = v52;
        (*v49)(v39, v37);
      }

      result = sub_1D33DF2C4();
      v40 = -1 << *(v17 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      v14 = v35;
      if (((-1 << v41) & ~*(v24 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v24 + 8 * v42);
          if (v46 != -1)
          {
            v26 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v41) & ~*(v24 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      sub_1D332FEC4(v35, *(v17 + 48) + v61 * v26);
      result = sub_1D33290D8(v25, *(v17 + 56) + v60 * v26, type metadata accessor for RecentsItem);
      ++*(v17 + 16);
      v15 = v53;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v59 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_37;
    }

    v47 = 1 << *(v15 + 32);
    v3 = v48;
    if (v47 >= 64)
    {
      bzero(v19, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v47;
    }

    *(v15 + 16) = 0;
  }

LABEL_37:
  *v3 = v17;
  return result;
}

uint64_t sub_1D33976B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D33DDDB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761428, &unk_1D33E2980);
  v39 = v4;
  result = sub_1D33DF114();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1D3399A3C(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D33DE724();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D3397AB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v57 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v50 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v56 = &v46 - v12;
  v13 = sub_1D33DDDB4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = v10;
  v17 = v16;
  result = sub_1D33DF114();
  v19 = result;
  if (*(v16 + 16))
  {
    v55 = v13;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v46 = v6;
    v47 = (v14 + 16);
    v48 = v16;
    v49 = v14;
    v53 = (v14 + 32);
    v26 = result + 64;
    v27 = v52;
    while (v24)
    {
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v32 = v29 | (v20 << 6);
      v33 = *(v17 + 48);
      v54 = *(v49 + 72);
      v34 = v33 + v54 * v32;
      if (v51)
      {
        (*v53)(v27, v34, v55);
        v35 = *(v17 + 56);
        v36 = *(v50 + 72);
        sub_1D33290D8(v35 + v36 * v32, v56, v57);
      }

      else
      {
        (*v47)(v27, v34, v55);
        v37 = *(v17 + 56);
        v36 = *(v50 + 72);
        sub_1D332CE34(v37 + v36 * v32, v56, v57);
      }

      sub_1D3399A3C(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D33DE724();
      v38 = -1 << *(v19 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v26 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v27 = v52;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v26 + 8 * v40);
          if (v44 != -1)
          {
            v28 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v39) & ~*(v26 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v27 = v52;
LABEL_7:
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      (*v53)((*(v19 + 48) + v54 * v28), v27, v55);
      result = sub_1D33290D8(v56, *(v19 + 56) + v36 * v28, v57);
      ++*(v19 + 16);
      v17 = v48;
    }

    v30 = v20;
    while (1)
    {
      v20 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v20 >= v25)
      {
        break;
      }

      v31 = v21[v20];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v24 = (v31 - 1) & v31;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v9 = v46;
      goto LABEL_34;
    }

    v45 = 1 << *(v17 + 32);
    v9 = v46;
    if (v45 >= 64)
    {
      bzero(v21, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v45;
    }

    *(v17 + 16) = 0;
  }

LABEL_34:
  *v9 = v19;
  return result;
}

uint64_t sub_1D3397F2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7613F0, &qword_1D33E5430);
  result = sub_1D33DF114();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1D334CCF4((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1D334CD04(v23, &v36);
        sub_1D3328D20(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1D33DEE94();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1D334CCF4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D33981E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761418, &qword_1D33E2970);
  result = sub_1D33DF114();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      result = sub_1D33DF274();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D3398448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761410, &qword_1D33E2968);
  v34 = v4;
  result = sub_1D33DF114();
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
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D33DF284();
      sub_1D33DE824();
      result = sub_1D33DF2C4();
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
      *(*(v7 + 56) + 4 * v15) = v24;
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

uint64_t sub_1D33986E8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D33DE374();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D33B9198(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_1D33994C4();
    goto LABEL_7;
  }

  sub_1D3396A2C(result, a3 & 1);
  result = sub_1D33B9198(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1D33DF1E4();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D33992A0(v14, v11, a1 & 1, v20);
}

uint64_t sub_1D3398888(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D33DDDB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D33B926C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D339A00C(type metadata accessor for RecentsItem, &qword_1EC7613E8, &unk_1D33E2940, type metadata accessor for RecentsItem);
      goto LABEL_7;
    }

    sub_1D3397AB8(v17, a3 & 1, type metadata accessor for RecentsItem, &qword_1EC7613E8, &unk_1D33E2940, type metadata accessor for RecentsItem);
    v24 = sub_1D33B926C(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D3399358(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D33DF1E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for RecentsItem(0) - 8) + 72) * v14;

  return sub_1D334C7C4(a1, v22);
}

uint64_t sub_1D3398AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D33378A8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D3396E18(v18, a5 & 1);
      v13 = sub_1D33378A8(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1D33DF1E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1D33998C4();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

_OWORD *sub_1D3398C48(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D33B95A0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D339A324();
      goto LABEL_7;
    }

    sub_1D3397F2C(v13, a3 & 1);
    v19 = sub_1D33B95A0(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D334CD04(a2, v21);
      return sub_1D3399448(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1D33DF1E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_1D334CCF4(a1, v17);
}

unint64_t sub_1D3398D94(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D33B95E4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1D339A4C8();
    result = v17;
    goto LABEL_8;
  }

  sub_1D33981E4(v14, a3 & 1);
  result = sub_1D33B95E4(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + result) = a1 & 1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1D33DF1E4();
  __break(1u);
  return result;
}

uint64_t sub_1D3398F30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1D3398F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D3398FF4(uint64_t a1)
{
  result = sub_1D33297F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D339901C(uint64_t a1)
{
  result = sub_1D3399044();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D3399044()
{
  result = qword_1EC761A48;
  if (!qword_1EC761A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761A48);
  }

  return result;
}

unint64_t sub_1D3399098(uint64_t a1)
{
  result = sub_1D33990C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D33990C0()
{
  result = qword_1EC761A50;
  if (!qword_1EC761A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761A50);
  }

  return result;
}

unint64_t sub_1D3399114(uint64_t a1)
{
  result = sub_1D333746C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D339913C(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D33378A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D3398448(v16, a4 & 1);
      result = sub_1D33378A8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1D33DF1E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D339A614();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 4 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1D33992A0(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D33DE374();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1D3399358(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D33DDDB4();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for RecentsItem(0);
  result = sub_1D33290D8(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for RecentsItem);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_1D3399448(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1D334CCF4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

char *sub_1D33994C4()
{
  v1 = v0;
  v31 = sub_1D33DE374();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761A58, &unk_1D33E3D80);
  v3 = *v0;
  v4 = sub_1D33DF104();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_1D3399760()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761468, &unk_1D33E29A0);
  v2 = *v0;
  v3 = sub_1D33DF104();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = *(&v19 + 1);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D33998C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7613C0, &qword_1D33E2930);
  v2 = *v0;
  v3 = sub_1D33DF104();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D3399A3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1D3399A84()
{
  v1 = v0;
  v2 = type metadata accessor for RecentsItem(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v30 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761440, &unk_1D33E3050);
  v6 = *v0;
  v7 = sub_1D33DF104();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v37 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = *(v6 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    v32 = v6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = v33;
        v24 = *(v34 + 72) * v22;
        sub_1D33383BC(*(v6 + 48) + v24, v33);
        v25 = *(v6 + 56);
        v26 = v35;
        v27 = *(v36 + 72) * v22;
        sub_1D332CE34(v25 + v27, v35, type metadata accessor for RecentsItem);
        v28 = v37;
        sub_1D332FEC4(v23, *(v37 + 48) + v24);
        v29 = *(v28 + 56) + v27;
        v6 = v32;
        result = sub_1D33290D8(v26, v29, type metadata accessor for RecentsItem);
      }

      while (v17);
    }

    v20 = v12;
    v8 = v37;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_1D3399D60()
{
  v1 = v0;
  v33 = sub_1D33DDDB4();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761428, &unk_1D33E2980);
  v3 = *v0;
  v4 = sub_1D33DF104();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_1D339A00C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v47 = a4;
  v7 = v4;
  v8 = a1(0);
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v45 = &v37 - v9;
  v44 = sub_1D33DDDB4();
  v49 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v4;
  v12 = sub_1D33DF104();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v38 = v7;
    v39 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v48 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v48;
    v40 = v49 + 32;
    v41 = v49 + 16;
    v42 = v11;
    v24 = v49;
    v25 = v47;
    if (v21)
    {
      do
      {
        v26 = __clz(__rbit64(v21));
        v50 = (v21 - 1) & v21;
LABEL_14:
        v29 = v26 | (v17 << 6);
        v30 = *(v24 + 72) * v29;
        v32 = v43;
        v31 = v44;
        (*(v24 + 16))(v43, *(v11 + 48) + v30, v44);
        v33 = *(v11 + 56);
        v34 = v45;
        v35 = *(v46 + 72) * v29;
        sub_1D332CE34(v33 + v35, v45, v25);
        (*(v24 + 32))(*(v23 + 48) + v30, v32, v31);
        v36 = v34;
        v11 = v42;
        result = sub_1D33290D8(v36, *(v23 + 56) + v35, v25);
        v21 = v50;
      }

      while (v50);
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v38;
        v13 = v48;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v17);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v50 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v13;
  }

  return result;
}

void *sub_1D339A324()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7613F0, &qword_1D33E5430);
  v2 = *v0;
  v3 = sub_1D33DF104();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1D334CD04(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1D3328D20(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1D334CCF4(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D339A4C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761418, &qword_1D33E2970);
  v2 = *v0;
  v3 = sub_1D33DF104();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D339A614()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761410, &qword_1D33E2968);
  v2 = *v0;
  v3 = sub_1D33DF104();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1D339A780(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D33DEE14();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D334A9E0(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_1D33DEDB4();
    }

    else
    {
      v3 = sub_1D33DED74();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_1D33D3784(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 value];
        v14 = sub_1D33DE7B4();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D334A9E0((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_1D33DEDD4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761A80, &unk_1D33E3F60);
          v6 = sub_1D33DEA84();
          sub_1D33DEE84();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_1D335665C(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1D335665C(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_1D335665C(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1D339AAE8(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D33DEE14();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x1E69E7CC0];
    sub_1D33DEFA4();
    result = sub_1D33DEDB4();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x1E69E7CC0];
  sub_1D33DEFA4();
  result = sub_1D33DED74();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_1D33D37AC(v26, v27, v28, a1);
    v13 = v12;
    v14 = [v12 handle];

    sub_1D33DEF84();
    sub_1D33DEFB4();
    sub_1D33DEFC4();
    result = sub_1D33DEF94();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_1D33DEDD4())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC761E50, &qword_1D33E3F58);
      v7 = sub_1D33DEA84();
      sub_1D33DEE84();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_1D335665C(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1D335665C(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_1D335665C(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void sub_1D339AE00(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1D33DDC44();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[2];
  v12 = [a1 url];
  sub_1D33DDC24();

  v13 = sub_1D33DDC04();
  v14 = [objc_opt_self() conversationLinkForURL_];

  (*(v6 + 8))(v8, v5);
  if (!v14)
  {
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;

    v20 = v10;
LABEL_8:

    return;
  }

  v15 = v10;
  if (![v15 isEquivalentToConversationLink_])
  {

    *a2 = v9;
    a2[1] = v15;
    a2[2] = v11;

    v21 = v15;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D33E1DE0;
  *(inited + 32) = a1;

  v17 = a1;
  v18 = sub_1D33A116C(inited, v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (qword_1EDEC0138 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDEC0110;

  *a2 = v19;
  a2[1] = v15;
  a2[2] = v18;
}

void *sub_1D339B060(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D38B75D0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

CallsAppServices::LinkSource_optional __swiftcall LinkSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D33DF144();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LinkSource.rawValue.getter()
{
  v1 = 0x64657469766E69;
  if (*v0 != 1)
  {
    v1 = 0x6574736576726168;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x43796C6C61636F6CLL;
  }
}

uint64_t sub_1D339B23C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64657469766E69;
  if (v2 != 1)
  {
    v4 = 0x6574736576726168;
    v3 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x43796C6C61636F6CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEE00646574616572;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64657469766E69;
  if (*a2 != 1)
  {
    v8 = 0x6574736576726168;
    v7 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x43796C6C61636F6CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEE00646574616572;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D33DF1B4();
  }

  return v11 & 1;
}

void sub_1D339B35C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00646574616572;
  v4 = 0xE700000000000000;
  v5 = 0x64657469766E69;
  if (v2 != 1)
  {
    v5 = 0x6574736576726168;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x43796C6C61636F6CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D339B3CC()
{
  sub_1D33DF284();
  sub_1D33DE824();

  return sub_1D33DF2C4();
}

uint64_t sub_1D339B480(uint64_t a1)
{
  sub_1D33DE824();
}

uint64_t sub_1D339B520(uint64_t a1)
{
  sub_1D33DF284();
  sub_1D33DE824();

  return sub_1D33DF2C4();
}

id ConversationLink.prevailingSuggestion.getter()
{
  v1 = 0;
  v69[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D33DDD34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D33DDC44();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  if ((v10 & 0xC000000000000001) != 0)
  {
    if (sub_1D33DEE14() <= 0)
    {
      return 0;
    }

    v64 = 0;
    v65 = v5;
    v66 = v3;
    v61 = v2;
    v11 = MEMORY[0x1E69E7CD0];
    v69[0] = MEMORY[0x1E69E7CD0];

    v10 = sub_1D33DEDC4();
    v12 = sub_1D33DEE54();
    if (!v12)
    {
LABEL_21:

      goto LABEL_40;
    }

    v13 = v12;
    v1 = sub_1D331DA18(0, &qword_1EC761170, 0x1E69992A8);
    v14 = v13;
    v15 = (v7 + 1);
LABEL_7:
    v67 = v14;
    swift_dynamicCast();
    v16 = [v68[0] url];
    sub_1D33DDC24();

    v17 = sub_1D33DDC04();
    v18 = [objc_opt_self() conversationLinkForURL_];

    (*v15)(v9, v6);
    if (!v18)
    {

      goto LABEL_6;
    }

    v7 = v68[0];
    v19 = *(v11 + 16);
    if (*(v11 + 24) <= v19)
    {
      sub_1D3364384(v19 + 1);
    }

    v11 = v69[0];
    v20 = v7;
    v21 = sub_1D33DEC64();
    v22 = v11 + 56;
    v23 = -1 << *(v11 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v11 + 56 + 8 * (v24 >> 6))) != 0)
    {
      v26 = __clz(__rbit64((-1 << v24) & ~*(v11 + 56 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_20;
    }

    v27 = 0;
    v28 = (63 - v23) >> 6;
    while (++v25 != v28 || (v27 & 1) == 0)
    {
      v29 = v25 == v28;
      if (v25 == v28)
      {
        v25 = 0;
      }

      v27 |= v29;
      v30 = *(v22 + 8 * v25);
      if (v30 != -1)
      {
        v26 = __clz(__rbit64(~v30)) + (v25 << 6);
LABEL_20:
        *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        *(*(v11 + 48) + 8 * v26) = v7;
        ++*(v11 + 16);
LABEL_6:
        v14 = sub_1D33DEE54();
        if (!v14)
        {
          goto LABEL_21;
        }

        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
  }

  else
  {
    if (!*(v10 + 16))
    {
      return 0;
    }

    v61 = v2;
    v31 = *(v10 + 32);
    v32 = v31 & 0x3F;
    v15 = ((1 << v31) + 63) >> 6;
    v20 = (8 * v15);

    v65 = v5;
    v66 = v3;
    if (v32 <= 0xD)
    {
      goto LABEL_24;
    }
  }

  if (!swift_stdlib_isStackAllocationSafe())
  {
    v56 = swift_slowAlloc();
    v11 = sub_1D339E750(v56, v15, v10, sub_1D339BD88, 0);
    v64 = v1;

    MEMORY[0x1D38B81C0](v56, -1, -1);
    goto LABEL_40;
  }

LABEL_24:
  v62 = v6;
  v64 = v1;
  v57[1] = v57;
  v58 = v15;
  MEMORY[0x1EEE9AC00](v33);
  v59 = v57 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v59, v20);
  v60 = 0;
  v34 = 0;
  v35 = 1 << *(v10 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v1 = v36 & *(v10 + 56);
  v15 = (v35 + 63) >> 6;
  v63 = v7 + 1;
  while (1)
  {
    if (!v1)
    {
      v38 = v34;
      while (1)
      {
        v34 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_56;
        }

        if (v34 >= v15)
        {
          break;
        }

        v39 = *(v10 + 56 + 8 * v34);
        ++v38;
        if (v39)
        {
          v37 = __clz(__rbit64(v39));
          v1 = (v39 - 1) & v39;
          goto LABEL_34;
        }
      }

      v11 = sub_1D3366F14(v59, v58, v60, v10);
LABEL_40:
      v45 = v65;
      v44 = v66;
      v46 = v64;
      if ((v11 & 0xC000000000000001) != 0)
      {
        if (sub_1D33DEE14() >= 2)
        {
          goto LABEL_42;
        }
      }

      else if (*(v11 + 16) >= 2)
      {
LABEL_42:
        v69[0] = sub_1D33A5A94(v11);
        sub_1D339E87C(v69);
        if (v46)
        {

          __break(1u);
          return result;
        }

        v47 = v69[0];
        v48 = sub_1D33DDD04();
        MEMORY[0x1EEE9AC00](v48);
        v57[-2] = v45;
        v49 = sub_1D339B060(sub_1D339E8F8, &v57[-4], v47);
        if (v49)
        {
          v50 = v49;

          v51 = v61;
LABEL_62:
          (*(v44 + 8))(v45, v51);
          return v50;
        }

        v51 = v61;
        if ((v47 & 0x8000000000000000) != 0 || (v47 & 0x4000000000000000) != 0)
        {
          v53 = sub_1D33DEE14();
          if (v53)
          {
LABEL_50:
            v42 = __OFSUB__(v53, 1);
            v54 = v53 - 1;
            if (v42)
            {
              __break(1u);
            }

            else if ((v47 & 0xC000000000000001) == 0)
            {
              if ((v54 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v54 < *(v47 + 16))
              {
                v55 = *(v47 + 8 * v54 + 32);
LABEL_55:
                v50 = v55;

                goto LABEL_62;
              }

              __break(1u);
            }

            v55 = MEMORY[0x1D38B75D0](v54, v47);
            goto LABEL_55;
          }
        }

        else
        {
          v53 = *(v47 + 16);
          if (v53)
          {
            goto LABEL_50;
          }
        }

        v50 = 0;
        goto LABEL_62;
      }

      v52 = sub_1D335DC64(v11);

      return v52;
    }

    v37 = __clz(__rbit64(v1));
    v1 &= v1 - 1;
LABEL_34:
    v6 = v37 | (v34 << 6);
    v7 = *(*(v10 + 48) + 8 * v6);
    v40 = [v7 url];
    sub_1D33DDC24();

    v41 = sub_1D33DDC04();
    v20 = [objc_opt_self() conversationLinkForURL_];

    (*v63)(v9, v62);
    if (v20)
    {

      *&v59[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
      v42 = __OFADD__(v60++, 1);
      if (v42)
      {
        break;
      }
    }
  }

  __break(1u);
  return 0;
}

BOOL sub_1D339BD88(id *a1)
{
  v2 = sub_1D33DDC44();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*a1 url];
  sub_1D33DDC24();

  v7 = sub_1D33DDC04();
  v8 = [objc_opt_self() conversationLinkForURL_];

  (*(v3 + 8))(v5, v2);
  if (v8)
  {
  }

  return v8 != 0;
}

uint64_t sub_1D339BEC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D33DDD34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = [v2 documentDate];
  if (v11)
  {
    v12 = v11;
    sub_1D33DDCF4();

    v13 = *(v5 + 32);
    v13(v10, v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
    return (v13)(a1, v10, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
    v15 = [v2 receivedAt];
    sub_1D33DDCF4();

    result = (*(v5 + 48))(v10, 1, v4);
    if (result != 1)
    {
      return sub_1D33A1104(v10);
    }
  }

  return result;
}

uint64_t sub_1D339C0C4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - v3;
  v5 = sub_1D33DDD34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D339C28C(v4);
  v9 = *(v6 + 48);
  if (v9(v4, 1, v5) == 1)
  {
    sub_1D339BEC0(v8);
    if (v9(v4, 1, v5) != 1)
    {
      sub_1D33A1104(v4);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  v10 = sub_1D33DDCA4();
  (*(v6 + 8))(v8, v5);
  return v10 & 1;
}

uint64_t sub_1D339C28C@<X0>(char *a1@<X8>)
{
  v3 = sub_1D33DDD34();
  v15 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = [v1 documentDate];
  if (v9)
  {
    v10 = v9;
    sub_1D33DDCF4();

    v11 = *(v15 + 32);
    v11(v8, v6, v3);
    if (([v1 flags] & 0x40) != 0)
    {
      v11(a1, v8, v3);
    }

    else
    {
      if (([v1 flags] & 0x20) == 0)
      {
        (*(v15 + 8))(v8, v3);
        return (*(v15 + 56))(a1, 1, 1, v3);
      }

      [v1 documentTimeInterval];
      sub_1D33DDC84();
      (*(v15 + 8))(v8, v3);
    }

    return (*(v15 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v13 = *(v15 + 56);

    return v13(a1, 1, 1, v3);
  }
}

BOOL ConversationLink.hasSuggestions.getter()
{
  v1 = *(v0 + 16);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D33DEE14();
  }

  else
  {
    v2 = *(v1 + 16);
  }

  return v2 > 0;
}

id ConversationLink.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = ConversationLink.prevailingSuggestion.getter();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 documentTitle];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D33DE7B4();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        return v8;
      }
    }

    else
    {
    }
  }

  v13 = [v2 displayName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D33DE7B4();
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      return v15;
    }
  }

  if (([v2 isLocallyCreated] & 1) == 0)
  {
    v19 = ConversationLink.prevailingSuggestion.getter();
    if (v19)
    {
      v20 = v19;
      v21 = sub_1D339C744(v1);
      v23 = v22;

      if (v23)
      {
        return v21;
      }
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    if (sub_1D33DEE14() >= 1)
    {
LABEL_21:
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass_];
      v26 = sub_1D33DDB74();

      return v26;
    }
  }

  else if (*(v3 + 16) >= 1)
  {
    goto LABEL_21;
  }

  return 0;
}

id sub_1D339C744(uint64_t a1)
{
  result = [v1 receivedFromHandle];
  if (result)
  {
    v3 = result;
    v4 = sub_1D33DE7B4();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = [objc_opt_self() normalizedHandleWithDestinationID_];

      if (v8)
      {

        ParticipantContactDetails.init(handle:cache:)(v8, v11);
        v9 = v11[0];
        v10 = v11[1];

        return v10;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t ConversationLink.callHistoryTitle.getter()
{
  result = ConversationLink.displayName.getter();
  if (v1)
  {
    v2 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v2 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v2)
    {
      return result;
    }
  }

  result = ConversationLink.prevailingSuggestion.getter();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [result documentTitle];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D33DE7B4();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      return v6;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t ConversationLink.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v16 = *v1;
  v15 = *(v1 + 1);
  v17 = v15;
  v6 = ConversationLink.prevailingSuggestion.getter();
  if (v6)
  {
    v7 = v6;
    sub_1D339BEC0(a1);

    v8 = sub_1D33DDD34();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 0, 1, v8);
  }

  else
  {
    v11 = [v15 creationDate];
    if (v11)
    {
      v12 = v11;
      sub_1D33DDCF4();

      v13 = sub_1D33DDD34();
      (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
    }

    else
    {
      v14 = sub_1D33DDD34();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    }

    return sub_1D339E918(v5, a1);
  }
}

char *ConversationLink.linkSources.getter()
{
  v1 = *(v0 + 16);
  if (![*(v0 + 8) isLocallyCreated])
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 0xC000000000000001) != 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (*(v1 + 16) >= 1)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  v2 = sub_1D3359920(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1D3359920((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v2[v4 + 32] = 0;
  if ((v1 & 0xC000000000000001) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (sub_1D33DEE14() >= 1)
  {
LABEL_6:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D3359920(0, *(v2 + 2) + 1, 1, v2);
    }

    v6 = *(v2 + 2);
    v5 = *(v2 + 3);
    v7 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      v2 = sub_1D3359920((v5 > 1), v6 + 1, 1, v2);
    }

    v8 = 2;
    goto LABEL_11;
  }

LABEL_14:
  if (*(v2 + 2))
  {
    return v2;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D3359920(0, 1, 1, v2);
  }

  v6 = *(v2 + 2);
  v10 = *(v2 + 3);
  v7 = v6 + 1;
  if (v6 >= v10 >> 1)
  {
    v11 = sub_1D3359920((v10 > 1), v6 + 1, 1, v2);
    v8 = 1;
    v2 = v11;
  }

  else
  {
    v8 = 1;
  }

LABEL_11:
  *(v2 + 2) = v7;
  v2[v6 + 32] = v8;
  return v2;
}

id ConversationLink.uniqueId.getter()
{
  v1 = sub_1D33DDC44();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = v0[1];
  v7 = v0[2];
  v48 = *v0;
  v49 = v5;
  v50 = v7;
  v8 = ConversationLink.linkSources.getter();
  v9 = *(v8 + 2);
  if (v9)
  {
    v39 = v7;
    v40 = v6;
    v41 = v5;
    v42 = v4;
    v43 = v2;
    v44 = v1;
    v51 = MEMORY[0x1E69E7CC0];
    v45 = v8;
    sub_1D334A9E0(0, v9, 0);
    v10 = v45;
    v11 = 32;
    v12 = 0xEE00646574616572;
    v13 = v51;
    do
    {
      v14 = v10[v11];
      if (v14 == 1)
      {
        v15 = 0x64657469766E69;
      }

      else
      {
        v15 = 0x6574736576726168;
      }

      if (v14 == 1)
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v16 = 0xE900000000000064;
      }

      if (v10[v11])
      {
        v17 = v15;
      }

      else
      {
        v17 = 0x43796C6C61636F6CLL;
      }

      if (v10[v11])
      {
        v18 = v16;
      }

      else
      {
        v18 = v12;
      }

      v51 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        v22 = v12;
        sub_1D334A9E0((v19 > 1), v20 + 1, 1);
        v12 = v22;
        v10 = v45;
        v13 = v51;
      }

      *(v13 + 16) = v20 + 1;
      v21 = v13 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      ++v11;
      --v9;
    }

    while (v9);

    v2 = v43;
    v1 = v44;
    v5 = v41;
    v4 = v42;
    v7 = v39;
    v6 = v40;
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v48 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
  sub_1D339E988();
  v23 = sub_1D33DE764();
  v25 = v24;

  v51 = v23;
  v52 = v25;
  v48 = v6;
  v49 = v5;
  v50 = v7;
  v26 = ConversationLink.prevailingSuggestion.getter();
  if (v26)
  {
    v27 = v26;
    v28 = [v26 documentIdentifier];

    v29 = sub_1D33DE7B4();
    v31 = v30;

    MEMORY[0x1D38B6ED0](v29, v31);
  }

  v48 = v6;
  v49 = v5;
  v50 = v7;
  v32 = ConversationLink.displayName.getter();
  if (v33)
  {
    MEMORY[0x1D38B6ED0](v32);
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  MEMORY[0x1D38B6ED0](v51, v52);
  MEMORY[0x1D38B6ED0](45, 0xE100000000000000);
  v48 = v6;
  v49 = v5;
  v50 = v7;
  sub_1D339D05C();
  sub_1D33DEA34();
  MEMORY[0x1D38B6ED0](0x2D6B6E696C2DLL, 0xE600000000000000);
  result = [v5 URL];
  if (result)
  {
    v35 = result;

    sub_1D33DDC24();

    v36 = sub_1D33DDBF4();
    v38 = v37;
    (*(v2 + 8))(v4, v1);
    MEMORY[0x1D38B6ED0](v36, v38);

    return v46;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D339D05C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_1D33DDD34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v15 = *v0;
  v16 = v9;
  v17 = v10;
  v11 = ConversationLink.prevailingSuggestion.getter();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D339D348();

    if (v13)
    {
      v15 = v8;
      v16 = v9;
      v17 = v10;
      ConversationLink.date.getter(v3);
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        sub_1D33A1104(v3);
      }

      else
      {
        (*(v5 + 32))(v7, v3, v4);
        sub_1D33DDC74();
        (*(v5 + 8))(v7, v4);
      }
    }
  }
}

void ConversationLink.endDate.getter(char *a1@<X8>)
{
  v2 = ConversationLink.prevailingSuggestion.getter();
  if (v2)
  {
    v5 = v2;
    sub_1D339C28C(a1);
  }

  else
  {
    v3 = sub_1D33DDD34();
    v4 = *(*(v3 - 8) + 56);

    v4(a1, 1, 1, v3);
  }
}

id ConversationLink.hasEventDate.getter()
{
  result = ConversationLink.prevailingSuggestion.getter();
  if (result)
  {
    v1 = result;
    v2 = sub_1D339D348();

    return (v2 & 1);
  }

  return result;
}

uint64_t sub_1D339D348()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = [v0 documentDate];
  if (v4)
  {
    v5 = v4;
    sub_1D33DDCF4();

    v6 = sub_1D33DDD34();
    v7 = 1;
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    sub_1D33A1104(v3);
    if (([v0 flags] & 0x20) == 0 && (objc_msgSend(v0, sel_flags) & 0x80) == 0)
    {
      return ([v0 flags] >> 6) & 1;
    }
  }

  else
  {
    v8 = sub_1D33DDD34();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    sub_1D33A1104(v3);
    return 0;
  }

  return v7;
}

uint64_t ConversationLink.invitedMemberHandles.getter()
{
  v1 = [*(v0 + 8) invitedMemberHandles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v3 = sub_1D33DEA54();

  return v3;
}

uint64_t sub_1D339D5C0@<X0>(SEL *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = [*(v4 + 8) *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

uint64_t ConversationLink.hashValue.getter()
{
  sub_1D33DF284();
  sub_1D33DEC84();
  return sub_1D33DF2C4();
}

uint64_t sub_1D339D738()
{
  sub_1D33DF284();
  sub_1D33DEC84();
  return sub_1D33DF2C4();
}

uint64_t sub_1D339D7A0(uint64_t a1)
{
  sub_1D33DF284();
  sub_1D33DEC84();
  return sub_1D33DF2C4();
}

uint64_t static ConversationLink.titleUsingLink(_:in:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v12[3] = *a1;
  v12[4] = v4;
  v12[5] = v5;
  result = ConversationLink.displayName.getter();
  if (!v7)
  {
    v12[0] = v3;
    v12[1] = v4;
    v12[2] = v5;
    result = sub_1D33A09DC(v12, a2);
    if (!v8)
    {
      if (a2)
      {
        v9 = [a2 remoteMembers];
        sub_1D331DA18(0, &unk_1EC761E40, 0x1E69D8B80);
        sub_1D33565AC(&unk_1EC7619C0, &unk_1EC761E40, 0x1E69D8B80);
        v10 = sub_1D33DEA54();

        a2 = sub_1D339AAE8(v10);
      }

      v11 = sub_1D33A0780(a2);

      return v11;
    }
  }

  return result;
}

unint64_t sub_1D339D948(uint64_t a1, uint64_t a2)
{
  sub_1D33DEC64();
  result = sub_1D33DEDA4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D339D9CC(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1D339DDC8(a1, a2);
  }

  v3 = MEMORY[0x1E69E7CD0];
  v40 = MEMORY[0x1E69E7CD0];
  sub_1D33DEDC4();
  if (sub_1D33DEE54())
  {
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    do
    {
      swift_dynamicCast();
      v10 = v2;
      v11 = *v2;

      v12 = [v39 value];
      v13 = sub_1D33DE7B4();
      v15 = v14;

      if (*(v11 + 16) && (sub_1D33DF284(), sub_1D33DE824(), v16 = sub_1D33DF2C4(), v17 = -1 << *(v11 + 32), v18 = v16 & ~v17, ((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
      {
        v19 = ~v17;
        while (1)
        {
          v20 = (*(v11 + 48) + 16 * v18);
          v21 = *v20 == v13 && v20[1] == v15;
          if (v21 || (sub_1D33DF1B4() & 1) != 0)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v2 = v10;
      }

      else
      {
LABEL_17:

        v2 = v10;
        v22 = *v10;

        v23 = [v39 normalizedValue];
        if (v23)
        {
          v24 = v23;
          v25 = sub_1D33DE7B4();
          v27 = v26;

          if (!*(v22 + 16))
          {
            goto LABEL_29;
          }
        }

        else
        {
          v25 = 0;
          v27 = 0xE000000000000000;
          if (!*(v22 + 16))
          {
            goto LABEL_29;
          }
        }

        sub_1D33DF284();
        sub_1D33DE824();
        v28 = sub_1D33DF2C4();
        v29 = -1 << *(v22 + 32);
        v30 = v28 & ~v29;
        if (((*(v22 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
LABEL_29:

          v34 = *(v3 + 16);
          if (*(v3 + 24) <= v34)
          {
            sub_1D3364D30(v34 + 1);
          }

          v3 = v40;
          result = sub_1D33DEC64();
          v5 = v40 + 56;
          v6 = -1 << *(v40 + 32);
          v7 = result & ~v6;
          v8 = v7 >> 6;
          if (((-1 << v7) & ~*(v40 + 56 + 8 * (v7 >> 6))) != 0)
          {
            v9 = __clz(__rbit64((-1 << v7) & ~*(v40 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v35 = 0;
            v36 = (63 - v6) >> 6;
            do
            {
              if (++v8 == v36 && (v35 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v37 = v8 == v36;
              if (v8 == v36)
              {
                v8 = 0;
              }

              v35 |= v37;
              v38 = *(v5 + 8 * v8);
            }

            while (v38 == -1);
            v9 = __clz(__rbit64(~v38)) + (v8 << 6);
          }

          *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
          *(*(v40 + 48) + 8 * v9) = v39;
          ++*(v40 + 16);
          continue;
        }

        v31 = ~v29;
        while (1)
        {
          v32 = (*(v22 + 48) + 16 * v30);
          v33 = *v32 == v25 && v32[1] == v27;
          if (v33 || (sub_1D33DF1B4() & 1) != 0)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v22 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_29;
          }
        }
      }
    }

    while (sub_1D33DEE54());
  }

  return v3;
}

void *sub_1D339DDC8(uint64_t a1, uint64_t *a2)
{
  v51 = a2;
  v3 = a1;
  v54 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_41;
  }

  while (2)
  {
    v45 = v5;
    v46 = v2;
    v44 = &v44;
    MEMORY[0x1EEE9AC00](a1);
    v47 = &v44 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v47, v6);
    v48 = 0;
    v49 = v3;
    v7 = 0;
    v5 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_14:
      v15 = v12 | (v7 << 6);
      v16 = *(v3 + 48);
      v50 = v15;
      v17 = *v51;
      v2 = *(v16 + 8 * v15);

      v53 = v2;
      v18 = [v2 value];
      v19 = sub_1D33DE7B4();
      v21 = v20;

      if (*(v17 + 16) && (sub_1D33DF284(), sub_1D33DE824(), v22 = sub_1D33DF2C4(), v23 = -1 << *(v17 + 32), v24 = v22 & ~v23, ((*(v17 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = (*(v17 + 48) + 16 * v24);
          v27 = *v26 == v19 && v26[1] == v21;
          if (v27 || (sub_1D33DF1B4() & 1) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v17 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

LABEL_6:
        v10 = v52;

        v3 = v49;
      }

      else
      {
LABEL_23:

        v28 = *v51;

        v29 = [v53 normalizedValue];
        if (v29)
        {
          v30 = v29;
          v31 = sub_1D33DE7B4();
          v33 = v32;

          if (!*(v28 + 16))
          {
            goto LABEL_35;
          }
        }

        else
        {
          v31 = 0;
          v33 = 0xE000000000000000;
          if (!*(v28 + 16))
          {
            goto LABEL_35;
          }
        }

        sub_1D33DF284();
        sub_1D33DE824();
        v34 = sub_1D33DF2C4();
        v35 = -1 << *(v28 + 32);
        v36 = v34 & ~v35;
        if ((*(v28 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
        {
          v37 = ~v35;
          do
          {
            v38 = (*(v28 + 48) + 16 * v36);
            v39 = *v38 == v31 && v38[1] == v33;
            if (v39 || (sub_1D33DF1B4() & 1) != 0)
            {
              goto LABEL_6;
            }

            v36 = (v36 + 1) & v37;
          }

          while (((*(v28 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) != 0);
        }

LABEL_35:

        v3 = v49;
        *&v47[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        v40 = __OFADD__(v48++, 1);
        v10 = v52;
        if (v40)
        {
          __break(1u);
          return sub_1D3366F28(v47, v45, v48, v3);
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_1D3366F28(v47, v45, v48, v3);
      }

      v14 = *(v5 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_41:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v42 = swift_slowAlloc();
  v43 = sub_1D339E7F4(v42, v5, v3, v51);

  MEMORY[0x1D38B81C0](v42, -1, -1);
  return v43;
}

void sub_1D339E244(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v44 = (v8 - 1) & v8;
LABEL_13:
    v41 = v10 | (v4 << 6);
    v13 = *a4;
    v14 = *(*(a3 + 48) + 8 * v41);

    v15 = [v14 value];
    v16 = sub_1D33DE7B4();
    v18 = v17;

    if (*(v13 + 16) && (sub_1D33DF284(), sub_1D33DE824(), v19 = sub_1D33DF2C4(), v20 = -1 << *(v13 + 32), v21 = v19 & ~v20, ((*(v13 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = (*(v13 + 48) + 16 * v21);
        v24 = *v23 == v16 && v23[1] == v18;
        if (v24 || (sub_1D33DF1B4() & 1) != 0)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v13 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

LABEL_5:
      v8 = v44;
    }

    else
    {
LABEL_22:

      v25 = *a4;

      v26 = [v14 normalizedValue];
      if (v26)
      {
        v27 = v26;
        v28 = sub_1D33DE7B4();
        v30 = v29;

        if (!*(v25 + 16))
        {
          goto LABEL_34;
        }
      }

      else
      {
        v28 = 0;
        v30 = 0xE000000000000000;
        if (!*(v25 + 16))
        {
          goto LABEL_34;
        }
      }

      sub_1D33DF284();
      sub_1D33DE824();
      v31 = sub_1D33DF2C4();
      v32 = -1 << *(v25 + 32);
      v33 = v31 & ~v32;
      if ((*(v25 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
      {
        v34 = ~v32;
        do
        {
          v35 = (*(v25 + 48) + 16 * v33);
          v36 = *v35 == v28 && v35[1] == v30;
          if (v36 || (sub_1D33DF1B4() & 1) != 0)
          {
            goto LABEL_5;
          }

          v33 = (v33 + 1) & v34;
        }

        while (((*(v25 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0);
      }

LABEL_34:

      *(a1 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v37 = __OFADD__(v40++, 1);
      v8 = v44;
      if (v37)
      {
        __break(1u);
LABEL_37:

        sub_1D3366F28(a1, a2, v40, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_37;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v44 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1D339E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        a6(a1, a2, v23, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1D339E750(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_1D339E5DC(result, a2, a3, a4, a5, sub_1D3366F14);
    v11 = v10;

    return v11;
  }

  return result;
}

void *sub_1D339E7F4(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1D339E244(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1D339E87C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D33AB4EC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D339E9EC(v6);
  return sub_1D33DEF94();
}

uint64_t sub_1D339E918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D339E988()
{
  result = qword_1EDEBEF28;
  if (!qword_1EDEBEF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7616B0, &qword_1D33E3DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBEF28);
  }

  return result;
}

void sub_1D339E9EC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1D33DF164();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D331DA18(0, &qword_1EC761170, 0x1E69992A8);
        v6 = sub_1D33DE8E4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D339EFBC(v8, v9, a1, v4);
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
    sub_1D339EB00(0, v2, 1, a1);
  }
}

void sub_1D339EB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v13 = sub_1D33DDD34();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v57 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v61 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v48 - v19;
  v49 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v60 = (v18 + 32);
    v63 = (v18 + 56);
    v54 = (v18 + 48);
    v55 = (v18 + 8);
    v58 = v20;
    v21 = v20 + 8 * a3 - 8;
    v22 = a1 - a3;
    v56 = v12;
LABEL_5:
    v51 = v21;
    v52 = a3;
    v23 = *(v58 + 8 * a3);
    v50 = v22;
    v24 = v53;
    while (1)
    {
      v25 = *v21;
      v26 = v23;
      v27 = v25;
      v28 = [v26 documentDate];
      v62 = v26;
      if (v28)
      {
        v29 = v28;
        v30 = v61;
        sub_1D33DDCF4();

        v31 = *v60;
        (*v60)(v12, v30, v13);
        v32 = *v63;
        (*v63)(v12, 0, 1, v13);
        v31(v24, v12, v13);
      }

      else
      {
        v32 = *v63;
        (*v63)(v12, 1, 1, v13);
        v33 = [v26 receivedAt];
        sub_1D33DDCF4();

        if ((*v54)(v12, 1, v13) != 1)
        {
          sub_1D33A1104(v12);
        }
      }

      v34 = [v27 documentDate];
      if (v34)
      {
        v35 = v61;
        v36 = v34;
        sub_1D33DDCF4();

        v37 = v59;
        v38 = *v60;
        v39 = v35;
        v24 = v53;
        (*v60)(v59, v39, v13);
        v32(v37, 0, 1, v13);
        v40 = v57;
        v38(v57, v37, v13);
      }

      else
      {
        v41 = v59;
        v32(v59, 1, 1, v13);
        v42 = [v27 receivedAt];
        v40 = v57;
        sub_1D33DDCF4();

        if ((*v54)(v41, 1, v13) != 1)
        {
          sub_1D33A1104(v59);
        }
      }

      v43 = v40;
      v44 = sub_1D33DDD14();
      v45 = *v55;
      (*v55)(v43, v13);
      v45(v24, v13);

      v12 = v56;
      if (v44 != -1)
      {
LABEL_4:
        a3 = v52 + 1;
        v21 = v51 + 8;
        v22 = v50 - 1;
        if (v52 + 1 == v49)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v58)
      {
        break;
      }

      v46 = *v21;
      v23 = *(v21 + 8);
      *v21 = v23;
      *(v21 + 8) = v46;
      v21 -= 8;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D339EFBC(id **a1, uint64_t a2, id *a3, uint64_t a4)
{
  v5 = v4;
  v158 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v175 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v154 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v167 = &v154 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v154 - v16;
  v18 = sub_1D33DDD34();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v171 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v179 = &v154 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v169 = &v154 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v156 = &v154 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v178 = &v154 - v30;
  v168 = a3;
  v31 = a3[1];
  if (v31 >= 1)
  {
    v162 = v29;
    v163 = v17;
    v155 = a4;
    v32 = 0;
    v173 = (v28 + 8);
    v177 = (v28 + 32);
    v180 = (v28 + 56);
    v170 = (v28 + 48);
    v33 = MEMORY[0x1E69E7CC0];
    v174 = v13;
    while (1)
    {
      v34 = v32 + 1;
      v166 = v33;
      v159 = v32;
      if (v32 + 1 < v31)
      {
        v165 = v31;
        v157 = v5;
        v35 = *v168;
        v36 = *(*v168 + v34);
        v161 = 8 * v32;
        v37 = &v35[8 * v32];
        v38 = *v37;
        a3 = v37 + 2;
        v176 = v36;
        v39 = v38;
        v40 = v178;
        sub_1D339BEC0(v178);
        v41 = v156;
        sub_1D339BEC0(v156);
        v172 = sub_1D33DDD14();
        v42 = *v173;
        (*v173)(v41, v18);
        v164 = v42;
        v42(v40, v18);

        v43 = v32 + 2;
        while (1)
        {
          v54 = v165;
          if (v165 == v43)
          {
            break;
          }

          v55 = *(a3 - 1);
          v56 = *a3;
          v57 = v55;
          v58 = [v56 documentDate];
          v176 = v56;
          if (v58)
          {
            v59 = v178;
            v60 = v58;
            sub_1D33DDCF4();

            v61 = *v177;
            v62 = v163;
            (*v177)(v163, v59, v18);
            v63 = *v180;
            (*v180)(v62, 0, 1, v18);
            v61(v169, v62, v18);
          }

          else
          {
            v63 = *v180;
            v64 = v163;
            (*v180)(v163, 1, 1, v18);
            v65 = [v56 receivedAt];
            sub_1D33DDCF4();

            if ((*v170)(v64, 1, v18) != 1)
            {
              sub_1D33A1104(v64);
            }
          }

          v66 = [v57 documentDate];
          if (v66)
          {
            v44 = v178;
            v45 = v66;
            sub_1D33DDCF4();

            v46 = *v177;
            v47 = v167;
            (*v177)(v167, v44, v18);
            v63(v47, 0, 1, v18);
            v48 = v162;
            v46(v162, v47, v18);
          }

          else
          {
            v67 = v167;
            v63(v167, 1, 1, v18);
            v68 = [v57 receivedAt];
            v48 = v162;
            sub_1D33DDCF4();

            if ((*v170)(v67, 1, v18) != 1)
            {
              sub_1D33A1104(v167);
            }
          }

          v49 = v172 == -1;
          v50 = v169;
          v51 = sub_1D33DDD14();
          v52 = v48;
          v53 = v164;
          v164(v52, v18);
          v53(v50, v18);

          ++v43;
          ++a3;
          v33 = v166;
          if (((v49 ^ (v51 != -1)) & 1) == 0)
          {
            v54 = v43 - 1;
            break;
          }
        }

        v69 = v161;
        v5 = v157;
        v13 = v174;
        if (v172 == -1)
        {
          v70 = v159;
          if (v54 < v159)
          {
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            return;
          }

          if (v159 < v54)
          {
            v71 = 8 * v54 - 8;
            v72 = v54;
            do
            {
              if (v70 != --v72)
              {
                v74 = *v168;
                if (!*v168)
                {
                  goto LABEL_144;
                }

                v73 = *&v74[v69];
                *&v74[v69] = *&v74[v71];
                *&v74[v71] = v73;
              }

              ++v70;
              v71 -= 8;
              v69 += 8;
            }

            while (v70 < v72);
          }
        }

        v34 = v54;
      }

      v75 = v168[1];
      if (v34 >= v75)
      {
        break;
      }

      if (__OFSUB__(v34, v159))
      {
        goto LABEL_136;
      }

      v32 = v34;
      if (v34 - v159 >= v155)
      {
        goto LABEL_54;
      }

      v76 = (v159 + v155);
      if (__OFADD__(v159, v155))
      {
        goto LABEL_137;
      }

      if (v76 >= v75)
      {
        v76 = v168[1];
      }

      if (v76 < v159)
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v77 = v159;
      if (v34 != v76)
      {
        v160 = v76;
        v157 = v5;
        v172 = *v168;
        v78 = v172 + 8 * v34 - 8;
        v79 = (v159 - v34);
        v80 = v34;
        do
        {
          v164 = v78;
          v165 = v80;
          v81 = *(v172 + 8 * v80);
          v161 = v79;
          while (1)
          {
            v82 = *v78;
            a3 = v81;
            v83 = v82;
            v84 = [a3 documentDate];
            if (v84)
            {
              v85 = v178;
              v86 = v84;
              sub_1D33DDCF4();

              v87 = *v177;
              (*v177)(v13, v85, v18);
              v88 = *v180;
              (*v180)(v13, 0, 1, v18);
              v87(v179, v13, v18);
            }

            else
            {
              v88 = *v180;
              (*v180)(v13, 1, 1, v18);
              v89 = [a3 receivedAt];
              sub_1D33DDCF4();

              if ((*v170)(v13, 1, v18) != 1)
              {
                sub_1D33A1104(v13);
              }
            }

            v90 = [v83 documentDate];
            if (v90)
            {
              v91 = v178;
              v92 = v90;
              sub_1D33DDCF4();

              v176 = v79;
              v93 = *v177;
              v94 = v175;
              (*v177)(v175, v91, v18);
              v88(v94, 0, 1, v18);
              v95 = v171;
              v93(v171, v94, v18);
              v79 = v176;
            }

            else
            {
              v96 = v175;
              v88(v175, 1, 1, v18);
              v97 = [v83 receivedAt];
              v95 = v171;
              sub_1D33DDCF4();

              if ((*v170)(v96, 1, v18) != 1)
              {
                sub_1D33A1104(v175);
              }
            }

            v98 = v179;
            v99 = sub_1D33DDD14();
            v100 = v95;
            v101 = *v173;
            (*v173)(v100, v18);
            v101(v98, v18);

            if (v99 != -1)
            {
              break;
            }

            v13 = v174;
            if (!v172)
            {
              goto LABEL_141;
            }

            v102 = *v78;
            v81 = *(v78 + 8);
            *v78 = v81;
            *(v78 + 8) = v102;
            v78 -= 8;
            if (__CFADD__(v79++, 1))
            {
              goto LABEL_38;
            }
          }

          v13 = v174;
LABEL_38:
          v80 = v165 + 1;
          v78 = v164 + 8;
          v79 = (v161 - 1);
        }

        while ((v165 + 1) != v160);
        v32 = v160;
        v5 = v157;
        v33 = v166;
        goto LABEL_54;
      }

LABEL_55:
      if (v32 < v77)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1D3359A14(0, *(v33 + 2) + 1, 1, v33);
      }

      v105 = *(v33 + 2);
      v104 = *(v33 + 3);
      v106 = v105 + 1;
      if (v105 >= v104 >> 1)
      {
        v33 = sub_1D3359A14((v104 > 1), v105 + 1, 1, v33);
      }

      *(v33 + 2) = v106;
      v107 = &v33[16 * v105];
      *(v107 + 4) = v159;
      *(v107 + 5) = v32;
      a3 = *v158;
      if (!*v158)
      {
        goto LABEL_145;
      }

      if (v105)
      {
        v13 = v174;
        while (1)
        {
          v108 = v106 - 1;
          if (v106 >= 4)
          {
            break;
          }

          if (v106 == 3)
          {
            v109 = *(v33 + 4);
            v110 = *(v33 + 5);
            v119 = __OFSUB__(v110, v109);
            v111 = v110 - v109;
            v112 = v119;
LABEL_76:
            if (v112)
            {
              goto LABEL_124;
            }

            v125 = &v33[16 * v106];
            v127 = *v125;
            v126 = *(v125 + 1);
            v128 = __OFSUB__(v126, v127);
            v129 = v126 - v127;
            v130 = v128;
            if (v128)
            {
              goto LABEL_127;
            }

            v131 = &v33[16 * v108 + 32];
            v133 = *v131;
            v132 = *(v131 + 1);
            v119 = __OFSUB__(v132, v133);
            v134 = v132 - v133;
            if (v119)
            {
              goto LABEL_130;
            }

            if (__OFADD__(v129, v134))
            {
              goto LABEL_131;
            }

            if (v129 + v134 >= v111)
            {
              if (v111 < v134)
              {
                v108 = v106 - 2;
              }

              goto LABEL_97;
            }

            goto LABEL_90;
          }

          v135 = &v33[16 * v106];
          v137 = *v135;
          v136 = *(v135 + 1);
          v119 = __OFSUB__(v136, v137);
          v129 = v136 - v137;
          v130 = v119;
LABEL_90:
          if (v130)
          {
            goto LABEL_126;
          }

          v138 = &v33[16 * v108];
          v140 = *(v138 + 4);
          v139 = *(v138 + 5);
          v119 = __OFSUB__(v139, v140);
          v141 = v139 - v140;
          if (v119)
          {
            goto LABEL_129;
          }

          if (v141 < v129)
          {
            goto LABEL_4;
          }

LABEL_97:
          v146 = v108 - 1;
          if (v108 - 1 >= v106)
          {
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
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
            goto LABEL_138;
          }

          if (!*v168)
          {
            goto LABEL_142;
          }

          v147 = *&v33[16 * v146 + 32];
          v148 = *&v33[16 * v108 + 40];
          sub_1D339FDB4(*v168 + v147, *v168 + *&v33[16 * v108 + 32], *v168 + v148, a3);
          if (v5)
          {
            goto LABEL_118;
          }

          if (v148 < v147)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_1D33A9330(v33);
          }

          if (v146 >= *(v33 + 2))
          {
            goto LABEL_121;
          }

          v149 = &v33[16 * v146];
          *(v149 + 4) = v147;
          *(v149 + 5) = v148;
          v181 = v33;
          sub_1D33A92A4(v108);
          v33 = v181;
          v106 = *(v181 + 2);
          v13 = v174;
          if (v106 <= 1)
          {
            goto LABEL_4;
          }
        }

        v113 = &v33[16 * v106 + 32];
        v114 = *(v113 - 64);
        v115 = *(v113 - 56);
        v119 = __OFSUB__(v115, v114);
        v116 = v115 - v114;
        if (v119)
        {
          goto LABEL_122;
        }

        v118 = *(v113 - 48);
        v117 = *(v113 - 40);
        v119 = __OFSUB__(v117, v118);
        v111 = v117 - v118;
        v112 = v119;
        if (v119)
        {
          goto LABEL_123;
        }

        v120 = &v33[16 * v106];
        v122 = *v120;
        v121 = *(v120 + 1);
        v119 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v119)
        {
          goto LABEL_125;
        }

        v119 = __OFADD__(v111, v123);
        v124 = v111 + v123;
        if (v119)
        {
          goto LABEL_128;
        }

        if (v124 >= v116)
        {
          v142 = &v33[16 * v108 + 32];
          v144 = *v142;
          v143 = *(v142 + 1);
          v119 = __OFSUB__(v143, v144);
          v145 = v143 - v144;
          if (v119)
          {
            goto LABEL_132;
          }

          if (v111 < v145)
          {
            v108 = v106 - 2;
          }

          goto LABEL_97;
        }

        goto LABEL_76;
      }

      v13 = v174;
LABEL_4:
      v31 = v168[1];
      if (v32 >= v31)
      {
        goto LABEL_108;
      }
    }

    v32 = v34;
LABEL_54:
    v77 = v159;
    goto LABEL_55;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_108:
  a3 = *v158;
  if (!*v158)
  {
    goto LABEL_146;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_139:
    v33 = sub_1D33A9330(v33);
  }

  v181 = v33;
  v150 = *(v33 + 2);
  if (v150 >= 2)
  {
    while (*v168)
    {
      v151 = *&v33[16 * v150];
      v152 = *&v33[16 * v150 + 24];
      sub_1D339FDB4(*v168 + v151, *v168 + *&v33[16 * v150 + 16], *v168 + v152, a3);
      if (v5)
      {
        goto LABEL_118;
      }

      if (v152 < v151)
      {
        goto LABEL_133;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1D33A9330(v33);
      }

      if (v150 - 2 >= *(v33 + 2))
      {
        goto LABEL_134;
      }

      v153 = &v33[16 * v150];
      *v153 = v151;
      *(v153 + 1) = v152;
      v181 = v33;
      sub_1D33A92A4(v150 - 1);
      v33 = v181;
      v150 = *(v181 + 2);
      if (v150 <= 1)
      {
        goto LABEL_118;
      }
    }

    goto LABEL_143;
  }

LABEL_118:
}