unint64_t sub_1A982AFF8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A97AE618(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A982AF38(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1A982B0B8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  if (a1)
  {
    v8[4] = a1;
    v8[5] = a2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1A9820470;
    v8[3] = &block_descriptor_197;
    v6 = _Block_copy(v8);
    swift_unknownObjectRetain();
    sub_1A967C510(a1, a2);
  }

  else
  {
    swift_unknownObjectRetain();
    v6 = 0;
  }

  [v3 setNotificationBlock_];
  _Block_release(v6);
  return swift_unknownObjectRelease();
}

uint64_t sub_1A982B1C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2988;

  return sub_1A9819B40(a1, v4, v5, v6);
}

uint64_t sub_1A982B2D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2988;

  return sub_1A981F8D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1A982B3C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Deque._Storage._buffer.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Deque._Storage.description.getter(uint64_t a1, uint64_t a2)
{
  sub_1A99772B0();

  v2 = sub_1A9977B00();
  MEMORY[0x1AC5895B0](v2);

  MEMORY[0x1AC5895B0](0x61726F74535F2E3ELL, 0xEA00000000006567);
  v3 = _DequeBufferHeader.description.getter();
  MEMORY[0x1AC5895B0](v3);

  return 0x3C6575716544;
}

uint64_t Deque._Storage.init()(uint64_t a1)
{
  if (qword_1EB3AC4E0 != -1)
  {
    swift_once();
  }

  return sub_1A99774C0();
}

uint64_t Deque._Storage.init(minimumCapacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _DequeBuffer(0, a2, a3, a4);
  sub_1A9977310();

  return sub_1A99774C0();
}

uint64_t sub_1A982B914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a4;
  v14 = a5;
  v15 = a1;
  v16 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A982DE20(a6, v12, a3, &type metadata for _DequeBufferHeader, a4, v10, a5, MEMORY[0x1E69E7288], &v17);
}

Swift::Bool __swiftcall Deque._Storage.isUnique()()
{
  sub_1A99774E0();

  return sub_1A99774D0();
}

Swift::Void __swiftcall Deque._Storage.ensureUnique()()
{
  sub_1A99774E0();
  if ((sub_1A99774D0() & 1) == 0)
  {

    Deque._Storage._makeUniqueCopy()();
  }
}

Swift::Void __swiftcall Deque._Storage._makeUniqueCopy()()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(v0 + 16);
  v12 = v4;
  v7 = v4;
  v8 = v0;
  v9 = sub_1A982C1CC;
  v10 = &v11;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A982C04C, v6, v3, &type metadata for _DequeBufferHeader, v4, v5, v2, MEMORY[0x1E69E7288], v13);

  *v1 = v14;
}

Swift::Int __swiftcall Deque._Storage._growCapacity(to:linearly:)(Swift::Int to, Swift::Bool linearly)
{
  if (linearly)
  {
    sub_1A982DD1C(sub_1A97AD9A0, 0, v2, &type metadata for _DequeBufferHeader, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v8);
    v5 = v9;
    goto LABEL_7;
  }

  result = sub_1A982DD1C(sub_1A97AD9A0, 0, v2, &type metadata for _DequeBufferHeader, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v8);
  v7 = ceil(v9 * 1.5);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = v7;
LABEL_7:
  if (v5 <= to)
  {
    return to;
  }

  else
  {
    return v5;
  }
}

Swift::Void __swiftcall Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(Swift::Int minimumCapacity, Swift::Bool linearGrowth)
{
  v6 = *(v2 + 16);
  sub_1A99774E0();
  v7 = sub_1A99774D0();
  sub_1A982DD1C(sub_1A97AD9A0, 0, *v3, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v8);
  if (v9 < minimumCapacity || (v7 & 1) == 0)
  {
    Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(minimumCapacity, linearGrowth);
  }
}

Swift::Void __swiftcall Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(Swift::Int minimumCapacity, Swift::Bool linearGrowth)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(v2 + 16);
  v9 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v3, &type metadata for _DequeBufferHeader, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v24);
  if (v27 >= minimumCapacity)
  {
    v15 = MEMORY[0x1EEE9AC00](v9);
    v24 = v8;
    MEMORY[0x1EEE9AC00](v15);
    v20 = v8;
    v21 = v4;
    v22 = sub_1A982C09C;
    v23 = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A982C1B4, v19, v7, &type metadata for _DequeBufferHeader, v8, v17, v4, MEMORY[0x1E69E7288], v26);
  }

  else
  {
    sub_1A99774E0();
    v10 = sub_1A99774D0();
    v11 = *v3;
    v12 = Deque._Storage._growCapacity(to:linearly:)(minimumCapacity, linearGrowth);
    v24 = v8;
    v25 = MEMORY[0x1EEE9AC00](v12);
    MEMORY[0x1EEE9AC00](v25);
    v20 = v8;
    v21 = v4;
    if (v10)
    {
      v22 = sub_1A982C10C;
      v23 = v13;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A982DE20(sub_1A982C1B4, v19, v11, &type metadata for _DequeBufferHeader, v8, v14, v4, MEMORY[0x1E69E7288], v26);
    }

    else
    {
      v22 = sub_1A982C0D0;
      v23 = v13;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A982DE20(sub_1A982C1B4, v19, v11, &type metadata for _DequeBufferHeader, v8, v18, v4, MEMORY[0x1E69E7288], v26);
    }
  }

  *v3 = v27;
}

uint64_t sub_1A982C00C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A9977320();
  a1[1] = 0;
  a1[2] = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1A982C064(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 32))(a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_1A982C09C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = Deque._UnsafeHandle.copyElements()(a1, a2, *(v4 + 16), a4);
  *a3 = result;
  return result;
}

uint64_t sub_1A982C0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Deque._UnsafeHandle.copyElements(minimumCapacity:)(*(v3 + 24), a1, a2, *(v3 + 16));
  *a3 = result;
  return result;
}

uint64_t sub_1A982C10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Deque._UnsafeHandle.moveElements(minimumCapacity:)(*(v3 + 24), a1, a2, *(v3 + 16));
  *a3 = result;
  return result;
}

uint64_t sub_1A982C148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Deque<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[6] = a4;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A99770A0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9977A80();
  v22 = Deque.makeIterator()(a2, a3);
  v23 = v14;
  v24 = v15;
  v21 = type metadata accessor for Deque.Iterator(0, a3, v15, v16);
  Deque.Iterator.next()(v21, v13);
  v19 = *(v8 + 48);
  v20 = v8 + 48;
  if (v19(v13, 1, a3) != 1)
  {
    v18 = *(v8 + 32);
    do
    {
      v18(v10, v13, a3);
      __swift_mutable_project_boxed_opaque_existential_1(v25, v25[3]);
      sub_1A9977790();
      (*(v8 + 8))(v10, a3);
      if (v4)
      {
        break;
      }

      Deque.Iterator.next()(v21, v13);
    }

    while (v19(v13, 1, a3) != 1);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v25);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *Deque<A>.init(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = Deque.init()(v9);
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9977A50();
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v11 = sub_1A9977760();
    if ((v14 & 1) == 0)
    {
      v15 = v11;
      type metadata accessor for Deque(0, a2, v12, v13);
      Deque.reserveCapacity(_:)(v15);
    }

    __swift_project_boxed_opaque_existential_1(v21, v22);
    while ((sub_1A9977780() & 1) == 0)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      sub_1A9977770();
      v18 = type metadata accessor for Deque(0, a2, v16, v17);
      Deque.append(_:)(v8, v18);
      (*(v6 + 8))(v8, a2);
      __swift_project_boxed_opaque_existential_1(v21, v22);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v10 = v23;
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v10;
}

void *sub_1A982C6F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = Deque<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1A982C7A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v18 - v11;
  MEMORY[0x1EEE9AC00](v10);
  (*(v14 + 16))(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1A984F65C(a1, v12, a2);
  if (v2)
  {
    v16 = *(v6 + 32);
    v16(v9, v12, v5);
    if (sub_1A99777A0())
    {
      return (*(v6 + 8))(v9, v5);
    }

    else
    {
      swift_allocError();
      return (v16)(v17, v9, v5);
    }
  }

  return result;
}

uint64_t Deque.popFirst()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  sub_1A982DD1C(sub_1A982B85C, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v15);
  if (v16 < 1)
  {
    v12 = 1;
  }

  else
  {
    sub_1A99774E0();
    v5 = sub_1A99774D0();
    if ((v5 & 1) == 0)
    {
      type metadata accessor for Deque._Storage(0, v4, v6, v7);
      Deque._Storage._makeUniqueCopy()();
    }

    v8 = *v2;
    v9 = MEMORY[0x1EEE9AC00](v5);
    v15 = v4;
    MEMORY[0x1EEE9AC00](v9);
    v14[2] = v4;
    v14[3] = v4;
    v14[4] = sub_1A982CE14;
    v14[5] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A982CE40, v14, v8, &type metadata for _DequeBufferHeader, v4, v11, v4, MEMORY[0x1E69E7288], &v16);
    v12 = 0;
  }

  return (*(*(v4 - 8) + 56))(a2, v12, 1, v4);
}

uint64_t Deque.init(unsafeUninitializedCapacity:initializingWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = Deque._Storage.init(minimumCapacity:)(a1, a4, a3, a4);
  v17 = a4;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v13 = a4;
  v14 = sub_1A982CE68;
  v15 = &v16;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9817544, v12, v9, &type metadata for _DequeBufferHeader, a4, v10, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v21);

  if (v4)
  {
  }

  return v9;
}

uint64_t *sub_1A982CC88(uint64_t *result, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t *), uint64_t a5, uint64_t a6)
{
  result[2] = 0;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    Deque._UnsafeHandle.buffer(for:)(0, a3, result, a2, a6);
    v12[0] = sub_1A99770E0();
    v12[1] = v11;
    a4(v12, &v13);
    return sub_1A982CD48(&v13, a3, v10, a2, v12, a6);
  }

  return result;
}

uint64_t *sub_1A982CD48(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (*result > a2)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 < 0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  Deque._UnsafeHandle.buffer(for:)(0, a2, a3, a4, a6);
  sub_1A99770E0();
  v10 = v9;
  v11 = sub_1A99770B0();
  result = sub_1A99770B0();
  if (v11)
  {
    if (!result)
    {
      goto LABEL_13;
    }

    if (v11 == result)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if (!result)
  {
LABEL_8:
    if (a5[1] == v10)
    {
      *(a3 + 8) = *v8;
      return result;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *Deque.prepend(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v16);
  v6 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A99774E0();
    v7 = sub_1A99774D0();
    v8 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v16);
    if (v18 < v6 || (v7 & 1) == 0)
    {
      type metadata accessor for Deque._Storage(0, v4, v9, v10);
      Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v6, 0);
    }

    v11 = *v2;
    v12 = MEMORY[0x1EEE9AC00](v8);
    v16 = v4;
    v17 = a1;
    MEMORY[0x1EEE9AC00](v12);
    v15[2] = v4;
    v15[3] = sub_1A982D08C;
    v15[4] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    return sub_1A982DE20(sub_1A9817714, v15, v11, &type metadata for _DequeBufferHeader, v4, v14, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v18);
  }

  return result;
}

uint64_t Deque.prepend<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a2 + 16);
  v23 = v9;
  v24 = a3;
  v25 = a4;
  result = sub_1A9976A10();
  if (v26[0] == 1)
  {
    result = sub_1A9976E60();
    if (result >= 1)
    {
      v11 = result;
      result = sub_1A982DD1C(sub_1A982B85C, 0, *v4, &type metadata for _DequeBufferHeader, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v22);
      v12 = *v26 + v11;
      if (__OFADD__(*v26, v11))
      {
        __break(1u);
      }

      else
      {
        sub_1A99774E0();
        v13 = sub_1A99774D0();
        v14 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v5, &type metadata for _DequeBufferHeader, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v22);
        if (*v26 < v12 || (v13 & 1) == 0)
        {
          type metadata accessor for Deque._Storage(0, v9, v15, v16);
          Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v12, 0);
        }

        v17 = *v5;
        v18 = MEMORY[0x1EEE9AC00](v14);
        v21[8] = v9;
        v21[9] = a3;
        v21[10] = a4;
        v21[11] = v11;
        v22 = a1;
        MEMORY[0x1EEE9AC00](v18);
        v21[2] = v9;
        v21[3] = sub_1A982D50C;
        v21[4] = v19;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
        return sub_1A982DE20(sub_1A9817714, v21, v17, &type metadata for _DequeBufferHeader, v9, v20, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v26);
      }
    }
  }

  return result;
}

Swift::Int sub_1A982D3A0(Sharing::_DequeSlot *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a4;
  v26 = a7;
  v11 = *(a6 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Deque._UnsafeHandle.availableSegments()(v12, v24);
  v17 = type metadata accessor for _UnsafeMutableWrappedBuffer(0, a5, v15, v16);
  _UnsafeMutableWrappedBuffer.suffix(_:)(a3, v25);
  (*(v11 + 16))(v14, v23, a6);
  result = _UnsafeMutableWrappedBuffer.initialize<A>(from:)(v14, v17, a6, v26);
  position = a1[1].position;
  v20 = __OFADD__(position, a3);
  v21 = position + a3;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    a1[1].position = v21;
    if (!__OFSUB__(0, a3))
    {
      result = Deque._UnsafeHandle.slot(_:offsetBy:)(a1[2], -a3).position;
      a1[2].position = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *Deque.prepend<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a2 + 16);
  v22 = v10;
  v23 = a3;
  v24 = a4;
  v25 = v5;
  result = sub_1A9976A10();
  if (v26[0] == 1)
  {
    sub_1A982DD1C(sub_1A982B85C, 0, *v5, &type metadata for _DequeBufferHeader, v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v20);
    Deque.append<A>(contentsOf:)(a1, a2, a3, a4);
    v12 = *v5;
    v13 = sub_1A982DD1C(sub_1A982B85C, 0, *v5, &type metadata for _DequeBufferHeader, v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v20);
    v14 = MEMORY[0x1EEE9AC00](v13);
    v19[8] = v10;
    v19[9] = a3;
    v19[10] = a4;
    v19[11] = *v26;
    v20 = v16;
    v21 = v15;
    MEMORY[0x1EEE9AC00](v14);
    v19[2] = v10;
    v19[3] = sub_1A982DAA0;
    v19[4] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    return sub_1A982DE20(sub_1A9817714, v19, v12, &type metadata for _DequeBufferHeader, v10, v18, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v26);
  }

  return result;
}

uint64_t sub_1A982D76C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a1;
  v15 = *a3;

  sub_1A982DD1C(sub_1A982B85C, 0, v15, &type metadata for _DequeBufferHeader, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v27);

  v17 = v31 + a2;
  if (__OFADD__(v31, a2))
  {
    __break(1u);
  }

  else
  {
    v28 = a7;
    v29 = a8;
    sub_1A99774E0();
    v18 = sub_1A99774D0();
    v19 = sub_1A982DD1C(sub_1A97AD9A0, 0, *a3, &type metadata for _DequeBufferHeader, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v27);
    if (v31 < v17 || (v18 & 1) == 0)
    {
      type metadata accessor for Deque._Storage(0, a4, v20, v21);
      Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v17, 0);
    }

    v22 = *a3;
    v23 = MEMORY[0x1EEE9AC00](v19);
    v26[8] = a4;
    v26[9] = a5;
    v26[10] = a6;
    v26[11] = v30;
    v27 = a2;
    MEMORY[0x1EEE9AC00](v23);
    v26[2] = a4;
    v26[3] = v28;
    v26[4] = v24;

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(v29, v26, v22, &type metadata for _DequeBufferHeader, a4, v25, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v31);
  }

  return result;
}

uint64_t sub_1A982DA04(Sharing::_DequeSlot *a1, uint64_t a2, Swift::Int forOffset, Swift::Int a4, uint64_t a5, uint64_t a6)
{
  result = Deque._UnsafeHandle.slot(forOffset:)(forOffset).position;
  position = a1->position;
  a1[1].position = a1->position;
  a1[2].position = result;
  v13 = __OFSUB__(position, a5);
  v14 = position - a5;
  if (v13)
  {
    __break(1u);
    goto LABEL_6;
  }

  v15 = a4 + v14;
  if (__OFADD__(a4, v14))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v15 >= a4)
  {
    return Deque._UnsafeHandle.closeGap(offsets:)(a4, v15, a1, a2, a6);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *Deque.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v16);
  v6 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A99774E0();
    v7 = sub_1A99774D0();
    v8 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v16);
    if (v18 < v6 || (v7 & 1) == 0)
    {
      type metadata accessor for Deque._Storage(0, v4, v9, v10);
      Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v6, 0);
    }

    v11 = *v2;
    v12 = MEMORY[0x1EEE9AC00](v8);
    v16 = v4;
    v17 = a1;
    MEMORY[0x1EEE9AC00](v12);
    v15[2] = v4;
    v15[3] = sub_1A98319D8;
    v15[4] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    return sub_1A982DE20(sub_1A9817544, v15, v11, &type metadata for _DequeBufferHeader, v4, v14, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v18);
  }

  return result;
}

void *sub_1A982DD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v15 + ((*(*(v14 - 8) + 80) + 16) & ~*(*(v14 - 8) + 80)), v13);
  if (v9)
  {
    return (*(v11 + 32))(a9, v13, a6);
  }

  return result;
}

uint64_t sub_1A982DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  result = MEMORY[0x1EEE9AC00](a1);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v21 = *(v19 + 64);
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  v24 = *(*(v14 - 8) + 80);
  v25 = __CFADD__(v23, v24 + 1);
  v26 = v23 + v24 + 1;
  if (v25)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = v15(v13 + v20, v13 + ((v26 - 1) & ~v24), v17);
  if (v9)
  {
    return (*(v11 + 32))(a9, v17, a6);
  }

  return result;
}

uint64_t Deque.makeIterator()(uint64_t a1, uint64_t a2)
{

  v6 = sub_1A9833808(v3, a2, v4, v5);

  return v6;
}

uint64_t Deque.Iterator.next()@<X0>(_BOOL8 a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = v2[1];
  if (v5 != v2[2])
  {
    goto LABEL_4;
  }

  a1 = Deque.Iterator._swapSegment()();
  if (a1)
  {
    v5 = v2[1];
LABEL_4:
    v2[1] = v5 + 1;
    v6 = *v2;
    v7 = MEMORY[0x1EEE9AC00](a1);
    v19 = *(v3 + 16);
    v8 = v19;
    v20 = v9;
    MEMORY[0x1EEE9AC00](v7);
    v15 = v19;
    v16 = v19;
    v17 = sub_1A98338D4;
    v18 = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A982CE40, &v14, v6, &type metadata for _DequeBufferHeader, v15, v11, v15, MEMORY[0x1E69E7288], v21);
    return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
  }

  v13 = *(*(*(v3 + 16) - 8) + 56);

  return v13(a2, 1, 1);
}

Swift::Void __swiftcall Deque.reserveCapacity(_:)(Swift::Int a1)
{
  v4 = *(v1 + 16);
  sub_1A99774E0();
  v5 = sub_1A99774D0();
  sub_1A982DD1C(sub_1A97AD9A0, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v8);
  if (v9 < a1 || (v5 & 1) == 0)
  {
    type metadata accessor for Deque._Storage(0, v4, v6, v7);
    Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(a1, 1);
  }
}

void *Deque.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 16);
  v9 = sub_1A99770A0();
  v51 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v62 = &v48 - v11;
  v65 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v63 = &v48 - v14;
  v66 = v8;
  v67 = a3;
  v68 = a4;
  v69 = v4;
  result = sub_1A9976A10();
  if (v70[0] == 1)
  {
    v49 = v9;
    v16 = sub_1A9976A00();
    result = sub_1A982DD1C(sub_1A982B85C, 0, *v5, &type metadata for _DequeBufferHeader, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v46);
    v17 = *v70 + v16;
    if (!__OFADD__(*v70, v16))
    {
      v61 = a3;
      v59 = sub_1A99774E0();
      v18 = sub_1A99774D0();
      v19 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v5, &type metadata for _DequeBufferHeader, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v46);
      if (*v70 < v17 || (v18 & 1) == 0)
      {
        type metadata accessor for Deque._Storage(0, v8, v20, v21);
        Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v17, 0);
      }

      v54 = v5;
      v22 = *v5;
      v23 = MEMORY[0x1EEE9AC00](v19);
      v24 = v61;
      *(&v48 - 4) = v8;
      *(&v48 - 3) = v24;
      MEMORY[0x1EEE9AC00](v23);
      v25 = AssociatedTypeWitness;
      *(&v48 - 4) = v8;
      *(&v48 - 3) = v25;
      v47 = v26;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A982DE20(sub_1A9833998, (&v48 - 6), v22, &type metadata for _DequeBufferHeader, v8, v58, v25, MEMORY[0x1E69E7288], v70);
      v60 = a4;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v28 = v62;
      v57 = AssociatedConformanceWitness;
      sub_1A9977160();
      v29 = v28;
      v55 = *(v65 + 48);
      v56 = v65 + 48;
      if (v55(v28, 1, v8) == 1)
      {
LABEL_7:
        (*(v51 + 8))(v29, v49);
        return (*(v50 + 8))(v63, AssociatedTypeWitness);
      }

      v53 = *(v65 + 32);
      v65 += 32;
      v52 = (v65 - 24);
      v30 = MEMORY[0x1E69E73E0];
      v31 = MEMORY[0x1E69E6530];
      v32 = MEMORY[0x1E69E7410];
      v53(v13, v29, v8);
      while (1)
      {
        result = sub_1A982DD1C(sub_1A982B85C, 0, v22, &type metadata for _DequeBufferHeader, v8, v30, v31, v32, v46);
        v39 = *v70 + 1;
        if (__OFADD__(*v70, 1))
        {
          break;
        }

        v40 = v54;
        v41 = sub_1A99774D0();
        v42 = v32;
        v43 = v41;
        v33 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v40, &type metadata for _DequeBufferHeader, v8, v30, v31, v42, v46);
        if (*v70 < v39 || (v43 & 1) == 0)
        {
          type metadata accessor for Deque._Storage(0, v8, v44, v45);
          Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v39, 0);
        }

        v22 = *v40;
        v34 = MEMORY[0x1EEE9AC00](v33);
        v35 = v60;
        v36 = v61;
        *(&v48 - 6) = v8;
        *(&v48 - 5) = v36;
        *(&v48 - 4) = v35;
        *(&v48 - 3) = v13;
        MEMORY[0x1EEE9AC00](v34);
        *(&v48 - 4) = v8;
        *(&v48 - 3) = sub_1A98339BC;
        sub_1A982DE20(sub_1A9817714, (&v48 - 6), v22, &type metadata for _DequeBufferHeader, v8, v58, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v70);
        (*v52)(v13, v8);
        v37 = v62;
        sub_1A9977160();
        v29 = v37;
        v38 = v55(v37, 1, v8);
        v30 = MEMORY[0x1E69E73E0];
        v32 = MEMORY[0x1E69E7410];
        if (v38 == 1)
        {
          goto LABEL_7;
        }

        v53(v13, v29, v8);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t Deque.Iterator._storage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Deque.Iterator.init(_base:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1A9833808(a1, a2, a3, a4);

  return v4;
}

uint64_t Deque.Iterator.init(_base:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1A983436C(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_1A982EB88@<X0>(Swift::Int forOffset@<X2>, Sharing::_DequeSlot *a2@<X0>, Swift::Int a3@<X3>, Sharing::_DequeSlot *a4@<X8>)
{
  v8.position = Deque._UnsafeHandle.slot(forOffset:)(forOffset).position;
  position = v8.position;
  v10 = a2[1].position;
  if (v10 != forOffset)
  {
    v8.position = Deque._UnsafeHandle.slot(_:offsetBy:)(a2[2], v10).position;
    if (position >= v8.position)
    {
      v8.position = a2->position;
    }
  }

  a4->position = a3;
  a4[1].position = position;
  a4[2].position = v8.position;
}

Swift::Bool __swiftcall Deque.Iterator._swapSegment()()
{
  v2 = *v1;
  v6 = *(v0 + 16);
  v7 = sub_1A9834440;
  v8 = &v9;

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A98344AC, v5, v2, &type metadata for _DequeBufferHeader, v6, v3, MEMORY[0x1E69E6370], MEMORY[0x1E69E7288], v10);

  return v10[15];
}

uint64_t Deque._copyToContiguousArray()(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A9833C80(a1, a2);

  return v2;
}

uint64_t sub_1A982ED34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a1;
  v15 = a2;
  v9 = a4;
  v10 = sub_1A983553C;
  v11 = &v12;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A982DE20(sub_1A9817544, v8, a3, &type metadata for _DequeBufferHeader, a4, v6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v16);
}

uint64_t sub_1A982EDF4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v26 = a4;
  Deque._UnsafeHandle.segments()(a1, v23);
  v6 = v23[0];
  v7 = v23[1];
  sub_1A9977100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2C60, &qword_1A9998998);
  swift_getWitnessTable();
  sub_1A98354BC();
  sub_1A9976780();
  v18[0] = v6;
  v18[1] = v7;
  v8 = v26;
  v9 = sub_1A99767C0();
  WitnessTable = swift_getWitnessTable();
  result = sub_1A991F468(v18, v19, v20, v21, v22, a5, v9, WitnessTable);
  if (__OFADD__(*v8, v7))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *v8 += v7;
  if (v25)
  {
    return result;
  }

  v12 = v24;
  if (__OFADD__(v7, v24))
  {
    goto LABEL_9;
  }

  if (v7 + v24 < v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v23[2];
  v14 = sub_1A9977110();
  v19 = v13;
  v20 = v12;
  result = sub_1A991F468(&v19, v14, v15, v16, v17, a5, v9, WitnessTable);
  if (__OFADD__(*v8, v12))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *v8 += v12;
  return result;
}

uint64_t sub_1A982EFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A9976B20();
  if (!v4)
  {

    v5 = sub_1A99772D0();

    if (!v5)
    {
      sub_1A9976B60();
      swift_getWitnessTable();
      v5 = sub_1A9977830();
    }
  }

  return v5;
}

uint64_t Deque._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1A9833B90(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_1A982F0D8@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  Deque._UnsafeHandle.segments()(a1, &v41);
  v10 = v42;
  if (v42 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v42;
  }

  v39 = a3;
  v40 = a4;
  *&v35 = v11;
  sub_1A9977100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2C60, &qword_1A9998998);
  swift_getWitnessTable();
  sub_1A98354BC();
  sub_1A9976780();
  v46 = v37;
  sub_1A99767C0();
  swift_getWitnessTable();
  sub_1A9976EE0();
  v34[0] = v35;
  v34[1] = v36;
  v12 = sub_1A9977960();
  WitnessTable = swift_getWitnessTable();
  result = sub_1A991F468(v34, v46, *(&v37 + 1), v38, *(&v38 + 1), a6, v12, WitnessTable);
  if (v10 >= a4 || (v45 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (__OFSUB__(a4, v11))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v46 = WitnessTable;
  v15 = v44;
  if (a4 - v11 >= v44)
  {
    v16 = v44;
  }

  else
  {
    v16 = a4 - v11;
  }

  if (__OFADD__(v11, v16))
  {
    goto LABEL_15;
  }

  if (v11 + v16 >= v11)
  {
    v17 = v43;
    v11 += v16;
    v18 = sub_1A9977110();
    v32 = v19;
    v33 = v18;
    v30 = v20;
    v22 = v21;
    *&v35 = v17;
    *(&v35 + 1) = v15;
    sub_1A9976EE0();
    v35 = v37;
    v36 = v38;
    sub_1A991F468(&v35, v33, v32, v30, v22, a6, v12, v46);
LABEL_13:

    v25 = sub_1A983436C(v23, v11, a6, v24);
    v27 = v26;
    v29 = v28;

    *a7 = v25;
    a7[1] = v27;
    a7[2] = v29;
    a7[3] = v11;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t Deque.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a2;
  v15 = a4;
  v16 = a5;
  v17 = a1;
  v10 = a4;
  v11 = sub_1A99770A0();
  v12 = sub_1A98344D8;
  v13 = &v14;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A982DE20(sub_1A9833998, v9, a3, &type metadata for _DequeBufferHeader, a4, v7, v11, MEMORY[0x1E69E7288], &v19);
}

uint64_t sub_1A982F448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  result = a1[2];
  v12 = a1[1] + result;
  if (*a1 < v12)
  {
    v13 = 1;
    return (*(*(a5 - 8) + 56))(a6, v13, 1, a5, a4);
  }

  if (v12 < result)
  {
    __break(1u);
    return result;
  }

  v14 = a5;
  v15 = Deque._UnsafeHandle.buffer(for:)(result, v12, a1, a2, a4);
  result = a3(v15);
  if (!v6)
  {
    v13 = 0;
    a5 = v14;
    return (*(*(a5 - 8) + 56))(a6, v13, 1, a5, a4);
  }

  return result;
}

uint64_t sub_1A982F514@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = Deque.makeIterator()(*v2, *(a1 + 16));
  v6 = v5;
  v8 = v7;

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  return result;
}

uint64_t sub_1A982F570(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1A982F5CC(uint64_t a1)
{
  v2 = sub_1A9833C80(*v1, *(a1 + 16));

  return v2;
}

uint64_t sub_1A982F608(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1A9833B90(a2, a3, *v4, *(a4 + 16));
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  return v12;
}

void *Deque.indices.getter(uint64_t a1, uint64_t a2)
{
  result = sub_1A982DD1C(sub_1A982B85C, 0, a1, &type metadata for _DequeBufferHeader, a2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v3);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall Deque.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Deque.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Int __swiftcall Deque.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Deque.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

Swift::Int __swiftcall Deque.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall Deque.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = sub_1A9834318(_, offsetBy, limitedBy);
  v5 = v4 & 1;
  result.value = v3;
  result.is_nil = v5;
  return result;
}

Swift::Int __swiftcall Deque.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t Deque.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = sub_1A982DD1C(sub_1A982B85C, 0, a2, &type metadata for _DequeBufferHeader, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v10);
    if (v12 > v5)
    {
      v6 = MEMORY[0x1EEE9AC00](result);
      v10 = a3;
      v11 = v5;
      MEMORY[0x1EEE9AC00](v6);
      v9[2] = a3;
      v9[3] = a3;
      v9[4] = sub_1A98344F8;
      v9[5] = v7;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
      return sub_1A982DE20(sub_1A9835628, v9, a2, &type metadata for _DequeBufferHeader, a3, v8, a3, MEMORY[0x1E69E7288], &v12);
    }
  }

  __break(1u);
  return result;
}

uint64_t Deque.subscript.setter(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1A9833D28(a1, a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

void (*Deque.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[2] = v3;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  if (v7)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v11 + 64));
  }

  v13 = result;
  v9[5] = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1A982DD1C(sub_1A982B85C, 0, *v3, &type metadata for _DequeBufferHeader, v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v14);
    if (*v9 > a2)
    {
      v9[1] = Deque._prepareForModify(at:)(v13, a2, a3);
      return sub_1A982FAF4;
    }
  }

  __break(1u);
  return result;
}

void sub_1A982FAF4(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[4];
  v2 = (*a1)[5];
  v4 = (*a1)[3];
  sub_1A982FD44((*a1)[2], (v1 + 1), v2, v1[3]);
  (*(v3 + 8))(v2, v4);
  free(v2);

  free(v1);
}

uint64_t Deque._prepareForModify(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = &v20[-v7 - 8];
  sub_1A99774E0();
  v9 = sub_1A99774D0();
  if ((v9 & 1) == 0)
  {
    type metadata accessor for Deque._Storage(0, v5, v10, v11);
    Deque._Storage._makeUniqueCopy()();
  }

  v12 = *v3;
  v13 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v13);
  *(&v19 - 4) = v5;
  *(&v19 - 3) = TupleTypeMetadata2;
  v18 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9835610, (&v19 - 6), v12, &type metadata for _DequeBufferHeader, v5, v15, TupleTypeMetadata2, MEMORY[0x1E69E7288], v20);
  v16 = *v8;
  (*(*(v5 - 8) + 32))(a1, &v8[*(TupleTypeMetadata2 + 48)], v5);
  return v16;
}

uint64_t sub_1A982FD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v8;
  (*(v5 + 16))(v7, v10, v11);
  v14 = type metadata accessor for Deque(0, a4, v12, v13);
  Deque._finalizeModify(_:_:)(v9, v7, v14);
  return (*(v5 + 8))(v7, a4);
}

uint64_t sub_1A982FE40@<X0>(Swift::Int forOffset@<X2>, Swift::Int *a4@<X8>)
{
  position = Deque._UnsafeHandle.slot(forOffset:)(forOffset).position;
  swift_getTupleTypeMetadata2();
  *a4 = position;
  return sub_1A9977090();
}

uint64_t Deque._finalizeModify(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  v13 = v5;
  v14 = a1;
  v15 = a2;
  v9 = v5;
  v10 = sub_1A9834594;
  v11 = &v12;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A982DE20(sub_1A9817714, v8, v4, &type metadata for _DequeBufferHeader, v5, v6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v16);
}

uint64_t sub_1A982FF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v9 + *(v8 + 72) * v10;
  (*(v8 + 16))(v7, v12, v13);
  return sub_1A9815B18(v7, v11, a5);
}

uint64_t Deque.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1A982DD1C(sub_1A982B85C, 0, a3, &type metadata for _DequeBufferHeader, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v8);
    if (v9 >= a2)
    {
      type metadata accessor for Deque(0, a4, v6, v7);

      swift_getWitnessTable();
      sub_1A9977940();
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9830170(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = type metadata accessor for Deque(0, *(a3 + a4 - 8), a3, a4);

  sub_1A98345B4(v6, v7, v8, v4, v5, v9);
}

uint64_t Deque.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5, uint64_t a6)
{
  sub_1A98345B4(a1, a2, a3, a4, a5, a6);
}

uint64_t Deque.replaceSubrange<A>(_:with:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A9833ECC(a1, a2, a3, a4, a5, a6);
  v8 = *(*(a5 - 8) + 8);

  return v8(a3, a5);
}

void (*Deque.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[5] = a4;
  v9[6] = v4;
  v9[3] = a2;
  v9[4] = a3;
  *v9 = Deque.subscript.getter(a2, a3, *v4, *(a4 + 16));
  v10[1] = v11;
  v10[2] = v12;
  return sub_1A9830348;
}

void sub_1A9830348(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[5];
  v7 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[2];
  if (a2)
  {

    sub_1A98345B4(v3, v4, v8, v7, v6, v5);
  }

  else
  {
    sub_1A98345B4(**a1, v4, v8, v7, v6, v5);
  }

  free(v2);
}

void *sub_1A9830400@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_1A9830418(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

void *sub_1A9830430@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v2, &type metadata for _DequeBufferHeader, *(a1 + 16), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v5);
  *a2 = v6;
  return result;
}

uint64_t (*sub_1A98304B4(uint64_t **a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_1A9830588(v7, *a2, *v3, *(a3 + 16));
  return sub_1A9830540;
}

void sub_1A9830540(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_1A9830588(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = *(a4 - 8);
  *a1 = a4;
  a1[1] = v8;
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  Deque.subscript.getter(a2, a3, a4);
  return sub_1A983065C;
}

void sub_1A983065C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1A98306A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = Deque.subscript.getter(*a1, a1[1], *v3, *(a2 + 16));
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

void *sub_1A98306E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v2, &type metadata for _DequeBufferHeader, *(a1 + 16), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v5);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = 0;
    a2[1] = v6;
  }

  return result;
}

void *sub_1A9830870@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1A9830888(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

Swift::Void __swiftcall Deque.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *v3;
  v7 = *(v2 + 16);
  sub_1A982DD1C(sub_1A982B85C, 0, *v3, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v16);
  if (a2 < 0 || v17 <= a1)
  {
    goto LABEL_9;
  }

  sub_1A982DD1C(sub_1A982B85C, 0, v6, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v16);
  if (v17 <= a2)
  {
LABEL_10:
    __break(1u);
    return;
  }

  sub_1A99774E0();
  v8 = sub_1A99774D0();
  if ((v8 & 1) == 0)
  {
    type metadata accessor for Deque._Storage(0, v7, v9, v10);
    Deque._Storage._makeUniqueCopy()();
  }

  v11 = *v3;
  v12 = MEMORY[0x1EEE9AC00](v8);
  v15[8] = v7;
  v15[9] = a1;
  v16 = a2;
  MEMORY[0x1EEE9AC00](v12);
  v15[2] = v7;
  v15[3] = sub_1A98346DC;
  v15[4] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9817714, v15, v11, &type metadata for _DequeBufferHeader, v7, v14, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v17);
}

uint64_t sub_1A9830AA8(void *a1, uint64_t a2, Swift::Int forOffset, Swift::Int a4, uint64_t a5)
{
  Deque._UnsafeHandle.slot(forOffset:)(forOffset);
  Deque._UnsafeHandle.slot(forOffset:)(a4);
  sub_1A99770C0();
  return sub_1A99770D0();
}

uint64_t Deque.withContiguousMutableStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  sub_1A99774E0();
  v9 = sub_1A99774D0();
  if ((v9 & 1) == 0)
  {
    type metadata accessor for Deque._Storage(0, v8, v10, v11);
    Deque._Storage._makeUniqueCopy()();
  }

  v12 = *v4;
  v13 = MEMORY[0x1EEE9AC00](v9);
  v20[2] = v8;
  v20[3] = a4;
  v20[4] = a1;
  v20[5] = a2;
  MEMORY[0x1EEE9AC00](v13);
  v16[2] = v8;
  v17 = sub_1A99770A0();
  v18 = sub_1A98346FC;
  v19 = v20;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A982DE20(sub_1A9835610, v16, v12, &type metadata for _DequeBufferHeader, v8, v14, v17, MEMORY[0x1E69E7288], &v21);
}

uint64_t sub_1A9830CB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  result = a1[2];
  v13 = a1[1] + result;
  if (*a1 < v13)
  {
    return (*(*(a5 - 8) + 56))(a6, 1, 1, a5, a4);
  }

  if (v13 < result)
  {
    __break(1u);
  }

  else
  {
    Deque._UnsafeHandle.buffer(for:)(result, v13, a1, a2, a4);
    v15 = sub_1A99770E0();
    v17 = v16;
    v18[0] = v15;
    v18[1] = v16;
    a3(v18);
    if (!v6)
    {
      (*(*(a5 - 8) + 56))(a6, 0, 1, a5);
    }

    return sub_1A9830DF8(v18, v15, v17, a4);
  }

  return result;
}

uint64_t sub_1A9830DF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1A99770B0();
  result = sub_1A99770B0();
  if (!v6)
  {
LABEL_5:
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!result)
  {
    goto LABEL_8;
  }

  if (v6 != result)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  if (a1[1] == a3)
  {
    return result;
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

void (*sub_1A9830EB4(uint64_t **a1, uint64_t *a2, uint64_t a3))(uint64_t **a1)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[2] = v3;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  if (v7)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v11 + 64));
  }

  v13 = result;
  v9[5] = result;
  v14 = *a2;
  if (*a2 < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1A982DD1C(sub_1A982B85C, 0, *v3, &type metadata for _DequeBufferHeader, v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v15);
    if (v14 < *v9)
    {
      v9[1] = Deque._prepareForModify(at:)(v13, v14, a3);
      return sub_1A982FAF4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9831028(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_1A98345B4(*a1, a1[1], a1[2], *a2, a2[1], a3);
}

void (*sub_1A9831078(unint64_t **a1, unint64_t *a2, unint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = v3;
  v7[4] = a3;
  v9 = *a2;
  v10 = a2[1];
  v8[5] = *a2;
  v8[6] = v10;
  *v8 = Deque.subscript.getter(v9, v10, *v3, *(a3 + 16));
  v8[1] = v11;
  v8[2] = v12;
  return sub_1A9831114;
}

void sub_1A9831114(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[5];
  v5 = (*a1)[6];
  v7 = (*a1)[4];
  v8 = (*a1)[2];
  if (a2)
  {

    sub_1A98345B4(v3, v4, v8, v6, v5, v7);
  }

  else
  {
    sub_1A98345B4(**a1, v4, v8, v6, v5, v7);
  }

  free(v2);
}

Swift::Int sub_1A98312A0(Sharing::_DequeSlot *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v50 = a8;
  v56 = a6;
  v42 = a4;
  v59 = a3;
  v52 = a2;
  v58 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = sub_1A9977430();
  v48 = *(v17 - 8);
  v49 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v41 - v18;
  v55 = a13;
  v53 = a12;
  v54 = swift_getAssociatedTypeWitness();
  v19 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v21 = (&v41 - v20);
  v22 = sub_1A9977440();
  v23 = *(v22 - 8);
  result = MEMORY[0x1EEE9AC00](v22);
  v26 = &v41 - v25;
  v51 = a5;
  if (a5 < v59)
  {
    __break(1u);
    goto LABEL_11;
  }

  v27 = *(AssociatedConformanceWitness + 8);
  result = sub_1A99767A0();
  if ((result & 1) == 0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v45 = v27;
  v57 = a11;
  v28 = *(AssociatedTypeWitness - 8);
  v29 = *(v28 + 16);
  v46 = a7;
  v43 = v28 + 16;
  v44 = v29;
  v29(v26, a7, AssociatedTypeWitness);
  swift_getWitnessTable();
  sub_1A9976F00();
  (*(v23 + 8))(v26, v22);
  v30 = v54;
  v31 = swift_getAssociatedConformanceWitness();
  v33 = v51;
  v32 = v52;
  Deque._UnsafeHandle.uncheckedReplaceInPlace<A>(inOffsets:with:)(v59, v51, v21, &v58->position, v52, v57, v30, v31);
  v34 = *(v19 + 8);
  v59 = v21;
  result = v34(v21, v30);
  v35 = v50;
  if (v50 < 0)
  {
    if (v42 < v33)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    return Deque._UnsafeHandle.uncheckedRemove(offsets:)(v33, v42, v58, v32, v57);
  }

  else if (v50)
  {
    v36 = v46;
    result = sub_1A99767A0();
    if (result)
    {
      v37 = v31;
      v38 = v47;
      v44(v47, v36, AssociatedTypeWitness);
      v39 = v49;
      swift_getWitnessTable();
      v40 = v59;
      sub_1A9976F00();
      (*(v48 + 8))(v38, v39);
      return Deque._UnsafeHandle.uncheckedInsert<A>(contentsOf:count:atOffset:)(v40, v35, v33, v58, v32, v57, v54, v37);
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t Deque.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A983471C(a1, a2, a3);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v5;
}

uint64_t Deque.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1A98317A8(a1, a2, a3, a4, sub_1A9834844);
}

{
  return sub_1A98317A8(a1, a2, a3, a4, sub_1A98348B4);
}

uint64_t sub_1A98317A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a5(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v7;
}

void *sub_1A9831814(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    Deque._UnsafeHandle.buffer(for:)(0, a3, result, a2, a5);
    v12 = sub_1A99770E0();
    v14 = v13;
    MEMORY[0x1EEE9AC00](v12);
    result = sub_1A9976A10();
    if (v16 == 1)
    {
      result = _sSr7SharingE13initializeAll14fromContentsOfyqd___t7ElementQyd__RszSlRd__lF_0(a4, v12, v14, a5, a6, a7);
    }

    v15[1] = a3;
  }

  return result;
}

uint64_t sub_1A9831944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[1] = a2;
  v11[0] = a1;
  v8 = sub_1A99767C0();
  WitnessTable = swift_getWitnessTable();
  return _sSr7SharingE13initializeAll14fromContentsOfyqd___t7ElementQyd__RszSlRd__lF_0(v11, a3, a4, a5, v8, WitnessTable);
}

uint64_t sub_1A9831A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  Deque._UnsafeHandle.availableSegments()(v13, v24);
  (*(v12 + 16))(v15, a2, a4);
  v18 = type metadata accessor for _UnsafeMutableWrappedBuffer(0, a3, v16, v17);
  result = _UnsafeMutableWrappedBuffer.initialize<A>(fromSequencePrefix:)(a6, v15, v18, a4, a5);
  v20 = *(a1 + 8);
  v21 = __OFADD__(v20, result);
  v22 = v20 + result;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v22;
  }

  return result;
}

uint64_t sub_1A9831B40(Swift::Int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Deque._UnsafeHandle.uncheckedAppend(_:)(a3, a1, a2, a5);
  Deque._UnsafeHandle.availableSegments()(a1, v19);
  v12 = type metadata accessor for _UnsafeMutableWrappedBuffer(0, a5, v10, v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = _UnsafeMutableWrappedBuffer.initialize<A>(fromPrefixOf:)(a4, v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = a1[1];
  v17 = __OFADD__(v16, result);
  v18 = v16 + result;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a1[1] = v18;
  }

  return result;
}

uint64_t Deque.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a2 + 16);
  v23 = v9;
  v24 = a3;
  v25 = a4;
  result = sub_1A9976A10();
  if (v26[0] == 1)
  {
    result = sub_1A9976E60();
    if (result >= 1)
    {
      v11 = result;
      result = sub_1A982DD1C(sub_1A982B85C, 0, *v4, &type metadata for _DequeBufferHeader, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v22);
      v12 = *v26 + v11;
      if (__OFADD__(*v26, v11))
      {
        __break(1u);
      }

      else
      {
        sub_1A99774E0();
        v13 = sub_1A99774D0();
        v14 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v5, &type metadata for _DequeBufferHeader, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v22);
        if (*v26 < v12 || (v13 & 1) == 0)
        {
          type metadata accessor for Deque._Storage(0, v9, v15, v16);
          Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v12, 0);
        }

        v17 = *v5;
        v18 = MEMORY[0x1EEE9AC00](v14);
        v21[8] = v9;
        v21[9] = a3;
        v21[10] = a4;
        v21[11] = v11;
        v22 = a1;
        MEMORY[0x1EEE9AC00](v18);
        v21[2] = v9;
        v21[3] = sub_1A9834A84;
        v21[4] = v19;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
        return sub_1A982DE20(sub_1A9817714, v21, v17, &type metadata for _DequeBufferHeader, v9, v20, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v26);
      }
    }
  }

  return result;
}

uint64_t sub_1A9831EDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a1;
  v15 = *a3;

  sub_1A982DD1C(sub_1A982B85C, 0, v15, &type metadata for _DequeBufferHeader, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v27);

  v17 = v31 + a2;
  if (__OFADD__(v31, a2))
  {
    __break(1u);
  }

  else
  {
    v28 = a7;
    v29 = a8;
    sub_1A99774E0();
    v18 = sub_1A99774D0();
    v19 = sub_1A982DD1C(sub_1A97AD9A0, 0, *a3, &type metadata for _DequeBufferHeader, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v27);
    if (v31 < v17 || (v18 & 1) == 0)
    {
      type metadata accessor for Deque._Storage(0, a4, v20, v21);
      Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v17, 0);
    }

    v22 = *a3;
    v23 = MEMORY[0x1EEE9AC00](v19);
    v26[8] = a4;
    v26[9] = a5;
    v26[10] = a6;
    v26[11] = v30;
    v27 = a2;
    MEMORY[0x1EEE9AC00](v23);
    v26[2] = a4;
    v26[3] = v28;
    v26[4] = v24;

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(v29, v26, v22, &type metadata for _DequeBufferHeader, a4, v25, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v31);
  }

  return result;
}

uint64_t sub_1A983212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Deque._UnsafeHandle.availableSegments()(v14, v24);
  v19 = type metadata accessor for _UnsafeMutableWrappedBuffer(0, a5, v17, v18);
  _UnsafeMutableWrappedBuffer.prefix(_:)(a3, v25);
  (*(v13 + 16))(v16, a4, a6);
  result = _UnsafeMutableWrappedBuffer.initialize<A>(from:)(v16, v19, a6, a7);
  v21 = *(a1 + 8);
  v22 = __OFADD__(v21, a3);
  v23 = v21 + a3;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v23;
  }

  return result;
}

void *Deque.insert(_:at:)(void *result, Swift::Int a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = *v3;
  v7 = *(a3 + 16);
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v3, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v18);
  if (v20 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1A982DD1C(sub_1A982B85C, 0, v6, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v18);
  v8 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_1A99774E0();
  v9 = sub_1A99774D0();
  v10 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v3, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v18);
  if (v20 < v8 || (v9 & 1) == 0)
  {
    type metadata accessor for Deque._Storage(0, v7, v11, v12);
    Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v8, 0);
  }

  v13 = *v3;
  v14 = MEMORY[0x1EEE9AC00](v10);
  v17[8] = v7;
  v17[9] = a2;
  v18 = v5;
  v19 = v3;
  MEMORY[0x1EEE9AC00](v14);
  v17[2] = v7;
  v17[3] = sub_1A9834AB0;
  v17[4] = v15;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9817714, v17, v13, &type metadata for _DequeBufferHeader, v7, v16, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v20);
}

uint64_t sub_1A98324FC(Swift::Int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v15)
  {
    return Deque._UnsafeHandle.uncheckedPrepend(_:)(a4, a1, a2, a6);
  }

  v16 = *v12;

  sub_1A982DD1C(sub_1A982B85C, 0, v16, &type metadata for _DequeBufferHeader, a6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v19);

  if (v21 == a3)
  {
    return Deque._UnsafeHandle.uncheckedAppend(_:)(a4, a1, a2, a6);
  }

  Deque._UnsafeHandle.openGap(ofSize:atOffset:)(1, a3, a1, &v21);
  result = sub_1A99770B0();
  if (result)
  {
    v18 = result;
    (*(v11 + 16))(v14, a4, a6);
    return sub_1A9815B18(v14, v18, a6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Deque.insert<A>(contentsOf:at:)(void *a1, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A9834AD0(a1, a2, a3, a4, a5);
  v7 = *(*(a4 - 8) + 8);

  return v7(a1, a4);
}

uint64_t sub_1A9832740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, v19);
  return Deque._UnsafeHandle.uncheckedInsert<A>(contentsOf:count:atOffset:)(v16, a4, a5, a1, a2, a6, a7, a8);
}

uint64_t Deque.remove(at:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = *(a2 + 16);
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v13);
  if (v14 <= v3)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1A99774E0();
  v5 = sub_1A99774D0();
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Deque._Storage(0, v4, v6, v7);
    Deque._Storage._makeUniqueCopy()();
  }

  v8 = *v2;
  v9 = MEMORY[0x1EEE9AC00](v5);
  v12[8] = v4;
  v12[9] = v2;
  v13 = v3;
  MEMORY[0x1EEE9AC00](v9);
  v12[2] = v4;
  v12[3] = v4;
  v12[4] = sub_1A9834D80;
  v12[5] = v10;

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A982CE40, v12, v8, &type metadata for _DequeBufferHeader, v4, v11, v4, MEMORY[0x1E69E7288], &v14);
}

Swift::Int sub_1A98329FC(Sharing::_DequeSlot *a1, uint64_t a2, uint64_t *a3, char *a4, uint64_t a5)
{
  result = Deque.subscript.getter(a4, *a3, a5);
  v10 = a4 + 1;
  if (__OFADD__(a4, 1))
  {
    __break(1u);
  }

  else if (v10 >= a4)
  {
    return Deque._UnsafeHandle.uncheckedRemove(offsets:)(a4, v10, a1, a2, a5);
  }

  __break(1u);
  return result;
}

uint64_t Deque.removeSubrange(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = *(a3 + 16);
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v3, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v15);
  if (v16 < a2)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1A99774E0();
  v7 = sub_1A99774D0();
  if ((v7 & 1) == 0)
  {
    type metadata accessor for Deque._Storage(0, v6, v8, v9);
    Deque._Storage._makeUniqueCopy()();
  }

  v10 = *v3;
  v11 = MEMORY[0x1EEE9AC00](v7);
  v14[8] = v6;
  v14[9] = v5;
  v15 = a2;
  MEMORY[0x1EEE9AC00](v11);
  v14[2] = v6;
  v14[3] = sub_1A9834DA0;
  v14[4] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A982DE20(sub_1A9817714, v14, v10, &type metadata for _DequeBufferHeader, v6, v13, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v16);
}

uint64_t Deque._customRemoveLast()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *v2;
  swift_getWitnessTable();
  result = sub_1A9976EF0();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a1 + 16);
    sub_1A99774E0();
    v7 = sub_1A99774D0();
    if ((v7 & 1) == 0)
    {
      type metadata accessor for Deque._Storage(0, v6, v8, v9);
      Deque._Storage._makeUniqueCopy()();
    }

    v10 = *v2;
    v11 = MEMORY[0x1EEE9AC00](v7);
    v14[8] = v6;
    MEMORY[0x1EEE9AC00](v11);
    v14[2] = v6;
    v14[3] = v6;
    v14[4] = sub_1A9834DD8;
    v14[5] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A9835628, v14, v10, &type metadata for _DequeBufferHeader, v6, v13, v6, MEMORY[0x1E69E7288], &v15);
    return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
  }

  return result;
}

Swift::Bool __swiftcall Deque._customRemoveLast(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = a1;
  v4 = *(v1 + 16);
  LOBYTE(a1) = sub_1A982DD1C(sub_1A982B85C, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v14);
  if (v16 < v3)
  {
LABEL_7:
    __break(1u);
    return a1;
  }

  sub_1A99774E0();
  v5 = sub_1A99774D0();
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Deque._Storage(0, v4, v6, v7);
    Deque._Storage._makeUniqueCopy()();
  }

  v8 = *v2;
  v9 = MEMORY[0x1EEE9AC00](v5);
  v14 = v4;
  v15 = v3;
  MEMORY[0x1EEE9AC00](v9);
  v13[2] = v4;
  v13[3] = sub_1A9834E04;
  v13[4] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9817714, v13, v8, &type metadata for _DequeBufferHeader, v4, v11, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v16);
  LOBYTE(a1) = 1;
  return a1;
}

uint64_t Deque.removeFirst()(uint64_t a1)
{
  v13 = *v1;
  swift_getWitnessTable();
  result = sub_1A9976EF0();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 16);
    sub_1A99774E0();
    v5 = sub_1A99774D0();
    if ((v5 & 1) == 0)
    {
      type metadata accessor for Deque._Storage(0, v4, v6, v7);
      Deque._Storage._makeUniqueCopy()();
    }

    v8 = *v1;
    v9 = MEMORY[0x1EEE9AC00](v5);
    v12[8] = v4;
    MEMORY[0x1EEE9AC00](v9);
    v12[2] = v4;
    v12[3] = v4;
    v12[4] = sub_1A982CE14;
    v12[5] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    return sub_1A982DE20(sub_1A9835628, v12, v8, &type metadata for _DequeBufferHeader, v4, v11, v4, MEMORY[0x1E69E7288], &v13);
  }

  return result;
}

Swift::Void __swiftcall Deque.removeFirst(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(v1 + 16);
  sub_1A982DD1C(sub_1A982B85C, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v13);
  if (v15 < a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1A99774E0();
  v5 = sub_1A99774D0();
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Deque._Storage(0, v4, v6, v7);
    Deque._Storage._makeUniqueCopy()();
  }

  v8 = *v2;
  v9 = MEMORY[0x1EEE9AC00](v5);
  v13 = v4;
  v14 = a1;
  MEMORY[0x1EEE9AC00](v9);
  v12[2] = v4;
  v12[3] = sub_1A9834E38;
  v12[4] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9817714, v12, v8, &type metadata for _DequeBufferHeader, v4, v11, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v15);
}

Swift::Void __swiftcall Deque.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v3 = v1;
  if (keepingCapacity)
  {
    v4 = *(v1 + 16);
    sub_1A99774E0();
    v5 = sub_1A99774D0();
    if ((v5 & 1) == 0)
    {
      type metadata accessor for Deque._Storage(0, v4, v6, v7);
      Deque._Storage._makeUniqueCopy()();
    }

    v8 = *v2;
    v9 = MEMORY[0x1EEE9AC00](v5);
    v12[8] = v4;
    MEMORY[0x1EEE9AC00](v9);
    v12[2] = v4;
    v12[3] = sub_1A9834E6C;
    v12[4] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A9817714, v12, v8, &type metadata for _DequeBufferHeader, v4, v11, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v13);
  }

  else
  {

    *v2 = Deque._Storage.init()(*(v3 + 16));
  }
}

uint64_t sub_1A98333B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Deque.init()(*(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1A98333E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A9833ECC(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t sub_1A983346C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a3 + 16);
  v7 = sub_1A983471C(a1, a2, v6);
  result = (*(*(v6 - 8) + 8))(a1, v6);
  *a4 = v7;
  return result;
}

uint64_t sub_1A98334DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = sub_1A9834844(a1, *(a4 + 16), a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a5 = v8;
  return result;
}

uint64_t sub_1A9833558(uint64_t a1, uint64_t a2)
{
  Deque.append(_:)(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t sub_1A98335C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Deque.append<A>(contentsOf:)(a1, a4, a2, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t sub_1A9833658(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void))
{
  (a5)(a1, *a2, a3, a4);
  v7 = *(*(*(a3 + 16) - 8) + 8);

  return v7(a1);
}

uint64_t sub_1A98336CC(void *a1, Swift::Int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A9834AD0(a1, *a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a1, a3);
}

uint64_t sub_1A9833808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  v15 = a1;
  v9 = a2;
  v10 = type metadata accessor for Deque.Iterator(0, a2, a3, a4);
  v11 = sub_1A98355B4;
  v12 = &v13;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9835610, v8, a1, &type metadata for _DequeBufferHeader, a2, v6, v10, MEMORY[0x1E69E7288], v16);
  return v17;
}

uint64_t sub_1A98339E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1A9976770();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1A9976F50();
  result = sub_1A9976770();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9833AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1A9976770();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9833B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v9 = a4;
  type metadata accessor for Deque.Iterator(255, a4, a3, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_1A983549C;
  v12 = &v13;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9833998, v8, a3, &type metadata for _DequeBufferHeader, a4, v6, TupleTypeMetadata2, MEMORY[0x1E69E7288], v18);
  return v19;
}

uint64_t sub_1A9833C80(uint64_t a1, uint64_t a2)
{
  sub_1A982DD1C(sub_1A982B85C, 0, a1, &type metadata for _DequeBufferHeader, a2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v5);
  v7 = a2;
  v8 = a1;
  return sub_1A982EFCC(v9, sub_1A9835520, v6, a2);
}

void *sub_1A9833D28(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = *(a3 + 16);
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v3, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v15);
  if (v16 <= a2)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1A99774E0();
  v7 = sub_1A99774D0();
  if ((v7 & 1) == 0)
  {
    type metadata accessor for Deque._Storage(0, v6, v8, v9);
    Deque._Storage._makeUniqueCopy()();
  }

  v10 = *v3;
  v11 = MEMORY[0x1EEE9AC00](v7);
  v14[8] = v6;
  v14[9] = a2;
  v15 = v5;
  MEMORY[0x1EEE9AC00](v11);
  v14[2] = v6;
  v14[3] = sub_1A983541C;
  v14[4] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A982DE20(sub_1A9817714, v14, v10, &type metadata for _DequeBufferHeader, v6, v13, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v16);
}

void sub_1A9833ECC(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a3;
  v46 = a5;
  v47 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v43 = v39 - v15;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v48 = v6;
  v16 = *v6;
  v17 = *(a4 + 16);
  sub_1A982DD1C(sub_1A982B85C, 0, *v6, &type metadata for _DequeBufferHeader, v17, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v38);
  if (v49 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v42 = a2;
  v18 = __OFSUB__(a2, a1);
  v19 = a2 - a1;
  if (v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v41 = v11;
  v20 = sub_1A9976E60();
  v21 = v20 - v19;
  if (__OFSUB__(v20, v19))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v20;
  sub_1A982DD1C(sub_1A982B85C, 0, v16, &type metadata for _DequeBufferHeader, v17, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v38);
  v23 = v49 + v21;
  if (__OFADD__(v49, v21))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v40 = v21;
  v44 = AssociatedTypeWitness;
  sub_1A99774E0();
  v24 = v48;
  v25 = sub_1A99774D0();
  sub_1A982DD1C(sub_1A97AD9A0, 0, *v24, &type metadata for _DequeBufferHeader, v17, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v38);
  if (v49 < v23 || (v25 & 1) == 0)
  {
    type metadata accessor for Deque._Storage(0, v17, v26, v27);
    Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v23, 0);
  }

  if (v22 >= v19)
  {
    v22 = v19;
  }

  v28 = a1 + v22;
  if (!__OFADD__(a1, v22))
  {
    v39[1] = v19;
    v39[2] = 0;
    v30 = v45;
    v29 = v46;
    v31 = a1;
    v32 = v47;
    sub_1A9976E50();
    v33 = v43;
    sub_1A9976E70();
    v34 = v41[1];
    v35 = v34(v14, v44);
    v41 = v39;
    v48 = *v48;
    v36 = MEMORY[0x1EEE9AC00](v35);
    v39[-12] = v17;
    v39[-11] = v29;
    v39[-10] = v32;
    v39[-9] = v31;
    v39[-8] = v42;
    v39[-7] = v28;
    v39[-6] = v30;
    v39[-5] = v33;
    v39[-4] = v40;
    v39[-3] = v22;
    MEMORY[0x1EEE9AC00](v36);
    v39[-4] = v17;
    v39[-3] = sub_1A98353DC;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A9817714, &v39[-6], v48, &type metadata for _DequeBufferHeader, v17, v37, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v49);
    v34(v33, v44);
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1A9834318(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_9:
  v4 = __OFADD__(result, a2);
  result += a2;
  if (v4)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A983436C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  v15 = a2;
  v16 = a1;
  v9 = a3;
  v10 = type metadata accessor for Deque.Iterator(0, a3, a3, a4);
  v11 = sub_1A983555C;
  v12 = &v13;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A982DE20(sub_1A9833998, v8, a1, &type metadata for _DequeBufferHeader, a3, v6, v10, MEMORY[0x1E69E7288], v17);
  return v18;
}

Sharing::_DequeSlot sub_1A9834440@<X0>(Sharing::_DequeSlot *a1@<X0>, char *a2@<X8>)
{
  v4 = *(v2 + 24);
  result.position = Deque._UnsafeHandle.slot(_:offsetBy:)(a1[2], a1[1].position).position;
  if (result.position && result.position != v4[1].position)
  {
    v4[1].position = 0;
    v4[2].position = result.position;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1A98344F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6.position = Deque._UnsafeHandle.slot(forOffset:)(*(v2 + 24)).position;
  return (*(*(v5 - 8) + 16))(a2, a1 + *(*(v5 - 8) + 72) * v6.position, v5);
}

void sub_1A98345B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5, uint64_t a6)
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1A982DD1C(sub_1A982B85C, 0, *v6, &type metadata for _DequeBufferHeader, *(a6 + 16), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v15);
    if (v16[0] >= a5)
    {
      v16[0] = a1;
      v16[1] = a2;
      v16[2] = a3;
      swift_getWitnessTable();
      v13 = sub_1A9977960();
      WitnessTable = swift_getWitnessTable();
      sub_1A9833ECC(a4, a5, v16, a6, v13, WitnessTable);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1A983471C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = Deque.init(minimumCapacity:)(a2, a3);
    v7 = MEMORY[0x1EEE9AC00](v6);
    v10[8] = a3;
    v10[9] = a2;
    v10[10] = v5;
    MEMORY[0x1EEE9AC00](v7);
    v10[2] = a3;
    v10[3] = sub_1A9835388;
    v10[4] = v8;

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A9817714, v10, v6, &type metadata for _DequeBufferHeader, a3, v9, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v11);

    return v6;
  }

  return result;
}

uint64_t sub_1A9834844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = Deque._Storage.init()(a2);
  v10 = type metadata accessor for Deque(0, a2, v8, v9);
  Deque.append<A>(contentsOf:)(a1, v10, a3, a4);
  return v12;
}

uint64_t sub_1A98348B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A9976E60();
  if (v8 < 1)
  {

    return Deque._Storage.init()(a2);
  }

  else
  {
    v11 = v8;
    v12 = Deque._Storage.init(minimumCapacity:)(v8, a2, v9, v10);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v17[8] = a2;
    v17[9] = a3;
    v17[10] = a4;
    v17[11] = v11;
    v17[12] = a1;
    MEMORY[0x1EEE9AC00](v13);
    v17[2] = a2;
    v17[3] = sub_1A983530C;
    v17[4] = v14;

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A9817714, v17, v12, &type metadata for _DequeBufferHeader, a2, v15, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v18);

    return v12;
  }
}

void *sub_1A9834AD0(void *result, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v10 = result;
  v11 = *v6;
  v12 = *(a3 + 16);
  result = sub_1A982DD1C(sub_1A982B85C, 0, *v6, &type metadata for _DequeBufferHeader, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v24);
  if (v27 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = sub_1A9976E60();
  result = sub_1A982DD1C(sub_1A982B85C, 0, v11, &type metadata for _DequeBufferHeader, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v24);
  v14 = v27 + v13;
  if (__OFADD__(v27, v13))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v26 = v10;
  sub_1A99774E0();
  v15 = sub_1A99774D0();
  v16 = sub_1A982DD1C(sub_1A97AD9A0, 0, *v6, &type metadata for _DequeBufferHeader, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v24);
  if (v27 < v14 || (v15 & 1) == 0)
  {
    type metadata accessor for Deque._Storage(0, v12, v17, v18);
    Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v14, 0);
  }

  v19 = *v6;
  v20 = MEMORY[0x1EEE9AC00](v16);
  v23[8] = v12;
  v23[9] = a4;
  v23[10] = a5;
  v23[11] = v26;
  v24 = v13;
  v25 = a2;
  MEMORY[0x1EEE9AC00](v20);
  v23[2] = v12;
  v23[3] = sub_1A98352E8;
  v23[4] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A982DE20(sub_1A9817714, v23, v19, &type metadata for _DequeBufferHeader, v12, v22, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v27);
}

unint64_t sub_1A9834F04()
{
  result = qword_1EB3B2BC8;
  if (!qword_1EB3B2BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2BC8);
  }

  return result;
}

uint64_t sub_1A98350B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2BC0, &qword_1A9998670);
    sub_1A9834F04();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A983520C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A9835248(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A9835290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A9835388(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(v2 + 24);
  if (v4 >= 1)
  {
    result = sub_1A9977060();
  }

  *(v3 + 8) = v4;
  return result;
}

uint64_t sub_1A983541C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7.position = Deque._UnsafeHandle.slot(forOffset:)(v4).position;
  return (*(*(v5 - 8) + 24))(a2 + *(*(v5 - 8) + 72) * v7.position, v6, v5);
}

unint64_t sub_1A98354BC()
{
  result = qword_1EB3B2C68[0];
  if (!qword_1EB3B2C68[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2C60, &qword_1A9998998);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3B2C68);
  }

  return result;
}

uint64_t sub_1A98355B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[1] + v3;
  if (*a1 < v4)
  {
    v4 = *a1;
  }

  *a2 = *(v2 + 24);
  a2[1] = v3;
  a2[2] = v4;
}

uint64_t _UnsafeWrappedBuffer.init(first:count:second:count:)@<X0>(uint64_t a6@<X8>)
{
  v7 = sub_1A99767B0();
  v9 = v8;
  result = sub_1A99767B0();
  *a6 = v7;
  *(a6 + 8) = v9;
  *(a6 + 16) = result;
  *(a6 + 24) = v11;
  *(a6 + 32) = 0;
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.init(mutating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A99770E0();
  v8 = v7;
  v17 = *(a1 + 16);
  v18 = *(a1 + 32);
  v16[2] = a2;
  sub_1A99767C0();
  sub_1A99770A0();
  v9 = sub_1A9977100();
  result = sub_1A97A4AD0(sub_1A9836C74, v16, MEMORY[0x1E69E73E0], v9, v10, &v19);
  v12 = v19;
  v13 = v20;
  if (v20)
  {
    v14 = v19;
  }

  else
  {
    v14 = 0;
  }

  if (v20)
  {
    v15 = v21;
  }

  else
  {
    v15 = 1;
  }

  if (!v21)
  {
    v12 = v14;
  }

  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v15;
  return result;
}

uint64_t sub_1A98357E4@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a4)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  if (a5)
  {
    v6 = a3;
  }

  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1 | (a4 == 0);
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.assign<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _UnsafeMutableWrappedBuffer.deinitialize()();
  (*(v8 + 16))(v10, a1, a3);
  return _UnsafeMutableWrappedBuffer.initialize<A>(from:)(v10, a2, a3, a4);
}

uint64_t _UnsafeMutableWrappedBuffer.initialize<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52 = a2;
  v54 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = sub_1A9977430();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v37 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v51 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v37 - v12;
  v13 = sub_1A9977440();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  v53 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v37 - v21;
  if (*(v5 + 32))
  {
    v23 = v54;
    _sSr7SharingE13initializeAll14fromContentsOfyqd___t7ElementQyd__RszSlRd__lF_0(v54, *v5, *(v5 + 8), *(v52 + 16), a3, a4);
    v24 = *(*(a3 - 8) + 8);

    return v24(v23, a3);
  }

  else
  {
    AssociatedConformanceWitness = v20;
    v46 = v11;
    v26 = *(v5 + 16);
    v40 = *(v5 + 24);
    v41 = v26;
    sub_1A9976E50();
    v27 = *v5;
    v43 = *(v5 + 8);
    v44 = v27;
    sub_1A9976E70();
    v28 = v53 + 8;
    v42 = *(v53 + 8);
    v42(v19, AssociatedTypeWitness);
    result = sub_1A99767A0();
    if (result)
    {
      v29 = *(v53 + 16);
      v53 += 16;
      v38 = v29;
      v39 = v28;
      v29(v16, v22, AssociatedTypeWitness);
      swift_getWitnessTable();
      v30 = v50;
      sub_1A9976F00();
      (*(AssociatedConformanceWitness + 8))(v16, v13);
      v31 = *(v52 + 16);
      v32 = v46;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      _sSr7SharingE13initializeAll14fromContentsOfyqd___t7ElementQyd__RszSlRd__lF_0(v30, v44, v43, v31, v32, AssociatedConformanceWitness);
      v52 = *(v51 + 8);
      (v52)(v30, v32);
      result = sub_1A99767A0();
      if (result)
      {
        v51 = v31;
        v33 = v30;
        v34 = v47;
        v38(v47, v22, AssociatedTypeWitness);
        v35 = v49;
        swift_getWitnessTable();
        v36 = v54;
        sub_1A9976F00();
        (*(v48 + 8))(v34, v35);
        _sSr7SharingE13initializeAll14fromContentsOfyqd___t7ElementQyd__RszSlRd__lF_0(v33, v41, v40, v51, v32, AssociatedConformanceWitness);
        (*(*(a3 - 8) + 8))(v36, a3);
        (v52)(v33, v32);
        return (v42)(v22, AssociatedTypeWitness);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.init(first:count:second:count:)@<X0>(uint64_t a5@<X8>)
{
  v6 = sub_1A99770C0();
  v8 = v7;
  result = sub_1A99770C0();
  *a5 = v6;
  *(a5 + 8) = v8;
  if (v10)
  {
    v11 = result;
  }

  else
  {
    v11 = 0;
  }

  *(a5 + 16) = v11;
  *(a5 + 24) = v10;
  *(a5 + 32) = v10 == 0;
  return result;
}

Swift::Void __swiftcall _UnsafeMutableWrappedBuffer.deinitialize()()
{
  v2 = *(v0 + 16);
  sub_1A9836CD4(*v1, *(v1 + 8), v2);
  if ((*(v1 + 32) & 1) == 0)
  {
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);

    sub_1A9836CD4(v3, v4, v2);
  }
}

uint64_t _UnsafeMutableWrappedBuffer.suffix(_:)@<X0>(uint64_t result@<X0>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v3 + 24);
  }

  v9 = __OFADD__(v5, v8);
  v10 = v5 + v8;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    result = *v3;
    v12 = *(v3 + 16);
    if (v10 <= v11)
    {
LABEL_15:
      *a3 = result;
      *(a3 + 8) = v5;
      *(a3 + 16) = v12;
      *(a3 + 24) = v6;
      *(a3 + 32) = v7 & 1;
      return result;
    }

    if (*(v3 + 32))
    {
      sub_1A9977100();
      swift_getWitnessTable();
      sub_1A9976750();
      result = sub_1A99770F0();
LABEL_14:
      v7 = 1;
      goto LABEL_15;
    }

    if (v6 >= v11)
    {
      sub_1A9977100();
      swift_getWitnessTable();
      sub_1A9976750();
      result = sub_1A99770F0();
      v12 = 0;
      v6 = 0;
      goto LABEL_14;
    }

    if (!__OFSUB__(v11, v6))
    {
      sub_1A9977100();
      swift_getWitnessTable();
      sub_1A9976750();
      result = sub_1A99770F0();
      v7 = v6 == 0;
      if (!v6)
      {
        v12 = 0;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.initialize<A>(fromSequencePrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v54 = a3;
  v11 = *(a3 + 16);
  v12 = sub_1A99770A0();
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - v14;
  v16 = *(v11 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v57 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - v20;
  v53 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a5;
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v60 = &v45 - v25;
  v26 = *(v6 + 24);
  v58 = *(v6 + 16);
  LODWORD(v55) = *(v6 + 32);
  v52 = v24;
  if ((v55 & 1) == 0)
  {
    v27 = *(v6 + 8);
    v28 = v27 < sub_1A9976A00();
    v29 = v52;
    if (v28)
    {
      v30 = v53;
      (*(v53 + 16))(v23, a2, a4);
      v31 = v29;
      v32 = a2;
      sub_1A99769E0();
      v33 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v35 = _UnsafeMutableWrappedBuffer.initialize<A>(fromPrefixOf:)(v31, v54, v33, AssociatedConformanceWitness);
      (*(v30 + 8))(v32, a4);
      return v35;
    }
  }

  v36 = *(v53 + 16);
  v50 = a2;
  v36(v23, a2, a4);
  v37 = a4;
  v38 = *(v6 + 8);
  v35 = sub_1A99769F0();
  v49 = v38;
  v39 = v37;
  if (v35 != v38 || (v55 & 1) != 0)
  {
    (*(v53 + 8))(v50, v37);
LABEL_18:
    (*(v51 + 32))(v52, v60, AssociatedTypeWitness);
    return v35;
  }

  if (v26 < 1)
  {
    v26 = 0;
LABEL_15:
    result = (*(v53 + 8))(v50, v39);
    v41 = v26;
  }

  else
  {
    v46 = v37;
    v40 = swift_getAssociatedConformanceWitness();
    v41 = 0;
    v55 = v16 + 16;
    v56 = v40;
    v54 = v16 + 8;
    while (1)
    {
      sub_1A9977160();
      if ((*(v16 + 48))(v15, 1, v11) == 1)
      {
        break;
      }

      (*(v16 + 32))(v21, v15, v11);
      result = sub_1A99770B0();
      if (!result)
      {
        goto LABEL_21;
      }

      v43 = result + *(v16 + 72) * v41;
      v44 = v57;
      (*(v16 + 16))(v57, v21, v11);
      sub_1A9815B18(v44, v43, v11);
      (*(v16 + 8))(v21, v11);
      if (v26 == ++v41)
      {
        v39 = v46;
        goto LABEL_15;
      }
    }

    (*(v53 + 8))(v50, v46);
    result = (*(v47 + 8))(v15, v48);
  }

  v35 = v49 + v41;
  if (!__OFADD__(v49, v41))
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.initialize<A>(fromPrefixOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = *(a2 + 16);
  v6 = sub_1A99770A0();
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = *(v5 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v28 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v33 = 0;
  v16 = 0;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v17 = v4[1];
  v34 = *v4;
  v35 = v17;
  v26 = v10 + 8;
  v27 = v10 + 16;
  v25 = v17;
  v18 = v28;
  do
  {
    if (v16 == v35)
    {
      if (v33)
      {
        v16 = v35;
        goto LABEL_15;
      }

      if (v4[4])
      {
        return v35;
      }

      v19 = v4[3];
      if (v19 < 1)
      {
        return v35;
      }

      v16 = 0;
      v34 = v4[2];
      v35 = v19;
      v33 = 1;
    }

    sub_1A9977160();
    if ((*v30)(v9, 1, v5) == 1)
    {
      goto LABEL_12;
    }

    (*v29)(v15, v9, v5);
    result = sub_1A99770B0();
    if (!result)
    {
      goto LABEL_18;
    }

    v20 = result + *(v10 + 72) * v16;
    (*(v10 + 16))(v18, v15, v5);
    sub_1A9815B18(v18, v20, v5);
    result = (*(v10 + 8))(v15, v5);
  }

  while (!__OFADD__(v16++, 1));
  __break(1u);
LABEL_12:
  result = (*(v23 + 8))(v9, v24);
  v35 = v16;
  if ((v33 & 1) == 0)
  {
    return v35;
  }

LABEL_15:
  v35 = v25 + v16;
  if (!__OFADD__(v25, v16))
  {
    return v35;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.prefix(_:)@<X0>(uint64_t result@<X0>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v3 + 24);
  }

  v9 = v5 + v8;
  if (__OFADD__(v5, v8))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *v3;
  v11 = *(v3 + 16);
  if (v9 <= result)
  {
LABEL_13:
    *a3 = v10;
    *(a3 + 8) = v5;
    *(a3 + 16) = v11;
    *(a3 + 24) = v6;
    *(a3 + 32) = v7 & 1;
    return result;
  }

  if (v5 >= result)
  {
    sub_1A9977100();
    swift_getWitnessTable();
    sub_1A9976EE0();
    result = sub_1A99770F0();
    v10 = result;
    v5 = v12;
    v11 = 0;
    v6 = 0;
    v7 = 1;
    goto LABEL_13;
  }

  if ((*(v3 + 32) & 1) == 0)
  {
    if (!__OFSUB__(result, v5))
    {
      sub_1A9977100();
      swift_getWitnessTable();
      sub_1A9976EE0();
      result = sub_1A99770F0();
      v7 = v6 == 0;
      if (v6)
      {
        v11 = result;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_13;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t _UnsafeWrappedBuffer.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.init(_:_:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a9@<X8>)
{
  result = sub_1A99770F0();
  if (a6)
  {
    v15 = a5;
  }

  else
  {
    v15 = 0;
  }

  if (a7)
  {
    v15 = a5;
  }

  *a9 = result;
  *(a9 + 8) = v14;
  *(a9 + 16) = v15;
  *(a9 + 24) = a6;
  *(a9 + 32) = a7 & 1 | (a6 == 0);
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a8@<X8>)
{
  result = sub_1A99770F0();
  *a8 = a1;
  *(a8 + 8) = a2;
  if (v12)
  {
    v13 = result;
  }

  else
  {
    v13 = 0;
  }

  *(a8 + 16) = v13;
  *(a8 + 24) = v12;
  *(a8 + 32) = v12 == 0;
  return result;
}

uint64_t sub_1A9836C38@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1A99770E0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A9836C74@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1A99770E0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t _s7Sharing20_UnsafeWrappedBufferV5countSivg_0()
{
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v1 = 0;
  }

  v2 = *(v0 + 8);
  result = v2 + v1;
  if (__OFADD__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9836CD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = swift_arrayDestroy();
    if ((a2 * *(*(a3 - 8) + 72)) >> 64 == (a2 * *(*(a3 - 8) + 72)) >> 63)
    {
      return v3;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t _sSr7SharingE13initializeAll14fromContentsOfyqd___t7ElementQyd__RszSlRd__lF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A99770A0();
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v29 = &v24 - v14;
  v25 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v24 - v18;
  v27 = a2;
  v28 = a4;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a2;
  v36 = a3;
  sub_1A9976A10();
  if (v38 != 1)
  {
    return v37;
  }

  (*(v25 + 16))(v16, a1, a5);
  v20 = sub_1A99769F0();
  swift_getAssociatedConformanceWitness();
  v21 = v29;
  sub_1A9977160();
  (*(v26 + 8))(v19, AssociatedTypeWitness);
  v22 = (*(*(v28 - 8) + 48))(v21, 1);
  result = (*(v30 + 8))(v21, v31);
  if (v22 == 1)
  {
    return v20;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A98370A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return result;
  }

  if (*(v3 + 48) >= a2)
  {
    result = sub_1A9977050();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t _emptyDequeStorage.getter()
{
  if (qword_1EB3AC4E0 != -1)
  {
    swift_once();
  }
}

void _DequeBuffer.deinit()
{
  v1 = *(*(*v0 + class metadata base offset for _DequeBuffer) - 8);
  sub_1A9837228(v0 + 2, v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)), *(*v0 + class metadata base offset for _DequeBuffer));

  JUMPOUT(0x1AC589FD0);
}

uint64_t *sub_1A9837228(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  if (__OFADD__(v3, v4))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = *result;
  if (*result >= v3 + v4)
  {
    return sub_1A9977070();
  }

  v6 = v5 - v3;
  if (__OFSUB__(v5, v3))
  {
    goto LABEL_7;
  }

  sub_1A9977070();
  result = (v4 - v6);
  if (!__OFSUB__(v4, v6))
  {
    return sub_1A9977070();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _DequeBuffer.__deallocating_deinit()
{
  _DequeBuffer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A9837384@<X0>(void *a2@<X8>)
{
  sub_1A99772B0();

  strcpy(v7, "_DequeStorage<");
  HIBYTE(v7[1]) = -18;
  v3 = sub_1A9977B00();
  MEMORY[0x1AC5895B0](v3);

  MEMORY[0x1AC5895B0](62, 0xE100000000000000);
  v4 = _DequeBufferHeader.description.getter();
  MEMORY[0x1AC5895B0](v4);

  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

void *sub_1A9837494()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2D70, &qword_1A9998A90);
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  qword_1EB3AC4D0 = result;
  return result;
}

uint64_t Deque.customMirror.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A99779F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2D78, &qword_1A9998A98);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v17 - v9;
  v17[0] = a1;
  v17[1] = a1;
  v11 = *MEMORY[0x1E69E7590];
  v12 = sub_1A99779E0();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  type metadata accessor for Deque(0, a2, v14, v15);
  swift_getWitnessTable();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E75D8], v4);
  swift_retain_n();
  return sub_1A9977A10();
}

Sharing::_DequeBufferHeader __swiftcall _DequeBufferHeader.init(capacity:count:startSlot:)(Swift::Int capacity, Swift::Int count, Sharing::_DequeSlot startSlot)
{
  v3->position = capacity;
  v3[1].position = count;
  v3[2].position = startSlot.position;
  result.startSlot = startSlot;
  result.count = count;
  result.capacity = capacity;
  return result;
}

uint64_t _DequeBufferHeader.description.getter()
{
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0x7469636170616328, 0xEB00000000203A79);
  v0 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v0);

  MEMORY[0x1AC5895B0](0x3A746E756F63202CLL, 0xE900000000000020);
  v1 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v1);

  MEMORY[0x1AC5895B0](0x537472617473202CLL, 0xED0000203A746F6CLL);
  v2 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v2);

  MEMORY[0x1AC5895B0](64, 0xE100000000000000);

  MEMORY[0x1AC5895B0](41, 0xE100000000000000);
  return 0;
}

uint64_t getEnumTagSinglePayload for _DequeBufferHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _DequeBufferHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1A9837A1C()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B2D80);
  __swift_project_value_buffer(v0, qword_1EB3B2D80);
  return sub_1A9976490();
}

uint64_t sub_1A9837A9C(uint64_t a1)
{
  v2 = sub_1A98380C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9837AD8(uint64_t a1)
{
  v2 = sub_1A98380C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9837B14()
{
  if (*v0)
  {
    return 0x726568746FLL;
  }

  else
  {
    return 0x55706F7244726961;
  }
}

uint64_t sub_1A9837B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x55706F7244726961 && a2 == 0xE900000000000049;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A9837C30(uint64_t a1)
{
  v2 = sub_1A9838018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9837C6C(uint64_t a1)
{
  v2 = sub_1A9838018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9837CA8(uint64_t a1)
{
  v2 = sub_1A983806C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9837CE4(uint64_t a1)
{
  v2 = sub_1A983806C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFProximityHandoffClient.Identifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2D98, &qword_1A9998B70);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2DA0, &qword_1A9998B78);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v17 = &v16 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2DA8, &qword_1A9998B80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = v1[1];
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9838018();
  sub_1A9977AA0();
  if (v12)
  {
    v24 = 1;
    sub_1A983806C();
    sub_1A9977640();
    v13 = v22;
    sub_1A9977690();
    (*(v21 + 8))(v5, v13);
  }

  else
  {
    v23 = 0;
    sub_1A98380C0();
    v15 = v17;
    sub_1A9977640();
    (*(v18 + 8))(v15, v19);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1A9838018()
{
  result = qword_1EB3B2DB0;
  if (!qword_1EB3B2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2DB0);
  }

  return result;
}

unint64_t sub_1A983806C()
{
  result = qword_1EB3B2DB8;
  if (!qword_1EB3B2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2DB8);
  }

  return result;
}

unint64_t sub_1A98380C0()
{
  result = qword_1EB3B2DC0;
  if (!qword_1EB3B2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2DC0);
  }

  return result;
}

uint64_t SFProximityHandoffClient.Identifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2DC8, &qword_1A9998B88);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2DD0, &qword_1A9998B90);
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2DD8, &unk_1A9998B98);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1A9838018();
  v13 = v35;
  sub_1A9977A70();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v36);
  }

  v30 = v5;
  v14 = v34;
  v35 = v9;
  v15 = sub_1A9977620();
  v16 = (2 * *(v15 + 16)) | 1;
  v37 = v15;
  v38 = v15 + 32;
  v39 = 0;
  v40 = v16;
  v17 = sub_1A97B2970();
  if (v17 == 2 || v39 != v40 >> 1)
  {
    v22 = sub_1A9977300();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
    *v24 = &type metadata for SFProximityHandoffClient.Identifier;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v35 + 8))(v11, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v36);
  }

  if (v17)
  {
    v41 = 1;
    sub_1A983806C();
    sub_1A9977530();
    v18 = v35;
    v19 = v33;
    v20 = sub_1A99775A0();
    v21 = v4;
    v28 = v27;
    (*(v32 + 8))(v21, v14);
    (*(v18 + 8))(v11, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0;
    sub_1A98380C0();
    sub_1A9977530();
    v20 = 0;
    v26 = v35;
    v19 = v33;
    (*(v31 + 8))(v7, v30);
    (*(v26 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v28 = 0;
  }

  *v19 = v20;
  v19[1] = v28;
  return __swift_destroy_boxed_opaque_existential_0Tm(v36);
}

uint64_t SFProximityHandoffClient.clientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = *(v1 + 120);
  a1[1] = v2;
}

uint64_t *SFProximityHandoffClient.init(identifier:)(uint64_t *a1)
{
  v24 = sub_1A9976FB0();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A9976FA0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1A9976680();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *a1;
  v22 = a1[1];
  v23 = v7;
  swift_defaultActor_initialize();
  v21[0] = sub_1A97F1CA0();
  sub_1A9976660();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1A984AC20(&qword_1EB3AC8E0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B26D8, &unk_1A9997EB0);
  sub_1A97AF974(&qword_1EB3AC910, &unk_1EB3B26D8, &unk_1A9997EB0, MEMORY[0x1E69E6328]);
  sub_1A99771F0();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8098], v24);
  v8 = v21[1];
  v9 = sub_1A9976FE0();
  v10 = v22;
  v8[15] = v23;
  v8[16] = v10;
  v8[17] = v9;
  v11 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v12 = v9;
  v13 = sub_1A99767E0();
  v14 = [v11 initWithMachServiceName:v13 options:0];

  type metadata accessor for SFXPCConnection();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = 0;
  v16 = v14;
  [v16 sf:v12 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v16 setRemoteObjectInterface_];

  v8[14] = v15;
  v17 = type metadata accessor for SFProximityHandoffClient();
  v26.receiver = v8;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, sel_init);
  v19 = v18[14];
  swift_beginAccess();
  [*(v19 + 16) activate];
  return v18;
}

uint64_t SFProximityHandoffClient.deinit()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  [*(v1 + 16) invalidate];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SFProximityHandoffClient.__deallocating_deinit()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  [*(v1 + 16) invalidate];

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_1A9838B28(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A9838B48, v1, 0);
}

uint64_t sub_1A9838B48()
{
  if (qword_1EB3B0AF8 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1A99764A0();
  v4 = __swift_project_value_buffer(v3, qword_1EB3B2D80);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2DE0, &qword_1A9998BA8);
  (*(*(v3 - 8) + 16))(&v2[v5[11]], v4, v3);
  *v2 = 0xD00000000000001CLL;
  *(v2 + 1) = 0x80000001A99E4FE0;
  v6 = &v2[v5[12]];
  *v6 = &unk_1A9998BB8;
  *(v6 + 1) = v1;
  v7 = &v2[v5[13]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v9 = v0[1];

  return v9();
}

uint64_t sub_1A9838CB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A9838CD0, 0, 0);
}

uint64_t sub_1A9838CD0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A97E0474;
  v2 = *(v0 + 16);

  return sub_1A9838D80(v2);
}

uint64_t sub_1A9838D80(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A9838DA0, 0, 0);
}

uint64_t sub_1A9838DA0()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFProximityHandoffInvocations.ProximityHandoffInteractions()) init];
  v2 = v1;
  v0[12] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[13] = v4;
  v5 = v0[11];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[14] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[15] = v7;
  v8 = swift_allocObject();
  v0[16] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[17] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984DC60;
  v11[6] = v8;
  v12 = swift_task_alloc();
  v0[18] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2E70, &qword_1A9998D50);
  *v12 = v0;
  v12[1] = sub_1A9838FB4;

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984DC8C, v11, v13);
}

uint64_t sub_1A9838FB4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1A984E084;
  }

  else
  {
    v4 = *(v2 + 120);

    v3 = sub_1A984E0A8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A98390F4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters(0) - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98391B8, 0, 0);
}

uint64_t sub_1A98391B8()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate()) init];
  v0[13] = v1;
  v18 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v19 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v19 = 0xD00000000000001BLL;
  }

  v0[14] = v2;
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[15] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[16] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v19;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  swift_retain_n();

  v13 = v9;

  v14 = v18;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v19;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984DBD8;
  v15[6] = v12;
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_1A9839438;

  return MEMORY[0x1EEE6DE38](v16, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v15, &type metadata for VoidResponse);
}

uint64_t sub_1A9839438()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1A984E060;
  }

  else
  {
    v4 = *(v2 + 128);

    v3 = sub_1A984E1D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A9839578(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters(0) - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983963C, 0, 0);
}

uint64_t sub_1A983963C()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction()) init];
  v0[13] = v1;
  v18 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v19 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v19 = 0xD00000000000001BLL;
  }

  v0[14] = v2;
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[15] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[16] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v19;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  swift_retain_n();

  v13 = v9;

  v14 = v18;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v19;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984DA90;
  v15[6] = v12;
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_1A9839438;

  return MEMORY[0x1EEE6DE38](v16, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v15, &type metadata for VoidResponse);
}

uint64_t sub_1A98398BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A98398E0, 0, 0);
}

uint64_t sub_1A98398E0()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.StartTempPairing()) init];
  v2 = v1;
  v0[14] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[15] = v4;
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[16] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[17] = v9;
  v10 = swift_allocObject();
  v0[18] = v10;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v7;
  v10[5] = v5;
  v10[6] = v8;
  v10[7] = v2;

  v11 = v9;

  swift_retain_n();
  sub_1A97B40FC(v7, v5);
  v12 = v2;
  v13 = swift_task_alloc();
  v0[19] = v13;
  v13[2] = v3;
  v13[3] = v4;
  v13[4] = v11;
  v13[5] = sub_1A984D8F8;
  v13[6] = v10;
  v14 = swift_task_alloc();
  v0[20] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FE0, &qword_1A99995D8);
  *v14 = v0;
  v14[1] = sub_1A9839B14;

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984D954, v13, v15);
}

uint64_t sub_1A9839B14()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1A9839CD0;
  }

  else
  {
    v4 = *(v2 + 136);

    v3 = sub_1A9839C54;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A9839C54()
{
  v1 = *(v0 + 80);

  *v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A9839CD0()
{
  v1 = v0[17];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A9839D8C()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.StopTempPairing()) init];
  v2 = v1;
  v0[9] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[10] = v4;
  v5 = v0[8];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[11] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[12] = v7;
  v8 = swift_allocObject();
  v0[13] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[14] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984D8CC;
  v11[6] = v8;
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1A9839F8C;

  return MEMORY[0x1EEE6DE38](v12, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v11, &type metadata for VoidResponse);
}

uint64_t sub_1A9839F8C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1A983A13C;
  }

  else
  {
    v4 = *(v2 + 96);

    v3 = sub_1A983A0CC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A983A0CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A983A13C()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A983A1F8()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.TempPairingConnect()) init];
  v2 = v1;
  v0[9] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[10] = v4;
  v5 = v0[8];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[11] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[12] = v7;
  v8 = swift_allocObject();
  v0[13] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[14] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984D738;
  v11[6] = v8;
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1A983A3F8;

  return MEMORY[0x1EEE6DE38](v12, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v11, &type metadata for VoidResponse);
}

uint64_t sub_1A983A3F8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1A984E05C;
  }

  else
  {
    v4 = *(v2 + 96);

    v3 = sub_1A984E09C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A983A558()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.TempPairingDisconnect()) init];
  v2 = v1;
  v0[9] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[10] = v4;
  v5 = v0[8];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[11] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[12] = v7;
  v8 = swift_allocObject();
  v0[13] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[14] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984D70C;
  v11[6] = v8;
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1A983A3F8;

  return MEMORY[0x1EEE6DE38](v12, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v11, &type metadata for VoidResponse);
}

uint64_t sub_1A983A758(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(type metadata accessor for SFAirDropSend.Request(0) - 8);
  v3[11] = v4;
  v3[12] = *(v4 + 64);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983A820, 0, 0);
}

uint64_t sub_1A983A820()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.Send()) init];
  v0[14] = v1;
  v20 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v21 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v21 = 0xD00000000000001BLL;
  }

  v0[15] = v2;
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[16] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[17] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDropSend.Request);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[18] = v12;
  *(v12 + 16) = v21;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDropSend.Request);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  swift_retain_n();

  v13 = v9;

  v14 = v20;
  v15 = swift_task_alloc();
  v0[19] = v15;
  v15[2] = v21;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984D590;
  v15[6] = v12;
  v16 = swift_task_alloc();
  v0[20] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FB0, &qword_1A9999580);
  *v16 = v0;
  v16[1] = sub_1A983AABC;
  v18 = v0[8];

  return MEMORY[0x1EEE6DE38](v18, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984D5D0, v15, v17);
}

uint64_t sub_1A983AABC()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1A984E064;
  }

  else
  {
    v4 = *(v2 + 136);

    v3 = sub_1A984E1DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A983ABFC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(type metadata accessor for SFAirDrop.TransferIdentifier(0) - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983ACC0, 0, 0);
}

uint64_t sub_1A983ACC0()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.Cancel()) init];
  v0[13] = v1;
  v18 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v19 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v19 = 0xD00000000000001BLL;
  }

  v0[14] = v2;
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[15] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[16] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDrop.TransferIdentifier);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v19;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDrop.TransferIdentifier);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  swift_retain_n();

  v13 = v9;

  v14 = v18;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v19;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984D538;
  v15[6] = v12;
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_1A9839438;

  return MEMORY[0x1EEE6DE38](v16, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v15, &type metadata for VoidResponse);
}

uint64_t sub_1A983AF44(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A983AF64, 0, 0);
}

uint64_t sub_1A983AF64()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.TransfersMonitor()) init];
  v2 = v1;
  v0[12] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[13] = v4;
  v5 = v0[11];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[14] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[15] = v7;
  v8 = swift_allocObject();
  v0[16] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[17] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984D390;
  v11[6] = v8;
  v12 = swift_task_alloc();
  v0[18] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FA0, &qword_1A9999550);
  *v12 = v0;
  v12[1] = sub_1A9838FB4;

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984D3BC, v11, v13);
}

uint64_t sub_1A983B17C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0) - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983B240, 0, 0);
}

uint64_t sub_1A983B240()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter()) init];
  v0[13] = v1;
  v18 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v19 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v19 = 0xD00000000000001BLL;
  }

  v0[14] = v2;
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[15] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[16] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v19;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  swift_retain_n();

  v13 = v9;

  v14 = v18;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v19;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984D4F8;
  v15[6] = v12;
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_1A9839438;

  return MEMORY[0x1EEE6DE38](v16, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v15, &type metadata for VoidResponse);
}

uint64_t sub_1A983B4E4()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.ResignTransferPresenter()) init];
  v2 = v1;
  v0[9] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[10] = v4;
  v5 = v0[8];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[11] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[12] = v7;
  v8 = swift_allocObject();
  v0[13] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[14] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984D364;
  v11[6] = v8;
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1A983A3F8;

  return MEMORY[0x1EEE6DE38](v12, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v11, &type metadata for VoidResponse);
}

uint64_t sub_1A983B6E4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0) - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983B7A8, 0, 0);
}

uint64_t sub_1A983B7A8()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.StartNearbySharingDiscovery()) init];
  v0[13] = v1;
  v18 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v19 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v19 = 0xD00000000000001BLL;
  }

  v0[14] = v2;
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[15] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[16] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v19;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  swift_retain_n();

  v13 = v9;

  v14 = v18;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v19;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984D324;
  v15[6] = v12;
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_1A983BA2C;

  return MEMORY[0x1EEE6DE38](v16, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v15, &type metadata for VoidResponse);
}

uint64_t sub_1A983BA2C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1A983BBE4;
  }

  else
  {
    v4 = *(v2 + 128);

    v3 = sub_1A983BB6C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A983BB6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A983BBE4()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A983BC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A983BCB0, 0, 0);
}

uint64_t sub_1A983BCB0()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.StopNearbySharingDiscovery()) init];
  v2 = v1;
  v0[11] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[12] = v4;
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[13] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[14] = v9;
  v10 = swift_allocObject();
  v0[15] = v10;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v7;
  v10[5] = v5;
  v10[6] = v8;
  v10[7] = v2;
  swift_retain_n();

  v11 = v9;

  v12 = v2;
  v13 = swift_task_alloc();
  v0[16] = v13;
  v13[2] = v3;
  v13[3] = v4;
  v13[4] = v11;
  v13[5] = sub_1A984D2F4;
  v13[6] = v10;
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_1A983BEC8;

  return MEMORY[0x1EEE6DE38](v14, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v13, &type metadata for VoidResponse);
}

uint64_t sub_1A983BEC8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1A983C078;
  }

  else
  {
    v4 = *(v2 + 112);

    v3 = sub_1A983C008;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A983C008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A983C078()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A983C114(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(type metadata accessor for SFAirDrop.NearbySharingAssertionRequest(0) - 8);
  v3[11] = v4;
  v3[12] = *(v4 + 64);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983C1DC, 0, 0);
}

uint64_t sub_1A983C1DC()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.TakeNearbySharingAssertion()) init];
  v0[14] = v1;
  v20 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v21 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v21 = 0xD00000000000001BLL;
  }

  v0[15] = v2;
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[16] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[17] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDrop.NearbySharingAssertionRequest);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[18] = v12;
  *(v12 + 16) = v21;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDrop.NearbySharingAssertionRequest);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  swift_retain_n();

  v13 = v9;

  v14 = v20;
  v15 = swift_task_alloc();
  v0[19] = v15;
  v15[2] = v21;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984D0C0;
  v15[6] = v12;
  v16 = swift_task_alloc();
  v0[20] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  *v16 = v0;
  v16[1] = sub_1A983C478;
  v18 = v0[8];

  return MEMORY[0x1EEE6DE38](v18, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984D100, v15, v17);
}

uint64_t sub_1A983C478()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1A983C630;
  }

  else
  {
    v4 = *(v2 + 136);

    v3 = sub_1A983C5B8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A983C5B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A983C630()
{
  v1 = v0[17];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A983C6D8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = sub_1A99762C0();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v3[12] = *(v5 + 64);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983C7A0, 0, 0);
}

uint64_t sub_1A983C7A0()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.ReleaseNearbySharingAssertion()) init];
  v0[14] = v1;
  v22 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v21 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v21 = 0xD00000000000001BLL;
  }

  v0[15] = v2;
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v19 = v5;
  v20 = v3;
  v7 = v0[8];
  v8 = v0[9];
  swift_beginAccess();
  v9 = *(v8 + 24);
  v0[16] = v9;
  swift_beginAccess();
  v10 = *(v8 + 16);
  v0[17] = v10;
  (*(v6 + 16))(v3, v7, v5);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v0[18] = v13;
  *(v13 + 16) = v21;
  *(v13 + 24) = v2;
  (*(v6 + 32))(v13 + v11, v20, v19);
  *(v13 + v12) = v9;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  swift_retain_n();

  v14 = v10;

  v15 = v22;
  v16 = swift_task_alloc();
  v0[19] = v16;
  v16[2] = v21;
  v16[3] = v2;
  v16[4] = v14;
  v16[5] = sub_1A984D084;
  v16[6] = v13;
  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_1A983AABC;

  return MEMORY[0x1EEE6DE38](v17, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v16, &type metadata for VoidResponse);
}

uint64_t sub_1A983CA24(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A983CA44, 0, 0);
}

uint64_t sub_1A983CA44()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.NearbySharingInteractions()) init];
  v2 = v1;
  v0[12] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[13] = v4;
  v5 = v0[11];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[14] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[15] = v7;
  v8 = swift_allocObject();
  v0[16] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[17] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984CD64;
  v11[6] = v8;
  v12 = swift_task_alloc();
  v0[18] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F78, &qword_1A99994F0);
  *v12 = v0;
  v12[1] = sub_1A983CC5C;

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984CD90, v11, v13);
}

uint64_t sub_1A983CC5C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1A983CE18;
  }

  else
  {
    v4 = *(v2 + 120);

    v3 = sub_1A983CD9C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A983CD9C()
{
  v1 = *(v0 + 80);

  *v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A983CE18()
{
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A983CEB4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction(0) - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983CF78, 0, 0);
}

uint64_t sub_1A983CF78()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.SimulateNearbySharingInteractions()) init];
  v0[13] = v1;
  v18 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v19 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v19 = 0xD00000000000001BLL;
  }

  v0[14] = v2;
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[15] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[16] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDrop.NearbySharingInteraction);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v19;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDrop.NearbySharingInteraction);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  swift_retain_n();

  v13 = v9;

  v14 = v18;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v19;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984CD24;
  v15[6] = v12;
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_1A9839438;

  return MEMORY[0x1EEE6DE38](v16, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v15, &type metadata for VoidResponse);
}

uint64_t sub_1A983D1FC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0) - 8);
  v3[11] = v4;
  v3[12] = *(v4 + 64);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983D2C4, 0, 0);
}

uint64_t sub_1A983D2C4()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.BoopAtADistanceBegin()) init];
  v0[14] = v1;
  v20 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v21 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v21 = 0xD00000000000001BLL;
  }

  v0[15] = v2;
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[16] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[17] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[18] = v12;
  *(v12 + 16) = v21;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  swift_retain_n();

  v13 = v9;

  v14 = v20;
  v15 = swift_task_alloc();
  v0[19] = v15;
  v15[2] = v21;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984CBA8;
  v15[6] = v12;
  v16 = swift_task_alloc();
  v0[20] = v16;
  v17 = type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0);
  *v16 = v0;
  v16[1] = sub_1A983AABC;
  v18 = v0[8];

  return MEMORY[0x1EEE6DE38](v18, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984CBE8, v15, v17);
}

uint64_t sub_1A983D554(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters(0) - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983D618, 0, 0);
}

uint64_t sub_1A983D618()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate()) init];
  v0[13] = v1;
  v18 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v19 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v19 = 0xD00000000000001BLL;
  }

  v0[14] = v2;
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[15] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[16] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v19;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  swift_retain_n();

  v13 = v9;

  v14 = v18;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v19;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984CA24;
  v15[6] = v12;
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_1A9839438;

  return MEMORY[0x1EEE6DE38](v16, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v15, &type metadata for VoidResponse);
}

uint64_t sub_1A983D89C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0) - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983D960, 0, 0);
}

uint64_t sub_1A983D960()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.BoopAtADistanceEnd()) init];
  v0[13] = v1;
  v18 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v19 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v19 = 0xD00000000000001BLL;
  }

  v0[14] = v2;
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[15] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[16] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v19;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  swift_retain_n();

  v13 = v9;

  v14 = v18;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v19;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984C920;
  v15[6] = v12;
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_1A9839438;

  return MEMORY[0x1EEE6DE38](v16, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v15, &type metadata for VoidResponse);
}

uint64_t sub_1A983DBE4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = sub_1A99762C0();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v3[12] = *(v5 + 64);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983DCAC, 0, 0);
}

uint64_t sub_1A983DCAC()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.EndNearbySharingInteraction()) init];
  v0[14] = v1;
  v22 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v21 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v21 = 0xD00000000000001BLL;
  }

  v0[15] = v2;
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v19 = v5;
  v20 = v3;
  v7 = v0[8];
  v8 = v0[9];
  swift_beginAccess();
  v9 = *(v8 + 24);
  v0[16] = v9;
  swift_beginAccess();
  v10 = *(v8 + 16);
  v0[17] = v10;
  (*(v6 + 16))(v3, v7, v5);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v0[18] = v13;
  *(v13 + 16) = v21;
  *(v13 + 24) = v2;
  (*(v6 + 32))(v13 + v11, v20, v19);
  *(v13 + v12) = v9;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  swift_retain_n();

  v14 = v10;

  v15 = v22;
  v16 = swift_task_alloc();
  v0[19] = v16;
  v16[2] = v21;
  v16[3] = v2;
  v16[4] = v14;
  v16[5] = sub_1A984C700;
  v16[6] = v13;
  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_1A983AABC;

  return MEMORY[0x1EEE6DE38](v17, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v16, &type metadata for VoidResponse);
}

uint64_t sub_1A983DF30(uint64_t a1, char a2)
{
  *(v3 + 145) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1A983DF54, 0, 0);
}

uint64_t sub_1A983DF54()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.UserSafetyIntervention()) init];
  v2 = v1;
  *(v0 + 80) = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  *(v0 + 88) = v4;
  v5 = *(v0 + 72);
  v6 = *(v0 + 145);
  swift_beginAccess();
  v7 = *(v5 + 24);
  *(v0 + 96) = v7;
  swift_beginAccess();
  v8 = *(v5 + 16);
  *(v0 + 104) = v8;
  v9 = swift_allocObject();
  *(v0 + 112) = v9;
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 48) = v2;
  swift_retain_n();

  v10 = v8;

  v11 = v2;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  v12[2] = v3;
  v12[3] = v4;
  v12[4] = v10;
  v12[5] = sub_1A984C568;
  v12[6] = v9;
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *v13 = v0;
  v13[1] = sub_1A983E164;

  return MEMORY[0x1EEE6DE38](v0 + 144, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984C5C4, v12, &type metadata for SFInterventionResponse);
}

uint64_t sub_1A983E164()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1A984E088;
  }

  else
  {
    v4 = *(v2 + 104);

    v3 = sub_1A983E2A4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A983E2A4()
{
  v1 = *(v0 + 64);

  *v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A983E320(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470) - 8);
  v2[12] = v3;
  v2[13] = *(v3 + 64);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983E3F0, 0, 0);
}

uint64_t sub_1A983E3F0()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.ItemDestinationAlert()) init];
  v0[15] = v1;
  v19 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v20 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v20 = 0xD00000000000001BLL;
  }

  v0[16] = v2;
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[17] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[18] = v9;
  sub_1A97C13A4(v7, v3, &qword_1EB3B17A8, &unk_1A9999470);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[19] = v12;
  *(v12 + 16) = v20;
  *(v12 + 24) = v2;
  sub_1A97D8380(v3, v12 + v10, &qword_1EB3B17A8, &unk_1A9999470);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  swift_retain_n();

  v13 = v9;

  v14 = v19;
  v15 = swift_task_alloc();
  v0[20] = v15;
  v15[2] = v20;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984C320;
  v15[6] = v12;
  v16 = swift_task_alloc();
  v0[21] = v16;
  *v16 = v0;
  v16[1] = sub_1A983E674;
  v17 = MEMORY[0x1E69E6158];

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984C3E4, v15, v17);
}

uint64_t sub_1A983E674()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1A983E83C;
  }

  else
  {

    v4 = *(v2 + 72);
    *(v2 + 184) = *(v2 + 64);
    *(v2 + 192) = v4;
    v3 = sub_1A983E7C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A983E7C0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);

  return v1(v2, v3);
}

uint64_t sub_1A983E83C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A983E8E8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_1A99762C0();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v3[15] = *(v5 + 64);
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983E9B4, 0, 0);
}

uint64_t sub_1A983E9B4()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.FetchEndpointMetadata()) init];
  v0[17] = v1;
  v22 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v21 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v21 = 0xD00000000000001BLL;
  }

  v0[18] = v2;
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  v19 = v5;
  v20 = v3;
  v7 = v0[11];
  v8 = v0[12];
  swift_beginAccess();
  v9 = *(v8 + 24);
  v0[19] = v9;
  swift_beginAccess();
  v10 = *(v8 + 16);
  v0[20] = v10;
  (*(v6 + 16))(v3, v7, v5);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v0[21] = v13;
  *(v13 + 16) = v21;
  *(v13 + 24) = v2;
  (*(v6 + 32))(v13 + v11, v20, v19);
  *(v13 + v12) = v9;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  swift_retain_n();

  v14 = v10;

  v15 = v22;
  v16 = swift_task_alloc();
  v0[22] = v16;
  v16[2] = v21;
  v16[3] = v2;
  v16[4] = v14;
  v16[5] = sub_1A984C1A4;
  v16[6] = v13;
  v17 = swift_task_alloc();
  v0[23] = v17;
  *v17 = v0;
  v17[1] = sub_1A983EC40;

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984C1E4, v16, &type metadata for SFAirDrop.EndpointMetadata);
}

uint64_t sub_1A983EC40()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1A983EE0C;
  }

  else
  {
    v4 = *(v2 + 160);

    v3 = sub_1A983ED80;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A983ED80()
{
  v1 = *(v0 + 80);

  *v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A983EE0C()
{
  v1 = v0[20];
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A983EEB4(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A983EED4, 0, 0);
}

uint64_t sub_1A983EED4()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.Discoverability()) init];
  v2 = v1;
  v0[10] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[11] = v4;
  v5 = v0[9];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[12] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[13] = v7;
  v8 = swift_allocObject();
  v0[14] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[15] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984C010;
  v11[6] = v8;
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_1A983F0DC;

  return MEMORY[0x1EEE6DE38](v0 + 18, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984C068, v11, &type metadata for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode);
}

uint64_t sub_1A983F0DC()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1A983F21C;
  }

  else
  {
    v4 = *(v2 + 104);

    v3 = sub_1A983E2A4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A983F21C()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A983F2D8()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.AvailableDiscoverability()) init];
  v2 = v1;
  v0[10] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[11] = v4;
  v5 = v0[9];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[12] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[13] = v7;
  v8 = swift_allocObject();
  v0[14] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[15] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984BE28;
  v11[6] = v8;
  v12 = swift_task_alloc();
  v0[16] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F18, &qword_1A999FD00);
  *v12 = v0;
  v12[1] = sub_1A983F4F0;

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984BE54, v11, v13);
}

uint64_t sub_1A983F4F0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1A983F6B0;
  }

  else
  {

    *(v2 + 144) = *(v2 + 64);
    v3 = sub_1A983F63C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A983F63C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_1A983F6B0()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A983F750(uint64_t a1, char a2)
{
  *(v3 + 64) = v2;
  *(v3 + 136) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A983F774, 0, 0);
}

uint64_t sub_1A983F774()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.ChangeDiscoverability()) init];
  v2 = v1;
  *(v0 + 72) = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  *(v0 + 80) = v4;
  v5 = *(v0 + 64);
  v6 = *(v0 + 136);
  swift_beginAccess();
  v7 = *(v5 + 24);
  *(v0 + 88) = v7;
  swift_beginAccess();
  v8 = *(v5 + 16);
  *(v0 + 96) = v8;
  v9 = swift_allocObject();
  *(v0 + 104) = v9;
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 48) = v2;
  swift_retain_n();

  v10 = v8;

  v11 = v2;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  v12[2] = v3;
  v12[3] = v4;
  v12[4] = v10;
  v12[5] = sub_1A984BCC8;
  v12[6] = v9;
  v13 = swift_task_alloc();
  *(v0 + 120) = v13;
  *v13 = v0;
  v13[1] = sub_1A983A3F8;

  return MEMORY[0x1EEE6DE38](v13, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984BCF4, v12, &type metadata for VoidResponse);
}

uint64_t sub_1A983F97C(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A983F99C, 0, 0);
}

uint64_t sub_1A983F99C()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.TempPairingMonitor()) init];
  v2 = v1;
  v0[12] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[13] = v4;
  v5 = v0[11];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[14] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[15] = v7;
  v8 = swift_allocObject();
  v0[16] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[17] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984D764;
  v11[6] = v8;
  v12 = swift_task_alloc();
  v0[18] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FD0, &unk_1A999FDC0);
  *v12 = v0;
  v12[1] = sub_1A9838FB4;

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984D790, v11, v13);
}

uint64_t sub_1A983FBB4(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters(0);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 64) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1A983FC54, v2, 0);
}

uint64_t sub_1A983FC54()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = sub_1A99762C0();
  (*(*(v5 - 8) + 16))(v2, v4, v5);
  *(v2 + *(v3 + 20)) = v1;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1A983FD5C;
  v7 = *(v0 + 40);

  return sub_1A98390F4(sub_1A98390F4, v7);
}

uint64_t sub_1A983FD5C()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1A983FF0C;
  }

  else
  {
    v4 = sub_1A983FE88;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A983FE88()
{
  sub_1A984AB6C(*(v0 + 40), type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A983FF0C()
{
  sub_1A984AB6C(*(v0 + 40), type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A983FF90(_BYTE *a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters(0);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 64) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1A9840030, v2, 0);
}

uint64_t sub_1A9840030()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1A984AD10(*(v0 + 16), v2, type metadata accessor for SFProximityHandoff.Content);
  *(v2 + *(v3 + 20)) = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1A9840114;

  return (sub_1A9839578)();
}

uint64_t sub_1A9840114()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1A98402C4;
  }

  else
  {
    v4 = sub_1A9840240;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A9840240()
{
  sub_1A984AB6C(*(v0 + 40), type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98402C4()
{
  sub_1A984AB6C(*(v0 + 40), type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);

  v1 = *(v0 + 8);

  return v1();
}

void SFProximityHandoffClient.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void SFProximityHandoffClient.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters.interactionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A99762C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters.viewState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_1A98404B0()
{
  if (*v0)
  {
    return 0x7461745377656976;
  }

  else
  {
    return 0x7463617265746E69;
  }
}

uint64_t sub_1A98404FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7463617265746E69 && a2 == 0xED000044496E6F69;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461745377656976 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A98405E8(uint64_t a1)
{
  v2 = sub_1A984ABCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9840624(uint64_t a1)
{
  v2 = sub_1A984ABCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2DE8, &qword_1A9998BE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A984ABCC();
  sub_1A9977AA0();
  v10[15] = 0;
  sub_1A99762C0();
  sub_1A984AC20(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1A99776E0();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters(0) + 20));
    v10[13] = 1;
    sub_1A984AC68();
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_1A99762C0();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2E00, &qword_1A9998BE8);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A984ABCC();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  v30 = 0;
  sub_1A984AC20(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v15 = v27;
  v16 = v25;
  sub_1A99775F0();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v28 = 1;
  sub_1A984ACBC();
  sub_1A99775F0();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v29;
  sub_1A984AD10(v18, v23, type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1A984AB6C(v18, type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);
}

id SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A98548EC(a1);

  return v4;
}

id SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.init(coder:)(void *a1)
{
  v2 = sub_1A98548EC(a1);

  return v2;
}

uint64_t SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters.action.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_1A9840D14()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_1A9840D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A9840E24(uint64_t a1)
{
  v2 = sub_1A984AD78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9840E60(uint64_t a1)
{
  v2 = sub_1A984AD78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2E10, &qword_1A9998BF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A984AD78();
  sub_1A9977AA0();
  v10[15] = 0;
  type metadata accessor for SFProximityHandoff.Content(0);
  sub_1A984AC20(&qword_1EB3B2E20, type metadata accessor for SFProximityHandoff.Content, &protocol conformance descriptor for SFProximityHandoff.Content);
  sub_1A99776E0();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters(0) + 20));
    v10[13] = 1;
    sub_1A984ADCC();
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for SFProximityHandoff.Content(0);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2E30, &qword_1A9998BF8);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A984AD78();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v17;
  v13 = v11;
  v22 = 0;
  sub_1A984AC20(&qword_1EB3B2E38, type metadata accessor for SFProximityHandoff.Content, &protocol conformance descriptor for SFProximityHandoff.Content);
  v14 = v18;
  sub_1A99775F0();
  sub_1A984C8B8(v19, v13, type metadata accessor for SFProximityHandoff.Content);
  v20 = 1;
  sub_1A984AE20();
  sub_1A99775F0();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_1A984AD10(v13, v16, type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1A984AB6C(v13, type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);
}

id _s7Sharing29SFProximityHandoffInvocationsO06NearbyA21InteractionViewUpdateC4nameAESS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___SFXPCInvocation_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v8, sel_init);
}

id _s7Sharing29SFProximityHandoffInvocationsO06NearbyA21InteractionViewUpdateC4nameAESS_tcfc_0(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___SFXPCInvocation_name];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v5, sel_init);
}

id _s7Sharing29SFProximityHandoffInvocationsO06NearbyA21InteractionViewUpdateCAEycfc_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1A98414C4(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _s7Sharing29SFProximityHandoffInvocationsO06NearbyA21InteractionViewUpdateCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A984153C(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v31 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FF0, &qword_1A99995F0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;

  v15 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v19 = v17;
    v20 = v18;
    v29 = v15;
    v30 = 0;
    v21 = v16;
    v22 = sub_1A9976060();
    (*(v12 + 16))(v14, a2, v11);
    v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v24 = swift_allocObject();
    (*(v12 + 32))(v24 + v23, v14, v11);
    aBlock[4] = sub_1A984DF1C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_770;
    v25 = _Block_copy(aBlock);
    v26 = v19;
    v27 = v20;

    [v31 invoke:v33 parametersData:v22 parametersAsyncSequenceContainer:v26 parametersBlocksContainer:v27 sync:0 completion:v25];
    _Block_release(v25);

    sub_1A97B43C4(v29, v21);
  }
}

void sub_1A9841794(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v36 = a7;
  v34 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v17, type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);

  v18 = v38;
  v19 = sub_1A988E588(a3, a4, v17, a6);
  if (!v18)
  {
    v23 = v21;
    v24 = v22;
    v32 = v20;
    v33 = v19;
    v38 = 0;
    v25 = sub_1A9976060();
    (*(v12 + 16))(v14, v34, v11);
    v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v26, v14, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_730;
    v28 = _Block_copy(aBlock);
    v29 = v23;
    v30 = v24;

    [v35 invoke:v36 parametersData:v25 parametersAsyncSequenceContainer:v29 parametersBlocksContainer:v30 sync:0 completion:v28];
    _Block_release(v28);

    sub_1A97B43C4(v33, v32);
  }
}

void sub_1A9841A4C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v36 = a7;
  v34 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v17, type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);

  v18 = v38;
  v19 = sub_1A988ED64(a3, a4, v17, a6);
  if (!v18)
  {
    v23 = v21;
    v24 = v22;
    v32 = v20;
    v33 = v19;
    v38 = 0;
    v25 = sub_1A9976060();
    (*(v12 + 16))(v14, v34, v11);
    v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v26, v14, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_718;
    v28 = _Block_copy(aBlock);
    v29 = v23;
    v30 = v24;

    [v35 invoke:v36 parametersData:v25 parametersAsyncSequenceContainer:v29 parametersBlocksContainer:v30 sync:0 completion:v28];
    _Block_release(v28);

    sub_1A97B43C4(v33, v32);
  }
}

void sub_1A9841D04(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a8;
  v34 = a2;
  v36 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FE8, &qword_1A99995E0);
  v14 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v31 - v15;

  sub_1A97B40FC(a5, a6);

  v17 = sub_1A988F540(a3, a4, a5, a6, a7);
  if (!v8)
  {
    v21 = v19;
    v22 = v20;
    v32 = v17;
    v33 = 0;
    v23 = v18;
    v24 = sub_1A9976060();
    v25 = v35;
    (*(v14 + 16))(v16, v34, v35);
    v26 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v27 = swift_allocObject();
    (*(v14 + 32))(v27 + v26, v16, v25);
    aBlock[4] = sub_1A984DA68;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_706;
    v28 = _Block_copy(aBlock);
    v29 = v21;
    v30 = v22;

    [v36 invoke:v38 parametersData:v24 parametersAsyncSequenceContainer:v29 parametersBlocksContainer:v30 sync:0 completion:v28];
    _Block_release(v28);

    sub_1A97B43C4(v32, v23);
  }
}

void sub_1A9841F78(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v31 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;

  v15 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v19 = v17;
    v20 = v18;
    v29 = v15;
    v30 = 0;
    v21 = v16;
    v22 = sub_1A9976060();
    (*(v12 + 16))(v14, a2, v11);
    v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v24 = swift_allocObject();
    (*(v12 + 32))(v24 + v23, v14, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_668;
    v25 = _Block_copy(aBlock);
    v26 = v19;
    v27 = v20;

    [v31 invoke:v33 parametersData:v22 parametersAsyncSequenceContainer:v26 parametersBlocksContainer:v27 sync:0 completion:v25];
    _Block_release(v25);

    sub_1A97B43C4(v29, v21);
  }
}

void sub_1A98421D0(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v31 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;

  v15 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v19 = v17;
    v20 = v18;
    v29 = v15;
    v30 = 0;
    v21 = v16;
    v22 = sub_1A9976060();
    (*(v12 + 16))(v14, a2, v11);
    v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v24 = swift_allocObject();
    (*(v12 + 32))(v24 + v23, v14, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_618;
    v25 = _Block_copy(aBlock);
    v26 = v19;
    v27 = v20;

    [v31 invoke:v33 parametersData:v22 parametersAsyncSequenceContainer:v26 parametersBlocksContainer:v27 sync:0 completion:v25];
    _Block_release(v25);

    sub_1A97B43C4(v29, v21);
  }
}

void sub_1A9842428(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v31 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;

  v15 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v19 = v17;
    v20 = v18;
    v29 = v15;
    v30 = 0;
    v21 = v16;
    v22 = sub_1A9976060();
    (*(v12 + 16))(v14, a2, v11);
    v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v24 = swift_allocObject();
    (*(v12 + 32))(v24 + v23, v14, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_606;
    v25 = _Block_copy(aBlock);
    v26 = v19;
    v27 = v20;

    [v31 invoke:v33 parametersData:v22 parametersAsyncSequenceContainer:v26 parametersBlocksContainer:v27 sync:0 completion:v25];
    _Block_release(v25);

    sub_1A97B43C4(v29, v21);
  }
}

void sub_1A9842680(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v36 = a7;
  v34 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FB8, &qword_1A9999588);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for SFAirDropSend.Request(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v17, type metadata accessor for SFAirDropSend.Request);

  v18 = v38;
  v19 = sub_1A988FCE4(a3, a4, v17, a6);
  if (!v18)
  {
    v23 = v21;
    v24 = v22;
    v32 = v20;
    v33 = v19;
    v38 = 0;
    v25 = sub_1A9976060();
    (*(v12 + 16))(v14, v34, v11);
    v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v26, v14, v11);
    aBlock[4] = sub_1A984D6E4;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_594;
    v28 = _Block_copy(aBlock);
    v29 = v23;
    v30 = v24;

    [v35 invoke:v36 parametersData:v25 parametersAsyncSequenceContainer:v29 parametersBlocksContainer:v30 sync:0 completion:v28];
    _Block_release(v28);

    sub_1A97B43C4(v33, v32);
  }
}

void sub_1A9842938(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v36 = a7;
  v34 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for SFAirDrop.TransferIdentifier(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v17, type metadata accessor for SFAirDrop.TransferIdentifier);

  v18 = v38;
  v19 = sub_1A98904C0(a3, a4, v17, a6);
  if (!v18)
  {
    v23 = v21;
    v24 = v22;
    v32 = v20;
    v33 = v19;
    v38 = 0;
    v25 = sub_1A9976060();
    (*(v12 + 16))(v14, v34, v11);
    v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v26, v14, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_556;
    v28 = _Block_copy(aBlock);
    v29 = v23;
    v30 = v24;

    [v35 invoke:v36 parametersData:v25 parametersAsyncSequenceContainer:v29 parametersBlocksContainer:v30 sync:0 completion:v28];
    _Block_release(v28);

    sub_1A97B43C4(v33, v32);
  }
}

void sub_1A9842BF0(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v31 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FA8, &qword_1A9999558);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;

  v15 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v19 = v17;
    v20 = v18;
    v29 = v15;
    v30 = 0;
    v21 = v16;
    v22 = sub_1A9976060();
    (*(v12 + 16))(v14, a2, v11);
    v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v24 = swift_allocObject();
    (*(v12 + 32))(v24 + v23, v14, v11);
    aBlock[4] = sub_1A984D4D0;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_532;
    v25 = _Block_copy(aBlock);
    v26 = v19;
    v27 = v20;

    [v31 invoke:v33 parametersData:v22 parametersAsyncSequenceContainer:v26 parametersBlocksContainer:v27 sync:0 completion:v25];
    _Block_release(v25);

    sub_1A97B43C4(v29, v21);
  }
}

void sub_1A9842E48(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v36 = a7;
  v34 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v17, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);

  v18 = v38;
  v19 = sub_1A9890C9C(a3, a4, v17, a6);
  if (!v18)
  {
    v23 = v21;
    v24 = v22;
    v32 = v20;
    v33 = v19;
    v38 = 0;
    v25 = sub_1A9976060();
    (*(v12 + 16))(v14, v34, v11);
    v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v26, v14, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_544;
    v28 = _Block_copy(aBlock);
    v29 = v23;
    v30 = v24;

    [v35 invoke:v36 parametersData:v25 parametersAsyncSequenceContainer:v29 parametersBlocksContainer:v30 sync:0 completion:v28];
    _Block_release(v28);

    sub_1A97B43C4(v33, v32);
  }
}

void sub_1A9843100(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v31 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;

  v15 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v19 = v17;
    v20 = v18;
    v29 = v15;
    v30 = 0;
    v21 = v16;
    v22 = sub_1A9976060();
    (*(v12 + 16))(v14, a2, v11);
    v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v24 = swift_allocObject();
    (*(v12 + 32))(v24 + v23, v14, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_494;
    v25 = _Block_copy(aBlock);
    v26 = v19;
    v27 = v20;

    [v31 invoke:v33 parametersData:v22 parametersAsyncSequenceContainer:v26 parametersBlocksContainer:v27 sync:0 completion:v25];
    _Block_release(v25);

    sub_1A97B43C4(v29, v21);
  }
}

void sub_1A9843358(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v36 = a7;
  v34 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v17, type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request);

  v18 = v38;
  v19 = sub_1A9891478(a3, a4, v17, a6);
  if (!v18)
  {
    v23 = v21;
    v24 = v22;
    v32 = v20;
    v33 = v19;
    v38 = 0;
    v25 = sub_1A9976060();
    (*(v12 + 16))(v14, v34, v11);
    v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v26, v14, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_482;
    v28 = _Block_copy(aBlock);
    v29 = v23;
    v30 = v24;

    [v35 invoke:v36 parametersData:v25 parametersAsyncSequenceContainer:v29 parametersBlocksContainer:v30 sync:0 completion:v28];
    _Block_release(v28);

    sub_1A97B43C4(v33, v32);
  }
}

void sub_1A9843610(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a8;
  v34 = a2;
  v36 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v14 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v31 - v15;

  v17 = sub_1A9891C54(a3, a4, a5, a6, a7);
  if (!v8)
  {
    v21 = v19;
    v22 = v20;
    v32 = v17;
    v33 = 0;
    v23 = v18;
    v24 = sub_1A9976060();
    v25 = v35;
    (*(v14 + 16))(v16, v34, v35);
    v26 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v27 = swift_allocObject();
    (*(v14 + 32))(v27 + v26, v16, v25);
    aBlock[4] = sub_1A984D320;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_470;
    v28 = _Block_copy(aBlock);
    v29 = v21;
    v30 = v22;

    [v36 invoke:v38 parametersData:v24 parametersAsyncSequenceContainer:v29 parametersBlocksContainer:v30 sync:0 completion:v28];
    _Block_release(v28);

    sub_1A97B43C4(v32, v23);
  }
}

void sub_1A9843880(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v36 = a7;
  v34 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F88, &qword_1A9999518);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for SFAirDrop.NearbySharingAssertionRequest(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v17, type metadata accessor for SFAirDrop.NearbySharingAssertionRequest);

  v18 = v38;
  v19 = sub_1A9892408(a3, a4, v17, a6);
  if (!v18)
  {
    v23 = v21;
    v24 = v22;
    v32 = v20;
    v33 = v19;
    v38 = 0;
    v25 = sub_1A9976060();
    (*(v12 + 16))(v14, v34, v11);
    v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v26, v14, v11);
    aBlock[4] = sub_1A984D214;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_458;
    v28 = _Block_copy(aBlock);
    v29 = v23;
    v30 = v24;

    [v35 invoke:v36 parametersData:v25 parametersAsyncSequenceContainer:v29 parametersBlocksContainer:v30 sync:0 completion:v28];
    _Block_release(v28);

    sub_1A97B43C4(v33, v32);
  }
}

void sub_1A9843B38(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v31 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F80, &qword_1A99994F8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;

  v15 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v19 = v17;
    v20 = v18;
    v29 = v15;
    v30 = 0;
    v21 = v16;
    v22 = sub_1A9976060();
    (*(v12 + 16))(v14, a2, v11);
    v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v24 = swift_allocObject();
    (*(v12 + 32))(v24 + v23, v14, v11);
    aBlock[4] = sub_1A984CEA4;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_408;
    v25 = _Block_copy(aBlock);
    v26 = v19;
    v27 = v20;

    [v31 invoke:v33 parametersData:v22 parametersAsyncSequenceContainer:v26 parametersBlocksContainer:v27 sync:0 completion:v25];
    _Block_release(v25);

    sub_1A97B43C4(v29, v21);
  }
}

void sub_1A9843D90(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v36 = a7;
  v34 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v17, type metadata accessor for SFAirDrop.NearbySharingInteraction);

  v18 = v38;
  v19 = sub_1A9893418(a3, a4, v17, a6);
  if (!v18)
  {
    v23 = v21;
    v24 = v22;
    v32 = v20;
    v33 = v19;
    v38 = 0;
    v25 = sub_1A9976060();
    (*(v12 + 16))(v14, v34, v11);
    v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v26, v14, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_370;
    v28 = _Block_copy(aBlock);
    v29 = v23;
    v30 = v24;

    [v35 invoke:v36 parametersData:v25 parametersAsyncSequenceContainer:v29 parametersBlocksContainer:v30 sync:0 completion:v28];
    _Block_release(v28);

    sub_1A97B43C4(v33, v32);
  }
}

void sub_1A9844048(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v36 = a7;
  v34 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F60, &qword_1A99994C8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v17, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);

  v18 = v38;
  v19 = sub_1A9893BF4(a3, a4, v17, a6);
  if (!v18)
  {
    v23 = v21;
    v24 = v22;
    v32 = v20;
    v33 = v19;
    v38 = 0;
    v25 = sub_1A9976060();
    (*(v12 + 16))(v14, v34, v11);
    v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v26, v14, v11);
    aBlock[4] = sub_1A984CCFC;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_358;
    v28 = _Block_copy(aBlock);
    v29 = v23;
    v30 = v24;

    [v35 invoke:v36 parametersData:v25 parametersAsyncSequenceContainer:v29 parametersBlocksContainer:v30 sync:0 completion:v28];
    _Block_release(v28);

    sub_1A97B43C4(v33, v32);
  }
}

void sub_1A9844300(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v36 = a7;
  v34 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v17, type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);

  v18 = v38;
  v19 = sub_1A98943D0(a3, a4, v17, a6);
  if (!v18)
  {
    v23 = v21;
    v24 = v22;
    v32 = v20;
    v33 = v19;
    v38 = 0;
    v25 = sub_1A9976060();
    (*(v12 + 16))(v14, v34, v11);
    v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v26, v14, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_320;
    v28 = _Block_copy(aBlock);
    v29 = v23;
    v30 = v24;

    [v35 invoke:v36 parametersData:v25 parametersAsyncSequenceContainer:v29 parametersBlocksContainer:v30 sync:0 completion:v28];
    _Block_release(v28);

    sub_1A97B43C4(v33, v32);
  }
}

void sub_1A98445B8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v36 = a7;
  v34 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v17, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);

  v18 = v38;
  v19 = sub_1A9893BF4(a3, a4, v17, a6);
  if (!v18)
  {
    v23 = v21;
    v24 = v22;
    v32 = v20;
    v33 = v19;
    v38 = 0;
    v25 = sub_1A9976060();
    (*(v12 + 16))(v14, v34, v11);
    v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v26, v14, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_308;
    v28 = _Block_copy(aBlock);
    v29 = v23;
    v30 = v24;

    [v35 invoke:v36 parametersData:v25 parametersAsyncSequenceContainer:v29 parametersBlocksContainer:v30 sync:0 completion:v28];
    _Block_release(v28);

    sub_1A97B43C4(v33, v32);
  }
}

void sub_1A9844870(void *a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v39 = a2;
  v40 = a8;
  v41 = a1;
  v42 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v18 = sub_1A99762C0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, a5);

  v22 = v44;
  v23 = sub_1A9892BE4(a3, a4, v20, a6);
  if (!v22)
  {
    v27 = v25;
    v28 = v26;
    v35 = a10;
    v37 = v24;
    v38 = v23;
    v44 = 0;
    v36 = sub_1A9976060();
    (*(v15 + 16))(v17, v39, v14);
    v29 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v30 = swift_allocObject();
    (*(v15 + 32))(v30 + v29, v17, v14);
    aBlock[4] = a9;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = v35;
    v31 = _Block_copy(aBlock);
    v32 = v27;
    v33 = v28;

    v34 = v36;
    [v41 invoke:v42 parametersData:v36 parametersAsyncSequenceContainer:v32 parametersBlocksContainer:v33 sync:0 completion:v31];
    _Block_release(v31);

    sub_1A97B43C4(v38, v37);
  }
}

void sub_1A9844B48(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a7;
  v9 = a5;
  v30 = a2;
  v31 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F58, &qword_1A99994A0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v29 - v14;

  v16 = sub_1A9894BAC(a3, a4, v9, a6);
  if (!v7)
  {
    v20 = v18;
    v21 = v19;
    v29[0] = v16;
    v29[1] = 0;
    v22 = v17;
    v23 = sub_1A9976060();
    (*(v13 + 16))(v15, v30, v12);
    v24 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v25 = swift_allocObject();
    (*(v13 + 32))(v25 + v24, v15, v12);
    aBlock[4] = sub_1A984C6D8;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_284;
    v26 = _Block_copy(aBlock);
    v27 = v20;
    v28 = v21;

    [v31 invoke:v33 parametersData:v23 parametersAsyncSequenceContainer:v27 parametersBlocksContainer:v28 sync:0 completion:v26];
    _Block_release(v26);

    sub_1A97B43C4(v29[0], v22);
  }
}

void sub_1A9844DA4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a7;
  v35 = a3;
  v31 = a2;
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F50, &qword_1A9999490);
  v10 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - v14;
  sub_1A97C13A4(a5, &v30 - v14, &qword_1EB3B17A8, &unk_1A9999470);

  v16 = v37;
  v17 = sub_1A9895338(v35, a4, v15, a6);
  if (!v16)
  {
    v21 = v19;
    v22 = v20;
    v35 = v17;
    v30 = v18;
    v37 = 0;
    v23 = sub_1A9976060();
    v24 = v32;
    (*(v10 + 16))(v12, v31, v32);
    v25 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v26 = swift_allocObject();
    (*(v10 + 32))(v26 + v25, v12, v24);
    aBlock[4] = sub_1A984C4F8;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_246;
    v27 = _Block_copy(aBlock);
    v28 = v21;
    v29 = v22;

    [v33 invoke:v34 parametersData:v23 parametersAsyncSequenceContainer:v28 parametersBlocksContainer:v29 sync:0 completion:v27];
    _Block_release(v27);

    sub_1A97B43C4(v35, v30);
  }
}

void sub_1A9845068(void *a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a1;
  v37 = a7;
  v35 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F30, &qword_1A9999460);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = sub_1A99762C0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a5);

  v19 = v39;
  v20 = sub_1A9892BE4(a3, a4, v17, a6);
  if (!v19)
  {
    v24 = v22;
    v25 = v23;
    v33 = v21;
    v34 = v20;
    v39 = 0;
    v26 = sub_1A9976060();
    (*(v12 + 16))(v14, v35, v11);
    v27 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v28 = swift_allocObject();
    (*(v12 + 32))(v28 + v27, v14, v11);
    aBlock[4] = sub_1A984C2F8;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_208;
    v29 = _Block_copy(aBlock);
    v30 = v24;
    v31 = v25;

    [v36 invoke:v37 parametersData:v26 parametersAsyncSequenceContainer:v30 parametersBlocksContainer:v31 sync:0 completion:v29];
    _Block_release(v29);

    sub_1A97B43C4(v34, v33);
  }
}

void sub_1A984534C(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v31 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F28, &qword_1A9999450);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;

  v15 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v19 = v17;
    v20 = v18;
    v29 = v15;
    v30 = 0;
    v21 = v16;
    v22 = sub_1A9976060();
    (*(v12 + 16))(v14, a2, v11);
    v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v24 = swift_allocObject();
    (*(v12 + 32))(v24 + v23, v14, v11);
    aBlock[4] = sub_1A984C17C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_170;
    v25 = _Block_copy(aBlock);
    v26 = v19;
    v27 = v20;

    [v31 invoke:v33 parametersData:v22 parametersAsyncSequenceContainer:v26 parametersBlocksContainer:v27 sync:0 completion:v25];
    _Block_release(v25);

    sub_1A97B43C4(v29, v21);
  }
}

void sub_1A98455A4(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v31 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F20, &qword_1A9999440);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;

  v15 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v19 = v17;
    v20 = v18;
    v29 = v15;
    v30 = 0;
    v21 = v16;
    v22 = sub_1A9976060();
    (*(v12 + 16))(v14, a2, v11);
    v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v24 = swift_allocObject();
    (*(v12 + 32))(v24 + v23, v14, v11);
    aBlock[4] = sub_1A984BFE8;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_132;
    v25 = _Block_copy(aBlock);
    v26 = v19;
    v27 = v20;

    [v31 invoke:v33 parametersData:v22 parametersAsyncSequenceContainer:v26 parametersBlocksContainer:v27 sync:0 completion:v25];
    _Block_release(v25);

    sub_1A97B43C4(v29, v21);
  }
}

void sub_1A98457FC(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a7;
  v9 = a5;
  v30 = a2;
  v31 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v29 - v14;

  v16 = sub_1A9895B10(a3, a4, v9, a6);
  if (!v7)
  {
    v20 = v18;
    v21 = v19;
    v29[0] = v16;
    v29[1] = 0;
    v22 = v17;
    v23 = sub_1A9976060();
    (*(v13 + 16))(v15, v30, v12);
    v24 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v25 = swift_allocObject();
    (*(v13 + 32))(v25 + v24, v15, v12);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_94;
    v26 = _Block_copy(aBlock);
    v27 = v20;
    v28 = v21;

    [v31 invoke:v33 parametersData:v23 parametersAsyncSequenceContainer:v27 parametersBlocksContainer:v28 sync:0 completion:v26];
    _Block_release(v26);

    sub_1A97B43C4(v29[0], v22);
  }
}

void sub_1A9845A58(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v31 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FD8, &qword_1A99995C0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;

  v15 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v19 = v17;
    v20 = v18;
    v29 = v15;
    v30 = 0;
    v21 = v16;
    v22 = sub_1A9976060();
    (*(v12 + 16))(v14, a2, v11);
    v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v24 = swift_allocObject();
    (*(v12 + 32))(v24 + v23, v14, v11);
    aBlock[4] = sub_1A984D8A4;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_656;
    v25 = _Block_copy(aBlock);
    v26 = v19;
    v27 = v20;

    [v31 invoke:v33 parametersData:v22 parametersAsyncSequenceContainer:v26 parametersBlocksContainer:v27 sync:0 completion:v25];
    _Block_release(v25);

    sub_1A97B43C4(v29, v21);
  }
}

uint64_t sub_1A9845CB0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a4;
  v32 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FB0, &qword_1A9999580);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FC0, &qword_1A9999590);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v29 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v29 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FC8, &qword_1A9999598);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v29 - v25;
  sub_1A989B514(a5, a1, a2, a3, v31, v21);
  swift_storeEnumTagMultiPayload();
  sub_1A97D8380(v21, v23, &qword_1EB3B2FC0, &qword_1A9999590);
  sub_1A97D8380(v23, v26, &qword_1EB3B2FC0, &qword_1A9999590);
  sub_1A97C13A4(v26, v18, &qword_1EB3B2FC0, &qword_1A9999590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v18;
    v27 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    swift_willThrowTypedImpl();
    sub_1A97B06FC(v26, &qword_1EB3B2FC8, &qword_1A9999598);
    v33 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FB8, &qword_1A9999588);
    return sub_1A9976B90();
  }

  else
  {
    sub_1A97D8380(v18, v14, &qword_1EB3B2FB0, &qword_1A9999580);
    sub_1A97C13A4(v14, v30, &qword_1EB3B2FB0, &qword_1A9999580);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FB8, &qword_1A9999588);
    sub_1A9976BA0();
    sub_1A97B06FC(v14, &qword_1EB3B2FB0, &qword_1A9999580);
    return sub_1A97B06FC(v26, &qword_1EB3B2FC8, &qword_1A9999598);
  }
}

uint64_t sub_1A9846010(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a4;
  v32 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F90, &qword_1A9999520);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v29 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v29 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F98, &qword_1A9999528);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v29 - v25;
  sub_1A989BA08(a5, a1, a2, a3, v31, v21);
  swift_storeEnumTagMultiPayload();
  sub_1A97D8380(v21, v23, &qword_1EB3B2F90, &qword_1A9999520);
  sub_1A97D8380(v23, v26, &qword_1EB3B2F90, &qword_1A9999520);
  sub_1A97C13A4(v26, v18, &qword_1EB3B2F90, &qword_1A9999520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v18;
    v27 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    swift_willThrowTypedImpl();
    sub_1A97B06FC(v26, &qword_1EB3B2F98, &qword_1A9999528);
    v33 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F88, &qword_1A9999518);
    return sub_1A9976B90();
  }

  else
  {
    sub_1A97D8380(v18, v14, &unk_1EB3B29B0, &qword_1A9990640);
    sub_1A97C13A4(v14, v30, &unk_1EB3B29B0, &qword_1A9990640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F88, &qword_1A9999518);
    sub_1A9976BA0();
    sub_1A97B06FC(v14, &unk_1EB3B29B0, &qword_1A9990640);
    return sub_1A97B06FC(v26, &qword_1EB3B2F98, &qword_1A9999528);
  }
}

uint64_t sub_1A9846370(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a4;
  v32 = a6;
  v10 = type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F68, &qword_1A99994D0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v29 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v29 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F70, &qword_1A99994D8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v29 - v25;
  sub_1A989BED4(a5, a1, a2, a3, v31, v21);
  swift_storeEnumTagMultiPayload();
  sub_1A97D8380(v21, v23, &qword_1EB3B2F68, &qword_1A99994D0);
  sub_1A97D8380(v23, v26, &qword_1EB3B2F68, &qword_1A99994D0);
  sub_1A97C13A4(v26, v18, &qword_1EB3B2F68, &qword_1A99994D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v18;
    v27 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    swift_willThrowTypedImpl();
    sub_1A97B06FC(v26, &qword_1EB3B2F70, &qword_1A99994D8);
    v33 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F60, &qword_1A99994C8);
    return sub_1A9976B90();
  }

  else
  {
    sub_1A984C8B8(v18, v14, type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
    sub_1A984AD10(v14, v30, type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F60, &qword_1A99994C8);
    sub_1A9976BA0();
    sub_1A984AB6C(v14, type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
    return sub_1A97B06FC(v26, &qword_1EB3B2F70, &qword_1A99994D8);
  }
}

uint64_t sub_1A98466D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A989C390(a5, a1, a2, a3, a4, &v6);
  LOBYTE(v6) = v6 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F58, &qword_1A99994A0);
  return sub_1A9976BA0();
}

uint64_t sub_1A98467B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1A97C1554(a1, a2);
  v10 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1A989B0A4(a5, a1, a2, a3, a4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1A97D8688(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F50, &qword_1A9999490);
  return sub_1A9976BA0();
}

uint64_t sub_1A98468F0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A989C818(a5, a1, a2, a3, a4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F30, &qword_1A9999460);
  return sub_1A9976BA0();
}

uint64_t sub_1A98469C4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A989CCA0(a5, a1, a2, a3, a4, &v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F28, &qword_1A9999450);
  return sub_1A9976BA0();
}

uint64_t sub_1A9846A98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1A97C1554(a1, a2);
  v10 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1A989D128(a5, a1, a2, a3, a4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1A97D8688(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F20, &qword_1A9999440);
  return sub_1A9976BA0();
}

uint64_t sub_1A9846BCC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A989A714(a5, a1, a2, a3, a4, &v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  return sub_1A9976BA0();
}

uint64_t sub_1A9846C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a8, uint64_t *a9)
{
  a7(v11, a5, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  return sub_1A9976BA0();
}

uint64_t sub_1A9846D64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FF0, &qword_1A99995F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984DD9C;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_747;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_758;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v21);
  _Block_release(v20);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A98470F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984BD0C;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A981321C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_5;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984BE0C;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_82;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v21);
  _Block_release(v20);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A984748C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FE8, &qword_1A99995E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984D96C;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_683;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_694;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9847820(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FB8, &qword_1A9999588);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984D5E8;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_571;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_582;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9847BB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FA8, &qword_1A9999558);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984D3D4;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_509;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_520;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9847F48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F88, &qword_1A9999518);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984D118;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_435;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_446;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A98482DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F80, &qword_1A99994F8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984CDA8;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_385;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_396;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9848670(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F60, &qword_1A99994C8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984CC00;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_335;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_346;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9848A04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F58, &qword_1A99994A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984C5DC;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_261;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_272;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9848D98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F50, &qword_1A9999490);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984C3FC;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_223;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_234;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}