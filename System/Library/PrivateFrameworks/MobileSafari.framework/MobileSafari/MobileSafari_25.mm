uint64_t sub_18BB0C1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a4 + 40);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 40) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_18B9B5B34(0, *(v10 + 2) + 1, 1, v10);
    *(a4 + 40) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_18B9B5B34((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[32 * v13];
  *(v14 + 4) = a1;
  *(v14 + 5) = a5;
  *(v14 + 6) = a3;
  *(v14 + 7) = a2;
  *(a4 + 40) = v10;
  return swift_endAccess();
}

uint64_t sub_18BB0C37C(uint64_t a1, char a2, unsigned __int8 a3)
{
  v5 = a3;
  type metadata accessor for TabThumbnailView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = v7;
  if (!v5)
  {
    v18 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    type metadata accessor for ThumbnailMatchMoveViewRegistration();
    swift_allocObject();
    return sub_18BA49A80(v8, v18);
  }

  v9 = [*&v7[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] layer];
  [v9 setShouldRasterize_];

  type metadata accessor for ThumbnailMatchMoveViewRegistration();
  swift_allocObject();
  v10 = v8;
  v11 = sub_18BA499D4(v10);
  if (v5 == 1)
  {
    type metadata accessor for DetachedThumbnailVisibilityAnimator();
    v12 = swift_allocObject();
    *(v12 + 16) = a2 & 1;
    *(v12 + 24) = v10;
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v14 = qword_1EA9D24E0;
    v15 = v10;
    sub_18BC1E1A8();
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = qword_1EA9F83F8;
    v17 = sub_18BC1E1A8();
    sub_18BB0C1F4(v17, inited, v16, v11, &off_1EFF29D20);
  }

  else
  {
    if (a3 != 2)
    {

      return v11;
    }

    type metadata accessor for InsertedThumbnailVisibilityAnimator();
    *(swift_allocObject() + 16) = v10;
    type metadata accessor for AnimationSettings();
    v20 = swift_initStaticObject();
    v21 = qword_1EA9D24E0;
    v15 = v10;
    if (v21 != -1)
    {
      swift_once();
    }

    v22 = qword_1EA9F83F8;
    v23 = sub_18BC1E1A8();
    sub_18BB0C1F4(v23, v20, v22, v11, &off_1EFF29770);
  }

  return v11;
}

void sub_18BB0C608()
{
  v1 = *(v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewOwningBorrowedContent);
  if (v1)
  {
    v3 = *&v1[OBJC_IVAR___SFTabThumbnailView_borrowedContentView];
    *&v1[OBJC_IVAR___SFTabThumbnailView_borrowedContentView] = 0;
    v2 = v1;
    sub_18BA14FAC(v3);
  }
}

uint64_t sub_18BB0C68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v30 = _s4ItemVMa(0);
  v9 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350, &unk_18BC43290);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  v20 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  sub_18B7CA054(a2 + v20, v19, &unk_1EA9D5350, &unk_18BC43290);
  v21 = a1;
  sub_18B7DF638(a1, v16, _s11TransactionVMa);
  v22 = _s11TransactionVMa(0);
  (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
  swift_beginAccess();
  sub_18B7FD070(v16, a2 + v20, &unk_1EA9D5350, &unk_18BC43290);
  swift_endAccess();
  v23 = *(v28 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pageInsertionHandler);
  sub_18B7DF638(v29, v13, _s4PageVMa);
  sub_18BC1E1A8();
  v23(v13);

  sub_18B7DFF64(v13, _s4PageVMa);
  sub_18B7CA054(v21 + *(v22 + 20), v8, &qword_1EA9D7CD0, &unk_18BC49EB0);
  if ((*(v9 + 48))(v8, 1, v30) == 1)
  {
    sub_18B988BAC(v8, &qword_1EA9D7CD0, &unk_18BC49EB0);
  }

  else
  {
    v24 = v8;
    v25 = v27;
    sub_18B82FE24(v24, v27, _s4ItemVMa);
    sub_18BAFF9A0(v25);
    sub_18B7DFF64(v25, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v19, a2 + v20, &unk_1EA9D5350, &unk_18BC43290);
  return swift_endAccess();
}

double sub_18BB0CA78(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = _s11TransactionVMa(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RetargetableTransitionCoordinator();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  *(v13 + 24) = MEMORY[0x1E69E7CC0];
  *(v13 + 32) = v14;
  *(v13 + 40) = 1;
  *(v13 + 16) = a1;
  v11[3] = v12;
  v11[4] = &off_1EFF27FD8;
  *v11 = v13;
  v15 = *(v9 + 28);
  v16 = _s4ItemVMa(0);
  (*(*(v16 - 8) + 56))(v11 + v15, 1, 1, v16);
  _s14ScrollPositionOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v11 + *(v9 + 32)) = 0;
  v17 = a3;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BB0C68C(v11, a2, v17, a4);

  v18 = *(v13 + 16);
  swift_retain_n();
  sub_18B7D8090(v18);
  sub_18B7EAA64(sub_18B9EB460, v13, sub_18B9EB538, v13, v18);

  sub_18B7EBAE8(v18);
  sub_18B7DFF64(v11, _s11TransactionVMa);
  *(v13 + 40) = 0;

  return result;
}

uint64_t sub_18BB0CC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v26 = _s4ItemVMa(0);
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350, &unk_18BC43290);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  sub_18B7CA054(a2 + v17, v16, &unk_1EA9D5350, &unk_18BC43290);
  v18 = a1;
  sub_18B7DF638(a1, v13, _s11TransactionVMa);
  v19 = _s11TransactionVMa(0);
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  swift_beginAccess();
  sub_18B7FD070(v13, a2 + v17, &unk_1EA9D5350, &unk_18BC43290);
  swift_endAccess();
  *(a3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_mode) = 0;
  v20 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_selectedItems;
  swift_beginAccess();
  *(a3 + v20) = MEMORY[0x1E69E7CD0];

  sub_18B833A74();
  sub_18B7CA054(v18 + *(v19 + 20), v8, &qword_1EA9D7CD0, &unk_18BC49EB0);
  if ((*(v9 + 48))(v8, 1, v26) == 1)
  {
    sub_18B988BAC(v8, &qword_1EA9D7CD0, &unk_18BC49EB0);
  }

  else
  {
    v21 = v8;
    v22 = v25;
    sub_18B82FE24(v21, v25, _s4ItemVMa);
    sub_18BAFF9A0(v22);
    sub_18B7DFF64(v22, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v16, a2 + v17, &unk_1EA9D5350, &unk_18BC43290);
  return swift_endAccess();
}

double sub_18BB0CFF0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = _s11TransactionVMa(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for RetargetableTransitionCoordinator();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 24) = MEMORY[0x1E69E7CC0];
  *(v11 + 32) = v12;
  *(v11 + 40) = 1;
  *(v11 + 16) = a1;
  v9[3] = v10;
  v9[4] = &off_1EFF27FD8;
  *v9 = v11;
  v13 = *(v7 + 28);
  v14 = _s4ItemVMa(0);
  (*(*(v14 - 8) + 56))(v9 + v13, 1, 1, v14);
  _s14ScrollPositionOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v9 + *(v7 + 32)) = 0;
  v15 = a3;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BB0CC70(v9, a2, v15);

  v16 = *(v11 + 16);
  swift_retain_n();
  sub_18B7D8090(v16);
  sub_18B7EAA64(sub_18B9EB460, v11, sub_18B9EB538, v11, v16);

  sub_18B7EBAE8(v16);
  sub_18B7DFF64(v9, _s11TransactionVMa);
  *(v11 + 40) = 0;

  return result;
}

uint64_t sub_18BB0D1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v26 = _s4ItemVMa(0);
  v10 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350, &unk_18BC43290);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  v18 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  sub_18B7CA054(a2 + v18, v17, &unk_1EA9D5350, &unk_18BC43290);
  v19 = a1;
  sub_18B7DF638(a1, v14, _s11TransactionVMa);
  v20 = _s11TransactionVMa(0);
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  swift_beginAccess();
  sub_18B7FD070(v14, a2 + v18, &unk_1EA9D5350, &unk_18BC43290);
  swift_endAccess();
  *(a3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_mode) = 1;
  v21 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_selectedItems;
  swift_beginAccess();
  *(a3 + v21) = v27;
  sub_18BC1E3F8();

  sub_18B833A74();
  sub_18B7CA054(v19 + *(v20 + 20), v9, &qword_1EA9D7CD0, &unk_18BC49EB0);
  if ((*(v10 + 48))(v9, 1, v26) == 1)
  {
    sub_18B988BAC(v9, &qword_1EA9D7CD0, &unk_18BC49EB0);
  }

  else
  {
    v22 = v9;
    v23 = v25;
    sub_18B82FE24(v22, v25, _s4ItemVMa);
    sub_18BAFF9A0(v23);
    sub_18B7DFF64(v23, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v17, a2 + v18, &unk_1EA9D5350, &unk_18BC43290);
  return swift_endAccess();
}

double sub_18BB0D56C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = _s11TransactionVMa(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RetargetableTransitionCoordinator();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  *(v13 + 24) = MEMORY[0x1E69E7CC0];
  *(v13 + 32) = v14;
  *(v13 + 40) = 1;
  *(v13 + 16) = a1;
  v11[3] = v12;
  v11[4] = &off_1EFF27FD8;
  *v11 = v13;
  v15 = *(v9 + 28);
  v16 = _s4ItemVMa(0);
  (*(*(v16 - 8) + 56))(v11 + v15, 1, 1, v16);
  _s14ScrollPositionOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v11 + *(v9 + 32)) = 0;
  v17 = a3;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BB0D1E0(v11, a2, v17, a4);

  v18 = *(v13 + 16);
  swift_retain_n();
  sub_18B7D8090(v18);
  sub_18B7EAA64(sub_18B9EB460, v13, sub_18B9EB538, v13, v18);

  sub_18B7EBAE8(v18);
  sub_18B7DFF64(v11, _s11TransactionVMa);
  *(v13 + 40) = 0;

  return result;
}

uint64_t sub_18BB0D774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v23 = _s4ItemVMa(0);
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350, &unk_18BC43290);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  sub_18B7CA054(a2 + v18, v17, &unk_1EA9D5350, &unk_18BC43290);
  v19 = a1;
  sub_18B7DF638(a1, v14, _s11TransactionVMa);
  v20 = _s11TransactionVMa(0);
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  swift_beginAccess();
  sub_18B7FD070(v14, a2 + v18, &unk_1EA9D5350, &unk_18BC43290);
  swift_endAccess();
  sub_18BAF4DAC(v24, v25);
  sub_18B7CA054(v19 + *(v20 + 20), v8, &qword_1EA9D7CD0, &unk_18BC49EB0);
  if ((*(v9 + 48))(v8, 1, v23) == 1)
  {
    sub_18B988BAC(v8, &qword_1EA9D7CD0, &unk_18BC49EB0);
  }

  else
  {
    sub_18B82FE24(v8, v11, _s4ItemVMa);
    sub_18BAFF9A0(v11);
    sub_18B7DFF64(v11, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v17, a2 + v18, &unk_1EA9D5350, &unk_18BC43290);
  return swift_endAccess();
}

double sub_18BB0DAB0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = _s11TransactionVMa(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RetargetableTransitionCoordinator();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  *(v13 + 24) = MEMORY[0x1E69E7CC0];
  *(v13 + 32) = v14;
  *(v13 + 40) = 1;
  *(v13 + 16) = a1;
  v11[3] = v12;
  v11[4] = &off_1EFF27FD8;
  *v11 = v13;
  v15 = *(v9 + 28);
  v16 = _s4ItemVMa(0);
  (*(*(v16 - 8) + 56))(v11 + v15, 1, 1, v16);
  _s14ScrollPositionOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v11 + *(v9 + 32)) = 0;
  v17 = a3;
  v18 = a4;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BB0D774(v11, a2, v17, v18);

  v19 = *(v13 + 16);
  swift_retain_n();
  sub_18B7D8090(v19);
  sub_18B7EAA64(sub_18B9EB460, v13, sub_18B9EB538, v13, v19);

  sub_18B7EBAE8(v19);
  sub_18B7DFF64(v11, _s11TransactionVMa);
  *(v13 + 40) = 0;

  return result;
}

double sub_18BB0DCB4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(), uint64_t (*a5)())
{
  v10 = _s11TransactionVMa(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for RetargetableTransitionCoordinator();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 24) = MEMORY[0x1E69E7CC0];
  *(v15 + 32) = v16;
  *(v15 + 40) = 1;
  *(v15 + 16) = a1;
  v13[3] = v14;
  v13[4] = &off_1EFF27FD8;
  *v13 = v15;
  v17 = *(v11 + 28);
  v18 = _s4ItemVMa(0);
  (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
  _s14ScrollPositionOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v13 + *(v11 + 32)) = 0;
  v19 = a3;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BB101A8(v13, a2, v19);

  v20 = *(v15 + 16);
  swift_retain_n();
  sub_18B7D8090(v20);
  sub_18B7EAA64(a4, v15, a5, v15, v20);

  sub_18B7EBAE8(v20);
  sub_18B7DFF64(v13, _s11TransactionVMa);
  *(v15 + 40) = 0;

  return result;
}

id sub_18BB0DE94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_18BA650B4(MEMORY[0x1E69E7CC0]);
  v8 = *(a3 + 16);
  [a2 bounds];
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  MidX = CGRectGetMidX(v58);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  result = [a2 convertPoint:a1 toCoordinateSpace:{MidX, CGRectGetMinY(v59)}];
  v50 = v16;
  v48 = v8;
  if (v8)
  {
    v17 = v15;
    v18 = a3 + 32;
    v19 = 0.0;
    v20 = 1.79769313e308;
    while (1)
    {
      sub_18B99B8C0(v18, v53);
      v21 = v56;
      v22 = v57;
      __swift_project_boxed_opaque_existential_1Tm(v55, v56);
      v23 = (*(v22 + 16))(v21, v22);
      [v23 bounds];
      v24 = v60.origin.x;
      v25 = v60.origin.y;
      v26 = v60.size.width;
      v27 = v60.size.height;
      v28 = CGRectGetMidX(v60);
      v61.origin.x = v24;
      v61.origin.y = v25;
      v61.size.width = v26;
      v61.size.height = v27;
      [v23 convertPoint:a1 toCoordinateSpace:{v28, CGRectGetMidY(v61)}];
      v30 = v29;
      v32 = v31;
      sub_18B7F44EC(&v54, v52);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v7;
      v34 = sub_18B85DC48(v52);
      v36 = *(v7 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        break;
      }

      v40 = v35;
      if (*(v7 + 24) >= v39)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v46 = v34;
          sub_18BB2AD94();
          v34 = v46;
        }
      }

      else
      {
        sub_18BB2F2E0(v39, isUniquelyReferenced_nonNull_native);
        v34 = sub_18B85DC48(v52);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_24;
        }
      }

      v42 = sqrt((v30 - v50) * (v30 - v50) + (v32 - v17) * (v32 - v17));
      v7 = v51;
      if (v40)
      {
        *(v51[7] + 8 * v34) = v42;

        sub_18B831014(v52);
      }

      else
      {
        v51[(v34 >> 6) + 8] |= 1 << v34;
        v43 = v34;
        sub_18B7F44EC(v52, v51[6] + 40 * v34);
        *(v51[7] + 8 * v43) = v42;

        sub_18B831014(v52);
        v44 = v51[2];
        v38 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v38)
        {
          goto LABEL_23;
        }

        v51[2] = v45;
      }

      if (v42 < v20)
      {
        v20 = v42;
      }

      if (v19 <= v42)
      {
        v19 = v42;
      }

      result = sub_18B99B91C(v53);
      v18 += 144;
      if (!--v8)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = sub_18BC22078();
    __break(1u);
  }

  else
  {
    v19 = 0.0;
    v20 = 1.79769313e308;
LABEL_19:
    v47 = v48;
    if (v48 > 20.0)
    {
      v47 = 20.0;
    }

    *a4 = v7;
    *(a4 + 8) = v20;
    *(a4 + 16) = v19;
    *(a4 + 24) = 0x3FEB851EB851EB85;
    *(a4 + 32) = v47 * 0.005 + 0.8;
    *(a4 + 40) = 0x3FE999999999999ALL;
  }

  return result;
}

double sub_18BB0E200(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v45 = a3;
  v46 = a5;
  v49 = a4;
  v41 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v39 - v7;
  v8 = _s4ItemVMa(0);
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350, &unk_18BC43290);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = _s11TransactionVMa(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for RetargetableTransitionCoordinator();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E7CC0];
  *(v22 + 24) = MEMORY[0x1E69E7CC0];
  *(v22 + 32) = v23;
  *(v22 + 40) = 1;
  *(v22 + 16) = a1;
  v20[3] = v21;
  v20[4] = &off_1EFF27FD8;
  *v20 = v22;
  v42 = *(v17 + 20);
  v24 = v9;
  v25 = v41;
  (*(v24 + 56))(v20 + v42, 1, 1, v8);
  _s14ScrollPositionOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v20 + *(v17 + 24)) = 0;
  v26 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  v48 = v16;
  sub_18B7CA054(v25 + v26, v16, &unk_1EA9D5350, &unk_18BC43290);
  sub_18B7DF638(v20, v13, _s11TransactionVMa);
  (*(v18 + 56))(v13, 0, 1, v17);
  swift_beginAccess();
  v27 = v45;
  sub_18B9EADD8(v49, v50);
  v28 = v46;
  v29 = v27;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18B7FD070(v13, v25 + v26, &unk_1EA9D5350, &unk_18BC43290);
  swift_endAccess();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v31 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemCloseHandler];
  sub_18BC1E1A8();

  v32 = sub_18BC1E3F8();
  v33 = sub_18BBA3838(v32);
  v34 = v47;

  v31(v33, v28);

  sub_18B7CA054(v20 + v42, v34, &qword_1EA9D7CD0, &unk_18BC49EB0);
  if ((*(v44 + 48))(v34, 1, v43) == 1)
  {
    sub_18B988BAC(v34, &qword_1EA9D7CD0, &unk_18BC49EB0);
  }

  else
  {
    v35 = v34;
    v36 = v40;
    sub_18B82FE24(v35, v40, _s4ItemVMa);
    sub_18BAFF9A0(v36);
    sub_18B7DFF64(v36, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v48, v25 + v26, &unk_1EA9D5350, &unk_18BC43290);
  swift_endAccess();

  sub_18B9EAE34(v49);
  v37 = *(v22 + 16);
  swift_retain_n();
  sub_18B7D8090(v37);
  sub_18B7EAA64(sub_18B9EB460, v22, sub_18B9EB538, v22, v37);

  sub_18B7EBAE8(v37);
  sub_18B7DFF64(v20, _s11TransactionVMa);
  *(v22 + 40) = 0;

  return result;
}

double sub_18BB0E790(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v43 = a3;
  v44 = a5;
  v47 = a4;
  v40 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v38 - v7;
  v8 = _s4ItemVMa(0);
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350, &unk_18BC43290);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = _s11TransactionVMa(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for RetargetableTransitionCoordinator();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E7CC0];
  *(v22 + 24) = MEMORY[0x1E69E7CC0];
  *(v22 + 32) = v23;
  *(v22 + 40) = 1;
  *(v22 + 16) = a1;
  v20[3] = v21;
  v20[4] = &off_1EFF27FD8;
  *v20 = v22;
  v39 = *(v17 + 20);
  v24 = v9;
  v25 = v40;
  (*(v24 + 56))(v20 + v39, 1, 1, v8);
  _s14ScrollPositionOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v20 + *(v17 + 24)) = 0;
  v26 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  v46 = v16;
  sub_18B7CA054(v25 + v26, v16, &unk_1EA9D5350, &unk_18BC43290);
  sub_18B7DF638(v20, v13, _s11TransactionVMa);
  (*(v18 + 56))(v13, 0, 1, v17);
  swift_beginAccess();
  v27 = v43;
  v28 = v47;
  sub_18BC1E3F8();
  v29 = v44;
  v30 = v27;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18B7FD070(v13, v25 + v26, &unk_1EA9D5350, &unk_18BC43290);
  swift_endAccess();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v32 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemCloseHandler];
  sub_18BC1E1A8();

  v32(v28, v29);
  v33 = v45;

  sub_18B7CA054(v20 + v39, v33, &qword_1EA9D7CD0, &unk_18BC49EB0);
  if ((*(v42 + 48))(v33, 1, v41) == 1)
  {
    sub_18B988BAC(v33, &qword_1EA9D7CD0, &unk_18BC49EB0);
  }

  else
  {
    v34 = v33;
    v35 = v38;
    sub_18B82FE24(v34, v38, _s4ItemVMa);
    sub_18BAFF9A0(v35);
    sub_18B7DFF64(v35, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v46, v25 + v26, &unk_1EA9D5350, &unk_18BC43290);
  swift_endAccess();

  v36 = *(v22 + 16);
  swift_retain_n();
  sub_18B7D8090(v36);
  sub_18B7EAA64(sub_18B9EB460, v22, sub_18B9EB538, v22, v36);

  sub_18B7EBAE8(v36);
  sub_18B7DFF64(v20, _s11TransactionVMa);
  *(v22 + 40) = 0;

  return result;
}

double sub_18BB0ECF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5)
{
  v43 = a5;
  v45 = a4;
  v41 = a3;
  v38 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v35 - v7;
  v8 = _s4ItemVMa(0);
  v9 = *(v8 - 8);
  v39 = v8;
  v40 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350, &unk_18BC43290);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = _s11TransactionVMa(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for RetargetableTransitionCoordinator();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E7CC0];
  *(v22 + 24) = MEMORY[0x1E69E7CC0];
  *(v22 + 32) = v23;
  *(v22 + 40) = 1;
  *(v22 + 16) = a1;
  v20[3] = v21;
  v20[4] = &off_1EFF27FD8;
  *v20 = v22;
  v37 = *(v17 + 20);
  v24 = v9;
  v25 = v38;
  (*(v24 + 56))(v20 + v37, 1, 1, v8);
  _s14ScrollPositionOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v20 + *(v17 + 24)) = 0;
  v26 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  v44 = v16;
  sub_18B7CA054(v25 + v26, v16, &unk_1EA9D5350, &unk_18BC43290);
  sub_18B7DF638(v20, v13, _s11TransactionVMa);
  (*(v18 + 56))(v13, 0, 1, v17);
  swift_beginAccess();
  v27 = v41;
  v28 = v45;
  sub_18B9EADD8(v45, v46);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18B7FD070(v13, v25 + v26, &unk_1EA9D5350, &unk_18BC43290);
  swift_endAccess();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v30 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemPinHandler];
  sub_18BC1E1A8();

  v30(*(v28 + 8), v43);
  v31 = v42;

  sub_18B7CA054(v20 + v37, v31, &qword_1EA9D7CD0, &unk_18BC49EB0);
  if ((*(v40 + 48))(v31, 1, v39) == 1)
  {
    sub_18B988BAC(v31, &qword_1EA9D7CD0, &unk_18BC49EB0);
  }

  else
  {
    v32 = v36;
    sub_18B82FE24(v31, v36, _s4ItemVMa);
    sub_18BAFF9A0(v32);
    sub_18B7DFF64(v32, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v44, v25 + v26, &unk_1EA9D5350, &unk_18BC43290);
  swift_endAccess();
  sub_18B9EAE34(v45);

  v33 = *(v22 + 16);
  swift_retain_n();
  sub_18B7D8090(v33);
  sub_18B7EAA64(sub_18B9EB460, v22, sub_18B9EB538, v22, v33);

  sub_18B7EBAE8(v33);
  sub_18B7DFF64(v20, _s11TransactionVMa);
  *(v22 + 40) = 0;

  return result;
}

double sub_18BB0F258(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v42 = a5;
  v43 = a3;
  v46 = a4;
  v41 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v35 - v7;
  v8 = _s4ItemVMa(0);
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350, &unk_18BC43290);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = _s11TransactionVMa(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for RetargetableTransitionCoordinator();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E7CC0];
  *(v22 + 24) = MEMORY[0x1E69E7CC0];
  *(v22 + 32) = v23;
  *(v22 + 40) = 1;
  *(v22 + 16) = a1;
  v20[3] = v21;
  v20[4] = &off_1EFF27FD8;
  *v20 = v22;
  v37 = *(v17 + 20);
  (*(v9 + 56))(v20 + v37, 1, 1, v8);
  _s14ScrollPositionOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v20 + *(v17 + 24)) = 0;
  v24 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  v25 = v41;
  swift_beginAccess();
  v45 = v16;
  sub_18B7CA054(v25 + v24, v16, &unk_1EA9D5350, &unk_18BC43290);
  sub_18B7DF638(v20, v13, _s11TransactionVMa);
  (*(v18 + 56))(v13, 0, 1, v17);
  swift_beginAccess();
  v26 = v42;
  v40 = v42;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  v27 = v43;
  v28 = v46;
  sub_18BC1E3F8();
  sub_18B7FD070(v13, v25 + v24, &unk_1EA9D5350, &unk_18BC43290);
  swift_endAccess();
  v29 = *&v27[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemCloseHandler];
  sub_18BC1E1A8();
  v29(v28, v26);
  v30 = v44;

  sub_18B7CA054(v20 + v37, v30, &qword_1EA9D7CD0, &unk_18BC49EB0);
  if ((*(v39 + 48))(v30, 1, v38) == 1)
  {
    sub_18B988BAC(v30, &qword_1EA9D7CD0, &unk_18BC49EB0);
  }

  else
  {
    v31 = v30;
    v32 = v36;
    sub_18B82FE24(v31, v36, _s4ItemVMa);
    sub_18BAFF9A0(v32);
    sub_18B7DFF64(v32, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v45, v25 + v24, &unk_1EA9D5350, &unk_18BC43290);
  swift_endAccess();

  v33 = *(v22 + 16);
  swift_retain_n();
  sub_18B7D8090(v33);
  sub_18B7EAA64(sub_18B9EB460, v22, sub_18B9EB538, v22, v33);

  sub_18B7EBAE8(v33);
  sub_18B7DFF64(v20, _s11TransactionVMa);
  *(v22 + 40) = 0;

  return result;
}

uint64_t sub_18BB0F79C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  *(v2 + 46) = 0u;
  v3 = (v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedCapsuleRegistrations);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = sub_18B7DDC7C(MEMORY[0x1E69E7CC0]);
  *v3 = CGRectMake;
  v3[1] = 0;
  v3[2] = v5;
  v3[3] = CGRectMake;
  v3[4] = 0;
  v6 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewManager;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9370, &qword_18BC4CBE8);
  swift_allocObject();
  *(v1 + v6) = sub_18B7C03A8();
  v7 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewRegistration;
  v8 = type metadata accessor for TabSwitcher.BorrowedContentViewRegistration(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentMetrics);
  v10 = *MEMORY[0x1E69DDCE0];
  v11 = *(MEMORY[0x1E69DDCE0] + 8);
  v12 = *(MEMORY[0x1E69DDCE0] + 16);
  v13 = *(MEMORY[0x1E69DDCE0] + 24);
  *v9 = *MEMORY[0x1E69DDCE0];
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  v9[4] = 0;
  v9[5] = 0;
  *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewOwningBorrowedContent) = 0;
  v14 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  v15 = _s11TransactionVMa(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_interactivePageInsertionIsDisabledAssertion;
  type metadata accessor for Assertion();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = 0;
  *(v1 + v16) = v17;
  sub_18BC1DE28();
  v18 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pendingMoveIntent;
  v19 = _s15MoveItemsIntentVMa(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_mode) = 0;
  v20 = v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  *v20 = 0;
  *(v20 + 2) = 0;
  *(v20 + 8) = v4;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  v21 = MEMORY[0x1E69E7CD0];
  *(v20 + 48) = MEMORY[0x1E69E7CD0];
  v22 = _s7ContentVMa(0);
  v23 = *(v22 + 40);
  v24 = _s4ItemVMa(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v20 + v23, 1, 1, v24);
  *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_selectedItems) = v21;
  v26 = v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_unresolvedContent;
  *v26 = 0;
  *(v26 + 2) = 0;
  *(v26 + 8) = v4;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *(v26 + 48) = v21;
  v25(v26 + *(v22 + 40), 1, 1, v24);
  v25(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemToPresentToAfterNextLayoutPass, 1, 1, v24);
  *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_needsResetLayoutAfterMovingToWindow) = 0;
  *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___displayItems) = 0;
  *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___quickTabSwitcherDisplayItem) = 0;
  *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem) = 0;
  v27 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewRegistrationsByItem;
  *(v1 + v27) = sub_18B7E80C8(v4);
  v28 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_browserContentInsets);
  *v28 = v10;
  v28[1] = v11;
  v28[2] = v12;
  v28[3] = v13;
  v29 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_capsuleReferenceFrame);
  v30 = *(MEMORY[0x1E695F050] + 16);
  *v29 = *MEMORY[0x1E695F050];
  v29[1] = v30;
  if ([objc_opt_self() isSolariumEnabled])
  {
    if (qword_1EA9D22D0 != -1)
    {
      swift_once();
    }

    v31 = &xmmword_1EA9D5DF8;
  }

  else
  {
    if (qword_1EA9D2308 != -1)
    {
      swift_once();
    }

    if (byte_1EA9D5F38)
    {
      if (qword_1EA9D22D8 != -1)
      {
        swift_once();
      }

      v31 = &xmmword_1EA9D5E38;
    }

    else
    {
      if (qword_1EA9D22E0 != -1)
      {
        swift_once();
      }

      v31 = &xmmword_1EA9D5E78;
    }
  }

  v32 = v31[1];
  v78[0] = *v31;
  v78[1] = v32;
  v79[0] = v31[2];
  *(v79 + 14) = *(v31 + 46);
  v76[0] = v78[0];
  v76[1] = v32;
  v77[0] = v79[0];
  *(v77 + 14) = *(v79 + 14);
  v33 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_metrics);
  sub_18B7C9FF8(v78, v75);
  sub_18BA48FCC(v76, v75);
  v34 = v75[3];
  v33[2] = v75[2];
  v33[3] = v34;
  v33[4] = v75[4];
  v35 = v75[1];
  *v33 = v75[0];
  v33[1] = v35;
  *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_needsInitialLayout) = 1;
  v36 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedCapsuleViewProvider);
  *v36 = sub_18BAF06E0;
  v36[1] = 0;
  v37 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewProvider);
  *v37 = sub_18BB11750;
  v37[1] = 0;
  v38 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_canAddItemPredicate);
  *v38 = sub_18B7E9C50;
  v38[1] = 0;
  v39 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_canHandleDropSession);
  *v39 = sub_18B7E9C50;
  v39[1] = 0;
  v40 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_canShowTips);
  *v40 = sub_18B814EE4;
  v40[1] = 0;
  v41 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_didScrollToPageObserver);
  *v41 = CGRectMake;
  v41[1] = 0;
  v42 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dismissHandler);
  *v42 = CGRectMake;
  v42[1] = 0;
  v43 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dragItemProvider);
  *v43 = sub_18B9A926C;
  v43[1] = 0;
  v44 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dropDestinationProvider);
  *v44 = sub_18BAF06F4;
  v44[1] = 0;
  v45 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dropHandler);
  *v45 = CGRectMake;
  v45[1] = 0;
  v46 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dropOperationProvider);
  *v46 = sub_18B8390A8;
  v46[1] = 0;
  v47 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_relinquishBorrowedCapsuleView);
  *v47 = CGRectMake;
  v47[1] = 0;
  v48 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemAddHandler);
  *v48 = CGRectMake;
  v48[1] = 0;
  v49 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemCloseHandler);
  *v49 = CGRectMake;
  v49[1] = 0;
  v50 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemCopyHandler);
  *v50 = CGRectMake;
  v50[1] = 0;
  v51 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemDuplicateHandler);
  *v51 = CGRectMake;
  v51[1] = 0;
  v52 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemMoveHandler);
  *v52 = CGRectMake;
  v52[1] = 0;
  v53 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemPinHandler);
  *v53 = CGRectMake;
  v53[1] = 0;
  v54 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemSelectionHandler);
  *v54 = CGRectMake;
  v54[1] = 0;
  v55 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pageInsertionHandler);
  *v55 = CGRectMake;
  v55[1] = 0;
  v56 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pageRetitleHandler);
  *v56 = CGRectMake;
  v56[1] = 0;
  v57 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pageTitleMenuProvider);
  *v57 = sub_18B9A926C;
  v57[1] = 0;
  v58 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_profileMenuProvider);
  *v58 = sub_18B8390A8;
  v58[1] = 0;
  v59 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_recentlyClosedMenuProvider);
  *v59 = sub_18B8390A8;
  v59[1] = 0;
  v60 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_reducedMotionTransitionObserver);
  *v60 = CGRectMake;
  v60[1] = 0;
  v61 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_relinquishBorrowedContentViewRegistration);
  *v61 = CGRectMake;
  v61[1] = 0;
  v62 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_showPagePickerSheet);
  *v62 = CGRectMake;
  v62[1] = 0;
  v63 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_steadyStateObserver);
  *v63 = CGRectMake;
  v63[1] = 0;
  v64 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_tabOverviewVisibilityObserver);
  *v64 = 0;
  v64[1] = 0;
  v65 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_toggleSidebarHandler);
  *v65 = CGRectMake;
  v65[1] = 0;
  v66 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_validateDismissal);
  *v66 = sub_18B7E9C50;
  v66[1] = 0;
  v67 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_visibilityObserver);
  *v67 = CGRectMake;
  v67[1] = 0;
  v68 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_willScrollToPageObserver);
  *v68 = CGRectMake;
  v68[1] = 0;
  *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isInSteadyState) = 1;
  *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentPresentationTransition) = 0;
  *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isSettingUpTransition) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState) = 0;
  v69 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationTransitionsByItem;
  *(v1 + v69) = sub_18B7DE0F0(v4);
  v70 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_reducedMotionTransitionAssertion;
  v71 = swift_allocObject();
  *(v71 + 16) = v4;
  *(v71 + 24) = 0;
  *(v1 + v70) = v71;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isVisible) = 0;
  v72 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_visibilityAssertion;
  v73 = swift_allocObject();
  *(v73 + 16) = v4;
  *(v73 + 24) = 0;
  *(v1 + v72) = v73;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18BB101A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - v6;
  v21[0] = _s4ItemVMa(0);
  v8 = *(v21[0] - 8);
  MEMORY[0x1EEE9AC00](v21[0]);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350, &unk_18BC43290);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v21 - v15;
  v17 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  sub_18B7CA054(a2 + v17, v16, &unk_1EA9D5350, &unk_18BC43290);
  v18 = a1;
  sub_18B7DF638(a1, v13, _s11TransactionVMa);
  v19 = _s11TransactionVMa(0);
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  swift_beginAccess();
  sub_18B7FD070(v13, a2 + v17, &unk_1EA9D5350, &unk_18BC43290);
  swift_endAccess();
  sub_18B833A74();
  sub_18B7CA054(v18 + *(v19 + 20), v7, &qword_1EA9D7CD0, &unk_18BC49EB0);
  if ((*(v8 + 48))(v7, 1, v21[0]) == 1)
  {
    sub_18B988BAC(v7, &qword_1EA9D7CD0, &unk_18BC49EB0);
  }

  else
  {
    sub_18B82FE24(v7, v10, _s4ItemVMa);
    sub_18BAFF9A0(v10);
    sub_18B7DFF64(v10, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v16, a2 + v17, &unk_1EA9D5350, &unk_18BC43290);
  return swift_endAccess();
}

id sub_18BB104E8()
{
  v0 = sub_18B7C5C10();
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___SFTabOverviewDisplayItem_capsuleToolbar];
  if (v2)
  {
    v3 = v2;

    v4 = *&v3[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView];
  }

  else
  {
    v4 = *&v0[OBJC_IVAR___SFTabOverviewDisplayItem_capsuleView];
    v5 = v4;
  }

  return v4;
}

void sub_18BB105E8(uint64_t a1)
{
  v3 = *(_s4ItemVMa(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = v1 + ((*(v3 + 80) + 33) & ~*(v3 + 80));

  sub_18BB04AD8(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_296Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_332Tm()
{
  v1 = (_s4ItemVMa(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[9];
  v4 = sub_18BC1EC08();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_18BB10860(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(_s4ItemVMa(0) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t objectdestroy_274Tm()
{
  v1 = (_s4ItemVMa(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[9];
  v4 = sub_18BC1EC08();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

unint64_t sub_18BB10B78()
{
  result = qword_1EA9D92D0;
  if (!qword_1EA9D92D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D92D0);
  }

  return result;
}

uint64_t sub_18BB10BF0()
{
  v1 = *(_s4ItemVMa(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return sub_18BAFDFD0(v2, v3, v4);
}

void sub_18BB10C60(uint64_t a1)
{
  v3 = *(_s4ItemVMa(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  sub_18BAFBBE0(a1, v8, v1 + v4, v6, v7);
}

void sub_18BB10DF0()
{
  v1 = *(_s15MoveItemsIntentVMa(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_18BAF6EA0(v0 + v2);
  if (v3)
  {
    v3();
  }
}

uint64_t objectdestroy_455Tm()
{
  v1 = _s15MoveItemsIntentVMa(0);
  v2 = *(*(v1 - 8) + 80);

  v3 = v0 + ((v2 + 24) & ~v2);
  _s15MoveItemsIntentV11DestinationOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = _s4PageVMa(0);
  v6 = v5[8];
  v7 = sub_18BC1EC08();
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v6, v7);

  v9 = *(v3 + v5[14]);
  if (EnumCaseMultiPayload == 1)
  {
    if (v9 >= 3)
    {
    }

    v10 = v3 + v5[16];
    if (*(v10 + 24))
    {
    }

    v11 = (v3 + v5[18]);
  }

  else
  {
    if (v9 >= 3)
    {
    }

    v12 = v3 + v5[16];
    if (*(v12 + 24))
    {
    }

    v13 = (v3 + v5[18]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338, &unk_18BC4CBC0);
  }

  v14 = v3 + *(v1 + 20);
  v8(v14 + v5[8], v7);

  if (*(v14 + v5[14]) >= 3uLL)
  {
  }

  v15 = v14 + v5[16];
  if (*(v15 + 24))
  {
  }

  v16 = (v14 + v5[18]);

  return swift_deallocObject();
}

double sub_18BB112C8()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pageInsertionHandler);
  sub_18BC1E1A8();
  v2(v1);

  return result;
}

id sub_18BB11328()
{
  v1 = *(v0 + 24);
  sub_18BAF471C(v1, *(v0 + 32));

  return [v1 layoutIfNeeded];
}

uint64_t sub_18BB11400(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

double sub_18BB11774(double a1, double a2, double a3, double a4)
{
  v4 = a2 - a1;
  if (a2 - a1 == 0.0)
  {
    return a4;
  }

  if (a4 < a1)
  {
    return a1 - v4 * (1.0 - 1.0 / ((a1 - a4) / v4 * a3 + 1.0));
  }

  if (a2 >= a4)
  {
    return a4;
  }

  return v4 * (1.0 - 1.0 / ((a4 - a2) / v4 * a3 + 1.0)) + a2;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_18BB11820(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 145))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 144);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18BB11874(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_18BB118F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v13[8] = *(a2 + 128);
  v14 = *(a2 + 144);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_18BB11984(v11, v13) & 1;
}

uint64_t sub_18BB11984(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (!CGRectEqualToRect(*(a1 + 32), *(a2 + 32)) || *(a1 + 64) != *(a2 + 64))
  {
    goto LABEL_19;
  }

  v7 = 0;
  if (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88))
  {
    return v7 & 1;
  }

  if (*(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104) && CGRectEqualToRect(*(a1 + 112), *(a2 + 112)))
  {
    v7 = *(a1 + 144) ^ *(a2 + 144) ^ 1;
  }

  else
  {
LABEL_19:
    v7 = 0;
  }

  return v7 & 1;
}

void sub_18BB11A9C(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  v4 = 0uLL;
  if (*(v3 + 16))
  {
    v5 = sub_18B7C4104(0x736E496863756F74, 0xEB00000000737465);
    if ((v6 & 1) != 0 && (sub_18B7F44EC(*(v3 + 56) + 40 * v5, v11), swift_dynamicCast()))
    {
      v7 = 0;
      v4 = v9;
      v8 = v10;
    }

    else
    {
      v7 = 1;
      v8 = 0uLL;
      v4 = 0uLL;
    }
  }

  else
  {
    v7 = 1;
    v8 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v8;
  *(a1 + 32) = v7;
}

double sub_18BB11B5C()
{
  v1 = *(v0 + 104);
  v2 = 0.0;
  if (*(v1 + 16))
  {
    v3 = sub_18B7C4104(0xD000000000000017, 0x800000018BC63300);
    if (v4)
    {
      sub_18B7F44EC(*(v1 + 56) + 40 * v3, v7);
      if (swift_dynamicCast())
      {
        return v6;
      }
    }
  }

  return v2;
}

double sub_18BB11BF8()
{
  v1 = *(v0 + 104);
  v2 = 0.0;
  if (*(v1 + 16))
  {
    v3 = sub_18B7C4104(0xD000000000000014, 0x800000018BC6AF60);
    if (v4)
    {
      sub_18B7F44EC(*(v1 + 56) + 40 * v3, v7);
      if (swift_dynamicCast())
      {
        return v6;
      }
    }
  }

  return v2;
}

double sub_18BB11CB8()
{
  v1 = *(v0 + 104);
  if (*(v1 + 16) && (v2 = sub_18B7C4104(0xD000000000000019, 0x800000018BC63320), (v3 & 1) != 0) && (sub_18B7F44EC(*(v1 + 56) + 40 * v2, v6), type metadata accessor for CGRect(0), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return *MEMORY[0x1E695F050];
  }
}

uint64_t sub_18BB11D60(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_18BB12248(v13, v14) & 1;
}

uint64_t sub_18BB11DC8(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x18CFFD690](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x18CFFD690](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x18CFFD690](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x18CFFD690](*&v9);
}

uint64_t sub_18BB11E48()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_18BC22158();
  sub_18BB11DC8(v1, v2, v3, v4);
  return sub_18BC221A8();
}

uint64_t sub_18BB11EB0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_18BC22158();
  sub_18BB11DC8(v2, v3, v4, v5);
  return sub_18BC221A8();
}

uint64_t sub_18BB11F14(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x18CFFD690](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x18CFFD690](*&v3);
}

uint64_t sub_18BB11F64()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18BC22158();
  sub_18BB11F14(v1, v2);
  return sub_18BC221A8();
}

uint64_t sub_18BB11FB8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_18BC22158();
  sub_18BB11F14(v2, v3);
  return sub_18BC221A8();
}

uint64_t sub_18BB12048(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BB12090(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18BB120FC(uint64_t a1)
{
  result = sub_18BB12124();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18BB12124()
{
  result = qword_1EA9D9390;
  if (!qword_1EA9D9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9390);
  }

  return result;
}

unint64_t sub_18BB12178(uint64_t a1)
{
  result = sub_18B7F4038();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18BB121A0(uint64_t a1)
{
  result = sub_18B846940();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18BB121C8(uint64_t a1)
{
  result = sub_18B846F84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18BB121F4()
{
  result = qword_1EA9D93A0;
  if (!qword_1EA9D93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D93A0);
  }

  return result;
}

uint64_t sub_18BB12248(uint64_t a1, uint64_t a2)
{
  if (!CGRectEqualToRect(*a1, *a2) || ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0 || ((*(a1 + 33) ^ *(a2 + 33)) & 1) != 0 || *(a1 + 40) != *(a2 + 40) || (sub_18BC212E8() & 1) == 0 || *(a1 + 96) != *(a2 + 96))
  {
    return 0;
  }

  v4 = *(a1 + 104);
  v5 = *(a2 + 104);

  return sub_18BABD73C(v4, v5);
}

id sub_18BB123A0()
{
  CGRectMake();

  return v0;
}

id SFFluidCollectionViewDelegate.fluidCollectionView(_:superviewForItem:)()
{
  CGRectMake();

  return v0;
}

id sub_18BB12400()
{
  CGRectMake();

  return v0;
}

id SFFluidCollectionViewDelegate.fluidCollectionView(_:superviewForSupplementary:attachedTo:)()
{
  CGRectMake();

  return v0;
}

uint64_t sub_18BB12664@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v38 = a1;
  v39 = a3;
  v6 = a2[2];
  v5 = a2[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = sub_18BC21848();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v31 - v8;
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BC21848();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v3;
  v37 = a2;
  v22 = v38;
  sub_18BC20A28();
  if ((*(v18 + 48))(v17, 1, v5) == 1)
  {
    v23 = v36;
    v24 = v39;
    (*(v12 + 8))(v17, v11);
    v25 = v35;
    sub_18BC209E8();
    v26 = TupleTypeMetadata2;
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v25, 1, TupleTypeMetadata2) == 1)
    {
      (*(v31 + 8))(v25, v32);
      return (*(v18 + 56))(v24, 1, 1, v5);
    }

    else
    {
      (*(v18 + 32))(v24, &v25[*(v26 + 48)], v5);
      (*(v18 + 56))(v24, 0, 1, v5);
      return (*(v23 + 8))(v25, v6);
    }
  }

  else
  {
    v28 = *(v18 + 32);
    v28(v21, v17, v5);
    (*(v36 + 16))(v33, v22, v6);
    v29 = *(v18 + 56);
    v29(v14, 1, 1, v5);
    sub_18BC20A38();
    v30 = v39;
    v28(v39, v21, v5);
    return (v29)(v30, 0, 1, v5);
  }
}

uint64_t SFSiriLinkCoordinator.createNewTabGroupInteraction()()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v0 = objc_allocWithZone(sub_18BC1F038());
  sub_18B808B34();
  return sub_18BC1F028();
}

uint64_t sub_18BB12B54(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[12] = a1;
  v3[13] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  v3[14] = swift_task_alloc();
  v5 = sub_18BC1E8B8();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  sub_18BC1EC48();
  v3[18] = swift_task_alloc();
  sub_18BC20B88();
  v3[19] = swift_task_alloc();
  sub_18BC1E8D8();
  v3[20] = swift_task_alloc();
  v6 = sub_18BC1DF68();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v3[23] = v7;
  v3[24] = v8;
  sub_18BC20F28();
  v3[25] = sub_18BC20F18();
  v10 = sub_18BC20ED8();
  v3[26] = v10;
  v3[27] = v9;

  return MEMORY[0x1EEE6DFA0](sub_18BB12D68, v10, v9);
}

uint64_t sub_18BB12D68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v0[28] = v3, v2, v3))
  {
    v4 = v0[17];
    v6 = v0[15];
    v5 = v0[16];
    sub_18BC1E0A8();
    v7 = v0[9];
    if (v7)
    {
      v8 = v0[8];
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v0[9];
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    sub_18BC1E3F8();
    sub_18BC20B18();
    sub_18BC1EC38();
    (*(v5 + 104))(v4, *MEMORY[0x1E6968DF0], v6);
    sub_18BC1E8F8();
    sub_18BC1DF78();

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      if (qword_1EA9D22B0 != -1)
      {
        swift_once();
      }

      v11 = sub_18BC1F2C8();
      __swift_project_value_buffer(v11, qword_1EA9F7EC8);
      v12 = sub_18BC1F2A8();
      v13 = sub_18BC21218();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_18B7AC000, v12, v13, "Create new Tab Group.", v14, 2u);
        MEMORY[0x18CFFEEE0](v14, -1, -1);
      }

      v15 = v0[28];

      v16 = sub_18BC20B98();

      v17 = [v15 createNewTabGroupWithTitle_];

      v18 = sub_18BC20BD8();
      v20 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9040, &qword_18BC428D0);
      v21 = swift_allocObject();
      v0[32] = v21;
      *(v21 + 16) = xmmword_18BC3E410;
      *(v21 + 32) = v18;
      *(v21 + 40) = v20;
      v22 = swift_task_alloc();
      v0[33] = v22;
      *v22 = v0;
      v22[1] = sub_18BB13718;

      return sub_18BA6B7C0(v21);
    }

    else
    {
      v28 = v0[23];
      v29 = v0[21];
      v30 = v0[22];
      v31 = v0[14];

      v0[29] = sub_18BC1E0C8();
      (*(v30 + 16))(v31, v28, v29);
      (*(v30 + 56))(v31, 0, 1, v29);
      v32 = swift_task_alloc();
      v0[30] = v32;
      *v32 = v0;
      v32[1] = sub_18BB132B0;
      v33 = v0[14];

      return MEMORY[0x1EEDB33A0](v0 + 10, v33);
    }
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v24 = sub_18BC1DE48();
    v25 = __swift_project_value_buffer(v24, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    swift_willThrow();

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_18BB132B0()
{
  v2 = *v1;
  (*v1)[31] = v0;

  sub_18BB144F4(v2[14]);

  v3 = v2[27];
  v4 = v2[26];
  if (v0)
  {
    v5 = sub_18BB13C1C;
  }

  else
  {
    v5 = sub_18BB13420;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_18BB13420()
{
  v1 = v0[11];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0[10] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v3 = sub_18BC1F2C8();
    __swift_project_value_buffer(v3, qword_1EA9F7EC8);
    v4 = sub_18BC1F2A8();
    v5 = sub_18BC21218();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_18B7AC000, v4, v5, "Create new Tab Group.", v6, 2u);
      MEMORY[0x18CFFEEE0](v6, -1, -1);
    }

    v7 = v0[28];

    v8 = sub_18BC20B98();

    v9 = [v7 createNewTabGroupWithTitle_];

    v10 = sub_18BC20BD8();
    v12 = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9040, &qword_18BC428D0);
    v13 = swift_allocObject();
    v0[32] = v13;
    *(v13 + 16) = xmmword_18BC3E410;
    *(v13 + 32) = v10;
    *(v13 + 40) = v12;
    v14 = swift_task_alloc();
    v0[33] = v14;
    *v14 = v0;
    v14[1] = sub_18BB13718;

    return sub_18BA6B7C0(v13);
  }

  else
  {
    v16 = v0[23];
    v17 = v0[21];
    v18 = v0[22];
    v19 = v0[14];

    v0[29] = sub_18BC1E0C8();
    (*(v18 + 16))(v19, v16, v17);
    (*(v18 + 56))(v19, 0, 1, v17);
    v20 = swift_task_alloc();
    v0[30] = v20;
    *v20 = v0;
    v20[1] = sub_18BB132B0;
    v21 = v0[14];

    return MEMORY[0x1EEDB33A0](v0 + 10, v21);
  }
}

uint64_t sub_18BB13718(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v5 = *(v3 + 216);
  v6 = *(v3 + 208);
  if (v1)
  {
    v7 = sub_18BB13B40;
  }

  else
  {
    v7 = sub_18BB13874;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_18BB13874()
{
  v1 = v0[34];

  if (*(v1 + 16) == 1)
  {
    v2 = v0[34];
    v4 = v0[22];
    v3 = v0[23];
    v17 = v0[21];
    v5 = v0[12];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[6];
    sub_18BC1E3F8();
    sub_18BC1E1A8();

    v0[5] = v7;
    v0[6] = v6;
    v0[7] = v8;
    v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D73B8, &qword_18BC482A0);
    v5[4] = sub_18BAEBFB8(&qword_1EA9D93C0, &qword_1EA9D73B8, &qword_18BC482A0);
    __swift_allocate_boxed_opaque_existential_0Tm(v5);
    sub_18BA3F7A8();
    sub_18BC1DF88();
    swift_unknownObjectRelease();

    (*(v4 + 8))(v3, v17);

    v9 = v0[1];
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v11 = v0[22];
    v10 = v0[23];
    v12 = v0[21];
    v13 = sub_18BC1DE48();
    v14 = __swift_project_value_buffer(v13, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v13 - 8) + 16))(v15, v14, v13);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v11 + 8))(v10, v12);

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_18BB13B40()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_18BB13C1C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_18BB13CF8(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BB12B54(a1, a2, v2);
}

uint64_t SFSiriLinkCoordinator.openTabGroupInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC4D098;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B808D6C();
  return sub_18BC1F028();
}

uint64_t sub_18BB13E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  sub_18BC20F28();
  v3[11] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BB13EF0, v5, v4);
}

uint64_t sub_18BB13EF0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Open Tab Group", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = *(v0 + 64);

    sub_18BC1E0A8();
    v9 = sub_18BC20B98();
    [v3 openTabGroupOfKind:2 uuidString:v9];

    v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0, &qword_18BC44410);
    v8[4] = sub_18BAEBFB8(&qword_1EA9D45B8, &qword_1EA9D45C0, &qword_18BC44410);
    __swift_allocate_boxed_opaque_existential_0Tm(v8);
    sub_18BC1DF98();

    swift_unknownObjectRelease();
    v10 = *(v0 + 8);
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v11 = sub_18BC1DE48();
    v12 = __swift_project_value_buffer(v11, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v11 - 8) + 16))(v13, v12, v11);
    swift_willThrow();
    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_18BB141B4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BB13E54(a1, a2, v2);
}

uint64_t sub_18BB14260(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B987B10;

  return v8(a1, v5);
}

uint64_t sub_18BB14364(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BB14260(a1, a2, v6);
}

uint64_t sub_18BB1442C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18BB14260(a1, a2, v6);
}

uint64_t sub_18BB144F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void SFCommandForwardingView.commandPerformer.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t SFCommandForwardingView.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 commandPerformer];
  if (v5)
  {
    v6 = v5;
    if ([v5 respondsToSelector_])
    {
      sub_18B998960(a2, v25);
      v7 = v26;
      if (v26)
      {
        v8 = __swift_project_boxed_opaque_existential_1Tm(v25, v26);
        v9 = *(v7 - 8);
        v10 = MEMORY[0x1EEE9AC00](v8);
        v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v9 + 16))(v12, v10);
        v13 = sub_18BC21FB8();
        (*(v9 + 8))(v12, v7);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
      }

      else
      {
        v13 = 0;
      }

      v14 = [v6 canPerformAction:a1 withSender:v13];
      swift_unknownObjectRelease();

      if (v14)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  sub_18B998960(a2, v25);
  v16 = v26;
  if (v26)
  {
    v17 = __swift_project_boxed_opaque_existential_1Tm(v25, v26);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x1EEE9AC00](v17);
    v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_18BC21FB8();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    v22 = 0;
  }

  v24.receiver = v2;
  v24.super_class = SFCommandForwardingView;
  v15 = objc_msgSendSuper2(&v24, sel_canPerformAction_withSender_, a1, v22);
  swift_unknownObjectRelease();
  return v15;
}

Swift::Void __swiftcall SFCommandForwardingView.validate(_:)(UICommand a1)
{
  v4.super_class = SFCommandForwardingView;
  objc_msgSendSuper2(&v4, sel_validateCommand_, a1.super.super.isa);
  v3 = [v1 commandPerformer];
  [v3 validateCommand_];
}

double SFCommandForwardingView.forwardingTarget(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v5 = [v2 commandPerformer];
    if (v5)
    {
      v6 = v5;
      if ([v5 respondsToSelector_])
      {
        *(a2 + 24) = sub_18B7B0AC0(0, &qword_1EA9D93D0, 0x1E69DCE60);
        *a2 = v6;
        return result;
      }
    }
  }

  v10.receiver = v2;
  v10.super_class = SFCommandForwardingView;
  if (objc_msgSendSuper2(&v10, sel_forwardingTargetForSelector_, a1))
  {
    sub_18BC218B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  return result;
}

id SFCommandForwardingView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

{
  swift_unknownObjectWeakInit();
  v10.receiver = v4;
  v10.super_class = SFCommandForwardingView;
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id SFCommandForwardingView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = SFCommandForwardingView;
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_18BB15074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  v28 = a1;
  v4 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s4PageVMa(0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0, &qword_18BC432D8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = _s7ContentV8IteratorVMa(0);
  v17 = (v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BB17BA0(v3, v19, _s7ContentVMa);
  *&v19[v17[7]] = 0;
  *&v19[v17[8]] = 0;
  *&v19[v17[9]] = 0;
  while (1)
  {
    sub_18BB16160(v12);
    sub_18B7CF39C(v12, v15, &qword_1EA9D53C0, &qword_18BC432D8);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8, &qword_18BC432E0);
    if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
    {
      sub_18B7DFFC4(v19, _s7ContentV8IteratorVMa);
      return (*(v25 + 56))(v27, 1, 1, v26);
    }

    v21 = *(v20 + 48);
    v22 = *(v20 + 64);
    sub_18B81FA10(v15, v9, _s4PageVMa);
    sub_18B81FA10(&v15[v22], v6, _s4ItemVMa);
    LOBYTE(v22) = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    sub_18B7DFFC4(v6, _s4ItemVMa);
    if (v22)
    {
      break;
    }

    sub_18B7DFFC4(v9, _s4PageVMa);
    sub_18B7DFFC4(&v15[v21], _s7SectionVMa_0);
  }

  sub_18B7DFFC4(v19, _s7ContentV8IteratorVMa);
  v24 = v27;
  sub_18B81FA10(v9, v27, _s4PageVMa);
  (*(v25 + 56))(v24, 0, 1, v26);
  return sub_18B7DFFC4(&v15[v21], _s7SectionVMa_0);
}

void sub_18BB15468()
{
  v1 = _s4ItemVMa(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 56);
  v9 = (v6 + 63) >> 6;
  sub_18BC1E3F8();
  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_18BB17BA0(*(v5 + 48) + *(v2 + 72) * (v12 | (v11 << 6)), v4, _s4ItemVMa);
    v13 = v4[1];
    sub_18B7DFFC4(v4, _s4ItemVMa);
    if (v13 == 1)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_11;
    }

    v8 = *(v5 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_18BB155FC()
{
  v1 = v0;
  v2 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0, &qword_18BC432D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = _s7ContentV8IteratorVMa(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 48);
  if (!*(v14 + 16))
  {
    return 0;
  }

  sub_18BB17BA0(v1, v13, _s7ContentVMa);
  *&v13[v11[5]] = 0;
  *&v13[v11[6]] = 0;
  *&v13[v11[7]] = 0;
  while (1)
  {
    sub_18BB16160(v7);
    sub_18B7CF39C(v7, v10, &qword_1EA9D53C0, &qword_18BC432D8);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8, &qword_18BC432E0);
    if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
    {
      break;
    }

    v16 = &v10[*(v15 + 48)];
    sub_18B81FA10(&v10[*(v15 + 64)], v4, _s4ItemVMa);
    v17 = *(v16 + *(_s7SectionVMa_0(0) + 24));
    sub_18B7DFFC4(v16, _s7SectionVMa_0);
    if (v17)
    {
      sub_18B7DFFC4(v4, _s4ItemVMa);
    }

    else
    {
      v18 = sub_18B9BA41C(v4, v14);
      sub_18B7DFFC4(v4, _s4ItemVMa);
      if (v18)
      {
        sub_18B7DFFC4(v13, _s7ContentV8IteratorVMa);
        sub_18B7DFFC4(v10, _s4PageVMa);
        return 0;
      }
    }

    sub_18B7DFFC4(v10, _s4PageVMa);
  }

  sub_18B7DFFC4(v13, _s7ContentV8IteratorVMa);
  return 1;
}

void sub_18BB15930()
{
  v1 = _s4ItemVMa(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 56);
  v9 = (v6 + 63) >> 6;
  sub_18BC1E3F8();
  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_18BB17BA0(*(v5 + 48) + *(v2 + 72) * (v12 | (v11 << 6)), v4, _s4ItemVMa);
    v13 = v4[2];
    sub_18B7DFFC4(v4, _s4ItemVMa);
    if (v13 == 1)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_11;
    }

    v8 = *(v5 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

double sub_18BB15AC4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v59 = a1;
  v45 = a2;
  v58 = _s4ItemVMa(0);
  v52 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  v51 = _s7SectionVMa_0(0);
  MEMORY[0x1EEE9AC00](v51);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0, &qword_18BC432D8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v22 = _s7ContentV8IteratorVMa(0);
  v23 = (v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v60) = 257;
  BYTE2(v60) = 1;
  *(&v60 + 3) = 0;
  v26 = MEMORY[0x1E69E7CC0];
  *(&v60 + 1) = MEMORY[0x1E69E7CC0];
  v56 = 1;
  LOBYTE(v61) = 1;
  *(&v61 + 1) = MEMORY[0x1E69E7CD0];
  v62[0] = 0.0;
  v62[1] = -2.68156159e154;
  v47 = v3;
  sub_18BB17BA0(v3, v25, _s7ContentVMa);
  v55 = 0;
  v54 = 0;
  *&v25[v23[7]] = 0;
  *&v25[v23[8]] = 0;
  *&v25[v23[9]] = 0;
  v27 = 1;
  v53 = 1;
  v48 = v25;
  while (1)
  {
    sub_18BB16160(v18);
    sub_18B7CF39C(v18, v21, &qword_1EA9D53C0, &qword_18BC432D8);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8, &qword_18BC432E0);
    if ((*(*(v30 - 8) + 48))(v21, 1, v30) == 1)
    {
      break;
    }

    v31 = *(v30 + 48);
    v32 = *(v30 + 64);
    sub_18B81FA10(v21, v15, _s4PageVMa);
    sub_18B81FA10(&v21[v31], v9, _s7SectionVMa_0);
    sub_18B81FA10(&v21[v32], v7, _s4ItemVMa);
    if ((sub_18B9BAC08(&v7[*(v58 + 28)], v59) & 1) == 0)
    {
      goto LABEL_3;
    }

    if (v53)
    {
      v33 = v9[*(v51 + 24)];
    }

    else
    {
      v33 = 0;
    }

    LOBYTE(v60) = v33;
    v53 = v33;
    if (v27)
    {
      v27 = sub_18B9BA41C(v7, *(v47 + 48));
    }

    else
    {
      v27 = 0;
    }

    BYTE1(v60) = v27 & 1;
    if (v56)
    {
      v34 = v15[*(v46 + 52)];
      BYTE2(v60) = v15[*(v46 + 52)];
      if ((v54 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v34 = 0;
      BYTE2(v60) = 0;
      if ((v54 & 1) == 0)
      {
LABEL_14:
        v35 = *v7;
        BYTE5(v60) = *v7;
        if ((v54 & 0x100000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    v35 = 1;
    BYTE5(v60) = 1;
    if ((v54 & 0x100000000) == 0)
    {
LABEL_15:
      v36 = v7[1];
      BYTE3(v60) = v7[1];
      if (v55)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

LABEL_19:
    v36 = 1;
    BYTE3(v60) = 1;
    if (v55)
    {
LABEL_20:
      v37 = 1;
      goto LABEL_21;
    }

LABEL_16:
    v37 = v7[2];
LABEL_21:
    LODWORD(v55) = v37;
    BYTE6(v60) = v37;
    v56 = v34;
    v54 = __PAIR64__(v36, v35);
    if ((v55 & 0x100000000) != 0)
    {
      v38 = 1;
    }

    else
    {
      v38 = v9[*(v51 + 24)];
    }

    HIDWORD(v55) = v38;
    BYTE4(v60) = v38;
    sub_18BB17BA0(v7, v57, _s4ItemVMa);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_18B9B5838(0, v26[2] + 1, 1, v26);
    }

    v40 = v26[2];
    v39 = v26[3];
    if (v40 >= v39 >> 1)
    {
      v26 = sub_18B9B5838((v39 > 1), v40 + 1, 1, v26);
    }

    v26[2] = v40 + 1;
    sub_18B81FA10(v57, v26 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v40, _s4ItemVMa);
    *(&v60 + 1) = v26;
    v28 = v50;
    sub_18BB17BA0(v15, v50, _s4PageVMa);
    v29 = v49;
    sub_18BB5F118(v49, v28);
    sub_18B7DFFC4(v29, _s4PageVMa);
    v25 = v48;
LABEL_3:
    sub_18B7DFFC4(v7, _s4ItemVMa);
    sub_18B7DFFC4(v9, _s7SectionVMa_0);
    sub_18B7DFFC4(v15, _s4PageVMa);
  }

  sub_18B7DFFC4(v25, _s7ContentV8IteratorVMa);
  v41 = v61;
  v42 = v45;
  *v45 = v60;
  v42[1] = v41;
  result = v62[0];
  v42[2] = *v62;
  return result;
}

void sub_18BB16160(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = _s4ItemVMa(0);
  v54 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v59 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s7SectionVMa_0(0);
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s4PageVMa(0);
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = _s7ContentV8IteratorVMa(0);
  MEMORY[0x1EEE9AC00](v71);
  v64 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D93F8, &qword_18BC4D168);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92E0, &unk_18BC4CB70);
  v18 = *(v17 - 8);
  v52 = *(v18 + 56);
  v53 = v18 + 56;
  v52(v16, 1, 1, v17);
  v69 = v16;
  sub_18B7CA054(v16, v13, &qword_1EA9D93F8, &qword_18BC4D168);
  v65 = *(v18 + 48);
  v66 = v18 + 48;
  if (v65(v13, 1, v17) == 1)
  {
    v19 = &qword_1EA9D93F8;
    v58 = v6;
    v67 = v17;
    v51 = v1;
    v62 = v13;
    while (1)
    {
      v20 = v19;
      sub_18B988BAC(v13, v19, &qword_18BC4D168);
      v21 = v71[5];
      v22 = *(v1 + v21);
      v23 = v64;
      sub_18BB17BA0(v1, v64, _s7ContentV8IteratorVMa);
      v24 = *(v23 + 8);
      sub_18BC1E3F8();
      sub_18B7DFFC4(v23, _s7ContentVMa);
      v25 = *(v24 + 16);

      if (v22 >= v25)
      {
        break;
      }

      sub_18BB17BA0(v1, v23, _s7ContentV8IteratorVMa);
      v26 = *(v23 + 8);
      sub_18BC1E3F8();
      sub_18B7DFFC4(v23, _s7ContentVMa);
      if ((v22 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      if (v22 >= *(v26 + 16))
      {
        goto LABEL_23;
      }

      v27 = v70;
      sub_18BB17BA0(v26 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v22, v70, _s4PageVMa);

      v28 = v71[6];
      v29 = *(v1 + v28);
      v30 = *(v27 + *(v6 + 68));
      v31 = *(v30 + 16);
      if (v29 < v31)
      {
        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        v32 = v68;
        sub_18BB17BA0(v30 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v29, v68, _s7SectionVMa_0);
        v33 = v71[7];
        v34 = *(v1 + v33);
        v35 = *(v32 + *(v61 + 28));
        if (v34 < *(v35 + 16))
        {
          if (v34 < 0)
          {
            goto LABEL_26;
          }

          v57 = v71[7];
          sub_18BB17BA0(v35 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v34, v59, _s4ItemVMa);
          v36 = v69;
          sub_18B988BAC(v69, v20, &qword_18BC4D168);
          v37 = v67;
          v38 = *(v67 + 64);
          v55 = *(v67 + 48);
          v56 = v38;
          sub_18BB17BA0(v70, v36, _s4PageVMa);
          sub_18BB17BA0(v68, v36 + v55, _s7SectionVMa_0);
          sub_18B81FA10(v59, v36 + v56, _s4ItemVMa);
          v39 = v37;
          v1 = v51;
          v52(v36, 0, 1, v39);
          v33 = v57;
        }

        v40 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_25;
        }

        *(v1 + v33) = v40;
        if (v40 >= *(v35 + 16))
        {
          *(v1 + v33) = 0;
          *(v1 + v28) = ++v29;
        }

        sub_18B7DFFC4(v68, _s7SectionVMa_0);
        v31 = *(v30 + 16);
        v6 = v58;
      }

      v19 = v20;
      v17 = v67;
      if (v29 >= v31)
      {
        *(v1 + v28) = 0;
        *(v1 + v21) = v22 + 1;
      }

      sub_18B7DFFC4(v70, _s4PageVMa);
      v13 = v62;
      sub_18B7CA054(v69, v62, v20, &qword_18BC4D168);
      if (v65(v13, 1, v17) != 1)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    sub_18B988BAC(v13, &qword_1EA9D93F8, &qword_18BC4D168);
  }

  v41 = v49;
  sub_18B7CF39C(v69, v49, &qword_1EA9D93F8, &qword_18BC4D168);
  if (v65(v41, 1, v17) == 1)
  {
    sub_18B988BAC(v41, &qword_1EA9D93F8, &qword_18BC4D168);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8, &qword_18BC432E0);
    (*(*(v42 - 8) + 56))(v50, 1, 1, v42);
  }

  else
  {
    v43 = *(v17 + 48);
    v44 = *(v17 + 64);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8, &qword_18BC432E0);
    v46 = *(v45 + 48);
    v47 = *(v45 + 64);
    v48 = v50;
    sub_18B81FA10(v41, v50, _s4PageVMa);
    sub_18B81FA10(v41 + v43, v48 + v46, _s7SectionVMa_0);
    sub_18B81FA10(v41 + v44, v48 + v47, _s4ItemVMa);
    (*(*(v45 - 8) + 56))(v48, 0, 1, v45);
  }
}

uint64_t sub_18BB169CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0, &qword_18BC432D8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8, &qword_18BC432E0);
  v22 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = _s7ContentV8IteratorVMa(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_18B81FA10(v4, v17, _s7ContentVMa);
  *&v17[v15[7]] = 0;
  *&v17[v15[8]] = 0;
  *&v17[v15[9]] = 0;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    sub_18B81FA10(v17, a1, _s7ContentV8IteratorVMa);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v21 = a1;
    v19 = (v22 + 48);
    a1 = 1;
    while (1)
    {
      sub_18BB16160(v10);
      if ((*v19)(v10, 1, v11) == 1)
      {
        break;
      }

      sub_18B7CF39C(v10, v13, &qword_1EA9D53C8, &qword_18BC432E0);
      sub_18B7CF39C(v13, a2, &qword_1EA9D53C8, &qword_18BC432E0);
      if (a3 == a1)
      {
        goto LABEL_12;
      }

      a2 += *(v22 + 72);
      if (__OFADD__(a1++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_18B988BAC(v10, &qword_1EA9D53C0, &qword_18BC432D8);
    a3 = a1 - 1;
LABEL_12:
    a1 = v21;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_18BB16C60()
{
  v1 = _s7SectionVMa_0(0);
  v2 = *(v1 - 8);
  v38 = v1;
  v39 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 8);
  v11 = *(v10 + 16);
  if (!v11)
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v24 = v14[2];
    if (!v24)
    {

      v27 = MEMORY[0x1E69E7CC0];
LABEL_38:
      sub_18BBA3838(v27);

      return;
    }

    v40 = *(v38 + 28);
    v25 = v14 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v26 = *(v39 + 72);
    v27 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_18BB17BA0(v25, v4, _s7SectionVMa_0);
      v28 = *&v4[v40];
      sub_18BC1E3F8();
      sub_18B7DFFC4(v4, _s7SectionVMa_0);
      v29 = *(v28 + 16);
      v30 = v27[2];
      v31 = v30 + v29;
      if (__OFADD__(v30, v29))
      {
        goto LABEL_41;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v31 <= v27[3] >> 1)
      {
        if (*(v28 + 16))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v30 <= v31)
        {
          v33 = v30 + v29;
        }

        else
        {
          v33 = v30;
        }

        v27 = sub_18B9B5838(isUniquelyReferenced_nonNull_native, v33, 1, v27);
        if (*(v28 + 16))
        {
LABEL_32:
          v34 = (v27[3] >> 1) - v27[2];
          _s4ItemVMa(0);
          if (v34 < v29)
          {
            goto LABEL_44;
          }

          swift_arrayInitWithCopy();

          if (v29)
          {
            v35 = v27[2];
            v22 = __OFADD__(v35, v29);
            v36 = v35 + v29;
            if (v22)
            {
              goto LABEL_46;
            }

            v27[2] = v36;
          }

          goto LABEL_22;
        }
      }

      if (v29)
      {
        goto LABEL_42;
      }

LABEL_22:
      v25 += v26;
      if (!--v24)
      {

        goto LABEL_38;
      }
    }
  }

  v40 = *(v6 + 68);
  v12 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v13 = *(v7 + 72);
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_18BB17BA0(v12, v9, _s4PageVMa);
    v15 = *&v9[v40];
    sub_18BC1E3F8();
    sub_18B7DFFC4(v9, _s4PageVMa);
    v16 = *(v15 + 16);
    v17 = v14[2];
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    v19 = swift_isUniquelyReferenced_nonNull_native();
    if (v19 && v18 <= v14[3] >> 1)
    {
      if (!*(v15 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v20 = v17 + v16;
      }

      else
      {
        v20 = v17;
      }

      v14 = sub_18B9B5C64(v19, v20, 1, v14);
      if (!*(v15 + 16))
      {
LABEL_3:

        if (v16)
        {
          goto LABEL_40;
        }

        goto LABEL_4;
      }
    }

    if ((v14[3] >> 1) - v14[2] < v16)
    {
      goto LABEL_43;
    }

    swift_arrayInitWithCopy();

    if (v16)
    {
      v21 = v14[2];
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (v22)
      {
        goto LABEL_45;
      }

      v14[2] = v23;
    }

LABEL_4:
    v12 += v13;
    if (!--v11)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_18BB170A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8, &qword_18BC432E0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  sub_18B7CA054(a1, &v16 - v9, &qword_1EA9D53C8, &qword_18BC432E0);
  v11 = *(v8 + 56);
  v12 = &v10[*(v8 + 72)];
  v13 = _s4ItemVMa(0);
  (*(v4 + 16))(v6, v12 + *(v13 + 28), v3);
  sub_18B7DFFC4(v12, _s4ItemVMa);
  updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
  (*(v4 + 8))(v6, v3);
  sub_18B7DFFC4(&v10[v11], _s7SectionVMa_0);
  sub_18B7DFFC4(v10, _s4PageVMa);
  return updated & 1;
}

uint64_t sub_18BB17290@<X0>(uint64_t (*a1)(char *, char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v32 = a3;
  v4 = _s4ItemVMa(0);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s7SectionVMa_0(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0, &qword_18BC432D8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = _s7ContentV8IteratorVMa(0);
  v20 = (v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BB17BA0(v3, v22, _s7ContentVMa);
  *&v22[v20[7]] = 0;
  *&v22[v20[8]] = 0;
  *&v22[v20[9]] = 0;
  while (1)
  {
    sub_18BB16160(v15);
    sub_18B7CF39C(v15, v18, &qword_1EA9D53C0, &qword_18BC432D8);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8, &qword_18BC432E0);
    if ((*(*(v23 - 8) + 48))(v18, 1, v23) == 1)
    {
      sub_18B7DFFC4(v22, _s7ContentV8IteratorVMa);
      v26 = 1;
      v27 = v32;
      return (*(v30 + 56))(v27, v26, 1, v31);
    }

    v24 = *(v23 + 48);
    v25 = *(v23 + 64);
    sub_18B81FA10(v18, v12, _s4PageVMa);
    sub_18B81FA10(&v18[v24], v9, _s7SectionVMa_0);
    sub_18B81FA10(&v18[v25], v6, _s4ItemVMa);
    LOBYTE(v25) = v33(v12, v9, v6);
    sub_18B7DFFC4(v9, _s7SectionVMa_0);
    sub_18B7DFFC4(v12, _s4PageVMa);
    if (v25)
    {
      break;
    }

    sub_18B7DFFC4(v6, _s4ItemVMa);
  }

  sub_18B7DFFC4(v22, _s7ContentV8IteratorVMa);
  v27 = v32;
  sub_18B81FA10(v6, v32, _s4ItemVMa);
  v26 = 0;
  return (*(v30 + 56))(v27, v26, 1, v31);
}

uint64_t sub_18BB176B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s4ItemVMa(0);

  return _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
}

uint64_t sub_18BB176FC@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v4 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s7SectionVMa_0(0);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0, &qword_18BC432D8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = _s7ContentV8IteratorVMa(0);
  v17 = (v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BB17BA0(v3, v19, _s7ContentVMa);
  *&v19[v17[7]] = 0;
  *&v19[v17[8]] = 0;
  *&v19[v17[9]] = 0;
  while (1)
  {
    sub_18BB16160(v12);
    sub_18B7CF39C(v12, v15, &qword_1EA9D53C0, &qword_18BC432D8);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8, &qword_18BC432E0);
    if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
    {
      sub_18B7DFFC4(v19, _s7ContentV8IteratorVMa);
      return (*(v26 + 56))(v28, 1, 1, v27);
    }

    v21 = *(v20 + 48);
    v22 = *(v20 + 64);
    sub_18B81FA10(&v15[v21], v9, _s7SectionVMa_0);
    sub_18B81FA10(&v15[v22], v6, _s4ItemVMa);
    LOBYTE(v22) = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    sub_18B7DFFC4(v6, _s4ItemVMa);
    if (v22)
    {
      break;
    }

    sub_18B7DFFC4(v9, _s7SectionVMa_0);
    sub_18B7DFFC4(v15, _s4PageVMa);
  }

  sub_18B7DFFC4(v19, _s7ContentV8IteratorVMa);
  v24 = v28;
  sub_18B81FA10(v9, v28, _s7SectionVMa_0);
  (*(v26 + 56))(v24, 0, 1, v27);
  return sub_18B7DFFC4(v15, _s4PageVMa);
}

int *sub_18BB17AF4@<X0>(uint64_t a1@<X8>)
{
  sub_18B81FA10(v1, a1, _s7ContentVMa);
  result = _s7ContentV8IteratorVMa(0);
  *(a1 + result[5]) = 0;
  *(a1 + result[6]) = 0;
  *(a1 + result[7]) = 0;
  return result;
}

uint64_t sub_18BB17B54()
{
  sub_18BB17C08(v0);
  v2 = v1;
  sub_18B7DFFC4(v0, _s7ContentVMa);
  return v2;
}

uint64_t sub_18BB17BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_18BB17C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0, &qword_18BC432D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v45 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8, &qword_18BC432E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - v7;
  v9 = _s7ContentV8IteratorVMa(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v6 + 80);
  sub_18BB17BA0(a1, v12, _s7ContentVMa);
  *&v12[v10[7]] = 0;
  *&v12[v10[8]] = 0;
  *&v12[v10[9]] = 0;
  sub_18BB16160(v4);
  v14 = v6;
  v51 = *(v6 + 48);
  v52 = v5;
  v48 = v6 + 48;
  v15 = v51(v4, 1, v5);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15 != 1)
  {
    v17 = 0;
    v46 = v8;
    v47 = v13;
    v49 = (v13 + 32) & ~v13;
    v50 = v4;
    v22 = MEMORY[0x1E69E7CC0] + v49;
    v23 = &qword_1EA9D53C8;
    v24 = &qword_18BC432E0;
    v25 = MEMORY[0x1E69E7CC0];
    v45 = v14;
    while (1)
    {
      v28 = v4;
      v29 = v23;
      v30 = v24;
      sub_18B7CF39C(v28, v8, v23, v24);
      if (v17)
      {
        v16 = v25;
        v20 = __OFSUB__(v17--, 1);
        if (v20)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v31 = v25[3];
        if (((v31 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v32 = v31 & 0xFFFFFFFFFFFFFFFELL;
        if (v32 <= 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = v32;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9400, &qword_18BC4D170);
        v34 = *(v14 + 72);
        v35 = v49;
        v16 = swift_allocObject();
        v36 = _swift_stdlib_malloc_size(v16);
        if (!v34)
        {
          goto LABEL_34;
        }

        v37 = v36 - v35;
        if (v36 - v35 == 0x8000000000000000 && v34 == -1)
        {
          goto LABEL_35;
        }

        v39 = v37 / v34;
        v16[2] = v33;
        v16[3] = 2 * (v37 / v34);
        v40 = v16 + v35;
        v41 = v25[3] >> 1;
        v42 = v41 * v34;
        if (v25[2])
        {
          if (v16 < v25 || v40 >= v25 + v49 + v42)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v16 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v25[2] = 0;
        }

        v22 = &v40[v42];
        v44 = (v39 & 0x7FFFFFFFFFFFFFFFLL) - v41;

        v14 = v45;
        v8 = v46;
        v20 = __OFSUB__(v44, 1);
        v17 = v44 - 1;
        if (v20)
        {
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
          return;
        }
      }

      sub_18B7CF39C(v8, v22, v29, v30);
      v22 += *(v14 + 72);
      v26 = v50;
      sub_18BB16160(v50);
      v27 = v51(v26, 1, v52);
      v24 = v30;
      v23 = v29;
      v4 = v26;
      v25 = v16;
      if (v27 == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v17 = 0;
LABEL_3:
  sub_18B7DFFC4(v12, _s7ContentV8IteratorVMa);
  sub_18B988BAC(v4, &qword_1EA9D53C0, &qword_18BC432D8);
  v18 = v16[3];
  if (v18 >= 2)
  {
    v19 = v18 >> 1;
    v20 = __OFSUB__(v19, v17);
    v21 = v19 - v17;
    if (v20)
    {
      goto LABEL_36;
    }

    v16[2] = v21;
  }
}

void sub_18BB17FF0(uint64_t a1)
{
  v2 = sub_18BC1ECC8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_18BC1EDD8();
  v6 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v58 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v61 = v49 - v9;
  v10 = type metadata accessor for SingleElementIndexPathSequence(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v6 + 80);
  sub_18BB17BA0(a1, v13, type metadata accessor for SingleElementIndexPathSequence);
  v15 = *(v11 + 28);
  sub_18BC1EC98();
  v59 = v13;
  LOBYTE(v11) = sub_18BC1ECB8();
  v56 = *(v3 + 8);
  v57 = v3 + 8;
  v56(v5, v2);
  v16 = MEMORY[0x1E69E7CC0];
  if ((v11 & 1) == 0)
  {
    v49[0] = (v14 + 32) & ~v14;
    v49[1] = v14;
    v62 = (MEMORY[0x1E69E7CC0] + v49[0]);
    v63 = 0;
    v55 = (v3 + 40);
    v60 = v6;
    v18 = (v6 + 32);
    v54 = xmmword_18BC3E410;
    v19 = MEMORY[0x1E69E7CC0];
    v20 = v50;
    v17 = v59;
    v52 = v5;
    v53 = v2;
    v51 = v15;
    while (1)
    {
      v21 = sub_18BC1ED48();
      sub_18BC1ECE8();
      (*v55)(v17, v5, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730, &unk_18BC42A20);
      v22 = swift_allocObject();
      *(v22 + 16) = v54;
      *(v22 + 32) = v21;
      v23 = v58;
      MEMORY[0x18CFFA250]();
      v24 = *v18;
      v25 = v61;
      (*v18)(v61, v23, v20);
      v26 = v18;
      v27 = v63;
      if (v63)
      {
        v16 = v19;
        v28 = v62;
      }

      else
      {
        v29 = v19[3];
        if (((v29 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v30 = v29 & 0xFFFFFFFFFFFFFFFELL;
        if (v30 <= 1)
        {
          v31 = 1;
        }

        else
        {
          v31 = v30;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF0, &qword_18BC46520);
        v32 = *(v60 + 72);
        v33 = v49[0];
        v16 = swift_allocObject();
        v34 = _swift_stdlib_malloc_size(v16);
        if (!v32)
        {
          goto LABEL_34;
        }

        v35 = v34 - v33;
        if (v34 - v33 == 0x8000000000000000 && v32 == -1)
        {
          goto LABEL_35;
        }

        v37 = v35 / v32;
        v16[2] = v31;
        v16[3] = 2 * (v35 / v32);
        v38 = v16 + v33;
        v39 = v19[3] >> 1;
        v40 = v39 * v32;
        if (v19[2])
        {
          if (v16 < v19 || v38 >= v19 + v33 + v40)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v16 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v28 = &v38[v40];
        v27 = (v37 & 0x7FFFFFFFFFFFFFFFLL) - v39;

        v20 = v50;
        v25 = v61;
      }

      v42 = __OFSUB__(v27, 1);
      v43 = v27 - 1;
      v44 = v59;
      if (v42)
      {
        break;
      }

      v63 = v43;
      v24(v28, v25, v20);
      v62 = &v28[*(v60 + 72)];
      v18 = v26;
      v5 = v52;
      sub_18BC1EC98();
      v45 = sub_18BC1ECB8();
      v2 = v53;
      v56(v5, v53);
      v17 = v44;
      v19 = v16;
      if (v45)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v63 = 0;
  v17 = v59;
LABEL_28:
  sub_18B7DFFC4(v17, type metadata accessor for SingleElementIndexPathSequence);
  v46 = v16[3];
  if (v46 >= 2)
  {
    v47 = v46 >> 1;
    v42 = __OFSUB__(v47, v63);
    v48 = v47 - v63;
    if (!v42)
    {
      v16[2] = v48;
      return;
    }

LABEL_36:
    __break(1u);
  }
}

id static SFFluidTabOverviewLayoutSupport.applyTransform<A, B, C>(to:forZPosition:in:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = 0.0;
  v27 = 0.0;
  sx = 0.0;
  v17 = SFTabOverviewVanishingPointForView(a2);
  v19 = v18;
  *&v28.a = a3;
  *&v28.b = a4;
  *&v28.c = a5;
  *&v28.d = a6;
  *&v28.tx = a7;
  *&v28.ty = a8;
  v20 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v28);
  SFTabOverviewScaleTranslationForZPosition(&sx, &v26, v17, v19, *(a1 + v20[18]), *(a1 + v20[18] + 8), a9);
  v21 = (a1 + v20[20]);
  v22 = v21[1];
  *&v28.a = *v21;
  *&v28.c = v22;
  *&v28.tx = v21[2];
  CGAffineTransformTranslate(&v24, &v28, v26, v27);
  CGAffineTransformScale(&v28, &v24, sx, sx);
  return SFFluidCollectionView.LayoutAttributes.transform.setter(&v28, v20);
}

uint64_t sub_18BB1864C(uint64_t a1)
{
  if ((_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = _s4PageVMa_0(0);
  v4 = (v1 + v3[5]);
  v5 = v4[3];
  v32[2] = v4[2];
  v32[3] = v5;
  v6 = v4[7];
  v32[6] = v4[6];
  v32[7] = v6;
  v7 = v4[5];
  v32[4] = v4[4];
  v32[5] = v7;
  v8 = v4[11];
  v32[10] = v4[10];
  v32[11] = v8;
  v9 = v4[9];
  v32[8] = v4[8];
  v32[9] = v9;
  v10 = v4[1];
  v32[0] = *v4;
  v32[1] = v10;
  v11 = (a1 + v3[5]);
  v12 = v11[9];
  v33[8] = v11[8];
  v33[9] = v12;
  v13 = v11[11];
  v33[10] = v11[10];
  v33[11] = v13;
  v14 = v11[5];
  v33[4] = v11[4];
  v33[5] = v14;
  v15 = v11[7];
  v33[6] = v11[6];
  v33[7] = v15;
  v16 = v11[1];
  v33[0] = *v11;
  v33[1] = v16;
  v17 = v11[3];
  v33[2] = v11[2];
  v33[3] = v17;
  if ((sub_18BB1B838(v32, v33) & 1) == 0 || *(v1 + v3[6]) != *(a1 + v3[6]) || *(v1 + v3[7]) != *(a1 + v3[7]))
  {
    goto LABEL_10;
  }

  v18 = v3[8];
  v19 = (v1 + v18);
  v20 = *(v1 + v18);
  v21 = v19[1];
  v22 = v19[2];
  v23 = v19[3];
  v24 = a1 + v18;
  v26 = *v24;
  v25 = *(v24 + 8);
  v28 = *(v24 + 16);
  v27 = *(v24 + 24);
  if (!v23)
  {
    if (!v27)
    {
      v30 = 0;
      return v30 & 1;
    }

    goto LABEL_9;
  }

  if (!v27)
  {
LABEL_9:
    sub_18B82B844(*v24, *(v24 + 8), *(v24 + 16), *(v24 + 24));
    sub_18B82B844(v20, v21, v22, v23);
    sub_18B7E9C58(v20, v21, v22, v23);
    sub_18B7E9C58(v26, v25, v28, v27);
LABEL_10:
    v30 = 1;
    return v30 & 1;
  }

  sub_18B82B844(*v24, *(v24 + 8), *(v24 + 16), *(v24 + 24));
  sub_18B82B844(v20, v21, v22, v23);
  v29 = sub_18BBDC17C(v20, v21, v22, v23, v26, v25, v28, v27);

  sub_18B7E9C58(v20, v21, v22, v23);
  v30 = v29 ^ 1;
  return v30 & 1;
}

uint64_t sub_18BB1885C()
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B7E05C8(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  return sub_18BC221A8();
}

uint64_t sub_18BB188E4(uint64_t a1)
{
  sub_18BC1EC08();
  sub_18B7E05C8(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_18BC20A78();
}

uint64_t sub_18BB18968(unsigned __int8 *a1)
{
  if (*v1 == *a1 && (v3 = _s4ItemVMa_2(0), v4 = v3[7], v5 = a1[v4], v1[v3[6]] == v5) && v5 == v1[v4] && v1[v3[8]] == a1[v3[8]] && v1[v3[9]] == a1[v3[9]] && *&v1[v3[10]] == *&a1[v3[10]] && (v6 = v3, (sub_18B86E84C(*&v1[v3[12]], *&a1[v3[12]]) & 1) != 0))
  {
    v7 = v6[13];
    v8 = &v1[v7];
    v9 = *&v1[v7 + 8];
    v10 = &a1[v7];
    v11 = *(v10 + 1);
    v12 = (v9 | v11) == 0;
    if (v9 && v11)
    {
      if (*v8 == *v10 && v9 == v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = sub_18BC21FD8();
      }
    }

    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

uint64_t sub_18BB18A7C()
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B82AD7C(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  return sub_18BC221A8();
}

uint64_t sub_18BB18B18@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18BC1DE28();
  *a2 = 1;
  v5 = a1[7];
  a2[a1[6]] = 0;
  a2[v5] = 0;
  v6 = a1[9];
  a2[a1[8]] = 1;
  a2[v6] = 0;
  v7 = a1[11];
  *&a2[a1[10]] = 0;
  v8 = &a2[v7];
  *v8 = sub_18B814EE4;
  v8[1] = 0;
  v9 = a1[13];
  *&a2[a1[12]] = MEMORY[0x1E69E7CC0];
  v10 = &a2[v9];
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t String.trimmingWhiteSpacesAndNewlines.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC1E668();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = a1;
  v11[1] = a2;
  v8 = [objc_opt_self() safari_whitespaceAndNewlineCharacterSet];
  sub_18BC1E658();

  sub_18B7B0B50();
  v9 = sub_18BC21888();
  (*(v5 + 8))(v7, v4);
  return v9;
}

void sub_18BB18CDC(uint64_t a1, unint64_t a2)
{
  if (qword_1EA9D24D8 != -1)
  {
LABEL_43:
    swift_once();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = [Strong bookmarkCollection];
    swift_unknownObjectRelease();
    if (v4)
    {
      v5 = [objc_opt_self() sharedWebFilterSettings];
      v6 = [v5 usesAllowedSitesOnly];

      if (v6)
      {
        if (qword_1EA9D22B0 != -1)
        {
          swift_once();
        }

        v7 = sub_18BC1F2C8();
        __swift_project_value_buffer(v7, qword_1EA9F7EC8);
        v8 = sub_18BC1F2A8();
        v9 = sub_18BC21218();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_18B7AC000, v8, v9, "Web Filter is using allowed sites only mode", v10, 2u);
          MEMORY[0x18CFFEEE0](v10, -1, -1);
        }

        goto LABEL_37;
      }

      v14 = [v4 rootBookmark];
      v15 = [v14 identifier];

      if (a2)
      {
        v16 = sub_18BC20B98();
      }

      else
      {
        v16 = 0;
      }

      v17 = [v4 listWithID:v15 skipOffset:0 includeHidden:0 includeDescendantsAsChildren:1 filteredUsingString:v16];

      if (!v17)
      {
LABEL_37:
        if (qword_1EA9D2550 != -1)
        {
          swift_once();
        }

        v33 = sub_18BC1DE48();
        v34 = __swift_project_value_buffer(v33, qword_1EA9F8578);
        sub_18B9A33F8();
        swift_allocError();
        (*(*(v33 - 8) + 16))(v35, v34, v33);
        swift_willThrow();

        return;
      }

      v18 = [v17 bookmarkArray];
      sub_18BB1A89C();
      v19 = sub_18BC20D98();

      if (v19 >> 62)
      {
        v20 = sub_18BC219A8();
        v40 = v17;
        if (v20)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v40 = v17;
        if (v20)
        {
LABEL_19:
          v21 = 0;
          a2 = v19 & 0xC000000000000001;
          v44 = MEMORY[0x1E69E7CC0];
          v39 = v4;
          while (1)
          {
            v22 = v21;
            while (1)
            {
              if (a2)
              {
                v23 = MEMORY[0x18CFFD010](v22, v19);
              }

              else
              {
                if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_42;
                }

                v23 = *(v19 + 8 * v22 + 32);
              }

              v24 = v23;
              v21 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
                __break(1u);
LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

              if (![v23 isFolder])
              {
                break;
              }

LABEL_22:
              ++v22;
              if (v21 == v20)
              {
                v4 = v39;
                goto LABEL_46;
              }
            }

            sub_18BBD7294(v24, &v41);
            if (!v42)
            {
              goto LABEL_22;
            }

            v38 = v42;
            v36 = v41;
            v37 = v43;
            v25 = v44;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v25 = sub_18B9B6294(0, *(v25 + 2) + 1, 1, v25);
            }

            v28 = *(v25 + 2);
            v27 = *(v25 + 3);
            v44 = v25;
            v29 = v38;
            if (v28 >= v27 >> 1)
            {
              v32 = sub_18B9B6294((v27 > 1), v28 + 1, 1, v44);
              v29 = v38;
              v44 = v32;
            }

            v30 = v44;
            *(v44 + 2) = v28 + 1;
            v31 = &v30[40 * v28];
            *(v31 + 4) = v36;
            *(v31 + 40) = v29;
            *(v31 + 56) = v37;
            v4 = v39;
            if (v21 == v20)
            {
LABEL_46:

              return;
            }
          }
        }
      }

      v44 = MEMORY[0x1E69E7CC0];
      goto LABEL_46;
    }
  }

  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v11 = sub_18BC1DE48();
  v12 = __swift_project_value_buffer(v11, qword_1EA9F8578);
  sub_18B9A33F8();
  swift_allocError();
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  swift_willThrow();
}

uint64_t SFSiriLinkCoordinator.createNewBookmarkInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC4D2C8;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B8073C4();
  return sub_18BC1F028();
}

uint64_t sub_18BB19320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_18BC20F28();
  v3[10] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BB193BC, v5, v4);
}

uint64_t sub_18BB193BC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Create Bookmark.", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    sub_18BC1E0A8();
    if (v0[6])
    {
      v8 = sub_18BC20B98();
    }

    else
    {
      v8 = 0;
    }

    v13 = v0[7];
    [v3 createNewBookmarkWithTitle_];

    v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0, &qword_18BC44410);
    v13[4] = sub_18B9A3450();
    __swift_allocate_boxed_opaque_existential_0Tm(v13);
    sub_18BC1DF98();
    swift_unknownObjectRelease();
    v12 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v9 = sub_18BC1DE48();
    v10 = __swift_project_value_buffer(v9, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v9 - 8) + 16))(v11, v10, v9);
    swift_willThrow();
    v12 = v0[1];
  }

  return v12();
}

uint64_t sub_18BB19664(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BB19320(a1, a2, v2);
}

uint64_t sub_18BB19710(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return v8(a1, v5);
}

uint64_t sub_18BB19814(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BB19710(a1, a2, v6);
}

uint64_t SFSiriLinkCoordinator.openBookmarkInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC4D2E8;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B80783C();
  return sub_18BC1F028();
}

uint64_t sub_18BB1998C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  sub_18BC20F28();
  v3[13] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BB19A28, v5, v4);
}

uint64_t sub_18BB19A28()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Open Bookmark", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = *(v0 + 80);

    sub_18BC1E0A8();

    v9 = sub_18BC20B98();

    [v3 openBookmarkWithUUIDString_];

    v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0, &qword_18BC44410);
    v8[4] = sub_18B9A3450();
    __swift_allocate_boxed_opaque_existential_0Tm(v8);
    sub_18BC1DF98();
    swift_unknownObjectRelease();
    v10 = *(v0 + 8);
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v11 = sub_18BC1DE48();
    v12 = __swift_project_value_buffer(v11, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v11 - 8) + 16))(v13, v12, v11);
    swift_willThrow();
    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_18BB19CD8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BB1998C(a1, a2, v2);
}

uint64_t sub_18BB19D84(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B987B10;

  return v8(a1, v5);
}

uint64_t sub_18BB19E88(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BB19D84(a1, a2, v6);
}

uint64_t SFSiriLinkCoordinator.openBookmarkInTabInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC4D308;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B807A40();
  return sub_18BC1F028();
}

uint64_t sub_18BB1A000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = type metadata accessor for TabEntity(0);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8, &unk_18BC472E0);
  v4[17] = swift_task_alloc();
  v6 = sub_18BC1EC08();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  sub_18BC20F28();
  v4[21] = sub_18BC20F18();
  v8 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BB1A18C, v8, v7);
}

uint64_t sub_18BB1A18C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Open Bookmark in Tab", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = v0[17];
    v9 = v0[14];
    v10 = v0[15];

    sub_18BC1E0A8();

    v11 = sub_18BC20B98();

    sub_18BC1E0A8();
    if ((*(v10 + 48))(v8, 1, v9))
    {
      sub_18BA5F3C0(v0[17]);
      v12 = 0;
    }

    else
    {
      v18 = v0[19];
      v17 = v0[20];
      v19 = v0[17];
      v20 = v0[18];
      v21 = v0[16];
      sub_18BA82420(v19, v21);
      sub_18BA5F3C0(v19);
      (*(v18 + 16))(v17, v21, v20);
      sub_18BA5F48C(v21);
      v12 = sub_18BC1EBC8();
      (*(v18 + 8))(v17, v20);
    }

    v22 = v0[10];
    [v3 openBookmarkWithUUIDString:v11 inTabWithUUID:v12];

    v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0, &qword_18BC44410);
    v22[4] = sub_18B9A3450();
    __swift_allocate_boxed_opaque_existential_0Tm(v22);
    sub_18BC1DF98();
    swift_unknownObjectRelease();

    v16 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v13 = sub_18BC1DE48();
    v14 = __swift_project_value_buffer(v13, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v13 - 8) + 16))(v15, v14, v13);
    swift_willThrow();

    v16 = v0[1];
  }

  return v16();
}

uint64_t sub_18BB1A54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_18B7B6968;

  return sub_18BB1A000(a1, a2, a3, v3);
}

uint64_t sub_18BB1A600(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return v9(a1, v5, v6);
}

uint64_t sub_18BB1A70C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BB1A600(a1, a2, v6);
}

uint64_t sub_18BB1A7D4(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18BB19D84(a1, a2, v6);
}

unint64_t sub_18BB1A89C()
{
  result = qword_1EA9D7E10;
  if (!qword_1EA9D7E10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D7E10);
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_18BB1A91C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BB1A964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 192) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_18BB1A9E4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v4 = _s4ItemVMa_2(0);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = _s7SectionVMa_1(0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 96);
  v37 = *(v15 + 16);
  if (v37)
  {
    v16 = 0;
    v17 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = v46 + 7;
    v19 = *(v11 + 72);
    v36 = a2;
    v33 = v10;
    v39 = v14;
    v35 = v17;
    v34 = v19;
    while (1)
    {
      v38 = v16;
      sub_18B815248(v17 + v19 * v16, v14, _s7SectionVMa_1);
      v20 = v39;
      v21 = *&v39[*(v10 + 28)];
      v40 = *(v21 + 16);
      if (v40)
      {
        break;
      }

LABEL_15:
      v30 = v38 + 1;
      sub_18B82A40C(v20, _s7SectionVMa_1);
      v16 = v30;
      v14 = v39;
      v17 = v35;
      v19 = v34;
      if (v30 == v37)
      {
        goto LABEL_16;
      }
    }

    v42 = v39[*(v10 + 20)];
    v41 = v21 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    sub_18BC1E3F8();
    v22 = 0;
    v43 = v21;
    while (1)
    {
      if (v22 >= *(v21 + 16))
      {
        __break(1u);
        return;
      }

      v23 = *(v44 + 72);
      sub_18B815248(v41 + v23 * v22, v9, _s4ItemVMa_2);
      if ((v42 & 1) == 0)
      {
        if (v46[2])
        {
          v24 = v46;
          sub_18BC22158();
          sub_18BC1EC08();
          sub_18B80D494();
          sub_18BC20A78();
          v25 = sub_18BC221A8();
          v26 = -1 << *(v24 + 32);
          v27 = v25 & ~v26;
          if ((*(v18 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
          {
            break;
          }
        }
      }

LABEL_5:
      ++v22;
      sub_18B82A40C(v9, _s4ItemVMa_2);
      v21 = v43;
      if (v22 == v40)
      {

        a2 = v36;
        v10 = v33;
        v20 = v39;
        goto LABEL_15;
      }
    }

    v28 = ~v26;
    while (1)
    {
      sub_18B815248(v46[6] + v27 * v23, v6, _s4ItemVMa_2);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B82A40C(v6, _s4ItemVMa_2);
      if (updated)
      {
        break;
      }

      v27 = (v27 + 1) & v28;
      if (((*(v18 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_18B82A40C(v39, _s7SectionVMa_1);

    v31 = v36;
    sub_18B80D354(v9, v36, _s4ItemVMa_2);
    (*(v44 + 56))(v31, 0, 1, v45, v32);
  }

  else
  {
LABEL_16:
    (*(v44 + 56))(a2, 1, 1, v45, v12);
  }
}

void sub_18BB1AE30(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v4 = _s4ItemVMa_2(0);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = _s7SectionVMa_1(0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 96);
  v37 = *(v15 + 16);
  if (v37)
  {
    v16 = 0;
    v17 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = v46 + 7;
    v19 = *(v11 + 72);
    v36 = a2;
    v33 = v10;
    v39 = v14;
    v35 = v17;
    v34 = v19;
    while (1)
    {
      v38 = v16;
      sub_18B815248(v17 + v19 * v16, v14, _s7SectionVMa_1);
      v20 = v39;
      v21 = *&v39[*(v10 + 28)];
      v40 = *(v21 + 16);
      if (v40)
      {
        break;
      }

LABEL_15:
      v30 = v38 + 1;
      sub_18B82A40C(v20, _s7SectionVMa_1);
      v16 = v30;
      v14 = v39;
      v17 = v35;
      v19 = v34;
      if (v30 == v37)
      {
        goto LABEL_16;
      }
    }

    v42 = v39[*(v10 + 20)];
    v41 = v21 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    sub_18BC1E3F8();
    v22 = 0;
    v43 = v21;
    while (1)
    {
      if (v22 >= *(v21 + 16))
      {
        __break(1u);
        return;
      }

      v23 = *(v44 + 72);
      sub_18B815248(v41 + v23 * v22, v9, _s4ItemVMa_2);
      if (v42)
      {
        if (v46[2])
        {
          v24 = v46;
          sub_18BC22158();
          sub_18BC1EC08();
          sub_18B80D494();
          sub_18BC20A78();
          v25 = sub_18BC221A8();
          v26 = -1 << *(v24 + 32);
          v27 = v25 & ~v26;
          if ((*(v18 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
          {
            break;
          }
        }
      }

LABEL_5:
      ++v22;
      sub_18B82A40C(v9, _s4ItemVMa_2);
      v21 = v43;
      if (v22 == v40)
      {

        a2 = v36;
        v10 = v33;
        v20 = v39;
        goto LABEL_15;
      }
    }

    v28 = ~v26;
    while (1)
    {
      sub_18B815248(v46[6] + v27 * v23, v6, _s4ItemVMa_2);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B82A40C(v6, _s4ItemVMa_2);
      if (updated)
      {
        break;
      }

      v27 = (v27 + 1) & v28;
      if (((*(v18 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_18B82A40C(v39, _s7SectionVMa_1);

    v31 = v36;
    sub_18B80D354(v9, v36, _s4ItemVMa_2);
    (*(v44 + 56))(v31, 0, 1, v45, v32);
  }

  else
  {
LABEL_16:
    (*(v44 + 56))(a2, 1, 1, v45, v12);
  }
}

uint64_t sub_18BB1B27C()
{
  v1 = _s7SectionVMa_1(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 96);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_18B7B7A54(0, v6, 0);
    v7 = v18;
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_18B815248(v8, v4, _s7SectionVMa_1);
      v10 = &v4[*(v1 + 32)];
      v12 = *v10;
      v11 = *(v10 + 1);
      sub_18BC1E3F8();
      sub_18B82A40C(v4, _s7SectionVMa_1);
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_18B7B7A54((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_18BB1B414(unsigned __int8 *a1)
{
  v45 = _s4ItemVMa_2(0);
  v3 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_18BB1B838(v1, a1) & 1) != 0 && (sub_18B866D50(), v7 = v6, sub_18B866D50(), v9 = sub_18B98E5E8(v7, v8), , , (v9) && (v10 = sub_18BB1B27C(), v11 = sub_18BB1B27C(), v12 = sub_18B98E7B4(v10, v11), , , (v12))
  {
    sub_18B866D50();
    v14 = v13;
    v15 = *(v13 + 16);
    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v43[2] = a1;
      v46 = MEMORY[0x1E69E7CC0];
      sub_18B9B69A0(0, v15, 0);
      v17 = v46;
      v18 = *(v3 + 80);
      v43[1] = v14;
      v19 = v14 + ((v18 + 32) & ~v18);
      v44 = v3;
      v20 = *(v3 + 72);
      do
      {
        sub_18B815248(v19, v5, _s4ItemVMa_2);
        v21 = &v5[*(v45 + 52)];
        v22 = *v21;
        v23 = *(v21 + 1);
        sub_18BC1E3F8();
        sub_18B82A40C(v5, _s4ItemVMa_2);
        v46 = v17;
        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_18B9B69A0((v24 > 1), v25 + 1, 1);
          v17 = v46;
        }

        *(v17 + 16) = v25 + 1;
        v26 = v17 + 16 * v25;
        *(v26 + 32) = v22;
        *(v26 + 40) = v23;
        v19 += v20;
        --v15;
      }

      while (v15);

      v3 = v44;
      v16 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v17 = MEMORY[0x1E69E7CC0];
    }

    sub_18B866D50();
    v30 = v29;
    v31 = *(v29 + 16);
    if (v31)
    {
      v46 = v16;
      sub_18B9B69A0(0, v31, 0);
      v32 = v46;
      v33 = *(v3 + 80);
      v44 = v30;
      v34 = v30 + ((v33 + 32) & ~v33);
      v35 = *(v3 + 72);
      do
      {
        sub_18B815248(v34, v5, _s4ItemVMa_2);
        v36 = &v5[*(v45 + 52)];
        v38 = *v36;
        v37 = *(v36 + 1);
        sub_18BC1E3F8();
        sub_18B82A40C(v5, _s4ItemVMa_2);
        v46 = v32;
        v40 = *(v32 + 16);
        v39 = *(v32 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_18B9B69A0((v39 > 1), v40 + 1, 1);
          v32 = v46;
        }

        *(v32 + 16) = v40 + 1;
        v41 = v32 + 16 * v40;
        *(v41 + 32) = v38;
        *(v41 + 40) = v37;
        v34 += v35;
        --v31;
      }

      while (v31);
    }

    else
    {

      v32 = MEMORY[0x1E69E7CC0];
    }

    v42 = sub_18B98E844(v17, v32);

    v27 = v42 ^ 1;
  }

  else
  {
    v27 = 1;
  }

  return v27 & 1;
}

uint64_t sub_18BB1B7A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v15[8] = a1[8];
  v15[9] = v2;
  v3 = a1[11];
  v15[10] = a1[10];
  v15[11] = v3;
  v4 = a1[5];
  v15[4] = a1[4];
  v15[5] = v4;
  v5 = a1[7];
  v15[6] = a1[6];
  v15[7] = v5;
  v6 = a1[1];
  v15[0] = *a1;
  v15[1] = v6;
  v7 = a1[3];
  v15[2] = a1[2];
  v15[3] = v7;
  v8 = a2[9];
  v16[8] = a2[8];
  v16[9] = v8;
  v9 = a2[11];
  v16[10] = a2[10];
  v16[11] = v9;
  v10 = a2[5];
  v16[4] = a2[4];
  v16[5] = v10;
  v11 = a2[7];
  v16[6] = a2[6];
  v16[7] = v11;
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  v13 = a2[3];
  v16[2] = a2[2];
  v16[3] = v13;
  return sub_18BB1B838(v15, v16) & 1;
}

uint64_t sub_18BB1B838(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]) & 1) != 0 || a1[3] != a2[3] || a1[4] != a2[4])
  {
    return 0;
  }

  v64 = v2;
  v65 = v3;
  v5 = *(a1 + 24);
  v6 = *(a1 + 56);
  v61 = *(a1 + 40);
  v62 = v6;
  v63 = *(a1 + 72);
  v59 = *(a1 + 8);
  v60 = v5;
  v7 = *(a2 + 24);
  v8 = *(a2 + 56);
  v58[2] = *(a2 + 40);
  v58[3] = v8;
  v58[4] = *(a2 + 72);
  v58[0] = *(a2 + 8);
  v58[1] = v7;
  v9 = v60;
  if (!*(&v60 + 1))
  {
    if (!*(&v7 + 1))
    {
      v12 = a2;
      v47 = *(a1 + 8);
      v48 = v60;
      v22 = *(a1 + 56);
      v49 = *(a1 + 40);
      v50 = v22;
      v10 = a1;
      v51 = *(a1 + 72);
      sub_18BB1BCE8(&v59, &v42);
      sub_18BB1BCE8(v58, &v42);
      v14 = &v47;
      goto LABEL_18;
    }

LABEL_12:
    v47 = *(a1 + 8);
    v48 = v60;
    v15 = *(a1 + 56);
    v49 = *(a1 + 40);
    v50 = v15;
    v16 = *(a2 + 8);
    v51 = *(a1 + 72);
    v52 = v16;
    v53 = *(a2 + 3);
    v54 = *(&v7 + 1);
    v17 = *(a2 + 40);
    v18 = *(a2 + 72);
    v56 = *(a2 + 56);
    v57 = v18;
    v55 = v17;
    sub_18BB1BCE8(&v59, &v42);
    sub_18BB1BCE8(v58, &v42);
    sub_18B988BAC(&v47, &qword_1EA9D9450, &qword_18BC4D448);
    goto LABEL_13;
  }

  if (!*(&v7 + 1))
  {
    goto LABEL_12;
  }

  v10 = a1;
  v47 = *(a2 + 8);
  *&v48 = *(a2 + 3);
  *(&v48 + 1) = *(&v7 + 1);
  v11 = *(a2 + 56);
  v49 = *(a2 + 40);
  v50 = v11;
  v12 = a2;
  v51 = *(a2 + 72);
  if (__PAIR128__(*(&v7 + 1), v48) != v60)
  {
    v20 = sub_18BC21FD8();
    sub_18BB1BCE8(&v59, &v42);
    sub_18BB1BCE8(v58, &v42);
    sub_18B988BAC(&v47, &qword_1EA9D50D8, &qword_18BC42FA0);
    v42 = *(v10 + 8);
    v43 = v9;
    v21 = *(v10 + 56);
    v44 = *(v10 + 40);
    v45 = v21;
    v46 = *(v10 + 72);
    sub_18B988BAC(&v42, &qword_1EA9D50D8, &qword_18BC42FA0);
    if ((v20 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  sub_18BB1BCE8(&v59, &v42);
  sub_18BB1BCE8(v58, &v42);
  sub_18B988BAC(&v47, &qword_1EA9D50D8, &qword_18BC42FA0);
  v42 = *(v10 + 8);
  v43 = v9;
  v13 = *(v10 + 56);
  v44 = *(v10 + 40);
  v45 = v13;
  v46 = *(v10 + 72);
  v14 = &v42;
LABEL_18:
  sub_18B988BAC(v14, &qword_1EA9D50D8, &qword_18BC42FA0);
LABEL_19:
  v23 = *(v10 + 11);
  v24 = *(v12 + 11);
  if (v23 == 1)
  {
    if (v24 != 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v24 == 1)
    {
      goto LABEL_13;
    }

    if (v23)
    {
      if (!v24)
      {
        goto LABEL_13;
      }

      sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
      sub_18B86D6D0(v24);
      sub_18B86D6D0(v23);
      v39 = sub_18BC215C8();
      sub_18B86D99C(v23);
      sub_18B86D99C(v24);
      if ((v39 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (v24)
    {
      goto LABEL_13;
    }
  }

  v25 = v10;
  v26 = v12;
  if ((sub_18B98DE58(*(v10 + 12), *(v12 + 12)) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_18B8369E0(*(v10 + 13), *(v12 + 13));
  if ((v27 & 1) == 0)
  {
    goto LABEL_13;
  }

  v29 = *(v10 + 14);
  v28 = *(v25 + 15);
  v30 = *(v25 + 16);
  v32 = *(v12 + 14);
  v31 = *(v26 + 15);
  v33 = *(v26 + 16);
  if (v29)
  {
    if (!v32)
    {
      goto LABEL_13;
    }

    sub_18B7B0AC0(0, &qword_1EA9D46F0, 0x1E69DD250);
    v34 = v32;
    v35 = v29;
    v36 = sub_18BC215C8();

    v37 = v25;
    v38 = v26;
    if ((v36 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v37 = v25;
    v38 = v26;
    if (v32)
    {
      goto LABEL_13;
    }
  }

  if (v30)
  {
    if (!v33)
    {
      goto LABEL_13;
    }

    if (v28 != v31 || v30 != v33)
    {
      v40 = sub_18BC21FD8();
      v38 = v26;
      v37 = v25;
      if ((v40 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  else if (v33)
  {
    goto LABEL_13;
  }

  if (*(v37 + 19) == *(v38 + 19) && *(v37 + 20) == *(v38 + 20) || (v41 = sub_18BC21FD8(), v38 = v26, v37 = v25, (v41 & 1) != 0))
  {
    if (*(v37 + 21) == *(v38 + 21) && *(v37 + 22) == *(v38 + 22) || (sub_18BC21FD8() & 1) != 0)
    {
      sub_18B8369E0(*(v25 + 23), *(v26 + 23));
      return v19 & 1;
    }
  }

LABEL_13:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_18BB1BCE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D50D8, &qword_18BC42FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SFBookmarksUIState.init(topmostVisibleItemIndexPath:topmostVisibleItemOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_18BC1EDD8();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for SFBookmarksUIState(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t type metadata accessor for SFBookmarksUIState(uint64_t a1)
{
  result = qword_1EA9D9458;
  if (!qword_1EA9D9458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SFBookmarksUIState.topmostVisibleItemIndexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18BC1EDD8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SFBookmarksUIState.topmostVisibleItemIndexPath.setter(uint64_t a1)
{
  v3 = sub_18BC1EDD8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SFBookmarksUIState.topmostVisibleItemOffset.setter(double a1)
{
  result = type metadata accessor for SFBookmarksUIState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_18BB1BFD4(uint64_t a1)
{
  result = sub_18BC1EDD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18BB1C048()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_18BC1E8B8();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_18BC1E8D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_18BC1E4F8();
  __swift_allocate_value_buffer(v10, qword_1EA9D9468);
  __swift_project_value_buffer(v10, qword_1EA9D9468);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_18BC1E8F8();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_18BC1E4E8();
}

uint64_t static SafariFocusConfigurationType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA9D2428 != -1)
  {
    swift_once();
  }

  v3 = sub_18BC1E4F8();
  v4 = __swift_project_value_buffer(v3, qword_1EA9D9468);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t static SafariFocusConfigurationType.typeDisplayRepresentation.setter(uint64_t a1, __n128 a2)
{
  if (qword_1EA9D2428 != -1)
  {
    swift_once();
  }

  v3 = sub_18BC1E4F8();
  v4 = __swift_project_value_buffer(v3, qword_1EA9D9468);
  swift_beginAccess();
  v5 = *(v3 - 8);
  (*(v5 + 24))(v4, a1, v3);
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t (*static SafariFocusConfigurationType.typeDisplayRepresentation.modify(uint64_t a1, __n128 a2))(uint64_t a1)
{
  if (qword_1EA9D2428 != -1)
  {
    swift_once();
  }

  v2 = sub_18BC1E4F8();
  __swift_project_value_buffer(v2, qword_1EA9D9468);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18BB1C580@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA9D2428 != -1)
  {
    swift_once();
  }

  v3 = sub_18BC1E4F8();
  v4 = __swift_project_value_buffer(v3, qword_1EA9D9468);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_18BB1C640(uint64_t a1, __n128 a2)
{
  if (qword_1EA9D2428 != -1)
  {
    swift_once();
  }

  v3 = sub_18BC1E4F8();
  v4 = __swift_project_value_buffer(v3, qword_1EA9D9468);
  swift_beginAccess();
  (*(*(v3 - 8) + 24))(v4, a1, v3);
  return swift_endAccess();
}

uint64_t sub_18BB1C708()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4608, &unk_18BC47050);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v36 = &v23 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v23 - v3;
  v30 = sub_18BC1E8B8();
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = sub_18BC1E8D8();
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9588, &qword_18BC4DA58);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7268, &qword_18BC478B0);
  v38 = v8;
  v9 = *(v8 - 8);
  v33 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v27 = v11;
  *(v11 + 16) = xmmword_18BC3E400;
  v32 = *(v8 + 48);
  *(v11 + v10) = 0;
  v12 = v11 + v10;
  sub_18BC20B18();
  sub_18BC1EC38();
  v28 = *MEMORY[0x1E6968DF0];
  v13 = *(v4 + 104);
  v29 = v4 + 104;
  v31 = v13;
  v14 = v34;
  v13(v34);
  sub_18BC1E8F8();
  v15 = *(v39 + 56);
  v39 += 56;
  v25 = v15;
  v16 = v35;
  v15(v35, 1, 1, v37);
  v17 = sub_18BC1E398();
  v24 = *(*(v17 - 8) + 56);
  v18 = v36;
  v24(v36, 1, 1, v17);
  v26 = v12;
  v19 = v18;
  sub_18BC1E3A8();
  v20 = (v12 + v33);
  v33 = *(v38 + 48);
  *v20 = 1;
  sub_18BC20B18();
  sub_18BC1EC38();
  v31(v14, v28, v30);
  sub_18BC1E8F8();
  v25(v16, 1, 1, v37);
  v24(v19, 1, 1, v17);
  sub_18BC1E3A8();
  v21 = sub_18BA65E34(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EA9D9480 = v21;
  return result;
}

double static SafariFocusConfigurationType.caseDisplayRepresentations.getter()
{
  if (qword_1EA9D2430 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_18BC1E3F8();
  return result;
}

double static SafariFocusConfigurationType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1EA9D2430 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EA9D9480 = a1;

  return result;
}

uint64_t (*static SafariFocusConfigurationType.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EA9D2430 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_18BB1CE1C@<D0>(void *a1@<X8>)
{
  if (qword_1EA9D2430 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EA9D9480;
  sub_18BC1E3F8();
  return result;
}

double sub_18BB1CE9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EA9D2430;
  sub_18BC1E3F8();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EA9D9480 = v1;

  return result;
}

MobileSafari::SafariFocusConfigurationType_optional __swiftcall SafariFocusConfigurationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18BC21E28();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SafariFocusConfigurationType.rawValue.getter()
{
  if (*v0)
  {
    return 0x70756F7247626174;
  }

  else
  {
    return 0x656C69666F7270;
  }
}

uint64_t sub_18BB1CFD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x70756F7247626174;
  }

  else
  {
    v3 = 0x656C69666F7270;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x70756F7247626174;
  }

  else
  {
    v5 = 0x656C69666F7270;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18BC21FD8();
  }

  return v8 & 1;
}

unint64_t sub_18BB1D07C()
{
  result = qword_1EA9D9488;
  if (!qword_1EA9D9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9488);
  }

  return result;
}

uint64_t sub_18BB1D0D0()
{
  sub_18BC22158();
  sub_18BC20C28();

  return sub_18BC221A8();
}

double sub_18BB1D154(uint64_t a1)
{
  sub_18BC20C28();

  return result;
}

uint64_t sub_18BB1D1C4(uint64_t a1)
{
  sub_18BC22158();
  sub_18BC20C28();

  return sub_18BC221A8();
}

void sub_18BB1D244(char *a2@<X8>)
{
  v3 = sub_18BC21E28();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_18BB1D2A4(uint64_t *a1@<X8>)
{
  v2 = 0x656C69666F7270;
  if (*v1)
  {
    v2 = 0x70756F7247626174;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_18BB1D2E8()
{
  result = qword_1EA9D9490;
  if (!qword_1EA9D9490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9490);
  }

  return result;
}

unint64_t sub_18BB1D340()
{
  result = qword_1EA9D9498;
  if (!qword_1EA9D9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9498);
  }

  return result;
}

unint64_t sub_18BB1D398()
{
  result = qword_1EA9D94A0;
  if (!qword_1EA9D94A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D94A0);
  }

  return result;
}

unint64_t sub_18BB1D3F0()
{
  result = qword_1EA9D94A8;
  if (!qword_1EA9D94A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D94A8);
  }

  return result;
}

unint64_t sub_18BB1D444()
{
  result = qword_1EA9D94B0;
  if (!qword_1EA9D94B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D94B0);
  }

  return result;
}

unint64_t sub_18BB1D498()
{
  result = qword_1EA9D94B8;
  if (!qword_1EA9D94B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D94B8);
  }

  return result;
}

unint64_t sub_18BB1D4F0()
{
  result = qword_1EA9D94C0;
  if (!qword_1EA9D94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D94C0);
  }

  return result;
}

unint64_t sub_18BB1D594()
{
  result = qword_1EA9D94C8;
  if (!qword_1EA9D94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D94C8);
  }

  return result;
}

uint64_t sub_18BB1D5E8(uint64_t a1)
{
  v2 = sub_18BB1D594();

  return MEMORY[0x1EEDB2C18](a1, v2);
}

unint64_t sub_18BB1D638()
{
  result = qword_1EA9D94D0;
  if (!qword_1EA9D94D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D94D0);
  }

  return result;
}

unint64_t sub_18BB1D690()
{
  result = qword_1EA9D94D8;
  if (!qword_1EA9D94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D94D8);
  }

  return result;
}

unint64_t sub_18BB1D6E8()
{
  result = qword_1EA9D94E0;
  if (!qword_1EA9D94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D94E0);
  }

  return result;
}

double sub_18BB1D73C()
{
  if (qword_1EA9D2430 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_18BC1E3F8();
  return result;
}

uint64_t sub_18BB1D7B4(uint64_t a1)
{
  v2 = sub_18BB1D4F0();

  return MEMORY[0x1EEDB3D70](a1, v2);
}

unint64_t sub_18BB1D858()
{
  result = qword_1EA9D94F8;
  if (!qword_1EA9D94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D94F8);
  }

  return result;
}

unint64_t sub_18BB1D8B0()
{
  result = qword_1EA9D9500;
  if (!qword_1EA9D9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9500);
  }

  return result;
}

uint64_t sub_18BB1D904(__n128 a1)
{
  v1 = sub_18BC1E8B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v7, qword_1EA9F82B0);
  __swift_project_value_buffer(v7, qword_1EA9F82B0);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v2 + 104))(v4, *MEMORY[0x1E6968DF0], v1);
  return sub_18BC1E8F8();
}

uint64_t sub_18BB1DB3C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9550, &qword_18BC4D9B8);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v30 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v31 = v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9558, &qword_18BC4D9C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v28 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v29 = v25 - v13;
  v38 = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9560, &qword_18BC4D9C8);
  v25[3] = sub_18BB1D858();
  v14 = sub_18BB1D498();
  v25[2] = sub_18B7B0B08(&qword_1EA9D9568, &qword_1EA9D9560, &qword_18BC4D9C8, MEMORY[0x1E695A490]);
  sub_18BC1E5A8();
  v25[1] = sub_18B7B0B08(&qword_1EA9D9570, &qword_1EA9D9558, &qword_18BC4D9C0, MEMORY[0x1E695A668]);
  sub_18BC1E568();
  v36 = *(v7 + 8);
  v26 = v11;
  v36(v11, v6);
  v27 = v7 + 8;
  v37 = 1;
  v15 = v28;
  v25[0] = v14;
  sub_18BC1E5A8();
  sub_18BC1E568();
  v36(v15, v6);
  v16 = v30;
  sub_18BC1E5C8();
  sub_18B7B0B08(&qword_1EA9D9578, &qword_1EA9D9550, &qword_18BC4D9B8, MEMORY[0x1E695A718]);
  v17 = v31;
  v18 = v16;
  v19 = v32;
  sub_18BC1E568();
  v20 = *(v33 + 8);
  v20(v18, v19);
  v21 = v29;
  v22 = v26;
  sub_18BC1E558();
  v20(v17, v19);
  v23 = v36;
  v36(v22, v6);
  return v23(v21, v6);
}

uint64_t sub_18BB1E008@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9580, &unk_18BC4D9D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9560, &qword_18BC4D9C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  sub_18BB1D858();
  sub_18BC1E468();
  sub_18BC1E428();
  v9 = sub_18B7B0B08(&qword_1EA9D9568, &qword_1EA9D9560, &qword_18BC4D9C8, MEMORY[0x1E695A490]);
  MEMORY[0x18CFF99A0](v5, &type metadata for OpenProfileOrTabGroupForFocus, v2, v9);
  v10 = *(v3 + 8);
  v10(v5, v2);
  MEMORY[0x18CFF9990](v8, &type metadata for OpenProfileOrTabGroupForFocus, v2, v9);
  return (v10)(v8, v2);
}

uint64_t sub_18BB1E24C()
{
  swift_getKeyPath();
  sub_18BB1D858();
  v0 = sub_18BC1E1A8();

  swift_getKeyPath();
  sub_18BC1E1A8();
  v1 = sub_18BC1E1A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18BC41E60;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_18BC1E1A8();
  v3 = sub_18BC1E3F8();

  return v3;
}

uint64_t sub_18BB1E340@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9580, &unk_18BC4D9D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9560, &qword_18BC4D9C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  sub_18BB1D858();
  sub_18BC1E468();
  sub_18BC1E428();
  v9 = sub_18B7B0B08(&qword_1EA9D9568, &qword_1EA9D9560, &qword_18BC4D9C8, MEMORY[0x1E695A490]);
  MEMORY[0x18CFF99A0](v5, &type metadata for OpenProfileOrTabGroupForFocus, v2, v9);
  v10 = *(v3 + 8);
  v10(v5, v2);
  MEMORY[0x18CFF9990](v8, &type metadata for OpenProfileOrTabGroupForFocus, v2, v9);
  return (v10)(v8, v2);
}

uint64_t sub_18BB1E584()
{
  swift_getKeyPath();
  sub_18BB1D858();
  v0 = sub_18BC1E1A8();

  swift_getKeyPath();
  sub_18BC1E1A8();
  v1 = sub_18BC1E1A8();

  swift_getKeyPath();
  sub_18BC1E1A8();
  v2 = sub_18BC1E1A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18BC3E3F0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  sub_18BC1E1A8();
  v4 = sub_18BC1E3F8();

  return v4;
}

uint64_t sub_18BB1E6BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9580, &unk_18BC4D9D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9560, &qword_18BC4D9C8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_18BB1D858();
  sub_18BC1E468();
  sub_18BC1E428();
  v8 = sub_18B7B0B08(&qword_1EA9D9568, &qword_1EA9D9560, &qword_18BC4D9C8, MEMORY[0x1E695A490]);
  MEMORY[0x18CFF99A0](v4, &type metadata for OpenProfileOrTabGroupForFocus, v1, v8);
  v9 = *(v2 + 8);
  v9(v4, v1);
  MEMORY[0x18CFF9990](v7, &type metadata for OpenProfileOrTabGroupForFocus, v1, v8);
  return (v9)(v7, v1);
}

uint64_t sub_18BB1E900()
{
  swift_getKeyPath();
  sub_18BB1D858();
  v0 = sub_18BC1E1A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18BC3E3E0;
  *(v1 + 32) = v0;
  sub_18BC1E1A8();
  v2 = sub_18BC1E3F8();

  return v2;
}

uint64_t sub_18BB1E9BC@<X0>(uint64_t a1@<X8>)
{
  sub_18BC1E0A8();
  sub_18BC1E0A8();
  if (v5)
  {
    sub_18BC1DFE8();

    sub_18BC1E8A8();
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = sub_18BC1E8D8();
  return (*(*(v3 - 8) + 56))(a1, v2, 1, v3);
}

uint64_t sub_18BB1EA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  sub_18BC20F28();
  v5[10] = sub_18BC20F18();
  v7 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BB1EB3C, v7, v6);
}

uint64_t sub_18BB1EB3C()
{
  v66 = v0;

  sub_18BC1E0A8();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    sub_18BC1E3F8();
    sub_18BB20694(v2, v1);
    v52 = v2;
  }

  else
  {
    v2 = 0;
    v52 = 0x3E6C696E3CLL;
  }

  sub_18BC1E0A8();
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v0 + 16);
    sub_18BC1E3F8();
    sub_18BB20694(v4, v3);
    v54 = v4;
    v61 = v4;
  }

  else
  {
    v61 = 0;
    v54 = 0x3E6C696E3CLL;
  }

  v5 = objc_opt_self();
  v6 = [v5 safari_browserDefaults];
  v64 = *MEMORY[0x1E69C8CE8];
  v7 = [v6 stringForKey_];
  if (v7)
  {
    v8 = v7;
    v59 = sub_18BC20BD8();
    v10 = v9;
  }

  else
  {
    v59 = 0;
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69C8D80];
  v12 = [v6 stringForKey_];
  if (v12)
  {
    v13 = v12;
    v60 = sub_18BC20BD8();
    v63 = v14;
  }

  else
  {
    v60 = 0;
    v63 = 0;
  }

  sub_18BC1E0A8();
  if (*(v0 + 16))
  {
    v55 = v6;
    v53 = v10;
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v15 = sub_18BC1F2C8();
    __swift_project_value_buffer(v15, qword_1EA9F7EC8);
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    v16 = sub_18BC1F2A8();
    v17 = sub_18BC21258();

    if (os_log_type_enabled(v16, v17))
    {
      v51 = v17;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v65 = v19;
      *v18 = 136446722;
      if (v63)
      {
        v20 = v60;
      }

      else
      {
        v20 = 0x3E6C696E3CLL;
      }

      if (v63)
      {
        v21 = v63;
      }

      else
      {
        v21 = 0xE500000000000000;
      }

      sub_18BC1E3F8();
      v22 = sub_18B7EA850(v20, v21, &v65);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      if (v3)
      {
        v23 = v3;
      }

      else
      {
        v23 = 0xE500000000000000;
      }

      sub_18BC1E3F8();
      v24 = sub_18B7EA850(v54, v23, &v65);

      *(v18 + 14) = v24;
      *(v18 + 22) = 2080;
      sub_18BC1E0A8();
      if (*(v0 + 88))
      {
        v25 = 0;
      }

      else
      {
        v25 = 544501614;
      }

      if (*(v0 + 88))
      {
        v26 = 0xE000000000000000;
      }

      else
      {
        v26 = 0xE400000000000000;
      }

      v27 = sub_18B7EA850(v25, v26, &v65);

      *(v18 + 24) = v27;
      _os_log_impl(&dword_18B7AC000, v16, v51, "Switching from tab group %{public}s to %{public}s; %sopening links in focus tab group.", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x18CFFEEE0](v19, -1, -1);
      MEMORY[0x18CFFEEE0](v18, -1, -1);
    }

    if (v3)
    {
      sub_18BC1E3F8();
      v28 = sub_18BC20B98();
    }

    else
    {
      v28 = 0;
    }

    v6 = v55;
    [v55 setObject:v28 forKey:v11];
    swift_unknownObjectRelease();
    sub_18BC1E0A8();
    [v55 setBool:*(v0 + 88) forKey:*MEMORY[0x1E69C8C70]];
    [v55 setBool:v3 != 0 forKey:*MEMORY[0x1E69C8C50]];
    [v55 removeObjectForKey_];
    [v55 removeObjectForKey_];

    if (!v53)
    {
      v41 = v61;
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  v62 = v2;
  if (qword_1EA9D22B0 != -1)
  {
    swift_once();
  }

  v29 = sub_18BC1F2C8();
  __swift_project_value_buffer(v29, qword_1EA9F7EC8);
  sub_18BC1E3F8();
  v30 = sub_18BC1F2A8();
  v31 = sub_18BC21258();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v56 = v6;
    v33 = swift_slowAlloc();
    v65 = v33;
    *v32 = 136446466;
    v57 = v11;
    v58 = v5;
    if (v10)
    {
      v34 = v59;
    }

    else
    {
      v34 = 0x3E6C696E3CLL;
    }

    if (v10)
    {
      v35 = v10;
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    sub_18BC1E3F8();
    v36 = sub_18B7EA850(v34, v35, &v65);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2082;
    if (v1)
    {
      v37 = v1;
    }

    else
    {
      v37 = 0xE500000000000000;
    }

    sub_18BC1E3F8();
    v38 = sub_18B7EA850(v52, v37, &v65);
    v5 = v58;

    *(v32 + 14) = v38;
    v11 = v57;
    _os_log_impl(&dword_18B7AC000, v30, v31, "Switching from Focus profile %{public}s to %{public}s.", v32, 0x16u);
    swift_arrayDestroy();
    v39 = v33;
    v6 = v56;
    MEMORY[0x18CFFEEE0](v39, -1, -1);
    MEMORY[0x18CFFEEE0](v32, -1, -1);
  }

  if (v1)
  {
    sub_18BC1E3F8();
    v40 = sub_18BC20B98();
  }

  else
  {
    v40 = 0;
  }

  [v6 setObject:v40 forKey:v64];
  swift_unknownObjectRelease();
  [v6 setBool:v1 != 0 forKey:*MEMORY[0x1E69C8C48]];
  [v6 removeObjectForKey_];
  [v6 removeObjectForKey_];
  [v6 removeObjectForKey_];

  if (v10)
  {
    if (!v1)
    {
      v61 = 0;
      v3 = 0;
LABEL_62:

      v42 = v3;
      v10 = v61;
      goto LABEL_63;
    }

    if (v59 == v62 && v10 == v1)
    {

      v3 = 0;
      v41 = 0;
      goto LABEL_64;
    }

    v50 = sub_18BC21FD8();

    v42 = 0;
    v10 = 0;
    v3 = 0;
    v41 = 0;
    if ((v50 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v42 = 0;
    v3 = 0;
    v41 = 0;
    if (v1)
    {
LABEL_63:
      v43 = [objc_opt_self() defaultCenter];
      v44 = [v5 safari:v64 notificationNameForUserDefaultsKey:?];
      [v43 postNotificationName:v44 object:0 userInfo:0 deliverImmediately:1];

      v3 = v42;
      v41 = v10;
    }
  }

LABEL_64:
  if (!v63)
  {
    if (!v3)
    {
      goto LABEL_74;
    }

LABEL_73:
    v46 = [objc_opt_self() defaultCenter];
    v47 = [v5 safari:v11 notificationNameForUserDefaultsKey:?];
    [v46 postNotificationName:v47 object:0 userInfo:0 deliverImmediately:1];

    goto LABEL_74;
  }

  if (!v3)
  {

    goto LABEL_73;
  }

  if (v60 == v41 && v63 == v3)
  {

    goto LABEL_74;
  }

  v45 = sub_18BC21FD8();

  if ((v45 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_74:
  sub_18BC1DF98();

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_18BB1F4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18BB1F568;

  return MEMORY[0x1EEDB3930](a1, a2, a3);
}

uint64_t sub_18BB1F568(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_18BB1F668()
{
  result = qword_1EA9D9508;
  if (!qword_1EA9D9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9508);
  }

  return result;
}

unint64_t sub_18BB1F6C0()
{
  result = qword_1EA9D9510;
  if (!qword_1EA9D9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9510);
  }

  return result;
}

uint64_t sub_18BB1F74C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA9D2438 != -1)
  {
    swift_once();
  }

  v3 = sub_18BC1E8D8();
  v4 = __swift_project_value_buffer(v3, qword_1EA9F82B0);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_18BB1F7F4(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9540, &qword_18BC4D9B0);
  v5 = sub_18B7B0B08(&qword_1EA9D9548, &qword_1EA9D9540, &qword_18BC4D9B0, MEMORY[0x1E695A6F8]);

  return MEMORY[0x1EEDB4010](KeyPath, sub_18BB1DB3C, 0, v4, a2, v5);
}

uint64_t sub_18BB1F8BC(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18B987B10;

  return sub_18BB1EA9C(a1, v4, v5, v7, v6);
}

uint64_t sub_18BB1F97C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BB1FCAC();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

unint64_t sub_18BB1F9AC()
{
  result = qword_1EA9D9518;
  if (!qword_1EA9D9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9518);
  }

  return result;
}

uint64_t sub_18BB1FA00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4608, &unk_18BC47050);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_18BC1E8D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA9D2438 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_1EA9F82B0);
  (*(v7 + 16))(v9, v10, v6);
  sub_18BB1E9BC(v5);
  v11 = sub_18BC1E398();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  return sub_18BC1E3A8();
}

uint64_t sub_18BB1FC40(uint64_t a1)
{
  v2 = sub_18BB1D8B0();

  return MEMORY[0x1EEDB3F70](a1, v2);
}

uint64_t sub_18BB1FCAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6E70, &unk_18BC47070);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v48 = &v43 - v1;
  v2 = sub_18BC1E488();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0, &unk_18BC472F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v62 = sub_18BC1E8B8();
  v11 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18BC1E8D8();
  v65 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9530, &unk_18BC4D960);
  sub_18BC20B18();
  v57 = v16;
  sub_18BC1EC38();
  v63 = *MEMORY[0x1E6968DF0];
  v53 = *(v11 + 104);
  v66 = v11 + 104;
  v51 = v13;
  v53(v13);
  sub_18BC1E8F8();
  v22 = *(v21 + 56);
  v52 = v21 + 56;
  v61 = v22;
  v22(v10, 1, 1, v20);
  LOBYTE(v69) = 0;
  v23 = sub_18BC1DF68();
  v58 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v59 = v24 + 56;
  v60 = v25;
  v26 = v54;
  v25(v54, 1, 1, v23);
  v25(v64, 1, 1, v23);
  v55 = *MEMORY[0x1E695A4F8];
  v50 = *(v67 + 104);
  v67 += 104;
  v50(v56);
  sub_18BB1D594();
  v27 = v26;
  v47 = sub_18BC1E0F8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6E80, &qword_18BC47088);
  v49 = v19;
  sub_18BC20B18();
  sub_18BC1EC38();
  v28 = v51;
  v29 = v53;
  (v53)(v51, v63, v62);
  v30 = v28;
  sub_18BC1E8F8();
  v44 = v10;
  v61(v10, 1, 1, v65);
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v31 = v27;
  v32 = v58;
  v33 = v60;
  v60(v31, 1, 1, v58);
  v33(v64, 1, 1, v32);
  v34 = v56;
  v35 = v50;
  (v50)(v56, v55, v68);
  sub_18B9EC484();
  v46 = sub_18BC1E118();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9538, &unk_18BC4D970);
  sub_18BC20B18();
  sub_18BC1EC38();
  (v29)(v30, v63, v62);
  sub_18BC1E8F8();
  v36 = v44;
  v61(v44, 1, 1, v65);
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v37 = v54;
  v38 = v58;
  v39 = v60;
  v60(v54, 1, 1, v58);
  v39(v64, 1, 1, v38);
  v40 = v55;
  (v35)(v34, v55, v68);
  sub_18BA67C48();
  v64 = sub_18BC1E118();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6F38, &qword_18BC474C0);
  sub_18BC20B18();
  sub_18BC1EC38();
  (v53)(v51, v63, v62);
  sub_18BC1E8F8();
  v61(v36, 1, 1, v65);
  LOBYTE(v69) = 1;
  v41 = sub_18BC20EB8();
  (*(*(v41 - 8) + 56))(v48, 1, 1, v41);
  v60(v37, 1, 1, v58);
  (v50)(v34, v40, v68);
  sub_18BC1E188();
  return v47;
}

double sub_18BB20694(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_18BB206E0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048, &unk_18BC44E60);
  result = sub_18BC20288();
  *a1 = result;
  return result;
}

id sub_18BB20780(__n128 a1)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 24);
  }

  else
  {
    v4 = v1;
    sub_18BC200C8();
    sub_18B80B174();
    [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = sub_18BC200D8();
    v6 = *(v1 + 24);
    *(v4 + 24) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_18BB20834()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_18BB21C08();
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_18BB2088C(void *a1)
{
  v1 = [a1 sf_usesVibrantAppearance];
  v2 = objc_opt_self();
  v3 = &selRef_systemBackgroundColor;
  if (!v1)
  {
    v3 = &selRef_systemGroupedBackgroundColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_18BB208F8()
{

  return swift_deallocClassInstance();
}

id sub_18BB20988(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_18B80B174();
  v5 = a1;
  if (sub_18BC20048())
  {
    v6 = a3();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_18BB20A2C(uint64_t (*a1)(void))
{
  sub_18B80B174();
  if (sub_18BC20048())
  {
    return a1();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BB20A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4A60, &unk_18BC42730);
  v4[16] = swift_task_alloc();
  v5 = sub_18BC202C8();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4A68, &unk_18BC4DC00);
  v4[21] = swift_task_alloc();
  v4[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4A70, &unk_18BC42740);
  v4[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4A78, &unk_18BC4DC10);
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4A80, &qword_18BC42750);
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = sub_18BC20F28();
  v4[31] = sub_18BC20F18();
  v9 = sub_18BC20ED8();
  v4[32] = v9;
  v4[33] = v8;

  return MEMORY[0x1EEE6DFA0](sub_18BB20CFC, v9, v8);
}

uint64_t sub_18BB20CFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[34] = Strong;
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    v0[35] = v3;
    if (v3)
    {
      v4 = v0[25];
      v5 = v0[26];
      v6 = v0[24];
      sub_18B80B174();
      sub_18BC20058();
      MEMORY[0x18CFFD160](v6);
      sub_18B7B0B08(&qword_1EA9D4A88, &qword_1EA9D4A68, &unk_18BC4DC00, MEMORY[0x1E69E86A0]);
      sub_18BC20F78();
      sub_18BC21C88();
      (*(v4 + 8))(v5, v6);
      sub_18BC21C98();
      v0[36] = OBJC_IVAR____SFTipsCoordinator_webSearchTipAvailable;
      swift_beginAccess();
      v7 = sub_18BC20F18();
      v0[37] = v7;
      if (v7)
      {
        swift_getObjectType();
        v8 = sub_18BC20ED8();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      v0[38] = v8;
      v0[39] = v10;

      return MEMORY[0x1EEE6DFA0](sub_18BB20FA4, v8, v10);
    }
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_18BB20FA4()
{
  v1 = v0[37];
  v0[40] = sub_18BC21C78();
  sub_18B7B0B08(&qword_1EA9D4A90, &qword_1EA9D4A70, &unk_18BC42740, MEMORY[0x1E69E8690]);
  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = sub_18BB210A8;
  v3 = v0[16];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_18BB210A8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_18BB21380;
  }

  else
  {
    (*(v2 + 320))();
    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_18BB211D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_18BB211D0()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_18B9AF388(v3);
    v4 = v0[32];
    v5 = v0[33];

    return MEMORY[0x1EEE6DFA0](sub_18BB21398, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[19], v3, v1);
    v6 = sub_18BC21C88();
    v0[42] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[43] = v8;
    *v8 = v0;
    v8[1] = sub_18BB2147C;
    v9 = v0[19];

    return (v11)(v0 + 44, v9);
  }
}

uint64_t sub_18BB21398()
{
  v1 = v0[34];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];

  swift_unknownObjectRelease();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_18BB2147C()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);

  (*(v3 + 8))(v2, v4);
  *(v1 + 353) = *(v1 + 352);
  v5 = *(v1 + 312);
  v6 = *(v1 + 304);

  return MEMORY[0x1EEE6DFA0](sub_18BB21628, v6, v5);
}

uint64_t sub_18BB21628()
{

  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return MEMORY[0x1EEE6DFA0](sub_18BB2168C, v1, v2);
}

uint64_t sub_18BB2168C()
{
  v18 = v0;
  if (qword_1EA9D22C0 != -1)
  {
    swift_once();
  }

  v1 = sub_18BC1F2C8();
  __swift_project_value_buffer(v1, qword_1EA9F7EF8);
  v2 = sub_18BC1F2A8();
  v3 = sub_18BC21218();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 353);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 0x6C62616C69617661;
    }

    else
    {
      v7 = 0x616C696176616E75;
    }

    if (v4)
    {
      v8 = 0xE900000000000065;
    }

    else
    {
      v8 = 0xEB00000000656C62;
    }

    v9 = sub_18B7EA850(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_18B7AC000, v2, v3, "Web search tip became %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x18CFFEEE0](v6, -1, -1);
    MEMORY[0x18CFFEEE0](v5, -1, -1);
  }

  v10 = *(v0 + 288);
  if (*(v0 + 353) == 1)
  {
    *(*(v0 + 272) + v10) = 1;
  }

  else
  {
    v11 = *(v0 + 280);
    *(*(v0 + 272) + v10) = 0;
    [v11 webSearchTipDidBecomeUnavailable];
  }

  v12 = sub_18BC20F18();
  *(v0 + 296) = v12;
  if (v12)
  {
    swift_getObjectType();
    v13 = sub_18BC20ED8();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *(v0 + 304) = v13;
  *(v0 + 312) = v15;

  return MEMORY[0x1EEE6DFA0](sub_18BB20FA4, v13, v15);
}

Swift::Void __swiftcall SFTipsCoordinator.invalidateWebSearchTip()()
{
  v1 = v0;
  v2 = sub_18BC201C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC202C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  sub_18B80B174();
  sub_18BC20088();
  (*(v7 + 32))(v9, v12, v6);
  LODWORD(v12) = (*(v7 + 88))(v9, v6);
  v13 = *MEMORY[0x1E6982B68];
  (*(v7 + 8))(v9, v6);
  if (v12 != v13)
  {
    if (qword_1EA9D22C0 != -1)
    {
      swift_once();
    }

    v14 = sub_18BC1F2C8();
    __swift_project_value_buffer(v14, qword_1EA9F7EF8);
    v15 = sub_18BC1F2A8();
    v16 = sub_18BC21218();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_18B7AC000, v15, v16, "Invalidate web search tip", v17, 2u);
      MEMORY[0x18CFFEEE0](v17, -1, -1);
    }

    (*(v3 + 104))(v5, *MEMORY[0x1E6982AE0], v2);
    sub_18BC20038();
    (*(v3 + 8))(v5, v2);
    *(*(v1 + OBJC_IVAR____SFTipsCoordinator_webSearchTipManager) + 16) = 0;
  }
}

id sub_18BB21C08()
{
  v0 = sub_18BC1F688();
  MEMORY[0x1EEE9AC00](v0);
  v8 = &type metadata for WebSearchTip;
  v9 = sub_18B80B174();
  v1 = objc_allocWithZone(sub_18BC200F8());
  v2 = sub_18BC20108();
  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v9 = sub_18BB2088C;
  v10 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18BA89084;
  v8 = &block_descriptor_46;
  v4 = _Block_copy(aBlock);
  [v3 initWithDynamicProvider_];
  _Block_release(v4);

  sub_18BC200E8();
  v5 = v2;
  sub_18BC21528();
  sub_18BC1F5B8();
  sub_18BC21538();

  return v5;
}

uint64_t _s12MobileSafari17SFTipsCoordinatorC030donatePerformSearchFromDefaultG18EngineWebPageEventyyF_0(__n128 a1)
{
  v1 = sub_18BC202C8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  sub_18B80B174();
  sub_18BC20088();
  (*(v2 + 32))(v4, v7, v1);
  LODWORD(v7) = (*(v2 + 88))(v4, v1);
  v8 = *MEMORY[0x1E6982B68];
  result = (*(v2 + 8))(v4, v1);
  if (v7 != v8)
  {
    if (qword_1EA9D22C0 != -1)
    {
      swift_once();
    }

    v10 = sub_18BC1F2C8();
    __swift_project_value_buffer(v10, qword_1EA9F7EF8);
    v11 = sub_18BC1F2A8();
    v12 = sub_18BC21218();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_18B7AC000, v11, v12, "Donate event for web search tip", v13, 2u);
      MEMORY[0x18CFFEEE0](v13, -1, -1);
    }

    if (qword_1EA9D2440 != -1)
    {
      swift_once();
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048, &unk_18BC44E60);
    __swift_project_value_buffer(v14, qword_1EA9F82C8);
    return sub_18BC20268();
  }

  return result;
}

uint64_t sub_18BB22028(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B987B10;

  return sub_18BB20A84(a1, v4, v5, v6);
}

id sub_18BB2241C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BlurrableImageView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_18BB224D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 216);
  v4 = *(v1 + 176);
  v5 = *(v1 + *(_s6LayoutVMa(0) + 72));
  Width = CGRectGetWidth(*v1);
  v7 = sub_18B7F3A2C(MEMORY[0x1E69E7CC0]);
  v8 = 0;
  if ((*(v1 + 209) & 1) == 0)
  {
    v8 = *(v1 + 48);
  }

  v14 = 0;
  v15 = v5;
  v16 = 0;
  sub_18BB12124();
  sub_18BC21A68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v7;
  result = sub_18B7F3BB8(v12, 0x736E496863756F74, 0xEB00000000737465, isUniquelyReferenced_nonNull_native);
  v11 = v13;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = Width;
  *(a1 + 24) = v3 + v4 + v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v11;
  return result;
}

uint64_t sub_18BB225F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 75);
  if (v3 == 1)
  {
    v4 = *(v1 + 216);
    v5 = *(v1 + 168) + v4;
    if (*(v1 + 56))
    {
      v6 = v5 + 0.0;
      v7 = *v1;
      v8 = *(v1 + 8);
      v9 = *(v1 + 16);
      v10 = *(v1 + 24);
      v46.origin.x = *v1;
      v46.origin.y = v8;
      v46.size.width = v9;
      v46.size.height = v10;
      Height = CGRectGetHeight(v46);
      v12 = v10;
      v13 = v9;
      v14 = v8;
      v15 = Height;
      v16 = v7;
      v40 = v6 + (1.0 - *(v1 + 280)) * (v15 * 0.5 - v6);
      v17 = 1;
      goto LABEL_9;
    }

    v17 = 0;
    v18 = 152;
  }

  else
  {
    v4 = *(v1 + 216);
    v5 = v4 + 0.0;
    v17 = *(v1 + 56);
    v18 = 160;
  }

  v19 = *(v1 + v18);
  if (v4 > v19)
  {
    v19 = v4;
  }

  v40 = v5 + v19;
  v16 = *v1;
  v14 = *(v1 + 8);
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
LABEL_9:
  Width = CGRectGetWidth(*&v16);
  v21 = v3 & v17;
  if ((v3 & v17) == 1 && *(v1 + 248) > 0.0)
  {
    UIEdgeInsetsMakeWithEdges();
    v23 = v22;
    v25 = v24;
  }

  else
  {
    v23 = *MEMORY[0x1E69DDCE0];
    v25 = *(MEMORY[0x1E69DDCE0] + 8);
  }

  v26 = sub_18B7F3A2C(MEMORY[0x1E69E7CC0]);
  v27 = 0.0;
  v28 = 0;
  if ((*(v1 + *(_s6LayoutVMa(0) + 68)) & 1) == 0)
  {
    v28 = *(v1 + 48);
  }

  if ((v21 & 1) == 0)
  {
    v29 = 160;
    if (v3)
    {
      v29 = 152;
    }

    if (v4 > *(v1 + v29))
    {
      v27 = v4;
    }

    else
    {
      v27 = *(v1 + v29);
    }
  }

  v30 = UIEdgeInsetsInsetRect(0.0, 0.0, Width, v40, v23, v25);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v43 = 0;
  v44 = v27;
  v45 = 0;
  sub_18BB12124();
  sub_18BC21A68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v26;
  result = sub_18B7F3BB8(v41, 0x736E496863756F74, 0xEB00000000737465, isUniquelyReferenced_nonNull_native);
  v39 = v42;
  *a1 = v30;
  *(a1 + 8) = v32;
  *(a1 + 16) = v34;
  *(a1 + 24) = v36;
  *(a1 + 32) = 0;
  *(a1 + 40) = v28;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v39;
  return result;
}

uint64_t sub_18BB22868@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18BB22CAC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_18B7F3A2C(MEMORY[0x1E69E7CC0]);
  if (*(v1 + 72))
  {
    if (*(v1 + 56))
    {
      v11 = 1.0;
      goto LABEL_7;
    }

LABEL_6:
    v11 = *(v1 + 40);
    goto LABEL_7;
  }

  v11 = 0.0;
  if (*(v1 + 79) == 1 && (*(v1 + *(_s6LayoutVMa(0) + 64)) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_18BB12124();
  v18 = 0;
  v19 = 0;
  v17 = 0;
  sub_18BC21A68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v10;
  result = sub_18B7F3BB8(v15, 0x736E496863756F74, 0xEB00000000737465, isUniquelyReferenced_nonNull_native);
  v14 = v16;
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = v11;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v14;
  return result;
}

uint64_t sub_18BB229C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 176);
  v4 = *(v1 + 216);
  v5 = *(v1 + 77);
  Width = CGRectGetWidth(*v1);
  v7 = sub_18B7F3A2C(MEMORY[0x1E69E7CC0]);
  if (*(v1 + 209) == 1)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  if (!v5)
  {
    v4 = v4 - (v3 + v4);
  }

  sub_18B7F3B64();
  sub_18BC21A68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v7;
  result = sub_18B7F3BB8(&v12, 0x6964615272756C62, 0xEA00000000007375, isUniquelyReferenced_nonNull_native);
  v11 = v13;
  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = Width;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v11;
  return result;
}

uint64_t sub_18BB22ADC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 192);
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v20.origin.x = *v1;
  v20.origin.y = v5;
  v20.size.width = v6;
  v20.size.height = v7;
  MaxY = CGRectGetMaxY(v20);
  v9 = *(v1 + 232);
  v10 = MaxY - v9 - v3;
  if (*(v1 + 272) == 1 && *(v1 + 57) == 1)
  {
    v11 = 44.0;
    if (*(v1 + 72) & *(v1 + 56))
    {
      v11 = 54.0;
    }

    if (*(v1 + 79) == 1)
    {
      v11 = v3 + v11 + *(v1 + 128);
    }
  }

  else
  {
    if (*(v1 + 79))
    {
      goto LABEL_11;
    }

    v11 = 44.0;
    if (*(v1 + 72) & *(v1 + 56))
    {
      v11 = 54.0;
    }
  }

  v10 = v10 + v9 + v11;
LABEL_11:
  v21.origin.x = v4;
  v21.origin.y = v5;
  v21.size.width = v6;
  v21.size.height = v7;
  Width = CGRectGetWidth(v21);
  v13 = sub_18B7F3A2C(MEMORY[0x1E69E7CC0]);
  if (*(v1 + *(_s6LayoutVMa(0) + 64)))
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 1.0;
  }

  sub_18B7F3B64();
  sub_18BC21A68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v13;
  result = sub_18B7F3BB8(&v18, 0x6964615272756C62, 0xEA00000000007375, isUniquelyReferenced_nonNull_native);
  v17 = v19;
  *a1 = 0;
  *(a1 + 8) = v10;
  *(a1 + 16) = Width;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = v14;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v17;
  return result;
}

double sub_18BB22CAC()
{
  if (*(v0 + 272) == 1 && *(v0 + 57) == 1)
  {
    v1 = *(v0 + 56);
    v2 = 0.0;
  }

  else
  {
    if (*(v0 + 72) == 1)
    {
      v1 = *(v0 + 56);
      v3 = 44.0;
      if (v1)
      {
        v3 = 54.0;
      }

      if (*(v0 + 79) == 1)
      {
        v3 = *(v0 + 192) + v3 + *(v0 + 128);
      }

      v4 = *(v0 + 232);
      v5 = v3 + v4;
      v6 = 0.0;
      if ((*(v0 + 56) & 1) == 0)
      {
        v6 = v4 + *(v0 + 128) + *(v0 + 192);
      }
    }

    else
    {
      v7 = *(v0 + 232);
      v8 = *(v0 + 192);
      v6 = 0.0;
      v1 = *(v0 + 56);
      if ((v1 & 1) == 0)
      {
        v6 = v7 + v8 + *(v0 + 128);
      }

      v5 = v7 + v8;
    }

    v2 = v5 + v6;
  }

  v9 = v1 ^ 1 | *(v0 + 57);
  v10 = *v0;
  v11 = *(v0 + 8);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  if ((v9 & 1) == 0)
  {
    v2 = v2 + (1.0 - *(v0 + 280)) * (CGRectGetHeight(*v0) * 0.5 - v2);
  }

  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = v12;
  v23.size.height = v13;
  v14 = CGRectGetMaxY(v23) - v2;
  if ((*(v0 + 79) & 1) == 0)
  {
    v15 = 44.0;
    if ((v1 & *(v0 + 72)) != 0)
    {
      v15 = 54.0;
    }

    v14 = v14 + *(v0 + 232) + v15;
  }

  v24.origin.x = v10;
  v24.origin.y = v11;
  v24.size.width = v12;
  v24.size.height = v13;
  Width = CGRectGetWidth(v24);
  if ((v9 & 1) != 0 || *(v0 + 248) <= 0.0)
  {
    v18 = *MEMORY[0x1E69DDCE0];
    v20 = *(MEMORY[0x1E69DDCE0] + 8);
  }

  else
  {
    UIEdgeInsetsMakeWithEdges();
    v18 = v17;
    v20 = v19;
  }

  return UIEdgeInsetsInsetRect(0.0, v14, Width, v2, v18, v20);
}

void sub_18BB22EB0()
{
  v1 = *(v0 + 24);
  v2 = 1.0 - *(v0 + 16);
  v3 = sub_18BA188F4();
  [v3 setValue_];

  v4 = _SFUninterpolate(v2, 0.2, 0.9);
  v5 = v1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration;
  v26[0] = *(v1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
  v7 = *(v1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 32);
  v6 = *(v1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 48);
  v8 = *(v1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 16);
  *(v27 + 9) = *(v1 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 57);
  v26[2] = v7;
  v27[0] = v6;
  v26[1] = v8;
  v9 = *&v26[0];
  v10 = *(v5 + 24);
  v11 = *(v5 + 56);
  v23 = *(v5 + 40);
  v24 = v11;
  v25 = *(v5 + 72);
  v21 = *(v5 + 8);
  v22 = v10;
  if (*&v26[0])
  {
    if (v4 <= 0.0)
    {
      v4 = 0.0;
    }

    if (v4 <= 1.0)
    {
      v12 = v4;
    }

    else
    {
      v12 = 1.0;
    }

    v17 = v22;
    v18 = v23;
    v15 = *&v26[0];
    v19 = v24;
    v20 = v25;
    v16 = v21;
    sub_18B99B970(v26, v14);
    v13 = v9;
    sub_18B99B9E0(&v15);
    [v13 setAlpha_];
  }

  else
  {
    v15 = 0;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    sub_18B99B970(v26, v14);
    sub_18B99B9E0(&v15);
  }
}

uint64_t sub_18BB23030()
{

  return swift_deallocClassInstance();
}

void sub_18BB23090()
{
  v1 = sub_18BA188F4();
  [v1 setValue_];
}

double sub_18BB2310C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[4];
  v6 = a1[5];
  v8 = v2 + *a2;
  swift_beginAccess();
  *v8 = v4;
  *(v8 + 8) = v5;
  *(v8 + 16) = *(a1 + 1);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;

  return result;
}

void sub_18BB23218(uint64_t *a1, int a2)
{
  v95 = a2;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v87 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v88 = &v84 - v5;
  v8 = *((v7 & v6) + 0x50);
  v100 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v84 - v10;
  v12 = *(v11 + 96);
  v15 = *((v14 & v13) + 0x70);
  v16 = *((v14 & v13) + 0x78);
  *&v133 = v8;
  v98 = v17;
  *(&v133 + 1) = v17;
  v94 = v12;
  *(v18 + 64) = v12;
  v96 = v15;
  *&v135 = v15;
  v93 = v16;
  *(&v135 + 1) = v16;
  v99 = type metadata accessor for SFFluidCollectionView.Element(0, &v133);
  v113 = *(v99 - 1);
  MEMORY[0x1EEE9AC00](v99);
  v20 = &v84 - v19;
  v21 = *a1;
  v22 = a1[1];
  v24 = a1[2];
  v23 = a1[3];
  v26 = a1[4];
  v25 = a1[5];
  sub_18B8496E4(&v133);
  v97 = v133;
  v91 = v134;
  v92 = *(&v133 + 1);
  v89 = *(&v135 + 1);
  v27 = v135;
  v90 = *(&v134 + 1);
  *&v133 = v21;
  *(&v133 + 1) = v22;
  *&v134 = v24;
  *(&v134 + 1) = v23;
  *&v135 = v26;
  *(&v135 + 1) = v25;
  v111 = v26;
  v28 = v22;
  v29 = v21;
  v30 = v27;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  v112 = v23;
  sub_18BC1E3F8();
  sub_18BB230F4(&v133);
  v31 = v2;
  v32 = v95;
  v33 = *(v31 + qword_1EA9D95F0);
  v102 = v8;
  if (v33)
  {
    v85 = v30;
    v34 = *(v31 + qword_1EA9D95F0 + 8);
    v35 = v33;
    v114 = v31;
    swift_storeEnumTagMultiPayload();
    v107 = v28;
    v108 = v29;
    *&v133 = v29;
    *(&v133 + 1) = v28;
    v105 = v25;
    v106 = v24;
    *&v134 = v24;
    *(&v134 + 1) = v112;
    *&v135 = v111;
    *(&v135 + 1) = v25;
    v36 = sub_18B824D48(v35, v34);
    v109 = v34;
    v37 = v35(v20, &v133, v36);
    v39 = v113 + 8;
    v38 = *(v113 + 8);
    v40 = v99;
    v38(v20, v99);
    swift_storeEnumTagMultiPayload();
    v41 = qword_1EA9D95C8;
    swift_beginAccess();
    *&v133 = v8;
    *(&v133 + 1) = v98;
    v134 = v94;
    *&v135 = v96;
    *(&v135 + 1) = v93;
    v42 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot(0, &v133);
    v101 = v41;
    v103 = v42;
    SFFluidCollectionView.DataSource.Snapshot.setSupplementaries(_:for:)(v37, v20, v42);
    v113 = v39;
    v104 = v38;
    v38(v20, v40);
    swift_endAccess();

    sub_18BB230E8(&v133);
    v84 = v133;
    v43 = v135;
    sub_18BC1E1A8();

    v44 = *(&v43 + 1);
    v45 = *(*(&v43 + 1) + 16);
    v46 = v40;
    v110 = v35;
    if (v45)
    {
      v84 = v43;
      v47 = 0;
      v100 += 4;
      v48 = v86;
      do
      {
        v49 = v44;
        v50 = v45;
        sub_18BC21C08();
        ++v47;
        (*v100)(v20, v48, v8);
        swift_storeEnumTagMultiPayload();
        *&v133 = v108;
        *(&v133 + 1) = v107;
        *&v134 = v106;
        *(&v134 + 1) = v112;
        *&v135 = v111;
        *(&v135 + 1) = v105;
        v51 = v110(v20, &v133);
        swift_beginAccess();
        SFFluidCollectionView.DataSource.Snapshot.setSupplementaries(_:for:)(v51, v20, v103);
        swift_endAccess();
        v8 = v102;

        v104(v20, v46);
        v45 = v50;
        v44 = v49;
      }

      while (v50 != v47);
    }

    v52 = v20;
    v53 = v46;

    sub_18BB230E8(&v133);
    v54 = *(&v133 + 1);
    v55 = v134;
    sub_18BC1E1A8();

    v86 = v54;

    v56 = *(v55 + 16);
    v57 = v98;
    v58 = v88;
    v59 = v109;
    if (v56)
    {
      v60 = 0;
      v99 = (v87 + 32);
      v100 = v56;
      do
      {
        sub_18BC21C08();
        v60 = (v60 + 1);
        (*v99)(v52, v58, v57);
        swift_storeEnumTagMultiPayload();
        *&v133 = v108;
        *(&v133 + 1) = v107;
        *&v134 = v106;
        *(&v134 + 1) = v112;
        *&v135 = v111;
        *(&v135 + 1) = v105;
        v61 = v53;
        v62 = v58;
        v63 = v110(v52, &v133);
        swift_beginAccess();
        SFFluidCollectionView.DataSource.Snapshot.setSupplementaries(_:for:)(v63, v52, v103);
        swift_endAccess();
        v58 = v62;
        v53 = v61;
        v59 = v109;

        v104(v52, v61);
      }

      while (v100 != v60);
    }

    sub_18B7B171C(v110, v59);

    v32 = v95;
    v8 = v102;
    v30 = v85;
    v31 = v114;
  }

  v64 = v96;
  v65 = v98;
  v66 = v31;
  if (*(v31 + qword_1EA9D95E0) == 1)
  {

    *(v66 + qword_1EA9D95E8) = (*(v66 + qword_1EA9D95E8) | v32) & 1;
  }

  else
  {
    sub_18BB230E8(&v133);
    v115 = v133;
    v116 = v134;
    v117 = v135;
    sub_18BB23100(&v115);
    v67 = qword_1EA9D95D0;
    swift_beginAccess();
    v68 = *(v66 + v67);
    sub_18BC1E3F8();
    *&v133 = v8;
    *(&v133 + 1) = v65;
    v134 = v94;
    *&v135 = v64;
    *(&v135 + 1) = v93;
    type metadata accessor for SFFluidCollectionView.DataSource.ShadowUpdateSource(0, &v133);
    v69 = v30;
    if (sub_18BC20E28())
    {
      v70 = qword_1EA9D95C0;
      v71 = 4;
      do
      {
        v72 = v71 - 4;
        v73 = sub_18BC20E08();
        sub_18BC20DC8();
        if (v73)
        {
          v74 = *(v68 + 8 * v71);
          sub_18BC1E1A8();
          v75 = __OFADD__(v72, 1);
          v76 = v71 - 3;
          if (v75)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v74 = sub_18BC21B08();
          v75 = __OFADD__(v72, 1);
          v76 = v71 - 3;
          if (v75)
          {
LABEL_19:
            __break(1u);
            break;
          }
        }

        swift_beginAccess();
        (*(*v74 + 168))(v66 + v70);
        swift_endAccess();

        ++v71;
      }

      while (v76 != sub_18BC20E28());
    }

    *&v115 = v97;
    *(&v115 + 1) = v92;
    *&v116 = v91;
    *(&v116 + 1) = v90;
    *&v117 = v69;
    *(&v117 + 1) = v89;
    sub_18B8496E4(&v129);
    v126[0] = v129;
    v126[1] = v130;
    v127 = v131;
    v128 = v132;
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    v77 = v102;
    v78 = v96;
    v79 = v93;
    sub_18BB2590C(&v115, v126, v102, v98, v94, *(&v94 + 1), v96, v93, &v133);
    Strong = swift_unknownObjectUnownedLoadStrong();
    if (Strong)
    {
      v81 = Strong;
      v123 = v141;
      v124 = v142;
      v125[0] = v143[0];
      *(v125 + 9) = *(v143 + 9);
      v119 = v137;
      v120 = v138;
      v121 = v139;
      v122 = v140;
      v115 = v133;
      v116 = v134;
      v117 = v135;
      v118 = v136;
      sub_18BB55554(&v115, v95 & 1);

      *&v82 = v77;
      *(&v82 + 1) = v98;
      v129 = v82;
      v130 = v94;
      v131 = v78;
      v132 = v79;
      v83 = type metadata accessor for SFFluidCollectionView.DataSource.Transaction(0, &v129);
      (*(*(v83 - 8) + 8))(&v133, v83);
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_18BB23D68(void (*a1)(void))
{
  v2 = qword_1EA9D95E0;
  if (*(v1 + qword_1EA9D95E0))
  {
    v3 = 1;
  }

  else
  {
    *(v1 + qword_1EA9D95E8) = 0;
    v2 = qword_1EA9D95E0;
    v3 = *(v1 + qword_1EA9D95E0);
  }

  *(v1 + v2) = 1;
  a1();
  *(v1 + qword_1EA9D95E0) = v3;
  if ((*(v1 + qword_1EA9D95E0) & 1) == 0)
  {
    sub_18BB230E8(v6);
    v5[0] = v6[0];
    v5[1] = v6[1];
    v5[2] = v6[2];
    v5[3] = v6[3];
    v5[4] = v6[4];
    v5[5] = v6[5];
    sub_18BB23218(v5, *(v1 + qword_1EA9D95E8));
  }

  return result;
}

void sub_18BB23E68(uint64_t a1)
{
  v3 = (*MEMORY[0x1E69E7D40] & *v1);
  v7 = a1;
  swift_beginAccess();
  sub_18BC1E1A8();
  v4 = v3[6];
  v6[0] = v3[5];
  v6[1] = v4;
  v6[2] = v3[7];
  type metadata accessor for SFFluidCollectionView.DataSource.ShadowUpdateSource(255, v6);
  sub_18BC20E78();
  sub_18BC20E48();
  swift_endAccess();
  v5 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_18BC1E1A8();
  sub_18BBAA1EC(sub_18BB24330, v5);

  sub_18BB23FA4(a1, 0);
}

void sub_18BB23FA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = (*MEMORY[0x1E69E7D40] & *v2);
  v6 = qword_1EA9D95D0;
  swift_beginAccess();
  *&v8[0] = *(v3 + v6);
  sub_18BC1E3F8();
  v7 = v5[6];
  v9 = v5[5];
  v10 = v7;
  v11 = v5[7];
  type metadata accessor for SFFluidCollectionView.DataSource.ShadowUpdateSource(255, &v9);
  sub_18BC20E78();
  swift_getWitnessTable();
  LOBYTE(v5) = sub_18BC20D48();

  if (v5)
  {
    if (*(v3 + qword_1EA9D95E0) == 1)
    {
      *(v3 + qword_1EA9D95E8) = (*(v3 + qword_1EA9D95E8) | a2) & 1;
    }

    else
    {
      sub_18BB230E8(&v9);
      v8[0] = v9;
      v8[1] = v10;
      v8[2] = v11;
      sub_18BB23218(v8, a2 & 1);
    }
  }

  else
  {
    __break(1u);
  }
}

id SFFluidCollectionView.DataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFFluidCollectionView.DataSource.__deallocating_deinit()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  v2 = v1[6];
  v5[0] = v1[5];
  v5[1] = v2;
  v5[2] = v1[7];
  v3 = type metadata accessor for SFFluidCollectionView.DataSource(0, v5);
  v6.receiver = v0;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_18BB24224(uint64_t a1)
{

  swift_unknownObjectUnownedDestroy();

  v2 = *(a1 + qword_1EA9D95F0);
  v3 = *(a1 + qword_1EA9D95F0 + 8);

  return sub_18B7B171C(v2, v3);
}

void sub_18BB24330(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18BB23FA4(a1, a2);
}

uint64_t SFFluidCollectionView.DataSource.Snapshot.allItems(between:and:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18BC1F098();
  if (v3)
  {
    return sub_18BC20DE8();
  }

  sub_18BC1F098();
  if (v4)
  {
    return sub_18BC20DE8();
  }

  sub_18BC1F0E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9678, &qword_18BC4DDB0);
  swift_getWitnessTable();
  sub_18BB32D74();
  sub_18BC211A8();
  sub_18BC1F068();
  swift_getWitnessTable();
  return sub_18BC20E98();
}

uint64_t SFFluidCollectionView.DataSource.Snapshot.setSupplementaries(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v4 = *(a3 + 24);
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v11[3].n128_u64[0];
  v12 = v11[3].n128_u64[1];
  *&v14 = v7;
  *(&v14 + 1) = v4;
  v38 = v11[2];
  v39[0] = v14;
  v39[1] = v38;
  v31[1] = v13;
  v40 = v13;
  v41 = v12;
  v35 = v12;
  v15 = type metadata accessor for SFFluidCollectionView.Element(0, v39);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v31 - v21;
  v23 = *(v16 + 16);
  v36 = a2;
  v23(v31 - v21, a2, v15, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v25 = v32;
    (*(v32 + 32))(v10, v22, v7);
    v22 = sub_18BC1F0C8();
    v26 = *(v25 + 8);
    v16 = v25 + 8;
    EnumCaseMultiPayload = v26(v10, v7);
    if ((v22 & 1) == 0)
    {
      __break(1u);
LABEL_5:
      if (EnumCaseMultiPayload == 2)
      {
        (*(v16 + 8))(v22, v15);
      }
    }

LABEL_8:
    (v23)(v18, v36, v15);
    *&v39[0] = v37;
    sub_18BC210E8();
    sub_18BC1E3F8();
    swift_getWitnessTable();
    sub_18BC209F8();
    return sub_18BC20A38();
  }

  v28 = v33;
  v27 = v34;
  (*(v34 + 32))(v33, v22, v4);
  v29 = sub_18BC1F0C8();
  result = (*(v27 + 8))(v28, v4);
  if (v29)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

int64x2_t SFFluidCollectionView.DataSource.Snapshot.appendSection(_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  sub_18BC1F0E8();
  sub_18BC1F0B8();
  v5 = *v3;
  v6 = *(*v4 + 2);
  if (v6)
  {
    v7 = *&v5[16 * v6 + 24];
  }

  else
  {
    v7 = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_18B858E00(0, v6 + 1, 1, v5);
  }

  v9 = *(v5 + 2);
  v8 = *(v5 + 3);
  if (v9 >= v8 >> 1)
  {
    v5 = sub_18B858E00((v8 > 1), v9 + 1, 1, v5);
  }

  *(v5 + 2) = v9 + 1;
  result = vdupq_n_s64(v7);
  *&v5[16 * v9 + 32] = result;
  *v4 = v5;
  return result;
}

void SFFluidCollectionView.DataSource.Snapshot.appendItems<A>(_:into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_18BC1F098();
  if ((v12 & 1) == 0)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *(*v5 + 16))
    {
      v14 = *v5 + 16 * v11;
      v16 = *(v14 + 32);
      v15 = *(v14 + 40);
      v13 = (v15 - v16);
      if (!__OFSUB__(v15, v16))
      {
        goto LABEL_6;
      }

LABEL_11:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  v13 = 0;
LABEL_6:

  SFFluidCollectionView.DataSource.Snapshot.insertItems<A>(_:at:in:)(a1, v13, a2, a3, a4, a5);
}

uint64_t SFFluidCollectionView.DataSource.Snapshot.sectionItemCounts.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_18B85D32C(0, v2, 0);
    result = v9;
    v4 = (v1 + 40);
    while (1)
    {
      v5 = *(v4 - 1);
      v6 = *v4 - v5;
      if (__OFSUB__(*v4, v5))
      {
        break;
      }

      v10 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        sub_18B85D32C((v7 > 1), v8 + 1, 1);
        result = v10;
      }

      v4 += 2;
      *(result + 16) = v8 + 1;
      *(result + 8 * v8 + 32) = v6;
      if (!--v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SFFluidCollectionView.DataSource.Snapshot.item(offsetFrom:by:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 24);
  result = sub_18BC1F098();
  if (v8)
  {
    v9 = *(*(v6 - 8) + 56);

    return v9(a4, 1, 1, v6);
  }

  else
  {
    v10 = __OFADD__(result, a2);
    v11 = result + a2;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      sub_18BC21BF8();
      swift_getWitnessTable();
      sub_18BC21118();
      if (v11 >= v13 && v11 < v14)
      {
        sub_18BC21C08();
        return (*(*(v6 - 8) + 56))(a4, 0, 1, v6);
      }

      else
      {
        return (*(*(v6 - 8) + 56))(a4, 1, 1, v6);
      }
    }
  }

  return result;
}

uint64_t SFFluidCollectionView.DataSource.Snapshot.deleteItems<A>(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2[3];
  v9 = sub_18BC21848();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v73[-v10];
  v13 = MEMORY[0x1EEE9AC00](v12);
  (*(v15 + 16))(&v73[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, a3, v13);
  v16 = a2[6];
  v17 = *(v16 + 8);
  v18 = sub_18BC210F8();
  v19 = sub_18BA64CDC(MEMORY[0x1E69E7CC0]);
  v79 = a4;
  v80 = a2;
  v82 = v19;
  v77 = v16;
  v78 = a3;
  v84 = v17;
  v76 = v18;
  if ((v18 & 0xC000000000000001) != 0)
  {
    sub_18BC1E3F8();
    sub_18BC21958();
    sub_18BC210A8();
    v20 = v87;
    v21 = v88;
    v22 = v89;
    v83 = v90;
    v23 = v91;
  }

  else
  {
    v24 = -1 << *(v18 + 32);
    v21 = v18 + 56;
    v22 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = v26 & *(v18 + 56);
    sub_18BC1E3F8();
    v83 = 0;
    v20 = v18;
  }

  v81 = 0;
  v75 = v22;
  v27 = (v22 + 64) >> 6;
  if ((v20 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_38:
  if (sub_18BC219D8())
  {
    sub_18BC21FA8();
    swift_unknownObjectRelease();
    for (i = *(v8 - 8); ; (*(i + 16))(v11, *(v20 + 48) + *(i + 72) * (v29 | (v28 << 6)), v8))
    {
      (*(i + 56))(v11, 0, 1, v8);
      v31 = sub_18BC1F098();
      v33 = v32;
      (*(i + 8))(v11, v8);
      if (v33)
      {
        if (v20 < 0)
        {
          goto LABEL_38;
        }

        goto LABEL_13;
      }

      v35 = *(*v85 + 16);
      if (!v35)
      {
        goto LABEL_55;
      }

      v36 = 0;
      v37 = (*v85 + 40);
      while (v31 < *(v37 - 1) || v31 >= *v37)
      {
        v37 += 2;
        if (v35 == ++v36)
        {
          goto LABEL_55;
        }
      }

      sub_18B7B171C(v81, 0);
      v39 = v82;
      LODWORD(v81) = swift_isUniquelyReferenced_nonNull_native();
      v86 = v39;
      v41 = sub_18BB8B348(v36);
      v42 = *(v39 + 16);
      v43 = (v40 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_57;
      }

      if (*(v39 + 24) >= v44)
      {
        if (v81)
        {
          if (v40)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v74 = v40;
          sub_18BB29C24();
          v82 = v86;
          if (v74)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        v74 = v40;
        sub_18BB2E5B4(v44, v81);
        v82 = v86;
        v45 = sub_18BB8B348(v36);
        if ((v74 & 1) != (v46 & 1))
        {
          goto LABEL_60;
        }

        v41 = v45;
        if (v74)
        {
          goto LABEL_36;
        }
      }

      v47 = v82;
      *(v82 + 8 * (v41 >> 6) + 64) |= 1 << v41;
      *(v47[6] + 8 * v41) = v36;
      *(v47[7] + 8 * v41) = 0;
      v48 = v47[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_59;
      }

      v47[2] = v50;
LABEL_36:
      v51 = *(v82 + 56);
      v52 = *(v51 + 8 * v41);
      v49 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v49)
      {
        goto LABEL_58;
      }

      *(v51 + 8 * v41) = v53;
      v81 = sub_18B87163C;
      if (v20 < 0)
      {
        goto LABEL_38;
      }

LABEL_13:
      if (!v23)
      {
        v34 = v83;
        while (1)
        {
          v28 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_54;
          }

          if (v28 >= v27)
          {
            goto LABEL_42;
          }

          v23 = *(v21 + 8 * v28);
          ++v34;
          if (v23)
          {
            v83 = v28;
            goto LABEL_10;
          }
        }
      }

      v28 = v83;
LABEL_10:
      v29 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      i = *(v8 - 8);
    }
  }

LABEL_42:
  (*(*(v8 - 8) + 56))(v11, 1, 1, v8);
  sub_18B7D2E34(v20);
  v54 = v80[2];
  v55 = v80[4];
  v56 = v80[5];
  v57 = v80[7];
  v58 = swift_allocObject();
  v58[2] = v54;
  v58[3] = v8;
  v59 = v77;
  v60 = v78;
  v58[4] = v55;
  v58[5] = v60;
  v58[6] = v56;
  v58[7] = v59;
  v61 = v79;
  v58[8] = v57;
  v58[9] = v61;
  v58[10] = v76;
  sub_18BC1F0E8();
  sub_18BC1F0D8();

  v62 = 0;
  v63 = v82;
  v64 = v82 + 64;
  v65 = 1 << *(v82 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & *(v82 + 64);
  v68 = (v65 + 63) >> 6;
  if (v67)
  {
    while (1)
    {
      v69 = v62;
LABEL_49:
      v70 = __clz(__rbit64(v67)) | (v69 << 6);
      v71 = *(*(v63 + 56) + 8 * v70);
      if (__OFSUB__(0, v71))
      {
        break;
      }

      v67 &= v67 - 1;
      sub_18B859708(*(*(v63 + 48) + 8 * v70), -v71);
      v62 = v69;
      if (!v67)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
LABEL_46:
    while (1)
    {
      v69 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v69 >= v68)
      {

        return sub_18B7B171C(v81, 0);
      }

      v67 = *(v64 + 8 * v69);
      ++v62;
      if (v67)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = sub_18BC22078();
  __break(1u);
  return result;
}

uint64_t SFFluidCollectionView.DataSource.Snapshot.containsItem(_:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(a2 + 56);
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  *v16 = v14;
  *&v16[16] = *(a2 + 40);
  v17 = v5;
  v6 = type metadata accessor for SFFluidCollectionView.Element(0, &v15);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  v10 = v2[1];
  v11 = v2[4];
  v12 = v2[5];
  v15 = *v2;
  *v16 = v10;
  *&v16[8] = *(v2 + 1);
  *&v16[24] = v11;
  v17 = v12;
  (*(*(v14 - 8) + 16))(&v14 - v8, a1);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v3) = SFFluidCollectionView.DataSource.Snapshot.contains(_:)(v9, v3);
  (*(v7 + 8))(v9, v6);
  return v3 & 1;
}

void SFFluidCollectionView.DataSource.Snapshot.insertItems<A>(_:at:in:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a1;
  v35 = a6;
  v38 = a2;
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v17;
  if ((sub_18BC1F0C8() & 1) == 0)
  {
    SFFluidCollectionView.DataSource.Snapshot.appendSection(_:)(a3, v39, v18);
  }

  v19 = sub_18BC1F098();
  if (v20)
  {
LABEL_31:
    __break(1u);
    return;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v19 >= *(*v6 + 16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = *v6 + 16 * v19;
  v22 = *(v21 + 32);
  v23 = *(v21 + 40);
  v24 = __OFSUB__(v23, v22);
  v25 = v23 - v22;
  if (v24)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v38 < 0 || v25 < v38)
  {
    goto LABEL_28;
  }

  v37 = (v22 + v38);
  if (__OFADD__(v22, v38))
  {
    goto LABEL_29;
  }

  v33 = v19;
  v38 = v6;
  (*(v13 + 16))(v16, v34, v36);
  v26 = sub_18BC20D58();
  if (sub_18BC20E28())
  {
    v36 = v10;
    v27 = 0;
    v28 = 0;
    while (1)
    {
      v29 = sub_18BC20E08();
      sub_18BC20DC8();
      if (v29)
      {
        (*(v9 + 16))(v11, v26 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, v8);
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_22;
        }
      }

      else
      {
        v32 = sub_18BC21B08();
        if (v36 != 8)
        {
          goto LABEL_30;
        }

        v40 = v32;
        (*(v9 + 16))(v11, &v40, v8);
        swift_unknownObjectRelease();
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_22:
          __break(1u);
          break;
        }
      }

      sub_18BC1F0E8();
      v31 = sub_18BC1F0A8();
      (*(v9 + 8))(v11, v8);
      if (v31)
      {
        v24 = __OFADD__(v28++, 1);
        if (v24)
        {
          __break(1u);
          goto LABEL_25;
        }
      }

      ++v27;
      if (v30 == sub_18BC20E28())
      {
        goto LABEL_24;
      }
    }
  }

  v28 = 0;
LABEL_24:

  sub_18B859708(v33, v28);
}

double sub_18BB2590C@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v147 = a9;
  v165 = sub_18BC21848();
  v140 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v171 = &v137 - v17;
  v139 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v158 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v157 = &v137 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v160 = &v137 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v166 = &v137 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v170 = &v137 - v27;
  v138 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v155 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v154 = &v137 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v137 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v163 = (&v137 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v161 = (&v137 - v38);
  *&v181 = a3;
  *(&v181 + 1) = a4;
  v151 = a5;
  v182 = a5;
  v183 = a6;
  v168 = a7;
  v184 = a7;
  v185 = a8;
  v159 = a8;
  v169 = type metadata accessor for SFFluidCollectionView.Element(255, &v181);
  v39 = sub_18BC21DE8();
  MEMORY[0x1EEE9AC00](v39 - 8);
  v152 = (&v137 - v40);
  v164 = sub_18BC21DE8();
  v146 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v144 = &v137 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v145 = (&v137 - v43);
  v180 = a4;
  v178 = sub_18BC21DE8();
  v143 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v141 = &v137 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v142 = &v137 - v46;
  v47 = a1;
  v48 = *a1;
  v49 = a1[1];
  v50 = a1[2];
  v148 = v47[3];
  v149 = v48;
  v51 = v47[4];
  v175 = v47[5];
  v176 = v51;
  v52 = a2[1];
  v150 = *a2;
  v162 = v52;
  v53 = a2[3];
  v177 = a2[2];
  v156 = v53;
  v54 = a2[5];
  v153 = a2[4];
  v173 = v49;
  v174 = v54;
  v55 = sub_18BC20DE8();
  v56 = sub_18BC20E28();
  v167 = a6;
  if (v56)
  {
    v57 = sub_18BB32DD8(v55, a3, *(a6 + 8));
  }

  else
  {
    v57 = MEMORY[0x1E69E7CD0];
  }

  *&v201 = v57;
  *(&v201 + 1) = v149;
  *&v202 = v173;
  *(&v202 + 1) = v50;
  *&v203 = v148;
  *(&v203 + 1) = v176;
  *&v204 = v175;
  *(&v204 + 1) = v150;
  *&v205 = v162;
  *(&v205 + 1) = v177;
  *&v206[0] = v156;
  *(&v206[0] + 1) = v153;
  *&v206[1] = v174;
  v179 = *(v168 + 8);
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  v172 = v50;
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  v58 = v174;
  sub_18BC1E1A8();
  v59 = v141;
  v61 = v179;
  v60 = v180;
  sub_18BC1F058();
  v62 = v142;
  v63 = v178;
  sub_18BC21DF8();
  (*(v143 + 8))(v59, v63);
  sub_18BB277C8(v62, v60, &v181, v61);
  v197 = v181;
  *&v198[0] = v182;
  v64 = *(v167 + 8);
  v65 = v144;
  v66 = v153;
  sub_18BC1F058();
  v67 = v145;
  v68 = v164;
  v178 = v64;
  sub_18BC21DF8();
  (v146[1])(v65, v68);
  sub_18BB277C8(v67, a3, &v181, v64);
  *(v198 + 8) = v181;
  *(&v198[1] + 1) = v182;
  *&v181 = v150;
  *(&v181 + 1) = v162;
  v182 = v177;
  v183 = v156;
  v184 = v66;
  v185 = v58;
  *&v190 = a3;
  *(&v190 + 1) = v180;
  v191 = v151;
  v192 = v167;
  v193 = v168;
  v194 = v159;
  v69 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot(0, &v190);
  sub_18BB269B8(v69);
  *&v190 = v149;
  *(&v190 + 1) = v173;
  v191 = v172;
  v192 = v148;
  v193 = v176;
  v194 = v175;
  sub_18BB269B8(v69);
  v70 = v169;
  WitnessTable = swift_getWitnessTable();
  v72 = v152;
  v73 = v70;
  v74 = WitnessTable;
  v164 = WitnessTable;
  sub_18BC1F058();

  sub_18BB277C8(v72, v73, &v195, v74);
  v75 = v167;
  v152 = &v137;
  v188 = v197;
  v189 = *&v198[0];
  MEMORY[0x1EEE9AC00](v197);
  v146 = &v137 - 8;
  v76 = v180;
  *(&v137 - 6) = a3;
  *(&v137 - 5) = v76;
  v77 = v151;
  *(&v137 - 4) = v151;
  *(&v137 - 3) = v75;
  v78 = v168;
  v79 = v159;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  *&v181 = a3;
  *(&v181 + 1) = v76;
  v182 = v77;
  v183 = v76;
  v184 = v75;
  v185 = v78;
  v186 = v79;
  v187 = v179;
  v80 = type metadata accessor for SFFluidCollectionView.DataSource.ElementDifference(0, &v181);
  v81 = v169;
  v82 = v164;
  SFFluidCollectionView.DataSource.ElementDifference.map<A>(_:)(sub_18BB333E0, v146, v80, v169, v164, &v190);

  v146 = v190;
  v188 = v190;
  v189 = v191;
  *&v181 = a3;
  *(&v181 + 1) = v180;
  v83 = v151;
  v182 = v151;
  v183 = v81;
  v184 = v75;
  v185 = v168;
  v84 = v159;
  v186 = v159;
  v187 = v82;
  v152 = type metadata accessor for SFFluidCollectionView.DataSource.ElementDifference(0, &v181);
  SFFluidCollectionView.DataSource.ElementDifference.formUnion(_:)(&v188, v152);

  v146 = &v137;
  v190 = *(v198 + 8);
  v191 = *(&v198[1] + 1);
  MEMORY[0x1EEE9AC00](*(&v198[0] + 1));
  v145 = &v137 - 8;
  v85 = v180;
  *(&v137 - 6) = a3;
  *(&v137 - 5) = v85;
  v86 = v83;
  v87 = v167;
  *(&v137 - 4) = v83;
  *(&v137 - 3) = v87;
  v88 = v168;
  v135 = v168;
  v136 = v84;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  *&v181 = a3;
  *(&v181 + 1) = v85;
  v182 = v86;
  v183 = a3;
  v184 = v87;
  v185 = v88;
  v186 = v84;
  v187 = v178;
  v89 = type metadata accessor for SFFluidCollectionView.DataSource.ElementDifference(0, &v181);
  SFFluidCollectionView.DataSource.ElementDifference.map<A>(_:)(sub_18BB333F8, v145, v89, v169, v164, &v181);

  v190 = v181;
  v191 = v182;
  SFFluidCollectionView.DataSource.ElementDifference.formUnion(_:)(&v190, v152);

  v199 = v195;
  *&v200 = v196;
  v90 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v91 = sub_18BB32DD8(v90, v180, v179);
  }

  else
  {
    v91 = MEMORY[0x1E69E7CD0];
  }

  v92 = v163;

  *&v188 = v91;
  v93 = v177;
  v94 = v159;
  v95 = v161;
  v169 = *(v177 + 16);
  if (v169)
  {
    v96 = (v138 + 32);
    v164 = v168 + 32;
    v97 = (v138 + 8);
    v152 = (v138 + 16);
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    v98 = 0;
    do
    {
      v99 = v180;
      sub_18BC21C08();
      (*v96)(v92, v95, v99);
      sub_18BC1F098();
      if (v100)
      {
        (*v97)(v92, v180);
      }

      else
      {
        v101 = v180;
        sub_18BC21C08();
        if ((*(v168 + 32))(v34, v101))
        {
          v102 = v180;
          (*v152)(v155, v92, v180);
          sub_18BC210E8();
          v103 = v34;
          v104 = v154;
          v95 = v161;
          sub_18BC21078();
          v105 = *v97;
          v106 = v104;
          v34 = v103;
          v92 = v163;
          (*v97)(v106, v102);
          v107 = v34;
        }

        else
        {
          v105 = *v97;
          v107 = v34;
          v102 = v180;
        }

        v105(v107, v102);
        v105(v92, v102);
      }

      ++v98;
    }

    while (v169 != v98);
    v93 = v177;

    v91 = v188;
    v94 = v159;
  }

  *(&v200 + 1) = v91;
  v108 = v174;
  v169 = *(v174 + 16);
  v155 = v91;
  if (v169)
  {
    v109 = (v139 + 32);
    v110 = (v139 + 48);
    v111 = (v139 + 8);
    v161 = (v139 + 16);
    v163 = (v140 + 8);
    v164 = v167 + 32;
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    v112 = 0;
    v113 = v160;
    v114 = v166;
    do
    {
      v115 = v170;
      sub_18BC21C08();
      v116 = *v109;
      v117.n128_f64[0] = (*v109)(v114, v115, a3);
      v118 = v114;
      v119 = v171;
      sub_18BB6C204(v118, v176, v175, a3, v178, v117);
      if ((*v110)(v119, 1, a3) == 1)
      {
        (*v111)(v118, a3);
        (*v163)(v119, v165);
        v114 = v118;
      }

      else
      {
        v116(v113, v119, a3);
        if ((*(v167 + 32))(v113, a3))
        {
          (*v161)(v158, v166, a3);
          sub_18BC210E8();
          v120 = v157;
          v114 = v166;
          sub_18BC21078();
          v121 = *v111;
          v113 = v160;
          (*v111)(v120, a3);
        }

        else
        {
          v114 = v118;
          v121 = *v111;
        }

        v121(v113, a3);
        v121(v114, a3);
      }

      ++v112;
    }

    while (v169 != v112);
    v108 = v174;

    v122 = v153;

    v123 = v159;
    v124 = v167;
    v93 = v177;
  }

  else
  {
    v125 = v94;
    sub_18BC1E3F8();
    v123 = v125;
    v124 = v167;
    v122 = v153;
  }

  *&v181 = v149;
  *(&v181 + 1) = v173;
  v182 = v172;
  v183 = v148;
  v184 = v176;
  v185 = v175;
  *&v190 = v150;
  *(&v190 + 1) = v162;
  v191 = v93;
  v192 = v156;
  v193 = v122;
  v194 = v108;
  v126 = static SFFluidCollectionView.DataSource.Snapshot.== infix(_:_:)(&v181, &v190, a3, v180, v151, v124, v168, v123);

  if (v126)
  {
    if (sub_18BC21098())
    {
      v127 = sub_18BC21098();
    }

    else
    {
      v127 = 0;
    }

    v128 = v147;
  }

  else
  {
    v127 = 0;
    v128 = v147;
  }

  BYTE8(v206[1]) = v127 & 1;
  v129 = v205;
  v128[8] = v204;
  v128[9] = v129;
  v128[10] = v206[0];
  v130 = v201;
  v128[4] = v200;
  v128[5] = v130;
  v131 = v203;
  v128[6] = v202;
  v128[7] = v131;
  v132 = v198[0];
  *v128 = v197;
  v128[1] = v132;
  v133 = v199;
  v128[2] = v198[1];
  v128[3] = v133;
  result = *(v206 + 9);
  *(v128 + 169) = *(v206 + 9);
  return result;
}