void sub_1BA342F2C(uint64_t a1)
{
  sub_1BA34384C(319, &qword_1EBBF0E68, MEMORY[0x1E69E6530], MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA342FF8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SummarySharingProfileTileEscalatedDetailsProvider(0);
  result = sub_1BA4A4D78();
  *a2 = result;
  return result;
}

void sub_1BA343038(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  *a4 = v5;
}

uint64_t sub_1BA3430B4(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_1BA4A4F38();
}

char *sub_1BA343120(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a4;
  ObjectType = swift_getObjectType();
  v66 = sub_1BA4A6478();
  v69 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v9);
  v65 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A64C8();
  v67 = *(v11 - 8);
  v68 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA34384C(0, &qword_1EBBF0E68, MEMORY[0x1E69E6530], MEMORY[0x1E695C070]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v57 - v18;
  v20 = OBJC_IVAR____TtC18HealthExperienceUI49SummarySharingProfileTileEscalatedDetailsProvider__alertsCount;
  aBlock[0] = 0;
  sub_1BA4A4EE8();
  v21 = *(v16 + 32);
  v21(&v5[v20], v19, v15);
  v22 = OBJC_IVAR____TtC18HealthExperienceUI49SummarySharingProfileTileEscalatedDetailsProvider__changesCount;
  aBlock[0] = 0;
  sub_1BA4A4EE8();
  v21(&v5[v22], v19, v15);
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI49SummarySharingProfileTileEscalatedDetailsProvider_sourceProfile] = a2;
  v23 = a2;
  v24 = MEMORY[0x1E69E7CC0];
  v25 = _s18HealthExperienceUI27SignificantTrendsDataSourceC9predicate7context13sourceProfile20additionalPredicatesSo11NSPredicateCSo22NSManagedObjectContextC_0A8Platform0gK0OSayAIGtFZ_0(a1, a2, MEMORY[0x1E69E7CC0]);
  v26 = sub_1BA26CB64(a2, v24);
  sub_1BA34384C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BA4B7510;
  *(v27 + 32) = v25;
  *(v27 + 40) = v26;
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v61 = v25;
  v60 = v26;
  v28 = sub_1BA4A6AE8();

  v29 = [objc_opt_self() orPredicateWithSubpredicates_];

  sub_1BA4A27B8();
  v30 = v29;
  v59 = v30;
  v31 = sub_1BA4A26C8();

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BA4B5470;
  v33 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v34 = sub_1BA4A6758();
  v35 = [v33 initWithKey:v34 ascending:0];

  *(v32 + 32) = v35;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v36 = sub_1BA4A6AE8();

  [v31 setSortDescriptors_];

  v37 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v38 = v31;
  v58 = v38;
  v39 = a1;
  v57 = v39;
  v40 = sub_1BA4A6758();
  v41 = [v37 initWithFetchRequest:v38 managedObjectContext:v39 sectionNameKeyPath:v40 cacheName:0];

  *&v5[OBJC_IVAR____TtC18HealthExperienceUI49SummarySharingProfileTileEscalatedDetailsProvider_frc] = v41;
  v42 = type metadata accessor for SummarySharingProfileTileEscalatedDetailsProvider(0);
  v71.receiver = v5;
  v71.super_class = v42;
  v43 = objc_msgSendSuper2(&v71, sel_init);
  v44 = *&v43[OBJC_IVAR____TtC18HealthExperienceUI49SummarySharingProfileTileEscalatedDetailsProvider_frc];
  v45 = v43;
  [v44 setDelegate_];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v46 = sub_1BA4A7308();
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = a3;
  v49 = a3;
  v50 = ObjectType;
  v51 = v64;
  v48[4] = v64;
  v48[5] = v50;
  aBlock[4] = sub_1BA34389C;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_91;
  v52 = _Block_copy(aBlock);
  sub_1B9F0F1B4(v49, v51);

  v53 = v62;
  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B9F3F378(0);
  sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
  v55 = v65;
  v54 = v66;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v53, v55, v52);
  _Block_release(v52);

  sub_1B9F0E310(v49, v51);
  (*(v69 + 8))(v55, v54);
  (*(v67 + 8))(v53, v68);
  return v45;
}

void sub_1BA34384C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double PDFSeparatedContent.separator.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EBBE8468 != -1)
  {
    swift_once();
  }

  v2 = [qword_1EBBED280 CGColor];
  result = 0.5;
  *a1 = xmmword_1BA4D26E0;
  *(a1 + 16) = 0x402E000000000000;
  *(a1 + 24) = v2;
  return result;
}

uint64_t PDFSeparatedContent.init(showSeparator:_:)@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = a1;
  result = a2();
  *a3 = result;
  return result;
}

void PDFSeparatedContent.render(context:document:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  *&v30 = *v2;
  BYTE8(v30) = v6;
  v7 = PDFSeparatedContent.minimumBoundingRectForContent(in:)(a2);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v34.origin.x = PDFBuilder.Document.drawingContext.getter();
  v39.origin.x = v7;
  v39.origin.y = v9;
  v39.size.width = v11;
  v39.size.height = v13;
  if (!CGRectContainsRect(v34, v39))
  {
    PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
  }

  PDFBuilder.Document.bodyBox.getter();
  if (((v14 != *(a2 + 176)) & v6) == 1)
  {
    if (qword_1EBBE8468 != -1)
    {
      swift_once();
    }

    v15 = [qword_1EBBED280 CGColor];
    v30 = xmmword_1BA4D26E0;
    v31 = 0x402E000000000000;
    v32 = v15;
    PDFHorizontalSeparator.render(context:document:)(a1, a2);
  }

  else
  {
    PDFBuilder.Document.bodyBox.getter();
    if (v16 != *(a2 + 176))
    {
      if (qword_1EBBE8468 != -1)
      {
        swift_once();
      }

      v17 = qword_1EBBED280;

      v18 = *(a2 + 168);
      v19 = *(a2 + 176);
      v20 = *(a2 + 184);
      v21 = *(a2 + 192);
      v35.origin.x = v18;
      v35.origin.y = v19;
      v35.size.width = v20;
      v35.size.height = v21;
      v22 = CGRectGetMinX(v35) + 0.0;
      v36.origin.x = v18;
      v36.origin.y = v19;
      v36.size.width = v20;
      v36.size.height = v21;
      v23 = CGRectGetMinY(v36) + 30.0;
      v37.origin.x = v18;
      v37.origin.y = v19;
      v37.size.width = v20;
      v37.size.height = v21;
      Width = CGRectGetWidth(v37);
      v38.origin.x = v18;
      v38.origin.y = v19;
      v38.size.width = v20;
      v38.size.height = v21;
      Height = CGRectGetHeight(v38);
      *(a2 + 168) = v22;
      *(a2 + 176) = v23;
      *(a2 + 184) = Width;
      *(a2 + 192) = Height + -30.0;
      *(a2 + 200) = 0;
    }
  }

  v26 = *(v5 + 16);
  if (v26)
  {
    v27 = v5 + 32;
    do
    {
      sub_1B9F0A534(v27, &v30);
      v28 = v32;
      v29 = v33;
      __swift_project_boxed_opaque_existential_1(&v30, v32);
      (*(v29 + 16))(a1, a2, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(&v30);
      v27 += 40;
      --v26;
    }

    while (v26);
  }
}

double PDFSeparatedContent.minimumBoundingRectForContent(in:)(CGFloat *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  PDFBuilder.Document.bodyBox.getter();
  v6 = v5;
  PDFBuilder.Document.drawingContext.getter();
  if (v6 == v7 || v4 == 0)
  {
    PDFBuilder.Document.bodyBox.getter();
    v9 = 0.0;
    if (v10 != a1[22])
    {
      if (qword_1EBBE8468 != -1)
      {
        swift_once();
      }

      v11 = qword_1EBBED280;

      v9 = 30.0;
    }
  }

  else
  {
    if (qword_1EBBE8468 != -1)
    {
      swift_once();
    }

    v12 = [qword_1EBBED280 CGColor];
    v13 = a1[21];
    v14 = a1[22];
    v15 = a1[23];

    v32.size.height = 30.5;
    v32.origin.x = v13;
    v32.origin.y = v14;
    v32.size.width = v15;
    v9 = CGRectGetHeight(v32) + 0.0;
  }

  v16 = *(v3 + 16);
  if (v16)
  {
    v17 = v3 + 32;
    do
    {
      sub_1B9F0A534(v17, v29);
      v18 = v30;
      v19 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v20 = (*(v19 + 32))(a1, v18, v19);
      v22 = v21;
      v24 = v23;
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(v29);
      v33.origin.x = v20;
      v33.origin.y = v22;
      v33.size.width = v24;
      v33.size.height = v26;
      v9 = v9 + CGRectGetHeight(v33);
      v17 += 40;
      --v16;
    }

    while (v16);
  }

  v27 = a1[21];
  v34.size.width = a1[23];
  v34.size.height = a1[24];
  v34.origin.x = v27;
  v34.origin.y = a1[22];
  CGRectGetWidth(v34);
  return v27;
}

BOOL PDFSeparatedContent.isFirstItem(in:)()
{
  PDFBuilder.Document.bodyBox.getter();
  v1 = v0;
  PDFBuilder.Document.drawingContext.getter();
  return v1 == v2;
}

double PDFSeparatedContent.boundingRectForContent(in:)(CGFloat *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  PDFBuilder.Document.bodyBox.getter();
  v6 = v5;
  PDFBuilder.Document.drawingContext.getter();
  if (v6 == v7 || v4 == 0)
  {
    PDFBuilder.Document.bodyBox.getter();
    v9 = 0.0;
    if (v10 != a1[22])
    {
      if (qword_1EBBE8468 != -1)
      {
        swift_once();
      }

      v11 = qword_1EBBED280;

      v9 = 30.0;
    }
  }

  else
  {
    if (qword_1EBBE8468 != -1)
    {
      swift_once();
    }

    v12 = [qword_1EBBED280 CGColor];
    v13 = a1[21];
    v14 = a1[22];
    v15 = a1[23];

    v32.size.height = 30.5;
    v32.origin.x = v13;
    v32.origin.y = v14;
    v32.size.width = v15;
    v9 = CGRectGetHeight(v32) + 0.0;
  }

  v16 = *(v3 + 16);
  if (v16)
  {
    v17 = v3 + 32;
    do
    {
      sub_1B9F0A534(v17, v29);
      v18 = v30;
      v19 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v20 = (*(v19 + 24))(a1, v18, v19);
      v22 = v21;
      v24 = v23;
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(v29);
      v33.origin.x = v20;
      v33.origin.y = v22;
      v33.size.width = v24;
      v33.size.height = v26;
      v9 = v9 + CGRectGetHeight(v33);
      v17 += 40;
      --v16;
    }

    while (v16);
  }

  v27 = a1[21];
  v34.size.width = a1[23];
  v34.size.height = a1[24];
  v34.origin.x = v27;
  v34.origin.y = a1[22];
  CGRectGetWidth(v34);
  return v27;
}

void *NonAnimatingDiffableCollectionViewAdaptor.__allocating_init(collectionView:backingDataSource:prefetchCellsWhenPerformingReloadData:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  ObjectType = swift_getObjectType();

  return sub_1BA344934(a1, a2, v6, v5, ObjectType, a3, a4);
}

void *NonAnimatingDiffableCollectionViewAdaptor.init(collectionView:backingDataSource:prefetchCellsWhenPerformingReloadData:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  ObjectType = swift_getObjectType();

  return sub_1BA3449F4(a1, a2, v6, v5, ObjectType, a3, a4);
}

double sub_1BA344204@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a3 + 24))(&v20, a1, a2, ObjectType, a3);
  if (v21)
  {
    sub_1B9F25598(&v20, a4);
  }

  else
  {
    sub_1B9F5DC2C(&v20, sub_1B9FCD694);
    sub_1BA4A3D88();

    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1B9F0B82C(a1, a2, &v20);
      _os_log_impl(&dword_1B9F07000, v15, v16, "The CellProvider block called us back with an item that no longer exists. Item Identifier: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BA34442C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BA344604() & 1;

  return sub_1B9F53D84(a1, v9, a3, a4, a5);
}

uint64_t sub_1BA344490()
{
  v1 = v0;
  sub_1B9F12538();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA344604();
  v8 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  swift_beginAccess();
  *(v1 + v8) = 1;
  v9 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 8);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 16);
  swift_unknownObjectRetain();
  v11(ObjectType, v9);
  swift_unknownObjectRelease();
  v12 = sub_1BA344604();
  sub_1B9F53D84(v7, v12 & 1, 1, 0, 0);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1BA344604()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1BA4A6758();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1B9F23224(v7);
  }

  return 0;
}

uint64_t NonAnimatingDiffableCollectionViewAdaptor.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
  sub_1BA215A6C(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_1B9F5DC2C(v0 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState, type metadata accessor for DiffableCollectionViewAdaptor.DebugState);

  return v0;
}

uint64_t NonAnimatingDiffableCollectionViewAdaptor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
  sub_1BA215A6C(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_1B9F5DC2C(v0 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState, type metadata accessor for DiffableCollectionViewAdaptor.DebugState);

  return swift_deallocClassInstance();
}

void *sub_1BA344934(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for NonAnimatingDiffableCollectionViewAdaptor(0);
  v13 = swift_allocObject();
  v14 = (v13 + OBJC_IVAR____TtC18HealthExperienceUI41NonAnimatingDiffableCollectionViewAdaptor_shouldAnimateDiffableCollectionViewAdaptorKey);
  *v14 = 0xD000000000000036;
  v14[1] = 0x80000001BA4E7DE0;
  return sub_1B9F3B090(a1, a2, a3, sub_1BA344204, 0, v13, a5, a6, a7);
}

void *sub_1BA3449F4(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = (a4 + OBJC_IVAR____TtC18HealthExperienceUI41NonAnimatingDiffableCollectionViewAdaptor_shouldAnimateDiffableCollectionViewAdaptorKey);
  *v7 = 0xD000000000000036;
  v7[1] = 0x80000001BA4E7DE0;
  return sub_1B9F3B090(a1, a2, a3, sub_1BA344204, 0, a4, a5, a6, a7);
}

uint64_t type metadata accessor for NonAnimatingDiffableCollectionViewAdaptor(uint64_t a1)
{
  result = qword_1EDC60588;
  if (!qword_1EDC60588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id DefaultHeaderCollectionReusableView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DefaultHeaderCollectionReusableView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1BA344BF0(uint64_t a1)
{
  v2 = [objc_opt_self() buttonWithType_];
  v3 = [v2 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() preferredFontForTextStyle_];
    [v4 setFont_];
  }

  v6 = [v2 titleLabel];
  if (v6)
  {
    v7 = v6;
    [v6 setAdjustsFontForContentSizeCategory_];
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 addTarget:a1 action:sel_detailButtonTapped_ forControlEvents:64];
  return v2;
}

uint64_t sub_1BA344D18(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1B9F7A7A4();
  return sub_1B9F7B644(v6);
}

uint64_t sub_1BA344D88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA344DE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1B9F7A7A4();
  return sub_1B9F7B644(a1);
}

uint64_t (*sub_1BA344E4C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA344EB0;
}

uint64_t sub_1BA344EB0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1B9F7A7A4();
  }

  return result;
}

void sub_1BA344EE4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v1, v7);
  if (!v7[3])
  {
    v4 = v0;
    sub_1B9F7B644(v7);
LABEL_8:
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    sub_1BA4A7DF8();

    sub_1B9F68124(v4 + v1, v7);
    sub_1B9F0D598(0, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720]);
    v5 = sub_1BA4A6828();
    MEMORY[0x1BFAF1350](v5);

    sub_1BA4A8018();
    __break(1u);
    return;
  }

  sub_1B9FCD918();
  type metadata accessor for HeaderItem(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v4 = v0;
    goto LABEL_8;
  }

  v2 = *(v6 + 72);
  v3 = *(v6 + 80);
  sub_1B9F0F1B8(v2, v3);

  if (v2)
  {
    v2(v0);
    sub_1B9F0E310(v2, v3);
  }
}

id DefaultHeaderCollectionReusableView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView____lazy_storage___detailButton] = 0;
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item];
  v4 = type metadata accessor for DefaultHeaderCollectionReusableView();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id DefaultHeaderCollectionReusableView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultHeaderCollectionReusableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA34529C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a1);
}

uint64_t (*sub_1BA3452F8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_1BA344EB0;
}

uint64_t HealthAppInteraction.Action.rawValue.getter()
{
  result = 0x654868636E75616CLL;
  switch(*v0)
  {
    case 1:
      result = 0x72656C416E65706FLL;
      break;
    case 2:
      result = 0x6957657A69736572;
      break;
    case 3:
      result = 0x6165537472617473;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6C417463656C6573;
      break;
    case 6:
      result = 0x69487463656C6573;
      break;
    case 7:
      result = 0x72547463656C6573;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x546C6C4177656976;
      break;
    case 0xA:
      result = 0x6867694877656976;
      break;
    case 0xB:
      result = 0x726F766146646461;
      break;
    case 0xC:
      v2 = 0x65766F6D6572;
      goto LABEL_12;
    case 0xD:
      v2 = 0x7463656C6573;
LABEL_12:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6146000000000000;
      break;
    default:
      return result;
  }

  return result;
}

HealthExperienceUI::HealthAppInteraction __swiftcall HealthAppInteraction.init(action:provenance:)(HealthExperienceUI::HealthAppInteraction::Action action, Swift::String_optional provenance)
{
  v3 = 0xEF70704168746C61;
  v4 = 0x654868636E75616CLL;
  switch(*action)
  {
    case 1:
      v3 = 0xEE006B6361745374;
      v4 = 0x72656C416E65706FLL;
      break;
    case 2:
      v3 = 0xEC000000776F646ELL;
      v4 = 0x6957657A69736572;
      break;
    case 3:
      v3 = 0xEB00000000686372;
      v4 = 0x6165537472617473;
      break;
    case 4:
      v4 = 0xD000000000000010;
      v3 = 0x80000001BA4E11B0;
      break;
    case 5:
      v3 = 0xEB00000000747265;
      v4 = 0x6C417463656C6573;
      break;
    case 6:
      v3 = 0xEF746867696C6867;
      v4 = 0x69487463656C6573;
      break;
    case 7:
      v3 = 0xEB00000000646E65;
      v4 = 0x72547463656C6573;
      break;
    case 8:
      v3 = 0x80000001BA4E11F0;
      v4 = 0xD000000000000011;
      break;
    case 9:
      v3 = 0xED000073646E6572;
      v4 = 0x546C6C4177656976;
      break;
    case 0xA:
      v3 = 0xEE0073746867696CLL;
      v4 = 0x6867694877656976;
      break;
    case 0xB:
      v3 = 0xEB00000000657469;
      v4 = 0x726F766146646461;
      break;
    case 0xC:
      v5 = 0x65766F6D6572;
      goto LABEL_12;
    case 0xD:
      v5 = 0x7463656C6573;
LABEL_12:
      v4 = v5 & 0xFFFFFFFFFFFFLL | 0x6146000000000000;
      v3 = 0xEE00657469726F76;
      break;
    default:
      break;
  }

  v2->value._countAndFlagsBits = v4;
  v2->value._object = v3;
  v2[1] = provenance;
  *&result.action._object = provenance;
  LOBYTE(result.action._countAndFlagsBits) = action;
  return result;
}

uint64_t *HealthAppInteractionAnalyticEvent.__allocating_init(healthStore:viewController:pinnedContentManager:interaction:)(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v10 = a4[3];
  sub_1B9F0A534(a3, v19);
  v11 = [objc_allocWithZone(MEMORY[0x1E696C0C0]) initWithHealthStore_];
  v12 = [objc_allocWithZone(MEMORY[0x1E696BEF8]) init];
  sub_1B9F0A534(v19, v18);
  type metadata accessor for HealthAppInteractionAnalyticEvent();
  v13 = swift_allocObject();
  v14 = a2;
  v15 = a1;
  v16 = sub_1BA10F194(v15, v14, v7, v8, v9, v10, v18, v11, v15, v12, v14, v13);

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v16;
}

HealthExperienceUI::HealthAppInteraction::Action_optional __swiftcall HealthAppInteraction.Action.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BA345A08()
{
  v0 = HealthAppInteraction.Action.rawValue.getter();
  v2 = v1;
  if (v0 == HealthAppInteraction.Action.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1BA4A8338();
  }

  return v5 & 1;
}

uint64_t sub_1BA345AA4()
{
  sub_1BA4A8488();
  HealthAppInteraction.Action.rawValue.getter();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

double sub_1BA345B0C(uint64_t a1)
{
  HealthAppInteraction.Action.rawValue.getter();
  sub_1BA4A68C8();

  return result;
}

uint64_t sub_1BA345B70(uint64_t a1)
{
  sub_1BA4A8488();
  HealthAppInteraction.Action.rawValue.getter();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA345BE0@<X0>(uint64_t *a1@<X8>)
{
  result = HealthAppInteraction.Action.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

HealthExperienceUI::HealthAppInteraction __swiftcall HealthAppInteraction.init(action:provenance:)(Swift::String action, Swift::String_optional provenance)
{
  v2->value = action;
  v2[1] = provenance;
  result.provenance = provenance;
  result.action = action;
  return result;
}

uint64_t static HealthAppInteractionAnalyticEvent.eventName.getter()
{
  swift_beginAccess();
  v0 = qword_1EBBF0E80;

  return v0;
}

double static HealthAppInteractionAnalyticEvent.eventName.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1EBBF0E80 = a1;
  off_1EBBF0E88 = a2;

  return result;
}

double sub_1BA345D1C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBBF0E80 = v2;
  off_1EBBF0E88 = v1;

  return result;
}

uint64_t *HealthAppInteractionAnalyticEvent.__allocating_init(healthStore:viewController:interaction:pinnedContentManager:deviceContextStore:healthDataSource:environmentDataSource:keyboardAvailability:interfaceOrientationProvider:)(void *a1, void *a2, uint64_t *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  ObjectType = swift_getObjectType();
  v15 = a8[3];
  v14 = a8[4];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a8, v15);
  v17 = a9[3];
  v16 = a9[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a9, v17);
  *(&v21 + 1) = v14;
  *&v21 = ObjectType;
  v19 = sub_1BA3473DC(a1, a2, a3, a4, a5, a6, a7, v22, v18, v24, v15, v17, v21, v16);

  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a8);
  return v19;
}

uint64_t *HealthAppInteractionAnalyticEvent.init(healthStore:viewController:interaction:pinnedContentManager:deviceContextStore:healthDataSource:environmentDataSource:keyboardAvailability:interfaceOrientationProvider:)(void *a1, void *a2, uint64_t *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v38 = a4;
  v39 = a5;
  v40 = a7;
  v36 = a3;
  ObjectType = swift_getObjectType();
  v14 = a8[3];
  v34 = a8[4];
  v35 = ObjectType;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a8, v14);
  v16 = MEMORY[0x1EEE9AC00](v15, v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v21 = a9[3];
  v20 = a9[4];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a9, v21);
  v23 = MEMORY[0x1EEE9AC00](v22, v22);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v23);
  v32 = v20;
  v31 = v14;
  v27 = v39;
  v28 = v40;
  v29 = sub_1BA346FE0(a1, a2, v36, v38, v39, a6, v40, v18, v25, v37, v31, v21, v35, v34, v32);

  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a8);
  return v29;
}

double sub_1BA346090(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  v10 = v4[13];
  v11 = swift_allocObject();
  v11[2] = sub_1B9F22454;
  v11[3] = v9;
  v11[4] = v8;
  v14[4] = sub_1B9F221A4;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1B9F3904C;
  v14[3] = &block_descriptor_93;
  v12 = _Block_copy(v14);

  [v10 numberOfDeviceContextsPerDeviceType_];
  _Block_release(v12);

  return result;
}

uint64_t sub_1BA3461FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v7 = sub_1BA4A6758();

  sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
  v8 = sub_1BA4A6618();
  AnalyticsSendEvent();

  sub_1BA4A3E58();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315394;
    v13 = sub_1BA4A85D8();
    v15 = sub_1B9F0B82C(v13, v14, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = qword_1EBBF0E80;
    v17 = off_1EBBF0E88;

    v18 = sub_1B9F0B82C(v16, v17, &v20);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_1B9F07000, v9, v10, "%s Submitted analytic event %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

id sub_1BA346478()
{
  v1 = v0;
  v71[1] = *MEMORY[0x1E69E9840];
  v68 = *v0;
  v2 = sub_1BA4A3EA8();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A1728();
  v67 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E7CC8];
  v70 = MEMORY[0x1E69E7CC8];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  v11 = sub_1BA4A2368();
  if (v11)
  {
    v13 = v11;
    sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
    sub_1BA4A0E68();

    v14 = sub_1BA4A7768();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = v10;
    sub_1B9F36508(v14, 0xD00000000000001CLL, 0x80000001BA5019B0, isUniquelyReferenced_nonNull_native);
    v70 = v71[0];
    v71[0] = sub_1BA4A0E68();
    sub_1B9F1D880(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1B9F1D768();
    sub_1BA4A66D8();

    v16 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v17 = sub_1BA4A6758();

    v18 = [v16 initWithString_];

    v19 = v70;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = v19;
    sub_1B9F36508(v18, 0xD000000000000017, 0x80000001BA4E5D80, v20);
    v70 = v71[0];
    sub_1BA4A0E78();
    v21 = sub_1BA4A7758();
    v22 = v70;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = v22;
    sub_1B9F36508(v21, 0xD00000000000001DLL, 0x80000001BA5019D0, v23);

    v70 = v71[0];
  }

  if (!v1[7])
  {
    sub_1B9F2240C(&qword_1EDC69CD0, v12, type metadata accessor for HealthAppInteractionAnalyticEvent, &protocol conformance descriptor for HealthAppInteractionAnalyticEvent);
    sub_1BA4A2CB8();
  }

  v24 = sub_1BA4A6758();

  v25 = v70;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v71[0] = v25;
  sub_1B9F36508(v24, 0x6F5368636E75616CLL, 0xEC00000065637275, v26);
  v27 = v71[0];
  v70 = v71[0];
  v71[0] = 0;
  v28 = v1[14];
  v29 = [v28 biologicalSexWithError_];
  v30 = v71[0];
  if (!v29)
  {
    v49 = v71[0];
    v50 = sub_1BA4A1488();

    swift_willThrow();
    goto LABEL_11;
  }

  v31 = v29;
  v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v34 = v33;
  v35 = v30;
  result = HKAnalyticsPropertyValueForBiologicalSex();
  if (result)
  {
    v37 = result;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = v27;
    sub_1B9F36508(v37, v32, v34, v38);

    v70 = v71[0];
    v39 = [v1[15] currentDate];
    sub_1BA4A16F8();

    v40 = sub_1BA4A16B8();
    v71[0] = 0;
    v41 = [v28 ageWithCurrentDate:v40 error:v71];

    v42 = v71[0];
    if (v41)
    {
      sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
      v43 = v42;
      v44 = sub_1BA4A7768();
      v45 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v47 = v46;
      v48 = HKAnalyticsDecadeBucketedAgeForAgeWithMinimumAgeAndMaximumAge();
      sub_1B9FEF83C(v48, v45, v47);

      (*(v67 + 8))(v9, v6);
      return v70;
    }

    v51 = v71[0];
    v50 = sub_1BA4A1488();

    swift_willThrow();
    (*(v67 + 8))(v9, v6);
LABEL_11:
    sub_1BA4A3E58();
    v52 = v50;
    v53 = sub_1BA4A3E88();
    v54 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v71[0] = v56;
      *v55 = 136315394;
      v57 = sub_1BA4A85D8();
      v59 = sub_1B9F0B82C(v57, v58, v71);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      v69 = v50;
      v60 = v50;
      sub_1B9FED358();
      v61 = sub_1BA4A6828();
      v63 = sub_1B9F0B82C(v61, v62, v71);

      *(v55 + 14) = v63;
      _os_log_impl(&dword_1B9F07000, v53, v54, "%s Could not query health data source: %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v56, -1, -1);
      MEMORY[0x1BFAF43A0](v55, -1, -1);
    }

    else
    {
    }

    (*(v65 + 8))(v5, v66);
    return v70;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA346C34@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = [v5 hk_window];
  if (v6)
  {
    v8 = v6;
    [v8 frame];
    [v8 frame];

    v9 = [v5 traitCollection];
    v10 = [v9 horizontalSizeClass];

    v11 = 0x746361706D6F63;
    v12 = 0x72616C75676572;
    if (v10 != 2)
    {
      v12 = 0x6E776F6E6B6E75;
    }

    if (v10 != 1)
    {
      v11 = v12;
    }

    v13 = v10 == 0;
    if (v10)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0x6669636570736E75;
    }

    if (v13)
    {
      v15 = 0xEB00000000646569;
    }

    else
    {
      v15 = 0xE700000000000000;
    }

    v16 = a1[24];
    v17 = a1[25];
    __swift_project_boxed_opaque_existential_1(a1 + 21, v16);
    v18 = (*(v17 + 8))(v16, v17);
    if (UIInterfaceOrientationIsLandscape(v18))
    {
      v19 = 0xE900000000000065;
      v20 = 0x70616373646E616CLL;
    }

    else
    {
      IsPortrait = UIInterfaceOrientationIsPortrait(v18);
      if (IsPortrait)
      {
        v20 = 0x7469617274726F70;
      }

      else
      {
        v20 = 0x6E776F6E6B6E75;
      }

      if (IsPortrait)
      {
        v19 = 0xE800000000000000;
      }

      else
      {
        v19 = 0xE700000000000000;
      }
    }

    v26 = sub_1BA4A6CC8();
    v27 = v24;
    MEMORY[0x1BFAF1350](32, 0xE100000000000000);
    v25 = sub_1BA4A6CC8();
    MEMORY[0x1BFAF1350](v25);

    MEMORY[0x1BFAF1350](32, 0xE100000000000000);
    MEMORY[0x1BFAF1350](v14, v15);

    MEMORY[0x1BFAF1350](32, 0xE100000000000000);
    MEMORY[0x1BFAF1350](v20, v19);

    result = v26;
    v22 = v27;
  }

  else
  {
    sub_1B9F2240C(&qword_1EDC69CD0, v7, type metadata accessor for HealthAppInteractionAnalyticEvent, &protocol conformance descriptor for HealthAppInteractionAnalyticEvent);
    result = sub_1BA4A2CB8();
  }

  *a3 = result;
  a3[1] = v22;
  return result;
}

uint64_t HealthAppInteractionAnalyticEvent.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1((v0 + 168));

  return v0;
}

uint64_t HealthAppInteractionAnalyticEvent.__deallocating_deinit()
{
  HealthAppInteractionAnalyticEvent.deinit();

  return swift_deallocClassInstance();
}

id sub_1BA346F94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t *sub_1BA346FE0(void *a1, void *a2, uint64_t *a3, void *a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v41 = a8;
  v46 = a6;
  v47 = a7;
  v44 = a4;
  v45 = a5;
  v43 = a2;
  v40 = a15;
  v42 = a9;
  v48 = *a10;
  v18 = sub_1BA4A72F8();
  v50 = *(v18 - 8);
  v51 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v49 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BA4A7288();
  MEMORY[0x1EEE9AC00](v21, v22);
  v23 = sub_1BA4A64C8();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v54[3] = a11;
  v54[4] = a14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  (*(*(a11 - 8) + 32))(boxed_opaque_existential_1, v41, a11);
  v53[3] = a12;
  v53[4] = v40;
  v26 = __swift_allocate_boxed_opaque_existential_1(v53);
  (*(*(a12 - 8) + 32))(v26, v42, a12);
  v27 = *a3;
  v28 = a3[1];
  a10[27] = MEMORY[0x1E69E7CC8];
  v29 = v43;
  a10[2] = a1;
  a10[3] = v29;
  a10[4] = v27;
  a10[5] = v28;
  *(a10 + 3) = *(a3 + 1);
  sub_1B9F0A534(a4, (a10 + 8));
  v31 = v45;
  v30 = v46;
  a10[13] = v45;
  a10[14] = v30;
  v32 = v47;
  a10[15] = v47;
  sub_1B9F0A534(v54, (a10 + 16));
  sub_1B9F0A534(v53, (a10 + 21));
  v46 = sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v33 = a1;
  v34 = v29;
  v35 = v31;
  v36 = v32;
  sub_1BA4A85D8();
  sub_1BA4A64A8();
  v52 = MEMORY[0x1E69E7CC0];
  sub_1B9F2240C(&unk_1EDC5E480, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v37 = MEMORY[0x1E69E8030];
  sub_1B9F22538(0, &qword_1EDC5E670, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1B9F0B8F8(&qword_1EDC5E660, &qword_1EDC5E670, v37);
  sub_1BA4A7C38();
  (*(v50 + 104))(v49, *MEMORY[0x1E69E8090], v51);
  v38 = sub_1BA4A7328();
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v54);
  a10[26] = v38;
  return a10;
}

uint64_t *sub_1BA3473DC(void *a1, void *a2, uint64_t *a3, void *a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14)
{
  v31 = a6;
  v32 = a7;
  v29 = a4;
  v30 = a5;
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v25 = a13;
  v15 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthAppInteractionAnalyticEvent();
  v23 = swift_allocObject();
  (*(v18 + 16))(v22, a8, a11);
  (*(v15 + 16))(v17, a9, a12);
  return sub_1BA346FE0(v26, v27, v28, v29, v30, v31, v32, v22, v17, v23, a11, a12, v25, *(&v25 + 1), a14);
}

unint64_t sub_1BA3475AC()
{
  result = qword_1EBBF0E90;
  if (!qword_1EBBF0E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0E90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthAppInteraction.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthAppInteraction.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1BA347804(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v46 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v38 = v6;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v45[0] = *v17;
    v45[1] = v18;
    v45[2] = v19;

    v20 = v19;
    a2(&v42, v45);

    v21 = v42;
    v22 = v43;
    v23 = v44;
    v24 = *v46;
    v26 = sub_1B9F24A34(v42, v43);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v41 & 1) == 0)
      {
        sub_1BA0F3028();
      }
    }

    else
    {
      sub_1B9F3664C(v29, v41 & 1);
      v31 = sub_1B9F24A34(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v46;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v38;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_1B9F52E48(a1);

      return;
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1BA4A83B8();
  __break(1u);
}

uint64_t sub_1BA347AA8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA347B24()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v19 = 0xD000000000000025;
  v20 = 0x80000001BA501A50;
  sub_1BA4A1788();
  sub_1BA348138(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v7 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v7);

  (*(v3 + 8))(v6, v2);
  v8 = v20;
  *(v0 + 16) = v19;
  *(v0 + 24) = v8;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_1BA4A1318();
  *(v0 + 40) = v9;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  v19 = type metadata accessor for CollectionViewListDisclosureCell();
  sub_1BA16A6B4();
  *(v0 + 72) = sub_1BA4A6808();
  *(v0 + 80) = v10;
  sub_1B9F25350();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5460;
  *(v11 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v11 + 40) = v12;
  *(v11 + 48) = 0xD000000000000013;
  *(v11 + 56) = 0x80000001BA501AA0;
  v13 = sub_1BA4A6AE8();

  v14 = HKUIJoinStringsForAutomationIdentifier();

  if (v14)
  {
    v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  *(v1 + 88) = v15;
  *(v1 + 96) = v17;
  return v1;
}

uint64_t sub_1BA347DE8()
{
  v1 = *(*v0 + 72);

  return v1;
}

uint64_t sub_1BA347E24()
{
  v1 = *(*v0 + 48);

  return v1;
}

uint64_t sub_1BA347E64()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 88);

  return v2;
}

double sub_1BA347EB4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;

  return result;
}

uint64_t sub_1BA347F60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA347FC4(uint64_t a1, uint64_t a2)
{
  result = sub_1BA348138(&qword_1EBBF0E98, a2, type metadata accessor for HealthChecklistProfileDataSourceItem, &unk_1BA4D2B04);
  *(a1 + 8) = result;
  return result;
}

void sub_1BA348064(void *a1)
{
  v1 = [a1 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = type metadata accessor for HealthChecklistViewController();
    v4 = objc_allocWithZone(v3);
    v5 = &v4[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___mainStore];
    *v5 = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 4) = 0;
    *&v4[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___dataSources] = 0;
    v6 = &v4[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_analyticsSource];
    *v6 = 0;
    v6[1] = 0;
    v4[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_isDoneButtonVisible] = 1;
    v8.receiver = v4;
    v8.super_class = v3;
    v7 = objc_msgSendSuper2(&v8, sel_initWithCollectionViewLayout_, 0);
    [v2 pushViewController:v7 animated:1];
  }
}

uint64_t sub_1BA348138(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t BrowseCategoriesDataSource.init(healthExperienceStore:healthStore:)(void *a1, void *a2)
{
  v34 = a2;
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v35 = sub_1BA4A1B68();
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B8B60;
  v8 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v9 = sub_1BA4A6758();
  v10 = [v8 initWithKey:v9 ascending:1];

  *(v7 + 32) = v10;
  v11 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v12 = sub_1BA4A6758();
  v13 = [v11 initWithKey:v12 ascending:0];

  *(v7 + 40) = v13;
  v14 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v15 = sub_1BA4A6758();
  v16 = [v14 initWithKey:v15 ascending:1 selector:sel_localizedStandardCompare_];

  *(v7 + 48) = v16;
  sub_1BA4A27B8();
  sub_1B9F0CBCC(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v17 = sub_1BA4A1C68();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v33 = xmmword_1BA4B5480;
  *(v20 + 16) = xmmword_1BA4B5480;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x1E69A3BE8], v17);
  v21 = sub_1BA4A0FA8();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v22 = swift_allocObject();
  *(v22 + 16) = v33;
  v23 = v34;
  *(v22 + 32) = sub_1BA4A6F38();
  v24 = MEMORY[0x1BFAED020](v20, 0, v6, v22);

  sub_1B9F82B94(v6, sub_1BA170230);
  v25 = v35;
  v26 = sub_1BA4A7558();

  *(v36 + qword_1EDC84BF8) = 0;
  sub_1B9F126E0(0);
  v28 = objc_allocWithZone(v27);
  v29 = v26;
  v30 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v29);
  v31 = sub_1B9F17A68(v30, sub_1B9F2860C, 0, 0);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v31;
}

uint64_t BrowseCategoriesDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

uint64_t BrowseCategoriesDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BA34885C()
{
  sub_1B9F82B94(v0 + OBJC_IVAR____TtC18HealthExperienceUI20BrowseFeedDataSource____lazy_storage___firstRestoreState, sub_1BA348C1C);
  sub_1B9F82B94(v0 + OBJC_IVAR____TtC18HealthExperienceUI20BrowseFeedDataSource_lastCloudSyncRestoreState, sub_1B9F0C700);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI20BrowseFeedDataSource_healthExperienceStore));

  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI20BrowseFeedDataSource_pinnedContentManager);

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_1BA348914()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F82B94(v0 + OBJC_IVAR____TtC18HealthExperienceUI20BrowseFeedDataSource____lazy_storage___firstRestoreState, sub_1BA348C1C);
  sub_1B9F82B94(v0 + OBJC_IVAR____TtC18HealthExperienceUI20BrowseFeedDataSource_lastCloudSyncRestoreState, sub_1B9F0C700);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI20BrowseFeedDataSource_healthExperienceStore));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI20BrowseFeedDataSource_pinnedContentManager));
  return v0;
}

uint64_t sub_1BA348A5C()
{
  sub_1BA348914();

  return swift_deallocClassInstance();
}

void sub_1BA348B28(uint64_t a1)
{
  sub_1BA348C1C(319);
  if (v1 <= 0x3F)
  {
    sub_1B9F0C700(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

Swift::Void __swiftcall SharingOverviewViewController.ttrButtonTapped()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  sub_1BA1174D4(0x532068746C616548, 0xEE00676E69726168, sub_1BA348CF0, v1);
}

Swift::Void __swiftcall SharedProfileOverviewViewController.ttrButtonTapped()()
{
  v1 = v0;
  sub_1BA071250(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A33C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1BA0CE620(v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BA349BE0(v5, sub_1BA071250);
    v11 = 0xE300000000000000;
    v12 = 7104878;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v12 = sub_1BA4A2AD8();
    v11 = v13;
    (*(v7 + 8))(v10, v6);
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v18 = 0xD000000000000013;
  v19 = 0x80000001BA501BE0;
  MEMORY[0x1BFAF1350](v12, v11);

  v14 = v18;
  v15 = v19;
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  v17 = v1;
  sub_1BA117908(v14, v15, sub_1BA349078, v16);
}

char *sub_1BA349108()
{
  sub_1BA071250(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];

  sub_1BA0CE620(v3);

  v4 = sub_1BA4A33C8();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1BA349BE0(v3, sub_1BA071250);
    v15 = 0;
    v16 = 0;
LABEL_9:
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v6 = MEMORY[0x1BFAEDD40]();
  v8 = v7;
  (*(v5 + 8))(v3, v4);
  v15 = v6;
  v16 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1BA27EE34(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1BA27EE34((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[16 * v11];
  *(v12 + 4) = v6;
  *(v12 + 5) = v8;
LABEL_10:
  sub_1BA349BE0(&v15, sub_1B9F2F388);
  return v9;
}

id sub_1BA349408()
{
  v0 = sub_1BA4A15D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v6 = result;
    v7 = [result isiPad];

    if (v7)
    {
      v8 = 1332846;
    }

    else
    {
      v8 = 1259112;
    }

    v9 = sub_1BA4A6758();
    v10 = sub_1BA4A6758();
    sub_1BA0B5A7C();
    v11 = sub_1BA4A6AE8();
    v12 = sub_1BA4A6AE8();
    if (sub_1BA349108())
    {
      v13 = sub_1BA4A6AE8();
    }

    else
    {
      v13 = 0;
    }

    v14 = [objc_opt_self() hk:v8 tapToHealthRadarURLForComponent:v9 title:v10 description:0 classification:0 reproducibility:v11 keywords:2 autoDiagnostics:v12 attachments:v13 collaborationContactHandles:?];

    sub_1BA4A1588();
    v15 = [objc_opt_self() defaultWorkspace];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1BA4A1548();
      sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
      v18 = sub_1BA4A6618();

      [v16 openSensitiveURL:v17 withOptions:v18];
    }

    return (*(v1 + 8))(v4, v0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA3496D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A6758();
  v7 = sub_1BA4A6758();
  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v10 = v3;
  v11 = sub_1BA4A6758();
  v17[4] = a2;
  v17[5] = v9;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1BA0B06D4;
  v17[3] = a3;
  v12 = _Block_copy(v17);

  v13 = objc_opt_self();
  v14 = [v13 actionWithTitle:v11 style:0 handler:v12];
  _Block_release(v12);

  [v8 addAction_];
  v15 = sub_1BA4A6758();
  v16 = [v13 actionWithTitle:v15 style:1 handler:0];

  [v8 addAction_];
  [v10 presentViewController:v8 animated:1 completion:0];
}

id sub_1BA349918()
{
  v0 = sub_1BA4A15D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v6 = result;
    v7 = [result isiPad];

    if (v7)
    {
      v8 = 1332846;
    }

    else
    {
      v8 = 1259112;
    }

    v9 = objc_opt_self();
    v10 = sub_1BA4A6758();
    v11 = sub_1BA4A6758();
    sub_1BA0B5A7C();
    v12 = sub_1BA4A6AE8();
    v13 = sub_1BA4A6AE8();
    v14 = [v9 hk:v8 tapToHealthRadarURLForComponent:v10 title:v11 description:0 classification:0 reproducibility:v12 keywords:2 autoDiagnostics:v13 attachments:0 collaborationContactHandles:?];

    sub_1BA4A1588();
    v15 = [objc_opt_self() defaultWorkspace];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1BA4A1548();
      sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
      v18 = sub_1BA4A6618();

      [v16 openSensitiveURL:v17 withOptions:v18];
    }

    return (*(v1 + 8))(v4, v0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA349BE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA349C58()
{
  type metadata accessor for PlatformSharingVersionMismatchTileCell();
  sub_1BA34A244();
  return sub_1BA4A6808();
}

uint64_t sub_1BA349C90(uint64_t a1)
{
  v2 = sub_1BA34A1F0();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

char *sub_1BA349CDC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI38PlatformSharingVersionMismatchTileCell_item];
  v10 = type metadata accessor for SharingVersionMismatchTileView();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v11 = [objc_allocWithZone(v10) initWithFrame_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI38PlatformSharingVersionMismatchTileCell_tileView] = v11;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for PlatformSharingVersionMismatchTileCell();
  v12 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = [v12 contentView];
  v14 = OBJC_IVAR____TtC18HealthExperienceUI38PlatformSharingVersionMismatchTileCell_tileView;
  [v13 addSubview_];

  v15 = *&v12[v14];
  v16 = [v12 contentView];
  [v15 hk:v16 alignConstraintsWithView:?];

  return v12;
}

double sub_1BA349EA8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI38PlatformSharingVersionMismatchTileCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v1, v8);
  if (!v9)
  {
    sub_1B9F7B644(v8);
LABEL_6:
    v6 = 0;
    v3 = 0;
    goto LABEL_7;
  }

  sub_1B9FCD918();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v2 = v11;
  if (!v11)
  {
    goto LABEL_6;
  }

  v4 = v12;
  v3 = v13;
  v5 = v10;

  sub_1BA34A198(v5, v2, v4, v3);
  v6 = v4;
LABEL_7:
  sub_1BA2A86B0(v6, v3);

  return result;
}

id sub_1BA349F98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatformSharingVersionMismatchTileCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA34A03C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI38PlatformSharingVersionMismatchTileCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA34A094(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI38PlatformSharingVersionMismatchTileCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA349EA8();
  return sub_1B9F7B644(a1);
}

double (*sub_1BA34A100(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA34A164;
}

double sub_1BA34A164(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA349EA8();
  }

  return result;
}

double sub_1BA34A198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1BA34A1F0()
{
  result = qword_1EBBF0F08;
  if (!qword_1EBBF0F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0F08);
  }

  return result;
}

unint64_t sub_1BA34A244()
{
  result = qword_1EBBE9DD0;
  if (!qword_1EBBE9DD0)
  {
    type metadata accessor for PlatformSharingVersionMismatchTileCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9DD0);
  }

  return result;
}

void sub_1BA34A288(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1BA4A3E28();

    v14 = a1;
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v32 = a4;
      v18 = v17;
      v34 = swift_slowAlloc();
      v36 = v34;
      *v18 = 136315906;
      v19 = sub_1BA4A85D8();
      v21 = sub_1B9F0B82C(v19, v20, &v36);
      v33 = v16;
      v22 = a2;
      v23 = v21;

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_1B9F0B82C(v22, a3, &v36);
      *(v18 + 22) = 2080;
      if (v32)
      {
        v24 = 1702195828;
      }

      else
      {
        v24 = 0x65736C6166;
      }

      if (v32)
      {
        v25 = 0xE400000000000000;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      v26 = sub_1B9F0B82C(v24, v25, &v36);

      *(v18 + 24) = v26;
      *(v18 + 32) = 2080;
      v35 = a1;
      v27 = a1;
      sub_1BA34AC04(0);
      v28 = sub_1BA4A6808();
      v30 = sub_1B9F0B82C(v28, v29, &v36);

      *(v18 + 34) = v30;
      _os_log_impl(&dword_1B9F07000, v15, v33, "[%s] error occurred while attempting to start a FaceTime call to %s with isVideoEnabled: %s with error: %s", v18, 0x2Au);
      v31 = v34;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
  }
}

void sub_1BA34A530(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v57[-v17];
  v19 = sub_1BA4A6758();
  if ([v19 _appearsToBeEmail])
  {
    v58 = a1;
    v62 = v11;
    v66 = v10;
    v20 = 3;
  }

  else
  {
    if (([v19 _appearsToBePhoneNumber] & 1) == 0)
    {
      sub_1BA4A3E28();

      v32 = sub_1BA4A3E88();
      v33 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v60 = a2;
        v35 = v11;
        v36 = v34;
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v36 = 136315395;
        v38 = sub_1BA4A85D8();
        v40 = sub_1B9F0B82C(v38, v39, aBlock);
        v66 = v10;
        v41 = v40;

        *(v36 + 4) = v41;
        *(v36 + 12) = 2081;
        *(v36 + 14) = sub_1B9F0B82C(v60, a3, aBlock);
        _os_log_impl(&dword_1B9F07000, v32, v33, "[%s] %{private}s is neither email nor phone number. Skipping looking up contact.", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v37, -1, -1);
        MEMORY[0x1BFAF43A0](v36, -1, -1);

        (*(v35 + 8))(v18, v66);
      }

      else
      {

        (*(v11 + 8))(v18, v10);
      }

      return;
    }

    v58 = a1;
    v62 = v11;
    v66 = v10;
    v20 = 2;
  }

  v21 = objc_allocWithZone(MEMORY[0x1E69D8C00]);
  v22 = sub_1BA4A6758();
  v23 = [v21 initWithType:v20 value:v22];

  v24 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v25 = [v24 providers];
  sub_1BA34ABA8();
  v26 = sub_1BA4A6B08();

  v64 = v23;
  v65 = v19;
  v60 = a2;
  v61 = a4;
  v63 = v24;
  v59 = a5;
  if (v26 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v28 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1BFAF2860](v28, v26);
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if ([v29 isFaceTimeProvider])
      {

        v42 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
        v43 = v64;
        [v42 setHandle_];
        v44 = v58 & 1;
        [v42 setVideo_];
        [v42 setShowUIPrompt_];
        v45 = [objc_opt_self() sharedInstance];
        v46 = swift_allocObject();
        v48 = v59;
        v47 = v60;
        *(v46 + 16) = v61;
        *(v46 + 24) = v48;
        *(v46 + 32) = v47;
        *(v46 + 40) = a3;
        *(v46 + 48) = v44;
        aBlock[4] = sub_1BA34ABF4;
        aBlock[5] = v46;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BA33A4B8;
        aBlock[3] = &block_descriptor_95;
        v49 = _Block_copy(aBlock);

        [v45 launchAppForDialRequest:v42 completion:v49];

        _Block_release(v49);
        return;
      }

      ++v28;
      if (v31 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:

  sub_1BA4A3E28();
  v50 = sub_1BA4A3E88();
  v51 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136315138;
    v54 = sub_1BA4A85D8();
    v56 = sub_1B9F0B82C(v54, v55, aBlock);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_1B9F07000, v50, v51, "[%s] Could not find FaceTime provider", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x1BFAF43A0](v53, -1, -1);
    MEMORY[0x1BFAF43A0](v52, -1, -1);
  }

  else
  {
  }

  (*(v62 + 8))(v14, v66);
}

unint64_t sub_1BA34ABA8()
{
  result = qword_1EBBF0F10;
  if (!qword_1EBBF0F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBF0F10);
  }

  return result;
}

void sub_1BA34AC04(uint64_t a1)
{
  if (!qword_1EDC6B3E0)
  {
    sub_1B9FED358();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6B3E0);
    }
  }
}

uint64_t TextViewItem.init(leadingSymbolName:symbolScale:symbolPaletteColors:symbolAlignment:markdown:container:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v33 = a6;
  v34 = a7;
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v13 = sub_1BA4A1798();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a5;
  v19 = *(a5 + 8);
  v20 = *a8;
  strcpy(v35, "TextViewItem_");
  HIWORD(v35[1]) = -4864;
  sub_1BA4A1788();
  sub_1B9F2AA14(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v21 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v21);

  result = (*(v14 + 8))(v17, v13);
  v23 = v35[1];
  *a9 = v35[0];
  *(a9 + 8) = v23;
  v24 = v30;
  v25 = v31;
  *(a9 + 16) = a1;
  *(a9 + 24) = v24;
  v26 = v32;
  v27 = v33;
  *(a9 + 32) = v25;
  *(a9 + 40) = v26;
  *(a9 + 48) = v18;
  *(a9 + 56) = v19;
  v28 = v34;
  *(a9 + 64) = v27;
  *(a9 + 72) = v28;
  *(a9 + 80) = sub_1BA34B4C4;
  *(a9 + 88) = 0;
  *(a9 + 96) = v20;
  *(a9 + 104) = 0;
  *(a9 + 112) = 0;
  return result;
}

void TextViewItem.init(leadingSymbolName:symbolScale:symbolPaletteColors:symbolAlignment:markdown:container:automationIdentifier:linkAction:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v32 = a8;
  v33 = a4;
  v35 = a6;
  v36 = a7;
  v34 = a12;
  v31 = a11;
  v18 = sub_1BA4A1798();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a5;
  v24 = *(a5 + 8);
  v25 = v33;
  v26 = *v32;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = v25;
  *(a9 + 48) = v23;
  *(a9 + 56) = v24;
  v27 = v36;
  *(a9 + 64) = v35;
  *(a9 + 72) = v27;
  *(a9 + 96) = v26;
  v28 = v31;
  *(a9 + 104) = a10;
  *(a9 + 112) = v28;
  *(a9 + 80) = v34;
  *(a9 + 88) = a13;
  strcpy(v37, "TextViewItem_");
  HIWORD(v37[1]) = -4864;

  sub_1BA4A1788();
  sub_1B9F2AA14(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v29 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v29);

  (*(v19 + 8))(v22, v18);

  v30 = v37[1];
  *a9 = v37[0];
  *(a9 + 8) = v30;
}

uint64_t TextViewItem.reuseIdentifier.getter()
{
  if (*(v0 + 96))
  {
    type metadata accessor for TextViewFooterTableViewCell();
    v1 = &unk_1EBBF0F18;
    v2 = type metadata accessor for TextViewFooterTableViewCell;
  }

  else
  {
    type metadata accessor for TextViewCollectionReusableView();
    v1 = &qword_1EDC6A000;
    v2 = type metadata accessor for TextViewCollectionReusableView;
  }

  sub_1BA34B654(0, v1, v2);
  return sub_1BA4A6808();
}

uint64_t TextViewItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void TextViewItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t TextViewItem.leadingSymbolName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void TextViewItem.leadingSymbolName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void TextViewItem.symbolAlignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t TextViewItem.symbolAlignment.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t TextViewItem.markdown.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void TextViewItem.markdown.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

void sub_1BA34B30C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 80) = sub_1BA34ED40;
  *(a2 + 88) = v5;
}

uint64_t TextViewItem.linkAction.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void TextViewItem.linkAction.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t TextViewItem.baseIdentifier.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

void TextViewItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_1BA34B4C4(uint64_t a1, uint64_t a2)
{
  sub_1BA34E624(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10 - v5;
  sub_1BA3331A4(a2, &v10 - v5);
  v7 = sub_1BA4A15D8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1BA34EDF8(v6, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
  }

  sub_1BA4A1538();
  return (*(v8 + 8))(v6, v7);
}

uint64_t sub_1BA34B654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  result = *a2;
  if (!*a2)
  {
    a3();
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t static TextViewItem.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[8];
  v6 = a1[9];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[8];
  v10 = a2[9];
  if (!v3)
  {
    result = 0;
    if (v7)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v7)
  {
    return 0;
  }

  if (a1[2] != a2[2] || v3 != v7)
  {
    v12 = sub_1BA4A8338();
    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    if (v4 != v8)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v4 != v8)
  {
    return 0;
  }

LABEL_13:
  if (v5 == v9 && v6 == v10)
  {
    return 1;
  }

  return sub_1BA4A8338();
}

uint64_t TextViewItem.hash(into:)(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  if (v1[3])
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  MEMORY[0x1BFAF2ED0](v3);
  sub_1BA4A84A8();
  if (v4)
  {
    sub_1BA34E534(a1, v4);
  }

  return sub_1BA4A68C8();
}

uint64_t TextViewItem.hashValue.getter()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  sub_1BA4A8488();
  sub_1BA4A84A8();
  if (v1)
  {
    sub_1BA4A68C8();
  }

  MEMORY[0x1BFAF2ED0](v3);
  sub_1BA4A84A8();
  if (v2)
  {
    sub_1BA34E534(v5, v2);
  }

  sub_1BA4A68C8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA34B914()
{
  if (*(v0 + 96))
  {
    type metadata accessor for TextViewFooterTableViewCell();
    v1 = &unk_1EBBF0F18;
    v2 = type metadata accessor for TextViewFooterTableViewCell;
  }

  else
  {
    type metadata accessor for TextViewCollectionReusableView();
    v1 = &qword_1EDC6A000;
    v2 = type metadata accessor for TextViewCollectionReusableView;
  }

  sub_1BA34B654(0, v1, v2);
  return sub_1BA4A6808();
}

uint64_t sub_1BA34B99C(uint64_t a1)
{
  sub_1BA4A8488();
  TextViewItem.hash(into:)(v2);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA34B9D8()
{
  v1 = *(v0 + 104);

  return v1;
}

void sub_1BA34BA08(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_1BA34BA60(uint64_t a1)
{
  v2 = sub_1BA34EDA4();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA34BAAC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[8];
  v6 = a1[9];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[8];
  v10 = a2[9];
  if (!v3)
  {
    result = 0;
    if (v7)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v7)
  {
    return 0;
  }

  if (a1[2] != a2[2] || v3 != v7)
  {
    v12 = sub_1BA4A8338();
    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    if (v4 != v8)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v4 != v8)
  {
    return 0;
  }

LABEL_13:
  if (v5 == v9 && v6 == v10)
  {
    return 1;
  }

  return sub_1BA4A8338();
}

id sub_1BA34BB8C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor_];

  [v0 _setInteractiveTextSelectionDisabled_];
  v3 = [v1 secondaryLabelColor];
  [v0 setTextColor_];

  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setScrollEnabled_];
  v5 = [v0 textContainer];
  [v5 setLineFragmentPadding_];

  sub_1BA34E624(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v7 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v8 = v7;
  v9 = [v1 hk_appKeyColor];
  *(inited + 64) = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *(inited + 40) = v9;
  sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9F44408(inited + 32, sub_1B9FE9628);
  type metadata accessor for Key(0);
  sub_1B9F2AA14(&qword_1EDC5E3D0, type metadata accessor for Key, &unk_1BA4B4408);
  v10 = sub_1BA4A6618();

  [v0 setLinkTextAttributes_];

  v11 = [v0 textContainer];
  [v11 setHeightTracksTextView_];

  v12 = [v0 textContainer];
  [v12 setLineFragmentPadding_];

  return v0;
}

void sub_1BA34BED4(uint64_t *a1, void *a2)
{
  v81 = a2;
  v4 = MEMORY[0x1E69E6720];
  sub_1BA34E624(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v78 = &v63 - v7;
  v8 = sub_1BA4A11D8();
  v77 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A11E8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A1208();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  sub_1BA34E624(0, &unk_1EDC6E290, MEMORY[0x1E6968848], v4);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v63 - v21;
  v80 = sub_1BA4A12C8();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v23);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v76 = &v63 - v28;
  v29 = *a1;
  swift_beginAccess();
  sub_1B9F68124(v2 + v29, v93);
  if (!v94)
  {
    sub_1B9F44408(v93, sub_1B9F7B6F8);
    goto LABEL_5;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v32 = *(v2 + *v81);
    [v32 setAttributedText_];
    [v32 setAccessibilityIdentifier_];
    return;
  }

  v68 = v25;
  v73 = v83;
  v70 = v84;
  v75 = v85;
  v69 = v86;
  v74 = v87;
  v66 = v88;
  v30 = v89;
  v71 = v90;
  v67 = v91;
  v72 = v92;
  (*(v13 + 104))(v16, *MEMORY[0x1E6968748], v12);
  (*(v77 + 104))(v11, *MEMORY[0x1E6968728], v8);

  sub_1BA4A11F8();
  v31 = sub_1BA4A15D8();
  (*(*(v31 - 8) + 56))(v78, 1, 1, v31);
  sub_1BA4A12A8();
  v33 = v69;
  v78 = v30;
  v77 = v2;
  v34 = v79;
  v35 = v80;
  (*(v79 + 56))(v22, 0, 1, v80);
  v36 = v76;
  (*(v34 + 32))(v76, v22, v35);
  v82 = [objc_opt_self() secondaryLabelColor];
  sub_1BA34EE68();
  sub_1BA4A12E8();
  v37 = objc_opt_self();
  v38 = *MEMORY[0x1E69DDD28];
  v82 = [v37 preferredFontForTextStyle_];
  sub_1B9F4DAC8();
  sub_1BA4A12E8();
  if (v75)
  {

    v64 = v37;
    v65 = v38;
    v39 = [v37 preferredFontForTextStyle_];
    v40 = objc_opt_self();
    v41 = [v40 configurationWithFont:v39 scale:v33];

    v42 = v41;
    v43 = sub_1BA4A6758();
    v44 = [objc_opt_self() systemImageNamed:v43 withConfiguration:v42];

    v70 = v42;
    if (v44)
    {
      v45 = [v44 imageWithRenderingMode_];

      if (!v74)
      {

LABEL_13:
        v52 = [objc_opt_self() textAttachmentWithImage_];
        v53 = v52;
        v54 = v66;
        if (v66 != 255)
        {
          v55 = [v52 image];
          if (v55)
          {
            v56 = v55;
            if (v54)
            {
              v57 = [v64 preferredFontForTextStyle_];
              if (v54 == 1)
              {
                [v57 capHeight];

                [v56 size];
              }

              else
              {
                [v57 descender];
              }
            }

            [v56 size];
            [v56 size];
            [v53 setBounds_];
          }
        }

        v58 = [objc_opt_self() attributedStringWithAttachment_];
        v59 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

        sub_1B9F0ADF8(0, &qword_1EDC6B580, 0x1E696AAB0);
        (*(v34 + 16))(v68, v36, v35);
        v60 = sub_1BA4A73A8();
        [v59 appendAttributedString_];

        v50 = *(v77 + *v81);
        v61 = v59;
        [v50 setAttributedText_];

        v51 = v70;
        goto LABEL_21;
      }

      sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);

      v46 = sub_1BA4A6AE8();
      v47 = [v40 configurationWithPaletteColors_];

      v48 = [v45 imageByApplyingSymbolConfiguration_];
      if (v48)
      {
        v49 = v48;

        v45 = v49;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v50 = *(v77 + *v81);
  sub_1B9F0ADF8(0, &qword_1EDC6B580, 0x1E696AAB0);
  (*(v34 + 16))(v68, v36, v35);
  v51 = sub_1BA4A73A8();
  [v50 setAttributedText_];
LABEL_21:

  if (v72)
  {
    v62 = sub_1BA4A6758();
  }

  else
  {
    v62 = 0;
  }

  [v50 setAccessibilityIdentifier_];

  (*(v34 + 8))(v36, v35);
}

void sub_1BA34CAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 48))(a3, a4);
  v6 = a2;
  v7 = v5;
  if (v6)
  {
    v8 = sub_1BA4A6758();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 setAccessibilityIdentifier_];
}

void (*sub_1BA34CB84(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI30TextViewCollectionReusableView_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

void (*sub_1BA34CC3C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA34CCA0;
}

id TextViewCollectionReusableView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *TextViewCollectionReusableView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI30TextViewCollectionReusableView_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI30TextViewCollectionReusableView_textView;
  *&v4[v10] = sub_1BA34BB8C();
  v22.receiver = v4;
  v22.super_class = type metadata accessor for TextViewCollectionReusableView();
  v11 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 contentView];
  v13 = OBJC_IVAR____TtC18HealthExperienceUI30TextViewCollectionReusableView_textView;
  [v12 addSubview_];

  sub_1BA34CF5C();
  v14 = objc_opt_self();
  v15 = v11;
  v16 = [v14 clearColor];
  [v15 setBackgroundColor_];

  v17 = *&v11[v13];
  [v17 setDelegate_];

  sub_1BA34E624(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B5480;
  v19 = sub_1BA4A4858();
  v20 = MEMORY[0x1E69DC2B0];
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  MEMORY[0x1BFAF2130](v18, sel_preferredContentSizeCategoryDidChange);

  swift_unknownObjectRelease();

  return v15;
}

void sub_1BA34CF5C()
{
  v1 = objc_opt_self();
  sub_1B9F109F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5890;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI30TextViewCollectionReusableView_textView];
  v4 = [v3 topAnchor];
  v5 = [v0 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = [v3 leadingAnchor];
  v9 = [v0 contentView];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:16.0];
  *(v2 + 40) = v11;
  v12 = [v0 contentView];
  v13 = [v12 bottomAnchor];

  v14 = [v3 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v2 + 48) = v15;
  v16 = [v3 trailingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:-16.0];
  *(v2 + 56) = v19;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v20 = sub_1BA4A6AE8();

  [v1 activateConstraints_];
}

uint64_t (*sub_1BA34D348(uint64_t a1))(uint64_t, uint64_t)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA34EED0;
}

uint64_t (*sub_1BA34D3CC(uint64_t a1))(uint64_t, uint64_t)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_1BA34EED0;
}

void (*sub_1BA34D44C(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI30TextViewCollectionReusableView_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

void sub_1BA34D56C(void *a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA34D5C4(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27TextViewFooterTableViewCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

uint64_t sub_1BA34D65C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  sub_1B9F68124(a1, v12);
  v9 = *a2;
  v10 = *a5;
  swift_beginAccess();
  sub_1B9F63E74(v12, v9 + v10);
  swift_endAccess();
  sub_1BA34BED4(a5, a6);
  return sub_1B9F44408(v12, sub_1B9F7B6F8);
}

uint64_t sub_1BA34D714(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = *a2;
  swift_beginAccess();
  sub_1B9F63E74(a1, v3 + v7);
  swift_endAccess();
  sub_1BA34BED4(a2, a3);
  return sub_1B9F44408(a1, sub_1B9F7B6F8);
}

void (*sub_1BA34D7A8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA34D80C;
}

void sub_1BA34D820(uint64_t a1, char a2, uint64_t *a3, void *a4)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA34BED4(a3, a4);
  }
}

id TextViewFooterTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *TextViewFooterTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v6 = &v3[OBJC_IVAR____TtC18HealthExperienceUI27TextViewFooterTableViewCell_item];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI27TextViewFooterTableViewCell_textView;
  *&v3[v7] = sub_1BA34BB8C();
  if (a3)
  {
    v8 = sub_1BA4A6758();
  }

  else
  {
    v8 = 0;
  }

  v18.receiver = v3;
  v18.super_class = type metadata accessor for TextViewFooterTableViewCell();
  v9 = objc_msgSendSuper2(&v18, sel_initWithStyle_reuseIdentifier_, a1, v8);

  v10 = v9;
  v11 = [v10 contentView];
  v12 = OBJC_IVAR____TtC18HealthExperienceUI27TextViewFooterTableViewCell_textView;
  [v11 addSubview_];

  sub_1BA34DB78();
  v13 = objc_opt_self();
  v14 = v10;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor_];

  v16 = *&v10[v12];
  [v16 setDelegate_];

  return v14;
}

void sub_1BA34DAD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7)
{
  swift_unknownObjectWeakInit();
  v10 = a1 + *a5;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v11 = *a6;
  *(a1 + v11) = sub_1BA34BB8C();
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA34DB78()
{
  v1 = objc_opt_self();
  sub_1B9F109F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5890;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI27TextViewFooterTableViewCell_textView];
  v4 = [v3 topAnchor];
  v5 = [v0 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = [v3 leadingAnchor];
  v9 = [v0 contentView];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:16.0];
  *(v2 + 40) = v11;
  v12 = [v0 contentView];
  v13 = [v12 bottomAnchor];

  v14 = [v3 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v2 + 48) = v15;
  v16 = [v0 contentView];
  v17 = [v16 trailingAnchor];

  v18 = [v3 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:16.0];

  *(v2 + 56) = v19;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v20 = sub_1BA4A6AE8();

  [v1 activateConstraints_];
}

uint64_t sub_1BA34DEA4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v12 = sub_1BA4A15D8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1588();
  v17 = a3;
  v18 = a1;
  LOBYTE(a8) = sub_1BA34E688(v16, a8, a9);

  (*(v13 + 8))(v16, v12);
  return a8 & 1;
}

id sub_1BA34DFD4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA34E028(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  MEMORY[0x1BFAF44B0](a1 + *a3, a2);
  sub_1B9F44408(a1 + *a4, sub_1B9F7B6F8);
  v8 = *(a1 + *a5);
}

uint64_t sub_1BA34E0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v9 = *a4;
  swift_beginAccess();
  sub_1B9F63E74(a1, v5 + v9);
  swift_endAccess();
  sub_1BA34BED4(a4, a5);
  return sub_1B9F44408(a1, sub_1B9F7B6F8);
}

uint64_t (*sub_1BA34E160(uint64_t a1))(uint64_t, uint64_t)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA34EED4;
}

uint64_t sub_1BA34E1D0@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  return sub_1B9F68124(v4 + v5, a2);
}

uint64_t sub_1BA34E23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v9 = *v5;
  v10 = *a4;
  swift_beginAccess();
  sub_1B9F63E74(a1, v9 + v10);
  swift_endAccess();
  sub_1BA34BED4(a4, a5);
  return sub_1B9F44408(a1, sub_1B9F7B6F8);
}

uint64_t (*sub_1BA34E2D4(uint64_t a1))(uint64_t, uint64_t)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_1BA34EED4;
}

void sub_1BA34E398(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA34E3F0(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27TextViewFooterTableViewCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

void sub_1BA34E4B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1BFAF2ED0](v3);
  if (v3)
  {
    v4 = a2 + 48;
    do
    {
      v4 += 24;

      sub_1BA4A68C8();
      sub_1BA4A84A8();

      --v3;
    }

    while (v3);
  }
}

void sub_1BA34E534(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1BA4A7CC8();
    MEMORY[0x1BFAF2ED0](v8);
    v3 = sub_1BA4A7CC8();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1BFAF2ED0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x1BFAF2860](i, a2);
      sub_1BA4A77A8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1BA4A77A8();

      --v3;
    }

    while (v3);
  }
}

void sub_1BA34E624(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA34E688(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1BA34E624(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17[-v8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *a3;
    swift_beginAccess();
    sub_1B9F68124(v3 + v12, v19);
    if (v20)
    {
      sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
      if (swift_dynamicCast())
      {
        v13 = v18;

        v14 = sub_1BA4A15D8();
        v15 = *(v14 - 8);
        (*(v15 + 16))(v9, a1, v14);
        (*(v15 + 56))(v9, 0, 1, v14);
        v13(v11, v9);

        sub_1BA34EDF8(v9, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
      }

      else
      {
      }
    }

    else
    {

      sub_1B9F44408(v19, sub_1B9F7B6F8);
    }
  }

  return 0;
}

unint64_t sub_1BA34E904()
{
  result = qword_1EBBF0F68;
  if (!qword_1EBBF0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0F68);
  }

  return result;
}

uint64_t keypath_get_3Tm_0@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t sub_1BA34ED40(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_1BA34EDA4()
{
  result = qword_1EDC694F0;
  if (!qword_1EDC694F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC694F0);
  }

  return result;
}

uint64_t sub_1BA34EDF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA34E624(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1BA34EE68()
{
  result = qword_1EDC6AEF8;
  if (!qword_1EDC6AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6AEF8);
  }

  return result;
}

uint64_t TextFieldItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TextFieldItem.uniqueIdentifier.getter()
{
  strcpy(v2, "TextFieldItem_");
  type metadata accessor for TextFieldItem(0);
  v0 = sub_1BA4A1748();
  MEMORY[0x1BFAF1350](v0);

  return v2[0];
}

uint64_t type metadata accessor for TextFieldItem(uint64_t a1)
{
  result = qword_1EBBF0FE8;
  if (!qword_1EBBF0FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA34EFC8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TextFieldItem(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BA353914;
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

uint64_t sub_1BA34F05C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA3538DC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for TextFieldItem(0) + 24));
  v8 = *v7;
  v9 = v7[1];
  sub_1B9F0F1B8(v3, v4);
  result = sub_1B9F0E310(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t TextFieldItem.dataProvider.getter()
{
  v1 = (v0 + *(type metadata accessor for TextFieldItem(0) + 24));
  v2 = *v1;
  sub_1B9F0F1B8(*v1, v1[1]);
  return v2;
}

uint64_t TextFieldItem.dataProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextFieldItem(0) + 24));
  result = sub_1B9F0E310(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1BA34F1DC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TextFieldItem(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BA3538AC;
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

uint64_t sub_1BA34F270(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA353874;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for TextFieldItem(0) + 28));
  v8 = *v7;
  v9 = v7[1];
  sub_1B9F0F1B8(v3, v4);
  result = sub_1B9F0E310(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t TextFieldItem.updateHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for TextFieldItem(0) + 28));
  v2 = *v1;
  sub_1B9F0F1B8(*v1, v1[1]);
  return v2;
}

uint64_t TextFieldItem.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextFieldItem(0) + 28));
  result = sub_1B9F0E310(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextFieldItem.isEditEnabled.setter(char a1)
{
  result = type metadata accessor for TextFieldItem(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t TextFieldItem.init(title:placeholderText:isEditEnabled:keyboardType:dataProvider:updateHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  type metadata accessor for TextFieldCollectionViewCell();
  sub_1BA34F594();
  *a9 = sub_1BA4A6808();
  a9[1] = v18;
  v19 = type metadata accessor for TextFieldItem(0);
  result = sub_1BA4A1788();
  v21 = (a9 + v19[6]);
  v22 = (a9 + v19[7]);
  v23 = (a9 + v19[10]);
  v24 = (a9 + v19[9]);
  *v24 = a1;
  v24[1] = a2;
  *v23 = a3;
  v23[1] = a4;
  *(a9 + v19[8]) = a5;
  *(a9 + v19[11]) = a6;
  *v21 = a7;
  v21[1] = a8;
  *v22 = a10;
  v22[1] = a11;
  return result;
}

unint64_t sub_1BA34F594()
{
  result = qword_1EBBF0F70;
  if (!qword_1EBBF0F70)
  {
    type metadata accessor for TextFieldCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF0F70);
  }

  return result;
}

uint64_t TextFieldItem.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextFieldItem(0) + 36));

  return v1;
}

void TextFieldItem.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextFieldItem(0) + 36));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TextFieldItem.placeholderText.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextFieldItem(0) + 40));

  return v1;
}

void TextFieldItem.placeholderText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextFieldItem(0) + 40));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TextFieldItem.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextFieldItem(0) + 24));
  if (v1)
  {
    return v1(v0);
  }

  else
  {
    return 0;
  }
}

id TextFieldItem.placeholderColor.getter()
{
  v0 = [objc_opt_self() systemBlueColor];

  return v0;
}

Swift::Void __swiftcall TextFieldItem.commitUpdate(with:)(Swift::String_optional with)
{
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v4 = *(v1 + *(type metadata accessor for TextFieldItem(0) + 28));
  if (v4)
  {
    v4(v1, countAndFlagsBits, object);
  }
}

uint64_t sub_1BA34F890(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t sub_1BA34F8E0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t sub_1BA34F918(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));
  if (v2)
  {
    return v2(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA34F964(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + *(a3 + 28));
  if (v4)
  {
    return v4(v3, result, a2);
  }

  return result;
}

uint64_t sub_1BA34F9B0(uint64_t a1)
{
  strcpy(v3, "TextFieldItem_");
  v1 = sub_1BA4A1748();
  MEMORY[0x1BFAF1350](v1);

  return v3[0];
}

uint64_t sub_1BA34FA1C(uint64_t a1)
{
  v2 = sub_1BA353A24(&qword_1EBBF0FD0, type metadata accessor for TextFieldItem, &protocol conformance descriptor for TextFieldItem);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA34FBF4(uint64_t a1, void **a2)
{
  v3 = MEMORY[0x1E69A3348];
  sub_1BA353944(a1, v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  v4 = *a2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v8, v4 + v5);
  v6 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x128))(v6);
  return sub_1B9F44468(v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v3, sub_1B9F0D950);
}

uint64_t sub_1BA34FCFC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_item;
  swift_beginAccess();
  return sub_1BA353944(v1 + v3, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1BA34FD6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x128))(v4);
  return sub_1B9F44468(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

uint64_t (*sub_1BA34FE48(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA34FEAC;
}

uint64_t sub_1BA34FEAC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x128))(result);
  }

  return result;
}

id sub_1BA34FF18()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___proxy;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___proxy);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___proxy);
  }

  else
  {
    v4 = type metadata accessor for TextFieldCollectionViewCell.TextFieldCollectionViewCellInner();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1BA34FFCC()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___titleLabel;
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___titleLabel);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___titleLabel);
  }

  else
  {
    v42 = v4;
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = *MEMORY[0x1E69DDCF8];
    v12 = objc_opt_self();
    v13 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
    }

    else
    {
      v41 = v0;
      sub_1BA4A3DD8();
      v16 = v11;
      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v45 = v39;
        *v19 = 136315906;
        v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v22 = sub_1B9F0B82C(v20, v21, &v45);
        v40 = v16;
        v23 = v22;

        *(v19 + 4) = v23;
        *(v19 + 12) = 2080;
        v43 = 0;
        v44 = 1;
        sub_1BA35303C(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v24 = sub_1BA4A6808();
        v26 = sub_1B9F0B82C(v24, v25, &v45);

        *(v19 + 14) = v26;
        *(v19 + 22) = 2080;
        LODWORD(v43) = 0;
        type metadata accessor for SymbolicTraits(0);
        v27 = sub_1BA4A6808();
        v29 = sub_1B9F0B82C(v27, v28, &v45);
        v16 = v40;

        *(v19 + 24) = v29;
        *(v19 + 32) = 2112;
        v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v19 + 34) = v30;
        v31 = v38;
        *v38 = v30;
        _os_log_impl(&dword_1B9F07000, v17, v18, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v19, 0x2Au);
        sub_1B9F44468(v31, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        v32 = v39;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v32, -1, -1);
        MEMORY[0x1BFAF43A0](v19, -1, -1);
      }

      (*(v2 + 8))(v6, v42);
      v0 = v41;
      v33 = [v12 preferredFontDescriptorWithTextStyle_];
      v15 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
    }

    [v10 setFont_];

    [v10 setTextAlignment_];
    [v10 setAdjustsFontForContentSizeCategory_];
    v34 = [objc_opt_self() labelColor];
    [v10 setTextColor_];

    v35 = *(v0 + v7);
    *(v0 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v36 = v8;
  return v9;
}

id sub_1BA350478()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField;
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField);
  }

  else
  {
    v43 = v4;
    v10 = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
    v11 = *MEMORY[0x1E69DDCF8];
    v12 = objc_opt_self();
    v13 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
    }

    else
    {
      v42 = v0;
      sub_1BA4A3DD8();
      v16 = v11;
      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v46 = v40;
        *v19 = 136315906;
        v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v41 = v16;
        v22 = sub_1B9F0B82C(v20, v21, &v46);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        v44 = 0;
        v45 = 1;
        sub_1BA35303C(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v23 = sub_1BA4A6808();
        v25 = sub_1B9F0B82C(v23, v24, &v46);

        *(v19 + 14) = v25;
        *(v19 + 22) = 2080;
        LODWORD(v44) = 0;
        type metadata accessor for SymbolicTraits(0);
        v26 = sub_1BA4A6808();
        v28 = sub_1B9F0B82C(v26, v27, &v46);
        v16 = v41;

        *(v19 + 24) = v28;
        *(v19 + 32) = 2112;
        v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v19 + 34) = v29;
        v30 = v39;
        *v39 = v29;
        _os_log_impl(&dword_1B9F07000, v17, v18, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v19, 0x2Au);
        sub_1B9F44468(v30, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v30, -1, -1);
        v31 = v40;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        MEMORY[0x1BFAF43A0](v19, -1, -1);
      }

      (*(v2 + 8))(v6, v43);
      v0 = v42;
      v32 = [v12 preferredFontDescriptorWithTextStyle_];
      v15 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
    }

    [v10 setFont_];

    v33 = [objc_opt_self() labelColor];
    [v10 setTextColor_];

    [v10 setAdjustsFontForContentSizeCategory_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    [v10 setTextAlignment_];
    LODWORD(v34) = 1148846080;
    [v10 setContentCompressionResistancePriority:0 forAxis:v34];
    v35 = sub_1BA34FF18();
    [v10 setDelegate_];

    v36 = *(v0 + v7);
    *(v0 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v37 = v8;
  return v9;
}

void sub_1BA350964(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField) = a1;
}

void (*sub_1BA350978(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA350478();
  return sub_1BA3509C0;
}

void sub_1BA3509C0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField) = v2;
}

id TextFieldCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TextFieldCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___proxy] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField] = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_titleAndValueFieldSideBySideConstraints] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_titleAndValueFieldStackedConstraints] = v10;
  v4[OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_isEditEnabled] = 1;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TextFieldCollectionViewCell();
  v11 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 contentView];
  v13 = sub_1BA34FFCC();
  [v12 addSubview_];

  v14 = [v11 contentView];
  v15 = sub_1BA350478();
  [v14 addSubview_];

  sub_1BA350C58();
  return v11;
}

id TextFieldCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1BA350C58()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = [v0 contentView];
  v3 = [v2 bottomAnchor];

  v4 = sub_1BA34FFCC();
  v5 = [v4 bottomAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:12.0];
  *(v1 + 32) = v6;
  v7 = sub_1BA350478();
  v8 = [v7 topAnchor];

  v9 = [v0 contentView];
  v10 = [v9 topAnchor];

  v11 = [v8 &selRef:v10 objectAtIndex:12.0 + 6];
  *(v1 + 40) = v11;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField;
  v13 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField] leadingAnchor];
  v14 = OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___titleLabel;
  v15 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___titleLabel] trailingAnchor];
  v16 = [v13 constraintGreaterThanOrEqualToAnchor:v15 constant:8.0];

  *(v1 + 48) = v16;
  v17 = [*&v0[v12] trailingAnchor];
  v18 = [v0 contentView];
  v19 = [v18 layoutMarginsGuide];

  v20 = [v19 trailingAnchor];
  v21 = [v17 constraintEqualToAnchor_];

  *(v1 + 56) = v21;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_titleAndValueFieldSideBySideConstraints] = v1;

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B5890;
  v23 = [*&v0[v14] trailingAnchor];
  v24 = [v0 contentView];
  v25 = [v24 layoutMarginsGuide];

  v26 = [v25 trailingAnchor];
  v27 = [v23 constraintEqualToAnchor_];

  *(v22 + 32) = v27;
  v28 = [*&v0[v12] topAnchor];
  v29 = [*&v0[v14] bottomAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v22 + 40) = v30;
  v31 = [*&v0[v12] leadingAnchor];
  v32 = [v0 contentView];
  v33 = [v32 layoutMarginsGuide];

  v34 = [v33 leadingAnchor];
  v35 = [v31 &selRef:v34 numberWithInteger:? + 5];

  *(v22 + 48) = v35;
  v36 = [*&v0[v12] trailingAnchor];
  v37 = [v0 contentView];
  v38 = [v37 layoutMarginsGuide];

  v39 = [v38 trailingAnchor];
  v40 = [v36 constraintLessThanOrEqualToAnchor_];

  *(v22 + 56) = v40;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_titleAndValueFieldStackedConstraints] = v22;

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1BA4B5890;
  v42 = [*&v0[v14] topAnchor];
  v43 = [v0 &selRef_fetchSources];
  v44 = [v43 topAnchor];

  v45 = [v42 constraintEqualToAnchor:v44 constant:12.0];
  *(v41 + 32) = v45;
  v46 = [*&v0[v14] leadingAnchor];
  v47 = [v0 &selRef_fetchSources];
  v48 = [v47 layoutMarginsGuide];

  v49 = [v48 leadingAnchor];
  v50 = [v46 constraintEqualToAnchor_];

  *(v41 + 40) = v50;
  v51 = [v0 &selRef_fetchSources];
  v52 = [v51 bottomAnchor];

  v53 = [*&v0[v12] bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:12.0];

  *(v41 + 48) = v54;
  v55 = [*&v0[v14] widthAnchor];
  v56 = [v55 constraintGreaterThanOrEqualToConstant_];

  *(v41 + 56) = v56;
  v57 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v58 = sub_1BA4A6AE8();

  [v57 activateConstraints_];

  sub_1BA3518E4();
}

uint64_t sub_1BA3513D8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA353944(v0 + v1, v37, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (!v38)
  {
    sub_1B9F44468(v37, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    return sub_1B9F44468(&v34, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem, sub_1B9F0D950);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1B9F0D950(0, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    return sub_1B9F44468(&v34, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem, sub_1B9F0D950);
  }

  if (!*(&v35 + 1))
  {
    return sub_1B9F44468(&v34, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem, sub_1B9F0D950);
  }

  sub_1B9F1134C(&v34, v37);
  v2 = v0;
  v3 = sub_1BA34FFCC();
  v4 = v38;
  v5 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v5 + 16))(v4, v5);
  v6 = sub_1BA4A6758();

  [v3 setText_];

  v7 = sub_1BA350478();
  v8 = v38;
  v9 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v10 = (*(v9 + 40))(v8, v9);
  v12 = v11;
  v13 = v38;
  v14 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v15 = (*(v14 + 56))(v13, v14);
  v16 = sub_1BA3530A0(v10, v12, v15);

  [v7 setAttributedPlaceholder_];

  v17 = v38;
  v18 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_isEditEnabled) = (*(v18 + 32))(v17, v18) & 1;
  sub_1BA351DB8();
  v19 = OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField;
  v20 = v2;
  v21 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField);
  v22 = v38;
  v23 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v24 = *(v23 + 48);
  v25 = v21;
  v24(v22, v23);
  if (v26)
  {
    v27 = sub_1BA4A6758();
  }

  else
  {
    v27 = 0;
  }

  [v25 setText_];

  v29 = *(v20 + v19);
  v30 = v38;
  v31 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v32 = *(v31 + 24);
  v33 = v29;
  [v33 setKeyboardType_];

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void sub_1BA351794(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TextFieldCollectionViewCell();
  objc_msgSendSuper2(&v9, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    v3 = [a1 preferredContentSizeCategory];
    v4 = sub_1BA4A74F8();

    v5 = v4 & 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = sub_1BA4A74F8();
  if (v5 == 2 || ((v8 ^ v5) & 1) != 0)
  {
    sub_1BA3518E4();
  }
}

void sub_1BA3518E4()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1BA4A74F8();
  v4 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  if (v3)
  {

    v5 = sub_1BA4A6AE8();

    [v4 activateConstraints_];

    v6 = sub_1BA4A6AE8();

    [v4 deactivateConstraints_];

    v7 = sub_1BA34FFCC();
    [v7 setNumberOfLines_];

    v8 = [v0 effectiveUserInterfaceLayoutDirection];
    v9 = sub_1BA350478();
    v15 = v9;
    if (v8 == 1)
    {
      goto LABEL_6;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_7;
  }

  v10 = sub_1BA4A6AE8();

  [v4 activateConstraints_];

  v11 = sub_1BA4A6AE8();

  [v4 deactivateConstraints_];

  v12 = sub_1BA34FFCC();
  [v12 setNumberOfLines_];

  v13 = [v0 effectiveUserInterfaceLayoutDirection];
  v9 = sub_1BA350478();
  v15 = v9;
  if (v13)
  {
    goto LABEL_5;
  }

LABEL_6:
  v14 = 2;
LABEL_7:
  [v9 setTextAlignment_];
}

uint64_t sub_1BA351B48()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA353944(v0 + v1, v21, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (!v22)
  {
    sub_1B9F44468(v21, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    return sub_1B9F44468(&v18, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem, sub_1B9F0D950);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1B9F0D950(0, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    return sub_1B9F44468(&v18, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem, sub_1B9F0D950);
  }

  if (!*(&v19 + 1))
  {
    return sub_1B9F44468(&v18, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem, sub_1B9F0D950);
  }

  sub_1B9F1134C(&v18, v21);
  v2 = v0;
  v3 = sub_1BA350478();
  v4 = [v3 isEditing];

  if (v4)
  {
    v5 = [objc_opt_self() systemGrayColor];
  }

  else
  {
    v7 = v22;
    v8 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v5 = (*(v8 + 56))(v7, v8);
  }

  v9 = v5;
  v10 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField);
  v11 = v22;
  v12 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v13 = *(v12 + 40);
  v14 = v10;
  v15 = v13(v11, v12);
  v17 = sub_1BA3530A0(v15, v16, v9);

  [v14 setAttributedPlaceholder_];

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1BA351DB8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_isEditEnabled;
  [v0 setUserInteractionEnabled_];
  v2 = OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA353944(&v0[v2], v47, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (v48)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
    }
  }

  else
  {
    sub_1B9F44468(v47, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v50 = 0u;
    v51 = 0u;
    v52 = 0;
  }

  v3 = v0[v1];
  v4 = sub_1BA350478();
  v5 = objc_opt_self();
  v6 = v5;
  if (v3 != 1)
  {
    v15 = [v5 systemGrayColor];
    [v4 setTextColor_];

    v16 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField];
    sub_1BA353944(&v50, v47, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem);
    v17 = v48;
    if (v48)
    {
      v18 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v19 = *(v18 + 40);
      v8 = v16;
      v19(v17, v18);
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1(v47);
      if (v21)
      {
LABEL_18:
        v26 = [v6 systemGrayColor];
        sub_1BA35303C(0, &qword_1EBBEB678, sub_1BA0BA7A8, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        v28 = MEMORY[0x1E69DB650];
        *(inited + 16) = xmmword_1BA4B5480;
        v29 = *v28;
        *(inited + 32) = v29;
        *(inited + 40) = v26;
        v30 = v29;
        v31 = v26;
        v32 = sub_1B9FDB9E8(inited);
        swift_setDeallocating();
        sub_1BA3539C8(inited + 32);
        sub_1B9FECAA4(v32);

        v33 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v34 = sub_1BA4A6758();
        type metadata accessor for Key(0);
        sub_1BA353A24(&qword_1EDC5E3D0, type metadata accessor for Key, &unk_1BA4B4408);
        v35 = sub_1BA4A6618();

        v36 = [v33 initWithString:v34 attributes:v35];

        goto LABEL_21;
      }
    }

    else
    {
      v8 = v16;
      sub_1B9F44468(v47, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem, sub_1B9F0D950);
    }

    goto LABEL_18;
  }

  v7 = [v5 labelColor];
  [v4 setTextColor_];

  v8 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField];
  sub_1BA353944(&v50, v47, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem);
  v9 = v48;
  if (!v48)
  {
    v22 = v8;
    sub_1B9F44468(v47, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem, sub_1B9F0D950);
LABEL_13:

    goto LABEL_14;
  }

  v10 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  v11 = *(v10 + 40);
  v12 = v8;
  v11(v9, v10);
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1(v47);
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_14:
  sub_1BA353944(&v50, v47, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem);
  v23 = v48;
  if (v48)
  {
    v24 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v25 = (*(v24 + 56))(v23, v24);
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    sub_1B9F44468(v47, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem, sub_1B9F0D950);
    v25 = [v6 systemBlueColor];
  }

  sub_1BA35303C(0, &qword_1EBBEB678, sub_1BA0BA7A8, MEMORY[0x1E69E6F90]);
  v37 = swift_initStackObject();
  v38 = MEMORY[0x1E69DB650];
  *(v37 + 16) = xmmword_1BA4B5480;
  v39 = *v38;
  *(v37 + 32) = v39;
  *(v37 + 40) = v25;
  v40 = v39;
  v41 = v25;
  v42 = sub_1B9FDB9E8(v37);
  swift_setDeallocating();
  sub_1BA3539C8(v37 + 32);
  sub_1B9FECAA4(v42);

  v43 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v44 = sub_1BA4A6758();
  type metadata accessor for Key(0);
  sub_1BA353A24(&qword_1EDC5E3D0, type metadata accessor for Key, &unk_1BA4B4408);
  v45 = sub_1BA4A6618();

  v36 = [v43 initWithString:v44 attributes:v45];

LABEL_21:
  [v8 setAttributedPlaceholder_];

  return sub_1B9F44468(&v50, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem, sub_1B9F0D950);
}

void sub_1BA352514(uint64_t a1)
{
  v1 = sub_1BA350478();
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD180]) init];
  [v2 setBarStyle_];
  sub_1B9F0ADF8(0, &qword_1EDC6B600, 0x1E69DC708);
  v3 = sub_1BA4A6AE8();
  [v2 setItems_];

  v4 = v2;
  [v4 sizeToFit];
  [v1 setInputAccessoryView_];
}

uint64_t sub_1BA352600()
{
  v0 = sub_1BA350478();
  v1 = [v0 text];

  if (!v1)
  {
    return 0;
  }

  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v2;
}

void sub_1BA352674()
{
  v0 = sub_1BA350478();
  [v0 becomeFirstResponder];
}

uint64_t sub_1BA3526B8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA353944(v2 + v5, v14, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (!v15)
  {
    sub_1B9F44468(v14, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
    return sub_1B9F44468(&v11, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem, sub_1B9F0D950);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1B9F0D950(0, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    return sub_1B9F44468(&v11, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem, sub_1B9F0D950);
  }

  if (!*(&v12 + 1))
  {
    return sub_1B9F44468(&v11, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem, sub_1B9F0D950);
  }

  sub_1B9F1134C(&v11, v14);
  v6 = sub_1BA350478();
  if (a2)
  {
    v7 = sub_1BA4A6758();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText_];

  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v10 + 64))(a1, a2, v9, v10);
  sub_1BA351B48();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1BA3528C8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA353944(v0 + v1, v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (!v14)
  {
    sub_1B9F44468(v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    return sub_1B9F44468(&v10, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem, sub_1B9F0D950);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1B9F0D950(0, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    return sub_1B9F44468(&v10, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem, sub_1B9F0D950);
  }

  if (!*(&v11 + 1))
  {
    return sub_1B9F44468(&v10, &qword_1EBBF0FB8, &unk_1EBBF0FC0, &protocol descriptor for ManualTextEntrySectionedDataSourceItem, sub_1B9F0D950);
  }

  sub_1B9F1134C(&v10, v13);
  sub_1BA351B48();
  v2 = v14;
  v3 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v4 = sub_1BA350478();
  v5 = [v4 text];

  if (v5)
  {
    v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  (*(v3 + 64))(v6, v8, v2, v3);

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1BA352C4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 text];
  if (v9)
  {
    v10 = v9;
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  v11 = sub_1BA4A6758();

  v12 = sub_1BA4A6758();
  v13 = [v11 stringByReplacingCharactersInRange:a2 withString:{a3, v12}];

  v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v16 = v15;

  v17 = [a1 text];
  if (v17)
  {
    v18 = v17;
    v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x1A8))(v19, v21, v14, v16);

  return v22 & 1;
}

id sub_1BA352E84(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall TextFieldCollectionViewCell.didSelectCell(_:in:)(UIView *_, UIViewController *in)
{
  v3 = sub_1BA350478();
  [v3 setUserInteractionEnabled_];

  v4 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField);

  [v4 becomeFirstResponder];
}

id sub_1BA352FDC()
{
  v1 = *v0;
  v2 = sub_1BA350478();
  [v2 setUserInteractionEnabled_];

  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField);

  return [v3 becomeFirstResponder];
}

void sub_1BA35303C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1BA3530A0(uint64_t a1, void *a2, void *a3)
{
  v3 = a2;
  if (a2)
  {
    sub_1BA35303C(0, &qword_1EBBEB678, sub_1BA0BA7A8, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v6 = MEMORY[0x1E69DB650];
    *(inited + 16) = xmmword_1BA4B5480;
    v7 = *v6;
    *(inited + 32) = v7;
    *(inited + 40) = a3;
    v8 = v7;
    v9 = a3;
    v10 = sub_1B9FDB9E8(inited);
    swift_setDeallocating();
    sub_1BA3539C8(inited + 32);
    sub_1B9FECAA4(v10);

    v11 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v12 = sub_1BA4A6758();
    type metadata accessor for Key(0);
    sub_1BA353A24(&qword_1EDC5E3D0, type metadata accessor for Key, &unk_1BA4B4408);
    v13 = sub_1BA4A6618();

    v3 = [v11 initWithString:v12 attributes:v13];
  }

  return v3;
}

void _s18HealthExperienceUI27TextFieldCollectionViewCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___proxy) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell____lazy_storage___valueField) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_titleAndValueFieldSideBySideConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_titleAndValueFieldStackedConstraints) = v2;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27TextFieldCollectionViewCell_isEditEnabled) = 1;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA3532FC(uint64_t a1)
{
  result = sub_1BA353A24(&qword_1EBBF0FD0, type metadata accessor for TextFieldItem, &protocol conformance descriptor for TextFieldItem);
  *(a1 + 8) = result;
  return result;
}

void sub_1BA3533C4(uint64_t a1)
{
  v1 = MEMORY[0x1E69E6158];
  sub_1BA4A1798();
  if (v2 <= 0x3F)
  {
    sub_1BA35303C(319, &qword_1EDC5DB48, sub_1B9F37BB8, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_1B9F23348(319, &qword_1EDC6E410, v1, MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        type metadata accessor for UIKeyboardType(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BA353874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a2;
  v6[1] = a3;
  return v4(a1, v6);
}

uint64_t sub_1BA353914@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BA353944(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1B9F0D5FC(0, a3, a4, a5, sub_1B9F0D950);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1BA3539C8(uint64_t a1)
{
  sub_1BA0BA7A8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA353A24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1BA353A98@<D0>(uint64_t a5@<X8>)
{
  sub_1B9F252FC();

  v6 = sub_1BA4A5E18();
  v35 = v7;
  v36 = v6;
  v34 = v8;
  v37 = v9;

  v10 = sub_1BA4A5E18();
  v12 = v11;
  v14 = v13;
  sub_1BA4A5D48();
  v15 = sub_1BA4A5DE8();
  v17 = v16;
  v19 = v18;

  sub_1BA102AF4(v10, v12, v14 & 1);

  sub_1BA4A5CB8();
  v20 = sub_1BA4A5DA8();
  v22 = v21;
  LOBYTE(v10) = v23;
  v25 = v24;
  sub_1BA102AF4(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v27 = swift_getKeyPath();
  v28 = swift_getKeyPath();
  v41 = v34 & 1;
  v40 = 1;
  *&v45 = v20;
  *(&v45 + 1) = v22;
  LOBYTE(v46) = v10 & 1;
  *(&v46 + 1) = *v43;
  DWORD1(v46) = *&v43[3];
  *(&v46 + 1) = v25;
  *&v47 = KeyPath;
  *(&v47 + 1) = 1;
  LOBYTE(v48) = 0;
  DWORD1(v48) = *&v42[3];
  *(&v48 + 1) = *v42;
  *(&v48 + 1) = v27;
  LOBYTE(v49) = 1;
  DWORD1(v49) = *&v44[3];
  *(&v49 + 1) = *v44;
  *(&v49 + 1) = v28;
  v50 = 0x3FC999999999999ALL;
  *&v39[87] = 0x3FC999999999999ALL;
  *&v39[71] = v49;
  *&v39[55] = v48;
  *&v39[39] = v47;
  *&v39[23] = v46;
  *&v39[7] = v45;
  *a5 = v36;
  *(a5 + 8) = v35;
  *(a5 + 16) = v34 & 1;
  *(a5 + 24) = v37;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  v29 = *v39;
  *(a5 + 57) = *&v39[16];
  *(a5 + 41) = v29;
  v30 = *&v39[32];
  v31 = *&v39[48];
  v32 = *&v39[64];
  *(a5 + 120) = *&v39[79];
  *(a5 + 105) = v32;
  *(a5 + 89) = v31;
  *(a5 + 73) = v30;
  v51[0] = v20;
  v51[1] = v22;
  v52 = v10 & 1;
  *&v53[3] = *&v43[3];
  *v53 = *v43;
  v54 = v25;
  v55 = KeyPath;
  v56 = 1;
  v57 = 0;
  *&v58[3] = *&v42[3];
  *v58 = *v42;
  v59 = v27;
  v60 = 1;
  *&v61[3] = *&v44[3];
  *v61 = *v44;
  v62 = v28;
  v63 = 0x3FC999999999999ALL;
  sub_1BA1465C0(v36, v35, v34 & 1);

  sub_1BA35418C(&v45, v38, sub_1BA354044);
  sub_1BA3541F4(v51, sub_1BA354044);
  sub_1BA102AF4(v36, v35, v34 & 1);

  return result;
}

double sub_1BA353DC0@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A5798();
  v21 = 1;
  sub_1BA353A98(&v11);
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v22 = v11;
  v23 = v12;
  v31[6] = v17;
  v31[7] = v18;
  v31[2] = v13;
  v31[3] = v14;
  v31[4] = v15;
  v31[5] = v16;
  v30 = v19;
  v32 = v19;
  v31[0] = v11;
  v31[1] = v12;
  sub_1BA35418C(&v22, v10, sub_1BA353F7C);
  sub_1BA3541F4(v31, sub_1BA353F7C);
  *(&v20[6] + 7) = v28;
  *(&v20[5] + 7) = v27;
  *(&v20[2] + 7) = v24;
  *(&v20[1] + 7) = v23;
  *(&v20[7] + 7) = v29;
  *(&v20[8] + 7) = v30;
  *(&v20[3] + 7) = v25;
  *(&v20[4] + 7) = v26;
  *(v20 + 7) = v22;
  v4 = v20[4];
  *(a1 + 97) = v20[5];
  v5 = v20[7];
  *(a1 + 113) = v20[6];
  *(a1 + 129) = v5;
  *(a1 + 144) = *(&v20[7] + 15);
  v6 = v20[0];
  *(a1 + 33) = v20[1];
  result = *&v20[2];
  v8 = v20[3];
  *(a1 + 49) = v20[2];
  *(a1 + 65) = v8;
  *(a1 + 81) = v4;
  v9 = v21;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 17) = v6;
  return result;
}

void sub_1BA353F7C(uint64_t a1)
{
  if (!qword_1EBBF1008)
  {
    sub_1BA353FD4(255);
    v1 = sub_1BA4A6428();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1008);
    }
  }
}

void sub_1BA353FD4(uint64_t a1)
{
  if (!qword_1EBBF1010)
  {
    sub_1BA354044(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBBF1010);
    }
  }
}

void sub_1BA3540A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_1BA35413C(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1BA4A5418();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BA35413C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BA35418C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA3541F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA354254(uint64_t a1)
{
  if (!qword_1EBBF1038)
  {
    sub_1BA353F7C(255);
    sub_1BA3542E8(&qword_1EBBF1040, sub_1BA353F7C, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF1038);
    }
  }
}

uint64_t sub_1BA3542E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SnidgetSwiftChartViewModel.AnimationConfiguration.domain.getter()
{
  v1 = *v0;

  return v1;
}

void sub_1BA354368(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1BA4A8338();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1BA3543EC(uint64_t a1)
{
  v2 = sub_1B9F7C07C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA354428(uint64_t a1)
{
  v2 = sub_1B9F7C07C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SnidgetSwiftChartViewModel.AnimationConfiguration.encode(to:)(void *a1)
{
  sub_1B9F77148(0, &qword_1EDC5DD50, sub_1B9F7C07C, &type metadata for SnidgetSwiftChartViewModel.AnimationConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F7C07C();
  sub_1BA4A8548();
  sub_1BA4A8248();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1BA3545CC(void *a1)
{
  sub_1B9F77148(0, &qword_1EDC5DD50, sub_1B9F7C07C, &type metadata for SnidgetSwiftChartViewModel.AnimationConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F7C07C();
  sub_1BA4A8548();
  sub_1BA4A8248();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SnidgetSwiftChartViewModel.DiagramHighlight.HighlightStyle.rawValue.getter()
{
  v1 = 0x746E696F70;
  v2 = 1702125924;
  if (*v0 != 2)
  {
    v2 = 0x6968747972657665;
  }

  if (*v0)
  {
    v1 = 0x4C65676172657661;
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

uint64_t sub_1BA3547BC()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

double sub_1BA354880(uint64_t a1)
{
  sub_1BA4A68C8();

  return result;
}

uint64_t sub_1BA354930(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

void sub_1BA3549F0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x746E696F70;
  v4 = 0xE400000000000000;
  v5 = 1702125924;
  if (*v1 != 2)
  {
    v5 = 0x6968747972657665;
    v4 = 0xEA0000000000676ELL;
  }

  if (*v1)
  {
    v3 = 0x4C65676172657661;
    v2 = 0xEB00000000656E69;
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

uint64_t SnidgetSwiftChartViewModel.DiagramHighlight.diagramColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A2B98();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SnidgetSwiftChartViewModel.DiagramHighlight.diagramColor.setter(uint64_t a1)
{
  v3 = sub_1BA4A2B98();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SnidgetSwiftChartViewModel.DiagramHighlight.highlightStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t SnidgetSwiftChartViewModel.DiagramHighlight.highlightStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t SnidgetSwiftChartViewModel.DiagramHighlight.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0) + 24);

  return sub_1BA246A0C(v3, a1);
}

uint64_t SnidgetSwiftChartViewModel.DiagramHighlight.date.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0) + 24);

  return sub_1B9F7B4F4(a1, v3);
}

uint64_t SnidgetSwiftChartViewModel.DiagramHighlight.yValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SnidgetSwiftChartViewModel.DiagramHighlight.init(diagramColor:highlightStyle:date:yValue:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  v13 = v12[6];
  v14 = sub_1BA4A1728();
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  v15 = a6 + v12[7];
  v16 = sub_1BA4A2B98();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  *(a6 + v12[5]) = v11;
  result = sub_1B9F7B4F4(a3, a6 + v13);
  *v15 = a4;
  *(v15 + 8) = a5 & 1;
  return result;
}

uint64_t SnidgetSwiftChartViewModel.DiagramHighlight.init(hkType:highlightStyle:date:yValue:)@<X0>(char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v23 = a5;
  v22 = a4;
  v9 = sub_1BA4A2F98();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  v16 = v15[6];
  v17 = sub_1BA4A1728();
  (*(*(v17 - 8) + 56))(a6 + v16, 1, 1, v17);
  v18 = a6 + v15[7];
  sub_1BA4A2FA8();
  (*(v10 + 32))(a6, v13, v9);
  v19 = *MEMORY[0x1E69A3250];
  v20 = sub_1BA4A2B98();
  (*(*(v20 - 8) + 104))(a6, v19, v20);
  *(a6 + v15[5]) = v14;
  result = sub_1B9F7B4F4(a3, a6 + v16);
  *v18 = v22;
  *(v18 + 8) = v23 & 1;
  return result;
}

uint64_t sub_1BA3550B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA357710(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA3550E0(uint64_t a1)
{
  v2 = sub_1B9F7A5D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA35511C(uint64_t a1)
{
  v2 = sub_1B9F7A5D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SnidgetSwiftChartViewModel.DiagramHighlight.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1B9F77148(0, &qword_1EDC5DD58, sub_1B9F7A5D4, &type metadata for SnidgetSwiftChartViewModel.DiagramHighlight.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F7A5D4();
  sub_1BA4A8548();
  v17 = 0;
  sub_1BA4A2B98();
  sub_1B9F796F4(&qword_1EDC6AD70, MEMORY[0x1E69A3260], MEMORY[0x1E69A3268]);
  sub_1BA4A8288();
  if (!v2)
  {
    v16 = *(v3 + *(type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0) + 20));
    v15 = 1;
    sub_1BA355404();
    sub_1BA4A8288();
    v14 = 2;
    sub_1BA4A1728();
    sub_1B9F796F4(&qword_1EDC6AE80, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1BA4A8238();
    v13 = 3;
    sub_1BA4A8218();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1BA355404()
{
  result = qword_1EDC65308;
  if (!qword_1EDC65308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC65308);
  }

  return result;
}

uint64_t SnidgetSwiftChartViewModel.DiagramStyle.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 7496034;
  }

  if (a1 == 1)
  {
    return 1701734764;
  }

  return 0x7562697274736964;
}

uint64_t sub_1BA3554C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701734764;
  if (v2 != 1)
  {
    v4 = 0x7562697274736964;
    v3 = 0xEC0000006E6F6974;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7496034;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701734764;
  if (*a2 != 1)
  {
    v8 = 0x7562697274736964;
    v7 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7496034;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BA4A8338();
  }

  return v11 & 1;
}

uint64_t sub_1BA3555C0()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

double sub_1BA35565C(uint64_t a1)
{
  sub_1BA4A68C8();

  return result;
}

uint64_t sub_1BA3556E4(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

void sub_1BA35577C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701734764;
  if (v2 != 1)
  {
    v5 = 0x7562697274736964;
    v4 = 0xEC0000006E6F6974;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7496034;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double sub_1BA355898(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;

  return result;
}

double sub_1BA3558F8()
{
  swift_beginAccess();

  return result;
}

double sub_1BA355930(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  return result;
}

uint64_t sub_1BA355978(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BA4A0FA8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateInterval;
  swift_beginAccess();
  (*(v5 + 24))(v10 + v11, v9, v4);
  swift_endAccess();
  sub_1BA355AB0();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1BA355AB0()
{
  v1 = v0;
  v2 = sub_1BA4A1898();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A0FA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateInterval;
  swift_beginAccess();
  (*(v8 + 16))(v11, v1 + v12, v7);
  sub_1BA4A0F98();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v15 = v14 <= 86400.0;
  if (v14 <= 86400.0)
  {
    v16 = 4.0;
  }

  else
  {
    v16 = 6.0;
  }

  if (v15)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 2.0;
  }

  if (v15)
  {
    v18 = 5.0;
  }

  else
  {
    v18 = 8.0;
  }

  v19 = v1 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_chartParameters;
  swift_beginAccess();
  *v19 = v18;
  *(v19 + 8) = v18;
  *(v19 + 16) = v17;
  *(v19 + 24) = v16;
  *(v19 + 32) = 0x4000000000000000;
  swift_beginAccess();
  sub_1BA4A0F98();
  v21 = v20;
  swift_endAccess();
  v22 = MEMORY[0x1E6969A48];
  if (v21 <= 86400.0)
  {
    v22 = MEMORY[0x1E6969A58];
  }

  (*(v3 + 104))(v6, *v22, v2);
  v23 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateScaleStep;
  swift_beginAccess();
  (*(v3 + 40))(v1 + v23, v6, v2);
  return swift_endAccess();
}

uint64_t sub_1BA355D70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateInterval;
  swift_beginAccess();
  v4 = sub_1BA4A0FA8();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_1BA355AB0();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*sub_1BA355E3C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA355EA0;
}

uint64_t sub_1BA355EA0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA355AB0();
  }

  return result;
}

uint64_t sub_1BA355ED4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7B750(a1, v7);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight;
  swift_beginAccess();
  sub_1BA35787C(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1BA355F8C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight;
  swift_beginAccess();
  return sub_1B9F7B750(v1 + v3, a1);
}

uint64_t sub_1BA355FE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight;
  swift_beginAccess();
  sub_1BA35787C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_1BA3560A4()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_yValueRange;
  swift_beginAccess();
  return *v1;
}

void sub_1BA3560EC(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_yValueRange);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BA3561A4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_shouldReverseYAxis;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BA3561E8(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_shouldReverseYAxis;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double SnidgetSwiftChartViewModel.animationConfiguration.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration);
  a1[1] = v2;

  return result;
}

double sub_1BA3562B0@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_chartParameters;
  swift_beginAccess();
  result = *(v3 + 32);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BA356308@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void, __n128)@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  v8 = (a3)(0);
  return (*(*(v8 - 8) + 16))(a4, v6 + v7, v8);
}

uint64_t sub_1BA356398(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BA4A1898();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateScaleStep;
  swift_beginAccess();
  (*(v5 + 40))(v10 + v11, v9, v4);
  return swift_endAccess();
}

uint64_t sub_1BA3564D0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void, __n128)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = (a2)(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t SnidgetSwiftChartViewModel.__allocating_init(diagramStyle:chartPoints:dateInterval:diagramHighlight:yValueRange:shouldReverseYAxis:animationConfiguration:)(char a1, uint64_t a2, char *a3, uint64_t a4, int a5, uint64_t *a6, double a7, double a8)
{
  v45 = a5;
  v44 = a4;
  v48 = sub_1BA4A1898();
  v14 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BA4A0FA8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v24 = *a6;
  v46 = a6[1];
  v47 = v24;
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v25 = *(v19 + 16);
  v25(v23 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateInterval, a3, v18);
  v26 = (v23 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_yValueRange);
  *v26 = a7;
  v26[1] = a8;
  v27 = v44;
  sub_1B9F7B750(v44, v23 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight);
  *(v23 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_shouldReverseYAxis) = v45;
  v25(v22, a3, v18);
  sub_1BA4A0F98();
  v29 = v28;
  v30 = *(v19 + 8);
  v30(v22, v18);
  v31 = 4.0;
  if (v29 > 86400.0)
  {
    v31 = 6.0;
  }

  v32 = v23 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_chartParameters;
  v33 = vdup_n_s32(v29 > 86400.0);
  v34.i64[0] = v33.u32[0];
  v34.i64[1] = v33.u32[1];
  v35 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v34, 0x3FuLL)), xmmword_1BA4D3280, xmmword_1BA4D3270);
  *v32 = v35.i64[0];
  *(v32 + 8) = v35;
  *(v32 + 24) = v31;
  *(v32 + 32) = 0x4000000000000000;
  sub_1BA4A0F98();
  v37 = v36;
  sub_1B9F7B8AC(v27);
  v30(a3, v18);
  v38 = MEMORY[0x1E6969A48];
  if (v37 <= 86400.0)
  {
    v38 = MEMORY[0x1E6969A58];
  }

  v39 = v48;
  (*(v14 + 104))(v17, *v38, v48);
  (*(v14 + 32))(v23 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateScaleStep, v17, v39);
  v40 = (v23 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration);
  v41 = v46;
  *v40 = v47;
  v40[1] = v41;
  return v23;
}

uint64_t SnidgetSwiftChartViewModel.init(diagramStyle:chartPoints:dateInterval:diagramHighlight:yValueRange:shouldReverseYAxis:animationConfiguration:)(char a1, uint64_t a2, char *a3, uint64_t a4, int a5, uint64_t *a6, double a7, double a8)
{
  v9 = v8;
  v47 = a5;
  v46 = a4;
  v50 = sub_1BA4A1898();
  v16 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BA4A0FA8();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a6;
  v48 = a6[1];
  v49 = v26;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v27 = *(v21 + 16);
  v27(v9 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateInterval, a3, v20, v23);
  v28 = (v9 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_yValueRange);
  *v28 = a7;
  v28[1] = a8;
  v29 = v46;
  sub_1B9F7B750(v46, v9 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight);
  *(v9 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_shouldReverseYAxis) = v47;
  (v27)(v25, a3, v20);
  sub_1BA4A0F98();
  v31 = v30;
  v32 = *(v21 + 8);
  v32(v25, v20);
  v33 = 4.0;
  if (v31 > 86400.0)
  {
    v33 = 6.0;
  }

  v34 = v9 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_chartParameters;
  v35 = vdup_n_s32(v31 > 86400.0);
  v36.i64[0] = v35.u32[0];
  v36.i64[1] = v35.u32[1];
  v37 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v36, 0x3FuLL)), xmmword_1BA4D3280, xmmword_1BA4D3270);
  *v34 = v37.i64[0];
  *(v34 + 8) = v37;
  *(v34 + 24) = v33;
  *(v34 + 32) = 0x4000000000000000;
  sub_1BA4A0F98();
  v39 = v38;
  sub_1B9F7B8AC(v29);
  v32(a3, v20);
  v40 = MEMORY[0x1E6969A48];
  if (v39 <= 86400.0)
  {
    v40 = MEMORY[0x1E6969A58];
  }

  v41 = v50;
  (*(v16 + 104))(v19, *v40, v50);
  (*(v16 + 32))(v9 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateScaleStep, v19, v41);
  v42 = (v9 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration);
  v43 = v48;
  *v42 = v49;
  v42[1] = v43;
  return v9;
}

uint64_t sub_1BA356B88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA357F78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA356BB0(uint64_t a1)
{
  v2 = sub_1B9F77770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA356BEC(uint64_t a1)
{
  v2 = sub_1B9F77770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SnidgetSwiftChartViewModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SnidgetSwiftChartViewModel.init(from:)(a1);
  return v2;
}

uint64_t sub_1BA356C78(void *a1)
{
  v28 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  MEMORY[0x1EEE9AC00](v28, v2);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A0FA8();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F77148(0, &qword_1EDC5DD60, sub_1B9F77770, &type metadata for SnidgetSwiftChartViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v26 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F77770();
  v14 = v30;
  sub_1BA4A8548();
  swift_beginAccess();
  v38 = *(v14 + 16);
  LOBYTE(v37) = 0;
  sub_1BA3578E0();
  v15 = v31;
  sub_1BA4A8288();
  if (v15)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v17 = v10;
  swift_beginAccess();
  v37 = *(v14 + 24);
  v36 = 1;
  sub_1B9F47FD8(0, &qword_1EDC6B678, type metadata accessor for SwiftChartPoint, MEMORY[0x1E69E62F8]);
  sub_1B9F78C44(&qword_1EDC5E6F0, qword_1EDC68EB0, &protocol conformance descriptor for SwiftChartPoint, MEMORY[0x1E69E6300]);
  sub_1BA4A8288();
  swift_beginAccess();
  v18 = v29;
  v19 = v7;
  v20 = v4;
  v21 = v19;
  (*(v29 + 16))();
  v36 = 2;
  sub_1B9F796F4(&qword_1EDC6AF18, MEMORY[0x1E6968130], MEMORY[0x1E6968138]);
  sub_1BA4A8288();
  (*(v18 + 8))(v21, v20);
  v22 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight;
  swift_beginAccess();
  v23 = v27;
  sub_1B9F7B750(v14 + v22, v27);
  v35 = 3;
  sub_1B9F796F4(&qword_1EDC652F8, type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight, &protocol conformance descriptor for SnidgetSwiftChartViewModel.DiagramHighlight);
  sub_1BA4A8288();
  sub_1B9F7B8AC(v23);
  v24 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_yValueRange;
  swift_beginAccess();
  v34 = *(v14 + v24);
  LOBYTE(v32) = 4;
  sub_1B9F7B9A0();
  sub_1B9F7B9F8(&qword_1EDC5E858, MEMORY[0x1E69E63C0], MEMORY[0x1E69E5F98]);
  sub_1BA4A8288();
  swift_beginAccess();
  LOBYTE(v32) = 5;
  sub_1BA4A8258();
  v25 = *(v14 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration + 8);
  v32 = *(v14 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration);
  v33 = v25;
  v39 = 6;
  sub_1BA357934();

  sub_1BA4A8238();

  return (*(v17 + 8))(v13, 0);
}

uint64_t sub_1BA35729C()
{
  v1 = v0;
  v2 = sub_1BA4A0FA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1BA4A7DF8();
  v15 = v13;
  v16 = v14;
  MEMORY[0x1BFAF1350](0x536D617267616964, 0xED00003D656C7974);
  swift_beginAccess();
  v12 = *(v0 + 16);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](8236, 0xE200000000000000);
  swift_beginAccess();
  v11[1] = *(*(v0 + 24) + 16);
  v7 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v7);

  MEMORY[0x1BFAF1350](0xD00000000000001CLL, 0x80000001BA502190);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateInterval;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v8, v2);
  sub_1B9F796F4(&unk_1EDC6AF00, MEMORY[0x1E6968130], MEMORY[0x1E6968158]);
  v9 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v9);

  (*(v3 + 8))(v6, v2);
  return v15;
}

uint64_t SnidgetSwiftChartViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateInterval;
  v2 = sub_1BA4A0FA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1B9F7B8AC(v0 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight);

  v3 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateScaleStep;
  v4 = sub_1BA4A1898();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SnidgetSwiftChartViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateInterval;
  v2 = sub_1BA4A0FA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1B9F7B8AC(v0 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight);

  v3 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateScaleStep;
  v4 = sub_1BA4A1898();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA357710(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x436D617267616964 && a2 == 0xEC000000726F6C6FLL;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6867696C68676968 && a2 == 0xEE00656C79745374 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65756C615679 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BA35787C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA3578E0()
{
  result = qword_1EDC65318;
  if (!qword_1EDC65318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC65318);
  }

  return result;
}

unint64_t sub_1BA357934()
{
  result = qword_1EDC652E8;
  if (!qword_1EDC652E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC652E8);
  }

  return result;
}

unint64_t sub_1BA35798C()
{
  result = qword_1EBBF1048;
  if (!qword_1EBBF1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1048);
  }

  return result;
}

unint64_t sub_1BA3579E4()
{
  result = qword_1EBBF1050;
  if (!qword_1EBBF1050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1050);
  }

  return result;
}

unint64_t sub_1BA357E74()
{
  result = qword_1EBBF1058;
  if (!qword_1EBBF1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1058);
  }

  return result;
}

unint64_t sub_1BA357ECC()
{
  result = qword_1EBBF1060;
  if (!qword_1EBBF1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1060);
  }

  return result;
}

unint64_t sub_1BA357F24()
{
  result = qword_1EBBF1068;
  if (!qword_1EBBF1068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1068);
  }

  return result;
}

uint64_t sub_1BA357F78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x536D617267616964 && a2 == 0xEC000000656C7974;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696F507472616863 && a2 == 0xEB0000000073746ELL || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BA502200 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x615265756C615679 && a2 == 0xEB0000000065676ELL || (sub_1BA4A8338() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BA502220 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BA4EAEF0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

id *sub_1BA3581E0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

void sub_1BA358304()
{
  v1 = v0;
  sub_1B9F12538();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  v9 = sub_1BA4A4578();
  (*(v4 + 8))(v7, v3);
  v10 = *(v9 + 16);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  if (!v10)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v12 = 0;
  v13 = v9 + 40;
  v44 = v10 - 1;
  v14 = MEMORY[0x1E69E7CC0];
  *&v45 = v9 + 40;
  while (2)
  {
    v15 = (v13 + 16 * v12);
    v16 = v12;
    while (1)
    {
      if (v16 >= *(v9 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v17 = *(v1 + v11);
      if (*(v17 + 16))
      {
        break;
      }

LABEL_5:
      ++v16;
      v15 += 2;
      if (v10 == v16)
      {
        goto LABEL_16;
      }
    }

    v18 = *(v15 - 1);
    v19 = *v15;

    v20 = sub_1B9F24A34(v18, v19);
    if ((v21 & 1) == 0)
    {

      goto LABEL_5;
    }

    v22 = (*(v17 + 56) + 48 * v20);
    v23 = v22[1];
    v43 = *v22;
    v24 = v22[2];
    v39 = v22[3];
    v25 = v22[5];
    v40 = v22[4];
    v41 = v23;

    v42 = v24;
    v26 = v39;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1B9F21540(0, *(v14 + 2) + 1, 1, v14);
    }

    v28 = *(v14 + 2);
    v27 = *(v14 + 3);
    if (v28 >= v27 >> 1)
    {
      v14 = sub_1B9F21540((v27 > 1), v28 + 1, 1, v14);
    }

    v12 = v16 + 1;
    *(v14 + 2) = v28 + 1;
    v29 = &v14[48 * v28];
    v30 = v41;
    *(v29 + 4) = v43;
    *(v29 + 5) = v30;
    *(v29 + 6) = v42;
    *(v29 + 7) = v26;
    *(v29 + 8) = v40;
    *(v29 + 9) = v25;
    v13 = v45;
    if (v44 != v16)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v31 = *(v14 + 2);
  if (v31)
  {
    v44 = v14 + 32;
    while (v31 <= *(v14 + 2))
    {
      --v31;
      v32 = *&v44[48 * v31 + 16];
      v33 = *(v32 + 16);

      for (i = 0; ; i = v36)
      {
        v35 = 0uLL;
        v36 = v33;
        v37 = 0uLL;
        v38 = 0uLL;
        if (i != v33)
        {
          if (i >= *(v32 + 16))
          {
            goto LABEL_29;
          }

          v36 = i + 1;
          *&v46[0] = i;
          sub_1B9F0A534(v32 + 32 + 40 * i, v46 + 8);
          v35 = v46[0];
          v37 = v46[1];
          v38 = v46[2];
        }

        v47[0] = v35;
        v47[1] = v37;
        v47[2] = v38;
        if (!v38)
        {
          break;
        }

        v45 = v35;
        sub_1B9F1134C((v47 + 8), v46);
        sub_1B9F32244();
        type metadata accessor for AddNewSharingRelationshipItem();
        if (swift_dynamicCast())
        {

          return;
        }
      }

      if (!v31)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_30:
  }
}

uint64_t sub_1BA358764(void *a1)
{
  v48 = a1;
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v45 - v3;
  sub_1BA4A27B8();
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v6 = v5;
  v7 = swift_allocObject();
  v57 = xmmword_1BA4B5480;
  *(v7 + 16) = xmmword_1BA4B5480;
  *(v7 + 32) = sub_1BA4A1D78();
  v47 = MEMORY[0x1BFAED1E0](v7);

  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v45[2] = v8;
  v56 = sub_1BA4A1C68();
  v9 = *(v56 - 1);
  v53 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v57;
  LODWORD(v55) = *MEMORY[0x1E69A3B70];
  *&v54 = *(v9 + 104);
  (v54)(v11 + v10);
  sub_1BA4A2158();
  v51 = sub_1BA4A0FA8();
  v12 = *(v51 - 8);
  v50 = *(v12 + 56);
  v52 = v12 + 56;
  v50(v4, 1, 1, v51);
  v45[1] = v6;
  v13 = swift_allocObject();
  v49 = xmmword_1BA4B5460;
  *(v13 + 16) = xmmword_1BA4B5460;
  *(v13 + 32) = sub_1BA4A1D78();
  *(v13 + 40) = 0;
  v46 = sub_1BA4A25F8();

  sub_1B9F1C1B0(v4);
  v14 = swift_allocObject();
  *(v14 + 16) = v57;
  (v54)(v14 + v10, v55, v56);
  sub_1BA4A2148();
  v50(v4, 1, 1, v51);
  v15 = swift_allocObject();
  *(v15 + 16) = v49;
  *(v15 + 32) = sub_1BA4A1D78();
  *(v15 + 40) = 0;
  v16 = sub_1BA4A25F8();

  sub_1B9F1C1B0(v4);
  v17 = swift_allocObject();
  *(v17 + 16) = v57;
  (v54)(v17 + v10, v55, v56);
  sub_1BA4A2138();
  v50(v4, 1, 1, v51);
  v18 = swift_allocObject();
  *(v18 + 16) = v49;
  *(v18 + 32) = sub_1BA4A1D78();
  *(v18 + 40) = 0;
  v19 = sub_1BA4A25F8();

  sub_1B9F1C1B0(v4);
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BA4B7510;
  *(v20 + 32) = v16;
  *(v20 + 40) = v19;
  sub_1B9F1BFFC();
  *&v57 = v16;
  v56 = v19;
  v21 = sub_1BA4A6AE8();

  v22 = objc_opt_self();
  v23 = [v22 orPredicateWithSubpredicates_];

  v24 = swift_allocObject();
  v54 = xmmword_1BA4B8B60;
  *(v24 + 16) = xmmword_1BA4B8B60;
  v26 = v46;
  v25 = v47;
  *(v24 + 32) = v47;
  *(v24 + 40) = v26;
  *(v24 + 48) = v23;
  v27 = v25;
  v28 = v26;
  v55 = v23;
  v29 = sub_1BA4A6AE8();

  v30 = [v22 andPredicateWithSubpredicates_];

  __swift_project_boxed_opaque_existential_1(v48, v48[3]);
  v31 = sub_1BA4A1B68();
  v32 = swift_allocObject();
  *(v32 + 16) = v54;
  v33 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v34 = sub_1BA4A6758();
  v35 = [v33 initWithKey:v34 ascending:1];

  *(v32 + 32) = v35;
  v36 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v37 = sub_1BA4A6758();
  v38 = [v36 initWithKey:v37 ascending:0];

  *(v32 + 40) = v38;
  v39 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v40 = sub_1BA4A6758();
  v41 = [v39 initWithKey:v40 ascending:1 selector:sel_localizedStandardCompare_];

  *(v32 + 48) = v41;
  v42 = v30;
  v43 = sub_1BA4A7558();

  return v43;
}

void sub_1BA358E88(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v31 = sub_1BA4A1798();
  v16 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  v21 = *a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = v21;
  v37 = a7;
  v22 = sub_1BA2F47E0(sub_1BA359F54, v32, v20);
  *(a6 + 112) = *(v21 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_1B9F281E8(0, v22[2] + 1, 1, v22);
  }

  v24 = v22[2];
  v23 = v22[3];
  if (v24 >= v23 >> 1)
  {
    v22 = sub_1B9F281E8((v23 > 1), v24 + 1, 1, v22);
  }

  v39 = type metadata accessor for AddNewSharingRelationshipItem();
  v40 = sub_1B9F3249C(&qword_1EBBF0110, type metadata accessor for AddNewSharingRelationshipItem, &unk_1BA4CE1F0);
  *&v38 = a6;
  v22[2] = v24 + 1;
  sub_1B9F1134C(&v38, &v22[5 * v24 + 4]);
  sub_1BA4A1788();
  v25 = sub_1BA4A1748();
  v27 = v26;
  (*(v16 + 8))(v19, v31);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
  *a8 = 0;
  a8[1] = 0;
  a8[2] = v22;

  v29 = Array<A>.identifierToIndexDict()(v28);

  a8[3] = v29;
  a8[4] = v25;
  a8[5] = v27;
}

double sub_1BA3590D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v64 = a4;
  v65 = a6;
  v62 = a5;
  v63 = a3;
  v61 = a2;
  v9 = sub_1BA4A3EA8();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v58 - v15;
  v17 = sub_1BA4A33C8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v58 - v24;
  sub_1B9F0A534(a1, v69);
  sub_1B9F32244();
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v26 = v70;
    v27 = [v70 userData];
    if (v27)
    {
      v60 = a7;
      v28 = v27;
      v29 = sub_1BA4A1608();
      v31 = v30;

      sub_1BA4A0EB8();
      swift_allocObject();
      sub_1BA4A0EA8();
      sub_1B9F3249C(&qword_1EBBEA9F8, MEMORY[0x1E69A3430], MEMORY[0x1E69A3440]);
      v59 = v31;
      v32 = v68;
      sub_1BA4A0E98();
      if (v32)
      {
        v33 = v59;

        sub_1BA4A3D88();
        v34 = sub_1BA4A3E88();
        v35 = sub_1BA4A6FB8();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v63 = v26;
          v37 = v36;
          v38 = swift_slowAlloc();
          v68 = v32;
          v69[0] = v38;
          v39 = v38;
          *v37 = 136315138;
          v40 = sub_1BA4A85D8();
          v42 = sub_1B9F0B82C(v40, v41, v69);

          *(v37 + 4) = v42;
          _os_log_impl(&dword_1B9F07000, v34, v35, "[%s] Could not decode SharingEntryProfileInformation from user data", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v39);
          MEMORY[0x1BFAF43A0](v39, -1, -1);
          MEMORY[0x1BFAF43A0](v37, -1, -1);
          sub_1B9F2BB4C(v29, v33);

          v43 = v68;
        }

        else
        {
          sub_1B9F2BB4C(v29, v33);

          v43 = v32;
        }

        (*(v66 + 8))(v12, v67);
        v57 = v60;
        *(v60 + 32) = 0;
        result = 0.0;
        *v57 = 0u;
        v57[1] = 0u;
      }

      else
      {

        (*(v18 + 16))(v21, v25, v17);
        sub_1B9F0A534(v61, v69);
        LOBYTE(v70) = *(v62 + 16);
        v53 = type metadata accessor for YouAreSharingWithItem(0);
        swift_allocObject();
        v54 = v63;
        v63 = v26;
        v55 = YouAreSharingWithItem.init(profileInformation:healthExperienceStore:healthStore:contactStore:disabledState:)(v21, v69, v54, v64, &v70);
        v56 = v60;
        *(v60 + 24) = v53;
        v56[4] = sub_1B9F3249C(&qword_1EBBE97D8, type metadata accessor for YouAreSharingWithItem, &protocol conformance descriptor for YouAreSharingWithItem);
        sub_1B9F2BB4C(v29, v59);

        *v56 = v55;
        (*(v18 + 8))(v25, v17);
      }
    }

    else
    {
      v45 = v26;
      sub_1BA4A3D88();
      v46 = sub_1BA4A3E88();
      v47 = sub_1BA4A6FB8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v69[0] = v49;
        *v48 = 136315138;
        v50 = sub_1BA4A85D8();
        v52 = sub_1B9F0B82C(v50, v51, v69);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_1B9F07000, v46, v47, "[%s] Feed item did not have any user data", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x1BFAF43A0](v49, -1, -1);
        MEMORY[0x1BFAF43A0](v48, -1, -1);
      }

      (*(v66 + 8))(v16, v67);
      *(a7 + 32) = 0;
      result = 0.0;
      *a7 = 0u;
      *(a7 + 16) = 0u;
    }
  }

  else
  {
    sub_1B9F0A534(a1, v69);
    type metadata accessor for AddNewSharingRelationshipItem();
    if (swift_dynamicCast())
    {

      sub_1B9F0A534(a1, a7);
    }

    else
    {
      *(a7 + 32) = 0;
      result = 0.0;
      *a7 = 0u;
      *(a7 + 16) = 0u;
    }
  }

  return result;
}

uint64_t sub_1BA359714()
{
  sub_1BA3581E0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProfilesYouAreSharingWithDataSource(uint64_t a1)
{
  result = qword_1EDC61608;
  if (!qword_1EDC61608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA35984C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1BA4A4638();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  sub_1BA358304();
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    v9 = sub_1BA4A1938();
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
    }

    else if (v9 == v8 - 1)
    {
      sub_1BA4A4618();
    }
  }
}

void *sub_1BA3598FC(uint64_t a1)
{
  v3 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(a1 + 8);
  if (qword_1EDC6CBB0 != -1)
  {
    v15 = v5;
    swift_once();
    v5 = v15;
  }

  v10 = __swift_project_value_buffer(v5, qword_1EDC6CBB8);
  sub_1B9F37E38(v10, v7);
  v12 = *(v7 + 16);
  v11 = *(v7 + 17);

  sub_1B9F0E310(v12, v11);
  *(v7 + 16) = sub_1BA359C20;
  *(v7 + 17) = v8;
  v13 = ListLayoutConfiguration.layout(for:)(v9);
  sub_1BA047354(v7);
  return v13;
}

uint64_t sub_1BA359A20@<X0>(void *a1@<X8>)
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
  result = sub_1B9F3249C(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  a1[4] = result;
  *a1 = v11;
  return result;
}

void sub_1BA359BD8()
{
  sub_1B9FF5994();
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830(v0, v1);

  sub_1B9FF59C8();
}

uint64_t sub_1BA359C28(void *a1, void *a2, void *a3, char *a4)
{
  v5 = v4;
  v9 = *v5;
  v10 = *a4;
  sub_1B9F0A534(a1, v34);
  LOBYTE(v32) = v10;
  type metadata accessor for AddNewSharingRelationshipItem();
  swift_allocObject();
  v11 = a2;
  v12 = sub_1BA2CAEFC(v34, v11, &v32);
  *(v5 + qword_1EDC84AC0) = v12;

  v13 = sub_1BA358764(a1);
  sub_1B9F126E0(0);
  v15 = objc_allocWithZone(v14);
  v31 = v13;
  v16 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v31);
  type metadata accessor for ProfilesYouAreSharingWithDataSource.Context();
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  sub_1B9F0A534(a1, v34);
  v18 = swift_allocObject();
  sub_1B9F1134C(v34, (v18 + 2));
  v18[7] = v11;
  v18[8] = a3;
  v18[9] = v12;
  v18[10] = v9;
  v19 = v5 + qword_1EDC64EB0;
  *v19 = sub_1BA359F44;
  *(v19 + 8) = v18;
  *(v19 + 16) = 1;
  *(v5 + qword_1EDC84BB8) = v16;
  *(v5 + *(*v5 + 512)) = v17;
  *(v5 + *(*v5 + 520)) = 0;
  v20 = v11;

  v21 = a3;

  v22 = v16;

  sub_1BA15CFD8(v22, v17, 0, sub_1BA359F44, v18, 1);
  v24 = v23;

  v32 = 0x534464657070614DLL;
  v33 = 0xE90000000000003CLL;
  v25 = *&v22[qword_1EDC84AD0];
  v26 = *&v22[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v25, v26);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v27 = MutableArrayDataSource.init(arrangedSections:identifier:)(v24, v32, v33);
  v28 = *(v27 + qword_1EDC84BB8);
  v29 = qword_1EBBEA528;
  swift_beginAccess();
  [*(v28 + v29) registerObserver_];

  __swift_destroy_boxed_opaque_existential_1(a1);
  *(*(v27 + qword_1EDC84AC0) + 128) = &off_1F3818F08;
  swift_unknownObjectWeakAssign();
  return v27;
}

id AnyPlatformFeedItemViewActionHandler.__allocating_init(context:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1BA02909C(a1, v3 + OBJC_IVAR____TtC18HealthExperienceUI36AnyPlatformFeedItemViewActionHandler_context);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1BA0C3344(a1);
  return v4;
}

id AnyPlatformFeedItemViewActionHandler.init(context:)(uint64_t a1)
{
  sub_1BA02909C(a1, v1 + OBJC_IVAR____TtC18HealthExperienceUI36AnyPlatformFeedItemViewActionHandler_context);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AnyPlatformFeedItemViewActionHandler();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1BA0C3344(a1);
  return v3;
}

id AnyPlatformFeedItemViewActionHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnyPlatformFeedItemViewActionHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnyPlatformFeedItemViewActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall UIView.disableIntrinsicContentSizeConstraints()()
{
  [v0 setContentHuggingPriority:0 forAxis:0.0];
  [v0 setContentCompressionResistancePriority:0 forAxis:0.0];
  [v0 setContentHuggingPriority:1 forAxis:0.0];

  [v0 setContentCompressionResistancePriority:1 forAxis:0.0];
}

Swift::Void __swiftcall UIView.disableIntrinsicContentSizeConstraints(axis:)(UILayoutConstraintAxis axis)
{
  [v1 setContentHuggingPriority:axis forAxis:0.0];

  [v1 setContentCompressionResistancePriority:axis forAxis:0.0];
}

UIEdgeInsets __swiftcall UIView.edgeInsets(from:)(NSDirectionalEdgeInsets from)
{
  trailing = from.trailing;
  bottom = from.bottom;
  leading = from.leading;
  top = from.top;
  v6 = [v1 effectiveUserInterfaceLayoutDirection];
  if (v6 == 1)
  {
    v7 = trailing;
  }

  else
  {
    v7 = leading;
  }

  if (v6 == 1)
  {
    v8 = leading;
  }

  else
  {
    v8 = trailing;
  }

  v9 = top;
  v10 = bottom;
  result.right = v8;
  result.bottom = v10;
  result.left = v7;
  result.top = v9;
  return result;
}

id static UIView.spacer(size:axis:)(uint64_t a1, double a2)
{
  result = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    v5 = &selRef_heightAnchor;
  }

  else
  {
    v5 = &selRef_widthAnchor;
  }

  v6 = result;
  v7 = [result *v5];
  v8 = [v7 constraintEqualToConstant_];

  [v8 setActive_];
  return v6;
}

Swift::Void __swiftcall UIView.clearContents()()
{
  v1 = [v0 subviews];
  sub_1BA35A4C8();
  v2 = sub_1BA4A6B08();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFAF2860](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 removeFromSuperview];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

unint64_t sub_1BA35A4C8()
{
  result = qword_1EDC6B4A0;
  if (!qword_1EDC6B4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B4A0);
  }

  return result;
}

void *HideableDataSource.__allocating_init(source:visibility:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1BA35B2C4(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

id *HideableDataSource.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 13);
  type metadata accessor for HideableDataSource.Visibility(255, v1[10], v1[11], v3);
  v4 = sub_1BA4A4F58();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  swift_unknownObjectRelease();

  return v0;
}

void (*sub_1BA35A65C(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_1B9F35348();
  return sub_1BA35A6B0;
}

void sub_1BA35A6B0(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  sub_1B9F382CC(v2);
}

uint64_t sub_1BA35A6F8()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for HideableDataSource.Visibility(255, *(v1 + 80), *(v1 + 88), v2);
  sub_1BA4A4F58();
  sub_1BA4A4EF8();
  return swift_endAccess();
}

uint64_t sub_1BA35A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  sub_1BA35B318(a1, a2, a3, a4);
  type metadata accessor for HideableDataSource.Visibility(255, *(v6 + 80), *(v6 + 88), v7);
  v8 = sub_1BA4A4F48();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

void (*sub_1BA35A84C(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v6 = v4;
  *a1 = v4;
  *v4 = v1;
  type metadata accessor for HideableDataSource.Visibility(255, *(*v1 + 80), *(*v1 + 88), v5);
  v7 = sub_1BA4A4F48();
  v6[1] = v7;
  v8 = *(v7 - 8);
  v6[2] = v8;
  v9 = *(v8 + 64);
  if (v3)
  {
    v6[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v6[4] = v10;
  sub_1BA35A6F8();
  return sub_1BA35A98C;
}

void sub_1BA35A98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 8);
  v8 = *(*a1 + 16);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 24), v6, v7);
    sub_1BA35B318(v5, v9, v10, v11);
    v12 = *(v8 + 8);
    v12(v5, v7);
    v12(v6, v7);
  }

  else
  {
    sub_1BA35B318(*(*a1 + 32), a2, a3, a4);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1BA35AA68(uint64_t a1)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

double sub_1BA35AB38(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 120));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void *SnapshotDataSource.hide(defaults:key:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1BA4A6758();
  v9 = [a1 BOOLForKey_];

  return SnapshotDataSource.hide(_:)(v9, a4, a5, v10);
}

uint64_t HideableDataSource.Visibility.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA35AD10(uint64_t a1)
{
  sub_1BA4A8488();
  HideableDataSource.Visibility.hash(into:)();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA35AD4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9F35348();
  *a1 = v3;
  return result;
}

uint64_t HideableDataSource.__deallocating_deinit()
{
  HideableDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t HideableDataSource.description.getter()
{
  v1 = *v0;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA5023D0);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](0x6C69626973697620, 0xEC00000020797469);
  sub_1B9F35348();
  type metadata accessor for HideableDataSource.Visibility(0, *(v1 + 80), *(v1 + 88), v2);
  sub_1BA4A8308();
  MEMORY[0x1BFAF1350](0xD000000000000010, 0x80000001BA5023F0);
  swift_beginAccess();
  sub_1BA4A8308();
  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return 0;
}

uint64_t HideableDataSource<>.isReorderableItem(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  return (*(a2 + 40))(a1, *(v5 + 80), a2) & 1;
}

uint64_t HideableDataSource<>.applyReorder(sectionTransactions:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(a2 + 48);
  v7 = *(v5 + 80);
  swift_unknownObjectRetain();
  v6(a1, v7, a2);
  return swift_unknownObjectRelease();
}

uint64_t HideableDataSource<>.canMoveItem(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_beginAccess();
  return (*(a3 + 56))(a1, a2, *(v7 + 80), a3) & 1;
}

void *SnapshotDataSource.hide(_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 ^ 1;
  type metadata accessor for HideableDataSource(0, a2, a3, a4);
  v10 = v4;
  v5 = swift_unknownObjectRetain();
  v8 = sub_1BA35B2C4(v5, &v10, v6, v7);
  swift_unknownObjectRelease();
  return v8;
}

void *sub_1BA35B2C4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HideableDataSource(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_1B9F37820(a1, a2);
}

uint64_t sub_1BA35B318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HideableDataSource.Visibility(255, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = sub_1BA4A4F48();
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  (*(v10 + 16))(&v12 - v9, a1, v8);
  swift_beginAccess();
  sub_1BA4A4F58();
  sub_1BA4A4F08();
  return swift_endAccess();
}

uint64_t SummarySharingSetupAnalyticsEvent.__allocating_init(sharingEntriesAnalytics:userDemographicsAnalytics:location:version:usedDataSelectionWizard:pagesCompleted:totalPages:activeWatchProductType:countErrors:)(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  SummarySharingSetupAnalyticsEvent.init(sharingEntriesAnalytics:userDemographicsAnalytics:location:version:usedDataSelectionWizard:pagesCompleted:totalPages:activeWatchProductType:countErrors:)(a1, a2, a3, v18, a5, a6, a7, a8, a9, a10);
  return v17;
}

void *SummarySharingSetupAnalyticsEvent.init(sharingEntriesAnalytics:userDemographicsAnalytics:location:version:usedDataSelectionWizard:pagesCompleted:totalPages:activeWatchProductType:countErrors:)(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v13 = *(a1 + 8);
  v14 = *(a2 + 24);
  v15 = *(a2 + 25);
  v26 = *a3;
  sub_1BA35BD1C(&qword_1EBBF1078, a2, type metadata accessor for SummarySharingSetupAnalyticsEvent, &protocol conformance descriptor for SummarySharingSetupAnalyticsBaseEvent);
  if (v13 == 2)
  {
    v16 = sub_1BA4A2CA8();
  }

  else
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  v10[10] = v16;
  v10[11] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v10[12] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v10[13] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v10[4] = 0;
  v10[5] = 0;
  v17 = 0;
  v11[3] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  if ((v14 & 1) == 0)
  {
    sub_1BA4A70F8();
    v17 = sub_1BA4A6758();
  }

  v18 = v11[5];
  v11[5] = v17;

  v19 = UserDemographicsAnalytics.ageValueForAnalytics()();
  v20 = v11[4];
  v11[4] = v19;

  if (v13 == 2)
  {
    sub_1BA35BD1C(&qword_1EBBEDAE0, 255, type metadata accessor for SummarySharingSetupAnalyticsBaseEvent, &protocol conformance descriptor for SummarySharingSetupAnalyticsBaseEvent);
    v21 = sub_1BA4A2CA8();
  }

  else
  {
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v11[2] = v21;
  v22 = sub_1BA4A6758();

  v11[9] = v22;
  sub_1BA0B2740();
  if (v26)
  {
    if (v26 == 1)
    {
      v23 = sub_1BA4A77C8("sharingTab", 10, 2, a7);
    }

    else
    {
      v23 = sub_1BA4A77C8("requestLink", 11, 2, a7);
    }
  }

  else
  {
    v23 = sub_1BA4A77C8("summaryTab", 10, 2, a7);
  }

  v11[6] = v23;
  v11[7] = sub_1BA4A77C8("1.0", 3, 2);
  v11[8] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  return v11;
}

void sub_1BA35BB98()
{
  v1 = *(v0 + 104);
}

id *SummarySharingSetupAnalyticsEvent.deinit()
{
  v0 = SummarySharingSetupAnalyticsBaseEvent.deinit();

  return v0;
}

uint64_t SummarySharingSetupAnalyticsEvent.__deallocating_deinit()
{
  v0 = SummarySharingSetupAnalyticsBaseEvent.deinit();
  v1 = v0[10];

  v2 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t sub_1BA35BD1C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_1BA35BDEC(uint64_t (*a1)(void))
{
  a1();
  v2 = v1;
  if (v1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v3 setTextAlignment_];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = [objc_opt_self() _preferredFontForTextStyle_weight_];
    [v3 setFont_];

    [v3 setAdjustsFontForContentSizeCategory_];
    v5 = sub_1BA4A6758();

    [v3 setText_];

    v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    v6 = v3;
    [v2 addSubview_];
    v7 = v2;
    [v6 hk:v7 alignConstraintsWithView:?];
    v8 = objc_opt_self();
    sub_1B9F23524(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BA4B5470;
    v10 = [v6 centerXAnchor];

    v11 = [v7 centerXAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v9 + 32) = v12;
    sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
    v13 = sub_1BA4A6AE8();

    [v8 activateConstraints_];
  }

  return v2;
}

uint64_t sub_1BA35C08C()
{
  v1 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9FF1628(v0 + OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlow, v4);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1BA10E1EC(v4);
    return 0;
  }

  v6 = OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlowContext;
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlowContext);
  v8 = *v4;
  swift_beginAccess();
  v9 = sub_1B9FEE484(v8, *(v7 + 40));
  result = 0;
  if ((v10 & 1) == 0)
  {
    v11 = __OFADD__(v9, 1);
    v12 = v9 + 1;
    if (v11)
    {
      __break(1u);
    }

    else if (!__OFADD__(v12, 1))
    {
      if (qword_1EDC5E100 == -1)
      {
LABEL_7:
        v13 = 0xE000000000000000;
        sub_1BA4A1318();
        v14 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
        v15 = sub_1BA4A6DC8();
        v16 = [v14 stringFromNumber_];

        if (v16)
        {
          v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v13 = v18;
        }

        else
        {
          v17 = 0;
        }

        v19 = *(v0 + v6);
        swift_beginAccess();
        v20 = *(v19 + 24);
        result = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
        }

        else
        {
          v21 = sub_1BA4A6DC8();
          v22 = [v14 stringFromNumber_];

          if (v22)
          {
            v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v25 = v24;
          }

          else
          {
            v23 = 0;
            v25 = 0xE000000000000000;
          }

          sub_1B9F1B4AC(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], 1);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_1BA4B5460;
          v27 = MEMORY[0x1E69E6158];
          *(v26 + 56) = MEMORY[0x1E69E6158];
          v28 = sub_1B9F1BE20();
          *(v26 + 32) = v17;
          *(v26 + 40) = v13;
          *(v26 + 96) = v27;
          *(v26 + 104) = v28;
          *(v26 + 64) = v28;
          *(v26 + 72) = v23;
          *(v26 + 80) = v25;
          v29 = sub_1BA4A6768();

          return v29;
        }

        return result;
      }

LABEL_18:
      swift_once();
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1BA35C3BC()
{
  v1 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FF1628(v0 + OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectionFlow, v4);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1BA10E1EC(v4);
    return 0;
  }

  else
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v6 = 0xE000000000000000;
    sub_1BA4A1318();
    v7 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    v8 = sub_1BA4A6DC8();
    v9 = [v7 stringFromNumber_];

    if (v9)
    {
      v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v6 = v11;
    }

    else
    {
      v10 = 0;
    }

    v12 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectionFlowContext);
    swift_beginAccess();
    v13 = *(v12 + 24);
    result = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
    }

    else
    {
      v14 = sub_1BA4A6DC8();
      v15 = [v7 stringFromNumber_];

      if (v15)
      {
        v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0xE000000000000000;
      }

      sub_1B9F1B4AC(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], 1);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1BA4B5460;
      v20 = MEMORY[0x1E69E6158];
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v21 = sub_1B9F1BE20();
      *(v19 + 32) = v10;
      *(v19 + 40) = v6;
      *(v19 + 96) = v20;
      *(v19 + 104) = v21;
      *(v19 + 64) = v21;
      *(v19 + 72) = v16;
      *(v19 + 80) = v18;
      v22 = sub_1BA4A6768();

      return v22;
    }
  }

  return result;
}

void sub_1BA35C690(uint64_t a1, void *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1B9F0B82C(0xD000000000000037, 0x80000001BA502740, &v15);
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] Received new contact image", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = [a2 headerView];
  [v13 setIcon:a1 accessibilityLabel:0];
}

void sub_1BA35C86C(uint64_t a1, void *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4E3670, &v15);
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] Received new contact image", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = [a2 headerView];
  [v13 setIcon:a1 accessibilityLabel:0];
}

void sub_1BA35CA48(uint64_t a1, void *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1B9F0B82C(0xD00000000000003CLL, 0x80000001BA4F4930, &v15);
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] Received new contact image", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = [a2 headerView];
  [v13 setIcon:a1 accessibilityLabel:0];
}

void sub_1BA35CC24(uint64_t a1, void *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1B9F0B82C(0xD000000000000034, 0x80000001BA502810, &v15);
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] Received new contact image", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = [a2 headerView];
  [v13 setIcon:a1 accessibilityLabel:0];
}

void sub_1BA35CE00(uint64_t a1, void *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1B9F0B82C(0xD000000000000033, 0x80000001BA502850, &v15);
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] Received new contact image", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = [a2 headerView];
  [v13 setIcon:a1 accessibilityLabel:0];
}

void sub_1BA35CFDC(uint64_t a1, void *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1B9F0B82C(0xD00000000000002ELL, 0x80000001BA4EBB70, &v15);
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] Received new contact image", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = [a2 headerView];
  [v13 setIcon:a1 accessibilityLabel:0];
}

void sub_1BA35D1B8(uint64_t a1, void *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1B9F0B82C(0xD000000000000039, 0x80000001BA4F47E0, &v15);
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] Received new contact image", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = [a2 headerView];
  [v13 setIcon:a1 accessibilityLabel:0];
}

uint64_t sub_1BA35D394()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF1090 = result;
  *algn_1EBBF1098 = v1;
  return result;
}

uint64_t sub_1BA35D458()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF10A0 = result;
  *algn_1EBBF10A8 = v1;
  return result;
}

id sub_1BA35D504()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController____lazy_storage___iconWithShadow;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController____lazy_storage___iconWithShadow);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController____lazy_storage___iconWithShadow);
  }

  else
  {
    v4 = sub_1BA35D564();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA35D564()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC84A30;
  v1 = sub_1BA4A6758();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  v3 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setContentMode_];
  v4 = [v3 layer];
  v5 = [objc_opt_self() blackColor];
  v6 = [v5 CGColor];

  [v4 setShadowColor_];
  v7 = [v3 layer];
  LODWORD(v8) = 1041865114;
  [v7 setShadowOpacity_];

  v9 = [v3 layer];
  [v9 setShadowRadius_];

  v10 = [v3 layer];
  [v10 setShadowOffset_];

  return v3;
}

void sub_1BA35D788()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v120 = &v111 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v111 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v111 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v111 - v20;
  v22 = OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectionFlow;
  sub_1B9FF1628(&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectionFlow], &v111 - v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v24 = 0uLL;
  v121 = v13;
  v122 = v3;
  v117 = v6;
  if (EnumCaseMultiPayload == 2)
  {
    v124 = xmmword_1BA4D3EE0;
    v123 = 0u;
  }

  else
  {
    sub_1BA1E162C(&v129);
    v124 = v130;
    v123 = v129;
    sub_1BA10E1EC(v21);
    v24 = 0uLL;
  }

  v25 = OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectionFlowContext;
  v128[0] = v24;
  v128[1] = v24;
  v26 = sub_1BA4A6C68();
  MEMORY[0x1EEE9AC00](v26, v27);
  *(&v111 - 2) = v1;

  sub_1BA1E091C(sub_1BA35F660, (&v111 - 4), "HealthExperienceUI/SummarySharingSetupDetailsAnalyticsEvent.swift", 65, 2u, 154);
  v129 = v123;
  v130 = v124;
  sub_1B9FEEC64(ObjectType, v128, 0, &v129);

  sub_1B9FF3BFC(v129, *(&v129 + 1), v130, *(&v130 + 1));
  sub_1BA35F67C(v128, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8);
  sub_1B9FF1628(&v1[v22], v17);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_healthExperienceStore], v128);
    v28 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectedContact + 16];
    v129 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectedContact];
    v130 = v28;
    v131 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectedContact + 32];
    v29 = v129;
    v132 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectedContact + 8];
    v126 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectedContact + 24];
    v30 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectedContactPhotoPublisher];
    v31 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_alertsSelectionVC];
    v32 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_selectedDataTypesContext;
    swift_beginAccess();
    v33 = *(v31 + v32);
    v34 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_healthStore];
    v35 = *&v1[v25];
    v36 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingManualDataTypeSelectionViewController());
    v37 = v29;
    sub_1B9F87F44(&v132, v127);
    sub_1B9F87F44(&v126, v127);

    v38 = v34;

    v39 = sub_1BA10D430(v128, &v129, v30, v33, v38, v35);

    v40 = MEMORY[0x1E69E6158];
    sub_1BA35F67C(&v132, &qword_1EDC6E410, MEMORY[0x1E69E6158]);
    sub_1BA35F67C(&v126, &qword_1EDC6E410, v40);
    v41 = v39;
    sub_1BA10E1EC(v17);
  }

  else
  {
    sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_healthExperienceStore], &v129);
    *&v124 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_healthStore];
    v42 = v124;
    v43 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectedContact + 8];
    v114 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectedContact];
    *&v123 = v43;
    v45 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectedContact + 24];
    v116 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectedContact + 16];
    v44 = v116;
    v115 = v45;
    v46 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectedContact + 32];
    v119 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectedContactPhotoPublisher];
    v47 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_alertsSelectionVC];
    v48 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_selectedDataTypesContext;
    swift_beginAccess();
    v49 = *(v47 + v48);
    v50 = v121;
    sub_1B9FF1628(&v1[v22], v121);
    v113 = v1;
    v51 = *&v1[v25];
    v52 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingDataTypeSelectionViewController(0));
    sub_1B9F0A534(&v129, &v52[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_healthExperienceStore]);
    *&v52[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_healthStore] = v42;
    v53 = &v52[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContact];
    v54 = v114;
    *v53 = v114;
    *(v53 + 1) = v43;
    *(v53 + 2) = v44;
    *(v53 + 3) = v45;
    *(v53 + 4) = v46;
    v55 = v119;
    *&v52[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContactPhotoPublisher] = v119;
    sub_1B9FF1628(v50, &v52[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlow]);
    *&v52[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlowContext] = v51;
    v118 = v52;
    *&v52[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedDataTypesContext] = v49;
    sub_1B9F0A534(&v129, v128);
    v56 = v120;
    sub_1B9FF1628(v50, v120);
    v57 = objc_allocWithZone(type metadata accessor for SummarySharingDataTypeSelectionViewController(0));
    *&v57[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v58 = MEMORY[0x1E69E7CC0];
    *&v57[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
    sub_1B9F0A534(v128, &v57[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_healthExperienceStore]);
    *&v57[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedCategories] = 0;
    sub_1B9FF1628(v56, &v57[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectionFlow]);
    v59 = &v57[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact];
    v60 = v123;
    *v59 = v54;
    *(v59 + 1) = v60;
    v61 = v115;
    *(v59 + 2) = v116;
    *(v59 + 3) = v61;
    *(v59 + 4) = v46;
    *&v57[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContactPhotoPublisher] = v55;
    *&v57[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext] = v49;
    v112 = v46;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v62 = v54;
    swift_bridgeObjectRetain_n();
    v63 = v62;
    v64 = v124;
    v111 = v63;
    v114 = v51;
    *&v57[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources] = sub_1BA1E1D2C(v128, v64, 1, 0, v56, v51);

    v65 = sub_1B9FE98D4();

    *&v126 = v65;
    sub_1B9FE20B8(v58);
    v66 = v126;
    type metadata accessor for CompoundSectionedDataSource(0);
    swift_allocObject();
    v67 = CompoundSectionedDataSource.init(_:)(v66);
    v68 = CompoundDataSourceCollectionViewController.init(dataSource:)(v67);
    v115 = v49;
    *&v126 = *(v49 + 48);
    v69 = MEMORY[0x1E695BF70];
    sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
    sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v69, MEMORY[0x1E695BF88]);
    v70 = v68;
    *&v126 = sub_1BA4A4F98();
    v71 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v72 = swift_allocObject();
    *(v72 + 16) = sub_1BA10E0DC;
    *(v72 + 24) = v71;
    v73 = MEMORY[0x1E695BED0];
    sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
    sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v73, MEMORY[0x1E695BED8]);
    sub_1BA4A5148();

    swift_beginAccess();
    sub_1BA10E194(0);
    sub_1BA35FCE8(&qword_1EDC5E6B8, sub_1BA10E194, MEMORY[0x1E69E6348]);
    sub_1BA4A4D38();
    swift_endAccess();

    v74 = *&v70[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources];
    if (v74 >> 62)
    {
      goto LABEL_30;
    }

    v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

    if (v75)
    {
      v76 = 0;
      *&v124 = v74 & 0xC000000000000001;
      *&v123 = v74 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v124)
        {
          v77 = MEMORY[0x1BFAF2860](v76, v74);
          v78 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
LABEL_17:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v76 >= *(v123 + 16))
          {
            __break(1u);
LABEL_30:
            v75 = sub_1BA4A7CC8();
            goto LABEL_8;
          }

          v77 = *(v74 + 8 * v76 + 32);

          v78 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
            goto LABEL_17;
          }
        }

        *(*(v77 + qword_1EBBF0538) + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
        swift_unknownObjectWeakAssign();
        type metadata accessor for SummarySharingSelectionContextDelegate();
        v79 = swift_allocObject();
        *(v79 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v79 + 24) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
        swift_unknownObjectWeakAssign();
        v80 = v70;
        sub_1BA29AAC4(v79);
        sub_1BA2FE7FC();

        ++v76;
      }

      while (v78 != v75);
    }

    sub_1BA10E1EC(v120);
    __swift_destroy_boxed_opaque_existential_1(v128);
    *&v118[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_dataTypeSelectionCVC] = v70;
    v81 = v70;
    v82 = v121;
    sub_1BA454A8C(v81, v83, v84, v85, v86, v87, v88, v89, v111, v112);
    if (!v90)
    {
      if (qword_1EBBE84D8 != -1)
      {
        swift_once();
      }
    }

    sub_1BA454AAC();
    v92 = v91;
    sub_1BA454934();
    v94 = v93;
    v95 = v118;
    *&v118[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] = 0;
    v96 = &v95[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastWidthUseForCollectionViewLayout];
    *v96 = 0;
    v96[8] = 1;
    v97 = &v95[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight];
    *v97 = 0;
    v97[8] = 1;
    *&v95[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentSizeObserver] = 0;
    *&v95[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] = v81;
    v98 = v81;
    v99 = sub_1BA4A6758();

    v1 = v113;
    if (v92)
    {
      v100 = sub_1BA4A6758();
    }

    else
    {
      v100 = 0;
    }

    v101 = type metadata accessor for OnboardingCollectionViewController();
    v125.receiver = v118;
    v125.super_class = v101;
    v102 = objc_msgSendSuper2(&v125, sel_initWithTitle_detailText_icon_contentLayout_, v99, v100, v94, 3);

    v103 = v102;
    v104 = [v103 headerView];
    [v104 setAllowFullWidthIcon_];

    v105 = v117;
    sub_1B9FF1628(v82, v117);
    LODWORD(v104) = swift_getEnumCaseMultiPayload();
    sub_1BA10E1EC(v105);
    if (v104 == 2)
    {
      *&v128[0] = *&v103[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContactPhotoPublisher];
      *(swift_allocObject() + 16) = v103;
      sub_1BA1107A8(0);
      sub_1BA35FCE8(&qword_1EBBEE650, sub_1BA1107A8, MEMORY[0x1E695BED8]);
      v106 = v103;

      sub_1BA4A4F88();
    }

    v107 = [v103 navigationItem];
    v108 = sub_1BA35BDEC(sub_1BA35C08C);
    [v107 setTitleView_];

    v109 = sub_1BA4A6758();
    v110 = [v103 hxui_addCancelButton];

    sub_1BA10E1EC(v82);
    __swift_destroy_boxed_opaque_existential_1(&v129);
    v41 = v103;
  }

  [v1 showViewController:v41 sender:0];
}

void sub_1BA35E7A8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_healthExperienceStore));

  sub_1BA10E1EC(v0 + OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectionFlow);
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController____lazy_storage___iconWithShadow);
}

uint64_t sub_1BA35E9B0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA35EA1C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_delegate;
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

double sub_1BA35EABC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_selectedDataTypesContext;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1BA35EB24()
{
  swift_beginAccess();

  return result;
}

double sub_1BA35EB6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_selectedDataTypesContext;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_1BA35EC24(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BA16CA30();
    v3 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
    swift_beginAccess();
    if (*&v2[v3])
    {

      sub_1BA10BB30(1);
    }
  }
}

Swift::Void __swiftcall SummarySharingAlertsSelectionViewController.reloadAllDataSources()()
{
  v1 = v0;
  sub_1BA16CA30();
  v2 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
  swift_beginAccess();
  if (*(v1 + v2))
  {

    sub_1BA10BB30(1);
  }
}

void sub_1BA35EDCC(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SummarySharingAlertsSelectionViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];

    v5 = [v1 collectionView];
    if (v5)
    {
      v6 = v5;
      [v5 setPreservesSuperviewLayoutMargins_];

      v7 = [v1 navigationItem];
      v8 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v1 action:sel_done];
      [v7 setRightBarButtonItem_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BA35EF7C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_selectedDataTypesContext;
  swift_beginAccess();
  v3 = *&v1[v2];
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = v4[2];
  if (v5)
  {
    v6 = sub_1BA0219CC(v4[2], 0);
    v7 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
    sub_1BA023688(&v15, v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v4);
    v9 = v8;
    v10 = v15;

    sub_1B9F52E48(v10);
    if (v9 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v11 = &v1[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    ObjectType = swift_getObjectType();
    (*(v12 + 32))(v6, ObjectType, v12);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

id SummarySharingAlertsSelectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

double sub_1BA35F24C()
{

  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_delegate);

  return result;
}

id sub_1BA35F2C4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for SummarySharingOnboardingAlertsSelectionViewController(uint64_t a1)
{
  result = qword_1EBBF1100;
  if (!qword_1EBBF1100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA35F41C(uint64_t a1)
{
  result = type metadata accessor for SummarySharingSelectionFlow(319);
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

uint64_t sub_1BA35F67C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1B9F23524(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_1BA35F6F8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTextAlignment_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = sub_1BA4A6758();

  [v0 setText_];

  v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v4 = v0;
  [v3 addSubview_];
  v5 = v3;
  [v4 hk:v5 alignConstraintsWithView:?];
  v6 = objc_opt_self();
  sub_1B9F23524(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5470;
  v8 = [v4 centerXAnchor];

  v9 = [v5 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v11 = sub_1BA4A6AE8();

  [v6 activateConstraints_];

  return v3;
}

id sub_1BA35FA28()
{
  if (qword_1EBBE8358 != -1)
  {
    swift_once();
  }

  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTextAlignment_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = sub_1BA4A6758();
  [v0 setText_];

  v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v4 = v0;
  [v3 addSubview_];
  v5 = v3;
  [v4 hk:v5 alignConstraintsWithView:?];
  v6 = objc_opt_self();
  sub_1B9F23524(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5470;
  v8 = [v4 centerXAnchor];

  v9 = [v5 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v11 = sub_1BA4A6AE8();

  [v6 activateConstraints_];

  return v3;
}

uint64_t sub_1BA35FCE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1BA35FD3C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTextAlignment_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = sub_1BA4A6758();

  [v0 setText_];

  v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v4 = v0;
  [v3 addSubview_];
  v5 = v3;
  [v4 hk:v5 alignConstraintsWithView:?];
  v6 = objc_opt_self();
  sub_1B9F23524(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5470;
  v8 = [v4 centerXAnchor];

  v9 = [v5 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v11 = sub_1BA4A6AE8();

  [v6 activateConstraints_];

  return v3;
}

uint64_t sub_1BA36006C()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v5 = sub_1BA4A3E88();
  v6 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B9F0B82C(0xD000000000000037, 0x80000001BA502740, &v11);
    _os_log_impl(&dword_1B9F07000, v5, v6, "[%s] New photo publisher completed", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BA360204()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v5 = sub_1BA4A3E88();
  v6 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4E3670, &v11);
    _os_log_impl(&dword_1B9F07000, v5, v6, "[%s] New photo publisher completed", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BA36039C()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v5 = sub_1BA4A3E88();
  v6 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B9F0B82C(0xD00000000000003CLL, 0x80000001BA4F4930, &v11);
    _os_log_impl(&dword_1B9F07000, v5, v6, "[%s] New photo publisher completed", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BA360534()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v5 = sub_1BA4A3E88();
  v6 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B9F0B82C(0xD000000000000034, 0x80000001BA502810, &v11);
    _os_log_impl(&dword_1B9F07000, v5, v6, "[%s] New photo publisher completed", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BA3606CC()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v5 = sub_1BA4A3E88();
  v6 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B9F0B82C(0xD000000000000033, 0x80000001BA502850, &v11);
    _os_log_impl(&dword_1B9F07000, v5, v6, "[%s] New photo publisher completed", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BA360864()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v5 = sub_1BA4A3E88();
  v6 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B9F0B82C(0xD00000000000002ELL, 0x80000001BA4EBB70, &v11);
    _os_log_impl(&dword_1B9F07000, v5, v6, "[%s] New photo publisher completed", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BA3609FC()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v5 = sub_1BA4A3E88();
  v6 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B9F0B82C(0xD000000000000039, 0x80000001BA4F47E0, &v11);
    _os_log_impl(&dword_1B9F07000, v5, v6, "[%s] New photo publisher completed", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

void *sub_1BA360B94(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v95 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v94 - v20;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController____lazy_storage___iconWithShadow] = 0;
  sub_1B9F0A534(a1, &v7[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_healthExperienceStore]);
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_healthStore] = a2;
  v100 = a6;
  sub_1B9FF1628(a6, &v7[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectionFlow]);
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectionFlowContext] = a7;
  v22 = *a3;
  v23 = *(a3 + 8);
  v106 = *(a3 + 24);
  v107 = v23;
  v24 = &v7[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectedContact];
  v25 = *(a3 + 16);
  *v24 = *a3;
  *(v24 + 1) = v25;
  v98 = a3;
  *(v24 + 4) = *(a3 + 32);
  v101 = v7;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectedContactPhotoPublisher] = a4;
  v99 = a1;
  sub_1B9F0A534(a1, v105);
  v26 = objc_allocWithZone(MEMORY[0x1E696C1C0]);
  v27 = a2;

  v28 = v22;
  sub_1B9F87F44(&v107, v104);
  sub_1B9F87F44(&v106, v104);

  v96 = [v26 init];
  v97 = v21;
  swift_storeEnumTagMultiPayload();
  v29 = objc_allocWithZone(type metadata accessor for SummarySharingAlertsSelectionViewController());
  *&v29[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  *&v29[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
  sub_1B9F0A534(v105, v104);
  swift_beginAccess();
  v31 = *(a5 + 24);
  v32 = v31[2];
  if (v32)
  {
    v94 = a5;
    v30 = sub_1BA0219CC(v32, 0);
    v33 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
    sub_1BA023688(&v103, v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v32, v31);
    v35 = v34;
    v36 = v103;

    result = sub_1B9F52E48(v36);
    if (v35 != v32)
    {
      __break(1u);
      return result;
    }

    a5 = v94;
  }

  v38 = v97;
  v39 = v95;
  sub_1B9FF1628(v97, v95);
  type metadata accessor for SummarySharingAlertsSelectionDataSource(0);
  swift_allocObject();
  v40 = sub_1BA16AC90(v104, v30, v39, 0);
  *&v29[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_alertsDataSource] = v40;
  *&v29[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_selectedDataTypesContext] = a5;
  sub_1B9F1B4AC(0, &qword_1EDC5DC70, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1BA4B5480;
  *(v41 + 32) = v40;
  *(v41 + 40) = &protocol witness table for MutableArrayDataSource;
  type metadata accessor for CompoundSectionedDataSource(0);
  swift_allocObject();

  v42 = CompoundSectionedDataSource.init(_:)(v41);
  v43 = CompoundDataSourceCollectionViewController.init(dataSource:)(v42);
  v104[0] = *(a5 + 48);
  v44 = MEMORY[0x1E695BF70];
  sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
  sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v44, MEMORY[0x1E695BF88]);
  v45 = v43;
  v104[0] = sub_1BA4A4F98();
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1BA14DE2C;
  *(v47 + 24) = v46;
  v48 = MEMORY[0x1E695BED0];
  sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
  sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v48, MEMORY[0x1E695BED8]);
  sub_1BA4A5148();

  swift_beginAccess();
  sub_1BA10E194(0);
  sub_1BA35FCE8(&qword_1EDC5E6B8, sub_1BA10E194, MEMORY[0x1E69E6348]);
  sub_1BA4A4D38();
  swift_endAccess();

  *(*(*&v45[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_alertsDataSource] + qword_1EBBECE80) + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectedDataTypesDelegate + 8) = &protocol witness table for SummarySharingAlertsSelectionViewController;
  swift_unknownObjectWeakAssign();
  type metadata accessor for SummarySharingSelectionContextDelegate();
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v49 + 24) = &protocol witness table for SummarySharingAlertsSelectionViewController;
  swift_unknownObjectWeakAssign();

  sub_1BA29AAC4(v49);
  sub_1BA16CA30();

  sub_1BA10E1EC(v38);
  __swift_destroy_boxed_opaque_existential_1(v105);

  *&v101[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_alertsSelectionVC] = v45;
  v50 = qword_1EBBE8878;
  v51 = v45;
  if (v50 != -1)
  {
    swift_once();
  }

  v97 = qword_1EBBF1090;
  v96 = *algn_1EBBF1098;
  if (qword_1EBBE8880 != -1)
  {
    swift_once();
  }

  sub_1B9F1B4AC(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], 1);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1BA4B5460;
  v53 = sub_1BA1FAFCC(v52);
  v55 = v54;
  v56 = MEMORY[0x1E69E6158];
  *(v52 + 56) = MEMORY[0x1E69E6158];
  v57 = sub_1B9F1BE20();
  *(v52 + 64) = v57;
  *(v52 + 32) = v53;
  *(v52 + 40) = v55;
  v58 = sub_1BA1FAFCC(v57);
  *(v52 + 96) = v56;
  *(v52 + 104) = v57;
  *(v52 + 72) = v58;
  *(v52 + 80) = v59;
  sub_1BA4A6768();

  v60 = v101;
  *&v101[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] = 0;
  v61 = &v60[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastWidthUseForCollectionViewLayout];
  *v61 = 0;
  v61[8] = 1;
  v62 = &v60[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight];
  *v62 = 0;
  v62[8] = 1;
  *&v60[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentSizeObserver] = 0;
  *&v60[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] = v51;
  v63 = v51;
  v64 = sub_1BA4A6758();
  v65 = sub_1BA4A6758();

  v66 = type metadata accessor for OnboardingCollectionViewController();
  v102.receiver = v60;
  v102.super_class = v66;
  v67 = objc_msgSendSuper2(&v102, sel_initWithTitle_detailText_icon_contentLayout_, v64, v65, 0, 3);

  v68 = v67;
  v69 = [v68 headerView];
  [v69 setAllowFullWidthIcon_];

  v70 = [v68 navigationItem];
  v71 = sub_1BA35BDEC(sub_1BA35C3BC);
  [v70 setTitleView_];

  v72 = [v68 headerView];
  v73 = [v72 customIconContainerView];

  if (v73)
  {
    [v73 setClipsToBounds_];
    v74 = sub_1BA35D504();
    [v73 addSubview_];

    v75 = objc_opt_self();
    if (([v75 hk_currentDeviceHas4InchScreen] & 1) != 0 || objc_msgSend(v75, sel_hk_currentDeviceHas4Point7InchScreen))
    {
      v76 = objc_opt_self();
      sub_1B9F23524(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_1BA4B5890;
      v78 = OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController____lazy_storage___iconWithShadow;
      v79 = [*(v68 + OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController____lazy_storage___iconWithShadow) topAnchor];
      v80 = [v73 topAnchor];
      v81 = [v79 constraintEqualToAnchor:v80 constant:10.0];

      *(v77 + 32) = v81;
      v82 = [*(v68 + v78) leadingAnchor];
      v83 = [v73 leadingAnchor];
      v84 = [v82 constraintEqualToAnchor_];

      *(v77 + 40) = v84;
      v85 = [*(v68 + v78) trailingAnchor];
      v86 = [v73 trailingAnchor];
      v87 = [v85 constraintEqualToAnchor_];

      *(v77 + 48) = v87;
      v88 = [*(v68 + v78) bottomAnchor];
      v89 = [v73 bottomAnchor];
      v90 = [v88 constraintEqualToAnchor_];

      *(v77 + 56) = v90;
      sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
      v91 = sub_1BA4A6AE8();

      [v76 activateConstraints_];
    }

    else
    {
      v91 = *(v68 + OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController____lazy_storage___iconWithShadow);
      [v91 hk:v73 alignConstraintsWithView:?];
    }
  }

  v92 = sub_1BA4A6758();

  v93 = [v68 hxui_addCancelButton];
  sub_1BA10E1EC(v100);
  __swift_destroy_boxed_opaque_existential_1(v99);
  return v68;
}