void sub_1D5FE3920()
{
  sub_1D5FE4648(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v11 - v3;
  v5 = *&v0[OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle];
  if (v5)
  {
    v6 = sub_1D726294C();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_1D726290C();
    swift_unknownObjectRetain_n();
    v7 = v0;
    v8 = sub_1D72628FC();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    v9[5] = v5;
    sub_1D6BD1334(0, 0, v4, &unk_1D728D110, v9);

    swift_unknownObjectRelease();
  }
}

void sub_1D5FE3A94(uint64_t a1, uint64_t a2)
{
  sub_1D5FE4648(0, qword_1EDF41DF0, type metadata accessor for PuzzleData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - v6;
  sub_1D5C10BE0(a1, &v17 - v6, type metadata accessor for PuzzleData);
  v8 = type metadata accessor for PuzzleData(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleData;
  swift_beginAccess();
  sub_1D5FE46AC(v7, a2 + v9);
  swift_endAccess();
  v10 = *(a2 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController);
  [v10 loadLocalDatastore:*(*(a1 + *(v8 + 24)) + 16) options:0 completion:0];
  v11 = [*(a2 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v11, v11 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    sub_1D5EBD03C(&v21);
    goto LABEL_9;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v12 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  v12 = v18;
  v13 = [v18 integerValue];
  if (v13 == -1)
  {

    goto LABEL_21;
  }

  v14 = v13;
LABEL_10:
  if (objc_getAssociatedObject(v11, ~v14))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (*(&v20 + 1))
  {
    sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v15 = v18;
      v16 = [v15 integerValue];

      if (((v16 ^ v14) & 1) == 0)
      {
        return;
      }

LABEL_21:
      [v10 setFocusShouldStartInputSession_];
      return;
    }
  }

  else
  {
    sub_1D5EBD03C(&v21);
  }

  if (v14)
  {
    goto LABEL_21;
  }
}

id sub_1D5FE3DF8(id result, void *a2, uint64_t a3)
{
  if (BYTE3(a3) != 255)
  {
    return sub_1D5FE3E0C(result, a2, a3, SBYTE3(a3));
  }

  return result;
}

id sub_1D5FE3E0C(id result, id a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    return result;
  }

  if (!a4)
  {
  }

  return result;
}

void sub_1D5FE3E2C(void *result, void *a2, uint64_t a3)
{
  if (BYTE3(a3) != 255)
  {
    sub_1D5FE3E40(result, a2, a3, SBYTE3(a3));
  }
}

void sub_1D5FE3E40(void *a1, id a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

unint64_t sub_1D5FE3E60()
{
  result = qword_1EC882128;
  if (!qword_1EC882128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882128);
  }

  return result;
}

uint64_t sub_1D5FE3EB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5FE3F50(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D5FE1B0C(a1, v5, v4);
}

uint64_t sub_1D5FE3FFC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D5FE4044(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D5FE1D88(a1, v5, v4);
}

uint64_t sub_1D5FE40F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5FE4150(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B5A498(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D5FE41B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return sub_1D5FE2068(a1, v4);
}

void sub_1D5FE4258(uint64_t a1)
{
  if (!qword_1EC882140)
  {
    sub_1D5B5A5C4(255, &qword_1EC882148, &type metadata for PuzzleDatastoreRelatedPuzzleInfo, MEMORY[0x1E69E62F8]);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC882140);
    }
  }
}

uint64_t sub_1D5FE42D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return sub_1D5FE2318(a1, v4);
}

uint64_t sub_1D5FE4374(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D5FDFFCC(a1, v5, v4);
}

uint64_t sub_1D5FE4454(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64684;

  return sub_1D5FE0254(a1, v5, v4);
}

uint64_t sub_1D5FE4500(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64684;

  return sub_1D5FE2F08(a1, v4, v5, v7, v6);
}

uint64_t sub_1D5FE45C0(uint64_t a1)
{
  sub_1D5FE4150(0, &qword_1EDF04360, &qword_1EDF1A650, 0x1E69E58C0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5FE4648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5FE46AC(uint64_t a1, uint64_t a2)
{
  sub_1D5FE4648(0, qword_1EDF41DF0, type metadata accessor for PuzzleData, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5FE4764()
{
  result = qword_1EC882160;
  if (!qword_1EC882160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882160);
  }

  return result;
}

unint64_t sub_1D5FE47BC()
{
  result = qword_1EC882168;
  if (!qword_1EC882168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882168);
  }

  return result;
}

CGSize_optional __swiftcall FormatLayoutSizeSnapshot.size(for:)(Swift::String a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_1D5B69D90(a1._countAndFlagsBits, a1._object), (v6 & 1) != 0))
  {
    v7 = *(*(v2 + 56) + 16 * v3);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  result.value.height = v5;
  result.value.width = v4;
  result.is_nil = v7;
  return result;
}

void sub_1D5FE4898(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D73C5B40 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1D5FE492C(uint64_t a1)
{
  v2 = sub_1D5FE52D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5FE4968(uint64_t a1)
{
  v2 = sub_1D5FE52D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLayoutSizeSnapshot.encode(to:)(void *a1)
{
  sub_1D5FE5440(0, &qword_1EDF025F8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5FE52D4();

  sub_1D7264B5C();
  v11[1] = v9;
  sub_1D5FE5328(0);
  sub_1D5FE5390();
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t FormatLayoutSizeSnapshot.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D5BE71D0(v3, v1);
  return sub_1D7264A5C();
}

uint64_t FormatLayoutSizeSnapshot.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D5FE5440(0, &qword_1EDF039E0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5FE52D4();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D5FE5328(0);
    sub_1D5FE54A4();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5FE4D04()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D5BE71D0(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D5FE4D54(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D5BE71D0(v4, v2);
  return sub_1D7264A5C();
}

void *FormatLayoutResizingProvider.__allocating_init()()
{
  v0 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v0, v1);
  v2 = swift_allocObject();
  sub_1D5FE5554(&qword_1EDF3BDF0, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
  sub_1D5B6BD6C(0);
  sub_1D5FE5554(&qword_1EDF1B5C0, sub_1D5B6BD6C, MEMORY[0x1E69E6328]);
  sub_1D7263B6C();
  sub_1D725A7BC();
  swift_allocObject();
  v3 = sub_1D725A7AC();
  v4 = MEMORY[0x1E69E7CC8];
  v2[2] = v3;
  v2[3] = v4;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

void *FormatLayoutResizingProvider.init()()
{
  v1 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v1, v2);
  sub_1D5FE5554(&qword_1EDF3BDF0, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
  sub_1D5B6BD6C(0);
  sub_1D5FE5554(&qword_1EDF1B5C0, sub_1D5B6BD6C, MEMORY[0x1E69E6328]);
  sub_1D7263B6C();
  sub_1D725A7BC();
  swift_allocObject();
  v3 = sub_1D725A7AC();
  v4 = MEMORY[0x1E69E7CC8];
  v0[2] = v3;
  v0[3] = v4;
  v0[4] = 0;
  v0[5] = 0;
  return v0;
}

uint64_t sub_1D5FE5098(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  sub_1D725A76C();
  swift_beginAccess();
  v14 = v6[3];
  if (*(v14 + 16) && (v15 = sub_1D6D62C64(a5, a6), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v17 = sub_1D5BC9514(MEMORY[0x1E69E7CC0]);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D6D79124(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);
  swift_beginAccess();
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v24 = v7[3];
  v7[3] = 0x8000000000000000;
  sub_1D6D78FC4(v17, v19, a5, a6);
  v7[3] = v24;
  swift_endAccess();
  result = sub_1D725A77C();
  v21 = v7[4];
  if (v21)
  {
    v22 = v7[5];

    v21(v23);
    return sub_1D5B74328(v21, v22);
  }

  return result;
}

double FormatLayoutResizingProvider.onChange(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_1D5B74328(v5, v4);

  return result;
}

void *FormatLayoutResizingProvider.deinit()
{

  sub_1D5B74328(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t FormatLayoutResizingProvider.__deallocating_deinit()
{

  sub_1D5B74328(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t sub_1D5FE52D4()
{
  result = qword_1EDF0CF20;
  if (!qword_1EDF0CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CF20);
  }

  return result;
}

void sub_1D5FE5328(uint64_t a1)
{
  if (!qword_1EDF05640)
  {
    type metadata accessor for CGSize(255);
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF05640);
    }
  }
}

unint64_t sub_1D5FE5390()
{
  result = qword_1EDF05638;
  if (!qword_1EDF05638)
  {
    sub_1D5FE5328(255);
    sub_1D5FE5554(&unk_1EDF043A0, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05638);
  }

  return result;
}

void sub_1D5FE5440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5FE52D4();
    v7 = a3(a1, &type metadata for FormatLayoutSizeSnapshot.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5FE54A4()
{
  result = qword_1EDF05630;
  if (!qword_1EDF05630)
  {
    sub_1D5FE5328(255);
    sub_1D5FE5554(&qword_1EDF04398, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05630);
  }

  return result;
}

uint64_t sub_1D5FE5554(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D5FE55A0()
{
  result = qword_1EC882170;
  if (!qword_1EC882170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882170);
  }

  return result;
}

unint64_t sub_1D5FE5644()
{
  result = qword_1EC882178;
  if (!qword_1EC882178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882178);
  }

  return result;
}

unint64_t sub_1D5FE569C()
{
  result = qword_1EDF0CF10;
  if (!qword_1EDF0CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CF10);
  }

  return result;
}

unint64_t sub_1D5FE56F4()
{
  result = qword_1EDF0CF18;
  if (!qword_1EDF0CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CF18);
  }

  return result;
}

uint64_t static FormatImageTransform.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1D5FE579C(uint64_t a1)
{
  result = sub_1D5FE57C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FE57C4()
{
  result = qword_1EC882180;
  if (!qword_1EC882180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882180);
  }

  return result;
}

unint64_t sub_1D5FE5818(void *a1)
{
  a1[1] = sub_1D5C74590();
  a1[2] = sub_1D5FE5850();
  result = sub_1D5FE58A4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5FE5850()
{
  result = qword_1EDF0EFD0;
  if (!qword_1EDF0EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EFD0);
  }

  return result;
}

unint64_t sub_1D5FE58A4()
{
  result = qword_1EC882188;
  if (!qword_1EC882188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882188);
  }

  return result;
}

uint64_t sub_1D5FE59A0()
{
  v1 = MEMORY[0x1DA6F2D00]();
  *(v0 + 24) = v1;
  if (v1)
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v1[1] = sub_1D5FE5A4C;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE44EF0](v1);
}

uint64_t sub_1D5FE5A4C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1D5FE6840;
  }

  else
  {

    v2 = sub_1D5F77B68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5FE5B88()
{
  v1 = MEMORY[0x1DA6F2D00]();
  *(v0 + 24) = v1;
  if (v1)
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v1[1] = sub_1D5FE5C34;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE44EF0](v1);
}

uint64_t sub_1D5FE5C34()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1D5FE5D50;
  }

  else
  {

    v2 = sub_1D5F77B68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5FE5D50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5FE5DB4()
{
  v0 = sub_1D726307C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D5B5DA7C();
  sub_1D7261AFC();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1D5B71058(&qword_1EDF1AA50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1D5B631E8(0);
  sub_1D5B71058(&qword_1EDF1AE80, sub_1D5B631E8, MEMORY[0x1E69E6328]);
  sub_1D7263B6C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  result = sub_1D72630BC();
  qword_1EDF33418 = result;
  return result;
}

uint64_t sub_1D5FE6010(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1D5FE6060(a1, a2);
  return v4;
}

uint64_t *sub_1D5FE6060(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *v2;

  sub_1D5FE67D4();
  swift_allocObject();
  v2[2] = sub_1D725B68C();
  swift_allocObject();
  v2[3] = sub_1D725B68C();

  sub_1D725AE3C();

  if (v15 > 1u)
  {
    v5 = qword_1EDF33410;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v8 = *(v4 + 80);
    v7[2] = v8;
    v9 = *(v4 + 88);
    v7[3] = v9;
    v7[4] = v6;

    sub_1D725AE5C();

    __swift_project_boxed_opaque_existential_1(v13, v14);

    sub_1D725A72C();

    __swift_destroy_boxed_opaque_existential_1(v13);
    v10 = swift_allocObject();
    swift_weakInit();

    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v9;
    v11[4] = v10;
    sub_1D725AE5C();

    __swift_project_boxed_opaque_existential_1(v13, v14);

    sub_1D725A72C();

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1D725B67C();
    sub_1D725B67C();
  }

  return v2;
}

double sub_1D5FE6370(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 <= 1u)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D725B67C();
      sub_1D725B67C();
    }
  }

  return result;
}

double sub_1D5FE63E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for FeedServiceError(0, a3, a4, v6);
    swift_getWitnessTable();
    v8 = swift_allocError();
    *v9 = 12;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 6;

    sub_1D725B65C();

    v10 = swift_allocError();
    *v11 = 12;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 6;

    sub_1D725B65C();
  }

  return result;
}

uint64_t sub_1D5FE6528()
{
  v0 = swift_allocObject();
  sub_1D5FE6560(v1);
  return v0;
}

uint64_t sub_1D5FE6560(__n128 a1)
{
  sub_1D5FE67D4();
  swift_allocObject();
  *(v1 + 16) = sub_1D725B68C();
  swift_allocObject();
  *(v1 + 24) = sub_1D725B68C();
  return v1;
}

uint64_t sub_1D5FE65CC()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1D5FE66E0;
  }

  else
  {
    v2 = sub_1D5F71DF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D5FE66F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeedServiceError(0, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  v5 = swift_allocError();
  *v6 = 13;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 6;
  sub_1D725B65C();
}

void sub_1D5FE67D4()
{
  if (!qword_1EDF3BAB8)
  {
    v0 = sub_1D725B69C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BAB8);
    }
  }
}

uint64_t FormatPuzzleEmbedViewController.layoutIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double FormatPuzzleEmbedViewController.layoutIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id FormatPuzzleEmbedViewController.layoutGuide.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void FormatPuzzleEmbedViewController.layoutGuide.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double FormatPuzzleEmbedViewController.resizingProvider.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*FormatPuzzleEmbedViewController.resizingProvider.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_resizingProvider;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1D5FE6C14;
}

void sub_1D5FE6C14(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1D5FE6C94@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillShow);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D6007D94;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D5DEA510(v4, v5);
}

uint64_t sub_1D5FE6D34(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D6007D90;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillShow);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1D5DEA510(v3, v4);
  return sub_1D5B74328(v8, v9);
}

uint64_t sub_1D5FE6E74@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillHide);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D6007A10;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D5DEA510(v4, v5);
}

uint64_t sub_1D5FE6F14(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D6007A0C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillHide);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1D5DEA510(v3, v4);
  return sub_1D5B74328(v8, v9);
}

uint64_t sub_1D5FE6FE8(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_1D5DEA510(*v2, v2[1]);
  return v3;
}

uint64_t sub_1D5FE704C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_1D5B74328(v7, v8);
}

char *FormatPuzzleEmbedViewController.init(puzzleEmbedViewController:componentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  ObjectType = swift_getObjectType();
  v8 = sub_1D725895C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onReuse;
  sub_1D6007BE4(0, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *&v4[v13] = [objc_allocWithZone(v14) init];
  v15 = &v4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutIdentifier];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutGuide;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:0.0 contentFrame:0.0 contentSafeAreaFrame:0.0 systemSafeAreaFrame:{0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0}];
  swift_weakInit();
  v17 = &v4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillShow];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillHide];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_teaserInteractionEvents] = MEMORY[0x1E69E7CD0];
  v19 = &v4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_currentAccessoryView];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_identifier];
  sub_1D725894C();
  v21 = sub_1D725893C();
  v23 = v22;
  (*(v9 + 8))(v12, v8);
  *v20 = v21;
  v20[1] = v23;
  *&v4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController] = a1;
  v24 = &v4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_componentProvider];
  v25 = v29;
  *v24 = a2;
  *(v24 + 1) = v25;
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v30, sel_initWithNibName_bundle_, 0, 0);
  v27 = *&v26[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController] + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate;
  swift_beginAccess();
  *(v27 + 8) = &protocol witness table for FormatPuzzleEmbedViewController;
  swift_unknownObjectWeakAssign();
  return v26;
}

id FormatPuzzleEmbedViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id FormatPuzzleEmbedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall FormatPuzzleEmbedViewController.viewDidLoad()()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 setClipsToBounds_];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  [v3 setAutoresizingMask_];

  v5 = *&v0[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController];
  [v0 addChildViewController_];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v5 view];
  if (v8)
  {
    v9 = v8;
    [v7 addSubview_];

    [v5 didMoveToParentViewController_];
    [*&v5[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController] prewarm];
    v10 = &v5[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate];
    swift_beginAccess();
    *(v10 + 1) = &protocol witness table for FormatPuzzleEmbedViewController;
    swift_unknownObjectWeakAssign();
    return;
  }

LABEL_9:
  __break(1u);
}

Swift::Void __swiftcall FormatPuzzleEmbedViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1);
  if (!*&v2[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_currentAccessoryView])
  {
    v4 = [objc_opt_self() currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (!v5)
    {
      sub_1D725A9FC();
      if ((sub_1D725A9EC() & 1) == 0)
      {
        sub_1D5FE790C();
      }
    }
  }

  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  [v7 addObserver:v2 selector:sel_keyboardWillShowWithNotification_ name:*MEMORY[0x1E69DE080] object:0];

  v8 = [v6 defaultCenter];
  [v8 addObserver:v2 selector:sel_keyboardWillHideWithNotification_ name:*MEMORY[0x1E69DE078] object:0];
}

void sub_1D5FE790C()
{
  v1 = v0;
  *&v34[0] = 0xD000000000000013;
  *(&v34[0] + 1) = 0x80000001D73C5E80;
  v34[1] = 0uLL;
  v34[2] = 2uLL;
  v34[3] = 0uLL;
  v35 = 4;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_componentProvider + 8);
  ObjectType = swift_getObjectType();
  v31 = 2uLL;
  v32 = 0uLL;
  v33 = 4;
  v29 = v34[0];
  v30 = 0uLL;
  v27 = 0;
  v28 = 0;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = *(v2 + 32);

  sub_1D6007B88(v34, v36);
  v6 = v5(&v29, &v27, sub_1D6007B80, v4, ObjectType, v2);
  v8 = v7;

  v36[2] = v31;
  v36[3] = v32;
  v37 = v33;
  v36[0] = v29;
  v36[1] = v30;
  sub_1D5EDB748(v36);

  v9 = (v1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_currentAccessoryView);
  v10 = *(v1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_currentAccessoryView);
  *v9 = v6;
  v9[1] = v8;
  v11 = v6;

  v12 = *v9;
  if (*v9)
  {
    v13 = v9[1];
    v14 = swift_getObjectType();
    v15 = *(v1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_identifier);
    v16 = *(v1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_identifier + 8);
    v17 = v13[2];
    v18 = v12;

    v17(v15, v16, v14, v13);
  }

  v19 = *(v1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController);
  v20 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController;
  v21 = *(v19 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController);
  sub_1D5B5A498(0, &qword_1EC88B4C0, 0x1E69DC720);
  v22 = v11;
  v23 = sub_1D726265C();
  v24 = sub_1D726265C();
  [v21 setShortcutsBarWithLeadingGroups:v23 trailingGroups:{v24, v27, v28}];

  [*(v19 + v20) setInputAccessoryView_];
  v25 = [objc_opt_self() current];
  if (v25)
  {
    v26 = v25;
    swift_bridgeObjectRelease_n();
    sub_1D6007C34(v34);
    [v26 setPencilInputExpected_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall FormatPuzzleEmbedViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewWillDisappear_, a1);
  v3 = &v1[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_currentAccessoryView];
  v4 = *&v1[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_currentAccessoryView];
  *v3 = 0;
  *(v3 + 1) = 0;

  v5 = *&v1[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController];
  v6 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController;
  v7 = *(v5 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController);
  sub_1D5B5A498(0, &qword_1EC88B4C0, 0x1E69DC720);
  v8 = sub_1D726265C();
  v9 = sub_1D726265C();
  [v7 setShortcutsBarWithLeadingGroups:v8 trailingGroups:v9];

  [*(v5 + v6) setInputAccessoryView_];
  v10 = [objc_opt_self() defaultCenter];
  [v10 removeObserver_];
}

Swift::Void __swiftcall FormatPuzzleEmbedViewController.viewWillLayoutSubviews()()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController];
  v2 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v5 = *&v1[v4];
  *&v1[v4] = v3;
  v6 = v3;

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = v7;
  [v7 setNeedsLayout];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  v11 = [v0 view];
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v10 setFrame_];
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1D5FE7FDC(uint64_t a1, SEL *a2, void *a3)
{
  v6 = v3;
  v7 = sub_1D7257B0C();
  if (v7)
  {
    v8 = v7;
    v42 = sub_1D726207C();
    v43 = v9;
    sub_1D7263C9C();
    if (!*(v8 + 16) || (v10 = sub_1D6D62B40(v44), (v11 & 1) == 0))
    {

      sub_1D5F42574(v44);
      return;
    }

    sub_1D5B76B10(*(v8 + 56) + 32 * v10, v45);
    sub_1D5F42574(v44);
    type metadata accessor for CGRect(0);
    if ((swift_dynamicCast() & 1) != 0 && [v6 isViewLoaded])
    {
      v12 = [v6 view];
      if (!v12)
      {
        __break(1u);
        goto LABEL_17;
      }

      v13 = v12;
      v14 = [v12 window];

      if (v14)
      {

        v15 = [v6 view];
        if (v15)
        {
          v16 = v15;
          v17 = [v6 view];
          if (v17)
          {
            v18 = v17;
            [v17 *a2];
            v20 = v19;
            v22 = v21;
            v24 = v23;
            v26 = v25;

            v27 = [v6 view];
            if (v27)
            {
              v28 = v27;

              v29 = sub_1D726342C();

              [v16 convertRect:v29 toCoordinateSpace:{v20, v22, v24, v26}];
              v31 = v30;
              v33 = v32;
              v35 = v34;
              v37 = v36;

              v38 = &v6[*a3];
              swift_beginAccess();
              v39 = *v38;
              if (*v38)
              {
                v40 = *(v38 + 1);

                v39(v41, v31, v33, v35, v37, *&v42, v43);
                sub_1D5B74328(v39, v40);
              }

              return;
            }

LABEL_19:
            __break(1u);
            return;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }
  }
}

uint64_t sub_1D5FE82AC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1D7257B1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7257AEC();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

void sub_1D5FE839C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v3 = [objc_opt_self() sharedApplication];
    [v3 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
  }
}

Swift::Void __swiftcall FormatPuzzleEmbedViewController.puzzleEmbedDidReceiveInteractionMessage()()
{
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v0 = sub_1D725C42C();
  __swift_project_value_buffer(v0, qword_1EDFFCFA8);
  v1 = sub_1D725C3FC();
  v2 = sub_1D7262EDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D5B42000, v1, v2, "FormatPuzzleEmbedViewController: puzzleEmbedDidReceiveInteractionMessage", v3, 2u);
    MEMORY[0x1DA6FD500](v3, -1, -1);
  }

  swift_beginAccess();
  sub_1D5FEAC94(&v4, 1);
  swift_endAccess();
}

uint64_t FormatPuzzleEmbedViewController.puzzleEmbedDidReceiveProgress(_:)()
{
  v1 = v0;
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EDFFCFA8);
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EDC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D5B42000, v3, v4, "FormatPuzzleEmbedViewController: puzzleEmbedDidReceiveProgress", v5, 2u);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_teaserInteractionEvents;
  swift_beginAccess();
  v7 = *(v1 + v6);
  sub_1D7264A0C();
  sub_1D72621EC();
  v8 = sub_1D7264A5C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v7 + 48) + v10);
      if (v12 != 1 && v12 != 2)
      {
        break;
      }

      v13 = sub_1D72646CC();

      if (v13)
      {
        return swift_endAccess();
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v1 + v6);
    sub_1D5FF9228(0, v10, isUniquelyReferenced_nonNull_native);
    *(v1 + v6) = v16;
  }

  return swift_endAccess();
}

uint64_t FormatPuzzleEmbedViewController.reuseIdentifier.getter()
{
  v1 = (*(v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController) + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D5FE8894@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController) + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

double sub_1D5FE88FC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*(*a2 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController) + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

double FormatPuzzleEmbedViewController.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (*(v2 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController) + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void (*FormatPuzzleEmbedViewController.reuseIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController);
  v6 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier;
  *(v3 + 40) = v5;
  *(v3 + 48) = v6;
  v7 = (v5 + v6);
  swift_beginAccess();
  v8 = v7[1];
  *(v4 + 24) = *v7;
  *(v4 + 32) = v8;

  return sub_1D5FE8A98;
}

void sub_1D5FE8A98(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = (*(*a1 + 40) + *(*a1 + 48));
  *v4 = *(*a1 + 24);
  v4[1] = v3;
  if (a2)
  {
  }

  free(v2);
}

uint64_t sub_1D5FE8B08()
{
  v1 = (*(*v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController) + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1D5FE8B74(uint64_t a1, uint64_t a2)
{
  v5 = (*(*v2 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController) + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t (*sub_1D5FE8BE8(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = FormatPuzzleEmbedViewController.reuseIdentifier.modify(v2);
  return sub_1D5FE8C5C;
}

void sub_1D5FE8C5C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

Swift::Void __swiftcall FormatPuzzleEmbedViewController.prepareForReuse()()
{
  MEMORY[0x1DA6F6CF0]();

  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController);
  v2 = (v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_1D5B74328(v3, v4);
  *(v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted) = 0;
}

uint64_t sub_1D5FE8D78()
{
  v1 = *v0;
  MEMORY[0x1DA6F6CF0]();

  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController);
  v3 = (v2 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  result = sub_1D5B74328(v4, v5);
  *(v2 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted) = 0;
  return result;
}

void sub_1D5FE8E2C(uint64_t a1, uint64_t a2)
{
  sub_1D5D51EB4(&qword_1EC882298, a2, type metadata accessor for FormatPuzzleEmbedViewController, &protocol conformance descriptor for FormatPuzzleEmbedViewController);

  JUMPOUT(0x1DA6F6FC0);
}

uint64_t sub_1D5FE8EB8(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_1D7264A0C();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v24 = ~v6;
    v8 = 0x6D6F74746F62;
    v9 = 7105633;
    v10 = 0xE700000000000000;
    v11 = 0xE600000000000000;
    while (1)
    {
      v12 = *(*(v4 + 48) + v7);
      if (v12 <= 1)
      {
        if (*(*(v4 + 48) + v7))
        {
          v13 = 0x676E696461656CLL;
        }

        else
        {
          v13 = 7368564;
        }

        if (*(*(v4 + 48) + v7))
        {
          v14 = 0xE700000000000000;
        }

        else
        {
          v14 = 0xE300000000000000;
        }
      }

      else if (v12 == 2)
      {
        v14 = 0xE800000000000000;
        v13 = 0x676E696C69617274;
      }

      else
      {
        if (v12 == 3)
        {
          v13 = v8;
        }

        else
        {
          v13 = 7105633;
        }

        if (v12 == 3)
        {
          v14 = 0xE600000000000000;
        }

        else
        {
          v14 = 0xE300000000000000;
        }
      }

      if (v3 == 3)
      {
        v9 = v8;
      }

      else
      {
        v11 = 0xE300000000000000;
      }

      if (v3 == 2)
      {
        v9 = 0x676E696C69617274;
        v11 = 0xE800000000000000;
      }

      if (v3)
      {
        v15 = 0x676E696461656CLL;
      }

      else
      {
        v15 = 7368564;
      }

      if (!v3)
      {
        v10 = 0xE300000000000000;
      }

      v16 = v3 <= 1u ? v15 : v9;
      v17 = v3 <= 1u ? v10 : v11;
      if (v13 == v16 && v14 == v17)
      {
        break;
      }

      v18 = v8;
      v19 = sub_1D72646CC();

      if (v19)
      {
        goto LABEL_40;
      }

      v7 = (v7 + 1) & v24;
      v8 = v18;
      v9 = 7105633;
      v10 = 0xE700000000000000;
      v11 = 0xE600000000000000;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    result = 0;
    v3 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_38:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v22;
    sub_1D5FF7394(v3, v7, isUniquelyReferenced_nonNull_native);
    *v22 = v25;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1D5FE917C(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1D72649FC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D5FF76CC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D5FE925C(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1D7264A0C();
  v7 = (a2 >> 62) - 1;
  if (v7 >= 2)
  {
    sub_1D7264A2C();
  }

  else
  {

    sub_1D7264A2C();
    sub_1D72621EC();
  }

  v8 = sub_1D7264A5C();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_22:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;

    sub_1D5FF77EC(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
    *a1 = a2;
    return 1;
  }

  v23 = v2;
  v24 = a2;
  v25 = a1;
  v11 = ~v9;
  v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v13 = *(*(v6 + 48) + 8 * v10);
    if ((v13 >> 62) - 1 > 1)
    {
      v16 = 0;
      v15 = 0;
      if (v7 > 1)
      {
LABEL_10:
        v17 = 0;
        v18 = 0;
        if (!v15)
        {
          goto LABEL_18;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v14 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);

      if (v7 > 1)
      {
        goto LABEL_10;
      }
    }

    v20 = *(v12 + 16);
    v17 = *(v20 + 16);
    v18 = *(v20 + 24);

    if (!v15)
    {
LABEL_18:
      if (!v18)
      {
LABEL_23:

        goto LABEL_25;
      }

LABEL_6:

      goto LABEL_7;
    }

LABEL_11:
    if (!v18)
    {
      goto LABEL_6;
    }

    if (v16 == v17 && v15 == v18)
    {
      break;
    }

    v19 = sub_1D72646CC();

    if (v19)
    {
      goto LABEL_23;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      a2 = v24;
      a1 = v25;
      v3 = v23;
      goto LABEL_22;
    }
  }

LABEL_25:
  *v25 = *(*(v6 + 48) + 8 * v10);

  return 0;
}

uint64_t sub_1D5FE94C8(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  FormatTagBinding.Asset.rawValue.getter();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v30 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      if (v8 > 5)
      {
        if (*(*(v4 + 48) + v7) > 8u)
        {
          if (v8 == 9)
          {
            v9 = 0xD000000000000017;
            v10 = 0x80000001D73B9B90;
          }

          else if (v8 == 10)
          {
            v9 = 0xD000000000000012;
            v10 = 0x80000001D73B9BB0;
          }

          else
          {
            v9 = 0xD000000000000019;
            v10 = 0x80000001D73B9BD0;
          }
        }

        else if (v8 == 6)
        {
          v9 = 0xD000000000000014;
          v10 = 0x80000001D73B9B40;
        }

        else if (v8 == 7)
        {
          v9 = 0x6F4C7374726F7073;
          v10 = 0xEF6567616D496F67;
        }

        else
        {
          v9 = 0xD000000000000016;
          v10 = 0x80000001D73B9B70;
        }
      }

      else if (*(*(v4 + 48) + v7) > 2u)
      {
        if (v8 == 3)
        {
          v9 = 0x616D497265766F63;
          v10 = 0xEA00000000006567;
        }

        else
        {
          v9 = 0x4976614E64656566;
          if (v8 == 4)
          {
            v10 = 0xEC0000006567616DLL;
          }

          else
          {
            v10 = 0xEE0051486567616DLL;
          }
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        v9 = 0xD00000000000001DLL;
        if (v8 == 1)
        {
          v10 = 0x80000001D73B9AD0;
        }

        else
        {
          v10 = 0x80000001D73B9AF0;
        }
      }

      else
      {
        v9 = 0xD000000000000012;
        v10 = 0x80000001D73B9AB0;
      }

      v11 = 0xD000000000000017;
      v12 = 0xD000000000000019;
      if (v3 == 10)
      {
        v12 = 0xD000000000000012;
      }

      v13 = 0x80000001D73B9BD0;
      if (v3 == 10)
      {
        v13 = 0x80000001D73B9BB0;
      }

      if (v3 != 9)
      {
        v11 = v12;
      }

      v14 = 0x80000001D73B9B90;
      if (v3 != 9)
      {
        v14 = v13;
      }

      v15 = 0xD000000000000014;
      v16 = 0xD000000000000016;
      if (v3 == 7)
      {
        v16 = 0x6F4C7374726F7073;
      }

      v17 = 0xEF6567616D496F67;
      if (v3 != 7)
      {
        v17 = 0x80000001D73B9B70;
      }

      if (v3 == 6)
      {
        v18 = 0x80000001D73B9B40;
      }

      else
      {
        v15 = v16;
        v18 = v17;
      }

      if (v3 <= 8u)
      {
        v11 = v15;
        v14 = v18;
      }

      v19 = 0xEE0051486567616DLL;
      if (v3 == 4)
      {
        v19 = 0xEC0000006567616DLL;
      }

      v20 = 0x616D497265766F63;
      if (v3 == 3)
      {
        v19 = 0xEA00000000006567;
      }

      else
      {
        v20 = 0x4976614E64656566;
      }

      v21 = 0xD00000000000001DLL;
      if (v3 == 1)
      {
        v22 = 0x80000001D73B9AD0;
      }

      else
      {
        v22 = 0x80000001D73B9AF0;
      }

      if (!v3)
      {
        v21 = 0xD000000000000012;
        v22 = 0x80000001D73B9AB0;
      }

      if (v3 <= 2u)
      {
        v20 = v21;
        v19 = v22;
      }

      v23 = v3 <= 5u ? v20 : v11;
      v24 = v3 <= 5u ? v19 : v14;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = sub_1D72646CC();

      if (v25)
      {
        goto LABEL_67;
      }

      v7 = (v7 + 1) & v30;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_65;
      }
    }

LABEL_67:
    result = 0;
    v3 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_65:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v28;
    sub_1D5FF7A60(v3, v7, isUniquelyReferenced_nonNull_native);
    *v28 = v31;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1D5FE9914(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D7263C0C();

    if (v9)
    {

      sub_1D5B5A498(0, &qword_1EDF1AAF0, 0x1E69B5380);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D7263BFC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D6E14AA0(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D5FF61B0(v20 + 1, &qword_1EDF042D8, &qword_1EDF1AAF0, 0x1E69B5380, &qword_1EDF1AAE0);
    }

    v18 = v8;
    sub_1D5FF7310(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D5B5A498(0, &qword_1EDF1AAF0, 0x1E69B5380);
  v11 = sub_1D72636FC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D5FFF8A0(v18, v13, isUniquelyReferenced_nonNull_native, &qword_1EDF042D8, &qword_1EDF1AAF0, 0x1E69B5380, &qword_1EDF1AAE0);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D726370C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1D5FE9BB4(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *v2;
  sub_1D7264A0C();
  v18 = v2;
  v19 = a1;
  sub_1D72621EC();

  v6 = sub_1D7264A5C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    sub_1D5FF7F1C(v3, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v20;
    result = 1;
    goto LABEL_23;
  }

  v9 = ~v7;
  while (!*(*(v5 + 48) + v8))
  {
    v10 = 0xD000000000000014;
    v11 = 0x80000001D73BA280;
    v12 = v3;
    if (!v3)
    {
      goto LABEL_16;
    }

LABEL_7:
    if (v12 == 1)
    {
      v13 = 0xD000000000000021;
    }

    else
    {
      v13 = 0x7461636572706564;
    }

    if (v12 == 1)
    {
      v14 = 0x80000001D73BA2A0;
    }

    else
    {
      v14 = 0xEA00000000006465;
    }

    if (v10 == v13)
    {
      goto LABEL_17;
    }

LABEL_18:
    v15 = sub_1D72646CC();

    if (v15)
    {
      goto LABEL_22;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v10 = 0x7461636572706564;
  v11 = 0xEA00000000006465;
  if (*(*(v5 + 48) + v8) == 1)
  {
    v10 = 0xD000000000000021;
    v11 = 0x80000001D73BA2A0;
  }

  v12 = v3;
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_16:
  v14 = 0x80000001D73BA280;
  if (v10 != 0xD000000000000014)
  {
    goto LABEL_18;
  }

LABEL_17:
  if (v11 != v14)
  {
    goto LABEL_18;
  }

LABEL_22:
  result = 0;
  v3 = *(*(v5 + 48) + v8);
LABEL_23:
  *v19 = v3;
  return result;
}

uint64_t sub_1D5FE9E08(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_1D7264A0C();
  FormatOptionType.rawValue.getter();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v26 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      if (v8 > 5)
      {
        if (*(*(v4 + 48) + v7) > 8u)
        {
          if (v8 == 9)
          {
            v10 = 0xE500000000000000;
            v9 = 0x6F65646976;
          }

          else if (v8 == 10)
          {
            v10 = 0xE400000000000000;
            v9 = 1953394534;
          }

          else
          {
            v9 = 0x616C506F65646976;
            v10 = 0xEB00000000726579;
          }
        }

        else if (v8 == 6)
        {
          v10 = 0xE300000000000000;
          v9 = 7107189;
        }

        else
        {
          v10 = 0xE500000000000000;
          if (v8 == 7)
          {
            v9 = 0x726F6C6F63;
          }

          else
          {
            v9 = 0x6567616D69;
          }
        }
      }

      else if (*(*(v4 + 48) + v7) > 2u)
      {
        if (v8 == 3)
        {
          v10 = 0xE500000000000000;
          v9 = 0x74616F6C66;
        }

        else if (v8 == 4)
        {
          v10 = 0xE700000000000000;
          v9 = 0x72656765746E69;
        }

        else
        {
          v10 = 0xE600000000000000;
          v9 = 0x676E69727473;
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        if (v8 == 1)
        {
          v9 = 1702125924;
        }

        else
        {
          v9 = 1836412517;
        }

        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE700000000000000;
        v9 = 0x6E61656C6F6F62;
      }

      v11 = 0x616C506F65646976;
      if (v3 == 10)
      {
        v11 = 1953394534;
      }

      v12 = 0xEB00000000726579;
      if (v3 == 10)
      {
        v12 = 0xE400000000000000;
      }

      if (v3 == 9)
      {
        v11 = 0x6F65646976;
        v12 = 0xE500000000000000;
      }

      v13 = 0x726F6C6F63;
      if (v3 != 7)
      {
        v13 = 0x6567616D69;
      }

      v14 = 0xE500000000000000;
      if (v3 == 6)
      {
        v13 = 7107189;
        v14 = 0xE300000000000000;
      }

      if (v3 <= 8u)
      {
        v11 = v13;
        v12 = v14;
      }

      v15 = 0x72656765746E69;
      if (v3 != 4)
      {
        v15 = 0x676E69727473;
      }

      v16 = 0xE600000000000000;
      if (v3 == 4)
      {
        v16 = 0xE700000000000000;
      }

      if (v3 == 3)
      {
        v15 = 0x74616F6C66;
        v16 = 0xE500000000000000;
      }

      v17 = 1836412517;
      if (v3 == 1)
      {
        v17 = 1702125924;
      }

      v18 = 0xE400000000000000;
      if (!v3)
      {
        v17 = 0x6E61656C6F6F62;
        v18 = 0xE700000000000000;
      }

      if (v3 <= 2u)
      {
        v15 = v17;
        v16 = v18;
      }

      v19 = v3 <= 5u ? v15 : v11;
      v20 = v3 <= 5u ? v16 : v12;
      if (v9 == v19 && v10 == v20)
      {
        break;
      }

      v21 = sub_1D72646CC();

      if (v21)
      {
        goto LABEL_63;
      }

      v7 = (v7 + 1) & v26;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

LABEL_63:
    result = 0;
    v3 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_61:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    sub_1D5FF81F0(v3, v7, isUniquelyReferenced_nonNull_native);
    *v24 = v27;
    result = 1;
  }

  *a1 = v3;
  return result;
}

BOOL sub_1D5FEA1F0()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  v2 = sub_1D7264A5C() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_1D5FF8644(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t sub_1D5FEA2CC(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_1D7264A0C();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v11 = 0xE500000000000000;
          v10 = 0x6567616D69;
        }

        else
        {
          if (v9 == 4)
          {
            v10 = 1633905005;
          }

          else
          {
            v10 = 0x66456C6175736976;
          }

          if (v9 == 4)
          {
            v11 = 0xE400000000000000;
          }

          else
          {
            v11 = 0xEC00000074636566;
          }
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        if (v9 == 1)
        {
          v10 = 0x72476C6169646172;
        }

        else
        {
          v10 = 0x65695674696C7073;
        }

        if (v9 == 1)
        {
          v11 = 0xEE00746E65696461;
        }

        else
        {
          v11 = 0xE900000000000077;
        }
      }

      else
      {
        v11 = 0xE800000000000000;
        v10 = 0x746E656964617267;
      }

      v12 = 0x66456C6175736976;
      if (v3 == 4)
      {
        v12 = 1633905005;
      }

      v13 = 0xEC00000074636566;
      if (v3 == 4)
      {
        v13 = 0xE400000000000000;
      }

      if (v3 == 3)
      {
        v12 = 0x6567616D69;
        v13 = 0xE500000000000000;
      }

      v14 = 0x72476C6169646172;
      if (v3 != 1)
      {
        v14 = 0x65695674696C7073;
      }

      v15 = 0xEE00746E65696461;
      if (v3 != 1)
      {
        v15 = 0xE900000000000077;
      }

      if (!v3)
      {
        v14 = 0x746E656964617267;
        v15 = 0xE800000000000000;
      }

      v16 = v3 <= 2u ? v14 : v12;
      v17 = v3 <= 2u ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = sub_1D72646CC();

      if (v18)
      {
        goto LABEL_44;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

LABEL_44:
    result = 0;
    v3 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_42:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    sub_1D5FF8754(v3, v7, isUniquelyReferenced_nonNull_native);
    *v21 = v23;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1D5FEA660(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v4 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WebEmbedDataVisualization(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v42 - v15);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v43 = &v42 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v42 - v26);
  v44 = v2;
  v51 = *v2;
  sub_1D7264A0C();
  sub_1D5BE7354(a2, v27, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE7424(v27, v7, type metadata accessor for GenericDataVisualization);
    sub_1D72621EC();
    sub_1D5BF1AEC(v7, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v53 = *v27;
    SportsDataVisualization.identifier.getter();
    sub_1D72621EC();
  }

  v28 = sub_1D7264A5C();
  v29 = -1 << *(v51 + 32);
  v30 = v28 & ~v29;
  v48 = v51 + 56;
  if ((*(v51 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
  {
    v46 = ~v29;
    v49 = *(v9 + 72);
    v50 = v16;
    while (1)
    {
      v31 = *(v51 + 48);
      v47 = v49 * v30;
      sub_1D5BE7354(v31 + v49 * v30, v20, type metadata accessor for WebEmbedDataVisualization);
      sub_1D5BE7354(v20, v16, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D5BE7424(v16, v7, type metadata accessor for GenericDataVisualization);
        v54 = 0x3A636972656E6567;
        v55 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v7, v7[1]);
        v32 = v55;
        v52 = v54;
        sub_1D5BF1AEC(v7, type metadata accessor for GenericDataVisualization);
      }

      else
      {
        v53 = *v16;
        v54 = 0x3A3A7374726F7073;
        v55 = 0xE800000000000000;
        v33 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v33);

        v32 = v55;
        v52 = v54;
      }

      sub_1D5BE7354(a2, v12, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D5BE7424(v12, v7, type metadata accessor for GenericDataVisualization);
        v54 = 0x3A636972656E6567;
        v55 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v7, v7[1]);
        v35 = v54;
        v34 = v55;
        sub_1D5BF1AEC(v7, type metadata accessor for GenericDataVisualization);
      }

      else
      {
        v53 = *v12;
        v54 = 0x3A3A7374726F7073;
        v55 = 0xE800000000000000;
        v36 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v36);

        v35 = v54;
        v34 = v55;
      }

      v16 = v50;
      if (v52 == v35 && v32 == v34)
      {
        break;
      }

      v37 = sub_1D72646CC();

      sub_1D5BF1AEC(v20, type metadata accessor for WebEmbedDataVisualization);
      if (v37)
      {
        goto LABEL_18;
      }

      v30 = (v30 + 1) & v46;
      if (((*(v48 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    sub_1D5BF1AEC(v20, type metadata accessor for WebEmbedDataVisualization);
LABEL_18:
    sub_1D5BF1AEC(a2, type metadata accessor for WebEmbedDataVisualization);
    sub_1D5BE7354(*(v51 + 48) + v47, v45, type metadata accessor for WebEmbedDataVisualization);
    return 0;
  }

  else
  {
LABEL_16:
    v38 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v43;
    sub_1D5BE7354(a2, v43, type metadata accessor for WebEmbedDataVisualization);
    v54 = *v38;
    sub_1D5FF8B4C(v40, v30, isUniquelyReferenced_nonNull_native);
    *v38 = v54;
    sub_1D5BE7424(a2, v45, type metadata accessor for WebEmbedDataVisualization);
    return 1;
  }
}

uint64_t sub_1D5FEAC94(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *v2;
  sub_1D7264A0C();
  v18 = v2;
  sub_1D72621EC();

  v6 = sub_1D7264A5C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v18;
    sub_1D5FF9228(v3, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v19;
    result = 1;
    goto LABEL_24;
  }

  v9 = ~v7;
  while (!*(*(v5 + 48) + v8))
  {
    v10 = 0x6E4572657474656CLL;
    v11 = 0xEB00000000797274;
    v12 = v3;
    if (!v3)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v12 == 1)
    {
      v13 = 0xD000000000000010;
    }

    else
    {
      v13 = 1752461154;
    }

    if (v12 == 1)
    {
      v14 = 0x80000001D73BC380;
    }

    else
    {
      v14 = 0xE400000000000000;
    }

    if (v10 == v13)
    {
      goto LABEL_18;
    }

LABEL_19:
    v15 = sub_1D72646CC();

    if (v15)
    {
      goto LABEL_23;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(*(v5 + 48) + v8) == 1)
  {
    v10 = 0xD000000000000010;
    v11 = 0x80000001D73BC380;
    v12 = v3;
    if (!v3)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v11 = 0xE400000000000000;
  v10 = 1752461154;
  v12 = v3;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = 0xEB00000000797274;
  if (v10 != 0x6E4572657474656CLL)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v11 != v14)
  {
    goto LABEL_19;
  }

LABEL_23:
  result = 0;
  v3 = *(*(v5 + 48) + v8);
LABEL_24:
  *a1 = v3;
  return result;
}

uint64_t sub_1D5FEAEF8(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v24[9] = a2;
  v24[10] = a3;
  sub_1D7264A0C();
  FeedItem.Kind.hash(into:)(v24);
  v9 = sub_1D7264A5C();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  v23 = a1;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_50:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = *v4;
    sub_1D5BF2DDC(a2, a3);
    sub_1D5FF94F0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v24[0];
    *v23 = a2;
    v23[1] = a3;
    return 1;
  }

  v12 = ~v10;
  while (2)
  {
    v13 = *(v8 + 48) + 16 * v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    switch(v15)
    {
      case 0uLL:
        if (a3)
        {
          goto LABEL_41;
        }

        goto LABEL_51;
      case 1uLL:
        if (a3 == 1)
        {
          goto LABEL_51;
        }

        goto LABEL_41;
      case 2uLL:
        if (a3 == 2)
        {
          goto LABEL_51;
        }

        goto LABEL_41;
      case 3uLL:
        if (a3 == 3)
        {
          goto LABEL_51;
        }

        goto LABEL_41;
      case 4uLL:
        if (a3 == 4)
        {
          goto LABEL_51;
        }

        goto LABEL_41;
      case 5uLL:
        if (a3 == 5)
        {
          goto LABEL_51;
        }

        goto LABEL_41;
      case 6uLL:
        if (a3 != 6)
        {
          goto LABEL_41;
        }

LABEL_51:
        sub_1D5BF6680(*v13, *(v13 + 8));
        v21 = a2;
        v22 = v15;
        goto LABEL_52;
      case 7uLL:
        if (a3 != 7)
        {
          goto LABEL_41;
        }

        sub_1D5BF6680(*v13, 7uLL);
        v21 = a2;
        v22 = 7;
        goto LABEL_52;
      case 8uLL:
        if (a3 != 8)
        {
          goto LABEL_41;
        }

        sub_1D5BF6680(*v13, 8uLL);
        v21 = a2;
        v22 = 8;
        goto LABEL_52;
      case 9uLL:
        if (a3 != 9)
        {
          goto LABEL_41;
        }

        sub_1D5BF6680(*v13, 9uLL);
        v21 = a2;
        v22 = 9;
        goto LABEL_52;
      case 0xAuLL:
        if (a3 != 10)
        {
          goto LABEL_41;
        }

        sub_1D5BF6680(*v13, 0xAuLL);
        v21 = a2;
        v22 = 10;
        goto LABEL_52;
      case 0xBuLL:
        if (a3 != 11)
        {
          goto LABEL_41;
        }

        sub_1D5BF6680(*v13, 0xBuLL);
        v21 = a2;
        v22 = 11;
        goto LABEL_52;
      case 0xCuLL:
        if (a3 != 12)
        {
          goto LABEL_41;
        }

        sub_1D5BF6680(*v13, 0xCuLL);
        v21 = a2;
        v22 = 12;
        goto LABEL_52;
      case 0xDuLL:
        if (a3 != 13)
        {
          goto LABEL_41;
        }

        sub_1D5BF6680(*v13, 0xDuLL);
        v21 = a2;
        v22 = 13;
        goto LABEL_52;
      case 0xEuLL:
        if (a3 != 14)
        {
          goto LABEL_41;
        }

        v21 = *v13;
        v22 = 14;
        goto LABEL_52;
      case 0xFuLL:
        if (a3 != 15)
        {
          goto LABEL_41;
        }

        v21 = *v13;
        v22 = 15;
        goto LABEL_52;
      case 0x10uLL:
        if (a3 != 16)
        {
          goto LABEL_41;
        }

        v21 = *v13;
        v22 = 16;
        goto LABEL_52;
      case 0x11uLL:
        if (a3 != 17)
        {
          goto LABEL_41;
        }

        v21 = *v13;
        v22 = 17;
        goto LABEL_52;
      default:
        if (a3 < 0x12)
        {
          sub_1D5BF2DDC(*v13, *(v13 + 8));
LABEL_41:
          sub_1D5BF2DDC(a2, a3);
          sub_1D5BF6680(v14, v15);
          sub_1D5BF6680(a2, a3);
          goto LABEL_42;
        }

        if (v14 != a2 || v15 != a3)
        {
          v17 = sub_1D72646CC();
          sub_1D5BF2DDC(a2, a3);
          sub_1D5BF2DDC(v14, v15);
          sub_1D5BF6680(v14, v15);
          sub_1D5BF6680(a2, a3);
          if (v17)
          {
            goto LABEL_53;
          }

LABEL_42:
          v11 = (v11 + 1) & v12;
          if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_50;
          }

          continue;
        }

        sub_1D5BF2DDC(a2, a3);
        sub_1D5BF2DDC(a2, a3);
        sub_1D5BF6680(a2, a3);
        v21 = a2;
        v22 = a3;
LABEL_52:
        sub_1D5BF6680(v21, v22);
LABEL_53:
        sub_1D5BF6680(a2, a3);
        v20 = *(*(v8 + 48) + 16 * v11);
        *v23 = v20;
        sub_1D5BF2DDC(v20, *(&v20 + 1));
        return 0;
    }
  }
}

uint64_t sub_1D5FEB328(_BYTE *a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11 = *v5;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a2);
  v12 = sub_1D7264A5C();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_1D5FF9868(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D5FEB448(_BYTE *a1, char a2)
{
  v4 = *v2;
  sub_1D7264A0C();
  v18 = a2;
  if (a2)
  {
    v5 = 0x746C7561666564;
  }

  else
  {
    v5 = 1685217635;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  sub_1D72621EC();

  v7 = sub_1D7264A5C();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v4 + 48) + v9) ? 0x746C7561666564 : 1685217635;
      v12 = *(*(v4 + 48) + v9) ? 0xE700000000000000 : 0xE400000000000000;
      if (v11 == v5 && v12 == v6)
      {
        break;
      }

      v14 = sub_1D72646CC();

      if (v14)
      {
        goto LABEL_23;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v16 = *(*(v4 + 48) + v9);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = v18 & 1;
    sub_1D5FF99E4(v18 & 1, v9, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    result = 1;
  }

  *a1 = v16;
  return result;
}

uint64_t sub_1D5FEB604(char *a1, uint64_t a2)
{
  v3 = a2;
  v20 = *v2;
  sub_1D7264A0C();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v20 + 32);
  v7 = v5 & ~v6;
  if ((*(v20 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v20 + 48) + v7);
      v10 = 0xD00000000000001CLL;
      if (v9 == 1)
      {
        v11 = "unusedProperties";
      }

      else
      {
        v10 = 0xD000000000000028;
        v11 = "duplicateNewsroomIdentifiers";
      }

      v12 = v9 == 0;
      if (*(*(v20 + 48) + v7))
      {
        v13 = v10;
      }

      else
      {
        v13 = 0xD000000000000010;
      }

      v14 = "bility-news-plus-via-hardware";
      if (!v12)
      {
        v14 = v11;
      }

      if (v3)
      {
        v15 = v3 == 1 ? 0xD00000000000001CLL : 0xD000000000000028;
        v16 = v3 == 1 ? "unusedProperties" : "duplicateNewsroomIdentifiers";
      }

      else
      {
        v15 = 0xD000000000000010;
        v16 = "bility-news-plus-via-hardware";
      }

      if (v13 == v15 && (v14 | 0x8000000000000000) == (v16 | 0x8000000000000000))
      {
        break;
      }

      v17 = sub_1D72646CC();

      if (v17)
      {
        goto LABEL_25;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v20 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_25:
    result = 0;
    v3 = *(*(v20 + 48) + v7);
  }

  else
  {
LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_1D5FF9C08(v3, v7, isUniquelyReferenced_nonNull_native);
    *v2 = v21;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1D5FEB840(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v24[9] = a2;
  v24[10] = a3;
  sub_1D7264A0C();
  FormatItemKind.hash(into:)(v24);
  v9 = sub_1D7264A5C();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  v23 = a1;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_46:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = *v4;
    sub_1D5CBA110(a2, a3);
    sub_1D5FF9E98(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v24[0];
    *v23 = a2;
    v23[1] = a3;
    return 1;
  }

  v12 = ~v10;
  while (2)
  {
    v13 = *(v8 + 48) + 16 * v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    switch(v15)
    {
      case 0uLL:
        if (a3)
        {
          goto LABEL_37;
        }

        sub_1D5CBA0FC(*v13, 0);
        sub_1D5CBA0FC(a2, 0);
        v20 = v14;
        v21 = 0;
        goto LABEL_48;
      case 1uLL:
        if (a3 != 1)
        {
          goto LABEL_37;
        }

        sub_1D5CBA0FC(*v13, 1uLL);
        sub_1D5CBA0FC(a2, 1uLL);
        v20 = v14;
        v21 = 1;
        goto LABEL_48;
      case 2uLL:
        if (a3 != 2)
        {
          goto LABEL_37;
        }

        sub_1D5CBA0FC(*v13, 2uLL);
        sub_1D5CBA0FC(a2, 2uLL);
        v20 = v14;
        v21 = 2;
        goto LABEL_48;
      case 3uLL:
        if (a3 != 3)
        {
          goto LABEL_37;
        }

        sub_1D5CBA0FC(*v13, 3uLL);
        sub_1D5CBA0FC(a2, 3uLL);
        v20 = v14;
        v21 = 3;
        goto LABEL_48;
      case 4uLL:
        if (a3 != 4)
        {
          goto LABEL_37;
        }

        sub_1D5CBA0FC(*v13, 4uLL);
        v20 = a2;
        v21 = 4;
        goto LABEL_48;
      case 5uLL:
        if (a3 != 5)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 5;
        goto LABEL_48;
      case 6uLL:
        if (a3 != 6)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 6;
        goto LABEL_48;
      case 7uLL:
        if (a3 != 7)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 7;
        goto LABEL_48;
      case 8uLL:
        if (a3 != 8)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 8;
        goto LABEL_48;
      case 9uLL:
        if (a3 != 9)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 9;
        goto LABEL_48;
      case 0xAuLL:
        if (a3 != 10)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 10;
        goto LABEL_48;
      case 0xBuLL:
        if (a3 != 11)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 11;
        goto LABEL_48;
      case 0xCuLL:
        if (a3 != 12)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 12;
        goto LABEL_48;
      case 0xDuLL:
        if (a3 != 13)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 13;
        goto LABEL_48;
      case 0xEuLL:
        if (a3 != 14)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 14;
        goto LABEL_48;
      case 0xFuLL:
        if (a3 != 15)
        {
          goto LABEL_37;
        }

        v20 = *v13;
        v21 = 15;
        goto LABEL_48;
      default:
        if (a3 < 0x10)
        {
LABEL_37:
          sub_1D5CBA110(*v13, *(v13 + 8));
          sub_1D5CBA110(a2, a3);
          sub_1D5CBA110(v14, v15);
          sub_1D5CBA0FC(v14, v15);
          sub_1D5CBA0FC(a2, a3);
          sub_1D5CBA0FC(v14, v15);
          goto LABEL_38;
        }

        if (v14 != a2 || v15 != a3)
        {
          v17 = sub_1D72646CC();
          sub_1D5CBA110(a2, a3);
          sub_1D5CBA110(v14, v15);
          sub_1D5CBA0FC(v14, v15);
          sub_1D5CBA0FC(a2, a3);
          if (v17)
          {
            goto LABEL_49;
          }

LABEL_38:
          v11 = (v11 + 1) & v12;
          if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_46;
          }

          continue;
        }

        v20 = a2;
        v21 = a3;
LABEL_48:
        sub_1D5CBA0FC(v20, v21);
LABEL_49:
        sub_1D5CBA0FC(a2, a3);
        v22 = *(*(v8 + 48) + 16 * v11);
        *v23 = v22;
        sub_1D5CBA110(v22, *(&v22 + 1));
        return 0;
    }
  }
}

uint64_t sub_1D5FEBC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = *v4;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v5);
  sub_1D72621EC();
  v9 = sub_1D7264A5C();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v8 + 48);
    do
    {
      v14 = v13 + 24 * v11;
      v15 = *(v14 + 16);
      if (*(v14 + 16))
      {
        if (v15 == 1)
        {
          if (v5 != 1)
          {
            goto LABEL_4;
          }
        }

        else if (v5 != 2)
        {
          goto LABEL_4;
        }
      }

      else if (v5)
      {
        goto LABEL_4;
      }

      v16 = *v14 == a2 && *(v14 + 8) == a3;
      if (v16 || (sub_1D72646CC() & 1) != 0)
      {
        sub_1D5DEA520(a2, a3, v15);
        v17 = *(v8 + 48) + 24 * v11;
        v18 = *v17;
        v19 = *(v17 + 8);
        *a1 = *v17;
        *(a1 + 8) = v19;
        v20 = *(v17 + 16);
        *(a1 + 16) = v20;
        sub_1D5DEA210(v18, v19, v20);
        return 0;
      }

LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v23;
  sub_1D5DEA210(a2, a3, v5);
  sub_1D5FFA24C(a2, a3, v5, v11, isUniquelyReferenced_nonNull_native);
  *v23 = v25;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = v5;
  return 1;
}

uint64_t sub_1D5FEBE30(uint64_t a1, uint64_t a2)
{
  v121 = a1;
  sub_1D5D50E70(0, &qword_1EDF0CE38, sub_1D60077D8);
  v110 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v109 = &v104 - v6;
  sub_1D5D50E70(0, &qword_1EC8801B0, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  v117 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v118 = &v104 - v9;
  v10 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  v134 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v133 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v119 = &v104 - v15;
  v16 = type metadata accessor for FormatVersionRequirement(0);
  v137 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v106 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v104 - v21;
  sub_1D60077D8(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v107 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v104 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v104 - v32;
  v34 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v111 = &v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v104 - v39;
  v120 = v2;
  v132 = *v2;
  sub_1D7264A0C();
  v135 = *a2;
  sub_1D6907920(&v138, v135);
  v41 = *(a2 + 8);
  v42 = *(a2 + 24);
  v43 = *(a2 + 32);
  v126 = *(a2 + 16);
  v127 = v41;
  sub_1D72621EC();
  v125 = v42;
  sub_1D6C37A40(&v138, v42);
  v123 = v43;
  MEMORY[0x1DA6FC0B0](v43);
  MEMORY[0x1DA6FC0B0](*(a2 + 56));
  sub_1D72621EC();
  v116 = v10;
  v44 = *(v10 + 28);
  v124 = a2;
  v115 = v44;
  sub_1D5BE7354(a2 + v44, v40, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5EA24BC();
  v46 = v45;
  v47 = *(v45 - 8);
  v48 = *(v47 + 48);
  v49 = v47 + 48;
  v50 = v48(v40, 1, v45);
  v108 = v16;
  if (v50 == 1)
  {
    sub_1D7264A2C();
    v51 = v137;
  }

  else
  {
    sub_1D5BE7424(v40, v33, sub_1D60077D8);
    sub_1D7264A2C();
    sub_1D5BE7354(v33, v29, sub_1D60077D8);
    v51 = v137;
    if ((*(v137 + 48))(v29, 1, v16) == 1)
    {
      sub_1D7264A2C();
    }

    else
    {
      sub_1D5BE7424(v29, v22, type metadata accessor for FormatVersionRequirement);
      sub_1D7264A2C();
      sub_1D601DA30(&v138);
      sub_1D5BF1AEC(v22, type metadata accessor for FormatVersionRequirement);
    }

    sub_1D5BF1AEC(v33, sub_1D60077D8);
  }

  v52 = sub_1D7264A5C();
  v53 = -1 << *(v132 + 32);
  v54 = v52 & ~v53;
  v131 = v132 + 56;
  if (((*(v132 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
  {
LABEL_175:
    v99 = v120;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v124;
    v102 = v119;
    sub_1D5BE7354(v124, v119, type metadata accessor for FormatDerivedDataResultOptionReference);
    *&v138 = *v99;
    sub_1D5FFA4A8(v102, v54, isUniquelyReferenced_nonNull_native);
    *v99 = v138;
    sub_1D5BE7424(v101, v121, type metadata accessor for FormatDerivedDataResultOptionReference);
    return 1;
  }

  v112 = v49;
  v113 = v48;
  v114 = v46;
  v129 = ~v53;
  v136 = *(v135 + 16);
  v130 = *(v134 + 72);
  v105 = (v51 + 48);
  v122 = (v135 + 48);
  v55 = v133;
LABEL_12:
  v59 = *(v132 + 48);
  v134 = v54;
  v128 = v130 * v54;
  sub_1D5BE7354(v59 + v130 * v54, v55, type metadata accessor for FormatDerivedDataResultOptionReference);
  v137 = *v55;
  if (*(v137 + 16) != v136)
  {
    goto LABEL_11;
  }

  if (!v136 || v137 == v135)
  {
LABEL_122:
    v72 = *(v133 + 24);
    v73 = *(v133 + 32);
    v74 = *(v133 + 8) == v127 && *(v133 + 16) == v126;
    if (!v74 && (sub_1D72646CC() & 1) == 0 || (sub_1D5E1E5A4(v72, v125) & 1) == 0 || v73 != v123)
    {
      goto LABEL_11;
    }

    v75 = *(v133 + 40);
    v49 = *(v133 + 48);
    v76 = *(v133 + 56);
    v78 = *(v124 + 40);
    v77 = *(v124 + 48);
    v79 = *(v124 + 56);
    if (*(v133 + 56))
    {
      if (v76 == 1)
      {
        if (v79 == 1)
        {
          if (v75 != v78 || v49 != v77)
          {
            v80 = sub_1D72646CC();
            sub_1D5DEA210(v78, v77, 1u);
            sub_1D5DEA210(v75, v49, 1u);
            sub_1D5DEA520(v75, v49, 1u);
            sub_1D5DEA520(v78, v77, 1u);
            if ((v80 & 1) == 0)
            {
              goto LABEL_11;
            }

            goto LABEL_149;
          }

LABEL_148:
          sub_1D5DEA210(v75, v49, v76);
          sub_1D5DEA210(v75, v49, v76);
          sub_1D5DEA520(v75, v49, v76);
          sub_1D5DEA520(v75, v49, v76);
          goto LABEL_149;
        }

        sub_1D5DEA210(*(v124 + 40), *(v124 + 48), *(v124 + 56));
        sub_1D5DEA210(v75, v49, 1u);
        v56 = v75;
        v57 = v49;
        v58 = 1;
LABEL_10:
        sub_1D5DEA520(v56, v57, v58);
        sub_1D5DEA520(v78, v77, v79);
        goto LABEL_11;
      }

      if (v79 != 2)
      {
        sub_1D5DEA210(*(v124 + 40), *(v124 + 48), *(v124 + 56));
        sub_1D5DEA210(v75, v49, 2u);
        v56 = v75;
        v57 = v49;
        v58 = 2;
        goto LABEL_10;
      }

      if (v75 == v78 && v49 == v77)
      {
        goto LABEL_148;
      }

      v81 = sub_1D72646CC();
      sub_1D5DEA210(v78, v77, 2u);
      sub_1D5DEA210(v75, v49, 2u);
      sub_1D5DEA520(v75, v49, 2u);
      sub_1D5DEA520(v78, v77, 2u);
      if ((v81 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (*(v124 + 56))
      {
        sub_1D5DEA210(*(v124 + 40), *(v124 + 48), *(v124 + 56));
        sub_1D5DEA210(v75, v49, 0);
        v56 = v75;
        v57 = v49;
        v58 = 0;
        goto LABEL_10;
      }

      if (v75 == v78 && v49 == v77)
      {
        goto LABEL_148;
      }

      v95 = sub_1D72646CC();
      sub_1D5DEA210(v78, v77, 0);
      sub_1D5DEA210(v75, v49, 0);
      sub_1D5DEA520(v75, v49, 0);
      sub_1D5DEA520(v78, v77, 0);
      if ((v95 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_149:
    v85 = *(v117 + 48);
    v54 = v133;
    v49 = v118;
    sub_1D5BE7354(v133 + *(v116 + 28), v118, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
    sub_1D5BE7354(v124 + v115, v49 + v85, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
    v86 = v114;
    v87 = v113;
    if (v113(v49, 1, v114) == 1)
    {
      if (v87(v49 + v85, 1, v86) == 1)
      {
        goto LABEL_179;
      }

LABEL_154:
      sub_1D6007870(v49, &qword_1EC8801B0, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
      goto LABEL_11;
    }

    v88 = v111;
    sub_1D5BE7354(v49, v111, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
    if (v87(v49 + v85, 1, v86) == 1)
    {
      sub_1D5BF1AEC(v88, sub_1D60077D8);
      goto LABEL_154;
    }

    v89 = *(v110 + 48);
    v90 = v88;
    v62 = v109;
    sub_1D5BE7424(v90, v109, sub_1D60077D8);
    sub_1D5BE7424(v49 + v85, &v62[v89], sub_1D60077D8);
    v91 = *v105;
    v92 = v108;
    v93 = (*v105)(v62, 1, v108);
    v94 = v107;
    if (v93 == 1)
    {
      if (v91(&v62[v89], 1, v92) == 1)
      {
        goto LABEL_178;
      }
    }

    else
    {
      sub_1D5BE7354(v62, v107, sub_1D60077D8);
      if (v91(&v62[v89], 1, v92) != 1)
      {
        v96 = &v62[v89];
        v97 = v106;
        sub_1D5BE7424(v96, v106, type metadata accessor for FormatVersionRequirement);
        v98 = sub_1D6024840(v94, v97);
        sub_1D5BF1AEC(v97, type metadata accessor for FormatVersionRequirement);
        sub_1D5BF1AEC(v94, type metadata accessor for FormatVersionRequirement);
        sub_1D5BF1AEC(v62, sub_1D60077D8);
        if (v98)
        {
          goto LABEL_179;
        }

LABEL_166:
        sub_1D5BF1AEC(v49, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
        goto LABEL_11;
      }

      sub_1D5BF1AEC(v94, type metadata accessor for FormatVersionRequirement);
    }

    sub_1D6007870(v62, &qword_1EDF0CE38, sub_1D60077D8);
    goto LABEL_166;
  }

  v60 = 0;
  v61 = (v137 + 48);
  v62 = v122;
  while (v60 < *(v137 + 16))
  {
    if (v60 >= *(v135 + 16))
    {
      goto LABEL_177;
    }

    v66 = *(v61 - 2);
    v54 = *(v61 - 1);
    v67 = *v61;
    v68 = *(v62 - 2);
    v49 = *(v62 - 1);
    v69 = *v62;
    if (v67 >> 6)
    {
      if (v67 >> 6 == 1)
      {
        if ((v69 & 0xC0) != 0x40)
        {
          goto LABEL_143;
        }

        switch(v54)
        {
          case 0uLL:
            if (v49)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 0, *v62);
            sub_1D6007830(v68, 0, v69);
            sub_1D6007830(v66, 0, v67);
            sub_1D6007830(v68, 0, v69);
            sub_1D6007830(v66, 0, v67);
            sub_1D5CBA0FC(v66, 0);
            sub_1D5CBA0FC(v68, 0);
            sub_1D6007850(v66, 0, v67);
            sub_1D6007850(v68, 0, v69);
            sub_1D6007850(v68, 0, v69);
            sub_1D6007850(v66, 0, v67);
            sub_1D6007850(v68, 0, v69);
            v63 = v66;
            v64 = 0;
            goto LABEL_17;
          case 1uLL:
            if (v49 != 1)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 1uLL, *v62);
            sub_1D6007830(v68, 1uLL, v69);
            sub_1D6007830(v66, 1uLL, v67);
            sub_1D6007830(v68, 1uLL, v69);
            sub_1D6007830(v66, 1uLL, v67);
            sub_1D5CBA0FC(v66, 1uLL);
            sub_1D5CBA0FC(v68, 1uLL);
            sub_1D6007850(v66, 1uLL, v67);
            sub_1D6007850(v68, 1uLL, v69);
            sub_1D6007850(v68, 1uLL, v69);
            sub_1D6007850(v66, 1uLL, v67);
            sub_1D6007850(v68, 1uLL, v69);
            v63 = v66;
            v64 = 1;
            goto LABEL_17;
          case 2uLL:
            if (v49 != 2)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 2uLL, *v62);
            sub_1D6007830(v68, 2uLL, v69);
            sub_1D6007830(v66, 2uLL, v67);
            sub_1D6007830(v68, 2uLL, v69);
            sub_1D6007830(v66, 2uLL, v67);
            sub_1D5CBA0FC(v66, 2uLL);
            sub_1D5CBA0FC(v68, 2uLL);
            sub_1D6007850(v66, 2uLL, v67);
            sub_1D6007850(v68, 2uLL, v69);
            sub_1D6007850(v68, 2uLL, v69);
            sub_1D6007850(v66, 2uLL, v67);
            sub_1D6007850(v68, 2uLL, v69);
            v63 = v66;
            v64 = 2;
            goto LABEL_17;
          case 3uLL:
            if (v49 != 3)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 3uLL, *v62);
            sub_1D6007830(v68, 3uLL, v69);
            sub_1D6007830(v66, 3uLL, v67);
            sub_1D6007830(v68, 3uLL, v69);
            sub_1D6007830(v66, 3uLL, v67);
            sub_1D5CBA0FC(v66, 3uLL);
            sub_1D5CBA0FC(v68, 3uLL);
            sub_1D6007850(v66, 3uLL, v67);
            sub_1D6007850(v68, 3uLL, v69);
            sub_1D6007850(v68, 3uLL, v69);
            sub_1D6007850(v66, 3uLL, v67);
            sub_1D6007850(v68, 3uLL, v69);
            v63 = v66;
            v64 = 3;
            goto LABEL_17;
          case 4uLL:
            if (v49 != 4)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 4uLL, *v62);
            sub_1D6007830(v68, 4uLL, v69);
            sub_1D6007830(v66, 4uLL, v67);
            sub_1D6007830(v68, 4uLL, v69);
            sub_1D6007830(v66, 4uLL, v67);
            sub_1D5CBA0FC(v66, 4uLL);
            sub_1D5CBA0FC(v68, 4uLL);
            sub_1D6007850(v66, 4uLL, v67);
            sub_1D6007850(v68, 4uLL, v69);
            sub_1D6007850(v68, 4uLL, v69);
            sub_1D6007850(v66, 4uLL, v67);
            sub_1D6007850(v68, 4uLL, v69);
            v63 = v66;
            v64 = 4;
            goto LABEL_17;
          case 5uLL:
            if (v49 != 5)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 5uLL, *v62);
            sub_1D6007830(v68, 5uLL, v69);
            sub_1D6007830(v66, 5uLL, v67);
            sub_1D6007830(v68, 5uLL, v69);
            sub_1D6007830(v66, 5uLL, v67);
            sub_1D5CBA0FC(v66, 5uLL);
            sub_1D5CBA0FC(v68, 5uLL);
            sub_1D6007850(v66, 5uLL, v67);
            sub_1D6007850(v68, 5uLL, v69);
            sub_1D6007850(v68, 5uLL, v69);
            sub_1D6007850(v66, 5uLL, v67);
            sub_1D6007850(v68, 5uLL, v69);
            v63 = v66;
            v64 = 5;
            goto LABEL_17;
          case 6uLL:
            if (v49 != 6)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 6uLL, *v62);
            sub_1D6007830(v68, 6uLL, v69);
            sub_1D6007830(v66, 6uLL, v67);
            sub_1D6007830(v68, 6uLL, v69);
            sub_1D6007830(v66, 6uLL, v67);
            sub_1D5CBA0FC(v66, 6uLL);
            sub_1D5CBA0FC(v68, 6uLL);
            sub_1D6007850(v66, 6uLL, v67);
            sub_1D6007850(v68, 6uLL, v69);
            sub_1D6007850(v68, 6uLL, v69);
            sub_1D6007850(v66, 6uLL, v67);
            sub_1D6007850(v68, 6uLL, v69);
            v63 = v66;
            v64 = 6;
            goto LABEL_17;
          case 7uLL:
            if (v49 != 7)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 7uLL, *v62);
            sub_1D6007830(v68, 7uLL, v69);
            sub_1D6007830(v66, 7uLL, v67);
            sub_1D6007830(v68, 7uLL, v69);
            sub_1D6007830(v66, 7uLL, v67);
            sub_1D5CBA0FC(v66, 7uLL);
            sub_1D5CBA0FC(v68, 7uLL);
            sub_1D6007850(v66, 7uLL, v67);
            sub_1D6007850(v68, 7uLL, v69);
            sub_1D6007850(v68, 7uLL, v69);
            sub_1D6007850(v66, 7uLL, v67);
            sub_1D6007850(v68, 7uLL, v69);
            v63 = v66;
            v64 = 7;
            goto LABEL_17;
          case 8uLL:
            if (v49 != 8)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 8uLL, *v62);
            sub_1D6007830(v68, 8uLL, v69);
            sub_1D6007830(v66, 8uLL, v67);
            sub_1D6007830(v68, 8uLL, v69);
            sub_1D6007830(v66, 8uLL, v67);
            sub_1D5CBA0FC(v66, 8uLL);
            sub_1D5CBA0FC(v68, 8uLL);
            sub_1D6007850(v66, 8uLL, v67);
            sub_1D6007850(v68, 8uLL, v69);
            sub_1D6007850(v68, 8uLL, v69);
            sub_1D6007850(v66, 8uLL, v67);
            sub_1D6007850(v68, 8uLL, v69);
            v63 = v66;
            v64 = 8;
            goto LABEL_17;
          case 9uLL:
            if (v49 != 9)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 9uLL, *v62);
            sub_1D6007830(v68, 9uLL, v69);
            sub_1D6007830(v66, 9uLL, v67);
            sub_1D6007830(v68, 9uLL, v69);
            sub_1D6007830(v66, 9uLL, v67);
            sub_1D5CBA0FC(v66, 9uLL);
            sub_1D5CBA0FC(v68, 9uLL);
            sub_1D6007850(v66, 9uLL, v67);
            sub_1D6007850(v68, 9uLL, v69);
            sub_1D6007850(v68, 9uLL, v69);
            sub_1D6007850(v66, 9uLL, v67);
            sub_1D6007850(v68, 9uLL, v69);
            v63 = v66;
            v64 = 9;
            goto LABEL_17;
          case 0xAuLL:
            if (v49 != 10)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 0xAuLL, *v62);
            sub_1D6007830(v68, 0xAuLL, v69);
            sub_1D6007830(v66, 0xAuLL, v67);
            sub_1D6007830(v68, 0xAuLL, v69);
            sub_1D6007830(v66, 0xAuLL, v67);
            sub_1D5CBA0FC(v66, 0xAuLL);
            sub_1D5CBA0FC(v68, 0xAuLL);
            sub_1D6007850(v66, 0xAuLL, v67);
            sub_1D6007850(v68, 0xAuLL, v69);
            sub_1D6007850(v68, 0xAuLL, v69);
            sub_1D6007850(v66, 0xAuLL, v67);
            sub_1D6007850(v68, 0xAuLL, v69);
            v63 = v66;
            v64 = 10;
            goto LABEL_17;
          case 0xBuLL:
            if (v49 != 11)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 0xBuLL, *v62);
            sub_1D6007830(v68, 0xBuLL, v69);
            sub_1D6007830(v66, 0xBuLL, v67);
            sub_1D6007830(v68, 0xBuLL, v69);
            sub_1D6007830(v66, 0xBuLL, v67);
            sub_1D5CBA0FC(v66, 0xBuLL);
            sub_1D5CBA0FC(v68, 0xBuLL);
            sub_1D6007850(v66, 0xBuLL, v67);
            sub_1D6007850(v68, 0xBuLL, v69);
            sub_1D6007850(v68, 0xBuLL, v69);
            sub_1D6007850(v66, 0xBuLL, v67);
            sub_1D6007850(v68, 0xBuLL, v69);
            v63 = v66;
            v64 = 11;
            goto LABEL_17;
          case 0xCuLL:
            if (v49 != 12)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 0xCuLL, *v62);
            sub_1D6007830(v68, 0xCuLL, v69);
            sub_1D6007830(v66, 0xCuLL, v67);
            sub_1D6007830(v68, 0xCuLL, v69);
            sub_1D6007830(v66, 0xCuLL, v67);
            sub_1D5CBA0FC(v66, 0xCuLL);
            sub_1D5CBA0FC(v68, 0xCuLL);
            sub_1D6007850(v66, 0xCuLL, v67);
            sub_1D6007850(v68, 0xCuLL, v69);
            sub_1D6007850(v68, 0xCuLL, v69);
            sub_1D6007850(v66, 0xCuLL, v67);
            sub_1D6007850(v68, 0xCuLL, v69);
            v63 = v66;
            v64 = 12;
            goto LABEL_17;
          case 0xDuLL:
            if (v49 != 13)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 0xDuLL, *v62);
            sub_1D6007830(v68, 0xDuLL, v69);
            sub_1D6007830(v66, 0xDuLL, v67);
            sub_1D6007830(v68, 0xDuLL, v69);
            sub_1D6007830(v66, 0xDuLL, v67);
            sub_1D5CBA0FC(v66, 0xDuLL);
            sub_1D5CBA0FC(v68, 0xDuLL);
            sub_1D6007850(v66, 0xDuLL, v67);
            sub_1D6007850(v68, 0xDuLL, v69);
            sub_1D6007850(v68, 0xDuLL, v69);
            sub_1D6007850(v66, 0xDuLL, v67);
            sub_1D6007850(v68, 0xDuLL, v69);
            v63 = v66;
            v64 = 13;
            goto LABEL_17;
          case 0xEuLL:
            if (v49 != 14)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 0xEuLL, *v62);
            sub_1D6007830(v68, 0xEuLL, v69);
            sub_1D6007830(v66, 0xEuLL, v67);
            sub_1D6007830(v68, 0xEuLL, v69);
            sub_1D6007830(v66, 0xEuLL, v67);
            sub_1D5CBA0FC(v66, 0xEuLL);
            sub_1D5CBA0FC(v68, 0xEuLL);
            sub_1D6007850(v66, 0xEuLL, v67);
            sub_1D6007850(v68, 0xEuLL, v69);
            sub_1D6007850(v68, 0xEuLL, v69);
            sub_1D6007850(v66, 0xEuLL, v67);
            sub_1D6007850(v68, 0xEuLL, v69);
            v63 = v66;
            v64 = 14;
            goto LABEL_17;
          case 0xFuLL:
            if (v49 != 15)
            {
              goto LABEL_170;
            }

            sub_1D6007830(*(v62 - 2), 0xFuLL, *v62);
            sub_1D6007830(v68, 0xFuLL, v69);
            sub_1D6007830(v66, 0xFuLL, v67);
            sub_1D6007830(v68, 0xFuLL, v69);
            sub_1D6007830(v66, 0xFuLL, v67);
            sub_1D5CBA0FC(v66, 0xFuLL);
            sub_1D5CBA0FC(v68, 0xFuLL);
            sub_1D6007850(v66, 0xFuLL, v67);
            sub_1D6007850(v68, 0xFuLL, v69);
            sub_1D6007850(v68, 0xFuLL, v69);
            sub_1D6007850(v66, 0xFuLL, v67);
            sub_1D6007850(v68, 0xFuLL, v69);
            v63 = v66;
            v64 = 15;
            goto LABEL_17;
          default:
            if (v49 < 0x10)
            {
              sub_1D6007830(*(v61 - 2), *(v61 - 1), *v61);
LABEL_170:
              sub_1D6007830(v68, v49, v69);
              sub_1D6007830(v68, v49, v69);
              sub_1D6007830(v66, v54, v67);
              sub_1D6007830(v68, v49, v69);
              sub_1D6007830(v66, v54, v67);
              sub_1D6007830(v68, v49, v69);
              sub_1D6007830(v66, v54, v67);
              sub_1D5CBA0FC(v66, v54);
              sub_1D5CBA0FC(v68, v49);
              sub_1D6007850(v66, v54, v67);
              sub_1D6007850(v68, v49, v69);
              sub_1D6007850(v68, v49, v69);
              sub_1D6007850(v66, v54, v67);
              sub_1D6007850(v68, v49, v69);
              sub_1D6007850(v66, v54, v67);
              goto LABEL_11;
            }

            if (v66 == v68 && v54 == v49)
            {
              sub_1D6007830(*(v61 - 2), *(v61 - 1), *v62);
              sub_1D6007830(v66, v54, v67);
              sub_1D6007830(v66, v54, v69);
              sub_1D6007830(v66, v54, v67);
              sub_1D6007830(v66, v54, v69);
              sub_1D6007830(v66, v54, v67);
              sub_1D6007830(v66, v54, v69);
              sub_1D6007830(v66, v54, v67);
              sub_1D5CBA0FC(v66, v54);
              sub_1D5CBA0FC(v66, v54);
              sub_1D6007850(v66, v54, v67);
              sub_1D6007850(v66, v54, v69);
              sub_1D6007850(v66, v54, v69);
              sub_1D6007850(v66, v54, v67);
              sub_1D6007850(v66, v54, v69);
              v63 = v66;
              v64 = v54;
LABEL_17:
              v65 = v67;
              goto LABEL_18;
            }

            v71 = sub_1D72646CC();
            sub_1D6007830(v68, v49, v69);
            sub_1D6007830(v66, v54, v67);
            sub_1D6007830(v68, v49, v69);
            sub_1D6007830(v66, v54, v67);
            sub_1D6007830(v68, v49, v69);
            sub_1D6007830(v66, v54, v67);
            sub_1D6007830(v68, v49, v69);
            sub_1D6007830(v66, v54, v67);
            sub_1D5CBA0FC(v66, v54);
            sub_1D5CBA0FC(v68, v49);
            sub_1D6007850(v66, v54, v67);
            sub_1D6007850(v68, v49, v69);
            sub_1D6007850(v68, v49, v69);
            sub_1D6007850(v66, v54, v67);
            sub_1D6007850(v68, v49, v69);
            sub_1D6007850(v66, v54, v67);
            if ((v71 & 1) == 0)
            {
              goto LABEL_11;
            }

            break;
        }
      }

      else
      {
        if (v54 | v66 || v67 != 128)
        {
          if (v66 == 1 && !v54 && v67 == 128)
          {
            if ((v69 & 0xC0) != 0x80 || v68 != 1 || v49 || v69 != 128)
            {
              sub_1D6007830(*(v62 - 2), *(v62 - 1), *v62);
              v82 = 1;
              goto LABEL_173;
            }

            sub_1D6007850(1, 0, 0x80u);
            v63 = 1;
          }

          else if (v66 == 2 && !v54 && v67 == 128)
          {
            if ((v69 & 0xC0) != 0x80 || v68 != 2 || v49 || v69 != 128)
            {
              sub_1D6007830(*(v62 - 2), *(v62 - 1), *v62);
              v82 = 2;
              goto LABEL_173;
            }

            sub_1D6007850(2, 0, 0x80u);
            v63 = 2;
          }

          else if (v66 == 3 && !v54 && v67 == 128)
          {
            if ((v69 & 0xC0) != 0x80 || v68 != 3 || v49 || v69 != 128)
            {
              sub_1D6007830(*(v62 - 2), *(v62 - 1), *v62);
              v82 = 3;
              goto LABEL_173;
            }

            sub_1D6007850(3, 0, 0x80u);
            v63 = 3;
          }

          else if (v66 == 4 && !v54 && v67 == 128)
          {
            if ((v69 & 0xC0) != 0x80 || v68 != 4 || v49 || v69 != 128)
            {
              sub_1D6007830(*(v62 - 2), *(v62 - 1), *v62);
              v82 = 4;
              goto LABEL_173;
            }

            sub_1D6007850(4, 0, 0x80u);
            v63 = 4;
          }

          else if (v66 == 5 && !v54 && v67 == 128)
          {
            if ((v69 & 0xC0) != 0x80 || v68 != 5 || v49 || v69 != 128)
            {
              sub_1D6007830(*(v62 - 2), *(v62 - 1), *v62);
              v82 = 5;
LABEL_173:
              v83 = 0;
              v84 = 0x80;
LABEL_174:
              sub_1D6007850(v82, v83, v84);
              sub_1D6007850(v68, v49, v69);
LABEL_11:
              v55 = v133;
              sub_1D5BF1AEC(v133, type metadata accessor for FormatDerivedDataResultOptionReference);
              v54 = (v134 + 1) & v129;
              if (((*(v131 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
              {
                goto LABEL_175;
              }

              goto LABEL_12;
            }

            sub_1D6007850(5, 0, 0x80u);
            v63 = 5;
          }

          else
          {
            if ((v69 & 0xC0) != 0x80 || v68 != 6 || v49 || v69 != 128)
            {
              sub_1D6007830(*(v62 - 2), *(v62 - 1), *v62);
              v82 = 6;
              goto LABEL_173;
            }

            sub_1D6007850(6, 0, 0x80u);
            v63 = 6;
          }
        }

        else
        {
          if ((v69 & 0xC0) != 0x80 || v49 | v68 || v69 != 128)
          {
            sub_1D6007830(*(v62 - 2), *(v62 - 1), *v62);
            v82 = 0;
            goto LABEL_173;
          }

          sub_1D6007850(0, 0, 0x80u);
          v63 = 0;
        }

        v64 = 0;
        v65 = 0x80;
LABEL_18:
        sub_1D6007850(v63, v64, v65);
      }
    }

    else
    {
      if (v69 >= 0x40)
      {
LABEL_143:
        sub_1D6007830(*(v62 - 2), *(v62 - 1), *v62);
        sub_1D6007830(v66, v54, v67);
        v82 = v66;
        v83 = v54;
        v84 = v67;
        goto LABEL_174;
      }

      if (v66 == v68 && v54 == v49)
      {
        sub_1D6007830(*(v61 - 2), *(v61 - 1), *v62);
        sub_1D6007830(v66, v54, v67);
        sub_1D6007850(v66, v54, v67);
        sub_1D6007850(v66, v54, v69);
      }

      else
      {
        v70 = sub_1D72646CC();
        sub_1D6007830(v68, v49, v69);
        sub_1D6007830(v66, v54, v67);
        sub_1D6007850(v66, v54, v67);
        sub_1D6007850(v68, v49, v69);
        if ((v70 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if ((v67 ^ v69))
      {
        goto LABEL_11;
      }
    }

    ++v60;
    v62 += 24;
    v61 += 24;
    if (v136 == v60)
    {
      goto LABEL_122;
    }
  }

  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  sub_1D5BF1AEC(v62, sub_1D60077D8);
LABEL_179:
  sub_1D5BF1AEC(v49, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5BF1AEC(v54, type metadata accessor for FormatDerivedDataResultOptionReference);
  sub_1D5BF1AEC(v124, type metadata accessor for FormatDerivedDataResultOptionReference);
  sub_1D5BE7354(*(v132 + 48) + v128, v121, type metadata accessor for FormatDerivedDataResultOptionReference);
  return 0;
}

uint64_t sub_1D5FEE050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = *v4;
  sub_1D7264A0C();
  v27 = v4;
  v28 = a1;
  if (v5 > 2u)
  {
    if (v5 == 3)
    {
      v10 = 4;
    }

    else
    {
      if (v5 != 4)
      {
        MEMORY[0x1DA6FC0B0](0);
        goto LABEL_12;
      }

      v10 = 5;
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }
  }

  else
  {
    v10 = 1;
  }

  MEMORY[0x1DA6FC0B0](v10);
  sub_1D72621EC();
LABEL_12:
  v11 = sub_1D7264A5C();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v27;
    sub_1D6007700(a2, a3, v5);
    sub_1D5FFC77C(a2, a3, v5, v13, isUniquelyReferenced_nonNull_native);
    *v27 = v30;
    *v28 = a2;
    *(v28 + 8) = a3;
    *(v28 + 16) = v5;
    return 1;
  }

  v14 = ~v12;
  v15 = *(v9 + 48);
  v17 = v5 == 5 && (a3 | a2) == 0;
  v29 = v17;
  while (1)
  {
    v18 = v15 + 24 * v13;
    v19 = *(v18 + 16);
    if (v19 <= 2)
    {
      break;
    }

    if (v19 == 3)
    {
      if (v5 == 3)
      {
        goto LABEL_36;
      }
    }

    else if (v19 == 4)
    {
      if (v5 == 4)
      {
        goto LABEL_36;
      }
    }

    else if (v29)
    {
      goto LABEL_42;
    }

LABEL_21:
    v13 = (v13 + 1) & v14;
    if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  if (!*(v18 + 16))
  {
    if (!v5)
    {
      goto LABEL_36;
    }

    goto LABEL_21;
  }

  if (v19 == 1)
  {
    if (v5 == 1)
    {
      goto LABEL_36;
    }

    goto LABEL_21;
  }

  if (v5 != 2)
  {
    goto LABEL_21;
  }

LABEL_36:
  v20 = *v18 == a2 && *(v18 + 8) == a3;
  if (!v20 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1D6007718(a2, a3, v19);
LABEL_42:
  v21 = *(v9 + 48) + 24 * v13;
  v22 = *v21;
  v23 = *(v21 + 8);
  *v28 = *v21;
  *(v28 + 8) = v23;
  v24 = *(v21 + 16);
  *(v28 + 16) = v24;
  sub_1D6007700(v22, v23, v24);
  return 0;
}

uint64_t sub_1D5FEE2D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v83 = (&v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v89, v9);
  v84 = (&v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v74 - v13);
  v79 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  v15 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v74 = &v74 - v21;
  v96 = sub_1D72585BC();
  v22 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v23);
  v94 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v95 = &v74 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v74 - v30;
  v75 = v3;
  v87 = *v3;
  sub_1D7264A0C();
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  v90 = a2;
  v32 = sub_1D6D28818();
  MEMORY[0x1DA6FC0B0](*(v32 + 16));
  v33 = v32;
  v34 = *(v32 + 16);
  v85 = v14;
  v88 = v18;
  v77 = v22;
  v76 = a1;
  if (v34)
  {
    v92 = v33;
    v93 = v15;
    v35 = *(v22 + 16);
    v36 = v33 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v37 = *(v22 + 72);
    v38 = v96;
    do
    {
      v35(v31, v36, v38);
      sub_1D5D51EB4(&qword_1EDF3C3E0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1D7261E8C();
      (*(v22 + 8))(v31, v38);
      v36 += v37;
      --v34;
    }

    while (v34);

    v14 = v85;
    v18 = v88;
    v22 = v77;
    v15 = v93;
  }

  else
  {
  }

  v39 = sub_1D7264A5C();
  v40 = -1 << *(v87 + 32);
  v41 = v39 & ~v40;
  v80 = v87 + 56;
  if ((*(v87 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
  {
    v78 = ~v40;
    v82 = v15[9];
    v92 = v22 + 16;
    v93 = (v22 + 8);
    v42 = v94;
    do
    {
      v43 = *(v87 + 48);
      v81 = v82 * v41;
      sub_1D5BE7354(v43 + v82 * v41, v18, type metadata accessor for WebEmbedDatastoreCacheKey);
      sub_1D5BE7354(v18, v14, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v44 = v83;
        sub_1D5BE7424(v14, v83, type metadata accessor for GenericDataVisualization);
        v98 = 0x3A636972656E6567;
        v99 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v44, v44[1]);
        v46 = v98;
        v45 = v99;
        sub_1D5BF1AEC(v44, type metadata accessor for GenericDataVisualization);
      }

      else
      {
        v97 = *v14;
        v98 = 0x3A3A7374726F7073;
        v99 = 0xE800000000000000;
        v47 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v47);

        v46 = v98;
        v45 = v99;
      }

      v48 = v84;
      sub_1D5BE7354(v90, v84, type metadata accessor for WebEmbedDataVisualization);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v86 = v41;
      if (EnumCaseMultiPayload == 1)
      {
        v50 = v48;
        v51 = v83;
        sub_1D5BE7424(v50, v83, type metadata accessor for GenericDataVisualization);
        v98 = 0x3A636972656E6567;
        v99 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v51, v51[1]);
        v53 = v98;
        v52 = v99;
        sub_1D5BF1AEC(v51, type metadata accessor for GenericDataVisualization);
        if (v46 != v53)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v97 = *v48;
        v98 = 0x3A3A7374726F7073;
        v99 = 0xE800000000000000;
        v54 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v54);

        v52 = v99;
        if (v46 != v98)
        {
          goto LABEL_18;
        }
      }

      if (v45 != v52)
      {
LABEL_18:
        v55 = sub_1D72646CC();

        if ((v55 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_19;
      }

LABEL_19:
      v56 = *(v79 + 20);
      v57 = *&v88[v56];
      v58 = *(v90 + v56);
      v59 = *(v57 + 16);
      if (v59 == *(v58 + 16))
      {
        if (!v59 || v57 == v58)
        {
LABEL_25:
          sub_1D5BF1AEC(v88, type metadata accessor for WebEmbedDatastoreCacheKey);
          sub_1D5BF1AEC(v90, type metadata accessor for WebEmbedDatastoreCacheKey);
          sub_1D5BE7354(*(v87 + 48) + v81, v76, type metadata accessor for WebEmbedDatastoreCacheKey);
          return 0;
        }

        v60 = (*(v77 + 80) + 32) & ~*(v77 + 80);
        v61 = v57 + v60;
        v62 = v58 + v60;
        v91 = *(v77 + 72);
        v63 = *(v77 + 16);
        while (1)
        {
          v64 = v95;
          v63(v95, v61, v96);
          v65 = v96;
          v63(v42, v62, v96);
          sub_1D5D51EB4(&unk_1EDF45B60, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
          v66 = v64;
          v67 = sub_1D7261FBC();
          v68 = *v93;
          (*v93)(v42, v65);
          v68(v66, v65);
          if ((v67 & 1) == 0)
          {
            break;
          }

          v62 += v91;
          v61 += v91;
          if (!--v59)
          {
            goto LABEL_25;
          }
        }
      }

LABEL_8:
      v18 = v88;
      sub_1D5BF1AEC(v88, type metadata accessor for WebEmbedDatastoreCacheKey);
      v41 = (v86 + 1) & v78;
      v14 = v85;
    }

    while (((*(v80 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) != 0);
  }

  v70 = v75;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = v90;
  v73 = v74;
  sub_1D5BE7354(v90, v74, type metadata accessor for WebEmbedDatastoreCacheKey);
  v98 = *v70;
  sub_1D5FFCA38(v73, v41, isUniquelyReferenced_nonNull_native);
  *v70 = v98;
  sub_1D5BE7424(v72, v76, type metadata accessor for WebEmbedDatastoreCacheKey);
  return 1;
}

uint64_t sub_1D5FEEC24(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_1D7264A0C();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v27 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v26 = ~v6;
    v28 = v4;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      v9 = v8 == 2 ? 0x6867696C68676968 : 0x64657463656C6573;
      v10 = v8 == 2 ? 0xEB00000000646574 : 0xE800000000000000;
      v11 = *(*(v4 + 48) + v7) ? 0x64657375636F66 : 0x64656C6261736964;
      v12 = *(*(v4 + 48) + v7) ? 0xE700000000000000 : 0xE800000000000000;
      v13 = *(*(v4 + 48) + v7) <= 1u ? v11 : v9;
      v14 = *(*(v4 + 48) + v7) <= 1u ? v12 : v10;
      v15 = v3 == 2 ? 0x6867696C68676968 : 0x64657463656C6573;
      v16 = v3 == 2 ? 0xEB00000000646574 : 0xE800000000000000;
      v17 = v3 ? 0x64657375636F66 : 0x64656C6261736964;
      v18 = v3 ? 0xE700000000000000 : 0xE800000000000000;
      v19 = v3 <= 1u ? v17 : v15;
      v20 = v3 <= 1u ? v18 : v16;
      if (v13 == v19 && v14 == v20)
      {
        break;
      }

      v21 = sub_1D72646CC();

      if (v21)
      {
        goto LABEL_45;
      }

      v7 = (v7 + 1) & v26;
      v4 = v28;
      if (((*(v27 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    result = 0;
    v3 = *(*(v28 + 48) + v7);
  }

  else
  {
LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v24;
    sub_1D5FFD410(v3, v7, isUniquelyReferenced_nonNull_native);
    *v24 = v29;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1D5FEEEB0(_BYTE *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_1D7264A0C();
  sub_1D6E23ADC(v3);
  sub_1D72621EC();

  if ((v3 & 0x100) != 0)
  {
    v5 = 0x70616373646E616CLL;
  }

  else
  {
    v5 = 0x7469617274726F70;
  }

  if ((v3 & 0x100) != 0)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  sub_1D72621EC();

  v7 = sub_1D7264A5C();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_124:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v32;
    sub_1D5FFD714(v3 & 0x1FF, v9, isUniquelyReferenced_nonNull_native);
    *v32 = v35;
    *a1 = v3;
    a1[1] = HIBYTE(v3) & 1;
    return 1;
  }

  v34 = ~v8;
  v10 = 0x7258656E6F685069;
  while (2)
  {
    v11 = (*(v4 + 48) + 2 * v9);
    v12 = v11[1];
    v13 = 0xE800000000000000;
    v14 = v10;
    switch(*v11)
    {
      case 1:
        goto LABEL_12;
      case 2:
        v13 = 0xEB0000000078614DLL;
LABEL_12:
        v14 = 0x7358656E6F685069;
        break;
      case 3:
        v14 = 0x4553656E6F685069;
        break;
      case 4:
        v14 = 0x3131656E6F685069;
        break;
      case 5:
        v14 = 0x3131656E6F685069;
        goto LABEL_34;
      case 6:
        v14 = 0x3131656E6F685069;
        goto LABEL_50;
      case 7:
        v14 = 0x3231656E6F685069;
        break;
      case 8:
        v14 = 0x3231656E6F685069;
        goto LABEL_39;
      case 9:
        v14 = 0x3231656E6F685069;
        goto LABEL_34;
      case 0xA:
        v14 = 0x3231656E6F685069;
        goto LABEL_50;
      case 0xB:
        v14 = 0x3331656E6F685069;
        break;
      case 0xC:
        v14 = 0x3331656E6F685069;
LABEL_39:
        v13 = 0xEC000000696E694DLL;
        break;
      case 0xD:
        v14 = 0x3331656E6F685069;
        goto LABEL_34;
      case 0xE:
        v14 = 0x3331656E6F685069;
        goto LABEL_50;
      case 0xF:
        v14 = 0x3431656E6F685069;
        break;
      case 0x10:
        v14 = 0x3431656E6F685069;
        goto LABEL_30;
      case 0x11:
        v14 = 0x3431656E6F685069;
        goto LABEL_34;
      case 0x12:
        v14 = 0x3431656E6F685069;
        goto LABEL_50;
      case 0x13:
        v14 = 0x3531656E6F685069;
        break;
      case 0x14:
        v14 = 0x3531656E6F685069;
        goto LABEL_30;
      case 0x15:
        v14 = 0x3531656E6F685069;
        goto LABEL_34;
      case 0x16:
        v14 = 0x3531656E6F685069;
        goto LABEL_50;
      case 0x17:
        v14 = 0x3631656E6F685069;
        break;
      case 0x18:
        v14 = 0x3631656E6F685069;
LABEL_30:
        v13 = 0xEC00000073756C50;
        break;
      case 0x19:
        v14 = 0x3631656E6F685069;
LABEL_34:
        v13 = 0xEB000000006F7250;
        break;
      case 0x1A:
        v14 = 0x3631656E6F685069;
LABEL_50:
        v13 = 0xEE0078614D6F7250;
        break;
      case 0x1B:
        v13 = 0xE400000000000000;
        v14 = 1684099177;
        break;
      case 0x1C:
        v13 = 0xE700000000000000;
        v14 = 0x72694164615069;
        break;
      case 0x1D:
        v14 = 0x696E694D64615069;
        break;
      case 0x1E:
        v15 = 895430705;
        goto LABEL_42;
      case 0x1F:
        v13 = 0xEA00000000003131;
        goto LABEL_43;
      case 0x20:
        v15 = 962540081;
LABEL_42:
        v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_43:
        v14 = 0x5F6F725064615069;
        break;
      case 0x21:
        v13 = 0xE300000000000000;
        v14 = 6513005;
        break;
      case 0x22:
        v14 = 0x6465727265666E69;
        break;
      default:
        break;
    }

    v16 = 0xE800000000000000;
    v17 = v10;
    switch(v3)
    {
      case 1:
        goto LABEL_53;
      case 2:
        v16 = 0xEB0000000078614DLL;
LABEL_53:
        if (v14 != 0x7358656E6F685069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 3:
        if (v14 != 0x4553656E6F685069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 4:
        if (v14 != 0x3131656E6F685069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 5:
        v20 = 0x3131656E6F685069;
        goto LABEL_84;
      case 6:
        v19 = 0x3131656E6F685069;
        goto LABEL_110;
      case 7:
        if (v14 != 0x3231656E6F685069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 8:
        v18 = 0x3231656E6F685069;
        goto LABEL_90;
      case 9:
        v20 = 0x3231656E6F685069;
        goto LABEL_84;
      case 10:
        v19 = 0x3231656E6F685069;
        goto LABEL_110;
      case 11:
        if (v14 != 0x3331656E6F685069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 12:
        v18 = 0x3331656E6F685069;
LABEL_90:
        v21 = 1768843597;
        goto LABEL_91;
      case 13:
        v20 = 0x3331656E6F685069;
        goto LABEL_84;
      case 14:
        v19 = 0x3331656E6F685069;
        goto LABEL_110;
      case 15:
        if (v14 != 0x3431656E6F685069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 16:
        v18 = 0x3431656E6F685069;
        goto LABEL_80;
      case 17:
        v20 = 0x3431656E6F685069;
        goto LABEL_84;
      case 18:
        v19 = 0x3431656E6F685069;
        goto LABEL_110;
      case 19:
        if (v14 != 0x3531656E6F685069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 20:
        v18 = 0x3531656E6F685069;
        goto LABEL_80;
      case 21:
        v20 = 0x3531656E6F685069;
        goto LABEL_84;
      case 22:
        v19 = 0x3531656E6F685069;
        goto LABEL_110;
      case 23:
        if (v14 != 0x3631656E6F685069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 24:
        v18 = 0x3631656E6F685069;
LABEL_80:
        v21 = 1937075280;
LABEL_91:
        v16 = v21 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v14 != v18)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 25:
        v20 = 0x3631656E6F685069;
LABEL_84:
        v16 = 0xEB000000006F7250;
        if (v14 != v20)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 26:
        v19 = 0x3631656E6F685069;
LABEL_110:
        v16 = 0xEE0078614D6F7250;
        if (v14 != v19)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 27:
        v16 = 0xE400000000000000;
        if (v14 != 1684099177)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 28:
        v16 = 0xE700000000000000;
        if (v14 != 0x72694164615069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 29:
        v10 = 0x696E694D64615069;
        goto LABEL_106;
      case 30:
        v22 = 895430705;
        goto LABEL_95;
      case 31:
        v16 = 0xEA00000000003131;
        goto LABEL_96;
      case 32:
        v22 = 962540081;
LABEL_95:
        v16 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_96:
        if (v14 != 0x5F6F725064615069)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 33:
        v16 = 0xE300000000000000;
        if (v14 != 6513005)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      case 34:
        if (v14 != 0x6465727265666E69)
        {
          goto LABEL_111;
        }

        goto LABEL_107;
      default:
LABEL_106:
        if (v14 != v10)
        {
          goto LABEL_111;
        }

LABEL_107:
        if (v13 == v16)
        {
        }

        else
        {
LABEL_111:
          v23 = sub_1D72646CC();

          if ((v23 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        if (v12)
        {
          v24 = 0x70616373646E616CLL;
        }

        else
        {
          v24 = 0x7469617274726F70;
        }

        if (v12)
        {
          v25 = 0xE900000000000065;
        }

        else
        {
          v25 = 0xE800000000000000;
        }

        if (v24 != v5 || v25 != v6)
        {
          v27 = sub_1D72646CC();

          if (v27)
          {
            goto LABEL_126;
          }

LABEL_9:
          v9 = (v9 + 1) & v34;
          v10 = v17;
          if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_124;
          }

          continue;
        }

LABEL_126:
        result = 0;
        v30 = (*(v4 + 48) + 2 * v9);
        v31 = *v30;
        LOBYTE(v30) = v30[1];
        *a1 = v31;
        a1[1] = v30;
        return result;
    }
  }
}

uint64_t sub_1D5FEF7A4(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a2;
  v6 = *v2;
  sub_1D7264A0C();
  if (v5 == 12)
  {
    MEMORY[0x1DA6FC0B0](0);
  }

  else
  {
    MEMORY[0x1DA6FC0B0](1);
    FormatOptionType.rawValue.getter();
    sub_1D72621EC();
  }

  v7 = sub_1D7264A5C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_67:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    sub_1D5FFE0A4(v4, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    result = 1;
    goto LABEL_70;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(*(v6 + 48) + v9);
    if (v11 == 12)
    {
      if (v4 == 12)
      {
        goto LABEL_69;
      }

      goto LABEL_7;
    }

    if (v4 == 12)
    {
      goto LABEL_7;
    }

    if (*(*(v6 + 48) + v9) > 5u)
    {
      if (*(*(v6 + 48) + v9) > 8u)
      {
        if (v11 == 9)
        {
          v13 = 0xE500000000000000;
          v12 = 0x6F65646976;
        }

        else if (v11 == 10)
        {
          v13 = 0xE400000000000000;
          v12 = 1953394534;
        }

        else
        {
          v12 = 0x616C506F65646976;
          v13 = 0xEB00000000726579;
        }
      }

      else if (v11 == 6)
      {
        v13 = 0xE300000000000000;
        v12 = 7107189;
      }

      else
      {
        v13 = 0xE500000000000000;
        v12 = v11 == 7 ? 0x726F6C6F63 : 0x6567616D69;
      }
    }

    else if (*(*(v6 + 48) + v9) > 2u)
    {
      if (v11 == 3)
      {
        v13 = 0xE500000000000000;
        v12 = 0x74616F6C66;
      }

      else if (v11 == 4)
      {
        v13 = 0xE700000000000000;
        v12 = 0x72656765746E69;
      }

      else
      {
        v13 = 0xE600000000000000;
        v12 = 0x676E69727473;
      }
    }

    else if (*(*(v6 + 48) + v9))
    {
      v12 = v11 == 1 ? 1702125924 : 1836412517;
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE700000000000000;
      v12 = 0x6E61656C6F6F62;
    }

    if (v4 > 5u)
    {
      v14 = 1953394534;
      if (v4 != 10)
      {
        v14 = 0x616C506F65646976;
      }

      v15 = 0xE400000000000000;
      if (v4 != 10)
      {
        v15 = 0xEB00000000726579;
      }

      if (v4 == 9)
      {
        v14 = 0x6F65646976;
        v15 = 0xE500000000000000;
      }

      v16 = 0x726F6C6F63;
      if (v4 != 7)
      {
        v16 = 0x6567616D69;
      }

      v17 = 0xE500000000000000;
      if (v4 == 6)
      {
        v16 = 7107189;
        v17 = 0xE300000000000000;
      }

      v18 = v4 <= 8u;
    }

    else
    {
      v14 = 0x72656765746E69;
      if (v4 != 4)
      {
        v14 = 0x676E69727473;
      }

      v15 = 0xE600000000000000;
      if (v4 == 4)
      {
        v15 = 0xE700000000000000;
      }

      if (v4 == 3)
      {
        v14 = 0x74616F6C66;
        v15 = 0xE500000000000000;
      }

      v16 = 1702125924;
      if (v4 != 1)
      {
        v16 = 1836412517;
      }

      v17 = 0xE400000000000000;
      if (!v4)
      {
        v16 = 0x6E61656C6F6F62;
        v17 = 0xE700000000000000;
      }

      v18 = v4 <= 2u;
    }

    v19 = v18 ? v16 : v14;
    v20 = v18 ? v17 : v15;
    if (v12 == v19 && v13 == v20)
    {
      break;
    }

    v21 = sub_1D72646CC();

    if (v21)
    {
      goto LABEL_69;
    }

LABEL_7:
    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_67;
    }
  }

LABEL_69:
  result = 0;
  v4 = *(*(v6 + 48) + v9);
LABEL_70:
  *a1 = v4;
  return result;
}

uint64_t sub_1D5FEFBD0(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = sub_1D6953BC0(*(*v2 + 40), a2);
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 <= 2)
      {
        if (*(*(v4 + 48) + v7))
        {
          if (v9 == 1)
          {
            v10 = 0x726564616568;
          }

          else
          {
            v10 = 0x7265746F6F66;
          }

          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xE600000000000000;
          v10 = 0x74756F79616CLL;
        }
      }

      else if (*(*(v4 + 48) + v7) > 4u)
      {
        if (v9 == 5)
        {
          v11 = 0xE700000000000000;
          v10 = 0x7972617262696CLL;
        }

        else
        {
          v10 = 0x756F72676B636162;
          v11 = 0xEA0000000000646ELL;
        }
      }

      else
      {
        if (v9 == 3)
        {
          v10 = 0x6C6C6177796170;
        }

        else
        {
          v10 = 0x656D656874;
        }

        if (v9 == 3)
        {
          v11 = 0xE700000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }
      }

      v12 = 0x756F72676B636162;
      if (v3 == 5)
      {
        v12 = 0x7972617262696CLL;
      }

      v13 = 0xEA0000000000646ELL;
      if (v3 == 5)
      {
        v13 = 0xE700000000000000;
      }

      v14 = 0x6C6C6177796170;
      if (v3 != 3)
      {
        v14 = 0x656D656874;
      }

      v15 = 0xE500000000000000;
      if (v3 == 3)
      {
        v15 = 0xE700000000000000;
      }

      if (v3 <= 4u)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0x7265746F6F66;
      if (v3 == 1)
      {
        v16 = 0x726564616568;
      }

      if (!v3)
      {
        v16 = 0x74756F79616CLL;
      }

      v17 = v3 <= 2u ? v16 : v12;
      v18 = v3 <= 2u ? 0xE600000000000000 : v13;
      if (v10 == v17 && v11 == v18)
      {
        break;
      }

      v19 = sub_1D72646CC();

      if (v19)
      {
        goto LABEL_46;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

LABEL_46:
    result = 0;
    v3 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_44:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    sub_1D5FFE51C(v3, v7, isUniquelyReferenced_nonNull_native);
    *v22 = v24;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1D5FEFE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  sub_1D7264A0C();
  sub_1D6BE3D70(v25, a2, a3, a4);
  v9 = sub_1D7264A5C();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v8 + 48);
    while (1)
    {
      v14 = v13 + 24 * v11;
      v15 = *(v14 + 16);
      switch(v15)
      {
        case 1u:
          if (a4 != 1)
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        case 2u:
          if (a4 == 2)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 3u:
          if (a4 == 3)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 4u:
          if (a4 == 4)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 5u:
          if (a4 == 5)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 6u:
          if (a4 == 6)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 7u:
          if (a4 == 7)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 8u:
          if (a4 == 8)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 9u:
          if (a4 == 9)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 0xAu:
          if (a4 == 10)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 0xBu:
          if (a4 == 11)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        case 0xCu:
          if (a4 == 12)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        default:
          if (a4)
          {
            goto LABEL_4;
          }

LABEL_29:
          v16 = *v14 == a2 && *(v14 + 8) == a3;
          if (v16 || (sub_1D72646CC() & 1) != 0)
          {
            sub_1D6007694(a2, a3, v15);
            v17 = *(v8 + 48) + 24 * v11;
            v18 = *v17;
            v19 = *(v17 + 8);
            *a1 = *v17;
            *(a1 + 8) = v19;
            v20 = *(v17 + 16);
            *(a1 + 16) = v20;
            sub_1D600767C(v18, v19, v20);
            return 0;
          }

LABEL_4:
          v11 = (v11 + 1) & v12;
          if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_35;
          }

          break;
      }
    }
  }

LABEL_35:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25[0] = *v23;
  sub_1D600767C(a2, a3, a4);
  sub_1D5FFE83C(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
  *v23 = v25[0];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  return 1;
}

uint64_t sub_1D5FF0128(_BYTE *a1, char a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v8 = *v5;
  sub_1D7264A0C();
  if (a2)
  {
    v9 = 0x646165687473616DLL;
  }

  else
  {
    v9 = 0x6465727574616566;
  }

  sub_1D72621EC();

  v10 = sub_1D7264A5C();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(*(v8 + 48) + v12) ? 0x646165687473616DLL : 0x6465727574616566;
      if (v14 == v9)
      {
        break;
      }

      v15 = sub_1D72646CC();
      swift_bridgeObjectRelease_n();
      if (v15)
      {
        goto LABEL_14;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    swift_bridgeObjectRelease_n();
LABEL_14:
    result = 0;
    LOBYTE(v17) = *(*(v8 + 48) + v12);
  }

  else
  {
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v6;
    v17 = a2 & 1;
    sub_1D5FFEB44(v17, v12, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v6 = v23;
    result = 1;
  }

  *a1 = v17;
  return result;
}

uint64_t sub_1D5FF02C0(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a2);
  v6 = sub_1D7264A5C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D5FFED40(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D5FF03B8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D726098C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1D5D51EB4(&unk_1EDF168A8, 255, MEMORY[0x1E69B4188], MEMORY[0x1E69B4190]);
  v34 = a2;
  v12 = sub_1D7261E7C();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1D5D51EB4(&qword_1EC87FB18, 255, MEMORY[0x1E69B4188], MEMORY[0x1E69B4198]);
      v22 = sub_1D7261FBC();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1D5FFEE9C(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1D5FF06A0(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_1D7264A0C();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v11 = 0xE600000000000000;
          v10 = 0x73656D656874;
        }

        else
        {
          if (v9 == 4)
          {
            v10 = 0x6C6C6177796170;
          }

          else
          {
            v10 = 0x756F72676B636162;
          }

          if (v9 == 4)
          {
            v11 = 0xE700000000000000;
          }

          else
          {
            v11 = 0xEB0000000073646ELL;
          }
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        if (v9 == 1)
        {
          v10 = 0x73726564616568;
        }

        else
        {
          v10 = 0x737265746F6F66;
        }

        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE700000000000000;
        v10 = 0x7374756F79616CLL;
      }

      v12 = 0x756F72676B636162;
      if (v3 == 4)
      {
        v12 = 0x6C6C6177796170;
      }

      v13 = 0xEB0000000073646ELL;
      if (v3 == 4)
      {
        v13 = 0xE700000000000000;
      }

      if (v3 == 3)
      {
        v12 = 0x73656D656874;
        v13 = 0xE600000000000000;
      }

      v14 = 0x737265746F6F66;
      if (v3 == 1)
      {
        v14 = 0x73726564616568;
      }

      if (!v3)
      {
        v14 = 0x7374756F79616CLL;
      }

      v15 = v3 <= 2u ? v14 : v12;
      v16 = v3 <= 2u ? 0xE700000000000000 : v13;
      if (v10 == v15 && v11 == v16)
      {
        break;
      }

      v17 = sub_1D72646CC();

      if (v17)
      {
        goto LABEL_40;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    result = 0;
    v3 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_38:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    sub_1D5FFF170(v3, v7, isUniquelyReferenced_nonNull_native);
    *v20 = v22;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1D5FF0A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_1D7264A0C();
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](a4);
  MEMORY[0x1DA6FC0B0](a5);
  v11 = sub_1D7264A5C();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v26 = v10;
    v16 = *(v10 + 48);
    while (1)
    {
      v17 = (v16 + 32 * v14);
      v19 = v17[2];
      v18 = v17[3];
      v20 = *v17 == a2 && v17[1] == a3;
      if (v20 || (sub_1D72646CC()) && v19 == a4 && v18 == a5)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v24 = *(v26 + 48) + 32 * v14;
    v25 = *(v24 + 8);
    *a1 = *v24;
    *(a1 + 8) = v25;
    *(a1 + 16) = *(v24 + 16);

    return 0;
  }

  else
  {
LABEL_13:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v27;

    sub_1D5FFF534(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v27 = v29;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = a5;
    return 1;
  }
}

uint64_t sub_1D5FF0BA8(void *a1, void *a2, void *a3)
{
  v5 = *v3;
  sub_1D7264A0C();
  v6 = sub_1D726372C();
  MEMORY[0x1DA6FC0B0](v6);
  v7 = sub_1D7264A5C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1D5B5A498(0, &qword_1EDF1A650, 0x1E69E58C0);
    while (1)
    {
      v11 = *(v5 + 48) + 16 * v9;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = v12;
      v15 = sub_1D726370C();

      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v20 = *(v5 + 48) + 16 * v9;
    v22 = *v20;
    v21 = *(v20 + 8);
    *a1 = v22;
    a1[1] = v21;
    v23 = v21;
    v24 = v22;
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    v17 = a3;
    v18 = a2;
    sub_1D5FFF6F0(v18, a3, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v27;
    *a1 = v18;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D5FF0D30(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D7263C0C();

    if (v9)
    {

      sub_1D5B5A498(0, &qword_1EDF1A710, 0x1E69DD250);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D7263BFC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D6E14CA0(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D5FF61B0(v20 + 1, &qword_1EC87FB00, &qword_1EDF1A710, 0x1E69DD250, &qword_1EC87FB08);
    }

    v18 = v8;
    sub_1D5FF7310(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D5B5A498(0, &qword_1EDF1A710, 0x1E69DD250);
  v11 = sub_1D72636FC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D5FFF8A0(v18, v13, isUniquelyReferenced_nonNull_native, &qword_1EC87FB00, &qword_1EDF1A710, 0x1E69DD250, &qword_1EC87FB08);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D726370C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1D5FF0FA8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1D5D51EB4(&qword_1EDF18A30, 255, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
  v34 = a2;
  v12 = sub_1D7261E7C();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1D5D51EB4(&qword_1EDF3C378, 255, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
      v22 = sub_1D7261FBC();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1D5FFFA48(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1D5FF1290(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v7 = *v3;
  sub_1D7264A0C();
  if (a3)
  {
    v8 = qword_1D728D788[a2];
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
    v8 = a2;
  }

  MEMORY[0x1DA6FC0B0](v8);
  v9 = sub_1D7264A5C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    do
    {
      v13 = *(v7 + 48) + 16 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      if (v15 == 1)
      {
        if (v14 > 1)
        {
          if (v14 == 2)
          {
            if ((a3 & (a2 == 2)) != 0)
            {
              result = 0;
              a2 = 2;
              goto LABEL_22;
            }
          }

          else if ((a3 & (a2 > 2)) != 0)
          {
            result = 0;
            a2 = 3;
            goto LABEL_22;
          }
        }

        else if (v14)
        {
          if ((a3 & (a2 == 1)) != 0)
          {
            result = 0;
            a2 = 1;
            goto LABEL_22;
          }
        }

        else if ((a3 & (a2 == 0)) != 0)
        {
          a2 = 0;
          result = 0;
          goto LABEL_22;
        }
      }

      else if ((a3 & 1) == 0 && v14 == a2)
      {
        result = 0;
        goto LABEL_22;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  sub_1D5FFFD1C(a2, a3 & 1, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  result = 1;
  LOBYTE(v15) = a3;
LABEL_22:
  *a1 = a2;
  *(a1 + 8) = v15 & 1;
  return result;
}

void sub_1D5FF1468(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF1A5C0, sub_1D5CD8948, &type metadata for FormatBorderEdge);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      v13 = sub_1D7264A5C();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF1754(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D5B87494(0, &qword_1EDF1A588, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_1D72649FC();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF1984(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF04308, sub_1D6007CDC, &type metadata for SportsTaxonomyGraph.SportsTaxonomyGraphNodeHasher);
  v4 = sub_1D7263CBC();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      sub_1D5FF69BC(*(*(v3 + 48) + 8 * (v11 | (v5 << 6))), v4);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v14 = 1 << *(v3 + 32);
    if (v14 >= 64)
    {
      bzero((v3 + 56), ((v14 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v14;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v4;
}

void sub_1D5FF1B00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D5B87494(0, &qword_1EDF042D0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      v18 = MEMORY[0x1DA6FC080](*(v5 + 40), v17, 4);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF1D34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF1A5A8, sub_1D60071DC, &type metadata for FormatBindingResource);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](0);
      sub_1D72621EC();

      v13 = sub_1D7264A5C();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF21B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC8822A0, sub_1D5B56F50, &type metadata for FormatCompilerFlag);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      v18 = sub_1D7264A5C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF2490(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF1A5B8, sub_1D5E2A690, &type metadata for FormatOptionType);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      v13 = sub_1D7264A5C();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF283C(uint64_t a1)
{
  v2 = *v1;
  sub_1D6007D30(0, &qword_1EC882208, sub_1D60073B4, &type metadata for FormatLayoutViewRouteOption);
  v3 = sub_1D7263CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
LABEL_13:
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](0);
      v14 = sub_1D7264A5C();
      v15 = -1 << *(v4 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = *(v11 + 8 * v17);
          if (v21 != -1)
          {
            v12 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return;
      }

      v12 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v9 &= v9 - 1;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++*(v4 + 16);
    }

    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = v6[v13];
      ++v5;
      if (v9)
      {
        v5 = v13;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v2 + 32);
    if (v22 >= 64)
    {
      bzero((v2 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v22;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
}

void sub_1D5FF2A6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF1A5A0, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      v13 = sub_1D7264A5C();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF2D98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC8822A8, sub_1D6007B2C, &type metadata for PuzzleTeaserInteractionType);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      v18 = sub_1D7264A5C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF3060(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF04318, sub_1D6007408, &type metadata for FeedItem.Kind);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      sub_1D7264A0C();
      switch(v19)
      {
        case 0:
          v21 = 0;
          goto LABEL_35;
        case 1:
          v21 = 1;
          goto LABEL_35;
        case 2:
          v21 = 2;
          goto LABEL_35;
        case 3:
          v21 = 3;
          goto LABEL_35;
        case 4:
          v21 = 4;
          goto LABEL_35;
        case 5:
          v21 = 5;
          goto LABEL_35;
        case 6:
          v21 = 6;
          goto LABEL_35;
        case 7:
          v21 = 7;
          goto LABEL_35;
        case 8:
          v21 = 9;
          goto LABEL_35;
        case 9:
          v21 = 10;
          goto LABEL_35;
        case 10:
          v21 = 11;
          goto LABEL_35;
        case 11:
          v21 = 12;
          goto LABEL_35;
        case 12:
          v21 = 13;
          goto LABEL_35;
        case 13:
          v21 = 14;
          goto LABEL_35;
        case 14:
          v21 = 15;
          goto LABEL_35;
        case 15:
          v21 = 16;
          goto LABEL_35;
        case 16:
          v21 = 17;
          goto LABEL_35;
        case 17:
          v21 = 18;
LABEL_35:
          MEMORY[0x1DA6FC0B0](v21);
          break;
        default:
          MEMORY[0x1DA6FC0B0](8);
          sub_1D72621EC();
          break;
      }

      v22 = sub_1D7264A5C();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_51:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF33EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  sub_1D6007D30(0, a2, a3, a4);
  v7 = sub_1D7263CBC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v6 + 48) + (v17 | (v9 << 6)));
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v20);
      v21 = sub_1D7264A5C();
      v22 = -1 << *(v8 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v5 = v4;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
}

void sub_1D5FF3630(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC882218, sub_1D5E4E308, &type metadata for FormatGroupColumnSystemKind);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      v18 = sub_1D7264A5C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF38CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC8821F0, sub_1D6007360, &type metadata for FormatDerivedDataCompilerMode);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      v18 = sub_1D7264A5C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF3B98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF1A5C8, sub_1D5B4B090, &type metadata for FormatItemKind);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      sub_1D7264A0C();
      switch(v19)
      {
        case 0:
          v21 = 0;
          goto LABEL_32;
        case 1:
          v21 = 1;
          goto LABEL_32;
        case 2:
          v21 = 2;
          goto LABEL_32;
        case 3:
          v21 = 3;
          goto LABEL_32;
        case 4:
          v21 = 4;
          goto LABEL_32;
        case 5:
          v21 = 5;
          goto LABEL_32;
        case 6:
          v21 = 6;
          goto LABEL_32;
        case 7:
          v21 = 7;
          goto LABEL_32;
        case 8:
          v21 = 8;
          goto LABEL_32;
        case 9:
          v21 = 9;
          goto LABEL_32;
        case 10:
          v21 = 10;
          goto LABEL_32;
        case 11:
          v21 = 11;
          goto LABEL_32;
        case 12:
          v21 = 12;
          goto LABEL_32;
        case 13:
          v21 = 13;
          goto LABEL_32;
        case 14:
          v21 = 14;
          goto LABEL_32;
        case 15:
          v21 = 15;
LABEL_32:
          MEMORY[0x1DA6FC0B0](v21);
          break;
        default:
          MEMORY[0x1DA6FC0B0](16);
          sub_1D72621EC();
          break;
      }

      v22 = sub_1D7264A5C();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_49:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF3F34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC882250, sub_1D6007730, &type metadata for FormatDerivedDataOptionScope);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v32 = v3;
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_42;
          }

          if (v6 >= v11)
          {
            break;
          }

          v17 = v7[v6];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v10 = (v17 - 1) & v17;
            goto LABEL_15;
          }
        }

        v31 = 1 << *(v3 + 32);
        if (v31 >= 64)
        {
          bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v31;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        goto LABEL_40;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1D7264A0C();
      if (v21 <= 2)
      {
        if (v21)
        {
          if (v21 == 1)
          {
            v22 = 2;
          }

          else
          {
            v22 = 3;
          }
        }

        else
        {
          v22 = 1;
        }

        goto LABEL_25;
      }

      if (v21 == 3)
      {
        break;
      }

      if (v21 == 4)
      {
        v22 = 5;
LABEL_25:
        MEMORY[0x1DA6FC0B0](v22);
        sub_1D72621EC();
        goto LABEL_26;
      }

      MEMORY[0x1DA6FC0B0](0);
LABEL_26:
      v23 = sub_1D7264A5C();
      v24 = -1 << *(v5 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v32;
    }

    v22 = 4;
    goto LABEL_25;
  }

LABEL_40:

  *v2 = v5;
}

void sub_1D5FF421C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF042F8, sub_1D5C95CB4, &type metadata for FormatButtonNodeState);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      v18 = sub_1D7264A5C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF4500(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC882230, sub_1D6007548, &type metadata for DebugFormatWorkspaceDevice);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 2 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1D7264A0C();
      sub_1D6E23ADC(v19);
      sub_1D72621EC();

      sub_1D72621EC();

      v21 = sub_1D7264A5C();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 2 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF47E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF1A598, sub_1D5E2A458, &type metadata for FormatOptionsNodeStatementValue.CodingValidationType);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1D7264A0C();
      if (v17 == 12)
      {
        MEMORY[0x1DA6FC0B0](0);
      }

      else
      {
        MEMORY[0x1DA6FC0B0](1);
        sub_1D72621EC();
      }

      v18 = sub_1D7264A5C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF4BB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC882288, sub_1D60079B8, &type metadata for FormatPackageRole);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      v13 = sub_1D7264A5C();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF4EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  sub_1D6007D30(0, a2, a3, a4);
  v7 = sub_1D7263CBC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = *(v6 + 48) + 24 * (v18 | (v9 << 6));
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v24);
      sub_1D72621EC();
      v25 = sub_1D7264A5C();
      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v22;
      *(v17 + 8) = v23;
      *(v17 + 16) = v24;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v6 + 32);
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    v5 = v4;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
}

void sub_1D5FF5150(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  sub_1D6007D30(0, a2, a3, a4);
  v7 = sub_1D7263CBC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v6 + 48) + (v17 | (v9 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      v21 = sub_1D7264A5C();
      v22 = -1 << *(v8 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v5 = v4;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
}