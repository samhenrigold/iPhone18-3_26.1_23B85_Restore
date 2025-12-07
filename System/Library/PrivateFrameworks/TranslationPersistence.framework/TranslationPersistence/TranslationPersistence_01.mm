uint64_t TranslationStoreCoreData.__allocating_init(inMemoryOnly:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  TranslationStoreCoreData.init(inMemoryOnly:)(v1);
  return v2;
}

uint64_t TranslationStoreCoreData.init(inMemoryOnly:)(char a1)
{
  *(v1 + 16) = sub_26F38EDC4();
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x277CE1C40]) init];
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(type metadata accessor for SourceInputValueTransformer()) init];
  if (qword_281592BE0 != -1)
  {
    swift_once();
  }

  [v3 setValueTransformer:v4 forName:qword_281592EC0];

  v5 = [objc_allocWithZone(type metadata accessor for TargetResultValueTransformer()) init];
  if (qword_281592BD8 != -1)
  {
    swift_once();
  }

  [v3 setValueTransformer:v5 forName:qword_281592EB8];

  sub_26F38F7E0(a1 & 1);
  return v1;
}

void sub_26F38F7E0(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CBE4E0]) init];
    [v3 setType_];
    v4 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAF8, &unk_26F3995E0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26F3994D0;
    *(v5 + 32) = v3;
    sub_26F38500C(0, &qword_281592BA0, 0x277CBE4E0);
    v6 = v3;
    v7 = sub_26F3971B8();

    [v4 setPersistentStoreDescriptions_];
  }

  v8 = *(v2 + 16);
  v9 = [v8 persistentStoreDescriptions];
  sub_26F38500C(0, &qword_281592BA0, 0x277CBE4E0);
  v10 = sub_26F3971C8();

  if (v10 >> 62)
  {
    if (sub_26F397368())
    {
      goto LABEL_5;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x27438DCA0](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_31;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  sub_26F38500C(0, &qword_281592B98, 0x277CCABB0);
  v13 = sub_26F397298();
  [v12 setOption:v13 forKey:*MEMORY[0x277CBE210]];

LABEL_11:
  v14 = [v8 persistentStoreDescriptions];
  v15 = sub_26F3971C8();

  if (v15 >> 62)
  {
    if (sub_26F397368())
    {
      goto LABEL_13;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x27438DCA0](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_33;
    }

    v16 = *(v15 + 32);
  }

  v17 = v16;

  sub_26F38500C(0, &qword_281592B98, 0x277CCABB0);
  v18 = sub_26F397298();
  [v17 setOption:v18 forKey:*MEMORY[0x277CBE1D8]];

LABEL_19:
  v19 = [v8 persistentStoreDescriptions];
  v10 = sub_26F3971C8();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

LABEL_26:

    goto LABEL_27;
  }

  if (!sub_26F397368())
  {
    goto LABEL_26;
  }

LABEL_21:
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v20 = MEMORY[0x27438DCA0](0, v10);
    goto LABEL_24;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v10 + 32);
LABEL_24:
    v21 = v20;

    sub_26F38500C(0, &qword_281592B98, 0x277CCABB0);
    v22 = sub_26F397298();
    [v21 setOption:v22 forKey:*MEMORY[0x277CBE178]];

LABEL_27:
    v24[4] = sub_26F396D48;
    v24[5] = v2;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 1107296256;
    v24[2] = sub_26F390380;
    v24[3] = &block_descriptor_85;
    v23 = _Block_copy(v24);

    [v8 loadPersistentStoresWithCompletionHandler_];
    _Block_release(v23);
    return;
  }

LABEL_33:
  __break(1u);
}

void sub_26F38FC58(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (qword_281592BD0 != -1)
    {
      swift_once();
    }

    v14 = sub_26F3970F8();
    __swift_project_value_buffer(v14, qword_281592EA0);
    v15 = a1;
    v16 = sub_26F3970D8();
    v17 = sub_26F397208();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138477827;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_26F37A000, v16, v17, "Successfully loaded persistent store: %{private}@", v18, 0xCu);
      sub_26F37DE50(v19, &qword_2806DB720, &unk_26F3995D0);
      MEMORY[0x27438E430](v19, -1, -1);
      MEMORY[0x27438E430](v18, -1, -1);
    }

    v21 = *(a3 + 16);
    v22 = [v21 viewContext];
    [v22 setAutomaticallyMergesChangesFromParent_];

    v23 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v24 = sub_26F397138();
    oslog = [v23 initWithEntityName_];

    sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
    v25 = sub_26F3971F8();
    [oslog setPredicate:v25];

    v26 = sub_26F3970D8();
    v27 = sub_26F397208();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26F37A000, v26, v27, "Attempt to delete invalid data", v28, 2u);
      MEMORY[0x27438E430](v28, -1, -1);
    }

    v29 = [v21 viewContext];
    type metadata accessor for PersistedTranslation(0);
    v30 = sub_26F397288();

    v31 = v30 >> 62;
    if (v30 >> 62)
    {
      if (sub_26F397368() >= 1)
      {
LABEL_16:

        v32 = sub_26F3970D8();
        v33 = sub_26F397238();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 134217984;
          if (v31)
          {
            v35 = sub_26F397368();
          }

          else
          {
            v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v34 + 4) = v35;

          _os_log_impl(&dword_26F37A000, v32, v33, "Found %ld translations with invalid source or target", v34, 0xCu);
          MEMORY[0x27438E430](v34, -1, -1);

          v36 = v30 & 0xFFFFFFFFFFFFFF8;
          if (!v31)
          {
LABEL_24:
            v37 = *(v36 + 16);
            if (v37)
            {
              goto LABEL_25;
            }

            goto LABEL_31;
          }
        }

        else
        {

          v36 = v30 & 0xFFFFFFFFFFFFFF8;
          if (!v31)
          {
            goto LABEL_24;
          }
        }

        v37 = sub_26F397368();
        if (v37)
        {
LABEL_25:
          if (v37 < 1)
          {
            __break(1u);
            return;
          }

          v38 = 0;
          do
          {
            if ((v30 & 0xC000000000000001) != 0)
            {
              v39 = MEMORY[0x27438DCA0](v38, v30);
            }

            else
            {
              v39 = *(v30 + 8 * v38 + 32);
            }

            v40 = v39;
            ++v38;
            v41 = [v21 viewContext];
            [v41 deleteObject_];
          }

          while (v37 != v38);
        }

LABEL_31:

        sub_26F390444();
        goto LABEL_34;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  v4 = sub_26F396F38();
  if (qword_281592BD0 != -1)
  {
    swift_once();
  }

  v5 = sub_26F3970F8();
  __swift_project_value_buffer(v5, qword_281592EA0);
  v6 = a1;
  v7 = v4;
  oslog = sub_26F3970D8();
  v8 = sub_26F397238();

  if (!os_log_type_enabled(oslog, v8))
  {

LABEL_34:
    v12 = oslog;
    goto LABEL_35;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  *v9 = 138478083;
  *(v9 + 4) = v6;
  *(v9 + 12) = 2112;
  *(v9 + 14) = v7;
  *v10 = v6;
  v10[1] = v7;
  v11 = v6;
  log = v7;
  _os_log_impl(&dword_26F37A000, oslog, v8, "Failed to load persistent store: %{private}@. Error: %@", v9, 0x16u);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB720, &unk_26F3995D0);
  swift_arrayDestroy();
  MEMORY[0x27438E430](v10, -1, -1);
  MEMORY[0x27438E430](v9, -1, -1);

  v12 = log;
LABEL_35:
}

void sub_26F390380(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

id _s22TranslationPersistence0A13StoreCoreDataC3mocSo22NSManagedObjectContextCvg_0()
{
  v1 = [*(v0 + 16) viewContext];

  return v1;
}

void sub_26F390444()
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = [*(v0 + 16) viewContext];
  if ([v11 hasChanges])
  {
    v12[0] = 0;
    if ([v11 save_])
    {
      v1 = v12[0];
    }

    else
    {
      v2 = v12[0];
      v3 = sub_26F396F48();

      swift_willThrow();
      if (qword_281592BD0 != -1)
      {
        swift_once();
      }

      v4 = sub_26F3970F8();
      __swift_project_value_buffer(v4, qword_281592EA0);
      v5 = v3;
      v6 = sub_26F3970D8();
      v7 = sub_26F397228();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        v10 = sub_26F396F38();
        *(v8 + 4) = v10;
        *v9 = v10;
        _os_log_impl(&dword_26F37A000, v6, v7, "Failed to save view context: %@", v8, 0xCu);
        sub_26F37DE50(v9, &qword_2806DB720, &unk_26F3995D0);
        MEMORY[0x27438E430](v9, -1, -1);
        MEMORY[0x27438E430](v8, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
  }
}

uint64_t TranslationStoreCoreData.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t TranslationStoreCoreData.totalCount.getter()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_26F397138();
  v3 = [v1 initWithEntityName_];

  v4 = [*(v0 + 16) viewContext];
  type metadata accessor for PersistedTranslation(0);
  v5 = sub_26F397278();

  return v5;
}

uint64_t TranslationStoreCoreData.favoriteCount.getter()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_26F397138();
  v4 = [v2 initWithEntityName_];

  sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
  v5 = sub_26F3971F8();
  [v4 setPredicate_];

  v6 = [*(v1 + 16) viewContext];
  type metadata accessor for PersistedTranslation(0);
  v7 = sub_26F397278();

  return v7;
}

uint64_t TranslationStoreCoreData.getAllFavorites()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_26F397138();
  v4 = [v2 initWithEntityName_];

  sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
  v5 = sub_26F3971F8();
  [v4 setPredicate_];

  v6 = [*(v1 + 16) viewContext];
  type metadata accessor for PersistedTranslation(0);
  v7 = sub_26F397288();

  return v7;
}

void sub_26F390E50(void *a1)
{
  v3 = *v1;
  v4 = *(v3 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v8[4] = sub_26F396EA0;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26F393328;
  v8[3] = &block_descriptor_82;
  v6 = _Block_copy(v8);
  v7 = a1;

  [v4 performBackgroundTask_];
  _Block_release(v6);
}

void TranslationStoreCoreData.toggleFavoriteBackground(_:)(void *a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v7[4] = sub_26F395B50;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_26F393328;
  v7[3] = &block_descriptor;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v3 performBackgroundTask_];
  _Block_release(v5);
}

void sub_26F39102C(void *a1)
{
  v3 = *(*v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v7[4] = sub_26F396EA4;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_26F393328;
  v7[3] = &block_descriptor_75;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v3 performBackgroundTask_];
  _Block_release(v5);
}

void TranslationStoreCoreData.updateDisambiguation(for:)(void *a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v7[4] = sub_26F395B70;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_26F393328;
  v7[3] = &block_descriptor_6;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v3 performBackgroundTask_];
  _Block_release(v5);
}

void *sub_26F3911E8(void *a1, void *a2, uint64_t a3)
{
  v4 = a3;
  v7 = [*(*v3 + 16) viewContext];
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  v11 = a2[3];
  v12 = a2[4];
  v13 = __swift_project_boxed_opaque_existential_1Tm(a2, v11);
  v14 = sub_26F395BB4(v10, v13, v7, v4, v8, v11, v9, v12);

  return v14;
}

void *TranslationStoreCoreData.insert(speech:translationResult:isFavorite:)(void *a1, void *a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1Tm(a1, v6);
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_project_boxed_opaque_existential_1Tm(a2, v9);

  return sub_26F395298(v8, v11, a3, v3, v6, v9, v7, v10);
}

void TranslationStoreCoreData.deleteBackground(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 identifier];
  v7 = sub_26F397148();
  v9 = v8;

  v10 = *(v3 + 16);
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v9;
  v11[4] = v3;
  v11[5] = a2;
  v11[6] = a3;
  v13[4] = sub_26F395B78;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_26F393328;
  v13[3] = &block_descriptor_12;
  v12 = _Block_copy(v13);

  [v10 performBackgroundTask_];
  _Block_release(v12);
}

void sub_26F391470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(v9 + 16);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v9;
  v11[5] = a3;
  v11[6] = a4;
  v13[4] = sub_26F396E98;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_26F393328;
  v13[3] = &block_descriptor_68;
  v12 = _Block_copy(v13);

  [v10 performBackgroundTask_];
  _Block_release(v12);
}

void TranslationStoreCoreData.deleteBackground(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 16);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v5;
  v11[5] = a3;
  v11[6] = a4;
  v13[4] = sub_26F396E98;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_26F393328;
  v13[3] = &block_descriptor_19;
  v12 = _Block_copy(v13);

  [v10 performBackgroundTask_];
  _Block_release(v12);
}

Swift::Void __swiftcall TranslationStoreCoreData.save()()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 16) viewContext];
  v14[0] = 0;
  v2 = [v1 save_];

  v3 = v14[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v14[0];
    v6 = sub_26F396F48();

    swift_willThrow();
    if (qword_281592BD0 != -1)
    {
      swift_once();
    }

    v7 = sub_26F3970F8();
    __swift_project_value_buffer(v7, qword_281592EA0);
    v8 = v6;
    v9 = sub_26F3970D8();
    v10 = sub_26F397228();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = sub_26F396F38();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&dword_26F37A000, v9, v10, "Failed to save: %@", v11, 0xCu);
      sub_26F37DE50(v12, &qword_2806DB720, &unk_26F3995D0);
      MEMORY[0x27438E430](v12, -1, -1);
      MEMORY[0x27438E430](v11, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t TranslationStoreCoreData.translations(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v7 = sub_26F397138();
  v8 = [v6 initWithEntityName_];

  sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBB00, &unk_26F3994E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26F398960;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_26F38E534();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_26F3971F8();
  [v8 setPredicate_];

  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v12 = sub_26F397138();
  v13 = [v11 initWithKey:v12 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAF8, &unk_26F3995E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26F3994D0;
  *(v14 + 32) = v13;
  sub_26F38500C(0, &qword_281592BA8, 0x277CCAC98);
  v15 = v13;
  v16 = sub_26F3971B8();

  [v8 setSortDescriptors_];

  v17 = [*(v3 + 16) viewContext];
  type metadata accessor for PersistedTranslation(0);
  v18 = sub_26F397288();

  return v18;
}

void sub_26F391B94(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v7[5] = a1;
  v7[6] = a2;
  v9[4] = sub_26F396E9C;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26F393328;
  v9[3] = &block_descriptor_61;
  v8 = _Block_copy(v9);

  [v6 performBackgroundTask_];
  _Block_release(v8);
}

void TranslationStoreCoreData.clearHistory(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  v6[5] = a1;
  v6[6] = a2;
  v8[4] = sub_26F395B90;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26F393328;
  v8[3] = &block_descriptor_25;
  v7 = _Block_copy(v8);

  [v5 performBackgroundTask_];
  _Block_release(v7);
}

void sub_26F391D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(v9 + 16);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v9;
  v11[5] = a3;
  v11[6] = a4;
  v13[4] = sub_26F396E9C;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_26F393328;
  v13[3] = &block_descriptor_54;
  v12 = _Block_copy(v13);

  [v10 performBackgroundTask_];
  _Block_release(v12);
}

void TranslationStoreCoreData.clearHistory(sessionID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 16);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v5;
  v11[5] = a3;
  v11[6] = a4;
  v13[4] = sub_26F396E9C;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_26F393328;
  v13[3] = &block_descriptor_32;
  v12 = _Block_copy(v13);

  [v10 performBackgroundTask_];
  _Block_release(v12);
}

void sub_26F391FB0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;
  v9[4] = sub_26F396E5C;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26F393328;
  v9[3] = &block_descriptor_47;
  v8 = _Block_copy(v9);

  [v6 performBackgroundTask_];
  _Block_release(v8);
}

void TranslationStoreCoreData.clear(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v8[4] = sub_26F395BA8;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26F393328;
  v8[3] = &block_descriptor_38;
  v7 = _Block_copy(v8);

  [v5 performBackgroundTask_];
  _Block_release(v7);
}

void sub_26F3921A4(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26F397368())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x27438DCA0](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_26F3924A4(&v10, a2);

      if (!v2)
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

uint64_t sub_26F392298(char a1)
{
  v2 = v1;
  v4 = sub_26F396F28();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281592BD0 != -1)
  {
    swift_once();
  }

  v9 = sub_26F3970F8();
  __swift_project_value_buffer(v9, qword_281592EA0);
  v10 = sub_26F3970D8();
  v11 = sub_26F397208();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = a1 & 1;
    _os_log_impl(&dword_26F37A000, v10, v11, "Exclude persistent stores from iCloud Backup: %{BOOL}d", v12, 8u);
    MEMORY[0x27438E430](v12, -1, -1);
  }

  sub_26F396F18();
  sub_26F396F08();
  v13 = [v2 persistentStoreDescriptions];
  sub_26F38500C(0, &qword_281592BA0, 0x277CBE4E0);
  v14 = sub_26F3971C8();

  sub_26F3921A4(v14, v8);

  return (*(v5 + 8))(v8, v4);
}

void sub_26F3924A4(id *a1, uint64_t a2)
{
  v35 = a2;
  v36 = sub_26F396F28();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DBB40, &unk_26F399680);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v34 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v34 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v34 - v20;
  v37 = *a1;
  v22 = [v37 URL];
  if (v22)
  {
    v23 = v22;
    sub_26F396F78();

    v24 = sub_26F396F88();
    (*(*(v24 - 8) + 56))(v18, 0, 1, v24);
  }

  else
  {
    v24 = sub_26F396F88();
    (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  }

  sub_26F396D50(v18, v21);
  sub_26F396F88();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v21, 1, v24))
  {
    sub_26F396DC0(v21, v14, &unk_2806DBB40, &unk_26F399680);
    if (v26(v14, 1, v24) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = sub_26F396F68();
      (*(v25 + 8))(v14, v24);
    }

    [v37 setURL_];

    sub_26F37DE50(v21, &unk_2806DBB40, &unk_26F399680);
  }

  else
  {
    v28 = v36;
    (*(v3 + 16))(v6, v35, v36);
    v29 = v38;
    sub_26F396F58();
    if (v29)
    {

      (*(v3 + 8))(v6, v28);
      v30 = v34;
      sub_26F396DC0(v21, v34, &unk_2806DBB40, &unk_26F399680);
      v31 = v26(v30, 1, v24);
      v32 = 0;
      if (v31 != 1)
      {
        v32 = sub_26F396F68();
        (*(v25 + 8))(v30, v24);
      }

      [v37 setURL_];

      sub_26F37DE50(v21, &unk_2806DBB40, &unk_26F399680);
    }

    else
    {
      v38 = 0;
      (*(v3 + 8))(v6, v28);
      if (v26(v21, 1, v24) == 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = sub_26F396F68();
        (*(v25 + 8))(v21, v24);
      }

      [v37 setURL_];
    }
  }
}

void sub_26F392938(void *a1, void *a2)
{
  [v2 deleteObject_];
  if ((sub_26F38A584() & 1) == 0)
  {
    return;
  }

  v5 = [a1 requestID];
  v6 = sub_26F397148();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return;
  }

  v10 = [a1 interactedIndices];
  if (!v10)
  {
    return;
  }

  v46 = a2;
  v11 = v10;
  v12 = sub_26F3971C8();

  v13 = [objc_allocWithZone(MEMORY[0x277CE1C28]) init];
  v14 = [a1 sessionID];
  [v13 setConversationID_];

  v15 = [a1 requestID];
  [v13 setRequestID_];

  sub_26F389F14(v49);
  v16 = v50;
  v17 = v51;
  __swift_project_boxed_opaque_existential_1Tm(v49, v50);
  v18 = (*(v17 + 24))(v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v49);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x277D84F90];
  v47 = v13;
  if (v19)
  {
    v45 = v12;
    v48 = MEMORY[0x277D84F90];
    sub_26F387758(0, v19, 0);
    v21 = 0;
    v22 = v18 + 32;
    while (v21 < *(v18 + 16))
    {
      sub_26F37CC58(v22, v49);
      v23 = sub_26F392D94(v49);
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1(v49);
      v27 = *(v48 + 16);
      v26 = *(v48 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_26F387758((v26 > 1), v27 + 1, 1);
      }

      ++v21;
      *(v48 + 16) = v27 + 1;
      v28 = v48 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v22 += 40;
      if (v19 == v21)
      {

        v13 = v47;
        v12 = v45;
        v20 = MEMORY[0x277D84F90];
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_14:
  v29 = sub_26F3971B8();

  [v13 setSenses_];

  v30 = *(v12 + 16);
  if (v30)
  {
    sub_26F387758(0, v30, 0);
    v31 = 32;
    v32 = v20;
    while (1)
    {
      v33 = v12;
      v34 = *(v12 + v31);
      sub_26F389F14(v49);
      v35 = v50;
      v36 = v51;
      __swift_project_boxed_opaque_existential_1Tm(v49, v50);
      v37 = (*(v36 + 24))(v35, v36);
      __swift_destroy_boxed_opaque_existential_1(v49);
      if ((v34 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v34 >= *(v37 + 16))
      {
        goto LABEL_27;
      }

      sub_26F37CC58(v37 + 40 * v34 + 32, v49);

      v38 = sub_26F392D94(v49);
      v40 = v39;
      __swift_destroy_boxed_opaque_existential_1(v49);
      v42 = *(v32 + 16);
      v41 = *(v32 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_26F387758((v41 > 1), v42 + 1, 1);
      }

      *(v32 + 16) = v42 + 1;
      v43 = v32 + 16 * v42;
      *(v43 + 32) = v38;
      *(v43 + 40) = v40;
      v31 += 8;
      --v30;
      v12 = v33;
      if (!v30)
      {

        v13 = v47;
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

LABEL_23:
  v44 = sub_26F3971B8();

  [v13 setUserInteractedSenses_];

  [v46 log_];
}

uint64_t sub_26F392D94(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v1);
  v3 = (*(v2 + 40))(v1, v2);
  if (*(v3 + 16))
  {
    sub_26F37CC58(v3 + 32, v21);
  }

  else
  {

    v22 = 0;
    memset(v21, 0, sizeof(v21));
  }

  sub_26F396DC0(v21, &v16, &qword_2806DBB10, &qword_26F399660);
  if (v17)
  {
    sub_26F37C0CC(&v16, v18);
    v4 = v19;
    v5 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v6 = (*(v5 + 56))(v4, v5);
    if (v6)
    {
      v7 = 0x747365626ELL;
    }

    else
    {
      v7 = 0x6769626D61736964;
    }

    if (v6)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v7 = 7104878;
    sub_26F37DE50(&v16, &qword_2806DBB10, &qword_26F399660);
    v8 = 0xE300000000000000;
  }

  sub_26F396DC0(v21, v18, &qword_2806DBB10, &qword_26F399660);
  v9 = v19;
  if (v19)
  {
    v10 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v11 = (*(v10 + 16))(v9, v10);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v11 = 7104878;
    sub_26F37DE50(v18, &qword_2806DBB10, &qword_26F399660);
    v13 = 0xE300000000000000;
  }

  v18[0] = v7;
  v18[1] = v8;
  MEMORY[0x27438DB20](64, 0xE100000000000000);
  MEMORY[0x27438DB20](v11, v13);

  v14 = v18[0];
  sub_26F37DE50(v21, &qword_2806DBB10, &qword_26F399660);
  return v14;
}

void *TranslationStoreCoreData.insert(speech:translationResult:context:isFavorite:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1Tm(a1, v7);
  v10 = a2[3];
  v11 = a2[4];
  v12 = __swift_project_boxed_opaque_existential_1Tm(a2, v10);

  return sub_26F395BB4(v9, v12, a3, v4, v7, v10, v8, v11);
}

uint64_t sub_26F393054(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v25[2] = *MEMORY[0x277D85DE8];
  v8 = _s22TranslationPersistence09PersistedA0C12fetchRequest10identifierSo07NSFetchE0CyACGSS_tFZ_0(a2, a3);
  type metadata accessor for PersistedTranslation(0);
  v9 = sub_26F397288();
  if (v9 >> 62)
  {
    v22 = v9;
    v23 = sub_26F397368();
    v9 = v22;
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_16:

    return a5();
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x27438DCA0](0);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v17 = *(v9 + 32);
  }

  v18 = v17;

  sub_26F392938(v18, *(a4 + 24));
  v25[0] = 0;
  if ([a1 save_])
  {
    v19 = v25[0];
  }

  else
  {
    v20 = v25[0];
    v21 = sub_26F396F48();

    swift_willThrow();
    if (qword_281592BD0 != -1)
    {
      swift_once();
    }

    v10 = sub_26F3970F8();
    __swift_project_value_buffer(v10, qword_281592EA0);
    v11 = v21;
    v12 = sub_26F3970D8();
    v13 = sub_26F397228();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = sub_26F396F38();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_26F37A000, v12, v13, "Failed to delete translation: %@", v14, 0xCu);
      sub_26F37DE50(v15, &qword_2806DB720, &unk_26F3995D0);
      MEMORY[0x27438E430](v15, -1, -1);
      MEMORY[0x27438E430](v14, -1, -1);
    }

    else
    {
    }
  }

  return a5();
}

void sub_26F393328(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_26F393390(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void))
{
  v59[1] = *MEMORY[0x277D85DE8];
  v9 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v10 = sub_26F397138();
  v11 = [v9 initWithEntityName_];

  sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
  v12 = sub_26F3971F8();
  [v11 setPredicate_];

  v13 = 0x281592000uLL;
  if (a3 && (v14 = [v11 predicate]) != 0)
  {
    v15 = v14;
    v58 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBB00, &unk_26F3994E0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_26F398960;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = sub_26F38E534();
    *(v16 + 32) = a2;
    *(v16 + 40) = a3;

    v17 = sub_26F3971F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAF8, &unk_26F3995E0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26F3994C0;
    *(v18 + 32) = v15;
    *(v18 + 40) = v17;
    v19 = v15;
    v20 = v17;
    v21 = sub_26F3971B8();
    v13 = 0x281592000uLL;

    v22 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v11 setPredicate_];
    if (qword_281592BD0 != -1)
    {
      swift_once();
    }

    v23 = sub_26F3970F8();
    __swift_project_value_buffer(v23, qword_281592EA0);

    v24 = sub_26F3970D8();
    v25 = sub_26F397248();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v59[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_26F38B99C(a2, a3, v59);
      _os_log_impl(&dword_26F37A000, v24, v25, "Attempt to delete session (id: %s) history", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x27438E430](v27, -1, -1);
      v28 = v26;
      v13 = 0x281592000;
      MEMORY[0x27438E430](v28, -1, -1);
    }

    a5 = v58;
  }

  else
  {
    if (qword_281592BD0 != -1)
    {
      swift_once();
    }

    v29 = sub_26F3970F8();
    __swift_project_value_buffer(v29, qword_281592EA0);
    v30 = sub_26F3970D8();
    v31 = sub_26F397248();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26F37A000, v30, v31, "Attempt to delete history", v32, 2u);
      MEMORY[0x27438E430](v32, -1, -1);
    }
  }

  type metadata accessor for PersistedTranslation(0);
  v33 = sub_26F397288();
  v34 = v33;
  v56 = v33 >> 62;
  if (v33 >> 62)
  {
    v35 = sub_26F397368();
    if (!v35)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
      goto LABEL_22;
    }
  }

  if (v35 < 1)
  {
    __break(1u);
LABEL_37:
    swift_once();
LABEL_24:
    v42 = sub_26F3970F8();
    __swift_project_value_buffer(v42, qword_281592EA0);

    v43 = sub_26F3970D8();
    v44 = sub_26F397248();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      if (v56)
      {
        v46 = sub_26F397368();
      }

      else
      {
        v46 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v45 + 4) = v46;

      _os_log_impl(&dword_26F37A000, v43, v44, "Deleted %ld old translations", v45, 0xCu);
      MEMORY[0x27438E430](v45, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_32;
  }

  v36 = 0;
  v37 = *(a4 + 24);
  do
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x27438DCA0](v36, v34);
    }

    else
    {
      v38 = *(v34 + 8 * v36 + 32);
    }

    v39 = v38;
    ++v36;
    sub_26F392938(v38, v37);
  }

  while (v35 != v36);
LABEL_22:
  v59[0] = 0;
  if ([a1 save_])
  {
    v40 = *(v13 + 3024);
    v41 = v59[0];
    if (v40 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  v47 = v59[0];

  v48 = sub_26F396F48();

  swift_willThrow();
  if (*(v13 + 3024) != -1)
  {
    swift_once();
  }

  v49 = sub_26F3970F8();
  __swift_project_value_buffer(v49, qword_281592EA0);
  v50 = v48;
  v51 = sub_26F3970D8();
  v52 = sub_26F397228();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    v55 = sub_26F396F38();
    *(v53 + 4) = v55;
    *v54 = v55;
    _os_log_impl(&dword_26F37A000, v51, v52, "Failed to clear history: %@", v53, 0xCu);
    sub_26F37DE50(v54, &qword_2806DB720, &unk_26F3995D0);
    MEMORY[0x27438E430](v54, -1, -1);
    MEMORY[0x27438E430](v53, -1, -1);
  }

  else
  {
  }

LABEL_32:
  a5();
}

void sub_26F393B34(void *a1, uint64_t a2, void (*a3)(void))
{
  v35[2] = *MEMORY[0x277D85DE8];
  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v7 = sub_26F397138();
  v8 = [v6 initWithEntityName_];

  if (qword_281592BD0 != -1)
  {
    swift_once();
  }

  v9 = sub_26F3970F8();
  __swift_project_value_buffer(v9, qword_281592EA0);
  v10 = sub_26F3970D8();
  v11 = sub_26F397248();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26F37A000, v10, v11, "Attempting to delete all data", v12, 2u);
    MEMORY[0x27438E430](v12, -1, -1);
  }

  type metadata accessor for PersistedTranslation(0);
  v13 = sub_26F397288();
  v14 = v13;
  v33 = v13 >> 62;
  if (v13 >> 62)
  {
    v15 = sub_26F397368();
    if (!v15)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_14;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
  }

  v16 = 0;
  v17 = *(a2 + 24);
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x27438DCA0](v16, v14);
    }

    else
    {
      v18 = *(v14 + 8 * v16 + 32);
    }

    v19 = v18;
    ++v16;
    sub_26F392938(v18, v17);
  }

  while (v15 != v16);
LABEL_14:
  v35[0] = 0;
  if ([a1 save_])
  {
    v20 = v35[0];

    v21 = sub_26F3970D8();
    v22 = sub_26F397248();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      if (v34)
      {
        v24 = sub_26F397368();
      }

      else
      {
        v24 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v23 + 4) = v24;

      _os_log_impl(&dword_26F37A000, v21, v22, "Deleted %ld old translations", v23, 0xCu);
      MEMORY[0x27438E430](v23, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    v25 = v35[0];

    v26 = sub_26F396F48();

    swift_willThrow();
    v27 = v26;
    v28 = sub_26F3970D8();
    v29 = sub_26F397228();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = sub_26F396F38();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&dword_26F37A000, v28, v29, "Failed to clear history: %@", v30, 0xCu);
      sub_26F37DE50(v31, &qword_2806DB720, &unk_26F3995D0);
      MEMORY[0x27438E430](v31, -1, -1);
      MEMORY[0x27438E430](v30, -1, -1);
    }

    else
    {
    }
  }

  a3();
}

void sub_26F393F90(void *a1, id a2)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = [a2 identifier];
  v5 = sub_26F397148();
  v7 = v6;

  v38 = _s22TranslationPersistence09PersistedA0C12fetchRequest10identifierSo07NSFetchE0CyACGSS_tFZ_0(v5, v7);

  type metadata accessor for PersistedTranslation(0);
  v8 = sub_26F397288();
  if (v8 >> 62)
  {
    v29 = v8;
    v30 = sub_26F397368();
    v8 = v29;
    if (v30)
    {
      goto LABEL_8;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x27438DCA0](0);
LABEL_11:
      v17 = v16;

      _s22TranslationPersistence0A13StoreCoreDataC14toggleFavoriteyyAA09PersistedA0CF_0(v17);
      v39[0] = 0;
      if ([a1 save_])
      {
        v18 = qword_281592BD0;
        v19 = v39[0];
        if (v18 != -1)
        {
          swift_once();
        }

        v20 = sub_26F3970F8();
        __swift_project_value_buffer(v20, qword_281592EA0);
        v21 = v17;
        v22 = sub_26F3970D8();
        v23 = sub_26F397208();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138739971;
          *(v24 + 4) = v21;
          *v25 = v21;
          v26 = v21;
          _os_log_impl(&dword_26F37A000, v22, v23, "Favorited translation: %{sensitive}@", v24, 0xCu);
          sub_26F37DE50(v25, &qword_2806DB720, &unk_26F3995D0);
          MEMORY[0x27438E430](v25, -1, -1);
          MEMORY[0x27438E430](v24, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        v27 = v39[0];
        v28 = sub_26F396F48();

        swift_willThrow();
        if (qword_281592BD0 != -1)
        {
          swift_once();
        }

        v9 = sub_26F3970F8();
        __swift_project_value_buffer(v9, qword_281592EA0);
        v10 = v28;
        v11 = sub_26F3970D8();
        v12 = sub_26F397228();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138412290;
          v15 = sub_26F396F38();
          *(v13 + 4) = v15;
          *v14 = v15;
          _os_log_impl(&dword_26F37A000, v11, v12, "Failed to favorite translation: %@", v13, 0xCu);
          sub_26F37DE50(v14, &qword_2806DB720, &unk_26F3995D0);
          MEMORY[0x27438E430](v14, -1, -1);
          MEMORY[0x27438E430](v13, -1, -1);
        }

        else
        {
        }
      }

      return;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v8 + 32);
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (qword_281592BD0 != -1)
  {
LABEL_28:
    swift_once();
  }

  v31 = sub_26F3970F8();
  __swift_project_value_buffer(v31, qword_281592EA0);
  v32 = a2;
  v33 = sub_26F3970D8();
  v34 = sub_26F397228();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138739971;
    *(v35 + 4) = v32;
    *v36 = v32;
    v37 = v32;
    _os_log_impl(&dword_26F37A000, v33, v34, "Failed to find translation in store: %{sensitive}@", v35, 0xCu);
    sub_26F37DE50(v36, &qword_2806DB720, &unk_26F3995D0);
    MEMORY[0x27438E430](v36, -1, -1);
    MEMORY[0x27438E430](v35, -1, -1);
  }
}

void sub_26F3944F0(void *a1, id a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [a2 identifier];
  v4 = sub_26F397148();
  v6 = v5;

  v31 = _s22TranslationPersistence09PersistedA0C12fetchRequest10identifierSo07NSFetchE0CyACGSS_tFZ_0(v4, v6);

  type metadata accessor for PersistedTranslation(0);
  v7 = sub_26F397288();
  if (v7 >> 62)
  {
    v3 = v7;
    v30 = sub_26F397368();
    v7 = v3;
    if (v30)
    {
      goto LABEL_8;
    }

LABEL_19:

    return;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_8:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x27438DCA0](0);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v15 = *(v7 + 32);
  }

  v3 = v15;

  sub_26F389F14(v32);
  v16 = v33;
  v17 = v34;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x28223BE20](v18, v18);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  sub_26F38CCAC(v20, v3, v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v32);
  v32[0] = 0;
  if ([a1 save_])
  {
    v22 = qword_281592BD0;
    v23 = v32[0];
    if (v22 == -1)
    {
LABEL_13:
      v24 = sub_26F3970F8();
      __swift_project_value_buffer(v24, qword_281592EA0);
      v25 = sub_26F3970D8();
      v26 = sub_26F397208();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_26F37A000, v25, v26, "Updated disambiguation selection for translation", v27, 2u);
        MEMORY[0x27438E430](v27, -1, -1);
      }

      return;
    }

LABEL_24:
    swift_once();
    goto LABEL_13;
  }

  v28 = v32[0];
  v29 = sub_26F396F48();

  swift_willThrow();
  if (qword_281592BD0 != -1)
  {
    swift_once();
  }

  v8 = sub_26F3970F8();
  __swift_project_value_buffer(v8, qword_281592EA0);
  v9 = v29;
  v10 = sub_26F3970D8();
  v11 = sub_26F397228();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = sub_26F396F38();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_26F37A000, v10, v11, "Failed to update disambiguation selection for translation: %@", v12, 0xCu);
    sub_26F37DE50(v13, &qword_2806DB720, &unk_26F3995D0);
    MEMORY[0x27438E430](v13, -1, -1);
    MEMORY[0x27438E430](v12, -1, -1);
  }

  else
  {
  }
}

void *sub_26F3949D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v34 = a1;
  v35 = sub_26F3970B8();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StoredTranslationResult(0);
  v8 = (v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v34 - v14;
  v16 = type metadata accessor for StoredSpeechResult(0);
  v17 = (v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v34 - v23;
  type metadata accessor for TranslationStoreCoreData();
  v25 = swift_allocObject();
  TranslationStoreCoreData.init(inMemoryOnly:)(1);
  sub_26F397018();
  v26 = &v24[v17[10]];
  *&v24[v17[13]] = 0;
  *v24 = 1;
  *(v24 + 1) = 1000;
  v24[v17[9]] = 0;
  v27 = &v24[v17[11]];
  *v27 = 0x6F6C6C6548;
  *(v27 + 1) = 0xE500000000000000;
  *v26 = 0;
  *(v26 + 1) = 0;
  v24[v17[12]] = 0;
  sub_26F397018();
  *&v15[v8[9]] = 0;
  v28 = v35;
  (*(v3 + 16))(v15, v6, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB928, &qword_26F3989A8);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_26F398960;
  *(v29 + 32) = 0;
  *(v29 + 56) = 0;
  *(v29 + 64) = 0;
  *(v29 + 88) = 0;
  *(v29 + 96) = 0;
  v30 = v37;
  *(v29 + 40) = v36;
  *(v29 + 48) = v30;
  *(v29 + 72) = 0;
  *(v29 + 80) = 0;
  *(v29 + 104) = MEMORY[0x277D84F90];
  (*(v3 + 8))(v6, v28);
  *&v15[v8[7]] = v29;
  v15[v8[8]] = 1;
  sub_26F39636C(v24, v21, type metadata accessor for StoredSpeechResult);
  sub_26F39636C(v15, v12, type metadata accessor for StoredTranslationResult);
  v31 = [*(v25 + 16) viewContext];
  v32 = sub_26F3963D4(v21, v12, v31, 0);

  sub_26F396B50(v12, type metadata accessor for StoredTranslationResult);
  sub_26F396B50(v21, type metadata accessor for StoredSpeechResult);
  sub_26F396B50(v15, type metadata accessor for StoredTranslationResult);
  result = sub_26F396B50(v24, type metadata accessor for StoredSpeechResult);
  if (v32)
  {

    return v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static TranslationStoreCoreData.mockTranslationRTL2LTR.getter()
{
  v32 = sub_26F3970B8();
  v0 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v1);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StoredTranslationResult(0);
  v5 = (v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for StoredSpeechResult(0);
  v14 = (v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v31 - v20;
  type metadata accessor for TranslationStoreCoreData();
  v22 = swift_allocObject();
  TranslationStoreCoreData.init(inMemoryOnly:)(1);
  sub_26F397018();
  v23 = v14[10];
  *&v21[v14[13]] = 0;
  *v21 = 1;
  *(v21 + 1) = 1000;
  v21[v14[9]] = 0;
  v24 = &v21[v23];
  v25 = &v21[v14[11]];
  *v25 = 0xA8D8ADD8B1D885D9;
  *(v25 + 1) = 0xAA0000000000A7D8;
  *v24 = 0;
  *(v24 + 1) = 0;
  v21[v14[12]] = 0;
  sub_26F397018();
  *&v12[v5[9]] = 0;
  v26 = v32;
  (*(v0 + 16))(v12, v3, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB928, &qword_26F3989A8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26F398960;
  *(v27 + 32) = 0;
  *(v27 + 56) = 0;
  *(v27 + 64) = 0;
  *(v27 + 88) = 0;
  *(v27 + 96) = 0;
  *(v27 + 40) = 0x6F6C6C6548;
  *(v27 + 48) = 0xE500000000000000;
  *(v27 + 72) = 0;
  *(v27 + 80) = 0;
  *(v27 + 104) = MEMORY[0x277D84F90];
  (*(v0 + 8))(v3, v26);
  *&v12[v5[7]] = v27;
  v12[v5[8]] = 1;
  sub_26F39636C(v21, v18, type metadata accessor for StoredSpeechResult);
  sub_26F39636C(v12, v9, type metadata accessor for StoredTranslationResult);
  v28 = [*(v22 + 16) viewContext];
  v29 = sub_26F3963D4(v18, v9, v28, 0);

  sub_26F396B50(v9, type metadata accessor for StoredTranslationResult);
  sub_26F396B50(v18, type metadata accessor for StoredSpeechResult);
  sub_26F396B50(v12, type metadata accessor for StoredTranslationResult);
  result = sub_26F396B50(v21, type metadata accessor for StoredSpeechResult);
  if (v29)
  {

    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26F395168(uint64_t a1, uint64_t a2)
{
  sub_26F3974F8();
  sub_26F397168();
  v4 = sub_26F397518();

  return sub_26F3951E0(a1, a2, v4);
}

unint64_t sub_26F3951E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26F397488())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_26F395298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a8;
  v12 = a3;
  v14 = *(a6 - 8);
  v15 = MEMORY[0x28223BE20](a1, a1);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v15, v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22);
  (*(v14 + 16))(v17, a2, a6);
  v23 = [*(a4 + 16) viewContext];
  v24 = sub_26F395BB4(v22, v17, v23, v12, a5, a6, a7, v27);

  (*(v19 + 8))(v22, a5);
  (*(v14 + 8))(v17, a6);
  return v24;
}

uint64_t sub_26F39548C(uint64_t a1, void *a2)
{
  v12[3] = type metadata accessor for StoredSpeechResult(0);
  v12[4] = sub_26F38CEA4(&qword_2806DB6F8, type metadata accessor for StoredSpeechResult, &protocol conformance descriptor for StoredSpeechResult);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  sub_26F396CE0(a1, boxed_opaque_existential_1, type metadata accessor for StoredSpeechResult);
  sub_26F397028();
  v5 = sub_26F397138();

  [a2 setSourceIdentifier_];

  sub_26F37CC58(v12, v11);
  v6 = type metadata accessor for AnySpeechResult();
  v7 = objc_allocWithZone(v6);
  sub_26F37CC58(v11, v7 + OBJC_IVAR____TtC22TranslationPersistence15AnySpeechResult_value);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v11);
  [a2 setSourceInput_];

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_26F3955E4(uint64_t a1, void *a2)
{
  v12[3] = type metadata accessor for StoredTranslationResult(0);
  v12[4] = sub_26F38CEA4(&qword_2806DBA88, type metadata accessor for StoredTranslationResult, &protocol conformance descriptor for StoredTranslationResult);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  sub_26F396CE0(a1, boxed_opaque_existential_1, type metadata accessor for StoredTranslationResult);
  sub_26F397028();
  v5 = sub_26F397138();

  [a2 setTargetIdentifier_];

  sub_26F37CC58(v12, v11);
  v6 = type metadata accessor for AnyTranslationResult();
  v7 = objc_allocWithZone(v6);
  sub_26F37CC58(v11, v7 + OBJC_IVAR____TtC22TranslationPersistence20AnyTranslationResult_value);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v11);
  [a2 setTargetResult_];

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

unint64_t sub_26F395734(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBB38, &qword_26F399678);
    v3 = sub_26F397378();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26F395168(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void _s22TranslationPersistence0A13StoreCoreDataC14toggleFavoriteyyAA09PersistedA0CF_0(void *a1)
{
  v2 = sub_26F396FD8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAB8, &unk_26F399440);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = [a1 favoriteDate];
  if (v11)
  {
    v12 = v11;
    sub_26F396FB8();

    (*(v3 + 56))(v10, 0, 1, v2);
    sub_26F37DE50(v10, &qword_2806DBAB8, &unk_26F399440);
    [a1 setFavoriteDate_];
  }

  else
  {
    (*(v3 + 56))(v10, 1, 1, v2);
    sub_26F37DE50(v10, &qword_2806DBAB8, &unk_26F399440);
    sub_26F396FC8();
    v13 = sub_26F396FA8();
    (*(v3 + 8))(v6, v2);
    [a1 setFavoriteDate_];

    v14 = sub_26F397138();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBB18, &qword_26F399668);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26F398960;
    *(inited + 32) = 0x6D614E746E657665;
    *(inited + 40) = 0xE900000000000065;
    sub_26F38500C(0, &qword_2806DBB20, 0x277CCACA8);
    *(inited + 48) = sub_26F3972A8();
    sub_26F395734(inited);
    swift_setDeallocating();
    sub_26F37DE50(inited + 32, &qword_2806DBB28, &qword_26F399670);
    sub_26F38500C(0, &qword_2806DBB30, 0x277D82BB8);
    v16 = sub_26F397118();

    AnalyticsSendEvent();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_26F395BB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = a4;
  v66 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAB8, &unk_26F399440);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v64 = &v59 - v16;
  v63 = sub_26F396FD8();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26F397008();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72[3] = a5;
  v72[4] = a7;
  v60 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v71[3] = a6;
  v71[4] = a8;
  v61 = a8;
  v26 = __swift_allocate_boxed_opaque_existential_1(v71);
  (*(*(a6 - 8) + 16))(v26, a2, a6);
  v27 = objc_opt_self();
  v28 = sub_26F397138();
  v29 = [v27 insertNewObjectForEntityForName:v28 inManagedObjectContext:v66];

  type metadata accessor for PersistedTranslation(0);
  v30 = swift_dynamicCastClass();
  if (v30)
  {
    v31 = v30;
    sub_26F396FF8();
    sub_26F396FE8();
    (*(v21 + 8))(v24, v20);
    v32 = sub_26F397138();

    [v31 setIdentifier_];

    sub_26F396FC8();
    v33 = sub_26F396FA8();
    v34 = v62;
    v35 = v63;
    (*(v62 + 8))(v19, v63);
    [v31 setCreationDate_];

    sub_26F37CC58(v72, v69);
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
    MEMORY[0x28223BE20](v36, v36);
    v38 = &v59 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v38);
    sub_26F38CAB4(v38, v31, a5, v60);
    __swift_destroy_boxed_opaque_existential_1(v69);
    sub_26F37CC58(v71, v69);
    v40 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
    MEMORY[0x28223BE20](v40, v40);
    v42 = &v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v42);
    sub_26F38CCAC(v42, v31, a6, v61);
    __swift_destroy_boxed_opaque_existential_1(v69);
    sub_26F38A8A4();
    v44 = sub_26F3971B8();
    [v31 setInteractedIndices_];

    v45 = [v31 favoriteDate];
    if (v45)
    {
      v46 = v64;
      v47 = v45;
      sub_26F396FB8();

      (*(v34 + 56))(v46, 0, 1, v35);
      sub_26F37DE50(v46, &qword_2806DBAB8, &unk_26F399440);
      if (v65)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v57 = v64;
    (*(v34 + 56))(v64, 1, 1, v35);
    sub_26F37DE50(v57, &qword_2806DBAB8, &unk_26F399440);
    if (v65)
    {
LABEL_10:
      _s22TranslationPersistence0A13StoreCoreDataC14toggleFavoriteyyAA09PersistedA0CF_0(v31);
    }
  }

  else
  {
    if (qword_281592BD0 != -1)
    {
      swift_once();
    }

    v48 = sub_26F3970F8();
    __swift_project_value_buffer(v48, qword_281592EA0);
    sub_26F37CC58(v71, v69);
    v49 = sub_26F3970D8();
    v50 = sub_26F397228();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v68 = v52;
      *v51 = 136642819;
      sub_26F37CC58(v69, v67);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBB08, &qword_26F399658);
      v53 = sub_26F397158();
      v55 = v54;
      __swift_destroy_boxed_opaque_existential_1(v69);
      v56 = sub_26F38B99C(v53, v55, &v68);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_26F37A000, v49, v50, "Failed to insert translation %{sensitive}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x27438E430](v52, -1, -1);
      MEMORY[0x27438E430](v51, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v69);
    }

    v31 = 0;
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v71);
  return v31;
}

uint64_t sub_26F39636C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_26F3963D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v52 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAB8, &unk_26F399440);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v51 - v9;
  v51 = sub_26F396FD8();
  v11 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26F397008();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58[3] = type metadata accessor for StoredSpeechResult(0);
  v58[4] = sub_26F38CEA4(&qword_2806DB6F8, type metadata accessor for StoredSpeechResult, &protocol conformance descriptor for StoredSpeechResult);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  sub_26F39636C(a1, boxed_opaque_existential_1, type metadata accessor for StoredSpeechResult);
  v57[3] = type metadata accessor for StoredTranslationResult(0);
  v57[4] = sub_26F38CEA4(&qword_2806DBA88, type metadata accessor for StoredTranslationResult, &protocol conformance descriptor for StoredTranslationResult);
  v21 = __swift_allocate_boxed_opaque_existential_1(v57);
  sub_26F39636C(a2, v21, type metadata accessor for StoredTranslationResult);
  v22 = objc_opt_self();
  v23 = sub_26F397138();
  v24 = [v22 insertNewObjectForEntityForName:v23 inManagedObjectContext:a3];

  type metadata accessor for PersistedTranslation(0);
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;
    sub_26F396FF8();
    sub_26F396FE8();
    (*(v16 + 8))(v19, v15);
    v27 = sub_26F397138();

    [v26 setIdentifier_];

    sub_26F396FC8();
    v28 = sub_26F396FA8();
    v29 = v51;
    (*(v11 + 8))(v14, v51);
    [v26 setCreationDate_];

    sub_26F37CC58(v58, v55);
    v30 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
    MEMORY[0x28223BE20](v30, v30);
    v32 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v32);
    sub_26F39548C(v32, v26);
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_26F37CC58(v57, v55);
    v34 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
    MEMORY[0x28223BE20](v34, v34);
    v36 = &v51 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v36);
    sub_26F3955E4(v36, v26);
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_26F38A8A4();
    v38 = sub_26F3971B8();
    [v26 setInteractedIndices_];

    v39 = [v26 favoriteDate];
    if (v39)
    {
      v40 = v39;
      sub_26F396FB8();

      (*(v11 + 56))(v10, 0, 1, v29);
      sub_26F37DE50(v10, &qword_2806DBAB8, &unk_26F399440);
      if (v52)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    (*(v11 + 56))(v10, 1, 1, v29);
    sub_26F37DE50(v10, &qword_2806DBAB8, &unk_26F399440);
    if (v52)
    {
LABEL_10:
      _s22TranslationPersistence0A13StoreCoreDataC14toggleFavoriteyyAA09PersistedA0CF_0(v26);
    }
  }

  else
  {
    if (qword_281592BD0 != -1)
    {
      swift_once();
    }

    v41 = sub_26F3970F8();
    __swift_project_value_buffer(v41, qword_281592EA0);
    sub_26F37CC58(v57, v55);
    v42 = sub_26F3970D8();
    v43 = sub_26F397228();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v54 = v45;
      *v44 = 136642819;
      sub_26F37CC58(v55, v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBB08, &qword_26F399658);
      v46 = sub_26F397158();
      v48 = v47;
      __swift_destroy_boxed_opaque_existential_1(v55);
      v49 = sub_26F38B99C(v46, v48, &v54);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_26F37A000, v42, v43, "Failed to insert translation %{sensitive}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x27438E430](v45, -1, -1);
      MEMORY[0x27438E430](v44, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    v26 = 0;
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return v26;
}

uint64_t sub_26F396B50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_34Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26F396CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F396D50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DBB40, &unk_26F399680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F396DC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}